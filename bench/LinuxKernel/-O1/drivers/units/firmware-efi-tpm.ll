; ModuleID = 'drivers/firmware/efi/tpm.c'
source_filename = "drivers/firmware/efi/tpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_efi_tpm_final_log_size: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad efi_tpm_final_log_size ; .previous"

%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.linux_efi_tpm_eventlog = type { i32, i32, i8, [0 x i8] }
%struct.efi_tcg2_final_events_table = type { i64, i64, [0 x i8] }
%struct.tcg_pcr_event2_head = type { i32, i32, i32, [0 x %struct.tpm_digest] }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tcg_pcr_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcg_efi_specid_event_head = type { [16 x i8], i32, i8, i8, i8, i8, i32, [0 x %struct.tcg_efi_specid_event_algs] }
%struct.tcg_efi_specid_event_algs = type { i16, i16 }
%struct.tcg_event_field = type { i32, [0 x i8] }

@efi_tpm_final_log_size = hidden global i32 0, align 4, !dbg !0
@__UNIQUE_ID___addressable_efi_tpm_final_log_size314 = internal global ptr @efi_tpm_final_log_size, section ".discard.addressable", align 8, !dbg !89
@efi = external dso_local global %struct.efi, align 8
@.str = private unnamed_addr constant [45 x i8] c"\013Failed to map TPM Event Log table @ 0x%lx\0A\00", align 1, !dbg !91
@.str.1 = private unnamed_addr constant [38 x i8] c"\016TPM Final Events table not present\0A\00", align 1, !dbg !97
@.str.2 = private unnamed_addr constant [50 x i8] c"\014[Firmware Bug]: TPM Final Events table invalid\0A\00", align 1, !dbg !102
@.str.3 = private unnamed_addr constant [51 x i8] c"\013Failed to map TPM Final Event Log table @ 0x%lx\0A\00", align 1, !dbg !107
@.str.4 = private unnamed_addr constant [65 x i8] c"\013[Firmware Bug]: Failed to parse event in TPM Final Events Log\0A\00", align 1, !dbg !112
@.str.5 = private unnamed_addr constant [16 x i8] c"Spec ID Event03\00", align 1, !dbg !117
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_efi_tpm_final_log_size314], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @efi_tpm_eventlog_init() #0 section ".init.text" align 16 !dbg !130 {
entry:
  %retval = alloca i32, align 4
  %log_tbl = alloca ptr, align 8
  %final_tbl = alloca ptr, align 8
  %tbl_size = alloca i32, align 4
  %final_tbl_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %events = alloca ptr, align 8
  %tmp49 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_tbl) #8, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %log_tbl, metadata !134, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_tbl) #8, !dbg !163
  call void @llvm.dbg.declare(metadata ptr %final_tbl, metadata !143, metadata !DIExpression()), !dbg !164
  call void @llvm.lifetime.start.p0(i64 4, ptr %tbl_size) #8, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %tbl_size, metadata !153, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 4, ptr %final_tbl_size) #8, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %final_tbl_size, metadata !154, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !155, metadata !DIExpression()), !dbg !170
  store i32 0, ptr %ret, align 4, !dbg !170
  %0 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 8, !dbg !171
  %cmp = icmp eq i64 %0, -1, !dbg !173
  br i1 %cmp, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !175

if.end:                                           ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 8, !dbg !177
  %call = call ptr @early_memremap(i64 noundef %1, i64 noundef 12) #9, !dbg !178
  store ptr %call, ptr %log_tbl, align 8, !dbg !179
  %2 = load ptr, ptr %log_tbl, align 8, !dbg !180
  %tobool = icmp ne ptr %2, null, !dbg !180
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !182

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !183

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !186

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !186

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 8, !dbg !183
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %3) #10, !dbg !183
  store i32 %call2, ptr %tmp, align 4, !dbg !186
  %4 = load i32, ptr %tmp, align 4, !dbg !183
  store i64 -1, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 8, !dbg !188
  store i32 -12, ptr %retval, align 4, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !189

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %log_tbl, align 8, !dbg !190
  %size = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %5, i32 0, i32 0, !dbg !191
  %6 = load i32, ptr %size, align 4, !dbg !191
  %conv = zext i32 %6 to i64, !dbg !190
  %add = add i64 12, %conv, !dbg !192
  %conv4 = trunc i64 %add to i32, !dbg !193
  store i32 %conv4, ptr %tbl_size, align 4, !dbg !194
  %7 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 8, !dbg !195
  %8 = load i32, ptr %tbl_size, align 4, !dbg !196
  %conv5 = zext i32 %8 to i64, !dbg !196
  %call6 = call i32 @memblock_reserve(i64 noundef %7, i64 noundef %conv5) #9, !dbg !197
  %9 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 8, !dbg !198
  %cmp7 = icmp eq i64 %9, -1, !dbg !200
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !201

if.then9:                                         ; preds = %if.end3
  br label %do.body10, !dbg !202

do.body10:                                        ; preds = %if.then9
  br label %do.cond11, !dbg !205

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !205

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #10, !dbg !202
  store i32 %call14, ptr %tmp13, align 4, !dbg !205
  %10 = load i32, ptr %tmp13, align 4, !dbg !202
  br label %out, !dbg !207

if.else:                                          ; preds = %if.end3
  %11 = load ptr, ptr %log_tbl, align 8, !dbg !208
  %version = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %11, i32 0, i32 2, !dbg !210
  %12 = load i8, ptr %version, align 4, !dbg !210
  %conv15 = zext i8 %12 to i32, !dbg !208
  %cmp16 = icmp ne i32 %conv15, 2, !dbg !211
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !212

if.then18:                                        ; preds = %if.else
  br label %do.body19, !dbg !213

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !216

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !216

do.end21:                                         ; preds = %do.cond20
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #10, !dbg !213
  store i32 %call23, ptr %tmp22, align 4, !dbg !216
  %13 = load i32, ptr %tmp22, align 4, !dbg !213
  br label %out, !dbg !218

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %14 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 8, !dbg !219
  %call26 = call ptr @early_memremap(i64 noundef %14, i64 noundef 16) #9, !dbg !220
  store ptr %call26, ptr %final_tbl, align 8, !dbg !221
  %15 = load ptr, ptr %final_tbl, align 8, !dbg !222
  %tobool27 = icmp ne ptr %15, null, !dbg !222
  br i1 %tobool27, label %if.end34, label %if.then28, !dbg !224

if.then28:                                        ; preds = %if.end25
  br label %do.body29, !dbg !225

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !228

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !228

do.end31:                                         ; preds = %do.cond30
  %16 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 8, !dbg !225
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %16) #10, !dbg !225
  store i32 %call33, ptr %tmp32, align 4, !dbg !228
  %17 = load i32, ptr %tmp32, align 4, !dbg !225
  store i64 -1, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 8, !dbg !230
  store i32 -12, ptr %ret, align 4, !dbg !231
  br label %out, !dbg !232

if.end34:                                         ; preds = %if.end25
  store i32 0, ptr %final_tbl_size, align 4, !dbg !233
  %18 = load ptr, ptr %final_tbl, align 8, !dbg !234
  %nr_events = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %18, i32 0, i32 1, !dbg !235
  %19 = load i64, ptr %nr_events, align 8, !dbg !235
  %cmp35 = icmp ne i64 %19, 0, !dbg !236
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !237

if.then37:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %events) #8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %events, metadata !156, metadata !DIExpression()), !dbg !239
  %20 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 8, !dbg !240
  %21 = inttoptr i64 %20 to ptr, !dbg !241
  %add.ptr = getelementptr i8, ptr %21, i64 8, !dbg !242
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i64 8, !dbg !243
  store ptr %add.ptr38, ptr %events, align 8, !dbg !239
  %22 = load ptr, ptr %events, align 8, !dbg !244
  %23 = load ptr, ptr %final_tbl, align 8, !dbg !245
  %nr_events39 = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %23, i32 0, i32 1, !dbg !246
  %24 = load i64, ptr %nr_events39, align 8, !dbg !246
  %conv40 = trunc i64 %24 to i32, !dbg !245
  %25 = load ptr, ptr %log_tbl, align 8, !dbg !247
  %log = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %25, i32 0, i32 3, !dbg !248
  %arraydecay = getelementptr inbounds [0 x i8], ptr %log, i64 0, i64 0, !dbg !247
  %call41 = call i32 @tpm2_calc_event_log_size(ptr noundef %22, i32 noundef %conv40, ptr noundef %arraydecay) #10, !dbg !249
  store i32 %call41, ptr %final_tbl_size, align 4, !dbg !250
  call void @llvm.lifetime.end.p0(i64 8, ptr %events) #8, !dbg !251
  br label %if.end42, !dbg !252

if.end42:                                         ; preds = %if.then37, %if.end34
  %26 = load i32, ptr %final_tbl_size, align 4, !dbg !253
  %cmp43 = icmp slt i32 %26, 0, !dbg !255
  br i1 %cmp43, label %if.then45, label %if.end51, !dbg !256

if.then45:                                        ; preds = %if.end42
  br label %do.body46, !dbg !257

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !260

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !260

do.end48:                                         ; preds = %do.cond47
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #10, !dbg !257
  store i32 %call50, ptr %tmp49, align 4, !dbg !260
  %27 = load i32, ptr %tmp49, align 4, !dbg !257
  store i32 -22, ptr %ret, align 4, !dbg !262
  br label %out_calc, !dbg !263

if.end51:                                         ; preds = %if.end42
  %28 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 8, !dbg !264
  %29 = load i32, ptr %final_tbl_size, align 4, !dbg !265
  %conv52 = sext i32 %29 to i64, !dbg !265
  %add53 = add i64 %conv52, 16, !dbg !266
  %call54 = call i32 @memblock_reserve(i64 noundef %28, i64 noundef %add53) #9, !dbg !267
  %30 = load i32, ptr %final_tbl_size, align 4, !dbg !268
  store i32 %30, ptr @efi_tpm_final_log_size, align 4, !dbg !269
  br label %out_calc, !dbg !270

out_calc:                                         ; preds = %if.end51, %do.end48
  call void @llvm.dbg.label(metadata !159), !dbg !271
  %31 = load ptr, ptr %final_tbl, align 8, !dbg !272
  call void @early_memunmap(ptr noundef %31, i64 noundef 16) #9, !dbg !273
  br label %out, !dbg !273

out:                                              ; preds = %out_calc, %do.end31, %do.end21, %do.end12
  call void @llvm.dbg.label(metadata !160), !dbg !274
  %32 = load ptr, ptr %log_tbl, align 8, !dbg !275
  call void @early_memunmap(ptr noundef %32, i64 noundef 12) #9, !dbg !276
  %33 = load i32, ptr %ret, align 4, !dbg !277
  store i32 %33, ptr %retval, align 4, !dbg !278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

cleanup:                                          ; preds = %out, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %final_tbl_size) #8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %tbl_size) #8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_tbl) #8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_tbl) #8, !dbg !279
  %34 = load i32, ptr %retval, align 4, !dbg !279
  ret i32 %34, !dbg !279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !280 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !287 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !293 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @tpm2_calc_event_log_size(ptr noundef %data, i32 noundef %count, ptr noundef %size_info) #0 section ".init.text" align 16 !dbg !297 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %size_info.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %event_size = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !301, metadata !DIExpression()), !dbg !307
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !302, metadata !DIExpression()), !dbg !308
  store ptr %size_info, ptr %size_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size_info.addr, metadata !303, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #8, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %header, metadata !304, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_size) #8, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %event_size, metadata !305, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #8, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %size, metadata !306, metadata !DIExpression()), !dbg !314
  store i32 0, ptr %size, align 4, !dbg !314
  br label %while.cond, !dbg !315

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !316
  %cmp = icmp sgt i32 %0, 0, !dbg !317
  br i1 %cmp, label %while.body, label %while.end, !dbg !315

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %data.addr, align 8, !dbg !318
  %2 = load i32, ptr %size, align 4, !dbg !320
  %idx.ext = sext i32 %2 to i64, !dbg !321
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !321
  store ptr %add.ptr, ptr %header, align 8, !dbg !322
  %3 = load ptr, ptr %header, align 8, !dbg !323
  %4 = load ptr, ptr %size_info.addr, align 8, !dbg !324
  %call = call i32 @__calc_tpm2_event_size(ptr noundef %3, ptr noundef %4, i1 noundef zeroext true) #9, !dbg !325
  store i32 %call, ptr %event_size, align 4, !dbg !326
  %5 = load i32, ptr %event_size, align 4, !dbg !327
  %cmp1 = icmp eq i32 %5, 0, !dbg !329
  br i1 %cmp1, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %event_size, align 4, !dbg !332
  %7 = load i32, ptr %size, align 4, !dbg !333
  %add = add i32 %7, %6, !dbg !333
  store i32 %add, ptr %size, align 4, !dbg !333
  %8 = load i32, ptr %count.addr, align 4, !dbg !334
  %dec = add i32 %8, -1, !dbg !334
  store i32 %dec, ptr %count.addr, align 4, !dbg !334
  br label %while.cond, !dbg !315, !llvm.loop !335

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %size, align 4, !dbg !339
  store i32 %9, ptr %retval, align 4, !dbg !340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !340

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #8, !dbg !341
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_size) #8, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #8, !dbg !341
  %10 = load i32, ptr %retval, align 4, !dbg !341
  ret i32 %10, !dbg !341
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !342 dso_local void @early_memunmap(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__calc_tpm2_event_size(ptr noundef %event, ptr noundef %event_header, i1 noundef zeroext %do_mapping) #5 align 16 !dbg !345 {
entry:
  %event.addr = alloca ptr, align 8
  %event_header.addr = alloca ptr, align 8
  %do_mapping.addr = alloca i8, align 1
  %efispecid = alloca ptr, align 8
  %event_field = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %mapping_size = alloca i32, align 4
  %marker = alloca ptr, align 8
  %marker_start = alloca ptr, align 8
  %halg_size = alloca i32, align 4
  %size = alloca i64, align 8
  %halg = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %event_type = alloca i32, align 4
  %zero_digest = alloca [20 x i8], align 16
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !362, metadata !DIExpression()), !dbg !386
  store ptr %event_header, ptr %event_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event_header.addr, metadata !363, metadata !DIExpression()), !dbg !387
  %frombool = zext i1 %do_mapping to i8
  store i8 %frombool, ptr %do_mapping.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %do_mapping.addr, metadata !364, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %efispecid) #8, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %efispecid, metadata !365, metadata !DIExpression()), !dbg !390
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_field) #8, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %event_field, metadata !366, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #8, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !367, metadata !DIExpression()), !dbg !394
  store ptr null, ptr %mapping, align 8, !dbg !394
  call void @llvm.lifetime.start.p0(i64 4, ptr %mapping_size) #8, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %mapping_size, metadata !368, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #8, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %marker, metadata !369, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker_start) #8, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %marker_start, metadata !370, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 4, ptr %halg_size) #8, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %halg_size, metadata !371, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %size, metadata !372, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 2, ptr %halg) #8, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %halg, metadata !377, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %i, metadata !378, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %j, metadata !379, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #8, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %count, metadata !380, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_type) #8, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %event_type, metadata !381, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 20, ptr %zero_digest) #8, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %zero_digest, metadata !382, metadata !DIExpression()), !dbg !415
  call void @llvm.memset.p0.i64(ptr align 16 %zero_digest, i8 0, i64 20, i1 false), !dbg !415
  %0 = load ptr, ptr %event.addr, align 8, !dbg !416
  store ptr %0, ptr %marker, align 8, !dbg !417
  %1 = load ptr, ptr %marker, align 8, !dbg !418
  store ptr %1, ptr %marker_start, align 8, !dbg !419
  %2 = load ptr, ptr %marker, align 8, !dbg !420
  %add.ptr = getelementptr i8, ptr %2, i64 4, !dbg !421
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 4, !dbg !422
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i64 4, !dbg !423
  store ptr %add.ptr2, ptr %marker, align 8, !dbg !424
  %3 = load i8, ptr %do_mapping.addr, align 1, !dbg !425, !range !427, !noundef !428
  %tobool = trunc i8 %3 to i1, !dbg !425
  br i1 %tobool, label %if.then, label %if.else, !dbg !429

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %marker, align 8, !dbg !430
  %5 = load ptr, ptr %marker_start, align 8, !dbg !432
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !433
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !433
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !433
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !430
  store i32 %conv, ptr %mapping_size, align 4, !dbg !434
  %6 = load ptr, ptr %marker_start, align 8, !dbg !435
  %7 = ptrtoint ptr %6 to i64, !dbg !435
  %8 = load i32, ptr %mapping_size, align 4, !dbg !435
  %conv3 = sext i32 %8 to i64, !dbg !435
  %call = call ptr @early_memremap(i64 noundef %7, i64 noundef %conv3) #9, !dbg !435
  store ptr %call, ptr %mapping, align 8, !dbg !436
  %9 = load ptr, ptr %mapping, align 8, !dbg !437
  %tobool4 = icmp ne ptr %9, null, !dbg !437
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !439

if.then5:                                         ; preds = %if.then
  store i64 0, ptr %size, align 8, !dbg !440
  br label %out, !dbg !442

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !443

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %marker_start, align 8, !dbg !444
  store ptr %10, ptr %mapping, align 8, !dbg !446
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %11 = load ptr, ptr %mapping, align 8, !dbg !447
  store ptr %11, ptr %event.addr, align 8, !dbg !448
  %12 = load ptr, ptr %event.addr, align 8, !dbg !449
  %count7 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %12, i32 0, i32 2, !dbg !450
  %13 = load i32, ptr %count7, align 1, !dbg !450
  store i32 %13, ptr %count, align 4, !dbg !451
  %14 = load ptr, ptr %event.addr, align 8, !dbg !452
  %event_type8 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %14, i32 0, i32 1, !dbg !453
  %15 = load i32, ptr %event_type8, align 1, !dbg !453
  store i32 %15, ptr %event_type, align 4, !dbg !454
  %16 = load ptr, ptr %event_header.addr, align 8, !dbg !455
  %pcr_idx = getelementptr inbounds %struct.tcg_pcr_event, ptr %16, i32 0, i32 0, !dbg !457
  %17 = load i32, ptr %pcr_idx, align 1, !dbg !457
  %cmp = icmp ne i32 %17, 0, !dbg !458
  br i1 %cmp, label %if.then17, label %lor.lhs.false, !dbg !459

lor.lhs.false:                                    ; preds = %if.end6
  %18 = load ptr, ptr %event_header.addr, align 8, !dbg !460
  %event_type10 = getelementptr inbounds %struct.tcg_pcr_event, ptr %18, i32 0, i32 1, !dbg !461
  %19 = load i32, ptr %event_type10, align 1, !dbg !461
  %cmp11 = icmp ne i32 %19, 3, !dbg !462
  br i1 %cmp11, label %if.then17, label %lor.lhs.false13, !dbg !463

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %20 = load ptr, ptr %event_header.addr, align 8, !dbg !464
  %digest = getelementptr inbounds %struct.tcg_pcr_event, ptr %20, i32 0, i32 2, !dbg !465
  %arraydecay = getelementptr inbounds [20 x i8], ptr %digest, i64 0, i64 0, !dbg !464
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %zero_digest, i64 0, i64 0, !dbg !466
  %call15 = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %arraydecay14, i64 noundef 20) #9, !dbg !467
  %tobool16 = icmp ne i32 %call15, 0, !dbg !467
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !468

if.then17:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.end6
  store i64 0, ptr %size, align 8, !dbg !469
  br label %out, !dbg !471

if.end18:                                         ; preds = %lor.lhs.false13
  %21 = load ptr, ptr %event_header.addr, align 8, !dbg !472
  %event19 = getelementptr inbounds %struct.tcg_pcr_event, ptr %21, i32 0, i32 4, !dbg !473
  %arraydecay20 = getelementptr inbounds [0 x i8], ptr %event19, i64 0, i64 0, !dbg !472
  store ptr %arraydecay20, ptr %efispecid, align 8, !dbg !474
  %22 = load ptr, ptr %efispecid, align 8, !dbg !475
  %signature = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %22, i32 0, i32 0, !dbg !477
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %signature, i64 0, i64 0, !dbg !475
  %call22 = call i32 @memcmp(ptr noundef %arraydecay21, ptr noundef @.str.5, i64 noundef 16) #9, !dbg !478
  %tobool23 = icmp ne i32 %call22, 0, !dbg !478
  br i1 %tobool23, label %if.then30, label %lor.lhs.false24, !dbg !479

lor.lhs.false24:                                  ; preds = %if.end18
  %23 = load ptr, ptr %efispecid, align 8, !dbg !480
  %num_algs = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %23, i32 0, i32 6, !dbg !481
  %24 = load i32, ptr %num_algs, align 1, !dbg !481
  %tobool25 = icmp ne i32 %24, 0, !dbg !480
  br i1 %tobool25, label %lor.lhs.false26, label %if.then30, !dbg !482

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %25 = load i32, ptr %count, align 4, !dbg !483
  %26 = load ptr, ptr %efispecid, align 8, !dbg !484
  %num_algs27 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %26, i32 0, i32 6, !dbg !485
  %27 = load i32, ptr %num_algs27, align 1, !dbg !485
  %cmp28 = icmp ne i32 %25, %27, !dbg !486
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !487

if.then30:                                        ; preds = %lor.lhs.false26, %lor.lhs.false24, %if.end18
  store i64 0, ptr %size, align 8, !dbg !488
  br label %out, !dbg !490

if.end31:                                         ; preds = %lor.lhs.false26
  store i32 0, ptr %i, align 4, !dbg !491
  br label %for.cond, !dbg !493

for.cond:                                         ; preds = %for.inc68, %if.end31
  %28 = load i32, ptr %i, align 4, !dbg !494
  %29 = load i32, ptr %count, align 4, !dbg !496
  %cmp32 = icmp ult i32 %28, %29, !dbg !497
  br i1 %cmp32, label %for.body, label %for.end70, !dbg !498

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %halg_size, align 4, !dbg !499
  %30 = load i8, ptr %do_mapping.addr, align 1, !dbg !501, !range !427, !noundef !428
  %tobool34 = trunc i8 %30 to i1, !dbg !501
  br i1 %tobool34, label %if.then35, label %if.else42, !dbg !503

if.then35:                                        ; preds = %for.body
  %31 = load ptr, ptr %mapping, align 8, !dbg !504
  %32 = load i32, ptr %mapping_size, align 4, !dbg !504
  %conv36 = sext i32 %32 to i64, !dbg !504
  call void @early_memunmap(ptr noundef %31, i64 noundef %conv36) #9, !dbg !504
  %33 = load i32, ptr %halg_size, align 4, !dbg !506
  store i32 %33, ptr %mapping_size, align 4, !dbg !507
  %34 = load ptr, ptr %marker, align 8, !dbg !508
  %35 = ptrtoint ptr %34 to i64, !dbg !508
  %36 = load i32, ptr %mapping_size, align 4, !dbg !508
  %conv37 = sext i32 %36 to i64, !dbg !508
  %call38 = call ptr @early_memremap(i64 noundef %35, i64 noundef %conv37) #9, !dbg !508
  store ptr %call38, ptr %mapping, align 8, !dbg !509
  %37 = load ptr, ptr %mapping, align 8, !dbg !510
  %tobool39 = icmp ne ptr %37, null, !dbg !510
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !512

if.then40:                                        ; preds = %if.then35
  store i64 0, ptr %size, align 8, !dbg !513
  br label %out, !dbg !515

if.end41:                                         ; preds = %if.then35
  br label %if.end43, !dbg !516

if.else42:                                        ; preds = %for.body
  %38 = load ptr, ptr %marker, align 8, !dbg !517
  store ptr %38, ptr %mapping, align 8, !dbg !519
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  %39 = load ptr, ptr %mapping, align 8, !dbg !520
  %40 = load i32, ptr %halg_size, align 4, !dbg !521
  %conv44 = zext i32 %40 to i64, !dbg !521
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %halg, ptr align 1 %39, i64 %conv44, i1 false), !dbg !522
  %41 = load ptr, ptr %marker, align 8, !dbg !523
  %42 = load i32, ptr %halg_size, align 4, !dbg !524
  %idx.ext = zext i32 %42 to i64, !dbg !525
  %add.ptr45 = getelementptr i8, ptr %41, i64 %idx.ext, !dbg !525
  store ptr %add.ptr45, ptr %marker, align 8, !dbg !526
  store i32 0, ptr %j, align 4, !dbg !527
  br label %for.cond46, !dbg !529

for.cond46:                                       ; preds = %for.inc, %if.end43
  %43 = load i32, ptr %j, align 4, !dbg !530
  %44 = load ptr, ptr %efispecid, align 8, !dbg !532
  %num_algs47 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %44, i32 0, i32 6, !dbg !533
  %45 = load i32, ptr %num_algs47, align 1, !dbg !533
  %cmp48 = icmp ult i32 %43, %45, !dbg !534
  br i1 %cmp48, label %for.body50, label %for.end, !dbg !535

for.body50:                                       ; preds = %for.cond46
  %46 = load i16, ptr %halg, align 2, !dbg !536
  %conv51 = zext i16 %46 to i32, !dbg !536
  %47 = load ptr, ptr %efispecid, align 8, !dbg !539
  %digest_sizes = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %47, i32 0, i32 7, !dbg !540
  %48 = load i32, ptr %j, align 4, !dbg !541
  %idxprom = sext i32 %48 to i64, !dbg !539
  %arrayidx = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %digest_sizes, i64 0, i64 %idxprom, !dbg !539
  %alg_id = getelementptr inbounds %struct.tcg_efi_specid_event_algs, ptr %arrayidx, i32 0, i32 0, !dbg !542
  %49 = load i16, ptr %alg_id, align 1, !dbg !542
  %conv52 = zext i16 %49 to i32, !dbg !539
  %cmp53 = icmp eq i32 %conv51, %conv52, !dbg !543
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !544

if.then55:                                        ; preds = %for.body50
  %50 = load ptr, ptr %efispecid, align 8, !dbg !545
  %digest_sizes56 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %50, i32 0, i32 7, !dbg !547
  %51 = load i32, ptr %j, align 4, !dbg !548
  %idxprom57 = sext i32 %51 to i64, !dbg !545
  %arrayidx58 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %digest_sizes56, i64 0, i64 %idxprom57, !dbg !545
  %digest_size = getelementptr inbounds %struct.tcg_efi_specid_event_algs, ptr %arrayidx58, i32 0, i32 1, !dbg !549
  %52 = load i16, ptr %digest_size, align 1, !dbg !549
  %conv59 = zext i16 %52 to i32, !dbg !545
  %53 = load ptr, ptr %marker, align 8, !dbg !550
  %idx.ext60 = sext i32 %conv59 to i64, !dbg !550
  %add.ptr61 = getelementptr i8, ptr %53, i64 %idx.ext60, !dbg !550
  store ptr %add.ptr61, ptr %marker, align 8, !dbg !550
  br label %for.end, !dbg !551

if.end62:                                         ; preds = %for.body50
  br label %for.inc, !dbg !552

for.inc:                                          ; preds = %if.end62
  %54 = load i32, ptr %j, align 4, !dbg !553
  %inc = add i32 %54, 1, !dbg !553
  store i32 %inc, ptr %j, align 4, !dbg !553
  br label %for.cond46, !dbg !554, !llvm.loop !555

for.end:                                          ; preds = %if.then55, %for.cond46
  %55 = load i32, ptr %j, align 4, !dbg !557
  %56 = load ptr, ptr %efispecid, align 8, !dbg !559
  %num_algs63 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %56, i32 0, i32 6, !dbg !560
  %57 = load i32, ptr %num_algs63, align 1, !dbg !560
  %cmp64 = icmp eq i32 %55, %57, !dbg !561
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !562

if.then66:                                        ; preds = %for.end
  store i64 0, ptr %size, align 8, !dbg !563
  br label %out, !dbg !565

if.end67:                                         ; preds = %for.end
  br label %for.inc68, !dbg !566

for.inc68:                                        ; preds = %if.end67
  %58 = load i32, ptr %i, align 4, !dbg !567
  %inc69 = add i32 %58, 1, !dbg !567
  store i32 %inc69, ptr %i, align 4, !dbg !567
  br label %for.cond, !dbg !568, !llvm.loop !569

for.end70:                                        ; preds = %for.cond
  %59 = load i8, ptr %do_mapping.addr, align 1, !dbg !571, !range !427, !noundef !428
  %tobool71 = trunc i8 %59 to i1, !dbg !571
  br i1 %tobool71, label %if.then72, label %if.else81, !dbg !573

if.then72:                                        ; preds = %for.end70
  %60 = load ptr, ptr %mapping, align 8, !dbg !574
  %61 = load i32, ptr %mapping_size, align 4, !dbg !574
  %conv73 = sext i32 %61 to i64, !dbg !574
  call void @early_memunmap(ptr noundef %60, i64 noundef %conv73) #9, !dbg !574
  %62 = load i32, ptr %mapping_size, align 4, !dbg !576
  %conv74 = sext i32 %62 to i64, !dbg !576
  %add = add i64 %conv74, 4, !dbg !576
  %conv75 = trunc i64 %add to i32, !dbg !576
  store i32 %conv75, ptr %mapping_size, align 4, !dbg !576
  %63 = load ptr, ptr %marker, align 8, !dbg !577
  %64 = ptrtoint ptr %63 to i64, !dbg !577
  %65 = load i32, ptr %mapping_size, align 4, !dbg !577
  %conv76 = sext i32 %65 to i64, !dbg !577
  %call77 = call ptr @early_memremap(i64 noundef %64, i64 noundef %conv76) #9, !dbg !577
  store ptr %call77, ptr %mapping, align 8, !dbg !578
  %66 = load ptr, ptr %mapping, align 8, !dbg !579
  %tobool78 = icmp ne ptr %66, null, !dbg !579
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !581

if.then79:                                        ; preds = %if.then72
  store i64 0, ptr %size, align 8, !dbg !582
  br label %out, !dbg !584

if.end80:                                         ; preds = %if.then72
  br label %if.end82, !dbg !585

if.else81:                                        ; preds = %for.end70
  %67 = load ptr, ptr %marker, align 8, !dbg !586
  store ptr %67, ptr %mapping, align 8, !dbg !588
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.end80
  %68 = load ptr, ptr %mapping, align 8, !dbg !589
  store ptr %68, ptr %event_field, align 8, !dbg !590
  %69 = load ptr, ptr %marker, align 8, !dbg !591
  %add.ptr83 = getelementptr i8, ptr %69, i64 4, !dbg !592
  %70 = load ptr, ptr %event_field, align 8, !dbg !593
  %event_size = getelementptr inbounds %struct.tcg_event_field, ptr %70, i32 0, i32 0, !dbg !594
  %71 = load i32, ptr %event_size, align 1, !dbg !594
  %idx.ext84 = zext i32 %71 to i64, !dbg !595
  %add.ptr85 = getelementptr i8, ptr %add.ptr83, i64 %idx.ext84, !dbg !595
  store ptr %add.ptr85, ptr %marker, align 8, !dbg !596
  %72 = load ptr, ptr %marker, align 8, !dbg !597
  %73 = load ptr, ptr %marker_start, align 8, !dbg !598
  %sub.ptr.lhs.cast86 = ptrtoint ptr %72 to i64, !dbg !599
  %sub.ptr.rhs.cast87 = ptrtoint ptr %73 to i64, !dbg !599
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87, !dbg !599
  store i64 %sub.ptr.sub88, ptr %size, align 8, !dbg !600
  %74 = load i32, ptr %event_type, align 4, !dbg !601
  %cmp89 = icmp eq i32 %74, 0, !dbg !603
  br i1 %cmp89, label %land.lhs.true, label %if.end95, !dbg !604

land.lhs.true:                                    ; preds = %if.end82
  %75 = load ptr, ptr %event_field, align 8, !dbg !605
  %event_size91 = getelementptr inbounds %struct.tcg_event_field, ptr %75, i32 0, i32 0, !dbg !606
  %76 = load i32, ptr %event_size91, align 1, !dbg !606
  %cmp92 = icmp eq i32 %76, 0, !dbg !607
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !608

if.then94:                                        ; preds = %land.lhs.true
  store i64 0, ptr %size, align 8, !dbg !609
  br label %if.end95, !dbg !610

if.end95:                                         ; preds = %if.then94, %land.lhs.true, %if.end82
  br label %out, !dbg !611

out:                                              ; preds = %if.end95, %if.then79, %if.then66, %if.then40, %if.then30, %if.then17, %if.then5
  call void @llvm.dbg.label(metadata !385), !dbg !612
  %77 = load i8, ptr %do_mapping.addr, align 1, !dbg !613, !range !427, !noundef !428
  %tobool96 = trunc i8 %77 to i1, !dbg !613
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !615

if.then97:                                        ; preds = %out
  %78 = load ptr, ptr %mapping, align 8, !dbg !616
  %79 = load i32, ptr %mapping_size, align 4, !dbg !616
  %conv98 = sext i32 %79 to i64, !dbg !616
  call void @early_memunmap(ptr noundef %78, i64 noundef %conv98) #9, !dbg !616
  br label %if.end99, !dbg !616

if.end99:                                         ; preds = %if.then97, %out
  %80 = load i64, ptr %size, align 8, !dbg !617
  %conv100 = trunc i64 %80 to i32, !dbg !617
  call void @llvm.lifetime.end.p0(i64 20, ptr %zero_digest) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_type) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 2, ptr %halg) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %halg_size) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker_start) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %mapping_size) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_field) #8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %efispecid) #8, !dbg !618
  ret i32 %conv100, !dbg !619
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !620 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efi_tpm_final_log_size", scope: !2, file: !3, line: 16, type: !120, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/.tpm.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/efi/tpm\22 -D KBUILD_BASENAME=\22tpm\22 -D KBUILD_MODNAME=\22tpm\22 -D __KBUILD_MODNAME=kmod_tpm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/tpm.ll drivers/firmware/efi/tpm.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !88, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/tpm.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57f9b865b489001a582e5d958489c85c")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcpa_event_types", file: !12, line: 34, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/tpm_eventlog.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecfe360a18317d4461a8f564b255c7bd")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!14 = !DIEnumerator(name: "PREBOOT", value: 0)
!15 = !DIEnumerator(name: "POST_CODE", value: 1)
!16 = !DIEnumerator(name: "UNUSED", value: 2)
!17 = !DIEnumerator(name: "NO_ACTION", value: 3)
!18 = !DIEnumerator(name: "SEPARATOR", value: 4)
!19 = !DIEnumerator(name: "ACTION", value: 5)
!20 = !DIEnumerator(name: "EVENT_TAG", value: 6)
!21 = !DIEnumerator(name: "SCRTM_CONTENTS", value: 7)
!22 = !DIEnumerator(name: "SCRTM_VERSION", value: 8)
!23 = !DIEnumerator(name: "CPU_MICROCODE", value: 9)
!24 = !DIEnumerator(name: "PLATFORM_CONFIG_FLAGS", value: 10)
!25 = !DIEnumerator(name: "TABLE_OF_DEVICES", value: 11)
!26 = !DIEnumerator(name: "COMPACT_HASH", value: 12)
!27 = !DIEnumerator(name: "IPL", value: 13)
!28 = !DIEnumerator(name: "IPL_PARTITION_DATA", value: 14)
!29 = !DIEnumerator(name: "NONHOST_CODE", value: 15)
!30 = !DIEnumerator(name: "NONHOST_CONFIG", value: 16)
!31 = !DIEnumerator(name: "NONHOST_INFO", value: 17)
!32 = !{!33, !34, !35, !63, !82}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_pcr_event2_head", file: !12, line: 110, size: 96, elements: !37)
!37 = !{!38, !43, !44, !45}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_idx", scope: !36, file: !12, line: 111, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !36, file: !12, line: 112, baseType: !39, size: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !36, file: !12, line: 113, baseType: !39, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "digests", scope: !36, file: !12, line: 114, baseType: !46, offset: 96)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !61)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tpm_digest", file: !48, line: 52, size: 528, elements: !49)
!48 = !DIFile(filename: "./include/linux/tpm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f0e647e2e8f2e8f813d1133346a17ea")
!49 = !{!50, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alg_id", scope: !47, file: !48, line: 53, baseType: !51, size: 16)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !47, file: !48, line: 54, baseType: !55, size: 512, offset: 16)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 512, elements: !59)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !58)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !{!60}
!60 = !DISubrange(count: 64)
!61 = !{!62}
!62 = !DISubrange(count: -1)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_efi_specid_event_head", file: !12, line: 86, size: 224, elements: !65)
!65 = !{!66, !70, !71, !72, !73, !74, !75, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !64, file: !12, line: 87, baseType: !67, size: 128)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 128, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "platform_class", scope: !64, file: !12, line: 88, baseType: !39, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "spec_version_minor", scope: !64, file: !12, line: 89, baseType: !56, size: 8, offset: 160)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "spec_version_major", scope: !64, file: !12, line: 90, baseType: !56, size: 8, offset: 168)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "spec_errata", scope: !64, file: !12, line: 91, baseType: !56, size: 8, offset: 176)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "uintnsize", scope: !64, file: !12, line: 92, baseType: !56, size: 8, offset: 184)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "num_algs", scope: !64, file: !12, line: 93, baseType: !39, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "digest_sizes", scope: !64, file: !12, line: 94, baseType: !77, offset: 224)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !61)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_efi_specid_event_algs", file: !12, line: 79, size: 32, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alg_id", scope: !78, file: !12, line: 80, baseType: !51, size: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !78, file: !12, line: 81, baseType: !51, size: 16, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_event_field", file: !12, line: 105, size: 32, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !83, file: !12, line: 106, baseType: !39, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !83, file: !12, line: 107, baseType: !87, offset: 32)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, elements: !61)
!88 = !{!89, !91, !97, !102, !107, !112, !0, !117}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_efi_tpm_final_log_size314", scope: !2, file: !3, line: 17, type: !33, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 360, elements: !95)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !{!96}
!96 = !DISubrange(count: 45)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 304, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 38)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 400, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 50)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 408, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 51)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 520, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 65)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !12, line: 221, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !68)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !{i32 7, !"Dwarf Version", i32 5}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 8, !"cf-protection-branch", i32 1}
!125 = !{i32 4, !"function_return_thunk_extern", i32 1}
!126 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!127 = !{i32 1, !"Code Model", i32 2}
!128 = !{i32 1, !"override-stack-alignment", i32 8}
!129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!130 = distinct !DISubprogram(name: "efi_tpm_eventlog_init", scope: !3, file: !3, line: 39, type: !131, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!120}
!133 = !{!134, !143, !153, !154, !155, !156, !159, !160}
!134 = !DILocalVariable(name: "log_tbl", scope: !130, file: !3, line: 41, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_efi_tpm_eventlog", file: !137, line: 1215, size: 96, elements: !138)
!137 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!138 = !{!139, !140, !141, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !136, file: !137, line: 1216, baseType: !39, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "final_events_preboot_size", scope: !136, file: !137, line: 1217, baseType: !39, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !136, file: !137, line: 1218, baseType: !56, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !136, file: !137, line: 1219, baseType: !87, offset: 72)
!143 = !DILocalVariable(name: "final_tbl", scope: !130, file: !3, line: 42, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_tcg2_final_events_table", file: !137, line: 1224, size: 128, elements: !146)
!146 = !{!147, !151, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !145, file: !137, line: 1225, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !150)
!150 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !145, file: !137, line: 1226, baseType: !148, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !145, file: !137, line: 1227, baseType: !87, offset: 128)
!153 = !DILocalVariable(name: "tbl_size", scope: !130, file: !3, line: 43, type: !7)
!154 = !DILocalVariable(name: "final_tbl_size", scope: !130, file: !3, line: 44, type: !120)
!155 = !DILocalVariable(name: "ret", scope: !130, file: !3, line: 45, type: !120)
!156 = !DILocalVariable(name: "events", scope: !157, file: !3, line: 86, type: !33)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 85, column: 33)
!158 = distinct !DILexicalBlock(scope: !130, file: !3, line: 85, column: 6)
!159 = !DILabel(scope: !130, name: "out_calc", file: !3, line: 105)
!160 = !DILabel(scope: !130, name: "out", file: !3, line: 107)
!161 = !DILocation(line: 41, column: 2, scope: !130)
!162 = !DILocation(line: 41, column: 33, scope: !130)
!163 = !DILocation(line: 42, column: 2, scope: !130)
!164 = !DILocation(line: 42, column: 38, scope: !130)
!165 = !DILocation(line: 43, column: 2, scope: !130)
!166 = !DILocation(line: 43, column: 15, scope: !130)
!167 = !DILocation(line: 44, column: 2, scope: !130)
!168 = !DILocation(line: 44, column: 6, scope: !130)
!169 = !DILocation(line: 45, column: 2, scope: !130)
!170 = !DILocation(line: 45, column: 6, scope: !130)
!171 = !DILocation(line: 47, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !130, file: !3, line: 47, column: 6)
!173 = !DILocation(line: 47, column: 18, scope: !172)
!174 = !DILocation(line: 47, column: 6, scope: !130)
!175 = !DILocation(line: 52, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 47, column: 45)
!177 = !DILocation(line: 55, column: 31, scope: !130)
!178 = !DILocation(line: 55, column: 12, scope: !130)
!179 = !DILocation(line: 55, column: 10, scope: !130)
!180 = !DILocation(line: 56, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !130, file: !3, line: 56, column: 6)
!182 = !DILocation(line: 56, column: 6, scope: !130)
!183 = !DILocation(line: 57, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 57, column: 3)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 56, column: 16)
!186 = !DILocation(line: 57, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 57, column: 3)
!188 = !DILocation(line: 59, column: 15, scope: !185)
!189 = !DILocation(line: 60, column: 3, scope: !185)
!190 = !DILocation(line: 63, column: 32, scope: !130)
!191 = !DILocation(line: 63, column: 41, scope: !130)
!192 = !DILocation(line: 63, column: 30, scope: !130)
!193 = !DILocation(line: 63, column: 13, scope: !130)
!194 = !DILocation(line: 63, column: 11, scope: !130)
!195 = !DILocation(line: 64, column: 23, scope: !130)
!196 = !DILocation(line: 64, column: 32, scope: !130)
!197 = !DILocation(line: 64, column: 2, scope: !130)
!198 = !DILocation(line: 66, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !130, file: !3, line: 66, column: 6)
!200 = !DILocation(line: 66, column: 24, scope: !199)
!201 = !DILocation(line: 66, column: 6, scope: !130)
!202 = !DILocation(line: 67, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 67, column: 3)
!204 = distinct !DILexicalBlock(scope: !199, file: !3, line: 66, column: 51)
!205 = !DILocation(line: 67, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 67, column: 3)
!207 = !DILocation(line: 68, column: 3, scope: !204)
!208 = !DILocation(line: 69, column: 13, scope: !209)
!209 = distinct !DILexicalBlock(scope: !199, file: !3, line: 69, column: 13)
!210 = !DILocation(line: 69, column: 22, scope: !209)
!211 = !DILocation(line: 69, column: 30, scope: !209)
!212 = !DILocation(line: 69, column: 13, scope: !199)
!213 = !DILocation(line: 70, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 70, column: 3)
!215 = distinct !DILexicalBlock(scope: !209, file: !3, line: 69, column: 66)
!216 = !DILocation(line: 70, column: 3, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !3, line: 70, column: 3)
!218 = !DILocation(line: 71, column: 3, scope: !215)
!219 = !DILocation(line: 74, column: 33, scope: !130)
!220 = !DILocation(line: 74, column: 14, scope: !130)
!221 = !DILocation(line: 74, column: 12, scope: !130)
!222 = !DILocation(line: 76, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !130, file: !3, line: 76, column: 6)
!224 = !DILocation(line: 76, column: 6, scope: !130)
!225 = !DILocation(line: 77, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 77, column: 3)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 76, column: 18)
!228 = !DILocation(line: 77, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 77, column: 3)
!230 = !DILocation(line: 79, column: 21, scope: !227)
!231 = !DILocation(line: 80, column: 7, scope: !227)
!232 = !DILocation(line: 81, column: 3, scope: !227)
!233 = !DILocation(line: 84, column: 17, scope: !130)
!234 = !DILocation(line: 85, column: 6, scope: !158)
!235 = !DILocation(line: 85, column: 17, scope: !158)
!236 = !DILocation(line: 85, column: 27, scope: !158)
!237 = !DILocation(line: 85, column: 6, scope: !130)
!238 = !DILocation(line: 86, column: 3, scope: !157)
!239 = !DILocation(line: 86, column: 9, scope: !157)
!240 = !DILocation(line: 86, column: 30, scope: !157)
!241 = !DILocation(line: 86, column: 18, scope: !157)
!242 = !DILocation(line: 87, column: 5, scope: !157)
!243 = !DILocation(line: 88, column: 5, scope: !157)
!244 = !DILocation(line: 90, column: 45, scope: !157)
!245 = !DILocation(line: 91, column: 10, scope: !157)
!246 = !DILocation(line: 91, column: 21, scope: !157)
!247 = !DILocation(line: 92, column: 10, scope: !157)
!248 = !DILocation(line: 92, column: 19, scope: !157)
!249 = !DILocation(line: 90, column: 20, scope: !157)
!250 = !DILocation(line: 90, column: 18, scope: !157)
!251 = !DILocation(line: 93, column: 2, scope: !158)
!252 = !DILocation(line: 93, column: 2, scope: !157)
!253 = !DILocation(line: 95, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !130, file: !3, line: 95, column: 6)
!255 = !DILocation(line: 95, column: 21, scope: !254)
!256 = !DILocation(line: 95, column: 6, scope: !130)
!257 = !DILocation(line: 96, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 96, column: 3)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 95, column: 26)
!260 = !DILocation(line: 96, column: 3, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 96, column: 3)
!262 = !DILocation(line: 97, column: 7, scope: !259)
!263 = !DILocation(line: 98, column: 3, scope: !259)
!264 = !DILocation(line: 101, column: 23, scope: !130)
!265 = !DILocation(line: 102, column: 5, scope: !130)
!266 = !DILocation(line: 102, column: 20, scope: !130)
!267 = !DILocation(line: 101, column: 2, scope: !130)
!268 = !DILocation(line: 103, column: 27, scope: !130)
!269 = !DILocation(line: 103, column: 25, scope: !130)
!270 = !DILocation(line: 103, column: 2, scope: !130)
!271 = !DILocation(line: 105, column: 1, scope: !130)
!272 = !DILocation(line: 106, column: 17, scope: !130)
!273 = !DILocation(line: 106, column: 2, scope: !130)
!274 = !DILocation(line: 107, column: 1, scope: !130)
!275 = !DILocation(line: 108, column: 17, scope: !130)
!276 = !DILocation(line: 108, column: 2, scope: !130)
!277 = !DILocation(line: 109, column: 9, scope: !130)
!278 = !DILocation(line: 109, column: 2, scope: !130)
!279 = !DILocation(line: 110, column: 1, scope: !130)
!280 = !DISubprogram(name: "early_memremap", scope: !281, file: !281, line: 13, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!282 = !DISubroutineType(types: !283)
!283 = !{!33, !284, !34}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !285, line: 164, baseType: !286)
!285 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !285, line: 159, baseType: !148)
!287 = !DISubprogram(name: "_printk", scope: !288, file: !288, line: 153, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!289 = !DISubroutineType(types: !290)
!290 = !{!120, !291, null}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!293 = !DISubprogram(name: "memblock_reserve", scope: !294, file: !294, line: 116, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!295 = !DISubroutineType(types: !296)
!296 = !{!120, !286, !286}
!297 = distinct !DISubprogram(name: "tpm2_calc_event_log_size", scope: !3, file: !3, line: 19, type: !298, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!120, !33, !120, !33}
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DILocalVariable(name: "data", arg: 1, scope: !297, file: !3, line: 19, type: !33)
!302 = !DILocalVariable(name: "count", arg: 2, scope: !297, file: !3, line: 19, type: !120)
!303 = !DILocalVariable(name: "size_info", arg: 3, scope: !297, file: !3, line: 19, type: !33)
!304 = !DILocalVariable(name: "header", scope: !297, file: !3, line: 21, type: !35)
!305 = !DILocalVariable(name: "event_size", scope: !297, file: !3, line: 22, type: !120)
!306 = !DILocalVariable(name: "size", scope: !297, file: !3, line: 22, type: !120)
!307 = !DILocation(line: 19, column: 50, scope: !297)
!308 = !DILocation(line: 19, column: 60, scope: !297)
!309 = !DILocation(line: 19, column: 73, scope: !297)
!310 = !DILocation(line: 21, column: 2, scope: !297)
!311 = !DILocation(line: 21, column: 30, scope: !297)
!312 = !DILocation(line: 22, column: 2, scope: !297)
!313 = !DILocation(line: 22, column: 6, scope: !297)
!314 = !DILocation(line: 22, column: 18, scope: !297)
!315 = !DILocation(line: 24, column: 2, scope: !297)
!316 = !DILocation(line: 24, column: 9, scope: !297)
!317 = !DILocation(line: 24, column: 15, scope: !297)
!318 = !DILocation(line: 25, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !297, file: !3, line: 24, column: 20)
!320 = !DILocation(line: 25, column: 19, scope: !319)
!321 = !DILocation(line: 25, column: 17, scope: !319)
!322 = !DILocation(line: 25, column: 10, scope: !319)
!323 = !DILocation(line: 26, column: 39, scope: !319)
!324 = !DILocation(line: 26, column: 47, scope: !319)
!325 = !DILocation(line: 26, column: 16, scope: !319)
!326 = !DILocation(line: 26, column: 14, scope: !319)
!327 = !DILocation(line: 27, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !319, file: !3, line: 27, column: 7)
!329 = !DILocation(line: 27, column: 18, scope: !328)
!330 = !DILocation(line: 27, column: 7, scope: !319)
!331 = !DILocation(line: 28, column: 4, scope: !328)
!332 = !DILocation(line: 29, column: 11, scope: !319)
!333 = !DILocation(line: 29, column: 8, scope: !319)
!334 = !DILocation(line: 30, column: 8, scope: !319)
!335 = distinct !{!335, !315, !336, !337, !338}
!336 = !DILocation(line: 31, column: 2, scope: !297)
!337 = !{!"llvm.loop.mustprogress"}
!338 = !{!"llvm.loop.unroll.disable"}
!339 = !DILocation(line: 33, column: 9, scope: !297)
!340 = !DILocation(line: 33, column: 2, scope: !297)
!341 = !DILocation(line: 34, column: 1, scope: !297)
!342 = !DISubprogram(name: "early_memunmap", scope: !281, file: !281, line: 20, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !33, !34}
!345 = distinct !DISubprogram(name: "__calc_tpm2_event_size", scope: !12, file: !12, line: 160, type: !346, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!346 = !DISubroutineType(types: !347)
!347 = !{!120, !35, !348, !359}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_pcr_event", file: !12, line: 97, size: 256, elements: !350)
!350 = !{!351, !352, !353, !357, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_idx", scope: !349, file: !12, line: 98, baseType: !39, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !349, file: !12, line: 99, baseType: !39, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !349, file: !12, line: 100, baseType: !354, size: 160, offset: 64)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 20)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !349, file: !12, line: 101, baseType: !39, size: 32, offset: 224)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !349, file: !12, line: 102, baseType: !87, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !285, line: 35, baseType: !360)
!360 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !377, !378, !379, !380, !381, !382, !385}
!362 = !DILocalVariable(name: "event", arg: 1, scope: !345, file: !12, line: 160, type: !35)
!363 = !DILocalVariable(name: "event_header", arg: 2, scope: !345, file: !12, line: 161, type: !348)
!364 = !DILocalVariable(name: "do_mapping", arg: 3, scope: !345, file: !12, line: 162, type: !359)
!365 = !DILocalVariable(name: "efispecid", scope: !345, file: !12, line: 164, type: !63)
!366 = !DILocalVariable(name: "event_field", scope: !345, file: !12, line: 165, type: !82)
!367 = !DILocalVariable(name: "mapping", scope: !345, file: !12, line: 166, type: !33)
!368 = !DILocalVariable(name: "mapping_size", scope: !345, file: !12, line: 167, type: !120)
!369 = !DILocalVariable(name: "marker", scope: !345, file: !12, line: 168, type: !33)
!370 = !DILocalVariable(name: "marker_start", scope: !345, file: !12, line: 169, type: !33)
!371 = !DILocalVariable(name: "halg_size", scope: !345, file: !12, line: 170, type: !39)
!372 = !DILocalVariable(name: "size", scope: !345, file: !12, line: 171, type: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !285, line: 61, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !375, line: 72, baseType: !376)
!375 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !375, line: 16, baseType: !34)
!377 = !DILocalVariable(name: "halg", scope: !345, file: !12, line: 172, type: !51)
!378 = !DILocalVariable(name: "i", scope: !345, file: !12, line: 173, type: !120)
!379 = !DILocalVariable(name: "j", scope: !345, file: !12, line: 174, type: !120)
!380 = !DILocalVariable(name: "count", scope: !345, file: !12, line: 175, type: !39)
!381 = !DILocalVariable(name: "event_type", scope: !345, file: !12, line: 175, type: !39)
!382 = !DILocalVariable(name: "zero_digest", scope: !345, file: !12, line: 176, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 160, elements: !355)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!385 = !DILabel(scope: !345, name: "out", file: !12, line: 288)
!386 = !DILocation(line: 160, column: 79, scope: !345)
!387 = !DILocation(line: 161, column: 29, scope: !345)
!388 = !DILocation(line: 162, column: 12, scope: !345)
!389 = !DILocation(line: 164, column: 2, scope: !345)
!390 = !DILocation(line: 164, column: 36, scope: !345)
!391 = !DILocation(line: 165, column: 2, scope: !345)
!392 = !DILocation(line: 165, column: 26, scope: !345)
!393 = !DILocation(line: 166, column: 2, scope: !345)
!394 = !DILocation(line: 166, column: 8, scope: !345)
!395 = !DILocation(line: 167, column: 2, scope: !345)
!396 = !DILocation(line: 167, column: 6, scope: !345)
!397 = !DILocation(line: 168, column: 2, scope: !345)
!398 = !DILocation(line: 168, column: 8, scope: !345)
!399 = !DILocation(line: 169, column: 2, scope: !345)
!400 = !DILocation(line: 169, column: 8, scope: !345)
!401 = !DILocation(line: 170, column: 2, scope: !345)
!402 = !DILocation(line: 170, column: 6, scope: !345)
!403 = !DILocation(line: 171, column: 2, scope: !345)
!404 = !DILocation(line: 171, column: 9, scope: !345)
!405 = !DILocation(line: 172, column: 2, scope: !345)
!406 = !DILocation(line: 172, column: 6, scope: !345)
!407 = !DILocation(line: 173, column: 2, scope: !345)
!408 = !DILocation(line: 173, column: 6, scope: !345)
!409 = !DILocation(line: 174, column: 2, scope: !345)
!410 = !DILocation(line: 174, column: 6, scope: !345)
!411 = !DILocation(line: 175, column: 2, scope: !345)
!412 = !DILocation(line: 175, column: 6, scope: !345)
!413 = !DILocation(line: 175, column: 13, scope: !345)
!414 = !DILocation(line: 176, column: 2, scope: !345)
!415 = !DILocation(line: 176, column: 11, scope: !345)
!416 = !DILocation(line: 178, column: 11, scope: !345)
!417 = !DILocation(line: 178, column: 9, scope: !345)
!418 = !DILocation(line: 179, column: 17, scope: !345)
!419 = !DILocation(line: 179, column: 15, scope: !345)
!420 = !DILocation(line: 180, column: 11, scope: !345)
!421 = !DILocation(line: 180, column: 18, scope: !345)
!422 = !DILocation(line: 180, column: 43, scope: !345)
!423 = !DILocation(line: 181, column: 3, scope: !345)
!424 = !DILocation(line: 180, column: 9, scope: !345)
!425 = !DILocation(line: 184, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !345, file: !12, line: 184, column: 6)
!427 = !{i8 0, i8 2}
!428 = !{}
!429 = !DILocation(line: 184, column: 6, scope: !345)
!430 = !DILocation(line: 185, column: 18, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !12, line: 184, column: 18)
!432 = !DILocation(line: 185, column: 27, scope: !431)
!433 = !DILocation(line: 185, column: 25, scope: !431)
!434 = !DILocation(line: 185, column: 16, scope: !431)
!435 = !DILocation(line: 186, column: 13, scope: !431)
!436 = !DILocation(line: 186, column: 11, scope: !431)
!437 = !DILocation(line: 188, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !431, file: !12, line: 188, column: 7)
!439 = !DILocation(line: 188, column: 7, scope: !431)
!440 = !DILocation(line: 189, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !12, line: 188, column: 17)
!442 = !DILocation(line: 190, column: 4, scope: !441)
!443 = !DILocation(line: 192, column: 2, scope: !431)
!444 = !DILocation(line: 193, column: 13, scope: !445)
!445 = distinct !DILexicalBlock(scope: !426, file: !12, line: 192, column: 9)
!446 = !DILocation(line: 193, column: 11, scope: !445)
!447 = !DILocation(line: 196, column: 40, scope: !345)
!448 = !DILocation(line: 196, column: 8, scope: !345)
!449 = !DILocation(line: 201, column: 10, scope: !345)
!450 = !DILocation(line: 201, column: 17, scope: !345)
!451 = !DILocation(line: 201, column: 8, scope: !345)
!452 = !DILocation(line: 202, column: 15, scope: !345)
!453 = !DILocation(line: 202, column: 22, scope: !345)
!454 = !DILocation(line: 202, column: 13, scope: !345)
!455 = !DILocation(line: 205, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !345, file: !12, line: 205, column: 6)
!457 = !DILocation(line: 205, column: 20, scope: !456)
!458 = !DILocation(line: 205, column: 28, scope: !456)
!459 = !DILocation(line: 205, column: 33, scope: !456)
!460 = !DILocation(line: 206, column: 6, scope: !456)
!461 = !DILocation(line: 206, column: 20, scope: !456)
!462 = !DILocation(line: 206, column: 31, scope: !456)
!463 = !DILocation(line: 206, column: 44, scope: !456)
!464 = !DILocation(line: 207, column: 13, scope: !456)
!465 = !DILocation(line: 207, column: 27, scope: !456)
!466 = !DILocation(line: 207, column: 35, scope: !456)
!467 = !DILocation(line: 207, column: 6, scope: !456)
!468 = !DILocation(line: 205, column: 6, scope: !345)
!469 = !DILocation(line: 208, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !456, file: !12, line: 207, column: 70)
!471 = !DILocation(line: 209, column: 3, scope: !470)
!472 = !DILocation(line: 212, column: 50, scope: !345)
!473 = !DILocation(line: 212, column: 64, scope: !345)
!474 = !DILocation(line: 212, column: 12, scope: !345)
!475 = !DILocation(line: 221, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !345, file: !12, line: 221, column: 6)
!477 = !DILocation(line: 221, column: 24, scope: !476)
!478 = !DILocation(line: 221, column: 6, scope: !476)
!479 = !DILocation(line: 222, column: 30, scope: !476)
!480 = !DILocation(line: 223, column: 7, scope: !476)
!481 = !DILocation(line: 223, column: 18, scope: !476)
!482 = !DILocation(line: 223, column: 27, scope: !476)
!483 = !DILocation(line: 223, column: 30, scope: !476)
!484 = !DILocation(line: 223, column: 39, scope: !476)
!485 = !DILocation(line: 223, column: 50, scope: !476)
!486 = !DILocation(line: 223, column: 36, scope: !476)
!487 = !DILocation(line: 221, column: 6, scope: !345)
!488 = !DILocation(line: 224, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !476, file: !12, line: 223, column: 60)
!490 = !DILocation(line: 225, column: 3, scope: !489)
!491 = !DILocation(line: 228, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !345, file: !12, line: 228, column: 2)
!493 = !DILocation(line: 228, column: 7, scope: !492)
!494 = !DILocation(line: 228, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !12, line: 228, column: 2)
!496 = !DILocation(line: 228, column: 18, scope: !495)
!497 = !DILocation(line: 228, column: 16, scope: !495)
!498 = !DILocation(line: 228, column: 2, scope: !492)
!499 = !DILocation(line: 229, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !12, line: 228, column: 30)
!501 = !DILocation(line: 232, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !12, line: 232, column: 7)
!503 = !DILocation(line: 232, column: 7, scope: !500)
!504 = !DILocation(line: 233, column: 4, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !12, line: 232, column: 19)
!506 = !DILocation(line: 234, column: 19, scope: !505)
!507 = !DILocation(line: 234, column: 17, scope: !505)
!508 = !DILocation(line: 235, column: 14, scope: !505)
!509 = !DILocation(line: 235, column: 12, scope: !505)
!510 = !DILocation(line: 237, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !505, file: !12, line: 237, column: 8)
!512 = !DILocation(line: 237, column: 8, scope: !505)
!513 = !DILocation(line: 238, column: 10, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !12, line: 237, column: 18)
!515 = !DILocation(line: 239, column: 5, scope: !514)
!516 = !DILocation(line: 241, column: 3, scope: !505)
!517 = !DILocation(line: 242, column: 14, scope: !518)
!518 = distinct !DILexicalBlock(scope: !502, file: !12, line: 241, column: 10)
!519 = !DILocation(line: 242, column: 12, scope: !518)
!520 = !DILocation(line: 245, column: 17, scope: !500)
!521 = !DILocation(line: 245, column: 26, scope: !500)
!522 = !DILocation(line: 245, column: 3, scope: !500)
!523 = !DILocation(line: 246, column: 12, scope: !500)
!524 = !DILocation(line: 246, column: 21, scope: !500)
!525 = !DILocation(line: 246, column: 19, scope: !500)
!526 = !DILocation(line: 246, column: 10, scope: !500)
!527 = !DILocation(line: 248, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !500, file: !12, line: 248, column: 3)
!529 = !DILocation(line: 248, column: 8, scope: !528)
!530 = !DILocation(line: 248, column: 15, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !12, line: 248, column: 3)
!532 = !DILocation(line: 248, column: 19, scope: !531)
!533 = !DILocation(line: 248, column: 30, scope: !531)
!534 = !DILocation(line: 248, column: 17, scope: !531)
!535 = !DILocation(line: 248, column: 3, scope: !528)
!536 = !DILocation(line: 249, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !12, line: 249, column: 8)
!538 = distinct !DILexicalBlock(scope: !531, file: !12, line: 248, column: 45)
!539 = !DILocation(line: 249, column: 16, scope: !537)
!540 = !DILocation(line: 249, column: 27, scope: !537)
!541 = !DILocation(line: 249, column: 40, scope: !537)
!542 = !DILocation(line: 249, column: 43, scope: !537)
!543 = !DILocation(line: 249, column: 13, scope: !537)
!544 = !DILocation(line: 249, column: 8, scope: !538)
!545 = !DILocation(line: 251, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !537, file: !12, line: 249, column: 51)
!547 = !DILocation(line: 251, column: 17, scope: !546)
!548 = !DILocation(line: 251, column: 30, scope: !546)
!549 = !DILocation(line: 251, column: 33, scope: !546)
!550 = !DILocation(line: 250, column: 12, scope: !546)
!551 = !DILocation(line: 252, column: 5, scope: !546)
!552 = !DILocation(line: 254, column: 3, scope: !538)
!553 = !DILocation(line: 248, column: 41, scope: !531)
!554 = !DILocation(line: 248, column: 3, scope: !531)
!555 = distinct !{!555, !535, !556, !337, !338}
!556 = !DILocation(line: 254, column: 3, scope: !528)
!557 = !DILocation(line: 256, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !500, file: !12, line: 256, column: 7)
!559 = !DILocation(line: 256, column: 12, scope: !558)
!560 = !DILocation(line: 256, column: 23, scope: !558)
!561 = !DILocation(line: 256, column: 9, scope: !558)
!562 = !DILocation(line: 256, column: 7, scope: !500)
!563 = !DILocation(line: 257, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !12, line: 256, column: 33)
!565 = !DILocation(line: 258, column: 4, scope: !564)
!566 = !DILocation(line: 260, column: 2, scope: !500)
!567 = !DILocation(line: 228, column: 26, scope: !495)
!568 = !DILocation(line: 228, column: 2, scope: !495)
!569 = distinct !{!569, !498, !570, !337, !338}
!570 = !DILocation(line: 260, column: 2, scope: !492)
!571 = !DILocation(line: 266, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !345, file: !12, line: 266, column: 6)
!573 = !DILocation(line: 266, column: 6, scope: !345)
!574 = !DILocation(line: 267, column: 3, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !12, line: 266, column: 18)
!576 = !DILocation(line: 268, column: 16, scope: !575)
!577 = !DILocation(line: 269, column: 13, scope: !575)
!578 = !DILocation(line: 269, column: 11, scope: !575)
!579 = !DILocation(line: 271, column: 8, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !12, line: 271, column: 7)
!581 = !DILocation(line: 271, column: 7, scope: !575)
!582 = !DILocation(line: 272, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !12, line: 271, column: 17)
!584 = !DILocation(line: 273, column: 4, scope: !583)
!585 = !DILocation(line: 275, column: 2, scope: !575)
!586 = !DILocation(line: 276, column: 13, scope: !587)
!587 = distinct !DILexicalBlock(scope: !572, file: !12, line: 275, column: 9)
!588 = !DILocation(line: 276, column: 11, scope: !587)
!589 = !DILocation(line: 279, column: 42, scope: !345)
!590 = !DILocation(line: 279, column: 14, scope: !345)
!591 = !DILocation(line: 281, column: 11, scope: !345)
!592 = !DILocation(line: 281, column: 18, scope: !345)
!593 = !DILocation(line: 282, column: 5, scope: !345)
!594 = !DILocation(line: 282, column: 18, scope: !345)
!595 = !DILocation(line: 282, column: 3, scope: !345)
!596 = !DILocation(line: 281, column: 9, scope: !345)
!597 = !DILocation(line: 283, column: 9, scope: !345)
!598 = !DILocation(line: 283, column: 18, scope: !345)
!599 = !DILocation(line: 283, column: 16, scope: !345)
!600 = !DILocation(line: 283, column: 7, scope: !345)
!601 = !DILocation(line: 285, column: 6, scope: !602)
!602 = distinct !DILexicalBlock(scope: !345, file: !12, line: 285, column: 6)
!603 = !DILocation(line: 285, column: 17, scope: !602)
!604 = !DILocation(line: 285, column: 22, scope: !602)
!605 = !DILocation(line: 285, column: 25, scope: !602)
!606 = !DILocation(line: 285, column: 38, scope: !602)
!607 = !DILocation(line: 285, column: 49, scope: !602)
!608 = !DILocation(line: 285, column: 6, scope: !345)
!609 = !DILocation(line: 286, column: 8, scope: !602)
!610 = !DILocation(line: 286, column: 3, scope: !602)
!611 = !DILocation(line: 285, column: 52, scope: !602)
!612 = !DILocation(line: 288, column: 1, scope: !345)
!613 = !DILocation(line: 289, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !345, file: !12, line: 289, column: 6)
!615 = !DILocation(line: 289, column: 6, scope: !345)
!616 = !DILocation(line: 290, column: 3, scope: !614)
!617 = !DILocation(line: 291, column: 9, scope: !345)
!618 = !DILocation(line: 292, column: 1, scope: !345)
!619 = !DILocation(line: 291, column: 2, scope: !345)
!620 = !DISubprogram(name: "memcmp", scope: !621, file: !621, line: 196, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!622 = !DISubroutineType(types: !623)
!623 = !{!120, !624, !624, !374}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
