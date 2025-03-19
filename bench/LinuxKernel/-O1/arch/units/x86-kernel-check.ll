; ModuleID = 'arch/x86/kernel/check.c'
source_filename = "arch/x86/kernel/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_check__283_186_start_periodic_check_for_corruption\22, \22a\22\09\09"
module asm "__initcall__kmod_check__283_186_start_periodic_check_for_corruption6:\09\09\09"
module asm ".long\09__initstub__kmod_check__283_186_start_periodic_check_for_corruption6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, ptr, ptr }
%struct.scan_area = type { i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__setup_str_set_corruption_check = internal constant [24 x i8] c"memory_corruption_check\00", section ".init.rodata", align 1, !dbg !0
@__setup_set_corruption_check = internal global %struct.obs_kernel_param { ptr @__setup_str_set_corruption_check, ptr @set_corruption_check, i32 1 }, section ".init.setup", align 8, !dbg !57
@__setup_str_set_corruption_check_period = internal constant [31 x i8] c"memory_corruption_check_period\00", section ".init.rodata", align 1, !dbg !100
@__setup_set_corruption_check_period = internal global %struct.obs_kernel_param { ptr @__setup_str_set_corruption_check_period, ptr @set_corruption_check_period, i32 1 }, section ".init.setup", align 8, !dbg !73
@__setup_str_set_corruption_check_size = internal constant [29 x i8] c"memory_corruption_check_size\00", section ".init.rodata", align 1, !dbg !112
@__setup_set_corruption_check_size = internal global %struct.obs_kernel_param { ptr @__setup_str_set_corruption_check_size, ptr @set_corruption_check_size, i32 1 }, section ".init.setup", align 8, !dbg !75
@memory_corruption_check = internal global i32 -1, section ".data..read_mostly", align 4, !dbg !122
@corruption_check_size = internal global i32 65536, section ".data..read_mostly", align 4, !dbg !124
@memblock = external dso_local global %struct.memblock, align 8
@scan_areas = internal global [8 x %struct.scan_area] zeroinitializer, align 16, !dbg !84
@num_scan_areas = internal global i32 0, align 4, !dbg !93
@page_offset_base = external dso_local global i64, align 8
@.str = private unnamed_addr constant [54 x i8] c"\016check: Scanning %d areas for low memory corruption\0A\00", align 1, !dbg !77
@__UNIQUE_ID___addressable___initstub__kmod_check__283_186_start_periodic_check_for_corruption6284 = internal global ptr @__initstub__kmod_check__283_186_start_periodic_check_for_corruption6, section ".discard.addressable", align 8, !dbg !82
@.str.1 = private unnamed_addr constant [61 x i8] c"\013check: memory_corruption_check config string not provided\0A\00", align 1, !dbg !95
@.str.2 = private unnamed_addr constant [68 x i8] c"\013check: memory_corruption_check_period config string not provided\0A\00", align 1, !dbg !105
@corruption_check_period = internal global i32 60, section ".data..read_mostly", align 4, !dbg !110
@.str.3 = private unnamed_addr constant [66 x i8] c"\013check: memory_corruption_check_size config string not provided\0A\00", align 1, !dbg !117
@.str.4 = private unnamed_addr constant [62 x i8] c"\016check: Scanning for low memory corruption every %d seconds\0A\00", align 1, !dbg !126
@bios_check_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @bios_check_work, i64 8), ptr getelementptr (i8, ptr @bios_check_work, i64 8) }, ptr @check_corruption }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 8, !dbg !131
@system_wq = external dso_local global ptr, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"\013check: Corrupted low memory at %p (%lx phys) = %08lx\0A\00", align 1, !dbg !184
@check_for_bios_corruption.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !189
@.str.6 = private unnamed_addr constant [44 x i8] c"\013Memory corruption detected in low memory\0A\00", align 1, !dbg !217
@.str.7 = private unnamed_addr constant [24 x i8] c"arch/x86/kernel/check.c\00", align 1, !dbg !222
@phys_base = external dso_local global i64, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__setup_set_corruption_check, ptr @__setup_set_corruption_check_period, ptr @__setup_set_corruption_check_size, ptr @__UNIQUE_ID___addressable___initstub__kmod_check__283_186_start_periodic_check_for_corruption6284], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_corruption_check(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !237 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !239, metadata !DIExpression()), !dbg !247
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !240, metadata !DIExpression()), !dbg !249
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %val, metadata !246, metadata !DIExpression()), !dbg !251
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !252
  %tobool = icmp ne ptr %0, null, !dbg !252
  br i1 %tobool, label %if.end, label %if.then, !dbg !254

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !255

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !258

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !258

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #11, !dbg !255
  store i32 %call, ptr %tmp, align 4, !dbg !258
  %1 = load i32, ptr %tmp, align 4, !dbg !255
  store i32 -22, ptr %retval, align 4, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !261
  %call1 = call i32 @kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef %val) #12, !dbg !262
  %conv = sext i32 %call1 to i64, !dbg !262
  store i64 %conv, ptr %ret, align 8, !dbg !263
  %3 = load i64, ptr %ret, align 8, !dbg !264
  %tobool2 = icmp ne i64 %3, 0, !dbg !264
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !266

if.then3:                                         ; preds = %if.end
  %4 = load i64, ptr %ret, align 8, !dbg !267
  %conv4 = trunc i64 %4 to i32, !dbg !267
  store i32 %conv4, ptr %retval, align 4, !dbg !268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !268

if.end5:                                          ; preds = %if.end
  %5 = load i64, ptr %val, align 8, !dbg !269
  %conv6 = trunc i64 %5 to i32, !dbg !269
  store i32 %conv6, ptr @memory_corruption_check, align 4, !dbg !270
  store i32 0, ptr %retval, align 4, !dbg !271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !271

cleanup:                                          ; preds = %if.end5, %if.then3, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !272
  %6 = load i32, ptr %retval, align 4, !dbg !272
  ret i32 %6, !dbg !272
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_corruption_check_period(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !273 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !275, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !276, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !281
  call void @llvm.dbg.declare(metadata ptr %val, metadata !277, metadata !DIExpression()), !dbg !282
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !283
  %tobool = icmp ne ptr %0, null, !dbg !283
  br i1 %tobool, label %if.end, label %if.then, !dbg !285

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !286

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !289

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !289

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #11, !dbg !286
  store i32 %call, ptr %tmp, align 4, !dbg !289
  %1 = load i32, ptr %tmp, align 4, !dbg !286
  store i32 -22, ptr %retval, align 4, !dbg !291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !291

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !292
  %call1 = call i32 @kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef %val) #12, !dbg !293
  %conv = sext i32 %call1 to i64, !dbg !293
  store i64 %conv, ptr %ret, align 8, !dbg !294
  %3 = load i64, ptr %ret, align 8, !dbg !295
  %tobool2 = icmp ne i64 %3, 0, !dbg !295
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !297

if.then3:                                         ; preds = %if.end
  %4 = load i64, ptr %ret, align 8, !dbg !298
  %conv4 = trunc i64 %4 to i32, !dbg !298
  store i32 %conv4, ptr %retval, align 4, !dbg !299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !299

if.end5:                                          ; preds = %if.end
  %5 = load i64, ptr %val, align 8, !dbg !300
  %conv6 = trunc i64 %5 to i32, !dbg !300
  store i32 %conv6, ptr @corruption_check_period, align 4, !dbg !301
  store i32 0, ptr %retval, align 4, !dbg !302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !302

cleanup:                                          ; preds = %if.end5, %if.then3, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !303
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !303
  %6 = load i32, ptr %retval, align 4, !dbg !303
  ret i32 %6, !dbg !303
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_corruption_check_size(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !304 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %size = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !306, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %end, metadata !307, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #10, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %size, metadata !308, metadata !DIExpression()), !dbg !313
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !314
  %tobool = icmp ne ptr %0, null, !dbg !314
  br i1 %tobool, label %if.end, label %if.then, !dbg !316

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !317

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !320

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !320

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #11, !dbg !317
  store i32 %call, ptr %tmp, align 4, !dbg !320
  %1 = load i32, ptr %tmp, align 4, !dbg !317
  store i32 -22, ptr %retval, align 4, !dbg !322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !322

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !323
  %call1 = call i64 @memparse(ptr noundef %2, ptr noundef %end) #12, !dbg !324
  %conv = trunc i64 %call1 to i32, !dbg !324
  store i32 %conv, ptr %size, align 4, !dbg !325
  %3 = load ptr, ptr %end, align 8, !dbg !326
  %4 = load i8, ptr %3, align 1, !dbg !328
  %conv2 = zext i8 %4 to i32, !dbg !328
  %cmp = icmp eq i32 %conv2, 0, !dbg !329
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !330

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %size, align 4, !dbg !331
  store i32 %5, ptr @corruption_check_size, align 4, !dbg !332
  br label %if.end5, !dbg !333

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load i32, ptr %size, align 4, !dbg !334
  %7 = load i32, ptr @corruption_check_size, align 4, !dbg !335
  %cmp6 = icmp eq i32 %6, %7, !dbg !336
  %8 = zext i1 %cmp6 to i64, !dbg !337
  %cond = select i1 %cmp6, i32 0, i32 -22, !dbg !337
  store i32 %cond, ptr %retval, align 4, !dbg !338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !338

cleanup:                                          ; preds = %if.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #10, !dbg !339
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !339
  %9 = load i32, ptr %retval, align 4, !dbg !339
  ret i32 %9, !dbg !339
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @setup_bios_corruption_check() #0 section ".init.text" align 16 !dbg !340 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___val277 = alloca i64, align 8
  %__UNIQUE_ID___lo278 = alloca i64, align 8
  %__UNIQUE_ID___hi279 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %__UNIQUE_ID___val280 = alloca i64, align 8
  %__UNIQUE_ID___lo281 = alloca i64, align 8
  %__UNIQUE_ID___hi282 = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  %tmp50 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %start, metadata !342, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %end, metadata !343, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %i, metadata !344, metadata !DIExpression()), !dbg !362
  %0 = load i32, ptr @memory_corruption_check, align 4, !dbg !363
  %cmp = icmp eq i32 %0, -1, !dbg !365
  br i1 %cmp, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %entry
  store i32 1, ptr @memory_corruption_check, align 4, !dbg !367
  br label %if.end, !dbg !369

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @corruption_check_size, align 4, !dbg !370
  %cmp1 = icmp eq i32 %1, 0, !dbg !372
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !373

if.then2:                                         ; preds = %if.end
  store i32 0, ptr @memory_corruption_check, align 4, !dbg !374
  br label %if.end3, !dbg !375

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr @memory_corruption_check, align 4, !dbg !376
  %tobool = icmp ne i32 %2, 0, !dbg !376
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !378

if.then4:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

if.end5:                                          ; preds = %if.end3
  %3 = load i32, ptr @corruption_check_size, align 4, !dbg !380
  %sub = sub i32 %3, 1, !dbg !380
  %or = or i32 %sub, 4095, !dbg !380
  %add = add i32 %or, 1, !dbg !380
  store i32 %add, ptr @corruption_check_size, align 4, !dbg !381
  store i64 0, ptr %i, align 8, !dbg !382
  call void @__next_mem_range(ptr noundef %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef %start, ptr noundef %end, ptr noundef null) #12, !dbg !382
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load i64, ptr %i, align 8, !dbg !383
  %cmp6 = icmp ne i64 %4, -1, !dbg !383
  br i1 %cmp6, label %for.body, label %for.end, !dbg !382

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val277) #10, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val277, metadata !345, metadata !DIExpression()), !dbg !384
  %5 = load i64, ptr %start, align 8, !dbg !384
  %sub7 = sub i64 %5, 1, !dbg !384
  %or8 = or i64 %sub7, 4095, !dbg !384
  %add9 = add i64 %or8, 1, !dbg !384
  store i64 %add9, ptr %__UNIQUE_ID___val277, align 8, !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo278) #10, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo278, metadata !351, metadata !DIExpression()), !dbg !384
  store i64 4096, ptr %__UNIQUE_ID___lo278, align 8, !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi279) #10, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi279, metadata !352, metadata !DIExpression()), !dbg !384
  %6 = load i32, ptr @corruption_check_size, align 4, !dbg !384
  %conv = zext i32 %6 to i64, !dbg !384
  store i64 %conv, ptr %__UNIQUE_ID___hi279, align 8, !dbg !384
  %7 = load i64, ptr %__UNIQUE_ID___val277, align 8, !dbg !384
  %8 = load i64, ptr %__UNIQUE_ID___hi279, align 8, !dbg !384
  %cmp11 = icmp uge i64 %7, %8, !dbg !384
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !384

cond.true:                                        ; preds = %for.body
  %9 = load i64, ptr %__UNIQUE_ID___hi279, align 8, !dbg !384
  br label %cond.end17, !dbg !384

cond.false:                                       ; preds = %for.body
  %10 = load i64, ptr %__UNIQUE_ID___val277, align 8, !dbg !384
  %11 = load i64, ptr %__UNIQUE_ID___lo278, align 8, !dbg !384
  %cmp13 = icmp ule i64 %10, %11, !dbg !384
  br i1 %cmp13, label %cond.true15, label %cond.false16, !dbg !384

cond.true15:                                      ; preds = %cond.false
  %12 = load i64, ptr %__UNIQUE_ID___lo278, align 8, !dbg !384
  br label %cond.end, !dbg !384

cond.false16:                                     ; preds = %cond.false
  %13 = load i64, ptr %__UNIQUE_ID___val277, align 8, !dbg !384
  br label %cond.end, !dbg !384

cond.end:                                         ; preds = %cond.false16, %cond.true15
  %cond = phi i64 [ %12, %cond.true15 ], [ %13, %cond.false16 ], !dbg !384
  br label %cond.end17, !dbg !384

cond.end17:                                       ; preds = %cond.end, %cond.true
  %cond18 = phi i64 [ %9, %cond.true ], [ %cond, %cond.end ], !dbg !384
  store i64 %cond18, ptr %tmp10, align 8, !dbg !384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi279) #10, !dbg !385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo278) #10, !dbg !385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val277) #10, !dbg !385
  %14 = load i64, ptr %tmp10, align 8, !dbg !384
  store i64 %14, ptr %tmp, align 8, !dbg !386
  %15 = load i64, ptr %tmp, align 8, !dbg !385
  store i64 %15, ptr %start, align 8, !dbg !387
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val280) #10, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val280, metadata !353, metadata !DIExpression()), !dbg !388
  %16 = load i64, ptr %end, align 8, !dbg !388
  %and = and i64 %16, -4096, !dbg !388
  store i64 %and, ptr %__UNIQUE_ID___val280, align 8, !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo281) #10, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo281, metadata !356, metadata !DIExpression()), !dbg !388
  store i64 4096, ptr %__UNIQUE_ID___lo281, align 8, !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi282) #10, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi282, metadata !357, metadata !DIExpression()), !dbg !388
  %17 = load i32, ptr @corruption_check_size, align 4, !dbg !388
  %conv20 = zext i32 %17 to i64, !dbg !388
  store i64 %conv20, ptr %__UNIQUE_ID___hi282, align 8, !dbg !388
  %18 = load i64, ptr %__UNIQUE_ID___val280, align 8, !dbg !388
  %19 = load i64, ptr %__UNIQUE_ID___hi282, align 8, !dbg !388
  %cmp22 = icmp uge i64 %18, %19, !dbg !388
  br i1 %cmp22, label %cond.true24, label %cond.false25, !dbg !388

cond.true24:                                      ; preds = %cond.end17
  %20 = load i64, ptr %__UNIQUE_ID___hi282, align 8, !dbg !388
  br label %cond.end32, !dbg !388

cond.false25:                                     ; preds = %cond.end17
  %21 = load i64, ptr %__UNIQUE_ID___val280, align 8, !dbg !388
  %22 = load i64, ptr %__UNIQUE_ID___lo281, align 8, !dbg !388
  %cmp26 = icmp ule i64 %21, %22, !dbg !388
  br i1 %cmp26, label %cond.true28, label %cond.false29, !dbg !388

cond.true28:                                      ; preds = %cond.false25
  %23 = load i64, ptr %__UNIQUE_ID___lo281, align 8, !dbg !388
  br label %cond.end30, !dbg !388

cond.false29:                                     ; preds = %cond.false25
  %24 = load i64, ptr %__UNIQUE_ID___val280, align 8, !dbg !388
  br label %cond.end30, !dbg !388

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %cond31 = phi i64 [ %23, %cond.true28 ], [ %24, %cond.false29 ], !dbg !388
  br label %cond.end32, !dbg !388

cond.end32:                                       ; preds = %cond.end30, %cond.true24
  %cond33 = phi i64 [ %20, %cond.true24 ], [ %cond31, %cond.end30 ], !dbg !388
  store i64 %cond33, ptr %tmp21, align 8, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi282) #10, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo281) #10, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val280) #10, !dbg !389
  %25 = load i64, ptr %tmp21, align 8, !dbg !388
  store i64 %25, ptr %tmp19, align 8, !dbg !390
  %26 = load i64, ptr %tmp19, align 8, !dbg !389
  store i64 %26, ptr %end, align 8, !dbg !391
  %27 = load i64, ptr %start, align 8, !dbg !392
  %28 = load i64, ptr %end, align 8, !dbg !394
  %cmp34 = icmp uge i64 %27, %28, !dbg !395
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !396

if.then36:                                        ; preds = %cond.end32
  br label %for.inc, !dbg !397

if.end37:                                         ; preds = %cond.end32
  %29 = load i64, ptr %start, align 8, !dbg !398
  %30 = load i64, ptr %end, align 8, !dbg !399
  %31 = load i64, ptr %start, align 8, !dbg !400
  %sub38 = sub i64 %30, %31, !dbg !401
  %call = call i32 @memblock_reserve(i64 noundef %29, i64 noundef %sub38) #12, !dbg !402
  %32 = load i64, ptr %start, align 8, !dbg !403
  %33 = load i32, ptr @num_scan_areas, align 4, !dbg !404
  %idxprom = sext i32 %33 to i64, !dbg !405
  %arrayidx = getelementptr [8 x %struct.scan_area], ptr @scan_areas, i64 0, i64 %idxprom, !dbg !405
  %addr = getelementptr inbounds %struct.scan_area, ptr %arrayidx, i32 0, i32 0, !dbg !406
  store i64 %32, ptr %addr, align 16, !dbg !407
  %34 = load i64, ptr %end, align 8, !dbg !408
  %35 = load i64, ptr %start, align 8, !dbg !409
  %sub39 = sub i64 %34, %35, !dbg !410
  %36 = load i32, ptr @num_scan_areas, align 4, !dbg !411
  %idxprom40 = sext i32 %36 to i64, !dbg !412
  %arrayidx41 = getelementptr [8 x %struct.scan_area], ptr @scan_areas, i64 0, i64 %idxprom40, !dbg !412
  %size = getelementptr inbounds %struct.scan_area, ptr %arrayidx41, i32 0, i32 1, !dbg !413
  store i64 %sub39, ptr %size, align 8, !dbg !414
  %37 = load i64, ptr %start, align 8, !dbg !415
  %38 = load i64, ptr @page_offset_base, align 8, !dbg !415
  %add42 = add i64 %37, %38, !dbg !415
  %39 = inttoptr i64 %add42 to ptr, !dbg !415
  %40 = load i64, ptr %end, align 8, !dbg !416
  %41 = load i64, ptr %start, align 8, !dbg !417
  %sub43 = sub i64 %40, %41, !dbg !418
  call void @llvm.memset.p0.i64(ptr align 1 %39, i8 0, i64 %sub43, i1 false), !dbg !419
  %42 = load i32, ptr @num_scan_areas, align 4, !dbg !420
  %inc = add i32 %42, 1, !dbg !420
  store i32 %inc, ptr @num_scan_areas, align 4, !dbg !420
  %cmp44 = icmp sge i32 %inc, 8, !dbg !422
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !423

if.then46:                                        ; preds = %if.end37
  br label %for.end, !dbg !424

if.end47:                                         ; preds = %if.end37
  br label %for.inc, !dbg !425

for.inc:                                          ; preds = %if.end47, %if.then36
  call void @__next_mem_range(ptr noundef %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef %start, ptr noundef %end, ptr noundef null) #12, !dbg !383
  br label %for.cond, !dbg !383, !llvm.loop !426

for.end:                                          ; preds = %if.then46, %for.cond
  %43 = load i32, ptr @num_scan_areas, align 4, !dbg !430
  %tobool48 = icmp ne i32 %43, 0, !dbg !430
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !432

if.then49:                                        ; preds = %for.end
  br label %do.body, !dbg !433

do.body:                                          ; preds = %if.then49
  br label %do.cond, !dbg !435

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !435

do.end:                                           ; preds = %do.cond
  %44 = load i32, ptr @num_scan_areas, align 4, !dbg !433
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %44) #11, !dbg !433
  store i32 %call51, ptr %tmp50, align 4, !dbg !435
  %45 = load i32, ptr %tmp50, align 4, !dbg !433
  br label %if.end52, !dbg !437

if.end52:                                         ; preds = %do.end, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !438
  br label %cleanup, !dbg !438

cleanup:                                          ; preds = %if.end52, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !438
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !438
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !438
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !438

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !439 dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !460 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !463 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_check__283_186_start_periodic_check_for_corruption6() #0 section ".init.text" align 16 !dbg !467 {
entry:
  %call = call i32 @start_periodic_check_for_corruption() #12, !dbg !470
  ret i32 %call, !dbg !470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @start_periodic_check_for_corruption() #6 align 16 !dbg !471 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = load i32, ptr @num_scan_areas, align 4, !dbg !472
  %tobool = icmp ne i32 %0, 0, !dbg !472
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !474

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @memory_corruption_check, align 4, !dbg !475
  %tobool1 = icmp ne i32 %1, 0, !dbg !475
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !476

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr @corruption_check_period, align 4, !dbg !477
  %cmp = icmp eq i32 %2, 0, !dbg !478
  br i1 %cmp, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !480
  br label %return, !dbg !480

if.end:                                           ; preds = %lor.lhs.false2
  br label %do.body, !dbg !481

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !483

do.end:                                           ; preds = %do.body
  %3 = load i32, ptr @corruption_check_period, align 4, !dbg !481
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %3) #11, !dbg !481
  store i32 %call, ptr %tmp, align 4, !dbg !483
  %4 = load i32, ptr %tmp, align 4, !dbg !481
  %call3 = call zeroext i1 @schedule_delayed_work(ptr noundef @bios_check_work, i64 noundef 0) #12, !dbg !485
  store i32 0, ptr %retval, align 4, !dbg !486
  br label %return, !dbg !486

return:                                           ; preds = %do.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !487
  ret i32 %5, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #7 align 16 !dbg !488 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !493, metadata !DIExpression()), !dbg !496
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !494, metadata !DIExpression()), !dbg !497
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !495, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %s.addr, align 8, !dbg !499
  %1 = load i32, ptr %base.addr, align 4, !dbg !501
  %2 = load ptr, ptr %res.addr, align 8, !dbg !502
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12, !dbg !503
  ret i32 %call, !dbg !504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !505 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !508 dso_local i64 @memparse(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_delayed_work(ptr noundef %dwork, i64 noundef %delay) #7 align 16 !dbg !513 {
entry:
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !518, metadata !DIExpression()), !dbg !520
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !519, metadata !DIExpression()), !dbg !521
  %0 = load ptr, ptr @system_wq, align 8, !dbg !522
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !523
  %2 = load i64, ptr %delay.addr, align 8, !dbg !524
  %call = call zeroext i1 @queue_delayed_work(ptr noundef %0, ptr noundef %1, i64 noundef %2) #12, !dbg !525
  ret i1 %call, !dbg !526
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #7 align 16 !dbg !527 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !531, metadata !DIExpression()), !dbg !534
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !532, metadata !DIExpression()), !dbg !535
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !533, metadata !DIExpression()), !dbg !536
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !537
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !538
  %2 = load i64, ptr %delay.addr, align 8, !dbg !539
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #12, !dbg !540
  ret i1 %call, !dbg !541
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !542 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_corruption(ptr noundef %dummy) #6 align 16 !dbg !545 {
entry:
  %dummy.addr = alloca ptr, align 8
  store ptr %dummy, ptr %dummy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !547, metadata !DIExpression()), !dbg !548
  call void @check_for_bios_corruption() #12, !dbg !549
  %0 = load i32, ptr @corruption_check_period, align 4, !dbg !550
  %mul = mul i32 %0, 1000, !dbg !551
  %conv = zext i32 %mul to i64, !dbg !550
  %call = call i64 @round_jiffies_relative(i64 noundef %conv) #12, !dbg !552
  %call1 = call zeroext i1 @schedule_delayed_work(ptr noundef @bios_check_work, i64 noundef %call) #12, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_for_bios_corruption() #6 align 16 !dbg !191 {
entry:
  %i = alloca i32, align 4
  %corruption = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp28 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp69 = alloca i64, align 8
  %tmp78 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %i, metadata !195, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 4, ptr %corruption) #10, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %corruption, metadata !196, metadata !DIExpression()), !dbg !558
  store i32 0, ptr %corruption, align 4, !dbg !558
  %0 = load i32, ptr @memory_corruption_check, align 4, !dbg !559
  %tobool = icmp ne i32 %0, 0, !dbg !559
  br i1 %tobool, label %if.end, label %if.then, !dbg !561

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !563
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc12, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !565
  %2 = load i32, ptr @num_scan_areas, align 4, !dbg !566
  %cmp = icmp slt i32 %1, %2, !dbg !567
  br i1 %cmp, label %for.body, label %for.end13, !dbg !568

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #10, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !197, metadata !DIExpression()), !dbg !570
  %3 = load i32, ptr %i, align 4, !dbg !571
  %idxprom = sext i32 %3 to i64, !dbg !571
  %arrayidx = getelementptr [8 x %struct.scan_area], ptr @scan_areas, i64 0, i64 %idxprom, !dbg !571
  %addr1 = getelementptr inbounds %struct.scan_area, ptr %arrayidx, i32 0, i32 0, !dbg !571
  %4 = load i64, ptr %addr1, align 16, !dbg !571
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !571
  %add = add i64 %4, %5, !dbg !571
  %6 = inttoptr i64 %add to ptr, !dbg !571
  store ptr %6, ptr %addr, align 8, !dbg !570
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !572
  call void @llvm.dbg.declare(metadata ptr %size, metadata !202, metadata !DIExpression()), !dbg !573
  %7 = load i32, ptr %i, align 4, !dbg !574
  %idxprom2 = sext i32 %7 to i64, !dbg !575
  %arrayidx3 = getelementptr [8 x %struct.scan_area], ptr @scan_areas, i64 0, i64 %idxprom2, !dbg !575
  %size4 = getelementptr inbounds %struct.scan_area, ptr %arrayidx3, i32 0, i32 1, !dbg !576
  %8 = load i64, ptr %size4, align 8, !dbg !576
  store i64 %8, ptr %size, align 8, !dbg !573
  br label %for.cond5, !dbg !577

for.cond5:                                        ; preds = %for.inc, %for.body
  %9 = load i64, ptr %size, align 8, !dbg !578
  %tobool6 = icmp ne i64 %9, 0, !dbg !581
  br i1 %tobool6, label %for.body7, label %for.end, !dbg !581

for.body7:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %addr, align 8, !dbg !582
  %11 = load i64, ptr %10, align 8, !dbg !585
  %tobool8 = icmp ne i64 %11, 0, !dbg !585
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !586

if.then9:                                         ; preds = %for.body7
  br label %for.inc, !dbg !587

if.end10:                                         ; preds = %for.body7
  br label %do.body, !dbg !588

do.body:                                          ; preds = %if.end10
  br label %do.cond, !dbg !590

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !590

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %addr, align 8, !dbg !588
  %13 = load ptr, ptr %addr, align 8, !dbg !588
  %14 = ptrtoint ptr %13 to i64, !dbg !588
  %call = call i64 @__phys_addr_nodebug(i64 noundef %14) #12, !dbg !588
  %15 = load ptr, ptr %addr, align 8, !dbg !588
  %16 = load i64, ptr %15, align 8, !dbg !588
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %12, i64 noundef %call, i64 noundef %16) #11, !dbg !588
  store i32 %call11, ptr %tmp, align 4, !dbg !590
  %17 = load i32, ptr %tmp, align 4, !dbg !588
  store i32 1, ptr %corruption, align 4, !dbg !592
  %18 = load ptr, ptr %addr, align 8, !dbg !593
  store i64 0, ptr %18, align 8, !dbg !594
  br label %for.inc, !dbg !595

for.inc:                                          ; preds = %do.end, %if.then9
  %19 = load ptr, ptr %addr, align 8, !dbg !596
  %incdec.ptr = getelementptr i64, ptr %19, i32 1, !dbg !596
  store ptr %incdec.ptr, ptr %addr, align 8, !dbg !596
  %20 = load i64, ptr %size, align 8, !dbg !597
  %sub = sub i64 %20, 8, !dbg !597
  store i64 %sub, ptr %size, align 8, !dbg !597
  br label %for.cond5, !dbg !598, !llvm.loop !599

for.end:                                          ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !601
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #10, !dbg !601
  br label %for.inc12, !dbg !602

for.inc12:                                        ; preds = %for.end
  %21 = load i32, ptr %i, align 4, !dbg !603
  %inc = add i32 %21, 1, !dbg !603
  store i32 %inc, ptr %i, align 4, !dbg !603
  br label %for.cond, !dbg !604, !llvm.loop !605

for.end13:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #10, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !203, metadata !DIExpression()), !dbg !607
  %22 = load i32, ptr %corruption, align 4, !dbg !607
  %tobool14 = icmp ne i32 %22, 0, !dbg !607
  %lnot = xor i1 %tobool14, true, !dbg !607
  %lnot15 = xor i1 %lnot, true, !dbg !607
  %frombool = zext i1 %lnot15 to i8, !dbg !607
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !607
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #10, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !207, metadata !DIExpression()), !dbg !608
  %23 = load i8, ptr %__ret_do_once, align 1, !dbg !608, !range !609, !noundef !610
  %tobool16 = trunc i8 %23 to i1, !dbg !608
  %lnot17 = xor i1 %tobool16, true, !dbg !608
  %lnot18 = xor i1 %lnot17, true, !dbg !608
  %frombool19 = zext i1 %lnot18 to i8, !dbg !608
  store i8 %frombool19, ptr %__ret_cond, align 1, !dbg !608
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #10, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !210, metadata !DIExpression()), !dbg !608
  store i8 0, ptr %__ret_once, align 1, !dbg !608
  %24 = load i8, ptr %__ret_cond, align 1, !dbg !611, !range !609, !noundef !610
  %tobool20 = trunc i8 %24 to i1, !dbg !611
  br i1 %tobool20, label %land.rhs, label %land.end, !dbg !611

land.rhs:                                         ; preds = %for.end13
  %25 = load i8, ptr @check_for_bios_corruption.__already_done, align 1, !dbg !611, !range !609, !noundef !610
  %tobool21 = trunc i8 %25 to i1, !dbg !611
  %lnot22 = xor i1 %tobool21, true, !dbg !611
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end13
  %26 = phi i1 [ false, %for.end13 ], [ %lnot22, %land.rhs ], !dbg !613
  %lnot23 = xor i1 %26, true, !dbg !611
  %lnot24 = xor i1 %lnot23, true, !dbg !611
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !611
  %conv = sext i32 %lnot.ext to i64, !dbg !611
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !611
  %tobool25 = icmp ne i64 %expval, 0, !dbg !611
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !608

if.then26:                                        ; preds = %land.end
  store i8 1, ptr @check_for_bios_corruption.__already_done, align 1, !dbg !614
  store i8 1, ptr %__ret_once, align 1, !dbg !614
  br label %if.end27, !dbg !614

if.end27:                                         ; preds = %if.then26, %land.end
  %27 = load i8, ptr %__ret_once, align 1, !dbg !608, !range !609, !noundef !610
  %tobool29 = trunc i8 %27 to i1, !dbg !608
  %lnot30 = xor i1 %tobool29, true, !dbg !608
  %lnot32 = xor i1 %lnot30, true, !dbg !608
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !608
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !608
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !608
  store i64 %expval35, ptr %tmp28, align 8, !dbg !611
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #10, !dbg !616
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #10, !dbg !616
  %28 = load i64, ptr %tmp28, align 8, !dbg !608
  %tobool36 = icmp ne i64 %28, 0, !dbg !616
  br i1 %tobool36, label %if.then37, label %if.end77, !dbg !607

if.then37:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !617
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !211, metadata !DIExpression()), !dbg !617
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !617
  %29 = load i32, ptr %__ret_warn_on, align 4, !dbg !618
  %tobool38 = icmp ne i32 %29, 0, !dbg !618
  %lnot39 = xor i1 %tobool38, true, !dbg !618
  %lnot41 = xor i1 %lnot39, true, !dbg !618
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !618
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !618
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !618
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !618
  br i1 %tobool45, label %if.then46, label %if.end68, !dbg !617

if.then46:                                        ; preds = %if.then37
  br label %do.body47, !dbg !618

do.body47:                                        ; preds = %if.then46
  br label %do.body48, !dbg !619

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !620

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !620

do.end50:                                         ; preds = %do.cond49
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.6) #12, !dbg !619
  br label %do.body51, !dbg !619

do.body51:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !213, metadata !DIExpression()), !dbg !622
  store i32 2313, ptr %__flags, align 4, !dbg !622
  br label %do.body52, !dbg !622

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !623

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !623

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !622

do.body55:                                        ; preds = %do.end54
  %30 = load i32, ptr %__flags, align 4, !dbg !625
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 161, i32 %30, i64 12) #10, !dbg !625, !srcloc !627
  br label %do.cond56, !dbg !625

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !625

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !622

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !628

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !628

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !619
  br label %do.cond61, !dbg !622

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !622

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !619

do.body63:                                        ; preds = %do.end62
  br label %do.cond64, !dbg !630

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !630

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !619

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !619

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !619

if.end68:                                         ; preds = %do.end67, %if.then37
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !617
  %tobool70 = icmp ne i32 %31, 0, !dbg !617
  %lnot71 = xor i1 %tobool70, true, !dbg !617
  %lnot73 = xor i1 %lnot71, true, !dbg !617
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !617
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !617
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !617
  store i64 %expval76, ptr %tmp69, align 8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !616
  %32 = load i64, ptr %tmp69, align 8, !dbg !617
  br label %if.end77, !dbg !616

if.end77:                                         ; preds = %if.end68, %if.end27
  %33 = load i8, ptr %__ret_do_once, align 1, !dbg !607, !range !609, !noundef !610
  %tobool79 = trunc i8 %33 to i1, !dbg !607
  %lnot80 = xor i1 %tobool79, true, !dbg !607
  %lnot82 = xor i1 %lnot80, true, !dbg !607
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !607
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !607
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !607
  store i64 %expval85, ptr %tmp78, align 8, !dbg !616
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #10, !dbg !632
  %34 = load i64, ptr %tmp78, align 8, !dbg !607
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !633
  br label %cleanup, !dbg !633

cleanup:                                          ; preds = %if.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %corruption) #10, !dbg !633
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !633
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !633

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !634 dso_local i64 @round_jiffies_relative(i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #8 align 16 !dbg !637 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !640, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #10, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %y, metadata !641, metadata !DIExpression()), !dbg !644
  %0 = load i64, ptr %x.addr, align 8, !dbg !645
  %sub = sub i64 %0, -2147483648, !dbg !646
  store i64 %sub, ptr %y, align 8, !dbg !644
  %1 = load i64, ptr %y, align 8, !dbg !647
  %2 = load i64, ptr %x.addr, align 8, !dbg !648
  %3 = load i64, ptr %y, align 8, !dbg !649
  %cmp = icmp ugt i64 %2, %3, !dbg !650
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !651

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !652
  br label %cond.end, !dbg !651

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !653
  %sub1 = sub i64 -2147483648, %5, !dbg !654
  br label %cond.end, !dbg !651

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !651
  %add = add i64 %1, %cond, !dbg !655
  store i64 %add, ptr %x.addr, align 8, !dbg !656
  %6 = load i64, ptr %x.addr, align 8, !dbg !657
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #10, !dbg !658
  ret i64 %6, !dbg !659
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local void @__warn_printk(ptr noundef, ...) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_set_corruption_check", scope: !2, file: !3, line: 51, type: !227, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.check.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/check\22 -D KBUILD_BASENAME=\22check\22 -D KBUILD_MODNAME=\22check\22 -D __KBUILD_MODNAME=kmod_check -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/check.ll arch/x86/kernel/check.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !56, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/check.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75d0375a12772b6bfac356cdc023fc1e")
!4 = !{!5, !14, !40}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memblock_flags", file: !6, line: 44, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "MEMBLOCK_NONE", value: 0)
!10 = !DIEnumerator(name: "MEMBLOCK_HOTPLUG", value: 1)
!11 = !DIEnumerator(name: "MEMBLOCK_MIRROR", value: 2)
!12 = !DIEnumerator(name: "MEMBLOCK_NOMAP", value: 4)
!13 = !DIEnumerator(name: "MEMBLOCK_DRIVER_MANAGED", value: 8)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 30, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!17 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!18 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!19 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!20 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!21 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!22 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!23 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!24 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!25 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!26 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!27 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!28 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!29 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!30 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!31 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!32 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!33 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!34 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!35 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!36 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!37 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!38 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!39 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 10, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "false", value: 0)
!44 = !DIEnumerator(name: "true", value: 1)
!45 = !{!7, !46, !51, !53, !54, !55}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !47, line: 23, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !52, line: 159, baseType: !46)
!52 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!56 = !{!57, !73, !75, !77, !82, !84, !93, !0, !95, !100, !105, !110, !112, !117, !122, !124, !126, !131, !184, !189, !217, !222}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "__setup_set_corruption_check", scope: !2, file: !3, line: 51, type: !59, isLocal: true, isDefinition: true, align: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !60, line: 324, size: 192, elements: !61)
!60 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!61 = !{!62, !66, !72}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !59, file: !60, line: 325, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !59, file: !60, line: 326, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !59, file: !60, line: 327, baseType: !70, size: 32, offset: 128)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__setup_set_corruption_check_period", scope: !2, file: !3, line: 70, type: !59, isLocal: true, isDefinition: true, align: 64)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "__setup_set_corruption_check_size", scope: !2, file: !3, line: 89, type: !59, isLocal: true, isDefinition: true, align: 64)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 432, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 54)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_check__283_186_start_periodic_check_for_corruption6284", scope: !2, file: !3, line: 186, type: !53, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "scan_areas", scope: !2, file: !3, line: 30, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1024, elements: !91)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scan_area", file: !3, line: 27, size: 128, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !87, file: !3, line: 28, baseType: !46, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !87, file: !3, line: 29, baseType: !46, size: 64, offset: 64)
!91 = !{!92}
!92 = !DISubrange(count: 8)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "num_scan_areas", scope: !2, file: !3, line: 31, type: !70, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 488, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 61)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "__setup_str_set_corruption_check_period", scope: !2, file: !3, line: 70, type: !102, isLocal: true, isDefinition: true, align: 8)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 248, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 31)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 544, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 68)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "corruption_check_period", scope: !2, file: !3, line: 25, type: !7, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "__setup_str_set_corruption_check_size", scope: !2, file: !3, line: 89, type: !114, isLocal: true, isDefinition: true, align: 8)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 232, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 29)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 528, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 66)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "memory_corruption_check", scope: !2, file: !3, line: 22, type: !70, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "corruption_check_size", scope: !2, file: !3, line: 24, type: !7, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 496, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 62)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "bios_check_work", scope: !2, file: !3, line: 165, type: !133, isLocal: true, isDefinition: true)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !15, line: 111, size: 704, elements: !134)
!134 = !{!135, !160, !180, !183}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !133, file: !15, line: 112, baseType: !136, size: 256)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !15, line: 98, size: 256, elements: !137)
!137 = !{!138, !148, !154}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !136, file: !15, line: 99, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !140, line: 13, baseType: !141)
!140 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !52, line: 181, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 179, size: 64, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !142, file: !52, line: 180, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !47, line: 22, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !49, line: 30, baseType: !147)
!147 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !136, file: !15, line: 100, baseType: !149, size: 128, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !52, line: 190, size: 128, elements: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !52, line: 191, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !52, line: 191, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !136, file: !15, line: 101, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !15, line: 21, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !133, file: !15, line: 113, baseType: !161, size: 320, offset: 256)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !162, line: 11, size: 320, elements: !163)
!162 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!163 = !{!164, !171, !172, !177}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !161, file: !162, line: 16, baseType: !165, size: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !52, line: 198, size: 128, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !52, line: 199, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !165, file: !52, line: 199, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !161, file: !162, line: 17, baseType: !54, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !161, file: !162, line: 18, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !162, line: 19, baseType: !178, size: 32, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !47, line: 21, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !7)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !133, file: !15, line: 116, baseType: !181, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !15, line: 18, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !133, file: !15, line: 117, baseType: !70, size: 32, offset: 640)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 448, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 56)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "__already_done", scope: !191, file: !3, line: 161, type: !205, isLocal: true, isDefinition: true)
!191 = distinct !DISubprogram(name: "check_for_bios_corruption", scope: !3, file: !3, line: 140, type: !192, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{null}
!194 = !{!195, !196, !197, !202, !203, !207, !210, !211, !213}
!195 = !DILocalVariable(name: "i", scope: !191, file: !3, line: 142, type: !70)
!196 = !DILocalVariable(name: "corruption", scope: !191, file: !3, line: 143, type: !70)
!197 = !DILocalVariable(name: "addr", scope: !198, file: !3, line: 149, type: !201)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 148, column: 39)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 148, column: 2)
!200 = distinct !DILexicalBlock(scope: !191, file: !3, line: 148, column: 2)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!202 = !DILocalVariable(name: "size", scope: !198, file: !3, line: 150, type: !54)
!203 = !DILocalVariable(name: "__ret_do_once", scope: !204, file: !3, line: 161, type: !205)
!204 = distinct !DILexicalBlock(scope: !191, file: !3, line: 161, column: 2)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !52, line: 35, baseType: !206)
!206 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!207 = !DILocalVariable(name: "__ret_cond", scope: !208, file: !3, line: 161, type: !205)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 161, column: 2)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 161, column: 2)
!210 = !DILocalVariable(name: "__ret_once", scope: !208, file: !3, line: 161, type: !205)
!211 = !DILocalVariable(name: "__ret_warn_on", scope: !212, file: !3, line: 161, type: !70)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 161, column: 2)
!213 = !DILocalVariable(name: "__flags", scope: !214, file: !3, line: 161, type: !70)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 161, column: 2)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 161, column: 2)
!216 = distinct !DILexicalBlock(scope: !212, file: !3, line: 161, column: 2)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 352, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 44)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 24)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !225)
!228 = !{i32 7, !"Dwarf Version", i32 5}
!229 = !{i32 2, !"Debug Info Version", i32 3}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 8, !"cf-protection-branch", i32 1}
!232 = !{i32 4, !"function_return_thunk_extern", i32 1}
!233 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!234 = !{i32 1, !"Code Model", i32 2}
!235 = !{i32 1, !"override-stack-alignment", i32 8}
!236 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!237 = distinct !DISubprogram(name: "set_corruption_check", scope: !3, file: !3, line: 33, type: !68, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!238 = !{!239, !240, !246}
!239 = !DILocalVariable(name: "arg", arg: 1, scope: !237, file: !3, line: 33, type: !71)
!240 = !DILocalVariable(name: "ret", scope: !237, file: !3, line: 35, type: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !52, line: 66, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !243, line: 73, baseType: !244)
!243 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !243, line: 15, baseType: !245)
!245 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!246 = !DILocalVariable(name: "val", scope: !237, file: !3, line: 36, type: !54)
!247 = !DILocation(line: 33, column: 46, scope: !237)
!248 = !DILocation(line: 35, column: 2, scope: !237)
!249 = !DILocation(line: 35, column: 10, scope: !237)
!250 = !DILocation(line: 36, column: 2, scope: !237)
!251 = !DILocation(line: 36, column: 16, scope: !237)
!252 = !DILocation(line: 38, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !237, file: !3, line: 38, column: 6)
!254 = !DILocation(line: 38, column: 6, scope: !237)
!255 = !DILocation(line: 39, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 39, column: 3)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 38, column: 12)
!258 = !DILocation(line: 39, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 39, column: 3)
!260 = !DILocation(line: 40, column: 3, scope: !257)
!261 = !DILocation(line: 43, column: 17, scope: !237)
!262 = !DILocation(line: 43, column: 8, scope: !237)
!263 = !DILocation(line: 43, column: 6, scope: !237)
!264 = !DILocation(line: 44, column: 6, scope: !265)
!265 = distinct !DILexicalBlock(scope: !237, file: !3, line: 44, column: 6)
!266 = !DILocation(line: 44, column: 6, scope: !237)
!267 = !DILocation(line: 45, column: 10, scope: !265)
!268 = !DILocation(line: 45, column: 3, scope: !265)
!269 = !DILocation(line: 47, column: 28, scope: !237)
!270 = !DILocation(line: 47, column: 26, scope: !237)
!271 = !DILocation(line: 49, column: 2, scope: !237)
!272 = !DILocation(line: 50, column: 1, scope: !237)
!273 = distinct !DISubprogram(name: "set_corruption_check_period", scope: !3, file: !3, line: 53, type: !68, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!274 = !{!275, !276, !277}
!275 = !DILocalVariable(name: "arg", arg: 1, scope: !273, file: !3, line: 53, type: !71)
!276 = !DILocalVariable(name: "ret", scope: !273, file: !3, line: 55, type: !241)
!277 = !DILocalVariable(name: "val", scope: !273, file: !3, line: 56, type: !54)
!278 = !DILocation(line: 53, column: 53, scope: !273)
!279 = !DILocation(line: 55, column: 2, scope: !273)
!280 = !DILocation(line: 55, column: 10, scope: !273)
!281 = !DILocation(line: 56, column: 2, scope: !273)
!282 = !DILocation(line: 56, column: 16, scope: !273)
!283 = !DILocation(line: 58, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !273, file: !3, line: 58, column: 6)
!285 = !DILocation(line: 58, column: 6, scope: !273)
!286 = !DILocation(line: 59, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 59, column: 3)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 58, column: 12)
!289 = !DILocation(line: 59, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !3, line: 59, column: 3)
!291 = !DILocation(line: 60, column: 3, scope: !288)
!292 = !DILocation(line: 63, column: 17, scope: !273)
!293 = !DILocation(line: 63, column: 8, scope: !273)
!294 = !DILocation(line: 63, column: 6, scope: !273)
!295 = !DILocation(line: 64, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !273, file: !3, line: 64, column: 6)
!297 = !DILocation(line: 64, column: 6, scope: !273)
!298 = !DILocation(line: 65, column: 10, scope: !296)
!299 = !DILocation(line: 65, column: 3, scope: !296)
!300 = !DILocation(line: 67, column: 28, scope: !273)
!301 = !DILocation(line: 67, column: 26, scope: !273)
!302 = !DILocation(line: 68, column: 2, scope: !273)
!303 = !DILocation(line: 69, column: 1, scope: !273)
!304 = distinct !DISubprogram(name: "set_corruption_check_size", scope: !3, file: !3, line: 72, type: !68, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(name: "arg", arg: 1, scope: !304, file: !3, line: 72, type: !71)
!307 = !DILocalVariable(name: "end", scope: !304, file: !3, line: 74, type: !71)
!308 = !DILocalVariable(name: "size", scope: !304, file: !3, line: 75, type: !7)
!309 = !DILocation(line: 72, column: 51, scope: !304)
!310 = !DILocation(line: 74, column: 2, scope: !304)
!311 = !DILocation(line: 74, column: 8, scope: !304)
!312 = !DILocation(line: 75, column: 2, scope: !304)
!313 = !DILocation(line: 75, column: 11, scope: !304)
!314 = !DILocation(line: 77, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !304, file: !3, line: 77, column: 6)
!316 = !DILocation(line: 77, column: 6, scope: !304)
!317 = !DILocation(line: 78, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 78, column: 3)
!319 = distinct !DILexicalBlock(scope: !315, file: !3, line: 77, column: 12)
!320 = !DILocation(line: 78, column: 3, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 78, column: 3)
!322 = !DILocation(line: 79, column: 3, scope: !319)
!323 = !DILocation(line: 82, column: 18, scope: !304)
!324 = !DILocation(line: 82, column: 9, scope: !304)
!325 = !DILocation(line: 82, column: 7, scope: !304)
!326 = !DILocation(line: 84, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !304, file: !3, line: 84, column: 6)
!328 = !DILocation(line: 84, column: 6, scope: !327)
!329 = !DILocation(line: 84, column: 11, scope: !327)
!330 = !DILocation(line: 84, column: 6, scope: !304)
!331 = !DILocation(line: 85, column: 27, scope: !327)
!332 = !DILocation(line: 85, column: 25, scope: !327)
!333 = !DILocation(line: 85, column: 3, scope: !327)
!334 = !DILocation(line: 87, column: 10, scope: !304)
!335 = !DILocation(line: 87, column: 18, scope: !304)
!336 = !DILocation(line: 87, column: 15, scope: !304)
!337 = !DILocation(line: 87, column: 9, scope: !304)
!338 = !DILocation(line: 87, column: 2, scope: !304)
!339 = !DILocation(line: 88, column: 1, scope: !304)
!340 = distinct !DISubprogram(name: "setup_bios_corruption_check", scope: !3, file: !3, line: 92, type: !192, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !341)
!341 = !{!342, !343, !344, !345, !351, !352, !353, !356, !357}
!342 = !DILocalVariable(name: "start", scope: !340, file: !3, line: 94, type: !51)
!343 = !DILocalVariable(name: "end", scope: !340, file: !3, line: 94, type: !51)
!344 = !DILocalVariable(name: "i", scope: !340, file: !3, line: 95, type: !46)
!345 = !DILocalVariable(name: "__UNIQUE_ID___val277", scope: !346, file: !3, line: 117, type: !51)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 117, column: 11)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 117, column: 11)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 116, column: 11)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 115, column: 2)
!350 = distinct !DILexicalBlock(scope: !340, file: !3, line: 115, column: 2)
!351 = !DILocalVariable(name: "__UNIQUE_ID___lo278", scope: !346, file: !3, line: 117, type: !51)
!352 = !DILocalVariable(name: "__UNIQUE_ID___hi279", scope: !346, file: !3, line: 117, type: !51)
!353 = !DILocalVariable(name: "__UNIQUE_ID___val280", scope: !354, file: !3, line: 119, type: !51)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 119, column: 9)
!355 = distinct !DILexicalBlock(scope: !348, file: !3, line: 119, column: 9)
!356 = !DILocalVariable(name: "__UNIQUE_ID___lo281", scope: !354, file: !3, line: 119, type: !51)
!357 = !DILocalVariable(name: "__UNIQUE_ID___hi282", scope: !354, file: !3, line: 119, type: !51)
!358 = !DILocation(line: 94, column: 2, scope: !340)
!359 = !DILocation(line: 94, column: 14, scope: !340)
!360 = !DILocation(line: 94, column: 21, scope: !340)
!361 = !DILocation(line: 95, column: 2, scope: !340)
!362 = !DILocation(line: 95, column: 6, scope: !340)
!363 = !DILocation(line: 97, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !340, file: !3, line: 97, column: 6)
!365 = !DILocation(line: 97, column: 30, scope: !364)
!366 = !DILocation(line: 97, column: 6, scope: !340)
!367 = !DILocation(line: 98, column: 27, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 97, column: 37)
!369 = !DILocation(line: 105, column: 2, scope: !368)
!370 = !DILocation(line: 107, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !340, file: !3, line: 107, column: 6)
!372 = !DILocation(line: 107, column: 28, scope: !371)
!373 = !DILocation(line: 107, column: 6, scope: !340)
!374 = !DILocation(line: 108, column: 27, scope: !371)
!375 = !DILocation(line: 108, column: 3, scope: !371)
!376 = !DILocation(line: 110, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !340, file: !3, line: 110, column: 6)
!378 = !DILocation(line: 110, column: 6, scope: !340)
!379 = !DILocation(line: 111, column: 3, scope: !377)
!380 = !DILocation(line: 113, column: 26, scope: !340)
!381 = !DILocation(line: 113, column: 24, scope: !340)
!382 = !DILocation(line: 115, column: 2, scope: !350)
!383 = !DILocation(line: 115, column: 2, scope: !349)
!384 = !DILocation(line: 117, column: 11, scope: !346)
!385 = !DILocation(line: 117, column: 11, scope: !347)
!386 = !DILocation(line: 117, column: 11, scope: !348)
!387 = !DILocation(line: 117, column: 9, scope: !348)
!388 = !DILocation(line: 119, column: 9, scope: !354)
!389 = !DILocation(line: 119, column: 9, scope: !355)
!390 = !DILocation(line: 119, column: 9, scope: !348)
!391 = !DILocation(line: 119, column: 7, scope: !348)
!392 = !DILocation(line: 121, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !348, file: !3, line: 121, column: 7)
!394 = !DILocation(line: 121, column: 16, scope: !393)
!395 = !DILocation(line: 121, column: 13, scope: !393)
!396 = !DILocation(line: 121, column: 7, scope: !348)
!397 = !DILocation(line: 122, column: 4, scope: !393)
!398 = !DILocation(line: 124, column: 20, scope: !348)
!399 = !DILocation(line: 124, column: 27, scope: !348)
!400 = !DILocation(line: 124, column: 33, scope: !348)
!401 = !DILocation(line: 124, column: 31, scope: !348)
!402 = !DILocation(line: 124, column: 3, scope: !348)
!403 = !DILocation(line: 125, column: 37, scope: !348)
!404 = !DILocation(line: 125, column: 14, scope: !348)
!405 = !DILocation(line: 125, column: 3, scope: !348)
!406 = !DILocation(line: 125, column: 30, scope: !348)
!407 = !DILocation(line: 125, column: 35, scope: !348)
!408 = !DILocation(line: 126, column: 37, scope: !348)
!409 = !DILocation(line: 126, column: 43, scope: !348)
!410 = !DILocation(line: 126, column: 41, scope: !348)
!411 = !DILocation(line: 126, column: 14, scope: !348)
!412 = !DILocation(line: 126, column: 3, scope: !348)
!413 = !DILocation(line: 126, column: 30, scope: !348)
!414 = !DILocation(line: 126, column: 35, scope: !348)
!415 = !DILocation(line: 129, column: 10, scope: !348)
!416 = !DILocation(line: 129, column: 26, scope: !348)
!417 = !DILocation(line: 129, column: 32, scope: !348)
!418 = !DILocation(line: 129, column: 30, scope: !348)
!419 = !DILocation(line: 129, column: 3, scope: !348)
!420 = !DILocation(line: 131, column: 7, scope: !421)
!421 = distinct !DILexicalBlock(scope: !348, file: !3, line: 131, column: 7)
!422 = !DILocation(line: 131, column: 24, scope: !421)
!423 = !DILocation(line: 131, column: 7, scope: !348)
!424 = !DILocation(line: 132, column: 4, scope: !421)
!425 = !DILocation(line: 133, column: 2, scope: !348)
!426 = distinct !{!426, !382, !427, !428, !429}
!427 = !DILocation(line: 133, column: 2, scope: !350)
!428 = !{!"llvm.loop.mustprogress"}
!429 = !{!"llvm.loop.unroll.disable"}
!430 = !DILocation(line: 135, column: 6, scope: !431)
!431 = distinct !DILexicalBlock(scope: !340, file: !3, line: 135, column: 6)
!432 = !DILocation(line: 135, column: 6, scope: !340)
!433 = !DILocation(line: 136, column: 3, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 136, column: 3)
!435 = !DILocation(line: 136, column: 3, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !3, line: 136, column: 3)
!437 = !DILocation(line: 136, column: 3, scope: !431)
!438 = !DILocation(line: 137, column: 1, scope: !340)
!439 = !DISubprogram(name: "__next_mem_range", scope: !6, file: !6, line: 137, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442, !70, !5, !443, !443, !458, !458, !459}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memblock_type", file: !6, line: 76, size: 320, elements: !445)
!445 = !{!446, !447, !448, !449, !457}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !444, file: !6, line: 77, baseType: !54, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !444, file: !6, line: 78, baseType: !54, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !444, file: !6, line: 79, baseType: !51, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "regions", scope: !444, file: !6, line: 80, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memblock_region", file: !6, line: 59, size: 192, elements: !452)
!452 = !{!453, !454, !455, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !451, file: !6, line: 60, baseType: !51, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !451, file: !6, line: 61, baseType: !51, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !6, line: 62, baseType: !5, size: 32, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !451, file: !6, line: 64, baseType: !70, size: 32, offset: 160)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !444, file: !6, line: 81, baseType: !71, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!460 = !DISubprogram(name: "memblock_reserve", scope: !6, file: !6, line: 116, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!70, !51, !51}
!463 = !DISubprogram(name: "_printk", scope: !464, file: !464, line: 153, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!465 = !DISubroutineType(types: !466)
!466 = !{!70, !63, null}
!467 = distinct !DISubprogram(name: "__initstub__kmod_check__283_186_start_periodic_check_for_corruption6", scope: !3, file: !3, line: 186, type: !468, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!468 = !DISubroutineType(types: !469)
!469 = !{!70}
!470 = !DILocation(line: 186, column: 1, scope: !467)
!471 = distinct !DISubprogram(name: "start_periodic_check_for_corruption", scope: !3, file: !3, line: 174, type: !468, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!472 = !DILocation(line: 176, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !471, file: !3, line: 176, column: 6)
!474 = !DILocation(line: 176, column: 22, scope: !473)
!475 = !DILocation(line: 176, column: 26, scope: !473)
!476 = !DILocation(line: 176, column: 50, scope: !473)
!477 = !DILocation(line: 176, column: 53, scope: !473)
!478 = !DILocation(line: 176, column: 77, scope: !473)
!479 = !DILocation(line: 176, column: 6, scope: !471)
!480 = !DILocation(line: 177, column: 3, scope: !473)
!481 = !DILocation(line: 179, column: 2, scope: !482)
!482 = distinct !DILexicalBlock(scope: !471, file: !3, line: 179, column: 2)
!483 = !DILocation(line: 179, column: 2, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !3, line: 179, column: 2)
!485 = !DILocation(line: 182, column: 2, scope: !471)
!486 = !DILocation(line: 184, column: 2, scope: !471)
!487 = !DILocation(line: 185, column: 1, scope: !471)
!488 = distinct !DISubprogram(name: "kstrtoul", scope: !489, file: !489, line: 30, type: !490, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!489 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!490 = !DISubroutineType(types: !491)
!491 = !{!70, !63, !7, !201}
!492 = !{!493, !494, !495}
!493 = !DILocalVariable(name: "s", arg: 1, scope: !488, file: !489, line: 30, type: !63)
!494 = !DILocalVariable(name: "base", arg: 2, scope: !488, file: !489, line: 30, type: !7)
!495 = !DILocalVariable(name: "res", arg: 3, scope: !488, file: !489, line: 30, type: !201)
!496 = !DILocation(line: 30, column: 53, scope: !488)
!497 = !DILocation(line: 30, column: 69, scope: !488)
!498 = !DILocation(line: 30, column: 90, scope: !488)
!499 = !DILocation(line: 38, column: 20, scope: !500)
!500 = distinct !DILexicalBlock(scope: !488, file: !489, line: 36, column: 6)
!501 = !DILocation(line: 38, column: 23, scope: !500)
!502 = !DILocation(line: 38, column: 51, scope: !500)
!503 = !DILocation(line: 38, column: 10, scope: !500)
!504 = !DILocation(line: 38, column: 3, scope: !500)
!505 = !DISubprogram(name: "kstrtoull", scope: !489, file: !489, line: 12, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!70, !63, !7, !55}
!508 = !DISubprogram(name: "memparse", scope: !509, file: !509, line: 209, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!510 = !DISubroutineType(types: !511)
!511 = !{!50, !63, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!513 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !15, file: !15, line: 688, type: !514, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!514 = !DISubroutineType(types: !515)
!515 = !{!205, !516, !54}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!517 = !{!518, !519}
!518 = !DILocalVariable(name: "dwork", arg: 1, scope: !513, file: !15, line: 688, type: !516)
!519 = !DILocalVariable(name: "delay", arg: 2, scope: !513, file: !15, line: 689, type: !54)
!520 = !DILocation(line: 688, column: 63, scope: !513)
!521 = !DILocation(line: 689, column: 21, scope: !513)
!522 = !DILocation(line: 691, column: 28, scope: !513)
!523 = !DILocation(line: 691, column: 39, scope: !513)
!524 = !DILocation(line: 691, column: 46, scope: !513)
!525 = !DILocation(line: 691, column: 9, scope: !513)
!526 = !DILocation(line: 691, column: 2, scope: !513)
!527 = distinct !DISubprogram(name: "queue_delayed_work", scope: !15, file: !15, line: 573, type: !528, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!205, !181, !516, !54}
!530 = !{!531, !532, !533}
!531 = !DILocalVariable(name: "wq", arg: 1, scope: !527, file: !15, line: 573, type: !181)
!532 = !DILocalVariable(name: "dwork", arg: 2, scope: !527, file: !15, line: 574, type: !516)
!533 = !DILocalVariable(name: "delay", arg: 3, scope: !527, file: !15, line: 575, type: !54)
!534 = !DILocation(line: 573, column: 64, scope: !527)
!535 = !DILocation(line: 574, column: 32, scope: !527)
!536 = !DILocation(line: 575, column: 25, scope: !527)
!537 = !DILocation(line: 577, column: 49, scope: !527)
!538 = !DILocation(line: 577, column: 53, scope: !527)
!539 = !DILocation(line: 577, column: 60, scope: !527)
!540 = !DILocation(line: 577, column: 9, scope: !527)
!541 = !DILocation(line: 577, column: 2, scope: !527)
!542 = !DISubprogram(name: "queue_delayed_work_on", scope: !15, file: !15, line: 500, type: !543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubroutineType(types: !544)
!544 = !{!205, !70, !181, !516, !54}
!545 = distinct !DISubprogram(name: "check_corruption", scope: !3, file: !3, line: 167, type: !157, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!546 = !{!547}
!547 = !DILocalVariable(name: "dummy", arg: 1, scope: !545, file: !3, line: 167, type: !159)
!548 = !DILocation(line: 167, column: 50, scope: !545)
!549 = !DILocation(line: 169, column: 2, scope: !545)
!550 = !DILocation(line: 171, column: 26, scope: !545)
!551 = !DILocation(line: 171, column: 49, scope: !545)
!552 = !DILocation(line: 171, column: 3, scope: !545)
!553 = !DILocation(line: 170, column: 2, scope: !545)
!554 = !DILocation(line: 172, column: 1, scope: !545)
!555 = !DILocation(line: 142, column: 2, scope: !191)
!556 = !DILocation(line: 142, column: 6, scope: !191)
!557 = !DILocation(line: 143, column: 2, scope: !191)
!558 = !DILocation(line: 143, column: 6, scope: !191)
!559 = !DILocation(line: 145, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !191, file: !3, line: 145, column: 6)
!561 = !DILocation(line: 145, column: 6, scope: !191)
!562 = !DILocation(line: 146, column: 3, scope: !560)
!563 = !DILocation(line: 148, column: 9, scope: !200)
!564 = !DILocation(line: 148, column: 7, scope: !200)
!565 = !DILocation(line: 148, column: 14, scope: !199)
!566 = !DILocation(line: 148, column: 18, scope: !199)
!567 = !DILocation(line: 148, column: 16, scope: !199)
!568 = !DILocation(line: 148, column: 2, scope: !200)
!569 = !DILocation(line: 149, column: 3, scope: !198)
!570 = !DILocation(line: 149, column: 18, scope: !198)
!571 = !DILocation(line: 149, column: 25, scope: !198)
!572 = !DILocation(line: 150, column: 3, scope: !198)
!573 = !DILocation(line: 150, column: 17, scope: !198)
!574 = !DILocation(line: 150, column: 35, scope: !198)
!575 = !DILocation(line: 150, column: 24, scope: !198)
!576 = !DILocation(line: 150, column: 38, scope: !198)
!577 = !DILocation(line: 152, column: 3, scope: !198)
!578 = !DILocation(line: 152, column: 10, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 152, column: 3)
!580 = distinct !DILexicalBlock(scope: !198, file: !3, line: 152, column: 3)
!581 = !DILocation(line: 152, column: 3, scope: !580)
!582 = !DILocation(line: 153, column: 10, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 153, column: 8)
!584 = distinct !DILexicalBlock(scope: !579, file: !3, line: 152, column: 55)
!585 = !DILocation(line: 153, column: 9, scope: !583)
!586 = !DILocation(line: 153, column: 8, scope: !584)
!587 = !DILocation(line: 154, column: 5, scope: !583)
!588 = !DILocation(line: 155, column: 4, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !3, line: 155, column: 4)
!590 = !DILocation(line: 155, column: 4, scope: !591)
!591 = distinct !DILexicalBlock(scope: !589, file: !3, line: 155, column: 4)
!592 = !DILocation(line: 156, column: 15, scope: !584)
!593 = !DILocation(line: 157, column: 5, scope: !584)
!594 = !DILocation(line: 157, column: 10, scope: !584)
!595 = !DILocation(line: 158, column: 3, scope: !584)
!596 = !DILocation(line: 152, column: 20, scope: !579)
!597 = !DILocation(line: 152, column: 29, scope: !579)
!598 = !DILocation(line: 152, column: 3, scope: !579)
!599 = distinct !{!599, !581, !600, !428, !429}
!600 = !DILocation(line: 158, column: 3, scope: !580)
!601 = !DILocation(line: 159, column: 2, scope: !199)
!602 = !DILocation(line: 159, column: 2, scope: !198)
!603 = !DILocation(line: 148, column: 35, scope: !199)
!604 = !DILocation(line: 148, column: 2, scope: !199)
!605 = distinct !{!605, !568, !606, !428, !429}
!606 = !DILocation(line: 159, column: 2, scope: !200)
!607 = !DILocation(line: 161, column: 2, scope: !204)
!608 = !DILocation(line: 161, column: 2, scope: !208)
!609 = !{i8 0, i8 2}
!610 = !{}
!611 = !DILocation(line: 161, column: 2, scope: !612)
!612 = distinct !DILexicalBlock(scope: !208, file: !3, line: 161, column: 2)
!613 = !DILocation(line: 0, scope: !612)
!614 = !DILocation(line: 161, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 161, column: 2)
!616 = !DILocation(line: 161, column: 2, scope: !209)
!617 = !DILocation(line: 161, column: 2, scope: !212)
!618 = !DILocation(line: 161, column: 2, scope: !216)
!619 = !DILocation(line: 161, column: 2, scope: !215)
!620 = !DILocation(line: 161, column: 2, scope: !621)
!621 = distinct !DILexicalBlock(scope: !215, file: !3, line: 161, column: 2)
!622 = !DILocation(line: 161, column: 2, scope: !214)
!623 = !DILocation(line: 161, column: 2, scope: !624)
!624 = distinct !DILexicalBlock(scope: !214, file: !3, line: 161, column: 2)
!625 = !DILocation(line: 161, column: 2, scope: !626)
!626 = distinct !DILexicalBlock(scope: !214, file: !3, line: 161, column: 2)
!627 = !{i64 2154109089, i64 2154109118, i64 2154109164, i64 2154109222, i64 2154109276, i64 2154109330, i64 2154109385, i64 2154109416, i64 2154109724, i64 2154109730, i64 2154109777, i64 2154109800, i64 2154109826}
!628 = !DILocation(line: 161, column: 2, scope: !629)
!629 = distinct !DILexicalBlock(scope: !214, file: !3, line: 161, column: 2)
!630 = !DILocation(line: 161, column: 2, scope: !631)
!631 = distinct !DILexicalBlock(scope: !215, file: !3, line: 161, column: 2)
!632 = !DILocation(line: 161, column: 2, scope: !191)
!633 = !DILocation(line: 162, column: 1, scope: !191)
!634 = !DISubprogram(name: "round_jiffies_relative", scope: !162, file: !162, line: 223, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{!54, !54}
!637 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !638, file: !638, line: 22, type: !635, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!638 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "x", arg: 1, scope: !637, file: !638, line: 22, type: !54)
!641 = !DILocalVariable(name: "y", scope: !637, file: !638, line: 24, type: !54)
!642 = !DILocation(line: 22, column: 72, scope: !637)
!643 = !DILocation(line: 24, column: 2, scope: !637)
!644 = !DILocation(line: 24, column: 16, scope: !637)
!645 = !DILocation(line: 24, column: 20, scope: !637)
!646 = !DILocation(line: 24, column: 22, scope: !637)
!647 = !DILocation(line: 27, column: 6, scope: !637)
!648 = !DILocation(line: 27, column: 12, scope: !637)
!649 = !DILocation(line: 27, column: 16, scope: !637)
!650 = !DILocation(line: 27, column: 14, scope: !637)
!651 = !DILocation(line: 27, column: 11, scope: !637)
!652 = !DILocation(line: 27, column: 21, scope: !637)
!653 = !DILocation(line: 27, column: 55, scope: !637)
!654 = !DILocation(line: 27, column: 53, scope: !637)
!655 = !DILocation(line: 27, column: 8, scope: !637)
!656 = !DILocation(line: 27, column: 4, scope: !637)
!657 = !DILocation(line: 29, column: 9, scope: !637)
!658 = !DILocation(line: 30, column: 1, scope: !637)
!659 = !DILocation(line: 29, column: 2, scope: !637)
!660 = !DISubprogram(name: "__warn_printk", scope: !661, file: !661, line: 93, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!662 = !DISubroutineType(types: !663)
!663 = !{null, !63, null}
