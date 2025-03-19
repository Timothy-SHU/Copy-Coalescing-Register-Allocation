; ModuleID = 'arch/x86/boot/compressed/ident_map_64.c'
source_filename = "arch/x86/boot/compressed/ident_map_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_mapping_info = type { ptr, ptr, i64, i64, i8, i64 }
%struct.alloc_pgt_data = type { ptr, i64, i64 }
%struct.pgd_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.16, i64, i64, %union.anon.17 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i64 }

@__default_kernel_pte_mask = hidden global i64 -1, section ".data..read_mostly", align 8, !dbg !0
@pgdir_shift = external hidden global i32, align 4
@physical_mask = hidden global i64 4503599627370495, align 8, !dbg !103
@mapping_info = internal global %struct.x86_mapping_info zeroinitializer, align 8, !dbg !124
@top_level_pgt = internal global i64 0, align 8, !dbg !122
@.str = private unnamed_addr constant [43 x i8] c"Error: kernel_ident_mapping_init() failed\0A\00", align 1, !dbg !105
@pgt_data = internal global %struct.alloc_pgt_data zeroinitializer, align 8, !dbg !120
@_pgtable = external hidden global [0 x i8], align 1
@_head = external hidden global [0 x i8], align 1
@_end = external hidden global [0 x i8], align 1
@boot_params_ptr = external hidden global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected page-fault:\00", align 1, !dbg !110
@.str.2 = private unnamed_addr constant [25 x i8] c"Page-fault on GHCB page:\00", align 1, !dbg !115
@ptrs_per_p4d = external hidden global i32, align 4
@__pgtable_l5_enabled = external hidden global i32, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"out of pgt_buf in arch/x86/boot/compressed/ident_map_64.c!?\0A\00", align 1, !dbg !140
@.str.4 = private unnamed_addr constant [26 x i8] c"pages->pgt_buf_offset: 0x\00", align 1, !dbg !145
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !150
@.str.6 = private unnamed_addr constant [24 x i8] c"pages->pgt_buf_size: 0x\00", align 1, !dbg !155
@.str.7 = private unnamed_addr constant [64 x i8] c"pgt_buf running low in arch/x86/boot/compressed/ident_map_64.c\0A\00", align 1, !dbg !160
@.str.8 = private unnamed_addr constant [30 x i8] c"Need to raise BOOT_PGT_SIZE?\0A\00", align 1, !dbg !165
@.str.9 = private unnamed_addr constant [14 x i8] c"\0AError Code: \00", align 1, !dbg !170
@.str.10 = private unnamed_addr constant [9 x i8] c"\0ACR2: 0x\00", align 1, !dbg !175
@.str.11 = private unnamed_addr constant [27 x i8] c"\0ARIP relative to _head: 0x\00", align 1, !dbg !180
@.str.12 = private unnamed_addr constant [11 x i8] c"Stopping.\0A\00", align 1, !dbg !185

; Function Attrs: noredzone nounwind
define hidden i32 @kernel_ident_mapping_init(ptr noundef %info, ptr noundef %pgd_page, i64 noundef %pstart, i64 noundef %pend) #0 !dbg !197 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %pgd_page.addr = alloca ptr, align 8
  %pstart.addr = alloca i64, align 8
  %pend.addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %end = alloca i64, align 8
  %next = alloca i64, align 8
  %result = alloca i32, align 4
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pgd_t, align 8
  %pud = alloca ptr, align 8
  %agg.tmp38 = alloca %struct.pgd_t, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !204, metadata !DIExpression()), !dbg !220
  store ptr %pgd_page, ptr %pgd_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd_page.addr, metadata !205, metadata !DIExpression()), !dbg !221
  store i64 %pstart, ptr %pstart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pstart.addr, metadata !206, metadata !DIExpression()), !dbg !222
  store i64 %pend, ptr %pend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pend.addr, metadata !207, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !208, metadata !DIExpression()), !dbg !225
  %0 = load i64, ptr %pstart.addr, align 8, !dbg !226
  %1 = load ptr, ptr %info.addr, align 8, !dbg !227
  %offset = getelementptr inbounds %struct.x86_mapping_info, ptr %1, i32 0, i32 3, !dbg !228
  %2 = load i64, ptr %offset, align 8, !dbg !228
  %add = add i64 %0, %2, !dbg !229
  store i64 %add, ptr %addr, align 8, !dbg !225
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %end, metadata !209, metadata !DIExpression()), !dbg !231
  %3 = load i64, ptr %pend.addr, align 8, !dbg !232
  %4 = load ptr, ptr %info.addr, align 8, !dbg !233
  %offset1 = getelementptr inbounds %struct.x86_mapping_info, ptr %4, i32 0, i32 3, !dbg !234
  %5 = load i64, ptr %offset1, align 8, !dbg !234
  %add2 = add i64 %3, %5, !dbg !235
  store i64 %add2, ptr %end, align 8, !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %next, metadata !210, metadata !DIExpression()), !dbg !237
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %result, metadata !211, metadata !DIExpression()), !dbg !239
  %6 = load ptr, ptr %info.addr, align 8, !dbg !240
  %kernpg_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %6, i32 0, i32 5, !dbg !242
  %7 = load i64, ptr %kernpg_flag, align 8, !dbg !242
  %tobool = icmp ne i64 %7, 0, !dbg !240
  br i1 %tobool, label %if.end, label %if.then, !dbg !243

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %info.addr, align 8, !dbg !244
  %kernpg_flag3 = getelementptr inbounds %struct.x86_mapping_info, ptr %8, i32 0, i32 5, !dbg !245
  store i64 99, ptr %kernpg_flag3, align 8, !dbg !246
  br label %if.end, !dbg !244

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !247
  %10 = load ptr, ptr %info.addr, align 8, !dbg !248
  %kernpg_flag4 = getelementptr inbounds %struct.x86_mapping_info, ptr %10, i32 0, i32 5, !dbg !249
  %11 = load i64, ptr %kernpg_flag4, align 8, !dbg !250
  %and = and i64 %11, %9, !dbg !250
  store i64 %and, ptr %kernpg_flag4, align 8, !dbg !250
  br label %for.cond, !dbg !251

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, ptr %addr, align 8, !dbg !252
  %13 = load i64, ptr %end, align 8, !dbg !253
  %cmp = icmp ult i64 %12, %13, !dbg !254
  br i1 %cmp, label %for.body, label %for.end, !dbg !255

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #8, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !212, metadata !DIExpression()), !dbg !257
  %14 = load ptr, ptr %pgd_page.addr, align 8, !dbg !258
  %15 = load i64, ptr %addr, align 8, !dbg !259
  %16 = load i32, ptr @pgdir_shift, align 4, !dbg !259
  %sh_prom = zext i32 %16 to i64, !dbg !259
  %shr = lshr i64 %15, %sh_prom, !dbg !259
  %and5 = and i64 %shr, 511, !dbg !259
  %add.ptr = getelementptr inbounds %struct.pgd_t, ptr %14, i64 %and5, !dbg !260
  store ptr %add.ptr, ptr %pgd, align 8, !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #8, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !216, metadata !DIExpression()), !dbg !262
  %17 = load i64, ptr %addr, align 8, !dbg !263
  %18 = load i32, ptr @pgdir_shift, align 4, !dbg !264
  %sh_prom6 = zext i32 %18 to i64, !dbg !264
  %shl = shl i64 1, %sh_prom6, !dbg !264
  %sub = sub i64 %shl, 1, !dbg !264
  %not = xor i64 %sub, -1, !dbg !264
  %and7 = and i64 %17, %not, !dbg !265
  %19 = load i32, ptr @pgdir_shift, align 4, !dbg !266
  %sh_prom8 = zext i32 %19 to i64, !dbg !266
  %shl9 = shl i64 1, %sh_prom8, !dbg !266
  %add10 = add i64 %and7, %shl9, !dbg !267
  store i64 %add10, ptr %next, align 8, !dbg !268
  %20 = load i64, ptr %next, align 8, !dbg !269
  %21 = load i64, ptr %end, align 8, !dbg !271
  %cmp11 = icmp ugt i64 %20, %21, !dbg !272
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !273

if.then12:                                        ; preds = %for.body
  %22 = load i64, ptr %end, align 8, !dbg !274
  store i64 %22, ptr %next, align 8, !dbg !275
  br label %if.end13, !dbg !276

if.end13:                                         ; preds = %if.then12, %for.body
  %23 = load ptr, ptr %pgd, align 8, !dbg !277
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %23, i32 0, i32 0, !dbg !279
  %24 = load i64, ptr %coerce.dive, align 8, !dbg !279
  %call = call i32 @pgd_present(i64 %24) #9, !dbg !279
  %tobool14 = icmp ne i32 %call, 0, !dbg !279
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !280

if.then15:                                        ; preds = %if.end13
  %25 = load ptr, ptr %pgd, align 8, !dbg !281
  %call16 = call ptr @p4d_offset(ptr noundef %25, i64 noundef 0) #9, !dbg !283
  store ptr %call16, ptr %p4d, align 8, !dbg !284
  %26 = load ptr, ptr %info.addr, align 8, !dbg !285
  %27 = load ptr, ptr %p4d, align 8, !dbg !286
  %28 = load i64, ptr %addr, align 8, !dbg !287
  %29 = load i64, ptr %next, align 8, !dbg !288
  %call17 = call i32 @ident_p4d_init(ptr noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef %29) #9, !dbg !289
  store i32 %call17, ptr %result, align 4, !dbg !290
  %30 = load i32, ptr %result, align 4, !dbg !291
  %tobool18 = icmp ne i32 %30, 0, !dbg !291
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !293

if.then19:                                        ; preds = %if.then15
  %31 = load i32, ptr %result, align 4, !dbg !294
  store i32 %31, ptr %retval, align 4, !dbg !295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !295

if.end20:                                         ; preds = %if.then15
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !296

if.end21:                                         ; preds = %if.end13
  %32 = load ptr, ptr %info.addr, align 8, !dbg !297
  %alloc_pgt_page = getelementptr inbounds %struct.x86_mapping_info, ptr %32, i32 0, i32 0, !dbg !298
  %33 = load ptr, ptr %alloc_pgt_page, align 8, !dbg !298
  %34 = load ptr, ptr %info.addr, align 8, !dbg !299
  %context = getelementptr inbounds %struct.x86_mapping_info, ptr %34, i32 0, i32 1, !dbg !300
  %35 = load ptr, ptr %context, align 8, !dbg !300
  %call22 = call ptr %33(ptr noundef %35) #9, !dbg !297
  store ptr %call22, ptr %p4d, align 8, !dbg !301
  %36 = load ptr, ptr %p4d, align 8, !dbg !302
  %tobool23 = icmp ne ptr %36, null, !dbg !302
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !304

if.then24:                                        ; preds = %if.end21
  store i32 -12, ptr %retval, align 4, !dbg !305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !305

if.end25:                                         ; preds = %if.end21
  %37 = load ptr, ptr %info.addr, align 8, !dbg !306
  %38 = load ptr, ptr %p4d, align 8, !dbg !307
  %39 = load i64, ptr %addr, align 8, !dbg !308
  %40 = load i64, ptr %next, align 8, !dbg !309
  %call26 = call i32 @ident_p4d_init(ptr noundef %37, ptr noundef %38, i64 noundef %39, i64 noundef %40) #9, !dbg !310
  store i32 %call26, ptr %result, align 4, !dbg !311
  %41 = load i32, ptr %result, align 4, !dbg !312
  %tobool27 = icmp ne i32 %41, 0, !dbg !312
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !314

if.then28:                                        ; preds = %if.end25
  %42 = load i32, ptr %result, align 4, !dbg !315
  store i32 %42, ptr %retval, align 4, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end29:                                         ; preds = %if.end25
  %call30 = call zeroext i1 @pgtable_l5_enabled() #9, !dbg !317
  br i1 %call30, label %if.then31, label %if.else, !dbg !318

if.then31:                                        ; preds = %if.end29
  %43 = load ptr, ptr %pgd, align 8, !dbg !319
  %44 = load ptr, ptr %p4d, align 8, !dbg !319
  %45 = ptrtoint ptr %44 to i64, !dbg !319
  %46 = load ptr, ptr %info.addr, align 8, !dbg !319
  %kernpg_flag32 = getelementptr inbounds %struct.x86_mapping_info, ptr %46, i32 0, i32 5, !dbg !319
  %47 = load i64, ptr %kernpg_flag32, align 8, !dbg !319
  %or = or i64 %45, %47, !dbg !319
  %or33 = or i64 %or, 288230376151711744, !dbg !319
  %call34 = call i64 @native_make_pgd(i64 noundef %or33) #9, !dbg !319
  %coerce.dive35 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !319
  store i64 %call34, ptr %coerce.dive35, align 8, !dbg !319
  %coerce.dive36 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !319
  %48 = load i64, ptr %coerce.dive36, align 8, !dbg !319
  call void @native_set_pgd(ptr noundef %43, i64 %48) #9, !dbg !319
  br label %if.end45, !dbg !321

if.else:                                          ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #8, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !217, metadata !DIExpression()), !dbg !323
  %49 = load ptr, ptr %p4d, align 8, !dbg !324
  %call37 = call ptr @pud_offset(ptr noundef %49, i64 noundef 0) #9, !dbg !325
  store ptr %call37, ptr %pud, align 8, !dbg !323
  %50 = load ptr, ptr %pgd, align 8, !dbg !326
  %51 = load ptr, ptr %pud, align 8, !dbg !326
  %52 = ptrtoint ptr %51 to i64, !dbg !326
  %53 = load ptr, ptr %info.addr, align 8, !dbg !326
  %kernpg_flag39 = getelementptr inbounds %struct.x86_mapping_info, ptr %53, i32 0, i32 5, !dbg !326
  %54 = load i64, ptr %kernpg_flag39, align 8, !dbg !326
  %or40 = or i64 %52, %54, !dbg !326
  %or41 = or i64 %or40, 288230376151711744, !dbg !326
  %call42 = call i64 @native_make_pgd(i64 noundef %or41) #9, !dbg !326
  %coerce.dive43 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp38, i32 0, i32 0, !dbg !326
  store i64 %call42, ptr %coerce.dive43, align 8, !dbg !326
  %coerce.dive44 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp38, i32 0, i32 0, !dbg !326
  %55 = load i64, ptr %coerce.dive44, align 8, !dbg !326
  call void @native_set_pgd(ptr noundef %50, i64 %55) #9, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #8, !dbg !327
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !328
  br label %cleanup, !dbg !328

cleanup:                                          ; preds = %if.end45, %if.then28, %if.then24, %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #8, !dbg !328
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #8, !dbg !328
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %56 = load i64, ptr %next, align 8, !dbg !330
  store i64 %56, ptr %addr, align 8, !dbg !331
  br label %for.cond, !dbg !332, !llvm.loop !333

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !337

cleanup47:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !338
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !338
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8, !dbg !338
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8, !dbg !338
  %57 = load i32, ptr %retval, align 4, !dbg !338
  ret i32 %57, !dbg !338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @pgd_present(i64 %pgd.coerce) #3 !dbg !339 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !344, metadata !DIExpression()), !dbg !345
  %call = call zeroext i1 @pgtable_l5_enabled() #9, !dbg !346
  br i1 %call, label %if.end, label %if.then, !dbg !348

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !349
  br label %return, !dbg !349

if.end:                                           ; preds = %entry
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !350
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !350
  %call2 = call i64 @pgd_flags(i64 %0) #9, !dbg !350
  %and = and i64 %call2, 1, !dbg !351
  %conv = trunc i64 %and to i32, !dbg !350
  store i32 %conv, ptr %retval, align 4, !dbg !352
  br label %return, !dbg !352

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !353
  ret i32 %1, !dbg !353
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 !dbg !354 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !358, metadata !DIExpression()), !dbg !360
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !359, metadata !DIExpression()), !dbg !361
  %call = call zeroext i1 @pgtable_l5_enabled() #9, !dbg !362
  br i1 %call, label %if.end, label %if.then, !dbg !364

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !365
  store ptr %0, ptr %retval, align 8, !dbg !366
  br label %return, !dbg !366

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !367
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !368
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !368
  %call1 = call i64 @pgd_page_vaddr(i64 %2) #9, !dbg !368
  %3 = inttoptr i64 %call1 to ptr, !dbg !369
  %4 = load i64, ptr %address.addr, align 8, !dbg !370
  %call2 = call i64 @p4d_index(i64 noundef %4) #9, !dbg !371
  %add.ptr = getelementptr inbounds %struct.p4d_t, ptr %3, i64 %call2, !dbg !372
  store ptr %add.ptr, ptr %retval, align 8, !dbg !373
  br label %return, !dbg !373

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !374
  ret ptr %5, !dbg !374
}

; Function Attrs: noredzone nounwind
define internal i32 @ident_p4d_init(ptr noundef %info, ptr noundef %p4d_page, i64 noundef %addr, i64 noundef %end) #0 !dbg !375 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %p4d_page.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %next = alloca i64, align 8
  %result = alloca i32, align 4
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.p4d_t, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !379, metadata !DIExpression()), !dbg !390
  store ptr %p4d_page, ptr %p4d_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d_page.addr, metadata !380, metadata !DIExpression()), !dbg !391
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !381, metadata !DIExpression()), !dbg !392
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !382, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %next, metadata !383, metadata !DIExpression()), !dbg !395
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !396
  call void @llvm.dbg.declare(metadata ptr %result, metadata !384, metadata !DIExpression()), !dbg !397
  br label %for.cond, !dbg !398

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %addr.addr, align 8, !dbg !399
  %1 = load i64, ptr %end.addr, align 8, !dbg !400
  %cmp = icmp ult i64 %0, %1, !dbg !401
  br i1 %cmp, label %for.body, label %for.end, !dbg !402

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #8, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !385, metadata !DIExpression()), !dbg !404
  %2 = load ptr, ptr %p4d_page.addr, align 8, !dbg !405
  %3 = load i64, ptr %addr.addr, align 8, !dbg !406
  %call = call i64 @p4d_index(i64 noundef %3) #9, !dbg !407
  %add.ptr = getelementptr inbounds %struct.p4d_t, ptr %2, i64 %call, !dbg !408
  store ptr %add.ptr, ptr %p4d, align 8, !dbg !404
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #8, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !389, metadata !DIExpression()), !dbg !410
  %4 = load i64, ptr %addr.addr, align 8, !dbg !411
  %and = and i64 %4, -549755813888, !dbg !412
  %add = add i64 %and, 549755813888, !dbg !413
  store i64 %add, ptr %next, align 8, !dbg !414
  %5 = load i64, ptr %next, align 8, !dbg !415
  %6 = load i64, ptr %end.addr, align 8, !dbg !417
  %cmp1 = icmp ugt i64 %5, %6, !dbg !418
  br i1 %cmp1, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %end.addr, align 8, !dbg !420
  store i64 %7, ptr %next, align 8, !dbg !421
  br label %if.end, !dbg !422

if.end:                                           ; preds = %if.then, %for.body
  %8 = load ptr, ptr %p4d, align 8, !dbg !423
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %8, i32 0, i32 0, !dbg !425
  %9 = load i64, ptr %coerce.dive, align 8, !dbg !425
  %call2 = call i32 @p4d_present(i64 %9) #9, !dbg !425
  %tobool = icmp ne i32 %call2, 0, !dbg !425
  br i1 %tobool, label %if.then3, label %if.end9, !dbg !426

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %p4d, align 8, !dbg !427
  %call4 = call ptr @pud_offset(ptr noundef %10, i64 noundef 0) #9, !dbg !429
  store ptr %call4, ptr %pud, align 8, !dbg !430
  %11 = load ptr, ptr %info.addr, align 8, !dbg !431
  %12 = load ptr, ptr %pud, align 8, !dbg !432
  %13 = load i64, ptr %addr.addr, align 8, !dbg !433
  %14 = load i64, ptr %next, align 8, !dbg !434
  %call5 = call i32 @ident_pud_init(ptr noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %14) #9, !dbg !435
  store i32 %call5, ptr %result, align 4, !dbg !436
  %15 = load i32, ptr %result, align 4, !dbg !437
  %tobool6 = icmp ne i32 %15, 0, !dbg !437
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !439

if.then7:                                         ; preds = %if.then3
  %16 = load i32, ptr %result, align 4, !dbg !440
  store i32 %16, ptr %retval, align 4, !dbg !441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end8:                                          ; preds = %if.then3
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !442

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %info.addr, align 8, !dbg !443
  %alloc_pgt_page = getelementptr inbounds %struct.x86_mapping_info, ptr %17, i32 0, i32 0, !dbg !444
  %18 = load ptr, ptr %alloc_pgt_page, align 8, !dbg !444
  %19 = load ptr, ptr %info.addr, align 8, !dbg !445
  %context = getelementptr inbounds %struct.x86_mapping_info, ptr %19, i32 0, i32 1, !dbg !446
  %20 = load ptr, ptr %context, align 8, !dbg !446
  %call10 = call ptr %18(ptr noundef %20) #9, !dbg !443
  store ptr %call10, ptr %pud, align 8, !dbg !447
  %21 = load ptr, ptr %pud, align 8, !dbg !448
  %tobool11 = icmp ne ptr %21, null, !dbg !448
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !450

if.then12:                                        ; preds = %if.end9
  store i32 -12, ptr %retval, align 4, !dbg !451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !451

if.end13:                                         ; preds = %if.end9
  %22 = load ptr, ptr %info.addr, align 8, !dbg !452
  %23 = load ptr, ptr %pud, align 8, !dbg !453
  %24 = load i64, ptr %addr.addr, align 8, !dbg !454
  %25 = load i64, ptr %next, align 8, !dbg !455
  %call14 = call i32 @ident_pud_init(ptr noundef %22, ptr noundef %23, i64 noundef %24, i64 noundef %25) #9, !dbg !456
  store i32 %call14, ptr %result, align 4, !dbg !457
  %26 = load i32, ptr %result, align 4, !dbg !458
  %tobool15 = icmp ne i32 %26, 0, !dbg !458
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !460

if.then16:                                        ; preds = %if.end13
  %27 = load i32, ptr %result, align 4, !dbg !461
  store i32 %27, ptr %retval, align 4, !dbg !462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !462

if.end17:                                         ; preds = %if.end13
  %28 = load ptr, ptr %p4d, align 8, !dbg !463
  %29 = load ptr, ptr %pud, align 8, !dbg !463
  %30 = ptrtoint ptr %29 to i64, !dbg !463
  %31 = load ptr, ptr %info.addr, align 8, !dbg !463
  %kernpg_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %31, i32 0, i32 5, !dbg !463
  %32 = load i64, ptr %kernpg_flag, align 8, !dbg !463
  %or = or i64 %30, %32, !dbg !463
  %or18 = or i64 %or, 288230376151711744, !dbg !463
  %call19 = call i64 @native_make_p4d(i64 noundef %or18) #9, !dbg !463
  %coerce.dive20 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !463
  store i64 %call19, ptr %coerce.dive20, align 8, !dbg !463
  %coerce.dive21 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !463
  %33 = load i64, ptr %coerce.dive21, align 8, !dbg !463
  call void @native_set_p4d(ptr noundef %28, i64 %33) #9, !dbg !463
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !464
  br label %cleanup, !dbg !464

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then12, %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #8, !dbg !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #8, !dbg !464
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %34 = load i64, ptr %next, align 8, !dbg !466
  store i64 %34, ptr %addr.addr, align 8, !dbg !467
  br label %for.cond, !dbg !468, !llvm.loop !469

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !471

cleanup23:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !472
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !472
  %35 = load i32, ptr %retval, align 4, !dbg !472
  ret i32 %35, !dbg !472
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @pgtable_l5_enabled() #3 !dbg !473 {
entry:
  %0 = load i32, ptr @__pgtable_l5_enabled, align 4, !dbg !476
  %tobool = icmp ne i32 %0, 0, !dbg !476
  ret i1 %tobool, !dbg !477
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #3 !dbg !478 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !484, metadata !DIExpression()), !dbg !486
  br label %do.body, !dbg !487

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !488

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !490

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !488

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !492
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !492
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !492
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !492
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #9, !dbg !492
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !492
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !492
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !492
  br label %do.end5, !dbg !492

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !488

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !494
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_make_pgd(i64 noundef %val) #3 !dbg !495 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !501
  %0 = load i64, ptr %val.addr, align 8, !dbg !502
  %and = and i64 %0, -1, !dbg !503
  store i64 %and, ptr %pgd, align 8, !dbg !501
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !504
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !504
  ret i64 %1, !dbg !504
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #3 !dbg !505 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !510, metadata !DIExpression()), !dbg !512
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !511, metadata !DIExpression()), !dbg !513
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !514
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !515
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !515
  %call = call ptr @p4d_pgtable(i64 %1) #9, !dbg !515
  %2 = load i64, ptr %address.addr, align 8, !dbg !516
  %call1 = call i64 @pud_index(i64 noundef %2) #9, !dbg !517
  %add.ptr = getelementptr inbounds %struct.pud_t, ptr %call, i64 %call1, !dbg !518
  ret ptr %add.ptr, !dbg !519
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden void @kernel_add_identity_map(i64 noundef %start, i64 noundef %end) #0 !dbg !520 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !524, metadata !DIExpression()), !dbg !527
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !525, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !526, metadata !DIExpression()), !dbg !530
  %0 = load i64, ptr %start.addr, align 8, !dbg !531
  %and = and i64 %0, -2097152, !dbg !531
  store i64 %and, ptr %start.addr, align 8, !dbg !532
  %1 = load i64, ptr %end.addr, align 8, !dbg !533
  %sub = sub i64 %1, 1, !dbg !533
  %or = or i64 %sub, 2097151, !dbg !533
  %add = add i64 %or, 1, !dbg !533
  store i64 %add, ptr %end.addr, align 8, !dbg !534
  %2 = load i64, ptr %start.addr, align 8, !dbg !535
  %3 = load i64, ptr %end.addr, align 8, !dbg !537
  %cmp = icmp uge i64 %2, %3, !dbg !538
  br i1 %cmp, label %if.then, label %if.end, !dbg !539

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.end:                                           ; preds = %entry
  %4 = load i64, ptr @top_level_pgt, align 8, !dbg !541
  %5 = inttoptr i64 %4 to ptr, !dbg !542
  %6 = load i64, ptr %start.addr, align 8, !dbg !543
  %7 = load i64, ptr %end.addr, align 8, !dbg !544
  %call = call i32 @kernel_ident_mapping_init(ptr noundef @mapping_info, ptr noundef %5, i64 noundef %6, i64 noundef %7) #9, !dbg !545
  store i32 %call, ptr %ret, align 4, !dbg !546
  %8 = load i32, ptr %ret, align 4, !dbg !547
  %tobool = icmp ne i32 %8, 0, !dbg !547
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !549

if.then1:                                         ; preds = %if.end
  call void @error(ptr noundef @.str) #10, !dbg !550
  unreachable, !dbg !550

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !551
  br label %cleanup, !dbg !551

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !551
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !551

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone noreturn
declare !dbg !552 hidden void @error(ptr noundef) #4

; Function Attrs: noredzone nounwind
define hidden void @initialize_identity_maps(ptr noundef %rmode) #0 !dbg !556 {
entry:
  %rmode.addr = alloca ptr, align 8
  %cmdline = alloca i64, align 8
  %sd = alloca ptr, align 8
  %sd_addr = alloca i64, align 8
  store ptr %rmode, ptr %rmode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmode.addr, metadata !560, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmdline) #8, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %cmdline, metadata !561, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #8, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !562, metadata !DIExpression()), !dbg !569
  %0 = load i64, ptr @physical_mask, align 8, !dbg !570
  %and = and i64 %0, -1, !dbg !570
  store i64 %and, ptr @physical_mask, align 8, !dbg !570
  store ptr @alloc_pgt_page, ptr @mapping_info, align 8, !dbg !571
  store ptr @pgt_data, ptr getelementptr inbounds (%struct.x86_mapping_info, ptr @mapping_info, i32 0, i32 1), align 8, !dbg !572
  store i64 483, ptr getelementptr inbounds (%struct.x86_mapping_info, ptr @mapping_info, i32 0, i32 2), align 8, !dbg !573
  store i64 99, ptr getelementptr inbounds (%struct.x86_mapping_info, ptr @mapping_info, i32 0, i32 5), align 8, !dbg !574
  store i64 0, ptr getelementptr inbounds (%struct.alloc_pgt_data, ptr @pgt_data, i32 0, i32 2), align 8, !dbg !575
  %call = call i64 @read_cr3_pa() #9, !dbg !576
  store i64 %call, ptr @top_level_pgt, align 8, !dbg !577
  %1 = load i64, ptr @top_level_pgt, align 8, !dbg !578
  %2 = inttoptr i64 %1 to ptr, !dbg !580
  %call1 = call ptr @p4d_offset(ptr noundef %2, i64 noundef 0) #9, !dbg !581
  %cmp = icmp eq ptr %call1, @_pgtable, !dbg !582
  br i1 %cmp, label %if.then, label %if.else, !dbg !583

if.then:                                          ; preds = %entry
  store ptr getelementptr inbounds (i8, ptr @_pgtable, i64 24576), ptr @pgt_data, align 8, !dbg !584
  store i64 106496, ptr getelementptr inbounds (%struct.alloc_pgt_data, ptr @pgt_data, i32 0, i32 1), align 8, !dbg !586
  %3 = load ptr, ptr @pgt_data, align 8, !dbg !587
  %4 = load i64, ptr getelementptr inbounds (%struct.alloc_pgt_data, ptr @pgt_data, i32 0, i32 1), align 8, !dbg !588
  %call2 = call ptr @memset(ptr noundef %3, i32 noundef 0, i64 noundef %4) #9, !dbg !589
  br label %if.end, !dbg !590

if.else:                                          ; preds = %entry
  store ptr @_pgtable, ptr @pgt_data, align 8, !dbg !591
  store i64 131072, ptr getelementptr inbounds (%struct.alloc_pgt_data, ptr @pgt_data, i32 0, i32 1), align 8, !dbg !593
  %5 = load ptr, ptr @pgt_data, align 8, !dbg !594
  %6 = load i64, ptr getelementptr inbounds (%struct.alloc_pgt_data, ptr @pgt_data, i32 0, i32 1), align 8, !dbg !595
  %call3 = call ptr @memset(ptr noundef %5, i32 noundef 0, i64 noundef %6) #9, !dbg !596
  %call4 = call ptr @alloc_pgt_page(ptr noundef @pgt_data) #9, !dbg !597
  %7 = ptrtoint ptr %call4 to i64, !dbg !598
  store i64 %7, ptr @top_level_pgt, align 8, !dbg !599
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @kernel_add_identity_map(i64 noundef ptrtoint (ptr @_head to i64), i64 noundef ptrtoint (ptr @_end to i64)) #9, !dbg !600
  %8 = load ptr, ptr %rmode.addr, align 8, !dbg !601
  store ptr %8, ptr @boot_params_ptr, align 8, !dbg !602
  %9 = load ptr, ptr @boot_params_ptr, align 8, !dbg !603
  %10 = ptrtoint ptr %9 to i64, !dbg !604
  %11 = load ptr, ptr @boot_params_ptr, align 8, !dbg !605
  %add.ptr = getelementptr inbounds %struct.boot_params, ptr %11, i64 1, !dbg !606
  %12 = ptrtoint ptr %add.ptr to i64, !dbg !607
  call void @kernel_add_identity_map(i64 noundef %10, i64 noundef %12) #9, !dbg !608
  %call5 = call i64 @get_cmd_line_ptr() #9, !dbg !609
  store i64 %call5, ptr %cmdline, align 8, !dbg !610
  %13 = load i64, ptr %cmdline, align 8, !dbg !611
  %14 = load i64, ptr %cmdline, align 8, !dbg !612
  %add = add i64 %14, 2048, !dbg !613
  call void @kernel_add_identity_map(i64 noundef %13, i64 noundef %add) #9, !dbg !614
  %15 = load ptr, ptr @boot_params_ptr, align 8, !dbg !615
  %hdr = getelementptr inbounds %struct.boot_params, ptr %15, i32 0, i32 28, !dbg !616
  %setup_data = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 34, !dbg !617
  %16 = load i64, ptr %setup_data, align 1, !dbg !617
  %17 = inttoptr i64 %16 to ptr, !dbg !618
  store ptr %17, ptr %sd, align 8, !dbg !619
  br label %while.cond, !dbg !620

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load ptr, ptr %sd, align 8, !dbg !621
  %tobool = icmp ne ptr %18, null, !dbg !620
  br i1 %tobool, label %while.body, label %while.end, !dbg !620

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd_addr) #8, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %sd_addr, metadata !563, metadata !DIExpression()), !dbg !623
  %19 = load ptr, ptr %sd, align 8, !dbg !624
  %20 = ptrtoint ptr %19 to i64, !dbg !625
  store i64 %20, ptr %sd_addr, align 8, !dbg !623
  %21 = load i64, ptr %sd_addr, align 8, !dbg !626
  %22 = load i64, ptr %sd_addr, align 8, !dbg !627
  %add6 = add i64 %22, 16, !dbg !628
  %23 = load ptr, ptr %sd, align 8, !dbg !629
  %len = getelementptr inbounds %struct.setup_data, ptr %23, i32 0, i32 2, !dbg !630
  %24 = load i32, ptr %len, align 4, !dbg !630
  %conv = zext i32 %24 to i64, !dbg !629
  %add7 = add i64 %add6, %conv, !dbg !631
  call void @kernel_add_identity_map(i64 noundef %21, i64 noundef %add7) #9, !dbg !632
  %25 = load ptr, ptr %sd, align 8, !dbg !633
  %next = getelementptr inbounds %struct.setup_data, ptr %25, i32 0, i32 0, !dbg !634
  %26 = load i64, ptr %next, align 8, !dbg !634
  %27 = inttoptr i64 %26 to ptr, !dbg !635
  store ptr %27, ptr %sd, align 8, !dbg !636
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd_addr) #8, !dbg !637
  br label %while.cond, !dbg !620, !llvm.loop !638

while.end:                                        ; preds = %while.cond
  %28 = load i64, ptr @top_level_pgt, align 8, !dbg !639
  call void @sev_prep_identity_maps(i64 noundef %28) #9, !dbg !640
  %29 = load i64, ptr @top_level_pgt, align 8, !dbg !641
  call void @write_cr3(i64 noundef %29) #9, !dbg !642
  call void @snp_check_features() #9, !dbg !643
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #8, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmdline) #8, !dbg !644
  ret void, !dbg !644
}

; Function Attrs: noredzone nounwind
define internal ptr @alloc_pgt_page(ptr noundef %context) #0 !dbg !645 {
entry:
  %retval = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %pages = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #8, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !648, metadata !DIExpression()), !dbg !652
  %0 = load ptr, ptr %context.addr, align 8, !dbg !653
  store ptr %0, ptr %pages, align 8, !dbg !652
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !654
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !649, metadata !DIExpression()), !dbg !655
  %1 = load ptr, ptr %pages, align 8, !dbg !656
  %pgt_buf_offset = getelementptr inbounds %struct.alloc_pgt_data, ptr %1, i32 0, i32 2, !dbg !658
  %2 = load i64, ptr %pgt_buf_offset, align 8, !dbg !658
  %3 = load ptr, ptr %pages, align 8, !dbg !659
  %pgt_buf_size = getelementptr inbounds %struct.alloc_pgt_data, ptr %3, i32 0, i32 1, !dbg !660
  %4 = load i64, ptr %pgt_buf_size, align 8, !dbg !660
  %cmp = icmp uge i64 %2, %4, !dbg !661
  br i1 %cmp, label %if.then, label %if.end, !dbg !662

if.then:                                          ; preds = %entry
  call void @__putstr(ptr noundef @.str.3) #9, !dbg !663
  call void @__putstr(ptr noundef @.str.4) #9, !dbg !665
  %5 = load ptr, ptr %pages, align 8, !dbg !665
  %pgt_buf_offset2 = getelementptr inbounds %struct.alloc_pgt_data, ptr %5, i32 0, i32 2, !dbg !665
  %6 = load i64, ptr %pgt_buf_offset2, align 8, !dbg !665
  call void @__puthex(i64 noundef %6) #9, !dbg !665
  call void @__putstr(ptr noundef @.str.5) #9, !dbg !665
  call void @__putstr(ptr noundef @.str.6) #9, !dbg !667
  %7 = load ptr, ptr %pages, align 8, !dbg !667
  %pgt_buf_size3 = getelementptr inbounds %struct.alloc_pgt_data, ptr %7, i32 0, i32 1, !dbg !667
  %8 = load i64, ptr %pgt_buf_size3, align 8, !dbg !667
  call void @__puthex(i64 noundef %8) #9, !dbg !667
  call void @__putstr(ptr noundef @.str.5) #9, !dbg !667
  store ptr null, ptr %retval, align 8, !dbg !669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !669

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pages, align 8, !dbg !670
  %pgt_buf_offset4 = getelementptr inbounds %struct.alloc_pgt_data, ptr %9, i32 0, i32 2, !dbg !672
  %10 = load i64, ptr %pgt_buf_offset4, align 8, !dbg !672
  %cmp5 = icmp eq i64 %10, 114688, !dbg !673
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !674

if.then6:                                         ; preds = %if.end
  call void @__putstr(ptr noundef @.str.7) #9, !dbg !675
  call void @__putstr(ptr noundef @.str.8) #9, !dbg !677
  call void @__putstr(ptr noundef @.str.4) #9, !dbg !678
  %11 = load ptr, ptr %pages, align 8, !dbg !678
  %pgt_buf_offset7 = getelementptr inbounds %struct.alloc_pgt_data, ptr %11, i32 0, i32 2, !dbg !678
  %12 = load i64, ptr %pgt_buf_offset7, align 8, !dbg !678
  call void @__puthex(i64 noundef %12) #9, !dbg !678
  call void @__putstr(ptr noundef @.str.5) #9, !dbg !678
  call void @__putstr(ptr noundef @.str.6) #9, !dbg !680
  %13 = load ptr, ptr %pages, align 8, !dbg !680
  %pgt_buf_size8 = getelementptr inbounds %struct.alloc_pgt_data, ptr %13, i32 0, i32 1, !dbg !680
  %14 = load i64, ptr %pgt_buf_size8, align 8, !dbg !680
  call void @__puthex(i64 noundef %14) #9, !dbg !680
  call void @__putstr(ptr noundef @.str.5) #9, !dbg !680
  br label %if.end9, !dbg !682

if.end9:                                          ; preds = %if.then6, %if.end
  %15 = load ptr, ptr %pages, align 8, !dbg !683
  %pgt_buf = getelementptr inbounds %struct.alloc_pgt_data, ptr %15, i32 0, i32 0, !dbg !684
  %16 = load ptr, ptr %pgt_buf, align 8, !dbg !684
  %17 = load ptr, ptr %pages, align 8, !dbg !685
  %pgt_buf_offset10 = getelementptr inbounds %struct.alloc_pgt_data, ptr %17, i32 0, i32 2, !dbg !686
  %18 = load i64, ptr %pgt_buf_offset10, align 8, !dbg !686
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %18, !dbg !687
  store ptr %add.ptr, ptr %entry1, align 8, !dbg !688
  %19 = load ptr, ptr %pages, align 8, !dbg !689
  %pgt_buf_offset11 = getelementptr inbounds %struct.alloc_pgt_data, ptr %19, i32 0, i32 2, !dbg !690
  %20 = load i64, ptr %pgt_buf_offset11, align 8, !dbg !691
  %add = add i64 %20, 4096, !dbg !691
  store i64 %add, ptr %pgt_buf_offset11, align 8, !dbg !691
  %21 = load ptr, ptr %entry1, align 8, !dbg !692
  store ptr %21, ptr %retval, align 8, !dbg !693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !693

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #8, !dbg !694
  %22 = load ptr, ptr %retval, align 8, !dbg !694
  ret ptr %22, !dbg !694
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @read_cr3_pa() #3 !dbg !695 {
entry:
  %call = call i64 @__read_cr3() #9, !dbg !699
  %and = and i64 %call, 4503599627366400, !dbg !700
  ret i64 %and, !dbg !701
}

; Function Attrs: noredzone
declare !dbg !702 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: noredzone
declare !dbg !710 hidden i64 @get_cmd_line_ptr() #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @sev_prep_identity_maps(i64 noundef %top_level_pgt) #3 !dbg !711 {
entry:
  %top_level_pgt.addr = alloca i64, align 8
  store i64 %top_level_pgt, ptr %top_level_pgt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top_level_pgt.addr, metadata !716, metadata !DIExpression()), !dbg !717
  ret void, !dbg !718
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @write_cr3(i64 noundef %x) #3 !dbg !719 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load i64, ptr %x.addr, align 8, !dbg !724
  call void @native_write_cr3(i64 noundef %0) #9, !dbg !725
  ret void, !dbg !726
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @snp_check_features() #3 !dbg !727 {
entry:
  ret void, !dbg !730
}

; Function Attrs: noredzone nounwind
define hidden i32 @set_page_decrypted(i64 noundef %address) #0 !dbg !731 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !735, metadata !DIExpression()), !dbg !736
  %0 = load i64, ptr %address.addr, align 8, !dbg !737
  %call = call i32 @set_clr_page_flags(ptr noundef @mapping_info, i64 noundef %0, i64 noundef 0, i64 noundef 0) #9, !dbg !738
  ret i32 %call, !dbg !739
}

; Function Attrs: noredzone nounwind
define internal i32 @set_clr_page_flags(ptr noundef %info, i64 noundef %address, i64 noundef %set, i64 noundef %clr) #0 !dbg !740 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %set.addr = alloca i64, align 8
  %clr.addr = alloca i64, align 8
  %pgdp = alloca ptr, align 8
  %p4dp = alloca ptr, align 8
  %pudp = alloca ptr, align 8
  %pmdp = alloca ptr, align 8
  %ptep = alloca ptr, align 8
  %pte = alloca %struct.pte_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pte_t, align 8
  %tmp19 = alloca %struct.pte_t, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !744, metadata !DIExpression()), !dbg !754
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !745, metadata !DIExpression()), !dbg !755
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !746, metadata !DIExpression()), !dbg !756
  store i64 %clr, ptr %clr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clr.addr, metadata !747, metadata !DIExpression()), !dbg !757
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdp) #8, !dbg !758
  call void @llvm.dbg.declare(metadata ptr %pgdp, metadata !748, metadata !DIExpression()), !dbg !759
  %0 = load i64, ptr @top_level_pgt, align 8, !dbg !760
  %1 = inttoptr i64 %0 to ptr, !dbg !761
  store ptr %1, ptr %pgdp, align 8, !dbg !759
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4dp) #8, !dbg !762
  call void @llvm.dbg.declare(metadata ptr %p4dp, metadata !749, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.start.p0(i64 8, ptr %pudp) #8, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %pudp, metadata !750, metadata !DIExpression()), !dbg !765
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmdp) #8, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %pmdp, metadata !751, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptep) #8, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %ptep, metadata !752, metadata !DIExpression()), !dbg !769
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #8, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !753, metadata !DIExpression()), !dbg !770
  %2 = load i64, ptr %address.addr, align 8, !dbg !771
  %3 = inttoptr i64 %2 to ptr, !dbg !772
  %4 = load i64, ptr %3, align 8, !dbg !773
  call void asm sideeffect "mov $0, %r9", "imr,~{r9},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %4) #8, !dbg !774, !srcloc !775
  %5 = load ptr, ptr %pgdp, align 8, !dbg !776
  %6 = load i64, ptr %address.addr, align 8, !dbg !777
  %call = call ptr @p4d_offset(ptr noundef %5, i64 noundef %6) #9, !dbg !778
  store ptr %call, ptr %p4dp, align 8, !dbg !779
  %7 = load ptr, ptr %p4dp, align 8, !dbg !780
  %8 = load i64, ptr %address.addr, align 8, !dbg !781
  %call1 = call ptr @pud_offset(ptr noundef %7, i64 noundef %8) #9, !dbg !782
  store ptr %call1, ptr %pudp, align 8, !dbg !783
  %9 = load ptr, ptr %pudp, align 8, !dbg !784
  %10 = load i64, ptr %address.addr, align 8, !dbg !785
  %call2 = call ptr @pmd_offset(ptr noundef %9, i64 noundef %10) #9, !dbg !786
  store ptr %call2, ptr %pmdp, align 8, !dbg !787
  %11 = load ptr, ptr %pmdp, align 8, !dbg !788
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %11, i32 0, i32 0, !dbg !790
  %12 = load i64, ptr %coerce.dive, align 8, !dbg !790
  %call3 = call i32 @pmd_large(i64 %12) #9, !dbg !790
  %tobool = icmp ne i32 %call3, 0, !dbg !790
  br i1 %tobool, label %if.then, label %if.else, !dbg !791

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %info.addr, align 8, !dbg !792
  %14 = load ptr, ptr %pmdp, align 8, !dbg !793
  %15 = load i64, ptr %address.addr, align 8, !dbg !794
  %call4 = call ptr @split_large_pmd(ptr noundef %13, ptr noundef %14, i64 noundef %15) #9, !dbg !795
  store ptr %call4, ptr %ptep, align 8, !dbg !796
  br label %if.end, !dbg !797

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %pmdp, align 8, !dbg !798
  %17 = load i64, ptr %address.addr, align 8, !dbg !799
  %call5 = call ptr @pte_offset_kernel(ptr noundef %16, i64 noundef %17) #9, !dbg !800
  store ptr %call5, ptr %ptep, align 8, !dbg !801
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %ptep, align 8, !dbg !802
  %tobool6 = icmp ne ptr %18, null, !dbg !802
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !804

if.then7:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !805

if.end8:                                          ; preds = %if.end
  %19 = load i64, ptr %set.addr, align 8, !dbg !806
  %20 = load i64, ptr %clr.addr, align 8, !dbg !808
  %or = or i64 %19, %20, !dbg !809
  %and = and i64 %or, 0, !dbg !810
  %tobool9 = icmp ne i64 %and, 0, !dbg !810
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !811

if.then10:                                        ; preds = %if.end8
  %21 = load i64, ptr %address.addr, align 8, !dbg !812
  call void @clflush_page(i64 noundef %21) #9, !dbg !814
  %22 = load i64, ptr %clr.addr, align 8, !dbg !815
  %tobool11 = icmp ne i64 %22, 0, !dbg !815
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !817

if.then12:                                        ; preds = %if.then10
  %23 = load i64, ptr %address.addr, align 8, !dbg !818
  %and13 = and i64 %23, -4096, !dbg !818
  call void @snp_set_page_shared(i64 noundef %and13) #9, !dbg !819
  br label %if.end14, !dbg !819

if.end14:                                         ; preds = %if.then12, %if.then10
  br label %if.end15, !dbg !820

if.end15:                                         ; preds = %if.end14, %if.end8
  %24 = load ptr, ptr %ptep, align 8, !dbg !821
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %24, i64 8, i1 false), !dbg !822
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !823
  %25 = load i64, ptr %set.addr, align 8, !dbg !824
  %coerce.dive16 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !823
  %26 = load i64, ptr %coerce.dive16, align 8, !dbg !823
  %call17 = call i64 @pte_set_flags(i64 %26, i64 noundef %25) #9, !dbg !823
  %coerce.dive18 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !823
  store i64 %call17, ptr %coerce.dive18, align 8, !dbg !823
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !823
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !823
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp19) #8, !dbg !825
  %27 = load i64, ptr %clr.addr, align 8, !dbg !826
  %coerce.dive20 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !825
  %28 = load i64, ptr %coerce.dive20, align 8, !dbg !825
  %call21 = call i64 @pte_clear_flags(i64 %28, i64 noundef %27) #9, !dbg !825
  %coerce.dive22 = getelementptr inbounds %struct.pte_t, ptr %tmp19, i32 0, i32 0, !dbg !825
  store i64 %call21, ptr %coerce.dive22, align 8, !dbg !825
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp19, i64 8, i1 false), !dbg !825
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp19) #8, !dbg !825
  %29 = load ptr, ptr %ptep, align 8, !dbg !827
  %coerce.dive23 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !827
  %30 = load i64, ptr %coerce.dive23, align 8, !dbg !827
  call void @native_set_pte(ptr noundef %29, i64 %30) #9, !dbg !827
  %31 = load i64, ptr %set.addr, align 8, !dbg !828
  %and24 = and i64 %31, 0, !dbg !830
  %tobool25 = icmp ne i64 %and24, 0, !dbg !830
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !831

if.then26:                                        ; preds = %if.end15
  %32 = load i64, ptr %address.addr, align 8, !dbg !832
  %and27 = and i64 %32, -4096, !dbg !832
  call void @snp_set_page_private(i64 noundef %and27) #9, !dbg !833
  br label %if.end28, !dbg !833

if.end28:                                         ; preds = %if.then26, %if.end15
  %33 = load i64, ptr @top_level_pgt, align 8, !dbg !834
  call void @write_cr3(i64 noundef %33) #9, !dbg !835
  store i32 0, ptr %retval, align 4, !dbg !836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !836

cleanup:                                          ; preds = %if.end28, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #8, !dbg !837
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptep) #8, !dbg !837
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmdp) #8, !dbg !837
  call void @llvm.lifetime.end.p0(i64 8, ptr %pudp) #8, !dbg !837
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4dp) #8, !dbg !837
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdp) #8, !dbg !837
  %34 = load i32, ptr %retval, align 4, !dbg !837
  ret i32 %34, !dbg !837
}

; Function Attrs: noredzone nounwind
define hidden i32 @set_page_encrypted(i64 noundef %address) #0 !dbg !838 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load i64, ptr %address.addr, align 8, !dbg !842
  %call = call i32 @set_clr_page_flags(ptr noundef @mapping_info, i64 noundef %0, i64 noundef 0, i64 noundef 0) #9, !dbg !843
  ret i32 %call, !dbg !844
}

; Function Attrs: noredzone nounwind
define hidden i32 @set_page_non_present(i64 noundef %address) #0 !dbg !845 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !847, metadata !DIExpression()), !dbg !848
  %0 = load i64, ptr %address.addr, align 8, !dbg !849
  %call = call i32 @set_clr_page_flags(ptr noundef @mapping_info, i64 noundef %0, i64 noundef 0, i64 noundef 1) #9, !dbg !850
  ret i32 %call, !dbg !851
}

; Function Attrs: noredzone nounwind
define hidden void @do_boot_page_fault(ptr noundef %regs, i64 noundef %error_code) #0 !dbg !852 {
entry:
  %regs.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  %address = alloca i64, align 8
  %end = alloca i64, align 8
  %ghcb_fault = alloca i8, align 1
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !911, metadata !DIExpression()), !dbg !916
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !912, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #8, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %address, metadata !913, metadata !DIExpression()), !dbg !919
  %call = call i64 @native_read_cr2() #9, !dbg !920
  store i64 %call, ptr %address, align 8, !dbg !919
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %end, metadata !914, metadata !DIExpression()), !dbg !922
  call void @llvm.lifetime.start.p0(i64 1, ptr %ghcb_fault) #8, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %ghcb_fault, metadata !915, metadata !DIExpression()), !dbg !924
  %0 = load i64, ptr %address, align 8, !dbg !925
  %call1 = call zeroext i1 @sev_es_check_ghcb_fault(i64 noundef %0) #9, !dbg !926
  %frombool = zext i1 %call1 to i8, !dbg !927
  store i8 %frombool, ptr %ghcb_fault, align 1, !dbg !927
  %1 = load i64, ptr %address, align 8, !dbg !928
  %and = and i64 %1, -2097152, !dbg !928
  store i64 %and, ptr %address, align 8, !dbg !928
  %2 = load i64, ptr %address, align 8, !dbg !929
  %add = add i64 %2, 2097152, !dbg !930
  store i64 %add, ptr %end, align 8, !dbg !931
  %3 = load i64, ptr %error_code.addr, align 8, !dbg !932
  %and2 = and i64 %3, 13, !dbg !934
  %tobool = icmp ne i64 %and2, 0, !dbg !934
  br i1 %tobool, label %if.then, label %if.else, !dbg !935

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %error_code.addr, align 8, !dbg !936
  %5 = load i64, ptr %address, align 8, !dbg !937
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !938
  %ip = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 16, !dbg !939
  %7 = load i64, ptr %ip, align 8, !dbg !939
  call void @do_pf_error(ptr noundef @.str.1, i64 noundef %4, i64 noundef %5, i64 noundef %7) #9, !dbg !940
  br label %if.end6, !dbg !940

if.else:                                          ; preds = %entry
  %8 = load i8, ptr %ghcb_fault, align 1, !dbg !941, !range !943, !noundef !944
  %tobool3 = trunc i8 %8 to i1, !dbg !941
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !945

if.then4:                                         ; preds = %if.else
  %9 = load i64, ptr %error_code.addr, align 8, !dbg !946
  %10 = load i64, ptr %address, align 8, !dbg !947
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !948
  %ip5 = getelementptr inbounds %struct.pt_regs, ptr %11, i32 0, i32 16, !dbg !949
  %12 = load i64, ptr %ip5, align 8, !dbg !949
  call void @do_pf_error(ptr noundef @.str.2, i64 noundef %9, i64 noundef %10, i64 noundef %12) #9, !dbg !950
  br label %if.end, !dbg !950

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %13 = load i64, ptr %address, align 8, !dbg !951
  %14 = load i64, ptr %end, align 8, !dbg !952
  call void @kernel_add_identity_map(i64 noundef %13, i64 noundef %14) #9, !dbg !953
  call void @llvm.lifetime.end.p0(i64 1, ptr %ghcb_fault) #8, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #8, !dbg !954
  ret void, !dbg !954
}

; Function Attrs: alwaysinline noredzone nounwind
define internal i64 @native_read_cr2() #6 !dbg !955 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %val, metadata !957, metadata !DIExpression()), !dbg !959
  %0 = call i64 asm sideeffect "mov %cr2,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #8, !dbg !960, !srcloc !961
  store i64 %0, ptr %val, align 8, !dbg !960
  %1 = load i64, ptr %val, align 8, !dbg !962
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !963
  ret i64 %1, !dbg !964
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @sev_es_check_ghcb_fault(i64 noundef %address) #3 !dbg !965 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !969, metadata !DIExpression()), !dbg !970
  ret i1 false, !dbg !971
}

; Function Attrs: noredzone nounwind
define internal void @do_pf_error(ptr noundef %msg, i64 noundef %error_code, i64 noundef %address, i64 noundef %ip) #0 !dbg !972 {
entry:
  %msg.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  %address.addr = alloca i64, align 8
  %ip.addr = alloca i64, align 8
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !978, metadata !DIExpression()), !dbg !982
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !979, metadata !DIExpression()), !dbg !983
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !980, metadata !DIExpression()), !dbg !984
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !981, metadata !DIExpression()), !dbg !985
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !986
  call void @__putstr(ptr noundef %0) #9, !dbg !986
  call void @__putstr(ptr noundef @.str.9) #9, !dbg !987
  %1 = load i64, ptr %error_code.addr, align 8, !dbg !988
  call void @__puthex(i64 noundef %1) #9, !dbg !988
  call void @__putstr(ptr noundef @.str.10) #9, !dbg !989
  %2 = load i64, ptr %address.addr, align 8, !dbg !990
  call void @__puthex(i64 noundef %2) #9, !dbg !990
  call void @__putstr(ptr noundef @.str.11) #9, !dbg !991
  %3 = load i64, ptr %ip.addr, align 8, !dbg !992
  %sub = sub i64 %3, ptrtoint (ptr @_head to i64), !dbg !992
  call void @__puthex(i64 noundef %sub) #9, !dbg !992
  call void @__putstr(ptr noundef @.str.5) #9, !dbg !993
  call void @error(ptr noundef @.str.12) #10, !dbg !994
  unreachable, !dbg !994
}

; Function Attrs: noredzone nounwind
define hidden void @do_boot_nmi_trap(ptr noundef %regs, i64 noundef %error_code) #0 !dbg !995 {
entry:
  %regs.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !997, metadata !DIExpression()), !dbg !999
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !998, metadata !DIExpression()), !dbg !1000
  ret void, !dbg !1001
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pgd_flags(i64 %pgd.coerce) #3 !dbg !1002 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1006, metadata !DIExpression()), !dbg !1007
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1008
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1008
  %call = call i64 @native_pgd_val(i64 %0) #9, !dbg !1008
  %and = and i64 %call, -4503599627366401, !dbg !1009
  ret i64 %and, !dbg !1010
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 !dbg !1011 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1013, metadata !DIExpression()), !dbg !1014
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1015
  %0 = load i64, ptr %pgd1, align 8, !dbg !1015
  %and = and i64 %0, -1, !dbg !1016
  ret i64 %and, !dbg !1017
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 !dbg !1018 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1022, metadata !DIExpression()), !dbg !1023
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1024
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1024
  %call = call i64 @native_pgd_val(i64 %0) #9, !dbg !1024
  %and = and i64 %call, 4503599627366400, !dbg !1024
  %1 = inttoptr i64 %and to ptr, !dbg !1024
  %2 = ptrtoint ptr %1 to i64, !dbg !1025
  ret i64 %2, !dbg !1026
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @p4d_index(i64 noundef %address) #3 !dbg !1027 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1031, metadata !DIExpression()), !dbg !1032
  %0 = load i64, ptr %address.addr, align 8, !dbg !1033
  %shr = lshr i64 %0, 39, !dbg !1034
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !1035
  %sub = sub i32 %1, 1, !dbg !1036
  %conv = zext i32 %sub to i64, !dbg !1037
  %and = and i64 %shr, %conv, !dbg !1038
  ret i64 %and, !dbg !1039
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @p4d_present(i64 %p4d.coerce) #3 !dbg !1040 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1044, metadata !DIExpression()), !dbg !1045
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1046
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1046
  %call = call i64 @p4d_flags(i64 %0) #9, !dbg !1046
  %and = and i64 %call, 1, !dbg !1047
  %conv = trunc i64 %and to i32, !dbg !1046
  ret i32 %conv, !dbg !1048
}

; Function Attrs: noredzone nounwind
define internal i32 @ident_pud_init(ptr noundef %info, ptr noundef %pud_page, i64 noundef %addr, i64 noundef %end) #0 !dbg !1049 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %pud_page.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %next = alloca i64, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %use_gbpage = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %pudval = alloca %struct.pud_t, align 8
  %tmp = alloca %struct.pud_t, align 8
  %agg.tmp = alloca %struct.pud_t, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1053, metadata !DIExpression()), !dbg !1067
  store ptr %pud_page, ptr %pud_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud_page.addr, metadata !1054, metadata !DIExpression()), !dbg !1068
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1055, metadata !DIExpression()), !dbg !1069
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1056, metadata !DIExpression()), !dbg !1070
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !1071
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1057, metadata !DIExpression()), !dbg !1072
  br label %for.cond, !dbg !1073

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %addr.addr, align 8, !dbg !1074
  %1 = load i64, ptr %end.addr, align 8, !dbg !1075
  %cmp = icmp ult i64 %0, %1, !dbg !1076
  br i1 %cmp, label %for.body, label %for.end, !dbg !1077

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #8, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1058, metadata !DIExpression()), !dbg !1079
  %2 = load ptr, ptr %pud_page.addr, align 8, !dbg !1080
  %3 = load i64, ptr %addr.addr, align 8, !dbg !1081
  %call = call i64 @pud_index(i64 noundef %3) #9, !dbg !1082
  %add.ptr = getelementptr inbounds %struct.pud_t, ptr %2, i64 %call, !dbg !1083
  store ptr %add.ptr, ptr %pud, align 8, !dbg !1079
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #8, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1062, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_gbpage) #8, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %use_gbpage, metadata !1063, metadata !DIExpression()), !dbg !1087
  %4 = load i64, ptr %addr.addr, align 8, !dbg !1088
  %and = and i64 %4, -1073741824, !dbg !1089
  %add = add i64 %and, 1073741824, !dbg !1090
  store i64 %add, ptr %next, align 8, !dbg !1091
  %5 = load i64, ptr %next, align 8, !dbg !1092
  %6 = load i64, ptr %end.addr, align 8, !dbg !1094
  %cmp1 = icmp ugt i64 %5, %6, !dbg !1095
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1096

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %end.addr, align 8, !dbg !1097
  store i64 %7, ptr %next, align 8, !dbg !1098
  br label %if.end, !dbg !1099

if.end:                                           ; preds = %if.then, %for.body
  %8 = load ptr, ptr %pud, align 8, !dbg !1100
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %8, i32 0, i32 0, !dbg !1102
  %9 = load i64, ptr %coerce.dive, align 8, !dbg !1102
  %call2 = call i32 @pud_large(i64 %9) #9, !dbg !1102
  %tobool = icmp ne i32 %call2, 0, !dbg !1102
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !1103

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1104

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1105
  %direct_gbpages = getelementptr inbounds %struct.x86_mapping_info, ptr %10, i32 0, i32 4, !dbg !1106
  %11 = load i8, ptr %direct_gbpages, align 8, !dbg !1106, !range !943, !noundef !944
  %tobool5 = trunc i8 %11 to i1, !dbg !1106
  %frombool = zext i1 %tobool5 to i8, !dbg !1107
  store i8 %frombool, ptr %use_gbpage, align 1, !dbg !1107
  %12 = load i64, ptr %addr.addr, align 8, !dbg !1108
  %and6 = and i64 %12, 1073741823, !dbg !1109
  %cmp7 = icmp eq i64 %and6, 0, !dbg !1110
  %conv = zext i1 %cmp7 to i32, !dbg !1110
  %13 = load i8, ptr %use_gbpage, align 1, !dbg !1111, !range !943, !noundef !944
  %tobool8 = trunc i8 %13 to i1, !dbg !1111
  %conv9 = zext i1 %tobool8 to i32, !dbg !1111
  %and10 = and i32 %conv9, %conv, !dbg !1111
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1111
  %frombool12 = zext i1 %tobool11 to i8, !dbg !1111
  store i8 %frombool12, ptr %use_gbpage, align 1, !dbg !1111
  %14 = load i64, ptr %next, align 8, !dbg !1112
  %and13 = and i64 %14, 1073741823, !dbg !1113
  %cmp14 = icmp eq i64 %and13, 0, !dbg !1114
  %conv15 = zext i1 %cmp14 to i32, !dbg !1114
  %15 = load i8, ptr %use_gbpage, align 1, !dbg !1115, !range !943, !noundef !944
  %tobool16 = trunc i8 %15 to i1, !dbg !1115
  %conv17 = zext i1 %tobool16 to i32, !dbg !1115
  %and18 = and i32 %conv17, %conv15, !dbg !1115
  %tobool19 = icmp ne i32 %and18, 0, !dbg !1115
  %frombool20 = zext i1 %tobool19 to i8, !dbg !1115
  store i8 %frombool20, ptr %use_gbpage, align 1, !dbg !1115
  %16 = load ptr, ptr %pud, align 8, !dbg !1116
  %coerce.dive21 = getelementptr inbounds %struct.pud_t, ptr %16, i32 0, i32 0, !dbg !1117
  %17 = load i64, ptr %coerce.dive21, align 8, !dbg !1117
  %call22 = call i32 @pud_present(i64 %17) #9, !dbg !1117
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1118
  %lnot = xor i1 %tobool23, true, !dbg !1118
  %lnot.ext = zext i1 %lnot to i32, !dbg !1118
  %18 = load i8, ptr %use_gbpage, align 1, !dbg !1119, !range !943, !noundef !944
  %tobool24 = trunc i8 %18 to i1, !dbg !1119
  %conv25 = zext i1 %tobool24 to i32, !dbg !1119
  %and26 = and i32 %conv25, %lnot.ext, !dbg !1119
  %tobool27 = icmp ne i32 %and26, 0, !dbg !1119
  %frombool28 = zext i1 %tobool27 to i8, !dbg !1119
  store i8 %frombool28, ptr %use_gbpage, align 1, !dbg !1119
  %19 = load i8, ptr %use_gbpage, align 1, !dbg !1120, !range !943, !noundef !944
  %tobool29 = trunc i8 %19 to i1, !dbg !1120
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !1121

if.then30:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pudval) #8, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %pudval, metadata !1064, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !1124
  %20 = load i64, ptr %addr.addr, align 8, !dbg !1124
  %21 = load ptr, ptr %info.addr, align 8, !dbg !1124
  %offset = getelementptr inbounds %struct.x86_mapping_info, ptr %21, i32 0, i32 3, !dbg !1124
  %22 = load i64, ptr %offset, align 8, !dbg !1124
  %sub = sub i64 %20, %22, !dbg !1124
  %23 = load ptr, ptr %info.addr, align 8, !dbg !1124
  %page_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %23, i32 0, i32 2, !dbg !1124
  %24 = load i64, ptr %page_flag, align 8, !dbg !1124
  %or = or i64 %sub, %24, !dbg !1124
  %call31 = call i64 @native_make_pud(i64 noundef %or) #9, !dbg !1124
  %coerce.dive32 = getelementptr inbounds %struct.pud_t, ptr %tmp, i32 0, i32 0, !dbg !1124
  store i64 %call31, ptr %coerce.dive32, align 8, !dbg !1124
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pudval, ptr align 8 %tmp, i64 8, i1 false), !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !1124
  %25 = load ptr, ptr %pud, align 8, !dbg !1125
  %coerce.dive33 = getelementptr inbounds %struct.pud_t, ptr %pudval, i32 0, i32 0, !dbg !1125
  %26 = load i64, ptr %coerce.dive33, align 8, !dbg !1125
  call void @native_set_pud(ptr noundef %25, i64 %26) #9, !dbg !1125
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pudval) #8, !dbg !1126
  br label %cleanup

if.end34:                                         ; preds = %if.end4
  %27 = load ptr, ptr %pud, align 8, !dbg !1127
  %coerce.dive35 = getelementptr inbounds %struct.pud_t, ptr %27, i32 0, i32 0, !dbg !1129
  %28 = load i64, ptr %coerce.dive35, align 8, !dbg !1129
  %call36 = call i32 @pud_present(i64 %28) #9, !dbg !1129
  %tobool37 = icmp ne i32 %call36, 0, !dbg !1129
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !1130

if.then38:                                        ; preds = %if.end34
  %29 = load ptr, ptr %pud, align 8, !dbg !1131
  %call39 = call ptr @pmd_offset(ptr noundef %29, i64 noundef 0) #9, !dbg !1133
  store ptr %call39, ptr %pmd, align 8, !dbg !1134
  %30 = load ptr, ptr %info.addr, align 8, !dbg !1135
  %31 = load ptr, ptr %pmd, align 8, !dbg !1136
  %32 = load i64, ptr %addr.addr, align 8, !dbg !1137
  %33 = load i64, ptr %next, align 8, !dbg !1138
  call void @ident_pmd_init(ptr noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33) #9, !dbg !1139
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

if.end40:                                         ; preds = %if.end34
  %34 = load ptr, ptr %info.addr, align 8, !dbg !1141
  %alloc_pgt_page = getelementptr inbounds %struct.x86_mapping_info, ptr %34, i32 0, i32 0, !dbg !1142
  %35 = load ptr, ptr %alloc_pgt_page, align 8, !dbg !1142
  %36 = load ptr, ptr %info.addr, align 8, !dbg !1143
  %context = getelementptr inbounds %struct.x86_mapping_info, ptr %36, i32 0, i32 1, !dbg !1144
  %37 = load ptr, ptr %context, align 8, !dbg !1144
  %call41 = call ptr %35(ptr noundef %37) #9, !dbg !1141
  store ptr %call41, ptr %pmd, align 8, !dbg !1145
  %38 = load ptr, ptr %pmd, align 8, !dbg !1146
  %tobool42 = icmp ne ptr %38, null, !dbg !1146
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !1148

if.then43:                                        ; preds = %if.end40
  store i32 -12, ptr %retval, align 4, !dbg !1149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1149

if.end44:                                         ; preds = %if.end40
  %39 = load ptr, ptr %info.addr, align 8, !dbg !1150
  %40 = load ptr, ptr %pmd, align 8, !dbg !1151
  %41 = load i64, ptr %addr.addr, align 8, !dbg !1152
  %42 = load i64, ptr %next, align 8, !dbg !1153
  call void @ident_pmd_init(ptr noundef %39, ptr noundef %40, i64 noundef %41, i64 noundef %42) #9, !dbg !1154
  %43 = load ptr, ptr %pud, align 8, !dbg !1155
  %44 = load ptr, ptr %pmd, align 8, !dbg !1155
  %45 = ptrtoint ptr %44 to i64, !dbg !1155
  %46 = load ptr, ptr %info.addr, align 8, !dbg !1155
  %kernpg_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %46, i32 0, i32 5, !dbg !1155
  %47 = load i64, ptr %kernpg_flag, align 8, !dbg !1155
  %or45 = or i64 %45, %47, !dbg !1155
  %call46 = call i64 @native_make_pud(i64 noundef %or45) #9, !dbg !1155
  %coerce.dive47 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1155
  store i64 %call46, ptr %coerce.dive47, align 8, !dbg !1155
  %coerce.dive48 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1155
  %48 = load i64, ptr %coerce.dive48, align 8, !dbg !1155
  call void @native_set_pud(ptr noundef %43, i64 %48) #9, !dbg !1155
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1156
  br label %cleanup, !dbg !1156

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then38, %if.then30, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_gbpage) #8, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #8, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #8, !dbg !1156
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1157

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %49 = load i64, ptr %next, align 8, !dbg !1158
  store i64 %49, ptr %addr.addr, align 8, !dbg !1159
  br label %for.cond, !dbg !1160, !llvm.loop !1161

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1163

cleanup51:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !1164
  %50 = load i32, ptr %retval, align 4, !dbg !1164
  ret i32 %50, !dbg !1164
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #3 !dbg !1165 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp11 = alloca %struct.pgd_t, align 8
  %tmp20 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !1169, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1170, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #8, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1171, metadata !DIExpression()), !dbg !1175
  %call = call zeroext i1 @pgtable_l5_enabled() #9, !dbg !1176
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !1178

lor.lhs.false:                                    ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !1179

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !1180

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !1182

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !1184

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1184

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1182

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !1186
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !1186
  br label %do.cond3, !dbg !1186

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1186

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !1182

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !1182

do.end6:                                          ; preds = %do.cond5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1188

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !1189
  %coerce.dive7 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1190
  %1 = load i64, ptr %coerce.dive7, align 8, !dbg !1190
  %call8 = call i64 @native_p4d_val(i64 %1) #9, !dbg !1190
  %call9 = call i64 @native_make_pgd(i64 noundef %call8) #9, !dbg !1189
  %coerce.dive10 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !1189
  store i64 %call9, ptr %coerce.dive10, align 8, !dbg !1189
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !1189
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !1189
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp11) #8, !dbg !1191
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !1192
  %coerce.dive12 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1191
  %3 = load i64, ptr %coerce.dive12, align 8, !dbg !1191
  %call13 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #9, !dbg !1191
  %coerce.dive14 = getelementptr inbounds %struct.pgd_t, ptr %tmp11, i32 0, i32 0, !dbg !1191
  store i64 %call13, ptr %coerce.dive14, align 8, !dbg !1191
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp11, i64 8, i1 false), !dbg !1191
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp11) #8, !dbg !1191
  br label %do.body15, !dbg !1193

do.body15:                                        ; preds = %if.end
  br label %do.body16, !dbg !1194

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !1196

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1196

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !1194

do.body19:                                        ; preds = %do.end18
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !1198
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp20) #8, !dbg !1198
  %coerce.dive21 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1198
  %5 = load i64, ptr %coerce.dive21, align 8, !dbg !1198
  %call22 = call i64 @native_pgd_val(i64 %5) #9, !dbg !1198
  %call23 = call i64 @native_make_p4d(i64 noundef %call22) #9, !dbg !1198
  %coerce.dive24 = getelementptr inbounds %struct.p4d_t, ptr %tmp20, i32 0, i32 0, !dbg !1198
  store volatile i64 %call23, ptr %coerce.dive24, align 8, !dbg !1198
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp20, i64 8, i1 true), !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp20) #8, !dbg !1198
  br label %do.cond25, !dbg !1198

do.cond25:                                        ; preds = %do.body19
  br label %do.end26, !dbg !1198

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !1194

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !1194

do.end28:                                         ; preds = %do.cond27
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1200
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %do.end28, %do.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #8, !dbg !1200
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1200

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_make_p4d(i64 noundef %val) #3 !dbg !1201 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1205, metadata !DIExpression()), !dbg !1206
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !1207
  %0 = load i64, ptr %val.addr, align 8, !dbg !1208
  store i64 %0, ptr %p4d, align 8, !dbg !1207
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !1209
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1209
  ret i64 %1, !dbg !1209
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @p4d_flags(i64 %p4d.coerce) #3 !dbg !1210 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1214, metadata !DIExpression()), !dbg !1215
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1216
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1216
  %call = call i64 @native_p4d_val(i64 %0) #9, !dbg !1216
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1217
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1217
  %call3 = call i64 @p4d_flags_mask(i64 %1) #9, !dbg !1217
  %and = and i64 %call, %call3, !dbg !1218
  ret i64 %and, !dbg !1219
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 !dbg !1220 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1222, metadata !DIExpression()), !dbg !1223
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1224
  %0 = load i64, ptr %p4d1, align 8, !dbg !1224
  ret i64 %0, !dbg !1225
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @p4d_flags_mask(i64 %p4d.coerce) #3 !dbg !1226 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1228, metadata !DIExpression()), !dbg !1229
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1230
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1230
  %call = call i64 @p4d_pfn_mask(i64 %0) #9, !dbg !1230
  %not = xor i64 %call, -1, !dbg !1231
  ret i64 %not, !dbg !1232
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #3 !dbg !1233 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1235, metadata !DIExpression()), !dbg !1236
  ret i64 4503599627366400, !dbg !1237
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pud_index(i64 noundef %address) #3 !dbg !1238 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1240, metadata !DIExpression()), !dbg !1241
  %0 = load i64, ptr %address.addr, align 8, !dbg !1242
  %shr = lshr i64 %0, 30, !dbg !1243
  %and = and i64 %shr, 511, !dbg !1244
  ret i64 %and, !dbg !1245
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @pud_large(i64 %pud.coerce) #3 !dbg !1246 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1250, metadata !DIExpression()), !dbg !1251
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1252
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1252
  %call = call i64 @native_pud_val(i64 %0) #9, !dbg !1252
  %and = and i64 %call, 129, !dbg !1253
  %cmp = icmp eq i64 %and, 129, !dbg !1254
  %conv = zext i1 %cmp to i32, !dbg !1254
  ret i32 %conv, !dbg !1255
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @pud_present(i64 %pud.coerce) #3 !dbg !1256 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1258, metadata !DIExpression()), !dbg !1259
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1260
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1260
  %call = call i64 @pud_flags(i64 %0) #9, !dbg !1260
  %and = and i64 %call, 1, !dbg !1261
  %conv = trunc i64 %and to i32, !dbg !1260
  ret i32 %conv, !dbg !1262
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_make_pud(i64 noundef %val) #3 !dbg !1263 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1267, metadata !DIExpression()), !dbg !1268
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !1269
  %0 = load i64, ptr %val.addr, align 8, !dbg !1270
  store i64 %0, ptr %pud, align 8, !dbg !1269
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !1271
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1271
  ret i64 %1, !dbg !1271
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #3 !dbg !1272 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1277, metadata !DIExpression()), !dbg !1279
  br label %do.body, !dbg !1280

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1281

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1283

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1281

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !1285
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !1285
  br label %do.end3, !dbg !1285

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1281

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1287
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 !dbg !1288 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !1292, metadata !DIExpression()), !dbg !1294
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1293, metadata !DIExpression()), !dbg !1295
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !1296
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !1297
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1297
  %call = call ptr @pud_pgtable(i64 %1) #9, !dbg !1297
  %2 = load i64, ptr %address.addr, align 8, !dbg !1298
  %call1 = call i64 @pmd_index(i64 noundef %2) #9, !dbg !1299
  %add.ptr = getelementptr inbounds %struct.pmd_t, ptr %call, i64 %call1, !dbg !1300
  ret ptr %add.ptr, !dbg !1301
}

; Function Attrs: noredzone nounwind
define internal void @ident_pmd_init(ptr noundef %info, ptr noundef %pmd_page, i64 noundef %addr, i64 noundef %end) #0 !dbg !1302 {
entry:
  %info.addr = alloca ptr, align 8
  %pmd_page.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %pmd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pmd_t, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1306, metadata !DIExpression()), !dbg !1314
  store ptr %pmd_page, ptr %pmd_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd_page.addr, metadata !1307, metadata !DIExpression()), !dbg !1315
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1308, metadata !DIExpression()), !dbg !1316
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1309, metadata !DIExpression()), !dbg !1317
  %0 = load i64, ptr %addr.addr, align 8, !dbg !1318
  %and = and i64 %0, -2097152, !dbg !1318
  store i64 %and, ptr %addr.addr, align 8, !dbg !1318
  br label %for.cond, !dbg !1319

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !1320
  %2 = load i64, ptr %end.addr, align 8, !dbg !1321
  %cmp = icmp ult i64 %1, %2, !dbg !1322
  br i1 %cmp, label %for.body, label %for.end, !dbg !1323

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #8, !dbg !1324
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1310, metadata !DIExpression()), !dbg !1325
  %3 = load ptr, ptr %pmd_page.addr, align 8, !dbg !1326
  %4 = load i64, ptr %addr.addr, align 8, !dbg !1327
  %call = call i64 @pmd_index(i64 noundef %4) #9, !dbg !1328
  %add.ptr = getelementptr inbounds %struct.pmd_t, ptr %3, i64 %call, !dbg !1329
  store ptr %add.ptr, ptr %pmd, align 8, !dbg !1325
  %5 = load ptr, ptr %pmd, align 8, !dbg !1330
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %5, i32 0, i32 0, !dbg !1332
  %6 = load i64, ptr %coerce.dive, align 8, !dbg !1332
  %call1 = call i32 @pmd_present(i64 %6) #9, !dbg !1332
  %tobool = icmp ne i32 %call1, 0, !dbg !1332
  br i1 %tobool, label %if.then, label %if.end, !dbg !1333

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1334

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %pmd, align 8, !dbg !1335
  %8 = load i64, ptr %addr.addr, align 8, !dbg !1335
  %9 = load ptr, ptr %info.addr, align 8, !dbg !1335
  %offset = getelementptr inbounds %struct.x86_mapping_info, ptr %9, i32 0, i32 3, !dbg !1335
  %10 = load i64, ptr %offset, align 8, !dbg !1335
  %sub = sub i64 %8, %10, !dbg !1335
  %11 = load ptr, ptr %info.addr, align 8, !dbg !1335
  %page_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %11, i32 0, i32 2, !dbg !1335
  %12 = load i64, ptr %page_flag, align 8, !dbg !1335
  %or = or i64 %sub, %12, !dbg !1335
  %call2 = call i64 @native_make_pmd(i64 noundef %or) #9, !dbg !1335
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1335
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !1335
  %coerce.dive4 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1335
  %13 = load i64, ptr %coerce.dive4, align 8, !dbg !1335
  call void @native_set_pmd(ptr noundef %7, i64 %13) #9, !dbg !1335
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1336
  br label %cleanup, !dbg !1336

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #8, !dbg !1336
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1337

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i64, ptr %addr.addr, align 8, !dbg !1338
  %add = add i64 %14, 2097152, !dbg !1338
  store i64 %add, ptr %addr.addr, align 8, !dbg !1338
  br label %for.cond, !dbg !1339, !llvm.loop !1340

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1342

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_pud_val(i64 %pud.coerce) #3 !dbg !1343 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1347, metadata !DIExpression()), !dbg !1348
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1349
  %0 = load i64, ptr %pud1, align 8, !dbg !1349
  ret i64 %0, !dbg !1350
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pud_flags(i64 %pud.coerce) #3 !dbg !1351 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1353, metadata !DIExpression()), !dbg !1354
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1355
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1355
  %call = call i64 @native_pud_val(i64 %0) #9, !dbg !1355
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1356
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1356
  %call3 = call i64 @pud_flags_mask(i64 %1) #9, !dbg !1356
  %and = and i64 %call, %call3, !dbg !1357
  ret i64 %and, !dbg !1358
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pud_flags_mask(i64 %pud.coerce) #3 !dbg !1359 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1361, metadata !DIExpression()), !dbg !1362
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1363
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1363
  %call = call i64 @pud_pfn_mask(i64 %0) #9, !dbg !1363
  %not = xor i64 %call, -1, !dbg !1364
  ret i64 %not, !dbg !1365
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 !dbg !1366 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1368, metadata !DIExpression()), !dbg !1369
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1370
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1370
  %call = call i64 @native_pud_val(i64 %0) #9, !dbg !1370
  %and = and i64 %call, 128, !dbg !1372
  %tobool = icmp ne i64 %and, 0, !dbg !1372
  br i1 %tobool, label %if.then, label %if.else, !dbg !1373

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !1374
  br label %return, !dbg !1374

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !1375
  br label %return, !dbg !1375

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !1376
  ret i64 %1, !dbg !1376
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 !dbg !1377 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1381, metadata !DIExpression()), !dbg !1382
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1383
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1383
  %call = call i64 @native_pud_val(i64 %0) #9, !dbg !1383
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1383
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1383
  %call3 = call i64 @pud_pfn_mask(i64 %1) #9, !dbg !1383
  %and = and i64 %call, %call3, !dbg !1383
  %2 = inttoptr i64 %and to ptr, !dbg !1383
  ret ptr %2, !dbg !1384
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pmd_index(i64 noundef %address) #3 !dbg !1385 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1387, metadata !DIExpression()), !dbg !1388
  %0 = load i64, ptr %address.addr, align 8, !dbg !1389
  %shr = lshr i64 %0, 21, !dbg !1390
  %and = and i64 %shr, 511, !dbg !1391
  ret i64 %and, !dbg !1392
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @pmd_present(i64 %pmd.coerce) #3 !dbg !1393 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1397, metadata !DIExpression()), !dbg !1398
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1399
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1399
  %call = call i64 @pmd_flags(i64 %0) #9, !dbg !1399
  %and = and i64 %call, 385, !dbg !1400
  %conv = trunc i64 %and to i32, !dbg !1399
  ret i32 %conv, !dbg !1401
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #3 !dbg !1402 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !1406, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1407, metadata !DIExpression()), !dbg !1409
  br label %do.body, !dbg !1410

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1411

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1413

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1411

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !1415
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !1415
  br label %do.end3, !dbg !1415

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1411

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1417
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_make_pmd(i64 noundef %val) #3 !dbg !1418 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !1424
  %0 = load i64, ptr %val.addr, align 8, !dbg !1425
  store i64 %0, ptr %pmd, align 8, !dbg !1424
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !1426
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1426
  ret i64 %1, !dbg !1426
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 !dbg !1427 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1431, metadata !DIExpression()), !dbg !1432
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1433
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1433
  %call = call i64 @native_pmd_val(i64 %0) #9, !dbg !1433
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1434
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1434
  %call3 = call i64 @pmd_flags_mask(i64 %1) #9, !dbg !1434
  %and = and i64 %call, %call3, !dbg !1435
  ret i64 %and, !dbg !1436
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 !dbg !1437 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1439, metadata !DIExpression()), !dbg !1440
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1441
  %0 = load i64, ptr %pmd1, align 8, !dbg !1441
  ret i64 %0, !dbg !1442
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 !dbg !1443 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1445, metadata !DIExpression()), !dbg !1446
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1447
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1447
  %call = call i64 @pmd_pfn_mask(i64 %0) #9, !dbg !1447
  %not = xor i64 %call, -1, !dbg !1448
  ret i64 %not, !dbg !1449
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 !dbg !1450 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1452, metadata !DIExpression()), !dbg !1453
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1454
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1454
  %call = call i64 @native_pmd_val(i64 %0) #9, !dbg !1454
  %and = and i64 %call, 128, !dbg !1456
  %tobool = icmp ne i64 %and, 0, !dbg !1456
  br i1 %tobool, label %if.then, label %if.else, !dbg !1457

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !1458
  br label %return, !dbg !1458

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !1459
  br label %return, !dbg !1459

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !1460
  ret i64 %1, !dbg !1460
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #3 !dbg !1461 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !1465, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !1469
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !1470
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1470
  ret i64 %0, !dbg !1470
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #3 !dbg !1471 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1475, metadata !DIExpression()), !dbg !1476
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1477
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1477
  %call = call i64 @native_p4d_val(i64 %0) #9, !dbg !1477
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1477
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1477
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #9, !dbg !1477
  %and = and i64 %call, %call3, !dbg !1477
  %2 = inttoptr i64 %and to ptr, !dbg !1477
  ret ptr %2, !dbg !1478
}

; Function Attrs: noredzone
declare !dbg !1479 hidden void @__putstr(ptr noundef) #5

; Function Attrs: noredzone
declare !dbg !1482 hidden void @__puthex(i64 noundef) #5

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__read_cr3() #3 !dbg !1483 {
entry:
  %call = call i64 @__native_read_cr3() #9, !dbg !1484
  ret i64 %call, !dbg !1485
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__native_read_cr3() #3 !dbg !1486 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1488, metadata !DIExpression()), !dbg !1490
  %0 = call i64 asm sideeffect "mov %cr3,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #8, !dbg !1491, !srcloc !1492
  store i64 %0, ptr %val, align 8, !dbg !1491
  %1 = load i64, ptr %val, align 8, !dbg !1493
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !1494
  ret i64 %1, !dbg !1495
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_write_cr3(i64 noundef %val) #3 !dbg !1496 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1498, metadata !DIExpression()), !dbg !1499
  %0 = load i64, ptr %val.addr, align 8, !dbg !1500
  call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0) #8, !dbg !1501, !srcloc !1502
  ret void, !dbg !1503
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @pmd_large(i64 %pte.coerce) #3 !dbg !1504 {
entry:
  %pte = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1506, metadata !DIExpression()), !dbg !1507
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0, !dbg !1508
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1508
  %call = call i64 @pmd_flags(i64 %0) #9, !dbg !1508
  %and = and i64 %call, 128, !dbg !1509
  %conv = trunc i64 %and to i32, !dbg !1508
  ret i32 %conv, !dbg !1510
}

; Function Attrs: noredzone nounwind
define internal ptr @split_large_pmd(ptr noundef %info, ptr noundef %pmdp, i64 noundef %__address) #0 !dbg !1511 {
entry:
  %retval = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %pmdp.addr = alloca ptr, align 8
  %__address.addr = alloca i64, align 8
  %page_flags = alloca i64, align 8
  %address = alloca i64, align 8
  %pte = alloca ptr, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pte_t, align 8
  %tmp = alloca %struct.pmd_t, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1515, metadata !DIExpression()), !dbg !1523
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !1516, metadata !DIExpression()), !dbg !1524
  store i64 %__address, ptr %__address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__address.addr, metadata !1517, metadata !DIExpression()), !dbg !1525
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_flags) #8, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %page_flags, metadata !1518, metadata !DIExpression()), !dbg !1527
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #8, !dbg !1528
  call void @llvm.dbg.declare(metadata ptr %address, metadata !1519, metadata !DIExpression()), !dbg !1529
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #8, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1520, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #8, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1521, metadata !DIExpression()), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !1534
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1522, metadata !DIExpression()), !dbg !1535
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1536
  %alloc_pgt_page = getelementptr inbounds %struct.x86_mapping_info, ptr %0, i32 0, i32 0, !dbg !1537
  %1 = load ptr, ptr %alloc_pgt_page, align 8, !dbg !1537
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1538
  %context = getelementptr inbounds %struct.x86_mapping_info, ptr %2, i32 0, i32 1, !dbg !1539
  %3 = load ptr, ptr %context, align 8, !dbg !1539
  %call = call ptr %1(ptr noundef %3) #9, !dbg !1536
  store ptr %call, ptr %pte, align 8, !dbg !1540
  %4 = load ptr, ptr %pte, align 8, !dbg !1541
  %tobool = icmp ne ptr %4, null, !dbg !1541
  br i1 %tobool, label %if.end, label %if.then, !dbg !1543

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1544

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %__address.addr, align 8, !dbg !1545
  %and = and i64 %5, -2097152, !dbg !1546
  store i64 %and, ptr %address, align 8, !dbg !1547
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1548
  %page_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %6, i32 0, i32 2, !dbg !1549
  %7 = load i64, ptr %page_flag, align 8, !dbg !1549
  %and1 = and i64 %7, -129, !dbg !1550
  store i64 %and1, ptr %page_flags, align 8, !dbg !1551
  store i32 0, ptr %i, align 4, !dbg !1552
  br label %for.cond, !dbg !1554

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !dbg !1555
  %cmp = icmp slt i32 %8, 512, !dbg !1557
  br i1 %cmp, label %for.body, label %for.end, !dbg !1558

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pte, align 8, !dbg !1559
  %10 = load i32, ptr %i, align 4, !dbg !1559
  %idxprom = sext i32 %10 to i64, !dbg !1559
  %arrayidx = getelementptr inbounds %struct.pte_t, ptr %9, i64 %idxprom, !dbg !1559
  %11 = load i64, ptr %address, align 8, !dbg !1559
  %12 = load i64, ptr %page_flags, align 8, !dbg !1559
  %or = or i64 %11, %12, !dbg !1559
  %call2 = call i64 @native_make_pte(i64 noundef %or) #9, !dbg !1559
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1559
  store i64 %call2, ptr %coerce.dive, align 8, !dbg !1559
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1559
  %13 = load i64, ptr %coerce.dive3, align 8, !dbg !1559
  call void @native_set_pte(ptr noundef %arrayidx, i64 %13) #9, !dbg !1559
  %14 = load i64, ptr %address, align 8, !dbg !1561
  %add = add i64 %14, 4096, !dbg !1561
  store i64 %add, ptr %address, align 8, !dbg !1561
  br label %for.inc, !dbg !1562

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !1563
  %inc = add nsw i32 %15, 1, !dbg !1563
  store i32 %inc, ptr %i, align 4, !dbg !1563
  br label %for.cond, !dbg !1564, !llvm.loop !1565

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !1567
  %16 = load ptr, ptr %pte, align 8, !dbg !1567
  %17 = ptrtoint ptr %16 to i64, !dbg !1567
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1567
  %kernpg_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %18, i32 0, i32 5, !dbg !1567
  %19 = load i64, ptr %kernpg_flag, align 8, !dbg !1567
  %or4 = or i64 %17, %19, !dbg !1567
  %call5 = call i64 @native_make_pmd(i64 noundef %or4) #9, !dbg !1567
  %coerce.dive6 = getelementptr inbounds %struct.pmd_t, ptr %tmp, i32 0, i32 0, !dbg !1567
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !1567
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmd, ptr align 8 %tmp, i64 8, i1 false), !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !1567
  %20 = load ptr, ptr %pmdp.addr, align 8, !dbg !1568
  %coerce.dive7 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1568
  %21 = load i64, ptr %coerce.dive7, align 8, !dbg !1568
  call void @native_set_pmd(ptr noundef %20, i64 %21) #9, !dbg !1568
  %22 = load i64, ptr @top_level_pgt, align 8, !dbg !1569
  call void @write_cr3(i64 noundef %22) #9, !dbg !1570
  %23 = load ptr, ptr %pte, align 8, !dbg !1571
  %24 = load i64, ptr %__address.addr, align 8, !dbg !1572
  %call8 = call i64 @pte_index(i64 noundef %24) #9, !dbg !1573
  %add.ptr = getelementptr inbounds %struct.pte_t, ptr %23, i64 %call8, !dbg !1574
  store ptr %add.ptr, ptr %retval, align 8, !dbg !1575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1575

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #8, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #8, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #8, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_flags) #8, !dbg !1576
  %25 = load ptr, ptr %retval, align 8, !dbg !1576
  ret ptr %25, !dbg !1576
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 !dbg !1577 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !1581, metadata !DIExpression()), !dbg !1583
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1582, metadata !DIExpression()), !dbg !1584
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !1585
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !1586
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1586
  %call = call i64 @pmd_page_vaddr(i64 %1) #9, !dbg !1586
  %2 = inttoptr i64 %call to ptr, !dbg !1587
  %3 = load i64, ptr %address.addr, align 8, !dbg !1588
  %call1 = call i64 @pte_index(i64 noundef %3) #9, !dbg !1589
  %add.ptr = getelementptr inbounds %struct.pte_t, ptr %2, i64 %call1, !dbg !1590
  ret ptr %add.ptr, !dbg !1591
}

; Function Attrs: noredzone nounwind
define internal void @clflush_page(i64 noundef %address) #0 !dbg !1592 {
entry:
  %address.addr = alloca i64, align 8
  %flush_size = alloca i32, align 4
  %cl = alloca ptr, align 8
  %start = alloca ptr, align 8
  %end = alloca ptr, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1594, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 4, ptr %flush_size) #8, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %flush_size, metadata !1595, metadata !DIExpression()), !dbg !1601
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #8, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %cl, metadata !1596, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #8, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1597, metadata !DIExpression()), !dbg !1604
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1598, metadata !DIExpression()), !dbg !1605
  store i32 64, ptr %flush_size, align 4, !dbg !1606
  %0 = load i64, ptr %address.addr, align 8, !dbg !1607
  %and = and i64 %0, -4096, !dbg !1608
  %1 = inttoptr i64 %and to ptr, !dbg !1609
  store ptr %1, ptr %start, align 8, !dbg !1610
  %2 = load ptr, ptr %start, align 8, !dbg !1611
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 4096, !dbg !1612
  store ptr %add.ptr, ptr %end, align 8, !dbg !1613
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1614, !srcloc !1615
  %3 = load ptr, ptr %start, align 8, !dbg !1616
  store ptr %3, ptr %cl, align 8, !dbg !1618
  br label %for.cond, !dbg !1619

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %cl, align 8, !dbg !1620
  %5 = load ptr, ptr %end, align 8, !dbg !1622
  %cmp = icmp ne ptr %4, %5, !dbg !1623
  br i1 %cmp, label %for.body, label %for.end, !dbg !1624

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cl, align 8, !dbg !1625
  call void @clflush(ptr noundef %6) #9, !dbg !1626
  br label %for.inc, !dbg !1626

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %flush_size, align 4, !dbg !1627
  %8 = load ptr, ptr %cl, align 8, !dbg !1628
  %idx.ext = zext i32 %7 to i64, !dbg !1628
  %add.ptr1 = getelementptr inbounds i8, ptr %8, i64 %idx.ext, !dbg !1628
  store ptr %add.ptr1, ptr %cl, align 8, !dbg !1628
  br label %for.cond, !dbg !1629, !llvm.loop !1630

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 4, ptr %flush_size) #8, !dbg !1632
  ret void, !dbg !1632
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @snp_set_page_shared(i64 noundef %paddr) #3 !dbg !1633 {
entry:
  %paddr.addr = alloca i64, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !1635, metadata !DIExpression()), !dbg !1636
  ret void, !dbg !1637
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pte_set_flags(i64 %pte.coerce, i64 noundef %set) #3 !dbg !1638 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %set.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1642, metadata !DIExpression()), !dbg !1645
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1643, metadata !DIExpression()), !dbg !1646
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #8, !dbg !1647
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1644, metadata !DIExpression()), !dbg !1648
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !1649
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1649
  %call = call i64 @native_pte_val(i64 %0) #9, !dbg !1649
  store i64 %call, ptr %v, align 8, !dbg !1648
  %1 = load i64, ptr %v, align 8, !dbg !1650
  %2 = load i64, ptr %set.addr, align 8, !dbg !1651
  %or = or i64 %1, %2, !dbg !1652
  %call2 = call i64 @native_make_pte(i64 noundef %or) #9, !dbg !1653
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1653
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !1653
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #8, !dbg !1654
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1654
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !1654
  ret i64 %3, !dbg !1654
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pte_clear_flags(i64 %pte.coerce, i64 noundef %clear) #3 !dbg !1655 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %clear.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1657, metadata !DIExpression()), !dbg !1660
  store i64 %clear, ptr %clear.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !1658, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #8, !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1659, metadata !DIExpression()), !dbg !1663
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !1664
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1664
  %call = call i64 @native_pte_val(i64 %0) #9, !dbg !1664
  store i64 %call, ptr %v, align 8, !dbg !1663
  %1 = load i64, ptr %v, align 8, !dbg !1665
  %2 = load i64, ptr %clear.addr, align 8, !dbg !1666
  %not = xor i64 %2, -1, !dbg !1667
  %and = and i64 %1, %not, !dbg !1668
  %call2 = call i64 @native_make_pte(i64 noundef %and) #9, !dbg !1669
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1669
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #8, !dbg !1670
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1670
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !1670
  ret i64 %3, !dbg !1670
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_set_pte(ptr noundef %ptep, i64 %pte.coerce) #3 !dbg !1671 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !1675, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1676, metadata !DIExpression()), !dbg !1678
  br label %do.body, !dbg !1679

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1680

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1682

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1680

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !1684
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pte, i64 8, i1 true), !dbg !1684
  br label %do.end3, !dbg !1684

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1680

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1686
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @snp_set_page_private(i64 noundef %paddr) #3 !dbg !1687 {
entry:
  %paddr.addr = alloca i64, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !1689, metadata !DIExpression()), !dbg !1690
  ret void, !dbg !1691
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_make_pte(i64 noundef %val) #3 !dbg !1692 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1696, metadata !DIExpression()), !dbg !1697
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1698
  %0 = load i64, ptr %val.addr, align 8, !dbg !1699
  store i64 %0, ptr %pte, align 8, !dbg !1698
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1700
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1700
  ret i64 %1, !dbg !1700
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pte_index(i64 noundef %address) #3 !dbg !1701 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1703, metadata !DIExpression()), !dbg !1704
  %0 = load i64, ptr %address.addr, align 8, !dbg !1705
  %shr = lshr i64 %0, 12, !dbg !1706
  %and = and i64 %shr, 511, !dbg !1707
  ret i64 %and, !dbg !1708
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 !dbg !1709 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1713, metadata !DIExpression()), !dbg !1714
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1715
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1715
  %call = call i64 @native_pmd_val(i64 %0) #9, !dbg !1715
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1715
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1715
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #9, !dbg !1715
  %and = and i64 %call, %call3, !dbg !1715
  %2 = inttoptr i64 %and to ptr, !dbg !1715
  %3 = ptrtoint ptr %2 to i64, !dbg !1716
  ret i64 %3, !dbg !1717
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @clflush(ptr noundef %__p) #6 !dbg !1718 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__p.addr, metadata !1724, metadata !DIExpression()), !dbg !1725
  %0 = load ptr, ptr %__p.addr, align 8, !dbg !1726
  call void asm sideeffect "clflush $0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, ptr elementtype(i8) %0) #8, !dbg !1727, !srcloc !1728
  ret void, !dbg !1729
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_pte_val(i64 %pte.coerce) #3 !dbg !1730 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1734, metadata !DIExpression()), !dbg !1735
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !1736
  %0 = load i64, ptr %pte1, align 8, !dbg !1736
  ret i64 %0, !dbg !1737
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone "no-builtins" }
attributes #10 = { nobuiltin noredzone noreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__default_kernel_pte_mask", scope: !2, file: !3, line: 35, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.ident_map_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/ident_map_64\22 -D KBUILD_BASENAME=\22ident_map_64\22 -D KBUILD_MODNAME=\22ident_map_64\22 -D __KBUILD_MODNAME=kmod_ident_map_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/ident_map_64.ll arch/x86/boot/compressed/ident_map_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !102, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/ident_map_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ed7be59626324fef02493e0aadeccb5")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_pf_error_code", file: !6, line: 17, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/trap_pf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b79fe506a663fa48e915f7ae5e65673a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "X86_PF_PROT", value: 1)
!10 = !DIEnumerator(name: "X86_PF_WRITE", value: 2)
!11 = !DIEnumerator(name: "X86_PF_USER", value: 4)
!12 = !DIEnumerator(name: "X86_PF_RSVD", value: 8)
!13 = !DIEnumerator(name: "X86_PF_INSTR", value: 16)
!14 = !DIEnumerator(name: "X86_PF_PK", value: 32)
!15 = !DIEnumerator(name: "X86_PF_SHSTK", value: 64)
!16 = !DIEnumerator(name: "X86_PF_SGX", value: 32768)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !26, !25, !33, !39, !56, !57, !61, !62, !68, !74, !76, !78, !80, !82, !89, !90, !91, !96, !98, !100}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !24, line: 14, baseType: !25)
!24 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !28, line: 346, baseType: !29)
!28 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 346, size: 64, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !29, file: !28, line: 346, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !24, line: 17, baseType: !25)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !28, line: 299, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 299, size: 64, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !35, file: !28, line: 299, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !24, line: 18, baseType: !25)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !41, line: 53, size: 128, elements: !42)
!41 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!42 = !{!43, !47, !49, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !41, line: 54, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !41, line: 55, baseType: !48, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !7)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !41, line: 56, baseType: !48, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, file: !41, line: 57, baseType: !51, offset: 128)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !54)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: -1)
!56 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !58, line: 159, baseType: !59)
!58 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !60, line: 23, baseType: !44)
!60 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !28, line: 372, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 372, size: 64, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !64, file: !28, line: 372, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !24, line: 16, baseType: !25)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !24, line: 22, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 22, size: 64, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !70, file: !24, line: 22, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !24, line: 15, baseType: !25)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pgt_data", file: !3, line: 38, size: 192, elements: !84)
!84 = !{!85, !87, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pgt_buf", scope: !83, file: !3, line: 39, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pgt_buf_size", scope: !83, file: !3, line: 40, baseType: !25, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pgt_buf_offset", scope: !83, file: !3, line: 41, baseType: !25, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !24, line: 21, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 21, size: 64, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !93, file: !24, line: 21, baseType: !23, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!102 = !{!0, !103, !105, !110, !115, !120, !122, !124, !140, !145, !150, !155, !160, !165, !170, !175, !180, !185}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "physical_mask", scope: !2, file: !3, line: 82, type: !57, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 344, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 43)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 184, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 23)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 200, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 25)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "pgt_data", scope: !2, file: !3, line: 77, type: !83, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "top_level_pgt", scope: !2, file: !3, line: 80, type: !25, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "mapping_info", scope: !2, file: !3, line: 88, type: !126, isLocal: true, isDefinition: true)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_mapping_info", file: !127, line: 7, size: 384, elements: !128)
!127 = !DIFile(filename: "./arch/x86/include/asm/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "048126f7712986985e39e526eec9923f")
!128 = !{!129, !133, !134, !135, !136, !139}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pgt_page", scope: !126, file: !127, line: 8, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!61, !61}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !126, file: !127, line: 9, baseType: !61, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "page_flag", scope: !126, file: !127, line: 10, baseType: !25, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !126, file: !127, line: 11, baseType: !25, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "direct_gbpages", scope: !126, file: !127, line: 12, baseType: !137, size: 8, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !58, line: 35, baseType: !138)
!138 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "kernpg_flag", scope: !126, file: !127, line: 13, baseType: !25, size: 64, offset: 320)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 488, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 61)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 208, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 26)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 24)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 512, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 64)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 240, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 30)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 350, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 112, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 14)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 72, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 9)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 216, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 27)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 88, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 11)
!190 = !{i32 7, !"Dwarf Version", i32 5}
!191 = !{i32 2, !"Debug Info Version", i32 3}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 8, !"PIC Level", i32 2}
!194 = !{i32 7, !"PIE Level", i32 2}
!195 = !{i32 1, !"Code Model", i32 1}
!196 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!197 = distinct !DISubprogram(name: "kernel_ident_mapping_init", scope: !198, file: !198, line: 110, type: !199, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!198 = !DIFile(filename: "arch/x86/boot/compressed/../../mm/ident_map.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bf766644098cb9b643fbb841e0247b6b")
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !202, !33, !25, !25}
!201 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !216, !217}
!204 = !DILocalVariable(name: "info", arg: 1, scope: !197, file: !198, line: 110, type: !202)
!205 = !DILocalVariable(name: "pgd_page", arg: 2, scope: !197, file: !198, line: 110, type: !33)
!206 = !DILocalVariable(name: "pstart", arg: 3, scope: !197, file: !198, line: 111, type: !25)
!207 = !DILocalVariable(name: "pend", arg: 4, scope: !197, file: !198, line: 111, type: !25)
!208 = !DILocalVariable(name: "addr", scope: !197, file: !198, line: 113, type: !25)
!209 = !DILocalVariable(name: "end", scope: !197, file: !198, line: 114, type: !25)
!210 = !DILocalVariable(name: "next", scope: !197, file: !198, line: 115, type: !25)
!211 = !DILocalVariable(name: "result", scope: !197, file: !198, line: 116, type: !201)
!212 = !DILocalVariable(name: "pgd", scope: !213, file: !198, line: 126, type: !33)
!213 = distinct !DILexicalBlock(scope: !214, file: !198, line: 125, column: 34)
!214 = distinct !DILexicalBlock(scope: !215, file: !198, line: 125, column: 2)
!215 = distinct !DILexicalBlock(scope: !197, file: !198, line: 125, column: 2)
!216 = !DILocalVariable(name: "p4d", scope: !213, file: !198, line: 127, type: !26)
!217 = !DILocalVariable(name: "pud", scope: !218, file: !198, line: 154, type: !62)
!218 = distinct !DILexicalBlock(scope: !219, file: !198, line: 149, column: 10)
!219 = distinct !DILexicalBlock(scope: !213, file: !198, line: 147, column: 7)
!220 = !DILocation(line: 110, column: 56, scope: !197)
!221 = !DILocation(line: 110, column: 69, scope: !197)
!222 = !DILocation(line: 111, column: 24, scope: !197)
!223 = !DILocation(line: 111, column: 46, scope: !197)
!224 = !DILocation(line: 113, column: 2, scope: !197)
!225 = !DILocation(line: 113, column: 16, scope: !197)
!226 = !DILocation(line: 113, column: 23, scope: !197)
!227 = !DILocation(line: 113, column: 32, scope: !197)
!228 = !DILocation(line: 113, column: 38, scope: !197)
!229 = !DILocation(line: 113, column: 30, scope: !197)
!230 = !DILocation(line: 114, column: 2, scope: !197)
!231 = !DILocation(line: 114, column: 16, scope: !197)
!232 = !DILocation(line: 114, column: 22, scope: !197)
!233 = !DILocation(line: 114, column: 29, scope: !197)
!234 = !DILocation(line: 114, column: 35, scope: !197)
!235 = !DILocation(line: 114, column: 27, scope: !197)
!236 = !DILocation(line: 115, column: 2, scope: !197)
!237 = !DILocation(line: 115, column: 16, scope: !197)
!238 = !DILocation(line: 116, column: 2, scope: !197)
!239 = !DILocation(line: 116, column: 6, scope: !197)
!240 = !DILocation(line: 119, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !197, file: !198, line: 119, column: 6)
!242 = !DILocation(line: 119, column: 13, scope: !241)
!243 = !DILocation(line: 119, column: 6, scope: !197)
!244 = !DILocation(line: 120, column: 3, scope: !241)
!245 = !DILocation(line: 120, column: 9, scope: !241)
!246 = !DILocation(line: 120, column: 21, scope: !241)
!247 = !DILocation(line: 123, column: 23, scope: !197)
!248 = !DILocation(line: 123, column: 2, scope: !197)
!249 = !DILocation(line: 123, column: 8, scope: !197)
!250 = !DILocation(line: 123, column: 20, scope: !197)
!251 = !DILocation(line: 125, column: 2, scope: !197)
!252 = !DILocation(line: 125, column: 9, scope: !214)
!253 = !DILocation(line: 125, column: 16, scope: !214)
!254 = !DILocation(line: 125, column: 14, scope: !214)
!255 = !DILocation(line: 125, column: 2, scope: !215)
!256 = !DILocation(line: 126, column: 3, scope: !213)
!257 = !DILocation(line: 126, column: 10, scope: !213)
!258 = !DILocation(line: 126, column: 16, scope: !213)
!259 = !DILocation(line: 126, column: 27, scope: !213)
!260 = !DILocation(line: 126, column: 25, scope: !213)
!261 = !DILocation(line: 127, column: 3, scope: !213)
!262 = !DILocation(line: 127, column: 10, scope: !213)
!263 = !DILocation(line: 129, column: 11, scope: !213)
!264 = !DILocation(line: 129, column: 18, scope: !213)
!265 = !DILocation(line: 129, column: 16, scope: !213)
!266 = !DILocation(line: 129, column: 32, scope: !213)
!267 = !DILocation(line: 129, column: 30, scope: !213)
!268 = !DILocation(line: 129, column: 8, scope: !213)
!269 = !DILocation(line: 130, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !213, file: !198, line: 130, column: 7)
!271 = !DILocation(line: 130, column: 14, scope: !270)
!272 = !DILocation(line: 130, column: 12, scope: !270)
!273 = !DILocation(line: 130, column: 7, scope: !213)
!274 = !DILocation(line: 131, column: 11, scope: !270)
!275 = !DILocation(line: 131, column: 9, scope: !270)
!276 = !DILocation(line: 131, column: 4, scope: !270)
!277 = !DILocation(line: 133, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !213, file: !198, line: 133, column: 7)
!279 = !DILocation(line: 133, column: 7, scope: !278)
!280 = !DILocation(line: 133, column: 7, scope: !213)
!281 = !DILocation(line: 134, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !198, line: 133, column: 26)
!283 = !DILocation(line: 134, column: 10, scope: !282)
!284 = !DILocation(line: 134, column: 8, scope: !282)
!285 = !DILocation(line: 135, column: 28, scope: !282)
!286 = !DILocation(line: 135, column: 34, scope: !282)
!287 = !DILocation(line: 135, column: 39, scope: !282)
!288 = !DILocation(line: 135, column: 45, scope: !282)
!289 = !DILocation(line: 135, column: 13, scope: !282)
!290 = !DILocation(line: 135, column: 11, scope: !282)
!291 = !DILocation(line: 136, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !198, line: 136, column: 8)
!293 = !DILocation(line: 136, column: 8, scope: !282)
!294 = !DILocation(line: 137, column: 12, scope: !292)
!295 = !DILocation(line: 137, column: 5, scope: !292)
!296 = !DILocation(line: 138, column: 4, scope: !282)
!297 = !DILocation(line: 141, column: 18, scope: !213)
!298 = !DILocation(line: 141, column: 24, scope: !213)
!299 = !DILocation(line: 141, column: 39, scope: !213)
!300 = !DILocation(line: 141, column: 45, scope: !213)
!301 = !DILocation(line: 141, column: 7, scope: !213)
!302 = !DILocation(line: 142, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !213, file: !198, line: 142, column: 7)
!304 = !DILocation(line: 142, column: 7, scope: !213)
!305 = !DILocation(line: 143, column: 4, scope: !303)
!306 = !DILocation(line: 144, column: 27, scope: !213)
!307 = !DILocation(line: 144, column: 33, scope: !213)
!308 = !DILocation(line: 144, column: 38, scope: !213)
!309 = !DILocation(line: 144, column: 44, scope: !213)
!310 = !DILocation(line: 144, column: 12, scope: !213)
!311 = !DILocation(line: 144, column: 10, scope: !213)
!312 = !DILocation(line: 145, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !213, file: !198, line: 145, column: 7)
!314 = !DILocation(line: 145, column: 7, scope: !213)
!315 = !DILocation(line: 146, column: 11, scope: !313)
!316 = !DILocation(line: 146, column: 4, scope: !313)
!317 = !DILocation(line: 147, column: 7, scope: !219)
!318 = !DILocation(line: 147, column: 7, scope: !213)
!319 = !DILocation(line: 148, column: 4, scope: !320)
!320 = distinct !DILexicalBlock(scope: !219, file: !198, line: 147, column: 29)
!321 = !DILocation(line: 149, column: 3, scope: !320)
!322 = !DILocation(line: 154, column: 4, scope: !218)
!323 = !DILocation(line: 154, column: 11, scope: !218)
!324 = !DILocation(line: 154, column: 28, scope: !218)
!325 = !DILocation(line: 154, column: 17, scope: !218)
!326 = !DILocation(line: 155, column: 4, scope: !218)
!327 = !DILocation(line: 156, column: 3, scope: !219)
!328 = !DILocation(line: 157, column: 2, scope: !214)
!329 = !DILocation(line: 157, column: 2, scope: !213)
!330 = !DILocation(line: 125, column: 28, scope: !214)
!331 = !DILocation(line: 125, column: 26, scope: !214)
!332 = !DILocation(line: 125, column: 2, scope: !214)
!333 = distinct !{!333, !255, !334, !335, !336}
!334 = !DILocation(line: 157, column: 2, scope: !215)
!335 = !{!"llvm.loop.mustprogress"}
!336 = !{!"llvm.loop.unroll.disable"}
!337 = !DILocation(line: 159, column: 2, scope: !197)
!338 = !DILocation(line: 160, column: 1, scope: !197)
!339 = distinct !DISubprogram(name: "pgd_present", scope: !340, file: !340, line: 1130, type: !341, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!340 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!341 = !DISubroutineType(types: !342)
!342 = !{!201, !34}
!343 = !{!344}
!344 = !DILocalVariable(name: "pgd", arg: 1, scope: !339, file: !340, line: 1130, type: !34)
!345 = !DILocation(line: 1130, column: 37, scope: !339)
!346 = !DILocation(line: 1132, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !340, line: 1132, column: 6)
!348 = !DILocation(line: 1132, column: 6, scope: !339)
!349 = !DILocation(line: 1133, column: 3, scope: !347)
!350 = !DILocation(line: 1134, column: 9, scope: !339)
!351 = !DILocation(line: 1134, column: 24, scope: !339)
!352 = !DILocation(line: 1134, column: 2, scope: !339)
!353 = !DILocation(line: 1135, column: 1, scope: !339)
!354 = distinct !DISubprogram(name: "p4d_offset", scope: !340, file: !340, line: 1149, type: !355, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!26, !33, !25}
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "pgd", arg: 1, scope: !354, file: !340, line: 1149, type: !33)
!359 = !DILocalVariable(name: "address", arg: 2, scope: !354, file: !340, line: 1149, type: !25)
!360 = !DILocation(line: 1149, column: 40, scope: !354)
!361 = !DILocation(line: 1149, column: 59, scope: !354)
!362 = !DILocation(line: 1151, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !354, file: !340, line: 1151, column: 6)
!364 = !DILocation(line: 1151, column: 6, scope: !354)
!365 = !DILocation(line: 1152, column: 19, scope: !363)
!366 = !DILocation(line: 1152, column: 3, scope: !363)
!367 = !DILocation(line: 1153, column: 34, scope: !354)
!368 = !DILocation(line: 1153, column: 18, scope: !354)
!369 = !DILocation(line: 1153, column: 9, scope: !354)
!370 = !DILocation(line: 1153, column: 51, scope: !354)
!371 = !DILocation(line: 1153, column: 41, scope: !354)
!372 = !DILocation(line: 1153, column: 39, scope: !354)
!373 = !DILocation(line: 1153, column: 2, scope: !354)
!374 = !DILocation(line: 1154, column: 1, scope: !354)
!375 = distinct !DISubprogram(name: "ident_p4d_init", scope: !198, file: !198, line: 74, type: !376, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!201, !202, !26, !25, !25}
!378 = !{!379, !380, !381, !382, !383, !384, !385, !389}
!379 = !DILocalVariable(name: "info", arg: 1, scope: !375, file: !198, line: 74, type: !202)
!380 = !DILocalVariable(name: "p4d_page", arg: 2, scope: !375, file: !198, line: 74, type: !26)
!381 = !DILocalVariable(name: "addr", arg: 3, scope: !375, file: !198, line: 75, type: !25)
!382 = !DILocalVariable(name: "end", arg: 4, scope: !375, file: !198, line: 75, type: !25)
!383 = !DILocalVariable(name: "next", scope: !375, file: !198, line: 77, type: !25)
!384 = !DILocalVariable(name: "result", scope: !375, file: !198, line: 78, type: !201)
!385 = !DILocalVariable(name: "p4d", scope: !386, file: !198, line: 81, type: !26)
!386 = distinct !DILexicalBlock(scope: !387, file: !198, line: 80, column: 34)
!387 = distinct !DILexicalBlock(scope: !388, file: !198, line: 80, column: 2)
!388 = distinct !DILexicalBlock(scope: !375, file: !198, line: 80, column: 2)
!389 = !DILocalVariable(name: "pud", scope: !386, file: !198, line: 82, type: !62)
!390 = !DILocation(line: 74, column: 52, scope: !375)
!391 = !DILocation(line: 74, column: 65, scope: !375)
!392 = !DILocation(line: 75, column: 20, scope: !375)
!393 = !DILocation(line: 75, column: 40, scope: !375)
!394 = !DILocation(line: 77, column: 2, scope: !375)
!395 = !DILocation(line: 77, column: 16, scope: !375)
!396 = !DILocation(line: 78, column: 2, scope: !375)
!397 = !DILocation(line: 78, column: 6, scope: !375)
!398 = !DILocation(line: 80, column: 2, scope: !375)
!399 = !DILocation(line: 80, column: 9, scope: !387)
!400 = !DILocation(line: 80, column: 16, scope: !387)
!401 = !DILocation(line: 80, column: 14, scope: !387)
!402 = !DILocation(line: 80, column: 2, scope: !388)
!403 = !DILocation(line: 81, column: 3, scope: !386)
!404 = !DILocation(line: 81, column: 10, scope: !386)
!405 = !DILocation(line: 81, column: 16, scope: !386)
!406 = !DILocation(line: 81, column: 37, scope: !386)
!407 = !DILocation(line: 81, column: 27, scope: !386)
!408 = !DILocation(line: 81, column: 25, scope: !386)
!409 = !DILocation(line: 82, column: 3, scope: !386)
!410 = !DILocation(line: 82, column: 10, scope: !386)
!411 = !DILocation(line: 84, column: 11, scope: !386)
!412 = !DILocation(line: 84, column: 16, scope: !386)
!413 = !DILocation(line: 84, column: 28, scope: !386)
!414 = !DILocation(line: 84, column: 8, scope: !386)
!415 = !DILocation(line: 85, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !386, file: !198, line: 85, column: 7)
!417 = !DILocation(line: 85, column: 14, scope: !416)
!418 = !DILocation(line: 85, column: 12, scope: !416)
!419 = !DILocation(line: 85, column: 7, scope: !386)
!420 = !DILocation(line: 86, column: 11, scope: !416)
!421 = !DILocation(line: 86, column: 9, scope: !416)
!422 = !DILocation(line: 86, column: 4, scope: !416)
!423 = !DILocation(line: 88, column: 20, scope: !424)
!424 = distinct !DILexicalBlock(scope: !386, file: !198, line: 88, column: 7)
!425 = !DILocation(line: 88, column: 7, scope: !424)
!426 = !DILocation(line: 88, column: 7, scope: !386)
!427 = !DILocation(line: 89, column: 21, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !198, line: 88, column: 26)
!429 = !DILocation(line: 89, column: 10, scope: !428)
!430 = !DILocation(line: 89, column: 8, scope: !428)
!431 = !DILocation(line: 90, column: 28, scope: !428)
!432 = !DILocation(line: 90, column: 34, scope: !428)
!433 = !DILocation(line: 90, column: 39, scope: !428)
!434 = !DILocation(line: 90, column: 45, scope: !428)
!435 = !DILocation(line: 90, column: 13, scope: !428)
!436 = !DILocation(line: 90, column: 11, scope: !428)
!437 = !DILocation(line: 91, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !428, file: !198, line: 91, column: 8)
!439 = !DILocation(line: 91, column: 8, scope: !428)
!440 = !DILocation(line: 92, column: 12, scope: !438)
!441 = !DILocation(line: 92, column: 5, scope: !438)
!442 = !DILocation(line: 94, column: 4, scope: !428)
!443 = !DILocation(line: 96, column: 18, scope: !386)
!444 = !DILocation(line: 96, column: 24, scope: !386)
!445 = !DILocation(line: 96, column: 39, scope: !386)
!446 = !DILocation(line: 96, column: 45, scope: !386)
!447 = !DILocation(line: 96, column: 7, scope: !386)
!448 = !DILocation(line: 97, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !386, file: !198, line: 97, column: 7)
!450 = !DILocation(line: 97, column: 7, scope: !386)
!451 = !DILocation(line: 98, column: 4, scope: !449)
!452 = !DILocation(line: 100, column: 27, scope: !386)
!453 = !DILocation(line: 100, column: 33, scope: !386)
!454 = !DILocation(line: 100, column: 38, scope: !386)
!455 = !DILocation(line: 100, column: 44, scope: !386)
!456 = !DILocation(line: 100, column: 12, scope: !386)
!457 = !DILocation(line: 100, column: 10, scope: !386)
!458 = !DILocation(line: 101, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !386, file: !198, line: 101, column: 7)
!460 = !DILocation(line: 101, column: 7, scope: !386)
!461 = !DILocation(line: 102, column: 11, scope: !459)
!462 = !DILocation(line: 102, column: 4, scope: !459)
!463 = !DILocation(line: 104, column: 3, scope: !386)
!464 = !DILocation(line: 105, column: 2, scope: !387)
!465 = !DILocation(line: 105, column: 2, scope: !386)
!466 = !DILocation(line: 80, column: 28, scope: !387)
!467 = !DILocation(line: 80, column: 26, scope: !387)
!468 = !DILocation(line: 80, column: 2, scope: !387)
!469 = distinct !{!469, !402, !470, !335, !336}
!470 = !DILocation(line: 105, column: 2, scope: !388)
!471 = !DILocation(line: 107, column: 2, scope: !375)
!472 = !DILocation(line: 108, column: 1, scope: !375)
!473 = distinct !DISubprogram(name: "pgtable_l5_enabled", scope: !24, file: !24, line: 32, type: !474, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!474 = !DISubroutineType(types: !475)
!475 = !{!137}
!476 = !DILocation(line: 34, column: 9, scope: !473)
!477 = !DILocation(line: 34, column: 2, scope: !473)
!478 = distinct !DISubprogram(name: "native_set_pgd", scope: !479, file: !479, line: 161, type: !480, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!479 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!480 = !DISubroutineType(types: !481)
!481 = !{null, !33, !34}
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "pgdp", arg: 1, scope: !478, file: !479, line: 161, type: !33)
!484 = !DILocalVariable(name: "pgd", arg: 2, scope: !478, file: !479, line: 161, type: !34)
!485 = !DILocation(line: 161, column: 42, scope: !478)
!486 = !DILocation(line: 161, column: 54, scope: !478)
!487 = !DILocation(line: 163, column: 2, scope: !478)
!488 = !DILocation(line: 163, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !478, file: !479, line: 163, column: 2)
!490 = !DILocation(line: 163, column: 2, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !479, line: 163, column: 2)
!492 = !DILocation(line: 163, column: 2, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !479, line: 163, column: 2)
!494 = !DILocation(line: 164, column: 1, scope: !478)
!495 = distinct !DISubprogram(name: "native_make_pgd", scope: !28, file: !28, line: 330, type: !496, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!34, !38}
!498 = !{!499}
!499 = !DILocalVariable(name: "val", arg: 1, scope: !495, file: !28, line: 330, type: !38)
!500 = !DILocation(line: 330, column: 46, scope: !495)
!501 = !DILocation(line: 332, column: 17, scope: !495)
!502 = !DILocation(line: 332, column: 19, scope: !495)
!503 = !DILocation(line: 332, column: 23, scope: !495)
!504 = !DILocation(line: 332, column: 2, scope: !495)
!505 = distinct !DISubprogram(name: "pud_offset", scope: !506, file: !506, line: 129, type: !507, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!506 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!507 = !DISubroutineType(types: !508)
!508 = !{!62, !26, !25}
!509 = !{!510, !511}
!510 = !DILocalVariable(name: "p4d", arg: 1, scope: !505, file: !506, line: 129, type: !26)
!511 = !DILocalVariable(name: "address", arg: 2, scope: !505, file: !506, line: 129, type: !25)
!512 = !DILocation(line: 129, column: 40, scope: !505)
!513 = !DILocation(line: 129, column: 59, scope: !505)
!514 = !DILocation(line: 131, column: 22, scope: !505)
!515 = !DILocation(line: 131, column: 9, scope: !505)
!516 = !DILocation(line: 131, column: 39, scope: !505)
!517 = !DILocation(line: 131, column: 29, scope: !505)
!518 = !DILocation(line: 131, column: 27, scope: !505)
!519 = !DILocation(line: 131, column: 2, scope: !505)
!520 = distinct !DISubprogram(name: "kernel_add_identity_map", scope: !3, file: !3, line: 93, type: !521, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !25, !25}
!523 = !{!524, !525, !526}
!524 = !DILocalVariable(name: "start", arg: 1, scope: !520, file: !3, line: 93, type: !25)
!525 = !DILocalVariable(name: "end", arg: 2, scope: !520, file: !3, line: 93, type: !25)
!526 = !DILocalVariable(name: "ret", scope: !520, file: !3, line: 95, type: !201)
!527 = !DILocation(line: 93, column: 44, scope: !520)
!528 = !DILocation(line: 93, column: 65, scope: !520)
!529 = !DILocation(line: 95, column: 2, scope: !520)
!530 = !DILocation(line: 95, column: 6, scope: !520)
!531 = !DILocation(line: 98, column: 10, scope: !520)
!532 = !DILocation(line: 98, column: 8, scope: !520)
!533 = !DILocation(line: 99, column: 8, scope: !520)
!534 = !DILocation(line: 99, column: 6, scope: !520)
!535 = !DILocation(line: 100, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !520, file: !3, line: 100, column: 6)
!537 = !DILocation(line: 100, column: 15, scope: !536)
!538 = !DILocation(line: 100, column: 12, scope: !536)
!539 = !DILocation(line: 100, column: 6, scope: !520)
!540 = !DILocation(line: 101, column: 3, scope: !536)
!541 = !DILocation(line: 104, column: 58, scope: !520)
!542 = !DILocation(line: 104, column: 49, scope: !520)
!543 = !DILocation(line: 104, column: 73, scope: !520)
!544 = !DILocation(line: 104, column: 80, scope: !520)
!545 = !DILocation(line: 104, column: 8, scope: !520)
!546 = !DILocation(line: 104, column: 6, scope: !520)
!547 = !DILocation(line: 105, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !520, file: !3, line: 105, column: 6)
!549 = !DILocation(line: 105, column: 6, scope: !520)
!550 = !DILocation(line: 106, column: 3, scope: !548)
!551 = !DILocation(line: 107, column: 1, scope: !520)
!552 = !DISubprogram(name: "error", scope: !553, file: !553, line: 8, type: !554, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!553 = !DIFile(filename: "arch/x86/boot/compressed/error.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b20f0f8db8d544195cf5a95e28d98dc")
!554 = !DISubroutineType(types: !555)
!555 = !{null, !96}
!556 = distinct !DISubprogram(name: "initialize_identity_maps", scope: !3, file: !3, line: 110, type: !557, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !61}
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "rmode", arg: 1, scope: !556, file: !3, line: 110, type: !61)
!561 = !DILocalVariable(name: "cmdline", scope: !556, file: !3, line: 112, type: !25)
!562 = !DILocalVariable(name: "sd", scope: !556, file: !3, line: 113, type: !39)
!563 = !DILocalVariable(name: "sd_addr", scope: !564, file: !3, line: 174, type: !25)
!564 = distinct !DILexicalBlock(scope: !556, file: !3, line: 173, column: 13)
!565 = !DILocation(line: 110, column: 37, scope: !556)
!566 = !DILocation(line: 112, column: 2, scope: !556)
!567 = !DILocation(line: 112, column: 16, scope: !556)
!568 = !DILocation(line: 113, column: 2, scope: !556)
!569 = !DILocation(line: 113, column: 21, scope: !556)
!570 = !DILocation(line: 116, column: 16, scope: !556)
!571 = !DILocation(line: 119, column: 30, scope: !556)
!572 = !DILocation(line: 120, column: 23, scope: !556)
!573 = !DILocation(line: 121, column: 25, scope: !556)
!574 = !DILocation(line: 122, column: 27, scope: !556)
!575 = !DILocation(line: 129, column: 26, scope: !556)
!576 = !DILocation(line: 142, column: 18, scope: !556)
!577 = !DILocation(line: 142, column: 16, scope: !556)
!578 = !DILocation(line: 143, column: 26, scope: !579)
!579 = distinct !DILexicalBlock(scope: !556, file: !3, line: 143, column: 6)
!580 = !DILocation(line: 143, column: 17, scope: !579)
!581 = !DILocation(line: 143, column: 6, scope: !579)
!582 = !DILocation(line: 143, column: 44, scope: !579)
!583 = !DILocation(line: 143, column: 6, scope: !556)
!584 = !DILocation(line: 144, column: 20, scope: !585)
!585 = distinct !DILexicalBlock(scope: !579, file: !3, line: 143, column: 66)
!586 = !DILocation(line: 145, column: 25, scope: !585)
!587 = !DILocation(line: 146, column: 19, scope: !585)
!588 = !DILocation(line: 146, column: 40, scope: !585)
!589 = !DILocation(line: 146, column: 3, scope: !585)
!590 = !DILocation(line: 147, column: 2, scope: !585)
!591 = !DILocation(line: 148, column: 20, scope: !592)
!592 = distinct !DILexicalBlock(scope: !579, file: !3, line: 147, column: 9)
!593 = !DILocation(line: 149, column: 25, scope: !592)
!594 = !DILocation(line: 150, column: 19, scope: !592)
!595 = !DILocation(line: 150, column: 40, scope: !592)
!596 = !DILocation(line: 150, column: 3, scope: !592)
!597 = !DILocation(line: 151, column: 34, scope: !592)
!598 = !DILocation(line: 151, column: 19, scope: !592)
!599 = !DILocation(line: 151, column: 17, scope: !592)
!600 = !DILocation(line: 161, column: 2, scope: !556)
!601 = !DILocation(line: 162, column: 20, scope: !556)
!602 = !DILocation(line: 162, column: 18, scope: !556)
!603 = !DILocation(line: 163, column: 41, scope: !556)
!604 = !DILocation(line: 163, column: 26, scope: !556)
!605 = !DILocation(line: 164, column: 21, scope: !556)
!606 = !DILocation(line: 164, column: 37, scope: !556)
!607 = !DILocation(line: 164, column: 5, scope: !556)
!608 = !DILocation(line: 163, column: 2, scope: !556)
!609 = !DILocation(line: 165, column: 12, scope: !556)
!610 = !DILocation(line: 165, column: 10, scope: !556)
!611 = !DILocation(line: 166, column: 26, scope: !556)
!612 = !DILocation(line: 166, column: 35, scope: !556)
!613 = !DILocation(line: 166, column: 43, scope: !556)
!614 = !DILocation(line: 166, column: 2, scope: !556)
!615 = !DILocation(line: 172, column: 28, scope: !556)
!616 = !DILocation(line: 172, column: 45, scope: !556)
!617 = !DILocation(line: 172, column: 49, scope: !556)
!618 = !DILocation(line: 172, column: 7, scope: !556)
!619 = !DILocation(line: 172, column: 5, scope: !556)
!620 = !DILocation(line: 173, column: 2, scope: !556)
!621 = !DILocation(line: 173, column: 9, scope: !556)
!622 = !DILocation(line: 174, column: 3, scope: !564)
!623 = !DILocation(line: 174, column: 17, scope: !564)
!624 = !DILocation(line: 174, column: 42, scope: !564)
!625 = !DILocation(line: 174, column: 27, scope: !564)
!626 = !DILocation(line: 176, column: 27, scope: !564)
!627 = !DILocation(line: 176, column: 36, scope: !564)
!628 = !DILocation(line: 176, column: 44, scope: !564)
!629 = !DILocation(line: 176, column: 60, scope: !564)
!630 = !DILocation(line: 176, column: 64, scope: !564)
!631 = !DILocation(line: 176, column: 58, scope: !564)
!632 = !DILocation(line: 176, column: 3, scope: !564)
!633 = !DILocation(line: 177, column: 29, scope: !564)
!634 = !DILocation(line: 177, column: 33, scope: !564)
!635 = !DILocation(line: 177, column: 8, scope: !564)
!636 = !DILocation(line: 177, column: 6, scope: !564)
!637 = !DILocation(line: 178, column: 2, scope: !556)
!638 = distinct !{!638, !620, !637, !335, !336}
!639 = !DILocation(line: 180, column: 25, scope: !556)
!640 = !DILocation(line: 180, column: 2, scope: !556)
!641 = !DILocation(line: 183, column: 12, scope: !556)
!642 = !DILocation(line: 183, column: 2, scope: !556)
!643 = !DILocation(line: 189, column: 2, scope: !556)
!644 = !DILocation(line: 190, column: 1, scope: !556)
!645 = distinct !DISubprogram(name: "alloc_pgt_page", scope: !3, file: !3, line: 49, type: !131, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!646 = !{!647, !648, !649}
!647 = !DILocalVariable(name: "context", arg: 1, scope: !645, file: !3, line: 49, type: !61)
!648 = !DILocalVariable(name: "pages", scope: !645, file: !3, line: 51, type: !82)
!649 = !DILocalVariable(name: "entry", scope: !645, file: !3, line: 52, type: !86)
!650 = !DILocation(line: 49, column: 35, scope: !645)
!651 = !DILocation(line: 51, column: 2, scope: !645)
!652 = !DILocation(line: 51, column: 25, scope: !645)
!653 = !DILocation(line: 51, column: 58, scope: !645)
!654 = !DILocation(line: 52, column: 2, scope: !645)
!655 = !DILocation(line: 52, column: 17, scope: !645)
!656 = !DILocation(line: 55, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !645, file: !3, line: 55, column: 6)
!658 = !DILocation(line: 55, column: 13, scope: !657)
!659 = !DILocation(line: 55, column: 31, scope: !657)
!660 = !DILocation(line: 55, column: 38, scope: !657)
!661 = !DILocation(line: 55, column: 28, scope: !657)
!662 = !DILocation(line: 55, column: 6, scope: !645)
!663 = !DILocation(line: 56, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !657, file: !3, line: 55, column: 52)
!665 = !DILocation(line: 57, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !3, line: 57, column: 3)
!667 = !DILocation(line: 58, column: 3, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !3, line: 58, column: 3)
!669 = !DILocation(line: 59, column: 3, scope: !664)
!670 = !DILocation(line: 63, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !645, file: !3, line: 63, column: 6)
!672 = !DILocation(line: 63, column: 13, scope: !671)
!673 = !DILocation(line: 63, column: 28, scope: !671)
!674 = !DILocation(line: 63, column: 6, scope: !645)
!675 = !DILocation(line: 64, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !3, line: 63, column: 51)
!677 = !DILocation(line: 65, column: 3, scope: !676)
!678 = !DILocation(line: 66, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !3, line: 66, column: 3)
!680 = !DILocation(line: 67, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 67, column: 3)
!682 = !DILocation(line: 68, column: 2, scope: !676)
!683 = !DILocation(line: 70, column: 10, scope: !645)
!684 = !DILocation(line: 70, column: 17, scope: !645)
!685 = !DILocation(line: 70, column: 27, scope: !645)
!686 = !DILocation(line: 70, column: 34, scope: !645)
!687 = !DILocation(line: 70, column: 25, scope: !645)
!688 = !DILocation(line: 70, column: 8, scope: !645)
!689 = !DILocation(line: 71, column: 2, scope: !645)
!690 = !DILocation(line: 71, column: 9, scope: !645)
!691 = !DILocation(line: 71, column: 24, scope: !645)
!692 = !DILocation(line: 73, column: 9, scope: !645)
!693 = !DILocation(line: 73, column: 2, scope: !645)
!694 = !DILocation(line: 74, column: 1, scope: !645)
!695 = distinct !DISubprogram(name: "read_cr3_pa", scope: !696, file: !696, line: 217, type: !697, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!696 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!697 = !DISubroutineType(types: !698)
!698 = !{!25}
!699 = !DILocation(line: 219, column: 9, scope: !695)
!700 = !DILocation(line: 219, column: 22, scope: !695)
!701 = !DILocation(line: 219, column: 2, scope: !695)
!702 = !DISubprogram(name: "memset", scope: !703, file: !703, line: 22, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!704 = !DISubroutineType(types: !705)
!705 = !{!61, !61, !201, !706}
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 61, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !708, line: 72, baseType: !709)
!708 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !708, line: 16, baseType: !25)
!710 = !DISubprogram(name: "get_cmd_line_ptr", scope: !3, file: !3, line: 32, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!711 = distinct !DISubprogram(name: "sev_prep_identity_maps", scope: !712, file: !712, line: 163, type: !713, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !715)
!712 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!713 = !DISubroutineType(types: !714)
!714 = !{null, !25}
!715 = !{!716}
!716 = !DILocalVariable(name: "top_level_pgt", arg: 1, scope: !711, file: !712, line: 163, type: !25)
!717 = !DILocation(line: 163, column: 57, scope: !711)
!718 = !DILocation(line: 163, column: 74, scope: !711)
!719 = distinct !DISubprogram(name: "write_cr3", scope: !720, file: !720, line: 161, type: !713, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!720 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!721 = !{!722}
!722 = !DILocalVariable(name: "x", arg: 1, scope: !719, file: !720, line: 161, type: !25)
!723 = !DILocation(line: 161, column: 44, scope: !719)
!724 = !DILocation(line: 163, column: 19, scope: !719)
!725 = !DILocation(line: 163, column: 2, scope: !719)
!726 = !DILocation(line: 164, column: 1, scope: !719)
!727 = distinct !DISubprogram(name: "snp_check_features", scope: !712, file: !712, line: 155, type: !728, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!728 = !DISubroutineType(types: !729)
!729 = !{null}
!730 = !DILocation(line: 155, column: 47, scope: !727)
!731 = distinct !DISubprogram(name: "set_page_decrypted", scope: !3, file: !3, line: 330, type: !732, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!201, !25}
!734 = !{!735}
!735 = !DILocalVariable(name: "address", arg: 1, scope: !731, file: !3, line: 330, type: !25)
!736 = !DILocation(line: 330, column: 38, scope: !731)
!737 = !DILocation(line: 332, column: 43, scope: !731)
!738 = !DILocation(line: 332, column: 9, scope: !731)
!739 = !DILocation(line: 332, column: 2, scope: !731)
!740 = distinct !DISubprogram(name: "set_clr_page_flags", scope: !3, file: !3, line: 255, type: !741, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!201, !202, !25, !23, !23}
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!744 = !DILocalVariable(name: "info", arg: 1, scope: !740, file: !3, line: 255, type: !202)
!745 = !DILocalVariable(name: "address", arg: 2, scope: !740, file: !3, line: 256, type: !25)
!746 = !DILocalVariable(name: "set", arg: 3, scope: !740, file: !3, line: 257, type: !23)
!747 = !DILocalVariable(name: "clr", arg: 4, scope: !740, file: !3, line: 257, type: !23)
!748 = !DILocalVariable(name: "pgdp", scope: !740, file: !3, line: 259, type: !33)
!749 = !DILocalVariable(name: "p4dp", scope: !740, file: !3, line: 260, type: !26)
!750 = !DILocalVariable(name: "pudp", scope: !740, file: !3, line: 261, type: !62)
!751 = !DILocalVariable(name: "pmdp", scope: !740, file: !3, line: 262, type: !68)
!752 = !DILocalVariable(name: "ptep", scope: !740, file: !3, line: 263, type: !91)
!753 = !DILocalVariable(name: "pte", scope: !740, file: !3, line: 263, type: !92)
!754 = !DILocation(line: 255, column: 56, scope: !740)
!755 = !DILocation(line: 256, column: 24, scope: !740)
!756 = !DILocation(line: 257, column: 19, scope: !740)
!757 = !DILocation(line: 257, column: 33, scope: !740)
!758 = !DILocation(line: 259, column: 2, scope: !740)
!759 = !DILocation(line: 259, column: 9, scope: !740)
!760 = !DILocation(line: 259, column: 25, scope: !740)
!761 = !DILocation(line: 259, column: 16, scope: !740)
!762 = !DILocation(line: 260, column: 2, scope: !740)
!763 = !DILocation(line: 260, column: 9, scope: !740)
!764 = !DILocation(line: 261, column: 2, scope: !740)
!765 = !DILocation(line: 261, column: 9, scope: !740)
!766 = !DILocation(line: 262, column: 2, scope: !740)
!767 = !DILocation(line: 262, column: 9, scope: !740)
!768 = !DILocation(line: 263, column: 2, scope: !740)
!769 = !DILocation(line: 263, column: 9, scope: !740)
!770 = !DILocation(line: 263, column: 15, scope: !740)
!771 = !DILocation(line: 276, column: 44, scope: !740)
!772 = !DILocation(line: 276, column: 27, scope: !740)
!773 = !DILocation(line: 276, column: 26, scope: !740)
!774 = !DILocation(line: 275, column: 2, scope: !740)
!775 = !{i64 8326}
!776 = !DILocation(line: 283, column: 20, scope: !740)
!777 = !DILocation(line: 283, column: 26, scope: !740)
!778 = !DILocation(line: 283, column: 9, scope: !740)
!779 = !DILocation(line: 283, column: 7, scope: !740)
!780 = !DILocation(line: 284, column: 20, scope: !740)
!781 = !DILocation(line: 284, column: 26, scope: !740)
!782 = !DILocation(line: 284, column: 9, scope: !740)
!783 = !DILocation(line: 284, column: 7, scope: !740)
!784 = !DILocation(line: 285, column: 20, scope: !740)
!785 = !DILocation(line: 285, column: 26, scope: !740)
!786 = !DILocation(line: 285, column: 9, scope: !740)
!787 = !DILocation(line: 285, column: 7, scope: !740)
!788 = !DILocation(line: 287, column: 17, scope: !789)
!789 = distinct !DILexicalBlock(scope: !740, file: !3, line: 287, column: 6)
!790 = !DILocation(line: 287, column: 6, scope: !789)
!791 = !DILocation(line: 287, column: 6, scope: !740)
!792 = !DILocation(line: 288, column: 26, scope: !789)
!793 = !DILocation(line: 288, column: 32, scope: !789)
!794 = !DILocation(line: 288, column: 38, scope: !789)
!795 = !DILocation(line: 288, column: 10, scope: !789)
!796 = !DILocation(line: 288, column: 8, scope: !789)
!797 = !DILocation(line: 288, column: 3, scope: !789)
!798 = !DILocation(line: 290, column: 28, scope: !789)
!799 = !DILocation(line: 290, column: 34, scope: !789)
!800 = !DILocation(line: 290, column: 10, scope: !789)
!801 = !DILocation(line: 290, column: 8, scope: !789)
!802 = !DILocation(line: 292, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !740, file: !3, line: 292, column: 6)
!804 = !DILocation(line: 292, column: 6, scope: !740)
!805 = !DILocation(line: 293, column: 3, scope: !803)
!806 = !DILocation(line: 299, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !740, file: !3, line: 299, column: 6)
!808 = !DILocation(line: 299, column: 13, scope: !807)
!809 = !DILocation(line: 299, column: 11, scope: !807)
!810 = !DILocation(line: 299, column: 18, scope: !807)
!811 = !DILocation(line: 299, column: 6, scope: !740)
!812 = !DILocation(line: 300, column: 16, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !3, line: 299, column: 31)
!814 = !DILocation(line: 300, column: 3, scope: !813)
!815 = !DILocation(line: 306, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !813, file: !3, line: 306, column: 7)
!817 = !DILocation(line: 306, column: 7, scope: !813)
!818 = !DILocation(line: 307, column: 24, scope: !816)
!819 = !DILocation(line: 307, column: 4, scope: !816)
!820 = !DILocation(line: 308, column: 2, scope: !813)
!821 = !DILocation(line: 311, column: 9, scope: !740)
!822 = !DILocation(line: 311, column: 8, scope: !740)
!823 = !DILocation(line: 312, column: 8, scope: !740)
!824 = !DILocation(line: 312, column: 27, scope: !740)
!825 = !DILocation(line: 313, column: 8, scope: !740)
!826 = !DILocation(line: 313, column: 29, scope: !740)
!827 = !DILocation(line: 314, column: 2, scope: !740)
!828 = !DILocation(line: 321, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !740, file: !3, line: 321, column: 6)
!830 = !DILocation(line: 321, column: 10, scope: !829)
!831 = !DILocation(line: 321, column: 6, scope: !740)
!832 = !DILocation(line: 322, column: 24, scope: !829)
!833 = !DILocation(line: 322, column: 3, scope: !829)
!834 = !DILocation(line: 325, column: 12, scope: !740)
!835 = !DILocation(line: 325, column: 2, scope: !740)
!836 = !DILocation(line: 327, column: 2, scope: !740)
!837 = !DILocation(line: 328, column: 1, scope: !740)
!838 = distinct !DISubprogram(name: "set_page_encrypted", scope: !3, file: !3, line: 335, type: !732, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!839 = !{!840}
!840 = !DILocalVariable(name: "address", arg: 1, scope: !838, file: !3, line: 335, type: !25)
!841 = !DILocation(line: 335, column: 38, scope: !838)
!842 = !DILocation(line: 337, column: 43, scope: !838)
!843 = !DILocation(line: 337, column: 9, scope: !838)
!844 = !DILocation(line: 337, column: 2, scope: !838)
!845 = distinct !DISubprogram(name: "set_page_non_present", scope: !3, file: !3, line: 340, type: !732, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !846)
!846 = !{!847}
!847 = !DILocalVariable(name: "address", arg: 1, scope: !845, file: !3, line: 340, type: !25)
!848 = !DILocation(line: 340, column: 40, scope: !845)
!849 = !DILocation(line: 342, column: 43, scope: !845)
!850 = !DILocation(line: 342, column: 9, scope: !845)
!851 = !DILocation(line: 342, column: 2, scope: !845)
!852 = distinct !DISubprogram(name: "do_boot_page_fault", scope: !3, file: !3, line: 361, type: !853, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855, !25}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !857, line: 103, size: 1344, elements: !858)
!857 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !890, !891, !892}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !856, file: !857, line: 109, baseType: !25, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !856, file: !857, line: 110, baseType: !25, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !856, file: !857, line: 111, baseType: !25, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !856, file: !857, line: 112, baseType: !25, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !856, file: !857, line: 113, baseType: !25, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !856, file: !857, line: 114, baseType: !25, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !856, file: !857, line: 117, baseType: !25, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !856, file: !857, line: 118, baseType: !25, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !856, file: !857, line: 119, baseType: !25, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !856, file: !857, line: 120, baseType: !25, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !856, file: !857, line: 121, baseType: !25, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !856, file: !857, line: 122, baseType: !25, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !856, file: !857, line: 123, baseType: !25, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !856, file: !857, line: 124, baseType: !25, size: 64, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !856, file: !857, line: 125, baseType: !25, size: 64, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !856, file: !857, line: 139, baseType: !25, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !856, file: !857, line: 142, baseType: !25, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 144, baseType: !877, size: 64, offset: 1088)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 144, size: 64, elements: !878)
!878 = !{!879, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !877, file: !857, line: 146, baseType: !880, size: 16)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !60, line: 19, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !882)
!882 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !877, file: !857, line: 148, baseType: !59, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !877, file: !857, line: 150, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !857, line: 59, size: 64, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !885, file: !857, line: 61, baseType: !59, size: 16, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !885, file: !857, line: 63, baseType: !59, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !885, file: !857, line: 65, baseType: !59, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !857, line: 153, baseType: !25, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !856, file: !857, line: 154, baseType: !25, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 156, baseType: !893, size: 64, offset: 1280)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 156, size: 64, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !893, file: !857, line: 158, baseType: !880, size: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !893, file: !857, line: 160, baseType: !59, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !893, file: !857, line: 162, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !857, line: 69, size: 64, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !898, file: !857, line: 71, baseType: !59, size: 16, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !898, file: !857, line: 73, baseType: !59, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !898, file: !857, line: 75, baseType: !59, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !898, file: !857, line: 77, baseType: !59, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !898, file: !857, line: 80, baseType: !59, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !898, file: !857, line: 83, baseType: !59, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !898, file: !857, line: 86, baseType: !59, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !898, file: !857, line: 88, baseType: !59, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !898, file: !857, line: 93, baseType: !59, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !898, file: !857, line: 100, baseType: !59, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!910 = !{!911, !912, !913, !914, !915}
!911 = !DILocalVariable(name: "regs", arg: 1, scope: !852, file: !3, line: 361, type: !855)
!912 = !DILocalVariable(name: "error_code", arg: 2, scope: !852, file: !3, line: 361, type: !25)
!913 = !DILocalVariable(name: "address", scope: !852, file: !3, line: 363, type: !25)
!914 = !DILocalVariable(name: "end", scope: !852, file: !3, line: 364, type: !25)
!915 = !DILocalVariable(name: "ghcb_fault", scope: !852, file: !3, line: 365, type: !137)
!916 = !DILocation(line: 361, column: 41, scope: !852)
!917 = !DILocation(line: 361, column: 61, scope: !852)
!918 = !DILocation(line: 363, column: 2, scope: !852)
!919 = !DILocation(line: 363, column: 16, scope: !852)
!920 = !DILocation(line: 363, column: 26, scope: !852)
!921 = !DILocation(line: 364, column: 2, scope: !852)
!922 = !DILocation(line: 364, column: 16, scope: !852)
!923 = !DILocation(line: 365, column: 2, scope: !852)
!924 = !DILocation(line: 365, column: 7, scope: !852)
!925 = !DILocation(line: 367, column: 39, scope: !852)
!926 = !DILocation(line: 367, column: 15, scope: !852)
!927 = !DILocation(line: 367, column: 13, scope: !852)
!928 = !DILocation(line: 369, column: 12, scope: !852)
!929 = !DILocation(line: 370, column: 15, scope: !852)
!930 = !DILocation(line: 370, column: 23, scope: !852)
!931 = !DILocation(line: 370, column: 13, scope: !852)
!932 = !DILocation(line: 378, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !852, file: !3, line: 378, column: 6)
!934 = !DILocation(line: 378, column: 17, scope: !933)
!935 = !DILocation(line: 378, column: 6, scope: !852)
!936 = !DILocation(line: 379, column: 41, scope: !933)
!937 = !DILocation(line: 379, column: 53, scope: !933)
!938 = !DILocation(line: 379, column: 62, scope: !933)
!939 = !DILocation(line: 379, column: 68, scope: !933)
!940 = !DILocation(line: 379, column: 3, scope: !933)
!941 = !DILocation(line: 380, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !933, file: !3, line: 380, column: 11)
!943 = !{i8 0, i8 2}
!944 = !{}
!945 = !DILocation(line: 380, column: 11, scope: !933)
!946 = !DILocation(line: 381, column: 43, scope: !942)
!947 = !DILocation(line: 381, column: 55, scope: !942)
!948 = !DILocation(line: 381, column: 64, scope: !942)
!949 = !DILocation(line: 381, column: 70, scope: !942)
!950 = !DILocation(line: 381, column: 3, scope: !942)
!951 = !DILocation(line: 387, column: 26, scope: !852)
!952 = !DILocation(line: 387, column: 35, scope: !852)
!953 = !DILocation(line: 387, column: 2, scope: !852)
!954 = !DILocation(line: 388, column: 1, scope: !852)
!955 = distinct !DISubprogram(name: "native_read_cr2", scope: !720, file: !720, line: 33, type: !697, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !956)
!956 = !{!957}
!957 = !DILocalVariable(name: "val", scope: !955, file: !720, line: 35, type: !25)
!958 = !DILocation(line: 35, column: 2, scope: !955)
!959 = !DILocation(line: 35, column: 16, scope: !955)
!960 = !DILocation(line: 36, column: 2, scope: !955)
!961 = !{i64 1695455, i64 1695470}
!962 = !DILocation(line: 37, column: 9, scope: !955)
!963 = !DILocation(line: 38, column: 1, scope: !955)
!964 = !DILocation(line: 37, column: 2, scope: !955)
!965 = distinct !DISubprogram(name: "sev_es_check_ghcb_fault", scope: !712, file: !712, line: 157, type: !966, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!137, !25}
!968 = !{!969}
!969 = !DILocalVariable(name: "address", arg: 1, scope: !965, file: !712, line: 157, type: !25)
!970 = !DILocation(line: 157, column: 58, scope: !965)
!971 = !DILocation(line: 159, column: 2, scope: !965)
!972 = distinct !DISubprogram(name: "do_pf_error", scope: !3, file: !3, line: 345, type: !973, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !977)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !975, !25, !25, !25}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!977 = !{!978, !979, !980, !981}
!978 = !DILocalVariable(name: "msg", arg: 1, scope: !972, file: !3, line: 345, type: !975)
!979 = !DILocalVariable(name: "error_code", arg: 2, scope: !972, file: !3, line: 345, type: !25)
!980 = !DILocalVariable(name: "address", arg: 3, scope: !972, file: !3, line: 346, type: !25)
!981 = !DILocalVariable(name: "ip", arg: 4, scope: !972, file: !3, line: 346, type: !25)
!982 = !DILocation(line: 345, column: 37, scope: !972)
!983 = !DILocation(line: 345, column: 56, scope: !972)
!984 = !DILocation(line: 346, column: 18, scope: !972)
!985 = !DILocation(line: 346, column: 41, scope: !972)
!986 = !DILocation(line: 348, column: 2, scope: !972)
!987 = !DILocation(line: 350, column: 2, scope: !972)
!988 = !DILocation(line: 351, column: 2, scope: !972)
!989 = !DILocation(line: 352, column: 2, scope: !972)
!990 = !DILocation(line: 353, column: 2, scope: !972)
!991 = !DILocation(line: 354, column: 2, scope: !972)
!992 = !DILocation(line: 355, column: 2, scope: !972)
!993 = !DILocation(line: 356, column: 2, scope: !972)
!994 = !DILocation(line: 358, column: 2, scope: !972)
!995 = distinct !DISubprogram(name: "do_boot_nmi_trap", scope: !3, file: !3, line: 390, type: !853, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !996)
!996 = !{!997, !998}
!997 = !DILocalVariable(name: "regs", arg: 1, scope: !995, file: !3, line: 390, type: !855)
!998 = !DILocalVariable(name: "error_code", arg: 2, scope: !995, file: !3, line: 390, type: !25)
!999 = !DILocation(line: 390, column: 39, scope: !995)
!1000 = !DILocation(line: 390, column: 59, scope: !995)
!1001 = !DILocation(line: 393, column: 1, scope: !995)
!1002 = distinct !DISubprogram(name: "pgd_flags", scope: !28, file: !28, line: 340, type: !1003, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!38, !34}
!1005 = !{!1006}
!1006 = !DILocalVariable(name: "pgd", arg: 1, scope: !1002, file: !28, line: 340, type: !34)
!1007 = !DILocation(line: 340, column: 40, scope: !1002)
!1008 = !DILocation(line: 342, column: 9, scope: !1002)
!1009 = !DILocation(line: 342, column: 29, scope: !1002)
!1010 = !DILocation(line: 342, column: 2, scope: !1002)
!1011 = distinct !DISubprogram(name: "native_pgd_val", scope: !28, file: !28, line: 335, type: !1003, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1012 = !{!1013}
!1013 = !DILocalVariable(name: "pgd", arg: 1, scope: !1011, file: !28, line: 335, type: !34)
!1014 = !DILocation(line: 335, column: 45, scope: !1011)
!1015 = !DILocation(line: 337, column: 13, scope: !1011)
!1016 = !DILocation(line: 337, column: 17, scope: !1011)
!1017 = !DILocation(line: 337, column: 2, scope: !1011)
!1018 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !340, file: !340, line: 1137, type: !1019, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!25, !34}
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "pgd", arg: 1, scope: !1018, file: !340, line: 1137, type: !34)
!1023 = !DILocation(line: 1137, column: 50, scope: !1018)
!1024 = !DILocation(line: 1139, column: 24, scope: !1018)
!1025 = !DILocation(line: 1139, column: 9, scope: !1018)
!1026 = !DILocation(line: 1139, column: 2, scope: !1018)
!1027 = distinct !DISubprogram(name: "p4d_index", scope: !340, file: !340, line: 1124, type: !1028, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!25, !25}
!1030 = !{!1031}
!1031 = !DILocalVariable(name: "address", arg: 1, scope: !1027, file: !340, line: 1124, type: !25)
!1032 = !DILocation(line: 1124, column: 53, scope: !1027)
!1033 = !DILocation(line: 1126, column: 10, scope: !1027)
!1034 = !DILocation(line: 1126, column: 18, scope: !1027)
!1035 = !DILocation(line: 1126, column: 35, scope: !1027)
!1036 = !DILocation(line: 1126, column: 48, scope: !1027)
!1037 = !DILocation(line: 1126, column: 34, scope: !1027)
!1038 = !DILocation(line: 1126, column: 32, scope: !1027)
!1039 = !DILocation(line: 1126, column: 2, scope: !1027)
!1040 = distinct !DISubprogram(name: "p4d_present", scope: !340, file: !340, line: 1097, type: !1041, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!201, !27}
!1043 = !{!1044}
!1044 = !DILocalVariable(name: "p4d", arg: 1, scope: !1040, file: !340, line: 1097, type: !27)
!1045 = !DILocation(line: 1097, column: 37, scope: !1040)
!1046 = !DILocation(line: 1099, column: 9, scope: !1040)
!1047 = !DILocation(line: 1099, column: 24, scope: !1040)
!1048 = !DILocation(line: 1099, column: 2, scope: !1040)
!1049 = distinct !DISubprogram(name: "ident_pud_init", scope: !198, file: !198, line: 21, type: !1050, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!201, !202, !62, !25, !25}
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1062, !1063, !1064}
!1053 = !DILocalVariable(name: "info", arg: 1, scope: !1049, file: !198, line: 21, type: !202)
!1054 = !DILocalVariable(name: "pud_page", arg: 2, scope: !1049, file: !198, line: 21, type: !62)
!1055 = !DILocalVariable(name: "addr", arg: 3, scope: !1049, file: !198, line: 22, type: !25)
!1056 = !DILocalVariable(name: "end", arg: 4, scope: !1049, file: !198, line: 22, type: !25)
!1057 = !DILocalVariable(name: "next", scope: !1049, file: !198, line: 24, type: !25)
!1058 = !DILocalVariable(name: "pud", scope: !1059, file: !198, line: 27, type: !62)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !198, line: 26, column: 34)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !198, line: 26, column: 2)
!1061 = distinct !DILexicalBlock(scope: !1049, file: !198, line: 26, column: 2)
!1062 = !DILocalVariable(name: "pmd", scope: !1059, file: !198, line: 28, type: !68)
!1063 = !DILocalVariable(name: "use_gbpage", scope: !1059, file: !198, line: 29, type: !137)
!1064 = !DILocalVariable(name: "pudval", scope: !1065, file: !198, line: 52, type: !63)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !198, line: 51, column: 19)
!1066 = distinct !DILexicalBlock(scope: !1059, file: !198, line: 51, column: 7)
!1067 = !DILocation(line: 21, column: 52, scope: !1049)
!1068 = !DILocation(line: 21, column: 65, scope: !1049)
!1069 = !DILocation(line: 22, column: 20, scope: !1049)
!1070 = !DILocation(line: 22, column: 40, scope: !1049)
!1071 = !DILocation(line: 24, column: 2, scope: !1049)
!1072 = !DILocation(line: 24, column: 16, scope: !1049)
!1073 = !DILocation(line: 26, column: 2, scope: !1049)
!1074 = !DILocation(line: 26, column: 9, scope: !1060)
!1075 = !DILocation(line: 26, column: 16, scope: !1060)
!1076 = !DILocation(line: 26, column: 14, scope: !1060)
!1077 = !DILocation(line: 26, column: 2, scope: !1061)
!1078 = !DILocation(line: 27, column: 3, scope: !1059)
!1079 = !DILocation(line: 27, column: 10, scope: !1059)
!1080 = !DILocation(line: 27, column: 16, scope: !1059)
!1081 = !DILocation(line: 27, column: 37, scope: !1059)
!1082 = !DILocation(line: 27, column: 27, scope: !1059)
!1083 = !DILocation(line: 27, column: 25, scope: !1059)
!1084 = !DILocation(line: 28, column: 3, scope: !1059)
!1085 = !DILocation(line: 28, column: 10, scope: !1059)
!1086 = !DILocation(line: 29, column: 3, scope: !1059)
!1087 = !DILocation(line: 29, column: 8, scope: !1059)
!1088 = !DILocation(line: 31, column: 11, scope: !1059)
!1089 = !DILocation(line: 31, column: 16, scope: !1059)
!1090 = !DILocation(line: 31, column: 28, scope: !1059)
!1091 = !DILocation(line: 31, column: 8, scope: !1059)
!1092 = !DILocation(line: 32, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1059, file: !198, line: 32, column: 7)
!1094 = !DILocation(line: 32, column: 14, scope: !1093)
!1095 = !DILocation(line: 32, column: 12, scope: !1093)
!1096 = !DILocation(line: 32, column: 7, scope: !1059)
!1097 = !DILocation(line: 33, column: 11, scope: !1093)
!1098 = !DILocation(line: 33, column: 9, scope: !1093)
!1099 = !DILocation(line: 33, column: 4, scope: !1093)
!1100 = !DILocation(line: 36, column: 17, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1059, file: !198, line: 36, column: 7)
!1102 = !DILocation(line: 36, column: 7, scope: !1101)
!1103 = !DILocation(line: 36, column: 7, scope: !1059)
!1104 = !DILocation(line: 37, column: 4, scope: !1101)
!1105 = !DILocation(line: 40, column: 16, scope: !1059)
!1106 = !DILocation(line: 40, column: 22, scope: !1059)
!1107 = !DILocation(line: 40, column: 14, scope: !1059)
!1108 = !DILocation(line: 44, column: 19, scope: !1059)
!1109 = !DILocation(line: 44, column: 24, scope: !1059)
!1110 = !DILocation(line: 44, column: 37, scope: !1059)
!1111 = !DILocation(line: 44, column: 14, scope: !1059)
!1112 = !DILocation(line: 46, column: 19, scope: !1059)
!1113 = !DILocation(line: 46, column: 24, scope: !1059)
!1114 = !DILocation(line: 46, column: 37, scope: !1059)
!1115 = !DILocation(line: 46, column: 14, scope: !1059)
!1116 = !DILocation(line: 49, column: 31, scope: !1059)
!1117 = !DILocation(line: 49, column: 18, scope: !1059)
!1118 = !DILocation(line: 49, column: 17, scope: !1059)
!1119 = !DILocation(line: 49, column: 14, scope: !1059)
!1120 = !DILocation(line: 51, column: 7, scope: !1066)
!1121 = !DILocation(line: 51, column: 7, scope: !1059)
!1122 = !DILocation(line: 52, column: 4, scope: !1065)
!1123 = !DILocation(line: 52, column: 10, scope: !1065)
!1124 = !DILocation(line: 54, column: 13, scope: !1065)
!1125 = !DILocation(line: 55, column: 4, scope: !1065)
!1126 = !DILocation(line: 57, column: 3, scope: !1066)
!1127 = !DILocation(line: 59, column: 20, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1059, file: !198, line: 59, column: 7)
!1129 = !DILocation(line: 59, column: 7, scope: !1128)
!1130 = !DILocation(line: 59, column: 7, scope: !1059)
!1131 = !DILocation(line: 60, column: 21, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !198, line: 59, column: 26)
!1133 = !DILocation(line: 60, column: 10, scope: !1132)
!1134 = !DILocation(line: 60, column: 8, scope: !1132)
!1135 = !DILocation(line: 61, column: 19, scope: !1132)
!1136 = !DILocation(line: 61, column: 25, scope: !1132)
!1137 = !DILocation(line: 61, column: 30, scope: !1132)
!1138 = !DILocation(line: 61, column: 36, scope: !1132)
!1139 = !DILocation(line: 61, column: 4, scope: !1132)
!1140 = !DILocation(line: 62, column: 4, scope: !1132)
!1141 = !DILocation(line: 64, column: 18, scope: !1059)
!1142 = !DILocation(line: 64, column: 24, scope: !1059)
!1143 = !DILocation(line: 64, column: 39, scope: !1059)
!1144 = !DILocation(line: 64, column: 45, scope: !1059)
!1145 = !DILocation(line: 64, column: 7, scope: !1059)
!1146 = !DILocation(line: 65, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1059, file: !198, line: 65, column: 7)
!1148 = !DILocation(line: 65, column: 7, scope: !1059)
!1149 = !DILocation(line: 66, column: 4, scope: !1147)
!1150 = !DILocation(line: 67, column: 18, scope: !1059)
!1151 = !DILocation(line: 67, column: 24, scope: !1059)
!1152 = !DILocation(line: 67, column: 29, scope: !1059)
!1153 = !DILocation(line: 67, column: 35, scope: !1059)
!1154 = !DILocation(line: 67, column: 3, scope: !1059)
!1155 = !DILocation(line: 68, column: 3, scope: !1059)
!1156 = !DILocation(line: 69, column: 2, scope: !1060)
!1157 = !DILocation(line: 69, column: 2, scope: !1059)
!1158 = !DILocation(line: 26, column: 28, scope: !1060)
!1159 = !DILocation(line: 26, column: 26, scope: !1060)
!1160 = !DILocation(line: 26, column: 2, scope: !1060)
!1161 = distinct !{!1161, !1077, !1162, !335, !336}
!1162 = !DILocation(line: 69, column: 2, scope: !1061)
!1163 = !DILocation(line: 71, column: 2, scope: !1049)
!1164 = !DILocation(line: 72, column: 1, scope: !1049)
!1165 = distinct !DISubprogram(name: "native_set_p4d", scope: !479, file: !479, line: 142, type: !1166, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !26, !27}
!1168 = !{!1169, !1170, !1171}
!1169 = !DILocalVariable(name: "p4dp", arg: 1, scope: !1165, file: !479, line: 142, type: !26)
!1170 = !DILocalVariable(name: "p4d", arg: 2, scope: !1165, file: !479, line: 142, type: !27)
!1171 = !DILocalVariable(name: "pgd", scope: !1165, file: !479, line: 144, type: !34)
!1172 = !DILocation(line: 142, column: 42, scope: !1165)
!1173 = !DILocation(line: 142, column: 54, scope: !1165)
!1174 = !DILocation(line: 144, column: 2, scope: !1165)
!1175 = !DILocation(line: 144, column: 8, scope: !1165)
!1176 = !DILocation(line: 146, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1165, file: !479, line: 146, column: 6)
!1178 = !DILocation(line: 146, column: 27, scope: !1177)
!1179 = !DILocation(line: 146, column: 6, scope: !1165)
!1180 = !DILocation(line: 147, column: 3, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !479, line: 146, column: 72)
!1182 = !DILocation(line: 147, column: 3, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !479, line: 147, column: 3)
!1184 = !DILocation(line: 147, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1183, file: !479, line: 147, column: 3)
!1186 = !DILocation(line: 147, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !479, line: 147, column: 3)
!1188 = !DILocation(line: 148, column: 3, scope: !1181)
!1189 = !DILocation(line: 151, column: 8, scope: !1165)
!1190 = !DILocation(line: 151, column: 24, scope: !1165)
!1191 = !DILocation(line: 152, column: 8, scope: !1165)
!1192 = !DILocation(line: 152, column: 36, scope: !1165)
!1193 = !DILocation(line: 153, column: 2, scope: !1165)
!1194 = !DILocation(line: 153, column: 2, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1165, file: !479, line: 153, column: 2)
!1196 = !DILocation(line: 153, column: 2, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1195, file: !479, line: 153, column: 2)
!1198 = !DILocation(line: 153, column: 2, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !479, line: 153, column: 2)
!1200 = !DILocation(line: 154, column: 1, scope: !1165)
!1201 = distinct !DISubprogram(name: "native_make_p4d", scope: !28, file: !28, line: 348, type: !1202, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!27, !67}
!1204 = !{!1205}
!1205 = !DILocalVariable(name: "val", arg: 1, scope: !1201, file: !28, line: 348, type: !67)
!1206 = !DILocation(line: 348, column: 46, scope: !1201)
!1207 = !DILocation(line: 350, column: 17, scope: !1201)
!1208 = !DILocation(line: 350, column: 19, scope: !1201)
!1209 = !DILocation(line: 350, column: 2, scope: !1201)
!1210 = distinct !DISubprogram(name: "p4d_flags", scope: !28, file: !28, line: 432, type: !1211, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!32, !27}
!1213 = !{!1214}
!1214 = !DILocalVariable(name: "p4d", arg: 1, scope: !1210, file: !28, line: 432, type: !27)
!1215 = !DILocation(line: 432, column: 40, scope: !1210)
!1216 = !DILocation(line: 434, column: 9, scope: !1210)
!1217 = !DILocation(line: 434, column: 31, scope: !1210)
!1218 = !DILocation(line: 434, column: 29, scope: !1210)
!1219 = !DILocation(line: 434, column: 2, scope: !1210)
!1220 = distinct !DISubprogram(name: "native_p4d_val", scope: !28, file: !28, line: 353, type: !1211, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1221 = !{!1222}
!1222 = !DILocalVariable(name: "p4d", arg: 1, scope: !1220, file: !28, line: 353, type: !27)
!1223 = !DILocation(line: 353, column: 45, scope: !1220)
!1224 = !DILocation(line: 355, column: 13, scope: !1220)
!1225 = !DILocation(line: 355, column: 2, scope: !1220)
!1226 = distinct !DISubprogram(name: "p4d_flags_mask", scope: !28, file: !28, line: 427, type: !1211, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "p4d", arg: 1, scope: !1226, file: !28, line: 427, type: !27)
!1229 = !DILocation(line: 427, column: 45, scope: !1226)
!1230 = !DILocation(line: 429, column: 10, scope: !1226)
!1231 = !DILocation(line: 429, column: 9, scope: !1226)
!1232 = !DILocation(line: 429, column: 2, scope: !1226)
!1233 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !28, file: !28, line: 421, type: !1211, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1234 = !{!1235}
!1235 = !DILocalVariable(name: "p4d", arg: 1, scope: !1233, file: !28, line: 421, type: !27)
!1236 = !DILocation(line: 421, column: 43, scope: !1233)
!1237 = !DILocation(line: 424, column: 2, scope: !1233)
!1238 = distinct !DISubprogram(name: "pud_index", scope: !506, file: !506, line: 79, type: !1028, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "address", arg: 1, scope: !1238, file: !506, line: 79, type: !25)
!1241 = !DILocation(line: 79, column: 53, scope: !1238)
!1242 = !DILocation(line: 81, column: 10, scope: !1238)
!1243 = !DILocation(line: 81, column: 18, scope: !1238)
!1244 = !DILocation(line: 81, column: 32, scope: !1238)
!1245 = !DILocation(line: 81, column: 2, scope: !1238)
!1246 = distinct !DISubprogram(name: "pud_large", scope: !340, file: !340, line: 1073, type: !1247, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!201, !63}
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "pud", arg: 1, scope: !1246, file: !340, line: 1073, type: !63)
!1251 = !DILocation(line: 1073, column: 35, scope: !1246)
!1252 = !DILocation(line: 1075, column: 10, scope: !1246)
!1253 = !DILocation(line: 1075, column: 23, scope: !1246)
!1254 = !DILocation(line: 1075, column: 54, scope: !1246)
!1255 = !DILocation(line: 1075, column: 2, scope: !1246)
!1256 = distinct !DISubprogram(name: "pud_present", scope: !340, file: !340, line: 1056, type: !1247, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "pud", arg: 1, scope: !1256, file: !340, line: 1056, type: !63)
!1259 = !DILocation(line: 1056, column: 37, scope: !1256)
!1260 = !DILocation(line: 1058, column: 9, scope: !1256)
!1261 = !DILocation(line: 1058, column: 24, scope: !1256)
!1262 = !DILocation(line: 1058, column: 2, scope: !1256)
!1263 = distinct !DISubprogram(name: "native_make_pud", scope: !28, file: !28, line: 374, type: !1264, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!63, !73}
!1266 = !{!1267}
!1267 = !DILocalVariable(name: "val", arg: 1, scope: !1263, file: !28, line: 374, type: !73)
!1268 = !DILocation(line: 374, column: 46, scope: !1263)
!1269 = !DILocation(line: 376, column: 17, scope: !1263)
!1270 = !DILocation(line: 376, column: 19, scope: !1263)
!1271 = !DILocation(line: 376, column: 2, scope: !1263)
!1272 = distinct !DISubprogram(name: "native_set_pud", scope: !479, file: !479, line: 117, type: !1273, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !62, !63}
!1275 = !{!1276, !1277}
!1276 = !DILocalVariable(name: "pudp", arg: 1, scope: !1272, file: !479, line: 117, type: !62)
!1277 = !DILocalVariable(name: "pud", arg: 2, scope: !1272, file: !479, line: 117, type: !63)
!1278 = !DILocation(line: 117, column: 42, scope: !1272)
!1279 = !DILocation(line: 117, column: 54, scope: !1272)
!1280 = !DILocation(line: 119, column: 2, scope: !1272)
!1281 = !DILocation(line: 119, column: 2, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1272, file: !479, line: 119, column: 2)
!1283 = !DILocation(line: 119, column: 2, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !479, line: 119, column: 2)
!1285 = !DILocation(line: 119, column: 2, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !479, line: 119, column: 2)
!1287 = !DILocation(line: 120, column: 1, scope: !1272)
!1288 = distinct !DISubprogram(name: "pmd_offset", scope: !506, file: !506, line: 121, type: !1289, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!68, !62, !25}
!1291 = !{!1292, !1293}
!1292 = !DILocalVariable(name: "pud", arg: 1, scope: !1288, file: !506, line: 121, type: !62)
!1293 = !DILocalVariable(name: "address", arg: 2, scope: !1288, file: !506, line: 121, type: !25)
!1294 = !DILocation(line: 121, column: 40, scope: !1288)
!1295 = !DILocation(line: 121, column: 59, scope: !1288)
!1296 = !DILocation(line: 123, column: 22, scope: !1288)
!1297 = !DILocation(line: 123, column: 9, scope: !1288)
!1298 = !DILocation(line: 123, column: 39, scope: !1288)
!1299 = !DILocation(line: 123, column: 29, scope: !1288)
!1300 = !DILocation(line: 123, column: 27, scope: !1288)
!1301 = !DILocation(line: 123, column: 2, scope: !1288)
!1302 = distinct !DISubprogram(name: "ident_pmd_init", scope: !198, file: !198, line: 7, type: !1303, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !202, !68, !25, !25}
!1305 = !{!1306, !1307, !1308, !1309, !1310}
!1306 = !DILocalVariable(name: "info", arg: 1, scope: !1302, file: !198, line: 7, type: !202)
!1307 = !DILocalVariable(name: "pmd_page", arg: 2, scope: !1302, file: !198, line: 7, type: !68)
!1308 = !DILocalVariable(name: "addr", arg: 3, scope: !1302, file: !198, line: 8, type: !25)
!1309 = !DILocalVariable(name: "end", arg: 4, scope: !1302, file: !198, line: 8, type: !25)
!1310 = !DILocalVariable(name: "pmd", scope: !1311, file: !198, line: 12, type: !68)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !198, line: 11, column: 39)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !198, line: 11, column: 2)
!1313 = distinct !DILexicalBlock(scope: !1302, file: !198, line: 11, column: 2)
!1314 = !DILocation(line: 7, column: 53, scope: !1302)
!1315 = !DILocation(line: 7, column: 66, scope: !1302)
!1316 = !DILocation(line: 8, column: 21, scope: !1302)
!1317 = !DILocation(line: 8, column: 41, scope: !1302)
!1318 = !DILocation(line: 10, column: 7, scope: !1302)
!1319 = !DILocation(line: 11, column: 2, scope: !1302)
!1320 = !DILocation(line: 11, column: 9, scope: !1312)
!1321 = !DILocation(line: 11, column: 16, scope: !1312)
!1322 = !DILocation(line: 11, column: 14, scope: !1312)
!1323 = !DILocation(line: 11, column: 2, scope: !1313)
!1324 = !DILocation(line: 12, column: 3, scope: !1311)
!1325 = !DILocation(line: 12, column: 10, scope: !1311)
!1326 = !DILocation(line: 12, column: 16, scope: !1311)
!1327 = !DILocation(line: 12, column: 37, scope: !1311)
!1328 = !DILocation(line: 12, column: 27, scope: !1311)
!1329 = !DILocation(line: 12, column: 25, scope: !1311)
!1330 = !DILocation(line: 14, column: 20, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1311, file: !198, line: 14, column: 7)
!1332 = !DILocation(line: 14, column: 7, scope: !1331)
!1333 = !DILocation(line: 14, column: 7, scope: !1311)
!1334 = !DILocation(line: 15, column: 4, scope: !1331)
!1335 = !DILocation(line: 17, column: 3, scope: !1311)
!1336 = !DILocation(line: 18, column: 2, scope: !1312)
!1337 = !DILocation(line: 18, column: 2, scope: !1311)
!1338 = !DILocation(line: 11, column: 26, scope: !1312)
!1339 = !DILocation(line: 11, column: 2, scope: !1312)
!1340 = distinct !{!1340, !1323, !1341, !335, !336}
!1341 = !DILocation(line: 18, column: 2, scope: !1313)
!1342 = !DILocation(line: 19, column: 1, scope: !1302)
!1343 = distinct !DISubprogram(name: "native_pud_val", scope: !28, file: !28, line: 379, type: !1344, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!67, !63}
!1346 = !{!1347}
!1347 = !DILocalVariable(name: "pud", arg: 1, scope: !1343, file: !28, line: 379, type: !63)
!1348 = !DILocation(line: 379, column: 45, scope: !1343)
!1349 = !DILocation(line: 381, column: 13, scope: !1343)
!1350 = !DILocation(line: 381, column: 2, scope: !1343)
!1351 = distinct !DISubprogram(name: "pud_flags", scope: !28, file: !28, line: 450, type: !1344, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1352 = !{!1353}
!1353 = !DILocalVariable(name: "pud", arg: 1, scope: !1351, file: !28, line: 450, type: !63)
!1354 = !DILocation(line: 450, column: 40, scope: !1351)
!1355 = !DILocation(line: 452, column: 9, scope: !1351)
!1356 = !DILocation(line: 452, column: 31, scope: !1351)
!1357 = !DILocation(line: 452, column: 29, scope: !1351)
!1358 = !DILocation(line: 452, column: 2, scope: !1351)
!1359 = distinct !DISubprogram(name: "pud_flags_mask", scope: !28, file: !28, line: 445, type: !1344, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1360 = !{!1361}
!1361 = !DILocalVariable(name: "pud", arg: 1, scope: !1359, file: !28, line: 445, type: !63)
!1362 = !DILocation(line: 445, column: 45, scope: !1359)
!1363 = !DILocation(line: 447, column: 10, scope: !1359)
!1364 = !DILocation(line: 447, column: 9, scope: !1359)
!1365 = !DILocation(line: 447, column: 2, scope: !1359)
!1366 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !28, file: !28, line: 437, type: !1344, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "pud", arg: 1, scope: !1366, file: !28, line: 437, type: !63)
!1369 = !DILocation(line: 437, column: 43, scope: !1366)
!1370 = !DILocation(line: 439, column: 6, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !28, line: 439, column: 6)
!1372 = !DILocation(line: 439, column: 26, scope: !1371)
!1373 = !DILocation(line: 439, column: 6, scope: !1366)
!1374 = !DILocation(line: 440, column: 3, scope: !1371)
!1375 = !DILocation(line: 442, column: 3, scope: !1371)
!1376 = !DILocation(line: 443, column: 1, scope: !1366)
!1377 = distinct !DISubprogram(name: "pud_pgtable", scope: !340, file: !340, line: 1061, type: !1378, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1380)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!68, !63}
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "pud", arg: 1, scope: !1377, file: !340, line: 1061, type: !63)
!1382 = !DILocation(line: 1061, column: 40, scope: !1377)
!1383 = !DILocation(line: 1063, column: 18, scope: !1377)
!1384 = !DILocation(line: 1063, column: 2, scope: !1377)
!1385 = distinct !DISubprogram(name: "pmd_index", scope: !506, file: !506, line: 71, type: !1028, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "address", arg: 1, scope: !1385, file: !506, line: 71, type: !25)
!1388 = !DILocation(line: 71, column: 53, scope: !1385)
!1389 = !DILocation(line: 73, column: 10, scope: !1385)
!1390 = !DILocation(line: 73, column: 18, scope: !1385)
!1391 = !DILocation(line: 73, column: 32, scope: !1385)
!1392 = !DILocation(line: 73, column: 2, scope: !1385)
!1393 = distinct !DISubprogram(name: "pmd_present", scope: !340, file: !340, line: 975, type: !1394, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!201, !69}
!1396 = !{!1397}
!1397 = !DILocalVariable(name: "pmd", arg: 1, scope: !1393, file: !340, line: 975, type: !69)
!1398 = !DILocation(line: 975, column: 37, scope: !1393)
!1399 = !DILocation(line: 983, column: 9, scope: !1393)
!1400 = !DILocation(line: 983, column: 24, scope: !1393)
!1401 = !DILocation(line: 983, column: 2, scope: !1393)
!1402 = distinct !DISubprogram(name: "native_set_pmd", scope: !479, file: !479, line: 81, type: !1403, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !68, !69}
!1405 = !{!1406, !1407}
!1406 = !DILocalVariable(name: "pmdp", arg: 1, scope: !1402, file: !479, line: 81, type: !68)
!1407 = !DILocalVariable(name: "pmd", arg: 2, scope: !1402, file: !479, line: 81, type: !69)
!1408 = !DILocation(line: 81, column: 42, scope: !1402)
!1409 = !DILocation(line: 81, column: 54, scope: !1402)
!1410 = !DILocation(line: 83, column: 2, scope: !1402)
!1411 = !DILocation(line: 83, column: 2, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1402, file: !479, line: 83, column: 2)
!1413 = !DILocation(line: 83, column: 2, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1412, file: !479, line: 83, column: 2)
!1415 = !DILocation(line: 83, column: 2, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !479, line: 83, column: 2)
!1417 = !DILocation(line: 84, column: 1, scope: !1402)
!1418 = distinct !DISubprogram(name: "native_make_pmd", scope: !28, file: !28, line: 398, type: !1419, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!69, !73}
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "val", arg: 1, scope: !1418, file: !28, line: 398, type: !73)
!1423 = !DILocation(line: 398, column: 46, scope: !1418)
!1424 = !DILocation(line: 400, column: 17, scope: !1418)
!1425 = !DILocation(line: 400, column: 26, scope: !1418)
!1426 = !DILocation(line: 400, column: 2, scope: !1418)
!1427 = distinct !DISubprogram(name: "pmd_flags", scope: !28, file: !28, line: 468, type: !1428, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!73, !69}
!1430 = !{!1431}
!1431 = !DILocalVariable(name: "pmd", arg: 1, scope: !1427, file: !28, line: 468, type: !69)
!1432 = !DILocation(line: 468, column: 40, scope: !1427)
!1433 = !DILocation(line: 470, column: 9, scope: !1427)
!1434 = !DILocation(line: 470, column: 31, scope: !1427)
!1435 = !DILocation(line: 470, column: 29, scope: !1427)
!1436 = !DILocation(line: 470, column: 2, scope: !1427)
!1437 = distinct !DISubprogram(name: "native_pmd_val", scope: !28, file: !28, line: 403, type: !1428, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1438)
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "pmd", arg: 1, scope: !1437, file: !28, line: 403, type: !69)
!1440 = !DILocation(line: 403, column: 45, scope: !1437)
!1441 = !DILocation(line: 405, column: 13, scope: !1437)
!1442 = !DILocation(line: 405, column: 2, scope: !1437)
!1443 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !28, file: !28, line: 463, type: !1428, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1444)
!1444 = !{!1445}
!1445 = !DILocalVariable(name: "pmd", arg: 1, scope: !1443, file: !28, line: 463, type: !69)
!1446 = !DILocation(line: 463, column: 45, scope: !1443)
!1447 = !DILocation(line: 465, column: 10, scope: !1443)
!1448 = !DILocation(line: 465, column: 9, scope: !1443)
!1449 = !DILocation(line: 465, column: 2, scope: !1443)
!1450 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !28, file: !28, line: 455, type: !1428, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1451 = !{!1452}
!1452 = !DILocalVariable(name: "pmd", arg: 1, scope: !1450, file: !28, line: 455, type: !69)
!1453 = !DILocation(line: 455, column: 43, scope: !1450)
!1454 = !DILocation(line: 457, column: 6, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !28, line: 457, column: 6)
!1456 = !DILocation(line: 457, column: 26, scope: !1455)
!1457 = !DILocation(line: 457, column: 6, scope: !1450)
!1458 = !DILocation(line: 458, column: 3, scope: !1455)
!1459 = !DILocation(line: 460, column: 3, scope: !1455)
!1460 = !DILocation(line: 461, column: 1, scope: !1450)
!1461 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !340, file: !340, line: 910, type: !1462, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!34, !33, !34}
!1464 = !{!1465, !1466}
!1465 = !DILocalVariable(name: "pgdp", arg: 1, scope: !1461, file: !340, line: 910, type: !33)
!1466 = !DILocalVariable(name: "pgd", arg: 2, scope: !1461, file: !340, line: 910, type: !34)
!1467 = !DILocation(line: 910, column: 47, scope: !1461)
!1468 = !DILocation(line: 910, column: 59, scope: !1461)
!1469 = !DILocation(line: 912, column: 9, scope: !1461)
!1470 = !DILocation(line: 912, column: 2, scope: !1461)
!1471 = distinct !DISubprogram(name: "p4d_pgtable", scope: !340, file: !340, line: 1102, type: !1472, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!62, !27}
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "p4d", arg: 1, scope: !1471, file: !340, line: 1102, type: !27)
!1476 = !DILocation(line: 1102, column: 40, scope: !1471)
!1477 = !DILocation(line: 1104, column: 18, scope: !1471)
!1478 = !DILocation(line: 1104, column: 2, scope: !1471)
!1479 = !DISubprogram(name: "__putstr", scope: !712, file: !712, line: 64, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !975}
!1482 = !DISubprogram(name: "__puthex", scope: !712, file: !712, line: 65, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = distinct !DISubprogram(name: "__read_cr3", scope: !720, file: !720, line: 156, type: !697, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1484 = !DILocation(line: 158, column: 9, scope: !1483)
!1485 = !DILocation(line: 158, column: 2, scope: !1483)
!1486 = distinct !DISubprogram(name: "__native_read_cr3", scope: !720, file: !720, line: 45, type: !697, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1487)
!1487 = !{!1488}
!1488 = !DILocalVariable(name: "val", scope: !1486, file: !720, line: 47, type: !25)
!1489 = !DILocation(line: 47, column: 2, scope: !1486)
!1490 = !DILocation(line: 47, column: 16, scope: !1486)
!1491 = !DILocation(line: 48, column: 2, scope: !1486)
!1492 = !{i64 1695733, i64 1695748}
!1493 = !DILocation(line: 49, column: 9, scope: !1486)
!1494 = !DILocation(line: 50, column: 1, scope: !1486)
!1495 = !DILocation(line: 49, column: 2, scope: !1486)
!1496 = distinct !DISubprogram(name: "native_write_cr3", scope: !720, file: !720, line: 52, type: !713, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1497)
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "val", arg: 1, scope: !1496, file: !720, line: 52, type: !25)
!1499 = !DILocation(line: 52, column: 51, scope: !1496)
!1500 = !DILocation(line: 54, column: 38, scope: !1496)
!1501 = !DILocation(line: 54, column: 2, scope: !1496)
!1502 = !{i64 1695870}
!1503 = !DILocation(line: 55, column: 1, scope: !1496)
!1504 = distinct !DISubprogram(name: "pmd_large", scope: !340, file: !340, line: 264, type: !1394, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "pte", arg: 1, scope: !1504, file: !340, line: 264, type: !69)
!1507 = !DILocation(line: 264, column: 35, scope: !1504)
!1508 = !DILocation(line: 266, column: 9, scope: !1504)
!1509 = !DILocation(line: 266, column: 24, scope: !1504)
!1510 = !DILocation(line: 266, column: 2, scope: !1504)
!1511 = distinct !DISubprogram(name: "split_large_pmd", scope: !3, file: !3, line: 192, type: !1512, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!91, !202, !68, !25}
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1515 = !DILocalVariable(name: "info", arg: 1, scope: !1511, file: !3, line: 192, type: !202)
!1516 = !DILocalVariable(name: "pmdp", arg: 2, scope: !1511, file: !3, line: 193, type: !68)
!1517 = !DILocalVariable(name: "__address", arg: 3, scope: !1511, file: !3, line: 193, type: !25)
!1518 = !DILocalVariable(name: "page_flags", scope: !1511, file: !3, line: 195, type: !25)
!1519 = !DILocalVariable(name: "address", scope: !1511, file: !3, line: 196, type: !25)
!1520 = !DILocalVariable(name: "pte", scope: !1511, file: !3, line: 197, type: !91)
!1521 = !DILocalVariable(name: "pmd", scope: !1511, file: !3, line: 198, type: !69)
!1522 = !DILocalVariable(name: "i", scope: !1511, file: !3, line: 199, type: !201)
!1523 = !DILocation(line: 192, column: 56, scope: !1511)
!1524 = !DILocation(line: 193, column: 17, scope: !1511)
!1525 = !DILocation(line: 193, column: 37, scope: !1511)
!1526 = !DILocation(line: 195, column: 2, scope: !1511)
!1527 = !DILocation(line: 195, column: 16, scope: !1511)
!1528 = !DILocation(line: 196, column: 2, scope: !1511)
!1529 = !DILocation(line: 196, column: 16, scope: !1511)
!1530 = !DILocation(line: 197, column: 2, scope: !1511)
!1531 = !DILocation(line: 197, column: 9, scope: !1511)
!1532 = !DILocation(line: 198, column: 2, scope: !1511)
!1533 = !DILocation(line: 198, column: 8, scope: !1511)
!1534 = !DILocation(line: 199, column: 2, scope: !1511)
!1535 = !DILocation(line: 199, column: 6, scope: !1511)
!1536 = !DILocation(line: 201, column: 17, scope: !1511)
!1537 = !DILocation(line: 201, column: 23, scope: !1511)
!1538 = !DILocation(line: 201, column: 38, scope: !1511)
!1539 = !DILocation(line: 201, column: 44, scope: !1511)
!1540 = !DILocation(line: 201, column: 6, scope: !1511)
!1541 = !DILocation(line: 202, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 202, column: 6)
!1543 = !DILocation(line: 202, column: 6, scope: !1511)
!1544 = !DILocation(line: 203, column: 3, scope: !1542)
!1545 = !DILocation(line: 205, column: 16, scope: !1511)
!1546 = !DILocation(line: 205, column: 26, scope: !1511)
!1547 = !DILocation(line: 205, column: 14, scope: !1511)
!1548 = !DILocation(line: 207, column: 16, scope: !1511)
!1549 = !DILocation(line: 207, column: 22, scope: !1511)
!1550 = !DILocation(line: 207, column: 32, scope: !1511)
!1551 = !DILocation(line: 207, column: 14, scope: !1511)
!1552 = !DILocation(line: 210, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 210, column: 2)
!1554 = !DILocation(line: 210, column: 7, scope: !1553)
!1555 = !DILocation(line: 210, column: 14, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 210, column: 2)
!1557 = !DILocation(line: 210, column: 16, scope: !1556)
!1558 = !DILocation(line: 210, column: 2, scope: !1553)
!1559 = !DILocation(line: 211, column: 3, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 210, column: 37)
!1561 = !DILocation(line: 212, column: 11, scope: !1560)
!1562 = !DILocation(line: 213, column: 2, scope: !1560)
!1563 = !DILocation(line: 210, column: 33, scope: !1556)
!1564 = !DILocation(line: 210, column: 2, scope: !1556)
!1565 = distinct !{!1565, !1558, !1566, !335, !336}
!1566 = !DILocation(line: 213, column: 2, scope: !1553)
!1567 = !DILocation(line: 224, column: 8, scope: !1511)
!1568 = !DILocation(line: 225, column: 2, scope: !1511)
!1569 = !DILocation(line: 227, column: 12, scope: !1511)
!1570 = !DILocation(line: 227, column: 2, scope: !1511)
!1571 = !DILocation(line: 229, column: 9, scope: !1511)
!1572 = !DILocation(line: 229, column: 25, scope: !1511)
!1573 = !DILocation(line: 229, column: 15, scope: !1511)
!1574 = !DILocation(line: 229, column: 13, scope: !1511)
!1575 = !DILocation(line: 229, column: 2, scope: !1511)
!1576 = !DILocation(line: 230, column: 1, scope: !1511)
!1577 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !506, file: !506, line: 92, type: !1578, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!91, !68, !25}
!1580 = !{!1581, !1582}
!1581 = !DILocalVariable(name: "pmd", arg: 1, scope: !1577, file: !506, line: 92, type: !68)
!1582 = !DILocalVariable(name: "address", arg: 2, scope: !1577, file: !506, line: 92, type: !25)
!1583 = !DILocation(line: 92, column: 47, scope: !1577)
!1584 = !DILocation(line: 92, column: 66, scope: !1577)
!1585 = !DILocation(line: 94, column: 34, scope: !1577)
!1586 = !DILocation(line: 94, column: 18, scope: !1577)
!1587 = !DILocation(line: 94, column: 9, scope: !1577)
!1588 = !DILocation(line: 94, column: 51, scope: !1577)
!1589 = !DILocation(line: 94, column: 41, scope: !1577)
!1590 = !DILocation(line: 94, column: 39, scope: !1577)
!1591 = !DILocation(line: 94, column: 2, scope: !1577)
!1592 = distinct !DISubprogram(name: "clflush_page", scope: !3, file: !3, line: 232, type: !713, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1593 = !{!1594, !1595, !1596, !1597, !1598}
!1594 = !DILocalVariable(name: "address", arg: 1, scope: !1592, file: !3, line: 232, type: !25)
!1595 = !DILocalVariable(name: "flush_size", scope: !1592, file: !3, line: 234, type: !7)
!1596 = !DILocalVariable(name: "cl", scope: !1592, file: !3, line: 235, type: !96)
!1597 = !DILocalVariable(name: "start", scope: !1592, file: !3, line: 235, type: !96)
!1598 = !DILocalVariable(name: "end", scope: !1592, file: !3, line: 235, type: !96)
!1599 = !DILocation(line: 232, column: 40, scope: !1592)
!1600 = !DILocation(line: 234, column: 2, scope: !1592)
!1601 = !DILocation(line: 234, column: 15, scope: !1592)
!1602 = !DILocation(line: 235, column: 2, scope: !1592)
!1603 = !DILocation(line: 235, column: 8, scope: !1592)
!1604 = !DILocation(line: 235, column: 13, scope: !1592)
!1605 = !DILocation(line: 235, column: 21, scope: !1592)
!1606 = !DILocation(line: 241, column: 13, scope: !1592)
!1607 = !DILocation(line: 242, column: 24, scope: !1592)
!1608 = !DILocation(line: 242, column: 32, scope: !1592)
!1609 = !DILocation(line: 242, column: 15, scope: !1592)
!1610 = !DILocation(line: 242, column: 13, scope: !1592)
!1611 = !DILocation(line: 243, column: 15, scope: !1592)
!1612 = !DILocation(line: 243, column: 21, scope: !1592)
!1613 = !DILocation(line: 243, column: 13, scope: !1592)
!1614 = !DILocation(line: 249, column: 2, scope: !1592)
!1615 = !{i64 7535}
!1616 = !DILocation(line: 251, column: 12, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 251, column: 2)
!1618 = !DILocation(line: 251, column: 10, scope: !1617)
!1619 = !DILocation(line: 251, column: 7, scope: !1617)
!1620 = !DILocation(line: 251, column: 19, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 251, column: 2)
!1622 = !DILocation(line: 251, column: 25, scope: !1621)
!1623 = !DILocation(line: 251, column: 22, scope: !1621)
!1624 = !DILocation(line: 251, column: 2, scope: !1617)
!1625 = !DILocation(line: 252, column: 11, scope: !1621)
!1626 = !DILocation(line: 252, column: 3, scope: !1621)
!1627 = !DILocation(line: 251, column: 36, scope: !1621)
!1628 = !DILocation(line: 251, column: 33, scope: !1621)
!1629 = !DILocation(line: 251, column: 2, scope: !1621)
!1630 = distinct !{!1630, !1624, !1631, !335, !336}
!1631 = !DILocation(line: 252, column: 13, scope: !1617)
!1632 = !DILocation(line: 253, column: 1, scope: !1592)
!1633 = distinct !DISubprogram(name: "snp_set_page_shared", scope: !712, file: !712, line: 162, type: !713, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1634)
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "paddr", arg: 1, scope: !1633, file: !712, line: 162, type: !25)
!1636 = !DILocation(line: 162, column: 54, scope: !1633)
!1637 = !DILocation(line: 162, column: 63, scope: !1633)
!1638 = distinct !DISubprogram(name: "pte_set_flags", scope: !340, file: !340, line: 314, type: !1639, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!92, !92, !23}
!1641 = !{!1642, !1643, !1644}
!1642 = !DILocalVariable(name: "pte", arg: 1, scope: !1638, file: !340, line: 314, type: !92)
!1643 = !DILocalVariable(name: "set", arg: 2, scope: !1638, file: !340, line: 314, type: !23)
!1644 = !DILocalVariable(name: "v", scope: !1638, file: !340, line: 316, type: !23)
!1645 = !DILocation(line: 314, column: 41, scope: !1638)
!1646 = !DILocation(line: 314, column: 55, scope: !1638)
!1647 = !DILocation(line: 316, column: 2, scope: !1638)
!1648 = !DILocation(line: 316, column: 11, scope: !1638)
!1649 = !DILocation(line: 316, column: 15, scope: !1638)
!1650 = !DILocation(line: 318, column: 25, scope: !1638)
!1651 = !DILocation(line: 318, column: 29, scope: !1638)
!1652 = !DILocation(line: 318, column: 27, scope: !1638)
!1653 = !DILocation(line: 318, column: 9, scope: !1638)
!1654 = !DILocation(line: 319, column: 1, scope: !1638)
!1655 = distinct !DISubprogram(name: "pte_clear_flags", scope: !340, file: !340, line: 321, type: !1639, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DILocalVariable(name: "pte", arg: 1, scope: !1655, file: !340, line: 321, type: !92)
!1658 = !DILocalVariable(name: "clear", arg: 2, scope: !1655, file: !340, line: 321, type: !23)
!1659 = !DILocalVariable(name: "v", scope: !1655, file: !340, line: 323, type: !23)
!1660 = !DILocation(line: 321, column: 43, scope: !1655)
!1661 = !DILocation(line: 321, column: 57, scope: !1655)
!1662 = !DILocation(line: 323, column: 2, scope: !1655)
!1663 = !DILocation(line: 323, column: 11, scope: !1655)
!1664 = !DILocation(line: 323, column: 15, scope: !1655)
!1665 = !DILocation(line: 325, column: 25, scope: !1655)
!1666 = !DILocation(line: 325, column: 30, scope: !1655)
!1667 = !DILocation(line: 325, column: 29, scope: !1655)
!1668 = !DILocation(line: 325, column: 27, scope: !1655)
!1669 = !DILocation(line: 325, column: 9, scope: !1655)
!1670 = !DILocation(line: 326, column: 1, scope: !1655)
!1671 = distinct !DISubprogram(name: "native_set_pte", scope: !479, file: !479, line: 65, type: !1672, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !91, !92}
!1674 = !{!1675, !1676}
!1675 = !DILocalVariable(name: "ptep", arg: 1, scope: !1671, file: !479, line: 65, type: !91)
!1676 = !DILocalVariable(name: "pte", arg: 2, scope: !1671, file: !479, line: 65, type: !92)
!1677 = !DILocation(line: 65, column: 42, scope: !1671)
!1678 = !DILocation(line: 65, column: 54, scope: !1671)
!1679 = !DILocation(line: 67, column: 2, scope: !1671)
!1680 = !DILocation(line: 67, column: 2, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1671, file: !479, line: 67, column: 2)
!1682 = !DILocation(line: 67, column: 2, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1681, file: !479, line: 67, column: 2)
!1684 = !DILocation(line: 67, column: 2, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !479, line: 67, column: 2)
!1686 = !DILocation(line: 68, column: 1, scope: !1671)
!1687 = distinct !DISubprogram(name: "snp_set_page_private", scope: !712, file: !712, line: 161, type: !713, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "paddr", arg: 1, scope: !1687, file: !712, line: 161, type: !25)
!1690 = !DILocation(line: 161, column: 55, scope: !1687)
!1691 = !DILocation(line: 161, column: 64, scope: !1687)
!1692 = distinct !DISubprogram(name: "native_make_pte", scope: !28, file: !28, line: 473, type: !1693, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!92, !23}
!1695 = !{!1696}
!1696 = !DILocalVariable(name: "val", arg: 1, scope: !1692, file: !28, line: 473, type: !23)
!1697 = !DILocation(line: 473, column: 46, scope: !1692)
!1698 = !DILocation(line: 475, column: 17, scope: !1692)
!1699 = !DILocation(line: 475, column: 26, scope: !1692)
!1700 = !DILocation(line: 475, column: 2, scope: !1692)
!1701 = distinct !DISubprogram(name: "pte_index", scope: !506, file: !506, line: 65, type: !1028, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1702)
!1702 = !{!1703}
!1703 = !DILocalVariable(name: "address", arg: 1, scope: !1701, file: !506, line: 65, type: !25)
!1704 = !DILocation(line: 65, column: 53, scope: !1701)
!1705 = !DILocation(line: 67, column: 10, scope: !1701)
!1706 = !DILocation(line: 67, column: 18, scope: !1701)
!1707 = !DILocation(line: 67, column: 33, scope: !1701)
!1708 = !DILocation(line: 67, column: 2, scope: !1701)
!1709 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !340, file: !340, line: 1012, type: !1710, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!25, !69}
!1712 = !{!1713}
!1713 = !DILocalVariable(name: "pmd", arg: 1, scope: !1709, file: !340, line: 1012, type: !69)
!1714 = !DILocation(line: 1012, column: 50, scope: !1709)
!1715 = !DILocation(line: 1014, column: 24, scope: !1709)
!1716 = !DILocation(line: 1014, column: 9, scope: !1709)
!1717 = !DILocation(line: 1014, column: 2, scope: !1709)
!1718 = distinct !DISubprogram(name: "clflush", scope: !720, file: !720, line: 178, type: !1719, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1723)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1723 = !{!1724}
!1724 = !DILocalVariable(name: "__p", arg: 1, scope: !1718, file: !720, line: 178, type: !1721)
!1725 = !DILocation(line: 178, column: 52, scope: !1718)
!1726 = !DILocation(line: 180, column: 62, scope: !1718)
!1727 = !DILocation(line: 180, column: 2, scope: !1718)
!1728 = !{i64 1698219}
!1729 = !DILocation(line: 181, column: 1, scope: !1718)
!1730 = distinct !DISubprogram(name: "native_pte_val", scope: !28, file: !28, line: 478, type: !1731, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!23, !92}
!1733 = !{!1734}
!1734 = !DILocalVariable(name: "pte", arg: 1, scope: !1730, file: !28, line: 478, type: !92)
!1735 = !DILocation(line: 478, column: 45, scope: !1730)
!1736 = !DILocation(line: 480, column: 13, scope: !1730)
!1737 = !DILocation(line: 480, column: 2, scope: !1730)
