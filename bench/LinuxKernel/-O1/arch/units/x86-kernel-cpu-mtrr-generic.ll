; ModuleID = 'arch/x86/kernel/cpu/mtrr/generic.c'
source_filename = "arch/x86/kernel/cpu/mtrr/generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mtrr_state: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mtrr_state ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mtrr_state_type = type { [256 x %struct.mtrr_var_range], [88 x i8], i8, i8, i8 }
%struct.mtrr_var_range = type { i32, i32, i32, i32 }
%struct.mtrr_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cache_map = type { i64, i64, i64, i16 }
%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.3, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [16 x i8] }
%struct.anon.5 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.fixed_range_block = type { i32, i32 }
%struct.static_call_key = type { ptr, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.anon.2 = type { i8, i8, i8, i8 }

@__setup_str_mtrr_param_setup = internal constant [5 x i8] c"mtrr\00", section ".init.rodata", align 1, !dbg !0
@__setup_mtrr_param_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mtrr_param_setup, ptr @mtrr_param_setup, i32 1 }, section ".init.setup", align 8, !dbg !62
@mtrr_state = hidden global %struct.mtrr_state_type zeroinitializer, align 4, !dbg !206
@__UNIQUE_ID___addressable_mtrr_state281 = internal global ptr @mtrr_state, section ".discard.addressable", align 8, !dbg !74
@mtrr_if = external dso_local global ptr, align 8
@generic_mtrr_ops = hidden constant %struct.mtrr_ops { i32 0, ptr @generic_set_mtrr, ptr @generic_get_mtrr, ptr @generic_get_free_region, ptr @generic_validate_add_page, ptr @generic_have_wrcomb }, align 8, !dbg !148
@cache_map_fixed = internal global i32 0, align 4, !dbg !198
@cache_map_n = internal global i32 0, align 4, !dbg !196
@cache_map = internal global ptr @init_cache_map, section ".ref.data", align 8, !dbg !244
@.str = private unnamed_addr constant [87 x i8] c"\016MTRR map: %u entries (%u fixed + %u variable; max %u), built from %u variable MTRRs\0A\00", align 1, !dbg !76
@num_var_ranges = external dso_local global i32, align 4
@mtrr_tom2 = hidden global i64 0, align 8, !dbg !204
@mtrr_debug = hidden global i8 0, align 1, !dbg !180
@.str.1 = private unnamed_addr constant [27 x i8] c"\016%3u: %016llx-%016llx %s\0A\00", align 1, !dbg !81
@mtrr_mutex = external dso_local global %struct.mutex, align 8
@init_cache_map = internal global [600 x %struct.cache_map] zeroinitializer, section ".init.data", align 16, !dbg !184
@cache_map_size = internal global i32 600, align 4, !dbg !252
@.str.2 = private unnamed_addr constant [60 x i8] c"\013MTRRs disabled due to allocation failure for lookup map.\0A\00", align 1, !dbg !86
@mtrr_state_set = internal global i32 0, align 4, !dbg !202
@.str.3 = private unnamed_addr constant [35 x i8] c"arch/x86/kernel/cpu/mtrr/generic.c\00", align 1, !dbg !91
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"\014Trying to overwrite MTRR state with %u variable entries\0A\00", align 1, !dbg !96
@smp_changes_mask = internal global i64 0, align 8, !dbg !200
@.str.5 = private unnamed_addr constant [56 x i8] c"\014mtrr: your CPUs had inconsistent fixed MTRR settings\0A\00", align 1, !dbg !101
@.str.6 = private unnamed_addr constant [59 x i8] c"\014mtrr: your CPUs had inconsistent variable MTRR settings\0A\00", align 1, !dbg !106
@.str.7 = private unnamed_addr constant [57 x i8] c"\014mtrr: your CPUs had inconsistent MTRRdefType settings\0A\00", align 1, !dbg !108
@.str.8 = private unnamed_addr constant [53 x i8] c"\016mtrr: probably your BIOS does not setup all CPUs.\0A\00", align 1, !dbg !113
@.str.9 = private unnamed_addr constant [34 x i8] c"\016mtrr: corrected configuration.\0A\00", align 1, !dbg !118
@.str.10 = private unnamed_addr constant [48 x i8] c"\013MTRR: CPU %u: Writing MSR %x to %x:%x failed\0A\00", align 1, !dbg !123
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !128
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@deftype_lo = internal global i32 0, align 4, !dbg !230
@deftype_hi = internal global i32 0, align 4, !dbg !232
@.str.12 = private unnamed_addr constant [45 x i8] c"\014mtrr: base(0x%lx000) is not 4 MiB aligned\0A\00", align 1, !dbg !133
@.str.13 = private unnamed_addr constant [75 x i8] c"\014mtrr: writable mtrr between 0x70000000 and 0x7003FFFF may hang the CPU.\0A\00", align 1, !dbg !138
@.str.14 = private unnamed_addr constant [68 x i8] c"\014mtrr: base(0x%lx000) is not aligned on a size(0x%lx000) boundary\0A\00", align 1, !dbg !143
@phys_hi_rsvd = hidden global i32 0, align 4, !dbg !228
@.str.15 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !234
@.str.16 = private unnamed_addr constant [39 x i8] c"MTRR cache mode memory map exhausted!\0A\00", align 1, !dbg !239
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !247
@.str.18 = private unnamed_addr constant [98 x i8] c"\013[Firmware Warn]: MTRR: CPU %u: SYSCFG[MtrrFixDramModEn] not cleared by BIOS, clearing this bit\0A\00", align 1, !dbg !254
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@.str.19 = private unnamed_addr constant [25 x i8] c"\016MTRR default type: %s\0A\00", align 1, !dbg !259
@.str.20 = private unnamed_addr constant [30 x i8] c"\016MTRR fixed ranges %sabled:\0A\00", align 1, !dbg !264
@.str.21 = private unnamed_addr constant [3 x i8] c"en\00", align 1, !dbg !269
@.str.22 = private unnamed_addr constant [4 x i8] c"dis\00", align 1, !dbg !274
@.str.23 = private unnamed_addr constant [33 x i8] c"\016MTRR variable ranges %sabled:\0A\00", align 1, !dbg !279
@.str.24 = private unnamed_addr constant [45 x i8] c"\016  %u base %0*X%05X000 mask %0*X%05X000 %s\0A\00", align 1, !dbg !284
@.str.25 = private unnamed_addr constant [17 x i8] c"\016  %u disabled\0A\00", align 1, !dbg !286
@.str.26 = private unnamed_addr constant [27 x i8] c"\016TOM2: %016llx aka %lldM\0A\00", align 1, !dbg !291
@last_fixed_end = internal global i32 0, section ".init.data", align 4, !dbg !293
@last_fixed_type = internal global i8 0, section ".init.data", align 1, !dbg !297
@last_fixed_start = internal global i32 0, section ".init.data", align 4, !dbg !295
@.str.27 = private unnamed_addr constant [18 x i8] c"\016  %05X-%05X %s\0A\00", align 1, !dbg !299
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@fixed_range_blocks = internal global [4 x %struct.fixed_range_block] [%struct.fixed_range_block { i32 592, i32 1 }, %struct.fixed_range_block { i32 600, i32 2 }, %struct.fixed_range_block { i32 616, i32 8 }, %struct.fixed_range_block zeroinitializer], align 16, !dbg !304
@.str.28 = private unnamed_addr constant [64 x i8] c"\014mtrr: your BIOS has configured an incorrect mask, fixing it.\0A\00", align 1, !dbg !311
@generic_get_mtrr.__UNIQUE_ID___addressable___SCK__preempt_schedule286 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !316
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__setup_mtrr_param_setup, ptr @__UNIQUE_ID___addressable_mtrr_state281, ptr @generic_get_mtrr.__UNIQUE_ID___addressable___SCK__preempt_schedule286], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mtrr_param_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !357 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !359, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #20, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !360, metadata !DIExpression()), !dbg !363
  store i32 0, ptr %rc, align 4, !dbg !363
  %0 = load ptr, ptr %str.addr, align 8, !dbg !364
  %tobool = icmp ne ptr %0, null, !dbg !364
  br i1 %tobool, label %if.end, label %if.then, !dbg !366

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !367

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !368
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.15) #21, !dbg !370
  %tobool1 = icmp ne i32 %call, 0, !dbg !370
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !371

if.then2:                                         ; preds = %if.end
  store i8 1, ptr @mtrr_debug, align 1, !dbg !372
  br label %if.end3, !dbg !373

if.else:                                          ; preds = %if.end
  store i32 -22, ptr %rc, align 4, !dbg !374
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %2 = load i32, ptr %rc, align 4, !dbg !375
  store i32 %2, ptr %retval, align 4, !dbg !376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !376

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #20, !dbg !377
  %3 = load i32, ptr %retval, align 4, !dbg !377
  ret i32 %3, !dbg !377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @generic_rebuild_map() #1 align 16 !dbg !378 {
entry:
  %0 = load ptr, ptr @mtrr_if, align 8, !dbg !381
  %cmp = icmp ne ptr %0, @generic_mtrr_ops, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  br label %return, !dbg !385

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @cache_map_fixed, align 4, !dbg !386
  store i32 %1, ptr @cache_map_n, align 4, !dbg !387
  call void @map_add_var() #21, !dbg !388
  br label %return, !dbg !389

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @map_add_var() #1 align 16 !dbg !390 {
entry:
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %type = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #20, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %start, metadata !392, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #20, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %size, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %i, metadata !394, metadata !DIExpression()), !dbg !401
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #20, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %type, metadata !395, metadata !DIExpression()), !dbg !403
  %0 = load i64, ptr @mtrr_tom2, align 8, !dbg !404
  %tobool = icmp ne i64 %0, 0, !dbg !404
  br i1 %tobool, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @mtrr_tom2, align 8, !dbg !407
  call void @add_map_entry(i64 noundef 4294967296, i64 noundef %1, i8 noundef zeroext 6) #21, !dbg !409
  %2 = load ptr, ptr @cache_map, align 8, !dbg !410
  %3 = load i32, ptr @cache_map_n, align 4, !dbg !411
  %sub = sub i32 %3, 1, !dbg !412
  %idxprom = zext i32 %sub to i64, !dbg !410
  %arrayidx = getelementptr %struct.cache_map, ptr %2, i64 %idxprom, !dbg !410
  %fixed = getelementptr inbounds %struct.cache_map, ptr %arrayidx, i32 0, i32 3, !dbg !413
  %bf.load = load i16, ptr %fixed, align 8, !dbg !414
  %bf.clear = and i16 %bf.load, -257, !dbg !414
  %bf.set = or i16 %bf.clear, 256, !dbg !414
  store i16 %bf.set, ptr %fixed, align 8, !dbg !414
  br label %if.end, !dbg !415

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !416
  br label %for.cond, !dbg !418

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !419
  %5 = load i32, ptr @num_var_ranges, align 4, !dbg !421
  %cmp = icmp ult i32 %4, %5, !dbg !422
  br i1 %cmp, label %for.body, label %for.end, !dbg !423

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !424
  %call = call zeroext i8 @get_var_mtrr_state(i32 noundef %6, ptr noundef %start, ptr noundef %size) #21, !dbg !426
  store i8 %call, ptr %type, align 1, !dbg !427
  %7 = load i8, ptr %type, align 1, !dbg !428
  %conv = zext i8 %7 to i32, !dbg !428
  %cmp1 = icmp ne i32 %conv, 255, !dbg !430
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !431

if.then3:                                         ; preds = %for.body
  %8 = load i64, ptr %start, align 8, !dbg !432
  %9 = load i64, ptr %start, align 8, !dbg !433
  %10 = load i64, ptr %size, align 8, !dbg !434
  %add = add i64 %9, %10, !dbg !435
  %11 = load i8, ptr %type, align 1, !dbg !436
  call void @add_map_entry(i64 noundef %8, i64 noundef %add, i8 noundef zeroext %11) #21, !dbg !437
  br label %if.end4, !dbg !437

if.end4:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %if.end4
  %12 = load i32, ptr %i, align 4, !dbg !439
  %inc = add i32 %12, 1, !dbg !439
  store i32 %inc, ptr %i, align 4, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #20, !dbg !445
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !445
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #20, !dbg !445
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #20, !dbg !445
  ret void, !dbg !445
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @mtrr_build_map() #0 section ".init.text" align 16 !dbg !446 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %type = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #20, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %start, metadata !448, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #20, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %end, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #20, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %size, metadata !450, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %i, metadata !451, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #20, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %type, metadata !452, metadata !DIExpression()), !dbg !460
  %0 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !461
  %conv = zext i8 %0 to i64, !dbg !463
  %and = and i64 %conv, 1, !dbg !464
  %tobool = icmp ne i64 %and, 0, !dbg !464
  br i1 %tobool, label %if.then, label %if.end15, !dbg !465

if.then:                                          ; preds = %entry
  store i64 0, ptr %start, align 8, !dbg !466
  store i64 65536, ptr %size, align 8, !dbg !468
  store i64 65536, ptr %end, align 8, !dbg !469
  %1 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1), align 4, !dbg !470
  store i8 %1, ptr %type, align 1, !dbg !471
  store i32 1, ptr %i, align 4, !dbg !472
  br label %for.cond, !dbg !474

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !dbg !475
  %cmp = icmp ult i32 %2, 88, !dbg !477
  br i1 %cmp, label %for.body, label %for.end, !dbg !478

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !479
  %cmp2 = icmp eq i32 %3, 8, !dbg !482
  br i1 %cmp2, label %if.then6, label %lor.lhs.false, !dbg !483

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !484
  %cmp4 = icmp eq i32 %4, 24, !dbg !485
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !486

if.then6:                                         ; preds = %lor.lhs.false, %for.body
  %5 = load i64, ptr %size, align 8, !dbg !487
  %shr = lshr i64 %5, 2, !dbg !487
  store i64 %shr, ptr %size, align 8, !dbg !487
  br label %if.end, !dbg !488

if.end:                                           ; preds = %if.then6, %lor.lhs.false
  %6 = load i32, ptr %i, align 4, !dbg !489
  %idxprom = zext i32 %6 to i64, !dbg !491
  %arrayidx = getelementptr [88 x i8], ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1), i64 0, i64 %idxprom, !dbg !491
  %7 = load i8, ptr %arrayidx, align 1, !dbg !491
  %conv7 = zext i8 %7 to i32, !dbg !491
  %8 = load i8, ptr %type, align 1, !dbg !492
  %conv8 = zext i8 %8 to i32, !dbg !492
  %cmp9 = icmp ne i32 %conv7, %conv8, !dbg !493
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !494

if.then11:                                        ; preds = %if.end
  %9 = load i64, ptr %start, align 8, !dbg !495
  %10 = load i64, ptr %end, align 8, !dbg !497
  %11 = load i8, ptr %type, align 1, !dbg !498
  call void @add_map_entry(i64 noundef %9, i64 noundef %10, i8 noundef zeroext %11) #21, !dbg !499
  %12 = load i64, ptr %end, align 8, !dbg !500
  store i64 %12, ptr %start, align 8, !dbg !501
  %13 = load i32, ptr %i, align 4, !dbg !502
  %idxprom12 = zext i32 %13 to i64, !dbg !503
  %arrayidx13 = getelementptr [88 x i8], ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1), i64 0, i64 %idxprom12, !dbg !503
  %14 = load i8, ptr %arrayidx13, align 1, !dbg !503
  store i8 %14, ptr %type, align 1, !dbg !504
  br label %if.end14, !dbg !505

if.end14:                                         ; preds = %if.then11, %if.end
  %15 = load i64, ptr %size, align 8, !dbg !506
  %16 = load i64, ptr %end, align 8, !dbg !507
  %add = add i64 %16, %15, !dbg !507
  store i64 %add, ptr %end, align 8, !dbg !507
  br label %for.inc, !dbg !508

for.inc:                                          ; preds = %if.end14
  %17 = load i32, ptr %i, align 4, !dbg !509
  %inc = add i32 %17, 1, !dbg !509
  store i32 %inc, ptr %i, align 4, !dbg !509
  br label %for.cond, !dbg !510, !llvm.loop !511

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %start, align 8, !dbg !513
  %19 = load i64, ptr %end, align 8, !dbg !514
  %20 = load i8, ptr %type, align 1, !dbg !515
  call void @add_map_entry(i64 noundef %18, i64 noundef %19, i8 noundef zeroext %20) #21, !dbg !516
  br label %if.end15, !dbg !517

if.end15:                                         ; preds = %for.end, %entry
  store i32 0, ptr %i, align 4, !dbg !518
  br label %for.cond16, !dbg !520

for.cond16:                                       ; preds = %for.inc22, %if.end15
  %21 = load i32, ptr %i, align 4, !dbg !521
  %22 = load i32, ptr @cache_map_n, align 4, !dbg !523
  %cmp17 = icmp ult i32 %21, %22, !dbg !524
  br i1 %cmp17, label %for.body19, label %for.end24, !dbg !525

for.body19:                                       ; preds = %for.cond16
  %23 = load ptr, ptr @cache_map, align 8, !dbg !526
  %24 = load i32, ptr %i, align 4, !dbg !527
  %idxprom20 = zext i32 %24 to i64, !dbg !526
  %arrayidx21 = getelementptr %struct.cache_map, ptr %23, i64 %idxprom20, !dbg !526
  %fixed = getelementptr inbounds %struct.cache_map, ptr %arrayidx21, i32 0, i32 3, !dbg !528
  %bf.load = load i16, ptr %fixed, align 8, !dbg !529
  %bf.clear = and i16 %bf.load, -257, !dbg !529
  %bf.set = or i16 %bf.clear, 256, !dbg !529
  store i16 %bf.set, ptr %fixed, align 8, !dbg !529
  br label %for.inc22, !dbg !526

for.inc22:                                        ; preds = %for.body19
  %25 = load i32, ptr %i, align 4, !dbg !530
  %inc23 = add i32 %25, 1, !dbg !530
  store i32 %inc23, ptr %i, align 4, !dbg !530
  br label %for.cond16, !dbg !531, !llvm.loop !532

for.end24:                                        ; preds = %for.cond16
  %26 = load i32, ptr @cache_map_n, align 4, !dbg !534
  store i32 %26, ptr @cache_map_fixed, align 4, !dbg !535
  call void @map_add_var() #21, !dbg !536
  br label %do.body, !dbg !537

do.body:                                          ; preds = %for.end24
  br label %do.cond, !dbg !539

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !539

do.end:                                           ; preds = %do.cond
  %27 = load i32, ptr @cache_map_n, align 4, !dbg !537
  %28 = load i32, ptr @cache_map_fixed, align 4, !dbg !537
  %29 = load i32, ptr @cache_map_n, align 4, !dbg !537
  %30 = load i32, ptr @cache_map_fixed, align 4, !dbg !537
  %sub = sub i32 %29, %30, !dbg !537
  %call = call i32 @get_cache_map_size() #22, !dbg !537
  %31 = load i32, ptr @num_var_ranges, align 4, !dbg !537
  %32 = load i64, ptr @mtrr_tom2, align 8, !dbg !537
  %cmp25 = icmp ne i64 %32, 0, !dbg !537
  %conv26 = zext i1 %cmp25 to i32, !dbg !537
  %add27 = add i32 %31, %conv26, !dbg !537
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %27, i32 noundef %28, i32 noundef %sub, i32 noundef %call, i32 noundef %add27) #22, !dbg !537
  store i32 %call28, ptr %tmp, align 4, !dbg !539
  %33 = load i32, ptr %tmp, align 4, !dbg !537
  %34 = load i8, ptr @mtrr_debug, align 1, !dbg !541, !range !543, !noundef !544
  %tobool29 = trunc i8 %34 to i1, !dbg !541
  br i1 %tobool29, label %if.then30, label %if.end57, !dbg !545

if.then30:                                        ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !546
  br label %for.cond31, !dbg !549

for.cond31:                                       ; preds = %for.inc54, %if.then30
  %35 = load i32, ptr %i, align 4, !dbg !550
  %36 = load i32, ptr @cache_map_n, align 4, !dbg !552
  %cmp32 = icmp ult i32 %35, %36, !dbg !553
  br i1 %cmp32, label %for.body34, label %for.end56, !dbg !554

for.body34:                                       ; preds = %for.cond31
  br label %do.body35, !dbg !555

do.body35:                                        ; preds = %for.body34
  br label %do.cond36, !dbg !558

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !558

do.end37:                                         ; preds = %do.cond36
  %37 = load i32, ptr %i, align 4, !dbg !555
  %38 = load ptr, ptr @cache_map, align 8, !dbg !555
  %39 = load i32, ptr %i, align 4, !dbg !555
  %idxprom39 = zext i32 %39 to i64, !dbg !555
  %arrayidx40 = getelementptr %struct.cache_map, ptr %38, i64 %idxprom39, !dbg !555
  %start41 = getelementptr inbounds %struct.cache_map, ptr %arrayidx40, i32 0, i32 0, !dbg !555
  %40 = load i64, ptr %start41, align 8, !dbg !555
  %41 = load ptr, ptr @cache_map, align 8, !dbg !555
  %42 = load i32, ptr %i, align 4, !dbg !555
  %idxprom42 = zext i32 %42 to i64, !dbg !555
  %arrayidx43 = getelementptr %struct.cache_map, ptr %41, i64 %idxprom42, !dbg !555
  %end44 = getelementptr inbounds %struct.cache_map, ptr %arrayidx43, i32 0, i32 1, !dbg !555
  %43 = load i64, ptr %end44, align 8, !dbg !555
  %sub45 = sub i64 %43, 1, !dbg !555
  %44 = load ptr, ptr @cache_map, align 8, !dbg !555
  %45 = load i32, ptr %i, align 4, !dbg !555
  %idxprom46 = zext i32 %45 to i64, !dbg !555
  %arrayidx47 = getelementptr %struct.cache_map, ptr %44, i64 %idxprom46, !dbg !555
  %type48 = getelementptr inbounds %struct.cache_map, ptr %arrayidx47, i32 0, i32 3, !dbg !555
  %bf.load49 = load i16, ptr %type48, align 8, !dbg !555
  %bf.clear50 = and i16 %bf.load49, 255, !dbg !555
  %bf.cast = zext i16 %bf.clear50 to i64, !dbg !555
  %conv51 = trunc i64 %bf.cast to i32, !dbg !555
  %call52 = call ptr @mtrr_attrib_to_str(i32 noundef %conv51) #21, !dbg !555
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %37, i64 noundef %40, i64 noundef %sub45, ptr noundef %call52) #22, !dbg !555
  store i32 %call53, ptr %tmp38, align 4, !dbg !558
  %46 = load i32, ptr %tmp38, align 4, !dbg !555
  br label %for.inc54, !dbg !560

for.inc54:                                        ; preds = %do.end37
  %47 = load i32, ptr %i, align 4, !dbg !561
  %inc55 = add i32 %47, 1, !dbg !561
  store i32 %inc55, ptr %i, align 4, !dbg !561
  br label %for.cond31, !dbg !562, !llvm.loop !563

for.end56:                                        ; preds = %for.cond31
  br label %if.end57, !dbg !565

if.end57:                                         ; preds = %for.end56, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #20, !dbg !566
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !566
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #20, !dbg !566
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #20, !dbg !566
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #20, !dbg !566
  ret void, !dbg !566
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_map_entry(i64 noundef %start, i64 noundef %end, i8 noundef zeroext %type) #1 align 16 !dbg !567 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i8, align 1
  %new_type = alloca i8, align 1
  %old_type = alloca i8, align 1
  %tmp = alloca i64, align 8
  %i = alloca i32, align 4
  %__UNIQUE_ID___x282 = alloca i64, align 8
  %__UNIQUE_ID___y283 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__UNIQUE_ID___x284 = alloca i64, align 8
  %__UNIQUE_ID___y285 = alloca i64, align 8
  %tmp44 = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !571, metadata !DIExpression()), !dbg !589
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !572, metadata !DIExpression()), !dbg !590
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !573, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_type) #20, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %new_type, metadata !574, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 1, ptr %old_type) #20, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %old_type, metadata !575, metadata !DIExpression()), !dbg !594
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #20, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !576, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %i, metadata !577, metadata !DIExpression()), !dbg !598
  store i32 0, ptr %i, align 4, !dbg !599
  br label %for.cond, !dbg !600

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !601
  %1 = load i32, ptr @cache_map_n, align 4, !dbg !602
  %cmp = icmp ult i32 %0, %1, !dbg !603
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !604

land.rhs:                                         ; preds = %for.cond
  %2 = load i64, ptr %start.addr, align 8, !dbg !605
  %3 = load i64, ptr %end.addr, align 8, !dbg !606
  %cmp1 = icmp ult i64 %2, %3, !dbg !607
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !608
  br i1 %4, label %for.body, label %for.end, !dbg !609

for.body:                                         ; preds = %land.end
  %5 = load i64, ptr %start.addr, align 8, !dbg !610
  %6 = load ptr, ptr @cache_map, align 8, !dbg !612
  %7 = load i32, ptr %i, align 4, !dbg !613
  %idxprom = sext i32 %7 to i64, !dbg !612
  %arrayidx = getelementptr %struct.cache_map, ptr %6, i64 %idxprom, !dbg !612
  %end2 = getelementptr inbounds %struct.cache_map, ptr %arrayidx, i32 0, i32 1, !dbg !614
  %8 = load i64, ptr %end2, align 8, !dbg !614
  %cmp3 = icmp uge i64 %5, %8, !dbg !615
  br i1 %cmp3, label %if.then, label %if.end, !dbg !616

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !617

if.end:                                           ; preds = %for.body
  %9 = load i64, ptr %start.addr, align 8, !dbg !618
  %10 = load ptr, ptr @cache_map, align 8, !dbg !619
  %11 = load i32, ptr %i, align 4, !dbg !620
  %idxprom4 = sext i32 %11 to i64, !dbg !619
  %arrayidx5 = getelementptr %struct.cache_map, ptr %10, i64 %idxprom4, !dbg !619
  %start6 = getelementptr inbounds %struct.cache_map, ptr %arrayidx5, i32 0, i32 0, !dbg !621
  %12 = load i64, ptr %start6, align 8, !dbg !621
  %cmp7 = icmp ult i64 %9, %12, !dbg !622
  br i1 %cmp7, label %if.then8, label %if.end14, !dbg !623

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x282) #20, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x282, metadata !578, metadata !DIExpression()), !dbg !624
  %13 = load i64, ptr %end.addr, align 8, !dbg !624
  store i64 %13, ptr %__UNIQUE_ID___x282, align 8, !dbg !624
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y283) #20, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y283, metadata !585, metadata !DIExpression()), !dbg !624
  %14 = load ptr, ptr @cache_map, align 8, !dbg !624
  %15 = load i32, ptr %i, align 4, !dbg !624
  %idxprom9 = sext i32 %15 to i64, !dbg !624
  %arrayidx10 = getelementptr %struct.cache_map, ptr %14, i64 %idxprom9, !dbg !624
  %start11 = getelementptr inbounds %struct.cache_map, ptr %arrayidx10, i32 0, i32 0, !dbg !624
  %16 = load i64, ptr %start11, align 8, !dbg !624
  store i64 %16, ptr %__UNIQUE_ID___y283, align 8, !dbg !624
  %17 = load i64, ptr %__UNIQUE_ID___x282, align 8, !dbg !624
  %18 = load i64, ptr %__UNIQUE_ID___y283, align 8, !dbg !624
  %cmp13 = icmp ult i64 %17, %18, !dbg !624
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !624

cond.true:                                        ; preds = %if.then8
  %19 = load i64, ptr %__UNIQUE_ID___x282, align 8, !dbg !624
  br label %cond.end, !dbg !624

cond.false:                                       ; preds = %if.then8
  %20 = load i64, ptr %__UNIQUE_ID___y283, align 8, !dbg !624
  br label %cond.end, !dbg !624

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !624
  store i64 %cond, ptr %tmp12, align 8, !dbg !624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y283) #20, !dbg !625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x282) #20, !dbg !625
  %21 = load i64, ptr %tmp12, align 8, !dbg !624
  store i64 %21, ptr %tmp, align 8, !dbg !626
  %22 = load i64, ptr %start.addr, align 8, !dbg !627
  %23 = load i64, ptr %tmp, align 8, !dbg !628
  %24 = load i8, ptr %type.addr, align 1, !dbg !629
  %25 = load i32, ptr %i, align 4, !dbg !630
  %call = call i32 @add_map_entry_at(i64 noundef %22, i64 noundef %23, i8 noundef zeroext %24, i32 noundef %25) #21, !dbg !631
  %26 = load i32, ptr %i, align 4, !dbg !632
  %sub = sub i32 %26, %call, !dbg !632
  store i32 %sub, ptr %i, align 4, !dbg !632
  %27 = load i64, ptr %tmp, align 8, !dbg !633
  store i64 %27, ptr %start.addr, align 8, !dbg !634
  br label %for.inc, !dbg !635

if.end14:                                         ; preds = %if.end
  %28 = load i8, ptr %type.addr, align 1, !dbg !636
  %29 = load ptr, ptr @cache_map, align 8, !dbg !637
  %30 = load i32, ptr %i, align 4, !dbg !638
  %idxprom15 = sext i32 %30 to i64, !dbg !637
  %arrayidx16 = getelementptr %struct.cache_map, ptr %29, i64 %idxprom15, !dbg !637
  %type17 = getelementptr inbounds %struct.cache_map, ptr %arrayidx16, i32 0, i32 3, !dbg !639
  %bf.load = load i16, ptr %type17, align 8, !dbg !639
  %bf.clear = and i16 %bf.load, 255, !dbg !639
  %bf.cast = zext i16 %bf.clear to i64, !dbg !639
  %conv = trunc i64 %bf.cast to i8, !dbg !637
  %call18 = call zeroext i8 @get_effective_type(i8 noundef zeroext %28, i8 noundef zeroext %conv) #21, !dbg !640
  store i8 %call18, ptr %new_type, align 1, !dbg !641
  %31 = load ptr, ptr @cache_map, align 8, !dbg !642
  %32 = load i32, ptr %i, align 4, !dbg !643
  %idxprom19 = sext i32 %32 to i64, !dbg !642
  %arrayidx20 = getelementptr %struct.cache_map, ptr %31, i64 %idxprom19, !dbg !642
  %type21 = getelementptr inbounds %struct.cache_map, ptr %arrayidx20, i32 0, i32 3, !dbg !644
  %bf.load22 = load i16, ptr %type21, align 8, !dbg !644
  %bf.clear23 = and i16 %bf.load22, 255, !dbg !644
  %bf.cast24 = zext i16 %bf.clear23 to i64, !dbg !644
  %conv25 = trunc i64 %bf.cast24 to i8, !dbg !642
  store i8 %conv25, ptr %old_type, align 1, !dbg !645
  %33 = load ptr, ptr @cache_map, align 8, !dbg !646
  %34 = load i32, ptr %i, align 4, !dbg !648
  %idxprom26 = sext i32 %34 to i64, !dbg !646
  %arrayidx27 = getelementptr %struct.cache_map, ptr %33, i64 %idxprom26, !dbg !646
  %fixed = getelementptr inbounds %struct.cache_map, ptr %arrayidx27, i32 0, i32 3, !dbg !649
  %bf.load28 = load i16, ptr %fixed, align 8, !dbg !649
  %bf.lshr = lshr i16 %bf.load28, 8, !dbg !649
  %bf.clear29 = and i16 %bf.lshr, 1, !dbg !649
  %bf.cast30 = zext i16 %bf.clear29 to i64, !dbg !649
  %conv31 = trunc i64 %bf.cast30 to i32, !dbg !646
  %tobool = icmp ne i32 %conv31, 0, !dbg !646
  br i1 %tobool, label %if.then36, label %lor.lhs.false, !dbg !650

lor.lhs.false:                                    ; preds = %if.end14
  %35 = load i8, ptr %new_type, align 1, !dbg !651
  %conv32 = zext i8 %35 to i32, !dbg !651
  %36 = load i8, ptr %old_type, align 1, !dbg !652
  %conv33 = zext i8 %36 to i32, !dbg !652
  %cmp34 = icmp eq i32 %conv32, %conv33, !dbg !653
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !654

if.then36:                                        ; preds = %lor.lhs.false, %if.end14
  %37 = load ptr, ptr @cache_map, align 8, !dbg !655
  %38 = load i32, ptr %i, align 4, !dbg !657
  %idxprom37 = sext i32 %38 to i64, !dbg !655
  %arrayidx38 = getelementptr %struct.cache_map, ptr %37, i64 %idxprom37, !dbg !655
  %end39 = getelementptr inbounds %struct.cache_map, ptr %arrayidx38, i32 0, i32 1, !dbg !658
  %39 = load i64, ptr %end39, align 8, !dbg !658
  store i64 %39, ptr %start.addr, align 8, !dbg !659
  br label %for.inc, !dbg !660

if.end40:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x284) #20, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x284, metadata !586, metadata !DIExpression()), !dbg !661
  %40 = load i64, ptr %end.addr, align 8, !dbg !661
  store i64 %40, ptr %__UNIQUE_ID___x284, align 8, !dbg !661
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y285) #20, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y285, metadata !588, metadata !DIExpression()), !dbg !661
  %41 = load ptr, ptr @cache_map, align 8, !dbg !661
  %42 = load i32, ptr %i, align 4, !dbg !661
  %idxprom41 = sext i32 %42 to i64, !dbg !661
  %arrayidx42 = getelementptr %struct.cache_map, ptr %41, i64 %idxprom41, !dbg !661
  %end43 = getelementptr inbounds %struct.cache_map, ptr %arrayidx42, i32 0, i32 1, !dbg !661
  %43 = load i64, ptr %end43, align 8, !dbg !661
  store i64 %43, ptr %__UNIQUE_ID___y285, align 8, !dbg !661
  %44 = load i64, ptr %__UNIQUE_ID___x284, align 8, !dbg !661
  %45 = load i64, ptr %__UNIQUE_ID___y285, align 8, !dbg !661
  %cmp45 = icmp ult i64 %44, %45, !dbg !661
  br i1 %cmp45, label %cond.true47, label %cond.false48, !dbg !661

cond.true47:                                      ; preds = %if.end40
  %46 = load i64, ptr %__UNIQUE_ID___x284, align 8, !dbg !661
  br label %cond.end49, !dbg !661

cond.false48:                                     ; preds = %if.end40
  %47 = load i64, ptr %__UNIQUE_ID___y285, align 8, !dbg !661
  br label %cond.end49, !dbg !661

cond.end49:                                       ; preds = %cond.false48, %cond.true47
  %cond50 = phi i64 [ %46, %cond.true47 ], [ %47, %cond.false48 ], !dbg !661
  store i64 %cond50, ptr %tmp44, align 8, !dbg !661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y285) #20, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x284) #20, !dbg !662
  %48 = load i64, ptr %tmp44, align 8, !dbg !661
  store i64 %48, ptr %tmp, align 8, !dbg !663
  %49 = load i64, ptr %start.addr, align 8, !dbg !664
  %50 = load i64, ptr %tmp, align 8, !dbg !665
  %51 = load i32, ptr %i, align 4, !dbg !666
  %call51 = call i32 @clr_map_range_at(i64 noundef %49, i64 noundef %50, i32 noundef %51) #21, !dbg !667
  %52 = load i32, ptr %i, align 4, !dbg !668
  %add = add i32 %52, %call51, !dbg !668
  store i32 %add, ptr %i, align 4, !dbg !668
  %53 = load i64, ptr %start.addr, align 8, !dbg !669
  %54 = load i64, ptr %tmp, align 8, !dbg !670
  %55 = load i8, ptr %new_type, align 1, !dbg !671
  %56 = load i32, ptr %i, align 4, !dbg !672
  %call52 = call i32 @add_map_entry_at(i64 noundef %53, i64 noundef %54, i8 noundef zeroext %55, i32 noundef %56) #21, !dbg !673
  %57 = load i32, ptr %i, align 4, !dbg !674
  %sub53 = sub i32 %57, %call52, !dbg !674
  store i32 %sub53, ptr %i, align 4, !dbg !674
  %58 = load i64, ptr %tmp, align 8, !dbg !675
  store i64 %58, ptr %start.addr, align 8, !dbg !676
  br label %for.inc, !dbg !677

for.inc:                                          ; preds = %cond.end49, %if.then36, %cond.end, %if.then
  %59 = load i32, ptr %i, align 4, !dbg !678
  %inc = add i32 %59, 1, !dbg !678
  store i32 %inc, ptr %i, align 4, !dbg !678
  br label %for.cond, !dbg !679, !llvm.loop !680

for.end:                                          ; preds = %land.end
  %60 = load i64, ptr %start.addr, align 8, !dbg !682
  %61 = load i64, ptr %end.addr, align 8, !dbg !683
  %62 = load i8, ptr %type.addr, align 1, !dbg !684
  %63 = load i32, ptr %i, align 4, !dbg !685
  %call54 = call i32 @add_map_entry_at(i64 noundef %60, i64 noundef %61, i8 noundef zeroext %62, i32 noundef %63) #21, !dbg !686
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !687
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #20, !dbg !687
  call void @llvm.lifetime.end.p0(i64 1, ptr %old_type) #20, !dbg !687
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_type) #20, !dbg !687
  ret void, !dbg !687
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !688 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @get_cache_map_size() #0 section ".init.text" align 16 !dbg !692 {
entry:
  %0 = load i32, ptr @cache_map_fixed, align 4, !dbg !695
  %1 = load i32, ptr @num_var_ranges, align 4, !dbg !696
  %mul = mul i32 2, %1, !dbg !697
  %add = add i32 %0, %mul, !dbg !698
  %2 = load i64, ptr @mtrr_tom2, align 8, !dbg !699
  %cmp = icmp ne i64 %2, 0, !dbg !700
  %conv = zext i1 %cmp to i32, !dbg !700
  %add1 = add i32 %add, %conv, !dbg !701
  ret i32 %add1, !dbg !702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !703 dso_local ptr @mtrr_attrib_to_str(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @mtrr_copy_map() #0 section ".init.text" align 16 !dbg !706 {
entry:
  %new_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_size) #20, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %new_size, metadata !708, metadata !DIExpression()), !dbg !710
  %call = call i32 @get_cache_map_size() #22, !dbg !711
  store i32 %call, ptr %new_size, align 4, !dbg !710
  %0 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !712
  %tobool = icmp ne i8 %0, 0, !dbg !714
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !715

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %new_size, align 4, !dbg !716
  %tobool1 = icmp ne i32 %1, 0, !dbg !716
  br i1 %tobool1, label %if.end, label %if.then, !dbg !717

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr @cache_map, align 8, !dbg !718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !720

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @mtrr_mutex) #21, !dbg !721
  %2 = load i32, ptr %new_size, align 4, !dbg !722
  %conv = zext i32 %2 to i64, !dbg !722
  %call2 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 32, i32 noundef 3264) #23, !dbg !723
  store ptr %call2, ptr @cache_map, align 8, !dbg !724
  %3 = load ptr, ptr @cache_map, align 8, !dbg !725
  %tobool3 = icmp ne ptr %3, null, !dbg !725
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !727

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @cache_map, align 8, !dbg !728
  %5 = load i32, ptr @cache_map_n, align 4, !dbg !730
  %conv5 = zext i32 %5 to i64, !dbg !730
  %mul = mul i64 %conv5, 32, !dbg !731
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %4, ptr align 16 @init_cache_map, i64 %mul, i1 false), !dbg !732
  %6 = load i32, ptr %new_size, align 4, !dbg !733
  store i32 %6, ptr @cache_map_size, align 4, !dbg !734
  br label %if.end7, !dbg !735

if.else:                                          ; preds = %if.end
  store i8 0, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !736
  br label %do.body, !dbg !738

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !740

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !740

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #22, !dbg !738
  store i32 %call6, ptr %tmp, align 4, !dbg !740
  %7 = load i32, ptr %tmp, align 4, !dbg !738
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then4
  call void @mutex_unlock(ptr noundef @mtrr_mutex) #21, !dbg !742
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !743
  br label %cleanup, !dbg !743

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_size) #20, !dbg !743
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !743

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !744 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !803 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !811, metadata !DIExpression()), !dbg !814
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !812, metadata !DIExpression()), !dbg !815
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !813, metadata !DIExpression()), !dbg !816
  %0 = load i64, ptr %n.addr, align 8, !dbg !817
  %1 = load i64, ptr %size.addr, align 8, !dbg !818
  %2 = load i32, ptr %flags.addr, align 4, !dbg !819
  %or = or i32 %2, 256, !dbg !820
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #23, !dbg !821
  ret ptr %call, !dbg !822
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !823 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_overwrite_state(ptr noundef %var, i32 noundef %num_var, i8 noundef zeroext %def_type) #1 align 16 !dbg !824 {
entry:
  %var.addr = alloca ptr, align 8
  %num_var.addr = alloca i32, align 4
  %def_type.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !829, metadata !DIExpression()), !dbg !839
  store i32 %num_var, ptr %num_var.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_var.addr, metadata !830, metadata !DIExpression()), !dbg !840
  store i8 %def_type, ptr %def_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %def_type.addr, metadata !831, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %i, metadata !832, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !833, metadata !DIExpression()), !dbg !844
  %0 = load i32, ptr @mtrr_state_set, align 4, !dbg !844
  %tobool = icmp ne i32 %0, 0, !dbg !844
  %lnot = xor i1 %tobool, true, !dbg !844
  %lnot1 = xor i1 %lnot, true, !dbg !844
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !844
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !844
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !845
  %tobool2 = icmp ne i32 %1, 0, !dbg !845
  %lnot3 = xor i1 %tobool2, true, !dbg !845
  %lnot5 = xor i1 %lnot3, true, !dbg !845
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !845
  %conv = sext i32 %lnot.ext6 to i64, !dbg !845
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !845
  %tobool7 = icmp ne i64 %expval, 0, !dbg !845
  br i1 %tobool7, label %if.then, label %if.end, !dbg !844

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !845

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !836, metadata !DIExpression()), !dbg !846
  store i32 2307, ptr %__flags, align 4, !dbg !846
  br label %do.body8, !dbg !846

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !847

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !847

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !846

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !849
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 438, i32 %2, i64 12) #20, !dbg !849, !srcloc !851
  br label %do.cond10, !dbg !849

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !849

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !846

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !852

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !852

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !845
  br label %do.cond15, !dbg !846

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !846

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !846

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !844
  %tobool17 = icmp ne i32 %3, 0, !dbg !844
  %lnot18 = xor i1 %tobool17, true, !dbg !844
  %lnot20 = xor i1 %lnot18, true, !dbg !844
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !844
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !844
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !844
  store i64 %expval23, ptr %tmp, align 8, !dbg !845
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !854
  %4 = load i64, ptr %tmp, align 8, !dbg !844
  %tobool24 = icmp ne i64 %4, 0, !dbg !854
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !855

if.then25:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !856

if.end26:                                         ; preds = %if.end
  br i1 false, label %cond.true, label %cond.false, !dbg !857

cond.true:                                        ; preds = %if.end26
  br i1 false, label %if.end35, label %if.then34, !dbg !858

cond.false:                                       ; preds = %if.end26
  br i1 false, label %cond.true27, label %cond.false31, !dbg !857

cond.true27:                                      ; preds = %cond.false
  br i1 false, label %cond.true28, label %cond.false29, !dbg !858

cond.true28:                                      ; preds = %cond.true27
  br i1 true, label %if.end35, label %if.then34, !dbg !858

cond.false29:                                     ; preds = %cond.true27
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #21, !dbg !858
  br i1 %call, label %if.end35, label %if.then34, !dbg !858

cond.false31:                                     ; preds = %cond.false
  %call32 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 159) #21, !dbg !858
  br i1 %call32, label %if.end35, label %if.then34, !dbg !857

if.then34:                                        ; preds = %cond.false31, %cond.false29, %cond.true28, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !860

if.end35:                                         ; preds = %cond.false31, %cond.false29, %cond.true28, %cond.true
  %call36 = call zeroext i1 @cc_platform_has(i32 noundef 5) #21, !dbg !861
  br i1 %call36, label %if.end39, label %land.lhs.true, !dbg !863

land.lhs.true:                                    ; preds = %if.end35
  %call37 = call zeroext i1 @hv_is_isolation_supported() #21, !dbg !864
  br i1 %call37, label %if.end39, label %if.then38, !dbg !865

if.then38:                                        ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !866

if.end39:                                         ; preds = %land.lhs.true, %if.end35
  call void @setup_clear_cpu_cap(i32 noundef 12) #21, !dbg !867
  %5 = load ptr, ptr %var.addr, align 8, !dbg !868
  %tobool40 = icmp ne ptr %5, null, !dbg !868
  br i1 %tobool40, label %if.then41, label %if.end54, !dbg !870

if.then41:                                        ; preds = %if.end39
  %6 = load i32, ptr %num_var.addr, align 4, !dbg !871
  %cmp = icmp ugt i32 %6, 256, !dbg !874
  br i1 %cmp, label %if.then43, label %if.end49, !dbg !875

if.then43:                                        ; preds = %if.then41
  br label %do.body44, !dbg !876

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !879

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !879

do.end46:                                         ; preds = %do.cond45
  %7 = load i32, ptr %num_var.addr, align 4, !dbg !876
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %7) #22, !dbg !876
  store i32 %call48, ptr %tmp47, align 4, !dbg !879
  %8 = load i32, ptr %tmp47, align 4, !dbg !876
  store i32 256, ptr %num_var.addr, align 4, !dbg !881
  br label %if.end49, !dbg !882

if.end49:                                         ; preds = %do.end46, %if.then41
  store i32 0, ptr %i, align 4, !dbg !883
  br label %for.cond, !dbg !885

for.cond:                                         ; preds = %for.inc, %if.end49
  %9 = load i32, ptr %i, align 4, !dbg !886
  %10 = load i32, ptr %num_var.addr, align 4, !dbg !888
  %cmp50 = icmp ult i32 %9, %10, !dbg !889
  br i1 %cmp50, label %for.body, label %for.end, !dbg !890

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !dbg !891
  %idxprom = zext i32 %11 to i64, !dbg !892
  %arrayidx = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom, !dbg !892
  %12 = load ptr, ptr %var.addr, align 8, !dbg !893
  %13 = load i32, ptr %i, align 4, !dbg !894
  %idxprom52 = zext i32 %13 to i64, !dbg !893
  %arrayidx53 = getelementptr %struct.mtrr_var_range, ptr %12, i64 %idxprom52, !dbg !893
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx53, i64 16, i1 false), !dbg !893
  br label %for.inc, !dbg !892

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !895
  %inc = add i32 %14, 1, !dbg !895
  store i32 %inc, ptr %i, align 4, !dbg !895
  br label %for.cond, !dbg !896, !llvm.loop !897

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %num_var.addr, align 4, !dbg !899
  store i32 %15, ptr @num_var_ranges, align 4, !dbg !900
  br label %if.end54, !dbg !901

if.end54:                                         ; preds = %for.end, %if.end39
  %16 = load i8, ptr %def_type.addr, align 1, !dbg !902
  store i8 %16, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !903
  %17 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !904
  %conv55 = zext i8 %17 to i64, !dbg !904
  %or = or i64 %conv55, 2, !dbg !904
  %conv56 = trunc i64 %or to i8, !dbg !904
  store i8 %conv56, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !904
  store i32 1, ptr @mtrr_state_set, align 4, !dbg !905
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !906
  br label %cleanup, !dbg !906

cleanup:                                          ; preds = %if.end54, %if.then38, %if.then34, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !906
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !906

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !907 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !915, metadata !DIExpression()), !dbg !917
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !916, metadata !DIExpression()), !dbg !918
  %0 = load i64, ptr %nr.addr, align 8, !dbg !919
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !920
  br i1 %1, label %cond.true, label %cond.false, !dbg !920

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !921
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !922
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !923
  %conv = zext i1 %call to i32, !dbg !923
  br label %cond.end, !dbg !920

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !924
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !925
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #21, !dbg !926
  %conv2 = zext i1 %call1 to i32, !dbg !926
  br label %cond.end, !dbg !920

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !920
  %tobool = icmp ne i32 %cond, 0, !dbg !920
  ret i1 %tobool, !dbg !927
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #9 align 16 !dbg !928 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !933, metadata !DIExpression()), !dbg !936
  %0 = load i16, ptr %bit.addr, align 2, !dbg !937
  %1 = load i16, ptr %bit.addr, align 2, !dbg !938
  %conv = zext i16 %1 to i32, !dbg !938
  %and = and i32 %conv, 7, !dbg !939
  %shl = shl i32 1, %and, !dbg !940
  %2 = load i16, ptr %bit.addr, align 2, !dbg !941
  %conv1 = zext i16 %2 to i32, !dbg !941
  %shr = ashr i32 %conv1, 3, !dbg !942
  %idxprom = sext i32 %shr to i64, !dbg !943
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !943
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #20
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !944, !srcloc !945

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !944

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !934), !dbg !946
  store i1 true, ptr %retval, align 1, !dbg !947
  br label %return, !dbg !947

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !935), !dbg !948
  store i1 false, ptr %retval, align 1, !dbg !949
  br label %return, !dbg !949

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !950
  ret i1 %3, !dbg !950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #10 align 16 !dbg !951 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !955, metadata !DIExpression()), !dbg !956
  ret i1 false, !dbg !957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hv_is_isolation_supported() #10 align 16 !dbg !958 {
entry:
  ret i1 false, !dbg !962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !963 dso_local void @setup_clear_cpu_cap(i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @mtrr_type_lookup(i64 noundef %start, i64 noundef %end, ptr noundef %uniform) #1 align 16 !dbg !966 {
entry:
  %retval = alloca i8, align 1
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %uniform.addr = alloca ptr, align 8
  %type = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !971, metadata !DIExpression()), !dbg !976
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !972, metadata !DIExpression()), !dbg !977
  store ptr %uniform, ptr %uniform.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uniform.addr, metadata !973, metadata !DIExpression()), !dbg !978
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #20, !dbg !979
  call void @llvm.dbg.declare(metadata ptr %type, metadata !974, metadata !DIExpression()), !dbg !980
  store i8 -1, ptr %type, align 1, !dbg !980
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %i, metadata !975, metadata !DIExpression()), !dbg !982
  %0 = load i32, ptr @mtrr_state_set, align 4, !dbg !983
  %tobool = icmp ne i32 %0, 0, !dbg !983
  br i1 %tobool, label %if.end, label %if.then, !dbg !985

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %uniform.addr, align 8, !dbg !986
  store i8 0, ptr %1, align 1, !dbg !988
  store i8 0, ptr %retval, align 1, !dbg !989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !989

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %uniform.addr, align 8, !dbg !990
  store i8 1, ptr %2, align 1, !dbg !991
  %3 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !992
  %conv = zext i8 %3 to i64, !dbg !994
  %and = and i64 %conv, 2, !dbg !995
  %tobool1 = icmp ne i64 %and, 0, !dbg !995
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !996

if.then2:                                         ; preds = %if.end
  store i8 0, ptr %retval, align 1, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !998
  br label %for.cond, !dbg !1000

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, ptr %i, align 4, !dbg !1001
  %5 = load i32, ptr @cache_map_n, align 4, !dbg !1003
  %cmp = icmp ult i32 %4, %5, !dbg !1004
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1005

land.rhs:                                         ; preds = %for.cond
  %6 = load i64, ptr %start.addr, align 8, !dbg !1006
  %7 = load i64, ptr %end.addr, align 8, !dbg !1007
  %cmp5 = icmp ult i64 %6, %7, !dbg !1008
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !1009
  br i1 %8, label %for.body, label %for.end, !dbg !1010

for.body:                                         ; preds = %land.end
  %9 = load i64, ptr %start.addr, align 8, !dbg !1011
  %10 = load ptr, ptr @cache_map, align 8, !dbg !1014
  %11 = load i32, ptr %i, align 4, !dbg !1015
  %idxprom = zext i32 %11 to i64, !dbg !1014
  %arrayidx = getelementptr %struct.cache_map, ptr %10, i64 %idxprom, !dbg !1014
  %end7 = getelementptr inbounds %struct.cache_map, ptr %arrayidx, i32 0, i32 1, !dbg !1016
  %12 = load i64, ptr %end7, align 8, !dbg !1016
  %cmp8 = icmp uge i64 %9, %12, !dbg !1017
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1018

if.then10:                                        ; preds = %for.body
  br label %for.inc, !dbg !1019

if.end11:                                         ; preds = %for.body
  %13 = load i64, ptr %start.addr, align 8, !dbg !1020
  %14 = load ptr, ptr @cache_map, align 8, !dbg !1022
  %15 = load i32, ptr %i, align 4, !dbg !1023
  %idxprom12 = zext i32 %15 to i64, !dbg !1022
  %arrayidx13 = getelementptr %struct.cache_map, ptr %14, i64 %idxprom12, !dbg !1022
  %start14 = getelementptr inbounds %struct.cache_map, ptr %arrayidx13, i32 0, i32 0, !dbg !1024
  %16 = load i64, ptr %start14, align 8, !dbg !1024
  %cmp15 = icmp ult i64 %13, %16, !dbg !1025
  br i1 %cmp15, label %if.then17, label %if.end25, !dbg !1026

if.then17:                                        ; preds = %if.end11
  %17 = load i8, ptr %type, align 1, !dbg !1027
  %18 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !1029
  %19 = load ptr, ptr %uniform.addr, align 8, !dbg !1030
  %call = call zeroext i8 @type_merge(i8 noundef zeroext %17, i8 noundef zeroext %18, ptr noundef %19) #21, !dbg !1031
  store i8 %call, ptr %type, align 1, !dbg !1032
  %20 = load i64, ptr %end.addr, align 8, !dbg !1033
  %21 = load ptr, ptr @cache_map, align 8, !dbg !1035
  %22 = load i32, ptr %i, align 4, !dbg !1036
  %idxprom18 = zext i32 %22 to i64, !dbg !1035
  %arrayidx19 = getelementptr %struct.cache_map, ptr %21, i64 %idxprom18, !dbg !1035
  %start20 = getelementptr inbounds %struct.cache_map, ptr %arrayidx19, i32 0, i32 0, !dbg !1037
  %23 = load i64, ptr %start20, align 8, !dbg !1037
  %cmp21 = icmp ule i64 %20, %23, !dbg !1038
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1039

if.then23:                                        ; preds = %if.then17
  %24 = load i8, ptr %type, align 1, !dbg !1040
  store i8 %24, ptr %retval, align 1, !dbg !1041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041

if.end24:                                         ; preds = %if.then17
  br label %if.end25, !dbg !1042

if.end25:                                         ; preds = %if.end24, %if.end11
  %25 = load i8, ptr %type, align 1, !dbg !1043
  %26 = load ptr, ptr @cache_map, align 8, !dbg !1044
  %27 = load i32, ptr %i, align 4, !dbg !1045
  %idxprom26 = zext i32 %27 to i64, !dbg !1044
  %arrayidx27 = getelementptr %struct.cache_map, ptr %26, i64 %idxprom26, !dbg !1044
  %type28 = getelementptr inbounds %struct.cache_map, ptr %arrayidx27, i32 0, i32 3, !dbg !1046
  %bf.load = load i16, ptr %type28, align 8, !dbg !1046
  %bf.clear = and i16 %bf.load, 255, !dbg !1046
  %bf.cast = zext i16 %bf.clear to i64, !dbg !1046
  %conv29 = trunc i64 %bf.cast to i8, !dbg !1044
  %28 = load ptr, ptr %uniform.addr, align 8, !dbg !1047
  %call30 = call zeroext i8 @type_merge(i8 noundef zeroext %25, i8 noundef zeroext %conv29, ptr noundef %28) #21, !dbg !1048
  store i8 %call30, ptr %type, align 1, !dbg !1049
  %29 = load ptr, ptr @cache_map, align 8, !dbg !1050
  %30 = load i32, ptr %i, align 4, !dbg !1051
  %idxprom31 = zext i32 %30 to i64, !dbg !1050
  %arrayidx32 = getelementptr %struct.cache_map, ptr %29, i64 %idxprom31, !dbg !1050
  %end33 = getelementptr inbounds %struct.cache_map, ptr %arrayidx32, i32 0, i32 1, !dbg !1052
  %31 = load i64, ptr %end33, align 8, !dbg !1052
  store i64 %31, ptr %start.addr, align 8, !dbg !1053
  br label %for.inc, !dbg !1054

for.inc:                                          ; preds = %if.end25, %if.then10
  %32 = load i32, ptr %i, align 4, !dbg !1055
  %inc = add i32 %32, 1, !dbg !1055
  store i32 %inc, ptr %i, align 4, !dbg !1055
  br label %for.cond, !dbg !1056, !llvm.loop !1057

for.end:                                          ; preds = %land.end
  %33 = load i64, ptr %start.addr, align 8, !dbg !1059
  %34 = load i64, ptr %end.addr, align 8, !dbg !1061
  %cmp34 = icmp ult i64 %33, %34, !dbg !1062
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !1063

if.then36:                                        ; preds = %for.end
  %35 = load i8, ptr %type, align 1, !dbg !1064
  %36 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !1065
  %37 = load ptr, ptr %uniform.addr, align 8, !dbg !1066
  %call37 = call zeroext i8 @type_merge(i8 noundef zeroext %35, i8 noundef zeroext %36, ptr noundef %37) #21, !dbg !1067
  store i8 %call37, ptr %type, align 1, !dbg !1068
  br label %if.end38, !dbg !1069

if.end38:                                         ; preds = %if.then36, %for.end
  %38 = load i8, ptr %type, align 1, !dbg !1070
  store i8 %38, ptr %retval, align 1, !dbg !1071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1071

cleanup:                                          ; preds = %if.end38, %if.then23, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #20, !dbg !1072
  %39 = load i8, ptr %retval, align 1, !dbg !1072
  ret i8 %39, !dbg !1072
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @type_merge(i8 noundef zeroext %type, i8 noundef zeroext %new_type, ptr noundef %uniform) #1 align 16 !dbg !1073 {
entry:
  %retval = alloca i8, align 1
  %type.addr = alloca i8, align 1
  %new_type.addr = alloca i8, align 1
  %uniform.addr = alloca ptr, align 8
  %effective_type = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1077, metadata !DIExpression()), !dbg !1081
  store i8 %new_type, ptr %new_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %new_type.addr, metadata !1078, metadata !DIExpression()), !dbg !1082
  store ptr %uniform, ptr %uniform.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uniform.addr, metadata !1079, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 1, ptr %effective_type) #20, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %effective_type, metadata !1080, metadata !DIExpression()), !dbg !1085
  %0 = load i8, ptr %type.addr, align 1, !dbg !1086
  %conv = zext i8 %0 to i32, !dbg !1086
  %cmp = icmp eq i32 %conv, 255, !dbg !1088
  br i1 %cmp, label %if.then, label %if.end, !dbg !1089

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %new_type.addr, align 1, !dbg !1090
  store i8 %1, ptr %retval, align 1, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %type.addr, align 1, !dbg !1092
  %3 = load i8, ptr %new_type.addr, align 1, !dbg !1093
  %call = call zeroext i8 @get_effective_type(i8 noundef zeroext %2, i8 noundef zeroext %3) #21, !dbg !1094
  store i8 %call, ptr %effective_type, align 1, !dbg !1095
  %4 = load i8, ptr %type.addr, align 1, !dbg !1096
  %conv2 = zext i8 %4 to i32, !dbg !1096
  %5 = load i8, ptr %effective_type, align 1, !dbg !1098
  %conv3 = zext i8 %5 to i32, !dbg !1098
  %cmp4 = icmp ne i32 %conv2, %conv3, !dbg !1099
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1100

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %uniform.addr, align 8, !dbg !1101
  store i8 0, ptr %6, align 1, !dbg !1102
  br label %if.end7, !dbg !1103

if.end7:                                          ; preds = %if.then6, %if.end
  %7 = load i8, ptr %effective_type, align 1, !dbg !1104
  store i8 %7, ptr %retval, align 1, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %effective_type) #20, !dbg !1106
  %8 = load i8, ptr %retval, align 1, !dbg !1106
  ret i8 %8, !dbg !1106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fill_mtrr_var_range(i32 noundef %index, i32 noundef %base_lo, i32 noundef %base_hi, i32 noundef %mask_lo, i32 noundef %mask_hi) #1 align 16 !dbg !1107 {
entry:
  %index.addr = alloca i32, align 4
  %base_lo.addr = alloca i32, align 4
  %base_hi.addr = alloca i32, align 4
  %mask_lo.addr = alloca i32, align 4
  %mask_hi.addr = alloca i32, align 4
  %vr = alloca ptr, align 8
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1111, metadata !DIExpression()), !dbg !1117
  store i32 %base_lo, ptr %base_lo.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base_lo.addr, metadata !1112, metadata !DIExpression()), !dbg !1118
  store i32 %base_hi, ptr %base_hi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base_hi.addr, metadata !1113, metadata !DIExpression()), !dbg !1119
  store i32 %mask_lo, ptr %mask_lo.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask_lo.addr, metadata !1114, metadata !DIExpression()), !dbg !1120
  store i32 %mask_hi, ptr %mask_hi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask_hi.addr, metadata !1115, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %vr) #20, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %vr, metadata !1116, metadata !DIExpression()), !dbg !1123
  store ptr @mtrr_state, ptr %vr, align 8, !dbg !1124
  %0 = load i32, ptr %base_lo.addr, align 4, !dbg !1125
  %1 = load ptr, ptr %vr, align 8, !dbg !1126
  %2 = load i32, ptr %index.addr, align 4, !dbg !1127
  %idxprom = zext i32 %2 to i64, !dbg !1126
  %arrayidx = getelementptr %struct.mtrr_var_range, ptr %1, i64 %idxprom, !dbg !1126
  %base_lo1 = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx, i32 0, i32 0, !dbg !1128
  store i32 %0, ptr %base_lo1, align 4, !dbg !1129
  %3 = load i32, ptr %base_hi.addr, align 4, !dbg !1130
  %4 = load ptr, ptr %vr, align 8, !dbg !1131
  %5 = load i32, ptr %index.addr, align 4, !dbg !1132
  %idxprom2 = zext i32 %5 to i64, !dbg !1131
  %arrayidx3 = getelementptr %struct.mtrr_var_range, ptr %4, i64 %idxprom2, !dbg !1131
  %base_hi4 = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx3, i32 0, i32 1, !dbg !1133
  store i32 %3, ptr %base_hi4, align 4, !dbg !1134
  %6 = load i32, ptr %mask_lo.addr, align 4, !dbg !1135
  %7 = load ptr, ptr %vr, align 8, !dbg !1136
  %8 = load i32, ptr %index.addr, align 4, !dbg !1137
  %idxprom5 = zext i32 %8 to i64, !dbg !1136
  %arrayidx6 = getelementptr %struct.mtrr_var_range, ptr %7, i64 %idxprom5, !dbg !1136
  %mask_lo7 = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx6, i32 0, i32 2, !dbg !1138
  store i32 %6, ptr %mask_lo7, align 4, !dbg !1139
  %9 = load i32, ptr %mask_hi.addr, align 4, !dbg !1140
  %10 = load ptr, ptr %vr, align 8, !dbg !1141
  %11 = load i32, ptr %index.addr, align 4, !dbg !1142
  %idxprom8 = zext i32 %11 to i64, !dbg !1141
  %arrayidx9 = getelementptr %struct.mtrr_var_range, ptr %10, i64 %idxprom8, !dbg !1141
  %mask_hi10 = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx9, i32 0, i32 3, !dbg !1143
  store i32 %9, ptr %mask_hi10, align 4, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr %vr) #20, !dbg !1145
  ret void, !dbg !1145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_save_fixed_ranges(ptr noundef %info) #1 align 16 !dbg !1146 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1150, metadata !DIExpression()), !dbg !1151
  br i1 false, label %cond.true, label %cond.false, !dbg !1152

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !1153

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 12, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #21, !dbg !1153
  br i1 %call, label %if.then, label %if.end, !dbg !1152

if.then:                                          ; preds = %cond.false, %cond.true
  call void @get_fixed_ranges(ptr noundef getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1)) #21, !dbg !1155
  br label %if.end, !dbg !1155

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !1156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_fixed_ranges(ptr noundef %frs) #1 align 16 !dbg !1157 {
entry:
  %frs.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %__val = alloca i64, align 8
  %__val5 = alloca i64, align 8
  %__val23 = alloca i64, align 8
  store ptr %frs, ptr %frs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frs.addr, metadata !1161, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1162, metadata !DIExpression()), !dbg !1176
  %0 = load ptr, ptr %frs.addr, align 8, !dbg !1177
  store ptr %0, ptr %p, align 8, !dbg !1176
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1163, metadata !DIExpression()), !dbg !1179
  call void @k8_check_syscfg_dram_mod_en() #21, !dbg !1180
  br label %do.body, !dbg !1181

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !1164, metadata !DIExpression()), !dbg !1182
  %call = call i64 @native_read_msr(i32 noundef 592) #21, !dbg !1182
  store i64 %call, ptr %__val, align 8, !dbg !1182
  %1 = load i64, ptr %__val, align 8, !dbg !1182
  %conv = trunc i64 %1 to i32, !dbg !1182
  %2 = load ptr, ptr %p, align 8, !dbg !1182
  %arrayidx = getelementptr i32, ptr %2, i64 0, !dbg !1182
  store i32 %conv, ptr %arrayidx, align 4, !dbg !1182
  %3 = load i64, ptr %__val, align 8, !dbg !1182
  %shr = lshr i64 %3, 32, !dbg !1182
  %conv1 = trunc i64 %shr to i32, !dbg !1182
  %4 = load ptr, ptr %p, align 8, !dbg !1182
  %arrayidx2 = getelementptr i32, ptr %4, i64 1, !dbg !1182
  store i32 %conv1, ptr %arrayidx2, align 4, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !1181
  br label %do.cond, !dbg !1182

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1182

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !1183
  br label %for.cond, !dbg !1184

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, ptr %i, align 4, !dbg !1185
  %cmp = icmp slt i32 %5, 2, !dbg !1186
  br i1 %cmp, label %for.body, label %for.end, !dbg !1187

for.body:                                         ; preds = %for.cond
  br label %do.body4, !dbg !1188

do.body4:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val5) #20, !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %__val5, metadata !1166, metadata !DIExpression()), !dbg !1189
  %6 = load i32, ptr %i, align 4, !dbg !1189
  %add = add i32 600, %6, !dbg !1189
  %call6 = call i64 @native_read_msr(i32 noundef %add) #21, !dbg !1189
  store i64 %call6, ptr %__val5, align 8, !dbg !1189
  %7 = load i64, ptr %__val5, align 8, !dbg !1189
  %conv7 = trunc i64 %7 to i32, !dbg !1189
  %8 = load ptr, ptr %p, align 8, !dbg !1189
  %9 = load i32, ptr %i, align 4, !dbg !1189
  %mul = mul i32 %9, 2, !dbg !1189
  %add8 = add i32 2, %mul, !dbg !1189
  %idxprom = sext i32 %add8 to i64, !dbg !1189
  %arrayidx9 = getelementptr i32, ptr %8, i64 %idxprom, !dbg !1189
  store i32 %conv7, ptr %arrayidx9, align 4, !dbg !1189
  %10 = load i64, ptr %__val5, align 8, !dbg !1189
  %shr10 = lshr i64 %10, 32, !dbg !1189
  %conv11 = trunc i64 %shr10 to i32, !dbg !1189
  %11 = load ptr, ptr %p, align 8, !dbg !1189
  %12 = load i32, ptr %i, align 4, !dbg !1189
  %mul12 = mul i32 %12, 2, !dbg !1189
  %add13 = add i32 3, %mul12, !dbg !1189
  %idxprom14 = sext i32 %add13 to i64, !dbg !1189
  %arrayidx15 = getelementptr i32, ptr %11, i64 %idxprom14, !dbg !1189
  store i32 %conv11, ptr %arrayidx15, align 4, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val5) #20, !dbg !1188
  br label %do.cond16, !dbg !1189

do.cond16:                                        ; preds = %do.body4
  br label %do.end17, !dbg !1189

do.end17:                                         ; preds = %do.cond16
  br label %for.inc, !dbg !1189

for.inc:                                          ; preds = %do.end17
  %13 = load i32, ptr %i, align 4, !dbg !1190
  %inc = add i32 %13, 1, !dbg !1190
  store i32 %inc, ptr %i, align 4, !dbg !1190
  br label %for.cond, !dbg !1191, !llvm.loop !1192

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1194
  br label %for.cond18, !dbg !1195

for.cond18:                                       ; preds = %for.inc39, %for.end
  %14 = load i32, ptr %i, align 4, !dbg !1196
  %cmp19 = icmp slt i32 %14, 8, !dbg !1197
  br i1 %cmp19, label %for.body21, label %for.end41, !dbg !1198

for.body21:                                       ; preds = %for.cond18
  br label %do.body22, !dbg !1199

do.body22:                                        ; preds = %for.body21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val23) #20, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %__val23, metadata !1170, metadata !DIExpression()), !dbg !1200
  %15 = load i32, ptr %i, align 4, !dbg !1200
  %add24 = add i32 616, %15, !dbg !1200
  %call25 = call i64 @native_read_msr(i32 noundef %add24) #21, !dbg !1200
  store i64 %call25, ptr %__val23, align 8, !dbg !1200
  %16 = load i64, ptr %__val23, align 8, !dbg !1200
  %conv26 = trunc i64 %16 to i32, !dbg !1200
  %17 = load ptr, ptr %p, align 8, !dbg !1200
  %18 = load i32, ptr %i, align 4, !dbg !1200
  %mul27 = mul i32 %18, 2, !dbg !1200
  %add28 = add i32 6, %mul27, !dbg !1200
  %idxprom29 = sext i32 %add28 to i64, !dbg !1200
  %arrayidx30 = getelementptr i32, ptr %17, i64 %idxprom29, !dbg !1200
  store i32 %conv26, ptr %arrayidx30, align 4, !dbg !1200
  %19 = load i64, ptr %__val23, align 8, !dbg !1200
  %shr31 = lshr i64 %19, 32, !dbg !1200
  %conv32 = trunc i64 %shr31 to i32, !dbg !1200
  %20 = load ptr, ptr %p, align 8, !dbg !1200
  %21 = load i32, ptr %i, align 4, !dbg !1200
  %mul33 = mul i32 %21, 2, !dbg !1200
  %add34 = add i32 7, %mul33, !dbg !1200
  %idxprom35 = sext i32 %add34 to i64, !dbg !1200
  %arrayidx36 = getelementptr i32, ptr %20, i64 %idxprom35, !dbg !1200
  store i32 %conv32, ptr %arrayidx36, align 4, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val23) #20, !dbg !1199
  br label %do.cond37, !dbg !1200

do.cond37:                                        ; preds = %do.body22
  br label %do.end38, !dbg !1200

do.end38:                                         ; preds = %do.cond37
  br label %for.inc39, !dbg !1200

for.inc39:                                        ; preds = %do.end38
  %22 = load i32, ptr %i, align 4, !dbg !1201
  %inc40 = add i32 %22, 1, !dbg !1201
  store i32 %inc40, ptr %i, align 4, !dbg !1201
  br label %for.cond18, !dbg !1202, !llvm.loop !1203

for.end41:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !1205
  ret void, !dbg !1205
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @get_mtrr_state() #0 section ".init.text" align 16 !dbg !1206 {
entry:
  %vrs = alloca ptr, align 8
  %lo = alloca i32, align 4
  %dummy = alloca i32, align 4
  %i = alloca i32, align 4
  %__val = alloca i64, align 8
  %__val6 = alloca i64, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %__val24 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vrs) #20, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %vrs, metadata !1208, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #20, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !1209, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #20, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !1210, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1211, metadata !DIExpression()), !dbg !1228
  store ptr @mtrr_state, ptr %vrs, align 8, !dbg !1229
  br label %do.body, !dbg !1230

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !1212, metadata !DIExpression()), !dbg !1231
  %call = call i64 @native_read_msr(i32 noundef 254) #21, !dbg !1231
  store i64 %call, ptr %__val, align 8, !dbg !1231
  %0 = load i64, ptr %__val, align 8, !dbg !1231
  %conv = trunc i64 %0 to i32, !dbg !1231
  store i32 %conv, ptr %lo, align 4, !dbg !1231
  %1 = load i64, ptr %__val, align 8, !dbg !1231
  %shr = lshr i64 %1, 32, !dbg !1231
  %conv1 = trunc i64 %shr to i32, !dbg !1231
  store i32 %conv1, ptr %dummy, align 4, !dbg !1231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !1230
  br label %do.cond, !dbg !1231

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1231

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %lo, align 4, !dbg !1232
  %conv2 = zext i32 %2 to i64, !dbg !1232
  %and = and i64 %conv2, 256, !dbg !1233
  %tobool = icmp ne i64 %and, 0, !dbg !1232
  %frombool = zext i1 %tobool to i8, !dbg !1234
  store i8 %frombool, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 3), align 1, !dbg !1234
  store i32 0, ptr %i, align 4, !dbg !1235
  br label %for.cond, !dbg !1237

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i32, ptr %i, align 4, !dbg !1238
  %4 = load i32, ptr @num_var_ranges, align 4, !dbg !1240
  %cmp = icmp ult i32 %3, %4, !dbg !1241
  br i1 %cmp, label %for.body, label %for.end, !dbg !1242

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !dbg !1243
  %6 = load ptr, ptr %vrs, align 8, !dbg !1244
  %7 = load i32, ptr %i, align 4, !dbg !1245
  %idxprom = zext i32 %7 to i64, !dbg !1244
  %arrayidx = getelementptr %struct.mtrr_var_range, ptr %6, i64 %idxprom, !dbg !1244
  call void @get_mtrr_var_range(i32 noundef %5, ptr noundef %arrayidx) #21, !dbg !1246
  br label %for.inc, !dbg !1246

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !1247
  %inc = add i32 %8, 1, !dbg !1247
  store i32 %inc, ptr %i, align 4, !dbg !1247
  br label %for.cond, !dbg !1248, !llvm.loop !1249

for.end:                                          ; preds = %for.cond
  %9 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 3), align 1, !dbg !1251, !range !543, !noundef !544
  %tobool4 = trunc i8 %9 to i1, !dbg !1251
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1253

if.then:                                          ; preds = %for.end
  call void @get_fixed_ranges(ptr noundef getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1)) #21, !dbg !1254
  br label %if.end, !dbg !1254

if.end:                                           ; preds = %if.then, %for.end
  br label %do.body5, !dbg !1255

do.body5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val6) #20, !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %__val6, metadata !1214, metadata !DIExpression()), !dbg !1256
  %call7 = call i64 @native_read_msr(i32 noundef 767) #21, !dbg !1256
  store i64 %call7, ptr %__val6, align 8, !dbg !1256
  %10 = load i64, ptr %__val6, align 8, !dbg !1256
  %conv8 = trunc i64 %10 to i32, !dbg !1256
  store i32 %conv8, ptr %lo, align 4, !dbg !1256
  %11 = load i64, ptr %__val6, align 8, !dbg !1256
  %shr9 = lshr i64 %11, 32, !dbg !1256
  %conv10 = trunc i64 %shr9 to i32, !dbg !1256
  store i32 %conv10, ptr %dummy, align 4, !dbg !1256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val6) #20, !dbg !1255
  br label %do.cond11, !dbg !1256

do.cond11:                                        ; preds = %do.body5
  br label %do.end12, !dbg !1256

do.end12:                                         ; preds = %do.cond11
  %12 = load i32, ptr %lo, align 4, !dbg !1257
  %conv13 = zext i32 %12 to i64, !dbg !1257
  %and14 = and i64 %conv13, 255, !dbg !1258
  %conv15 = trunc i64 %and14 to i8, !dbg !1257
  store i8 %conv15, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !1259
  %13 = load i32, ptr %lo, align 4, !dbg !1260
  %conv16 = zext i32 %13 to i64, !dbg !1260
  %and17 = and i64 %conv16, 3072, !dbg !1261
  %shr18 = lshr i64 %and17, 10, !dbg !1262
  %conv19 = trunc i64 %shr18 to i8, !dbg !1263
  store i8 %conv19, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1264
  %call20 = call i32 @amd_special_default_mtrr() #21, !dbg !1265
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1265
  br i1 %tobool21, label %if.then22, label %if.end34, !dbg !1266

if.then22:                                        ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #20, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1216, metadata !DIExpression()), !dbg !1268
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #20, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1219, metadata !DIExpression()), !dbg !1269
  br label %do.body23, !dbg !1270

do.body23:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val24) #20, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %__val24, metadata !1220, metadata !DIExpression()), !dbg !1271
  %call25 = call i64 @native_read_msr(i32 noundef -1073676259) #21, !dbg !1271
  store i64 %call25, ptr %__val24, align 8, !dbg !1271
  %14 = load i64, ptr %__val24, align 8, !dbg !1271
  %conv26 = trunc i64 %14 to i32, !dbg !1271
  store i32 %conv26, ptr %low, align 4, !dbg !1271
  %15 = load i64, ptr %__val24, align 8, !dbg !1271
  %shr27 = lshr i64 %15, 32, !dbg !1271
  %conv28 = trunc i64 %shr27 to i32, !dbg !1271
  store i32 %conv28, ptr %high, align 4, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val24) #20, !dbg !1270
  br label %do.cond29, !dbg !1271

do.cond29:                                        ; preds = %do.body23
  br label %do.end30, !dbg !1271

do.end30:                                         ; preds = %do.cond29
  %16 = load i32, ptr %high, align 4, !dbg !1272
  %conv31 = zext i32 %16 to i64, !dbg !1272
  store i64 %conv31, ptr @mtrr_tom2, align 8, !dbg !1273
  %17 = load i64, ptr @mtrr_tom2, align 8, !dbg !1274
  %shl = shl i64 %17, 32, !dbg !1274
  store i64 %shl, ptr @mtrr_tom2, align 8, !dbg !1274
  %18 = load i32, ptr %low, align 4, !dbg !1275
  %conv32 = zext i32 %18 to i64, !dbg !1275
  %19 = load i64, ptr @mtrr_tom2, align 8, !dbg !1276
  %or = or i64 %19, %conv32, !dbg !1276
  store i64 %or, ptr @mtrr_tom2, align 8, !dbg !1276
  %20 = load i64, ptr @mtrr_tom2, align 8, !dbg !1277
  %and33 = and i64 %20, 281474968322048, !dbg !1277
  store i64 %and33, ptr @mtrr_tom2, align 8, !dbg !1277
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #20, !dbg !1278
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #20, !dbg !1278
  br label %if.end34, !dbg !1279

if.end34:                                         ; preds = %do.end30, %do.end12
  %21 = load i8, ptr @mtrr_debug, align 1, !dbg !1280, !range !543, !noundef !544
  %tobool35 = trunc i8 %21 to i1, !dbg !1280
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1282

if.then36:                                        ; preds = %if.end34
  call void @print_mtrr_state() #22, !dbg !1283
  br label %if.end37, !dbg !1283

if.end37:                                         ; preds = %if.then36, %if.end34
  store i32 1, ptr @mtrr_state_set, align 4, !dbg !1284
  %22 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1285
  %conv38 = zext i8 %22 to i64, !dbg !1286
  %and39 = and i64 %conv38, 2, !dbg !1287
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1288
  %lnot = xor i1 %tobool40, true, !dbg !1288
  %lnot41 = xor i1 %lnot, true, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #20, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #20, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr %vrs) #20, !dbg !1290
  ret i1 %lnot41, !dbg !1291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #10 align 16 !dbg !1292 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1297, metadata !DIExpression()), !dbg !1299
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #20, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1298, metadata !DIExpression()), !dbg !1301
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1302
  %call = call i64 @__rdmsr(i32 noundef %0) #21, !dbg !1303
  store i64 %call, ptr %val, align 8, !dbg !1304
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #21, !dbg !1305
  br i1 %call1, label %if.then, label %if.end, !dbg !1307

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !1308
  %2 = load i64, ptr %val, align 8, !dbg !1309
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #21, !dbg !1310
  br label %if.end, !dbg !1310

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #20, !dbg !1312
  ret i64 %3, !dbg !1313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_mtrr_var_range(i32 noundef %index, ptr noundef %vr) #1 align 16 !dbg !1314 {
entry:
  %index.addr = alloca i32, align 4
  %vr.addr = alloca ptr, align 8
  %__val = alloca i64, align 8
  %__val3 = alloca i64, align 8
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1318, metadata !DIExpression()), !dbg !1324
  store ptr %vr, ptr %vr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vr.addr, metadata !1319, metadata !DIExpression()), !dbg !1325
  br label %do.body, !dbg !1326

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !1320, metadata !DIExpression()), !dbg !1327
  %0 = load i32, ptr %index.addr, align 4, !dbg !1327
  %mul = mul i32 2, %0, !dbg !1327
  %add = add i32 512, %mul, !dbg !1327
  %call = call i64 @native_read_msr(i32 noundef %add) #21, !dbg !1327
  store i64 %call, ptr %__val, align 8, !dbg !1327
  %1 = load i64, ptr %__val, align 8, !dbg !1327
  %conv = trunc i64 %1 to i32, !dbg !1327
  %2 = load ptr, ptr %vr.addr, align 8, !dbg !1327
  %base_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %2, i32 0, i32 0, !dbg !1327
  store i32 %conv, ptr %base_lo, align 4, !dbg !1327
  %3 = load i64, ptr %__val, align 8, !dbg !1327
  %shr = lshr i64 %3, 32, !dbg !1327
  %conv1 = trunc i64 %shr to i32, !dbg !1327
  %4 = load ptr, ptr %vr.addr, align 8, !dbg !1327
  %base_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %4, i32 0, i32 1, !dbg !1327
  store i32 %conv1, ptr %base_hi, align 4, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !1326
  br label %do.end, !dbg !1327

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !1328

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val3) #20, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %__val3, metadata !1322, metadata !DIExpression()), !dbg !1329
  %5 = load i32, ptr %index.addr, align 4, !dbg !1329
  %mul4 = mul i32 2, %5, !dbg !1329
  %add5 = add i32 512, %mul4, !dbg !1329
  %add6 = add i32 %add5, 1, !dbg !1329
  %call7 = call i64 @native_read_msr(i32 noundef %add6) #21, !dbg !1329
  store i64 %call7, ptr %__val3, align 8, !dbg !1329
  %6 = load i64, ptr %__val3, align 8, !dbg !1329
  %conv8 = trunc i64 %6 to i32, !dbg !1329
  %7 = load ptr, ptr %vr.addr, align 8, !dbg !1329
  %mask_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %7, i32 0, i32 2, !dbg !1329
  store i32 %conv8, ptr %mask_lo, align 4, !dbg !1329
  %8 = load i64, ptr %__val3, align 8, !dbg !1329
  %shr9 = lshr i64 %8, 32, !dbg !1329
  %conv10 = trunc i64 %shr9 to i32, !dbg !1329
  %9 = load ptr, ptr %vr.addr, align 8, !dbg !1329
  %mask_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %9, i32 0, i32 3, !dbg !1329
  store i32 %conv10, ptr %mask_hi, align 4, !dbg !1329
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val3) #20, !dbg !1328
  br label %do.end11, !dbg !1329

do.end11:                                         ; preds = %do.body2
  ret void, !dbg !1330
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1331 dso_local i32 @amd_special_default_mtrr() #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @print_mtrr_state() #0 section ".init.text" align 16 !dbg !1332 {
entry:
  %i = alloca i32, align 4
  %high_width = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %tmp83 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1334, metadata !DIExpression()), !dbg !1337
  call void @llvm.lifetime.start.p0(i64 4, ptr %high_width) #20, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %high_width, metadata !1335, metadata !DIExpression()), !dbg !1339
  br label %do.body, !dbg !1340

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1342

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1342

do.end:                                           ; preds = %do.cond
  %0 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !1340
  %conv = zext i8 %0 to i32, !dbg !1340
  %call = call ptr @mtrr_attrib_to_str(i32 noundef %conv) #21, !dbg !1340
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, ptr noundef %call) #22, !dbg !1340
  store i32 %call1, ptr %tmp, align 4, !dbg !1342
  %1 = load i32, ptr %tmp, align 4, !dbg !1340
  %2 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 3), align 1, !dbg !1344, !range !543, !noundef !544
  %tobool = trunc i8 %2 to i1, !dbg !1344
  br i1 %tobool, label %if.then, label %if.end, !dbg !1346

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !1347

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !1350

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1350

do.end4:                                          ; preds = %do.cond3
  %3 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1347
  %conv6 = zext i8 %3 to i64, !dbg !1347
  %and = and i64 %conv6, 2, !dbg !1347
  %tobool7 = icmp ne i64 %and, 0, !dbg !1347
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !1347

land.rhs:                                         ; preds = %do.end4
  %4 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1347
  %conv8 = zext i8 %4 to i64, !dbg !1347
  %and9 = and i64 %conv8, 1, !dbg !1347
  %tobool10 = icmp ne i64 %and9, 0, !dbg !1347
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end4
  %5 = phi i1 [ false, %do.end4 ], [ %tobool10, %land.rhs ], !dbg !1352
  %6 = zext i1 %5 to i64, !dbg !1347
  %cond = select i1 %5, ptr @.str.21, ptr @.str.22, !dbg !1347
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20, ptr noundef %cond) #22, !dbg !1347
  store i32 %call11, ptr %tmp5, align 4, !dbg !1350
  %7 = load i32, ptr %tmp5, align 4, !dbg !1347
  call void @print_fixed(i32 noundef 0, i32 noundef 65536, ptr noundef getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1)) #22, !dbg !1353
  store i32 0, ptr %i, align 4, !dbg !1354
  br label %for.cond, !dbg !1356

for.cond:                                         ; preds = %for.inc, %land.end
  %8 = load i32, ptr %i, align 4, !dbg !1357
  %cmp = icmp ult i32 %8, 2, !dbg !1359
  br i1 %cmp, label %for.body, label %for.end, !dbg !1360

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !dbg !1361
  %mul = mul i32 %9, 131072, !dbg !1362
  %add = add i32 524288, %mul, !dbg !1363
  %10 = load i32, ptr %i, align 4, !dbg !1364
  %add13 = add i32 %10, 1, !dbg !1365
  %mul14 = mul i32 %add13, 8, !dbg !1366
  %idx.ext = zext i32 %mul14 to i64, !dbg !1367
  %add.ptr = getelementptr i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1), i64 %idx.ext, !dbg !1367
  call void @print_fixed(i32 noundef %add, i32 noundef 16384, ptr noundef %add.ptr) #22, !dbg !1368
  br label %for.inc, !dbg !1368

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !1369
  %inc = add i32 %11, 1, !dbg !1369
  store i32 %inc, ptr %i, align 4, !dbg !1369
  br label %for.cond, !dbg !1370, !llvm.loop !1371

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1373
  br label %for.cond15, !dbg !1375

for.cond15:                                       ; preds = %for.inc25, %for.end
  %12 = load i32, ptr %i, align 4, !dbg !1376
  %cmp16 = icmp ult i32 %12, 8, !dbg !1378
  br i1 %cmp16, label %for.body18, label %for.end27, !dbg !1379

for.body18:                                       ; preds = %for.cond15
  %13 = load i32, ptr %i, align 4, !dbg !1380
  %mul19 = mul i32 %13, 32768, !dbg !1381
  %add20 = add i32 786432, %mul19, !dbg !1382
  %14 = load i32, ptr %i, align 4, !dbg !1383
  %add21 = add i32 %14, 3, !dbg !1384
  %mul22 = mul i32 %add21, 8, !dbg !1385
  %idx.ext23 = zext i32 %mul22 to i64, !dbg !1386
  %add.ptr24 = getelementptr i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1), i64 %idx.ext23, !dbg !1386
  call void @print_fixed(i32 noundef %add20, i32 noundef 4096, ptr noundef %add.ptr24) #22, !dbg !1387
  br label %for.inc25, !dbg !1387

for.inc25:                                        ; preds = %for.body18
  %15 = load i32, ptr %i, align 4, !dbg !1388
  %inc26 = add i32 %15, 1, !dbg !1388
  store i32 %inc26, ptr %i, align 4, !dbg !1388
  br label %for.cond15, !dbg !1389, !llvm.loop !1390

for.end27:                                        ; preds = %for.cond15
  call void @print_fixed_last() #22, !dbg !1392
  br label %if.end, !dbg !1393

if.end:                                           ; preds = %for.end27, %do.end
  br label %do.body28, !dbg !1394

do.body28:                                        ; preds = %if.end
  br label %do.cond29, !dbg !1396

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !1396

do.end30:                                         ; preds = %do.cond29
  %16 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1394
  %conv32 = zext i8 %16 to i64, !dbg !1394
  %and33 = and i64 %conv32, 2, !dbg !1394
  %tobool34 = icmp ne i64 %and33, 0, !dbg !1394
  %17 = zext i1 %tobool34 to i64, !dbg !1394
  %cond35 = select i1 %tobool34, ptr @.str.21, ptr @.str.22, !dbg !1394
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, ptr noundef %cond35) #22, !dbg !1394
  store i32 %call36, ptr %tmp31, align 4, !dbg !1396
  %18 = load i32, ptr %tmp31, align 4, !dbg !1394
  %19 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !1398
  %conv37 = zext i8 %19 to i32, !dbg !1399
  %sub = sub i32 %conv37, 20, !dbg !1400
  %add38 = add i32 %sub, 3, !dbg !1401
  %div = sdiv i32 %add38, 4, !dbg !1402
  store i32 %div, ptr %high_width, align 4, !dbg !1403
  store i32 0, ptr %i, align 4, !dbg !1404
  br label %for.cond39, !dbg !1406

for.cond39:                                       ; preds = %for.inc75, %do.end30
  %20 = load i32, ptr %i, align 4, !dbg !1407
  %21 = load i32, ptr @num_var_ranges, align 4, !dbg !1409
  %cmp40 = icmp ult i32 %20, %21, !dbg !1410
  br i1 %cmp40, label %for.body42, label %for.end77, !dbg !1411

for.body42:                                       ; preds = %for.cond39
  %22 = load i32, ptr %i, align 4, !dbg !1412
  %idxprom = zext i32 %22 to i64, !dbg !1415
  %arrayidx = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom, !dbg !1415
  %mask_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx, i32 0, i32 2, !dbg !1416
  %23 = load i32, ptr %mask_lo, align 4, !dbg !1416
  %conv43 = zext i32 %23 to i64, !dbg !1415
  %and44 = and i64 %conv43, 2048, !dbg !1417
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1417
  br i1 %tobool45, label %if.then46, label %if.else, !dbg !1418

if.then46:                                        ; preds = %for.body42
  br label %do.body47, !dbg !1419

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !1421

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !1421

do.end49:                                         ; preds = %do.cond48
  %24 = load i32, ptr %i, align 4, !dbg !1419
  %25 = load i32, ptr %high_width, align 4, !dbg !1419
  %26 = load i32, ptr %i, align 4, !dbg !1419
  %idxprom51 = zext i32 %26 to i64, !dbg !1419
  %arrayidx52 = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom51, !dbg !1419
  %base_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx52, i32 0, i32 1, !dbg !1419
  %27 = load i32, ptr %base_hi, align 4, !dbg !1419
  %28 = load i32, ptr %i, align 4, !dbg !1419
  %idxprom53 = zext i32 %28 to i64, !dbg !1419
  %arrayidx54 = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom53, !dbg !1419
  %base_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx54, i32 0, i32 0, !dbg !1419
  %29 = load i32, ptr %base_lo, align 4, !dbg !1419
  %shr = lshr i32 %29, 12, !dbg !1419
  %30 = load i32, ptr %high_width, align 4, !dbg !1419
  %31 = load i32, ptr %i, align 4, !dbg !1419
  %idxprom55 = zext i32 %31 to i64, !dbg !1419
  %arrayidx56 = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom55, !dbg !1419
  %mask_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx56, i32 0, i32 3, !dbg !1419
  %32 = load i32, ptr %mask_hi, align 4, !dbg !1419
  %33 = load i32, ptr %i, align 4, !dbg !1419
  %idxprom57 = zext i32 %33 to i64, !dbg !1419
  %arrayidx58 = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom57, !dbg !1419
  %mask_lo59 = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx58, i32 0, i32 2, !dbg !1419
  %34 = load i32, ptr %mask_lo59, align 4, !dbg !1419
  %shr60 = lshr i32 %34, 12, !dbg !1419
  %35 = load i32, ptr %i, align 4, !dbg !1419
  %idxprom61 = zext i32 %35 to i64, !dbg !1419
  %arrayidx62 = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom61, !dbg !1419
  %base_lo63 = getelementptr inbounds %struct.mtrr_var_range, ptr %arrayidx62, i32 0, i32 0, !dbg !1419
  %36 = load i32, ptr %base_lo63, align 4, !dbg !1419
  %conv64 = zext i32 %36 to i64, !dbg !1419
  %and65 = and i64 %conv64, 255, !dbg !1419
  %conv66 = trunc i64 %and65 to i32, !dbg !1419
  %call67 = call ptr @mtrr_attrib_to_str(i32 noundef %conv66) #21, !dbg !1419
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, i32 noundef %24, i32 noundef %25, i32 noundef %27, i32 noundef %shr, i32 noundef %30, i32 noundef %32, i32 noundef %shr60, ptr noundef %call67) #22, !dbg !1419
  store i32 %call68, ptr %tmp50, align 4, !dbg !1421
  %37 = load i32, ptr %tmp50, align 4, !dbg !1419
  br label %if.end74, !dbg !1423

if.else:                                          ; preds = %for.body42
  br label %do.body69, !dbg !1424

do.body69:                                        ; preds = %if.else
  br label %do.cond70, !dbg !1426

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !1426

do.end71:                                         ; preds = %do.cond70
  %38 = load i32, ptr %i, align 4, !dbg !1424
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, i32 noundef %38) #22, !dbg !1424
  store i32 %call73, ptr %tmp72, align 4, !dbg !1426
  %39 = load i32, ptr %tmp72, align 4, !dbg !1424
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %do.end49
  br label %for.inc75, !dbg !1428

for.inc75:                                        ; preds = %if.end74
  %40 = load i32, ptr %i, align 4, !dbg !1429
  %inc76 = add i32 %40, 1, !dbg !1429
  store i32 %inc76, ptr %i, align 4, !dbg !1429
  br label %for.cond39, !dbg !1430, !llvm.loop !1431

for.end77:                                        ; preds = %for.cond39
  %41 = load i64, ptr @mtrr_tom2, align 8, !dbg !1433
  %tobool78 = icmp ne i64 %41, 0, !dbg !1433
  br i1 %tobool78, label %if.then79, label %if.end86, !dbg !1435

if.then79:                                        ; preds = %for.end77
  br label %do.body80, !dbg !1436

do.body80:                                        ; preds = %if.then79
  br label %do.cond81, !dbg !1438

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !1438

do.end82:                                         ; preds = %do.cond81
  %42 = load i64, ptr @mtrr_tom2, align 8, !dbg !1436
  %43 = load i64, ptr @mtrr_tom2, align 8, !dbg !1436
  %shr84 = lshr i64 %43, 20, !dbg !1436
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, i64 noundef %42, i64 noundef %shr84) #22, !dbg !1436
  store i32 %call85, ptr %tmp83, align 4, !dbg !1438
  %44 = load i32, ptr %tmp83, align 4, !dbg !1436
  br label %if.end86, !dbg !1440

if.end86:                                         ; preds = %do.end82, %for.end77
  call void @llvm.lifetime.end.p0(i64 4, ptr %high_width) #20, !dbg !1441
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1441
  ret void, !dbg !1441
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @mtrr_state_warn() #0 section ".init.text" align 16 !dbg !1442 {
entry:
  %mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #20, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1444, metadata !DIExpression()), !dbg !1446
  %0 = load i64, ptr @smp_changes_mask, align 8, !dbg !1447
  store i64 %0, ptr %mask, align 8, !dbg !1446
  %1 = load i64, ptr %mask, align 8, !dbg !1448
  %tobool = icmp ne i64 %1, 0, !dbg !1448
  br i1 %tobool, label %if.end, label %if.then, !dbg !1450

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1451

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %mask, align 8, !dbg !1452
  %and = and i64 %2, 1, !dbg !1454
  %tobool1 = icmp ne i64 %and, 0, !dbg !1454
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1455

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !1456

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !1458

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1458

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #22, !dbg !1456
  store i32 %call, ptr %tmp, align 4, !dbg !1458
  %3 = load i32, ptr %tmp, align 4, !dbg !1456
  br label %if.end3, !dbg !1460

if.end3:                                          ; preds = %do.end, %if.end
  %4 = load i64, ptr %mask, align 8, !dbg !1461
  %and4 = and i64 %4, 2, !dbg !1463
  %tobool5 = icmp ne i64 %and4, 0, !dbg !1463
  br i1 %tobool5, label %if.then6, label %if.end12, !dbg !1464

if.then6:                                         ; preds = %if.end3
  br label %do.body7, !dbg !1465

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !1467

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1467

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #22, !dbg !1465
  store i32 %call11, ptr %tmp10, align 4, !dbg !1467
  %5 = load i32, ptr %tmp10, align 4, !dbg !1465
  br label %if.end12, !dbg !1469

if.end12:                                         ; preds = %do.end9, %if.end3
  %6 = load i64, ptr %mask, align 8, !dbg !1470
  %and13 = and i64 %6, 4, !dbg !1472
  %tobool14 = icmp ne i64 %and13, 0, !dbg !1472
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !1473

if.then15:                                        ; preds = %if.end12
  br label %do.body16, !dbg !1474

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !1476

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1476

do.end18:                                         ; preds = %do.cond17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #22, !dbg !1474
  store i32 %call20, ptr %tmp19, align 4, !dbg !1476
  %7 = load i32, ptr %tmp19, align 4, !dbg !1474
  br label %if.end21, !dbg !1478

if.end21:                                         ; preds = %do.end18, %if.end12
  br label %do.body22, !dbg !1479

do.body22:                                        ; preds = %if.end21
  br label %do.cond23, !dbg !1481

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1481

do.end24:                                         ; preds = %do.cond23
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #22, !dbg !1479
  store i32 %call26, ptr %tmp25, align 4, !dbg !1481
  %8 = load i32, ptr %tmp25, align 4, !dbg !1479
  br label %do.body27, !dbg !1483

do.body27:                                        ; preds = %do.end24
  br label %do.cond28, !dbg !1485

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !1485

do.end29:                                         ; preds = %do.cond28
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #22, !dbg !1483
  store i32 %call31, ptr %tmp30, align 4, !dbg !1485
  %9 = load i32, ptr %tmp30, align 4, !dbg !1483
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1487
  br label %cleanup, !dbg !1487

cleanup:                                          ; preds = %do.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #20, !dbg !1487
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1487

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_wrmsr(i32 noundef %msr, i32 noundef %a, i32 noundef %b) #1 align 16 !dbg !1488 {
entry:
  %msr.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1492, metadata !DIExpression()), !dbg !1505
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1493, metadata !DIExpression()), !dbg !1506
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1494, metadata !DIExpression()), !dbg !1507
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1508
  %1 = load i32, ptr %a.addr, align 4, !dbg !1509
  %2 = load i32, ptr %b.addr, align 4, !dbg !1510
  %call = call i32 @wrmsr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #21, !dbg !1511
  %cmp = icmp slt i32 %call, 0, !dbg !1512
  br i1 %cmp, label %if.then, label %if.end, !dbg !1513

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1514

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1515

do.end:                                           ; preds = %do.body
  call void @__this_cpu_preempt_check(ptr noundef @.str.11) #21, !dbg !1517
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #20, !dbg !1518
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1495, metadata !DIExpression()), !dbg !1518
  br label %do.body2, !dbg !1518

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1501, metadata !DIExpression()), !dbg !1519
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1519
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !1519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !1518
  br label %do.cond, !dbg !1519

do.cond:                                          ; preds = %do.body2
  br label %do.end3, !dbg !1519

do.end3:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #20, !dbg !1520
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1503, metadata !DIExpression()), !dbg !1520
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 2)) #24, !dbg !1520, !srcloc !1521
  store i32 %4, ptr %pfo_val__, align 4, !dbg !1520
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !1520
  %conv = zext i32 %5 to i64, !dbg !1520
  %conv5 = trunc i64 %conv to i32, !dbg !1520
  store i32 %conv5, ptr %tmp4, align 4, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #20, !dbg !1518
  %6 = load i32, ptr %tmp4, align 4, !dbg !1520
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !1518
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !1518
  store i32 %7, ptr %tmp6, align 4, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #20, !dbg !1517
  %8 = load i32, ptr %tmp6, align 4, !dbg !1518
  store i32 %8, ptr %tmp1, align 4, !dbg !1517
  %9 = load i32, ptr %tmp1, align 4, !dbg !1517
  %10 = load i32, ptr %msr.addr, align 4, !dbg !1514
  %11 = load i32, ptr %a.addr, align 4, !dbg !1514
  %12 = load i32, ptr %b.addr, align 4, !dbg !1514
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #22, !dbg !1514
  store i32 %call7, ptr %tmp, align 4, !dbg !1515
  %13 = load i32, ptr %tmp, align 4, !dbg !1514
  br label %if.end, !dbg !1522

if.end:                                           ; preds = %do.end3, %entry
  ret void, !dbg !1523
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #10 align 16 !dbg !1524 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1528, metadata !DIExpression()), !dbg !1531
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1529, metadata !DIExpression()), !dbg !1532
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1530, metadata !DIExpression()), !dbg !1533
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1534
  %1 = load i32, ptr %low.addr, align 4, !dbg !1535
  %2 = load i32, ptr %high.addr, align 4, !dbg !1536
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #21, !dbg !1537
  ret i32 %call, !dbg !1538
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #9 align 16 !dbg !1539 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1544, metadata !DIExpression()), !dbg !1545
  ret void, !dbg !1546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_get_free_region(i64 noundef %base, i64 noundef %size, i32 noundef %replace_reg) #1 align 16 !dbg !1547 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %replace_reg.addr = alloca i32, align 4
  %lbase = alloca i64, align 8
  %lsize = alloca i64, align 8
  %ltype = alloca i8, align 1
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1549, metadata !DIExpression()), !dbg !1557
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1550, metadata !DIExpression()), !dbg !1558
  store i32 %replace_reg, ptr %replace_reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %replace_reg.addr, metadata !1551, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 8, ptr %lbase) #20, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %lbase, metadata !1552, metadata !DIExpression()), !dbg !1561
  call void @llvm.lifetime.start.p0(i64 8, ptr %lsize) #20, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %lsize, metadata !1553, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 1, ptr %ltype) #20, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %ltype, metadata !1554, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1555, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #20, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %max, metadata !1556, metadata !DIExpression()), !dbg !1567
  %0 = load i32, ptr @num_var_ranges, align 4, !dbg !1568
  store i32 %0, ptr %max, align 4, !dbg !1569
  %1 = load i32, ptr %replace_reg.addr, align 4, !dbg !1570
  %cmp = icmp sge i32 %1, 0, !dbg !1572
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1573

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %replace_reg.addr, align 4, !dbg !1574
  %3 = load i32, ptr %max, align 4, !dbg !1575
  %cmp1 = icmp slt i32 %2, %3, !dbg !1576
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1577

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %replace_reg.addr, align 4, !dbg !1578
  store i32 %4, ptr %retval, align 4, !dbg !1579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1579

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %i, align 4, !dbg !1580
  br label %for.cond, !dbg !1582

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !1583
  %6 = load i32, ptr %max, align 4, !dbg !1585
  %cmp2 = icmp slt i32 %5, %6, !dbg !1586
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1587

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr @mtrr_if, align 8, !dbg !1588
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %7, i32 0, i32 2, !dbg !1590
  %8 = load ptr, ptr %get, align 8, !dbg !1590
  %9 = load i32, ptr %i, align 4, !dbg !1591
  call void %8(i32 noundef %9, ptr noundef %lbase, ptr noundef %lsize, ptr noundef %ltype) #21, !dbg !1588
  %10 = load i64, ptr %lsize, align 8, !dbg !1592
  %cmp3 = icmp eq i64 %10, 0, !dbg !1594
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1595

if.then4:                                         ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !1596
  store i32 %11, ptr %retval, align 4, !dbg !1597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1597

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !1598

for.inc:                                          ; preds = %if.end5
  %12 = load i32, ptr %i, align 4, !dbg !1599
  %inc = add i32 %12, 1, !dbg !1599
  store i32 %inc, ptr %i, align 4, !dbg !1599
  br label %for.cond, !dbg !1600, !llvm.loop !1601

for.end:                                          ; preds = %for.cond
  store i32 -28, ptr %retval, align 4, !dbg !1603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1603

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #20, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 1, ptr %ltype) #20, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 8, ptr %lsize) #20, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 8, ptr %lbase) #20, !dbg !1604
  %13 = load i32, ptr %retval, align 4, !dbg !1604
  ret i32 %13, !dbg !1604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_disable() #1 align 16 !dbg !1605 {
entry:
  %__val = alloca i64, align 8
  br label %do.body, !dbg !1609

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !1607, metadata !DIExpression()), !dbg !1610
  %call = call i64 @native_read_msr(i32 noundef 767) #21, !dbg !1610
  store i64 %call, ptr %__val, align 8, !dbg !1610
  %0 = load i64, ptr %__val, align 8, !dbg !1610
  %conv = trunc i64 %0 to i32, !dbg !1610
  store i32 %conv, ptr @deftype_lo, align 4, !dbg !1610
  %1 = load i64, ptr %__val, align 8, !dbg !1610
  %shr = lshr i64 %1, 32, !dbg !1610
  %conv1 = trunc i64 %shr to i32, !dbg !1610
  store i32 %conv1, ptr @deftype_hi, align 4, !dbg !1610
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !1609
  br label %do.end, !dbg !1610

do.end:                                           ; preds = %do.body
  %2 = load i32, ptr @deftype_lo, align 4, !dbg !1611
  %conv2 = zext i32 %2 to i64, !dbg !1611
  %and = and i64 %conv2, -3328, !dbg !1612
  %conv3 = trunc i64 %and to i32, !dbg !1611
  %3 = load i32, ptr @deftype_hi, align 4, !dbg !1613
  call void @mtrr_wrmsr(i32 noundef 767, i32 noundef %conv3, i32 noundef %3) #21, !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_enable() #1 align 16 !dbg !1616 {
entry:
  %0 = load i32, ptr @deftype_lo, align 4, !dbg !1617
  %1 = load i32, ptr @deftype_hi, align 4, !dbg !1618
  call void @mtrr_wrmsr(i32 noundef 767, i32 noundef %0, i32 noundef %1) #21, !dbg !1619
  ret void, !dbg !1620
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_generic_set_state() #1 align 16 !dbg !1621 {
entry:
  %mask = alloca i64, align 8
  %count = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #20, !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1623, metadata !DIExpression()), !dbg !1626
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #20, !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1624, metadata !DIExpression()), !dbg !1627
  %call = call i64 @set_mtrr_state() #21, !dbg !1628
  store i64 %call, ptr %mask, align 8, !dbg !1629
  store i64 0, ptr %count, align 8, !dbg !1630
  br label %for.cond, !dbg !1632

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %count, align 8, !dbg !1633
  %cmp = icmp ult i64 %0, 64, !dbg !1635
  br i1 %cmp, label %for.body, label %for.end, !dbg !1636

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %mask, align 8, !dbg !1637
  %and = and i64 %1, 1, !dbg !1640
  %tobool = icmp ne i64 %and, 0, !dbg !1640
  br i1 %tobool, label %if.then, label %if.end, !dbg !1641

if.then:                                          ; preds = %for.body
  %2 = load i64, ptr %count, align 8, !dbg !1642
  call void @set_bit(i64 noundef %2, ptr noundef @smp_changes_mask) #21, !dbg !1643
  br label %if.end, !dbg !1643

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i64, ptr %mask, align 8, !dbg !1644
  %shr = lshr i64 %3, 1, !dbg !1644
  store i64 %shr, ptr %mask, align 8, !dbg !1644
  br label %for.inc, !dbg !1645

for.inc:                                          ; preds = %if.end
  %4 = load i64, ptr %count, align 8, !dbg !1646
  %inc = add i64 %4, 1, !dbg !1646
  store i64 %inc, ptr %count, align 8, !dbg !1646
  br label %for.cond, !dbg !1647, !llvm.loop !1648

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #20, !dbg !1650
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #20, !dbg !1650
  ret void, !dbg !1650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @set_mtrr_state() #1 align 16 !dbg !1651 {
entry:
  %change_mask = alloca i64, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %change_mask) #20, !dbg !1657
  call void @llvm.dbg.declare(metadata ptr %change_mask, metadata !1655, metadata !DIExpression()), !dbg !1658
  store i64 0, ptr %change_mask, align 8, !dbg !1658
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !1659
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1656, metadata !DIExpression()), !dbg !1660
  store i32 0, ptr %i, align 4, !dbg !1661
  br label %for.cond, !dbg !1663

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1664
  %1 = load i32, ptr @num_var_ranges, align 4, !dbg !1666
  %cmp = icmp ult i32 %0, %1, !dbg !1667
  br i1 %cmp, label %for.body, label %for.end, !dbg !1668

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !1669
  %3 = load i32, ptr %i, align 4, !dbg !1672
  %idxprom = zext i32 %3 to i64, !dbg !1673
  %arrayidx = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom, !dbg !1673
  %call = call zeroext i1 @set_mtrr_var_ranges(i32 noundef %2, ptr noundef %arrayidx) #21, !dbg !1674
  br i1 %call, label %if.then, label %if.end, !dbg !1675

if.then:                                          ; preds = %for.body
  %4 = load i64, ptr %change_mask, align 8, !dbg !1676
  %or = or i64 %4, 2, !dbg !1676
  store i64 %or, ptr %change_mask, align 8, !dbg !1676
  br label %if.end, !dbg !1677

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1678

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !1679
  %inc = add i32 %5, 1, !dbg !1679
  store i32 %inc, ptr %i, align 4, !dbg !1679
  br label %for.cond, !dbg !1680, !llvm.loop !1681

for.end:                                          ; preds = %for.cond
  %6 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 3), align 1, !dbg !1683, !range !543, !noundef !544
  %tobool = trunc i8 %6 to i1, !dbg !1683
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !1685

land.lhs.true:                                    ; preds = %for.end
  %call1 = call i32 @set_fixed_ranges(ptr noundef getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 1)) #21, !dbg !1686
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1686
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1687

if.then3:                                         ; preds = %land.lhs.true
  %7 = load i64, ptr %change_mask, align 8, !dbg !1688
  %or4 = or i64 %7, 1, !dbg !1688
  store i64 %or4, ptr %change_mask, align 8, !dbg !1688
  br label %if.end5, !dbg !1689

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %for.end
  %8 = load i32, ptr @deftype_lo, align 4, !dbg !1690
  %conv = zext i32 %8 to i64, !dbg !1690
  %and = and i64 %conv, 255, !dbg !1692
  %9 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !1693
  %conv6 = zext i8 %9 to i64, !dbg !1694
  %cmp7 = icmp ne i64 %and, %conv6, !dbg !1695
  br i1 %cmp7, label %if.then14, label %lor.lhs.false, !dbg !1696

lor.lhs.false:                                    ; preds = %if.end5
  %10 = load i32, ptr @deftype_lo, align 4, !dbg !1697
  %conv9 = zext i32 %10 to i64, !dbg !1697
  %and10 = and i64 %conv9, 3072, !dbg !1698
  %shr = lshr i64 %and10, 10, !dbg !1699
  %11 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1700
  %conv11 = zext i8 %11 to i64, !dbg !1701
  %cmp12 = icmp ne i64 %shr, %conv11, !dbg !1702
  br i1 %cmp12, label %if.then14, label %if.end24, !dbg !1703

if.then14:                                        ; preds = %lor.lhs.false, %if.end5
  %12 = load i32, ptr @deftype_lo, align 4, !dbg !1704
  %conv15 = zext i32 %12 to i64, !dbg !1704
  %and16 = and i64 %conv15, -3328, !dbg !1706
  %13 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 4), align 2, !dbg !1707
  %conv17 = zext i8 %13 to i64, !dbg !1708
  %or18 = or i64 %and16, %conv17, !dbg !1709
  %14 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !1710
  %conv19 = zext i8 %14 to i32, !dbg !1711
  %shl = shl i32 %conv19, 10, !dbg !1712
  %conv20 = sext i32 %shl to i64, !dbg !1713
  %or21 = or i64 %or18, %conv20, !dbg !1714
  %conv22 = trunc i64 %or21 to i32, !dbg !1715
  store i32 %conv22, ptr @deftype_lo, align 4, !dbg !1716
  %15 = load i64, ptr %change_mask, align 8, !dbg !1717
  %or23 = or i64 %15, 4, !dbg !1717
  store i64 %or23, ptr %change_mask, align 8, !dbg !1717
  br label %if.end24, !dbg !1718

if.end24:                                         ; preds = %if.then14, %lor.lhs.false
  %16 = load i64, ptr %change_mask, align 8, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !1720
  call void @llvm.lifetime.end.p0(i64 8, ptr %change_mask) #20, !dbg !1720
  ret i64 %16, !dbg !1721
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !1722 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1728, metadata !DIExpression()), !dbg !1730
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1729, metadata !DIExpression()), !dbg !1731
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1732
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1733
  %div = sdiv i64 %1, 64, !dbg !1733
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1734
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !1735
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1736
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1737
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !1738
  ret void, !dbg !1739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_validate_add_page(i64 noundef %base, i64 noundef %size, i32 noundef %type) #1 align 16 !dbg !1740 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %lbase = alloca i64, align 8
  %last = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1742, metadata !DIExpression()), !dbg !1747
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1743, metadata !DIExpression()), !dbg !1748
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1744, metadata !DIExpression()), !dbg !1749
  call void @llvm.lifetime.start.p0(i64 8, ptr %lbase) #20, !dbg !1750
  call void @llvm.dbg.declare(metadata ptr %lbase, metadata !1745, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #20, !dbg !1750
  call void @llvm.dbg.declare(metadata ptr %last, metadata !1746, metadata !DIExpression()), !dbg !1752
  %0 = load ptr, ptr @mtrr_if, align 8, !dbg !1753
  %cmp = icmp eq ptr %0, @generic_mtrr_ops, !dbg !1755
  br i1 %cmp, label %land.lhs.true, label %if.end29, !dbg !1756

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.2, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !1757
  %conv = zext i8 %1 to i32, !dbg !1758
  %cmp1 = icmp eq i32 %conv, 6, !dbg !1759
  br i1 %cmp1, label %land.lhs.true3, label %if.end29, !dbg !1760

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load i8, ptr @boot_cpu_data, align 8, !dbg !1761
  %conv4 = zext i8 %2 to i32, !dbg !1762
  %cmp5 = icmp eq i32 %conv4, 1, !dbg !1763
  br i1 %cmp5, label %land.lhs.true7, label %if.end29, !dbg !1764

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %3 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 1), align 4, !dbg !1765
  %conv8 = zext i8 %3 to i32, !dbg !1766
  %cmp9 = icmp sle i32 %conv8, 7, !dbg !1767
  br i1 %cmp9, label %if.then, label %if.end29, !dbg !1768

if.then:                                          ; preds = %land.lhs.true7
  %4 = load i64, ptr %base.addr, align 8, !dbg !1769
  %and = and i64 %4, 1023, !dbg !1772
  %tobool = icmp ne i64 %and, 0, !dbg !1772
  br i1 %tobool, label %if.then11, label %if.end, !dbg !1773

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !1774

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !1777

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1777

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %base.addr, align 8, !dbg !1774
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i64 noundef %5) #22, !dbg !1774
  store i32 %call, ptr %tmp, align 4, !dbg !1777
  %6 = load i32, ptr %tmp, align 4, !dbg !1774
  store i32 -22, ptr %retval, align 4, !dbg !1779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1779

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %base.addr, align 8, !dbg !1780
  %8 = load i64, ptr %size.addr, align 8, !dbg !1782
  %add = add i64 %7, %8, !dbg !1783
  %cmp12 = icmp ult i64 %add, 458752, !dbg !1784
  br i1 %cmp12, label %if.end28, label %lor.lhs.false, !dbg !1785

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, ptr %base.addr, align 8, !dbg !1786
  %cmp14 = icmp ugt i64 %9, 458815, !dbg !1787
  br i1 %cmp14, label %if.end28, label %land.lhs.true16, !dbg !1788

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %10 = load i32, ptr %type.addr, align 4, !dbg !1789
  %cmp17 = icmp eq i32 %10, 1, !dbg !1790
  br i1 %cmp17, label %if.then22, label %lor.lhs.false19, !dbg !1791

lor.lhs.false19:                                  ; preds = %land.lhs.true16
  %11 = load i32, ptr %type.addr, align 4, !dbg !1792
  %cmp20 = icmp eq i32 %11, 6, !dbg !1793
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !1794

if.then22:                                        ; preds = %lor.lhs.false19, %land.lhs.true16
  br label %do.body23, !dbg !1795

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !1798

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !1798

do.end25:                                         ; preds = %do.cond24
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #22, !dbg !1795
  store i32 %call27, ptr %tmp26, align 4, !dbg !1798
  %12 = load i32, ptr %tmp26, align 4, !dbg !1795
  store i32 -22, ptr %retval, align 4, !dbg !1800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1800

if.end28:                                         ; preds = %lor.lhs.false19, %lor.lhs.false, %if.end
  br label %if.end29, !dbg !1801

if.end29:                                         ; preds = %if.end28, %land.lhs.true7, %land.lhs.true3, %land.lhs.true, %entry
  %13 = load i64, ptr %base.addr, align 8, !dbg !1802
  %14 = load i64, ptr %size.addr, align 8, !dbg !1803
  %add30 = add i64 %13, %14, !dbg !1804
  %sub = sub i64 %add30, 1, !dbg !1805
  store i64 %sub, ptr %last, align 8, !dbg !1806
  %15 = load i64, ptr %base.addr, align 8, !dbg !1807
  store i64 %15, ptr %lbase, align 8, !dbg !1809
  br label %for.cond, !dbg !1810

for.cond:                                         ; preds = %for.inc, %if.end29
  %16 = load i64, ptr %lbase, align 8, !dbg !1811
  %and31 = and i64 %16, 1, !dbg !1813
  %tobool32 = icmp ne i64 %and31, 0, !dbg !1813
  br i1 %tobool32, label %land.end, label %land.rhs, !dbg !1814

land.rhs:                                         ; preds = %for.cond
  %17 = load i64, ptr %last, align 8, !dbg !1815
  %and33 = and i64 %17, 1, !dbg !1816
  %tobool34 = icmp ne i64 %and33, 0, !dbg !1814
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %tobool34, %land.rhs ], !dbg !1817
  br i1 %18, label %for.body, label %for.end, !dbg !1818

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !1818

for.inc:                                          ; preds = %for.body
  %19 = load i64, ptr %lbase, align 8, !dbg !1819
  %shr = lshr i64 %19, 1, !dbg !1820
  store i64 %shr, ptr %lbase, align 8, !dbg !1821
  %20 = load i64, ptr %last, align 8, !dbg !1822
  %shr35 = lshr i64 %20, 1, !dbg !1823
  store i64 %shr35, ptr %last, align 8, !dbg !1824
  br label %for.cond, !dbg !1825, !llvm.loop !1826

for.end:                                          ; preds = %land.end
  %21 = load i64, ptr %lbase, align 8, !dbg !1828
  %22 = load i64, ptr %last, align 8, !dbg !1830
  %cmp36 = icmp ne i64 %21, %22, !dbg !1831
  br i1 %cmp36, label %if.then38, label %if.end44, !dbg !1832

if.then38:                                        ; preds = %for.end
  br label %do.body39, !dbg !1833

do.body39:                                        ; preds = %if.then38
  br label %do.cond40, !dbg !1836

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !1836

do.end41:                                         ; preds = %do.cond40
  %23 = load i64, ptr %base.addr, align 8, !dbg !1833
  %24 = load i64, ptr %size.addr, align 8, !dbg !1833
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, i64 noundef %23, i64 noundef %24) #22, !dbg !1833
  store i32 %call43, ptr %tmp42, align 4, !dbg !1836
  %25 = load i32, ptr %tmp42, align 4, !dbg !1833
  store i32 -22, ptr %retval, align 4, !dbg !1838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1838

if.end44:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !1839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1839

cleanup:                                          ; preds = %if.end44, %do.end41, %do.end25, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #20, !dbg !1840
  call void @llvm.lifetime.end.p0(i64 8, ptr %lbase) #20, !dbg !1840
  %26 = load i32, ptr %retval, align 4, !dbg !1840
  ret i32 %26, !dbg !1840
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @positive_have_wrcomb() #1 align 16 !dbg !1841 {
entry:
  ret i32 1, !dbg !1842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic_set_mtrr(i32 noundef %reg, i64 noundef %base, i64 noundef %size, i8 noundef zeroext %type) #1 align 16 !dbg !1843 {
entry:
  %reg.addr = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  %vr = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !1845, metadata !DIExpression()), !dbg !1861
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1846, metadata !DIExpression()), !dbg !1862
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1847, metadata !DIExpression()), !dbg !1863
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1848, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !1865
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1849, metadata !DIExpression()), !dbg !1866
  call void @llvm.lifetime.start.p0(i64 8, ptr %vr) #20, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %vr, metadata !1850, metadata !DIExpression()), !dbg !1868
  %0 = load i32, ptr %reg.addr, align 4, !dbg !1869
  %idxprom = zext i32 %0 to i64, !dbg !1870
  %arrayidx = getelementptr [256 x %struct.mtrr_var_range], ptr @mtrr_state, i64 0, i64 %idxprom, !dbg !1870
  store ptr %arrayidx, ptr %vr, align 8, !dbg !1871
  br label %do.body, !dbg !1872

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1873

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !1874
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1851, metadata !DIExpression()), !dbg !1874
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !1874
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1855, metadata !DIExpression()), !dbg !1874
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1874
  %conv = zext i1 %cmp to i32, !dbg !1874
  store i32 1, ptr %tmp, align 4, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !1875
  %1 = load i32, ptr %tmp, align 4, !dbg !1874
  %call = call i64 @arch_local_irq_save() #21, !dbg !1875
  store i64 %call, ptr %flags, align 8, !dbg !1875
  br label %do.cond, !dbg !1875

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1875

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !1873

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !1873

do.end3:                                          ; preds = %do.cond2
  call void @cache_disable() #21, !dbg !1876
  %2 = load i64, ptr %size.addr, align 8, !dbg !1877
  %cmp4 = icmp eq i64 %2, 0, !dbg !1879
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1880

if.then:                                          ; preds = %do.end3
  %3 = load i32, ptr %reg.addr, align 4, !dbg !1881
  %mul = mul i32 2, %3, !dbg !1881
  %add = add i32 512, %mul, !dbg !1881
  %add6 = add i32 %add, 1, !dbg !1881
  call void @mtrr_wrmsr(i32 noundef %add6, i32 noundef 0, i32 noundef 0) #21, !dbg !1883
  %4 = load ptr, ptr %vr, align 8, !dbg !1884
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false), !dbg !1885
  br label %if.end, !dbg !1886

if.else:                                          ; preds = %do.end3
  %5 = load i64, ptr %base.addr, align 8, !dbg !1887
  %shl = shl i64 %5, 12, !dbg !1889
  %6 = load i8, ptr %type.addr, align 1, !dbg !1890
  %conv7 = zext i8 %6 to i64, !dbg !1890
  %or = or i64 %shl, %conv7, !dbg !1891
  %conv8 = trunc i64 %or to i32, !dbg !1887
  %7 = load ptr, ptr %vr, align 8, !dbg !1892
  %base_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %7, i32 0, i32 0, !dbg !1893
  store i32 %conv8, ptr %base_lo, align 4, !dbg !1894
  %8 = load i64, ptr %base.addr, align 8, !dbg !1895
  %shr = lshr i64 %8, 20, !dbg !1896
  %9 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !1897
  %not = xor i32 %9, -1, !dbg !1898
  %conv9 = zext i32 %not to i64, !dbg !1898
  %and = and i64 %shr, %conv9, !dbg !1899
  %conv10 = trunc i64 %and to i32, !dbg !1900
  %10 = load ptr, ptr %vr, align 8, !dbg !1901
  %base_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %10, i32 0, i32 1, !dbg !1902
  store i32 %conv10, ptr %base_hi, align 4, !dbg !1903
  %11 = load i64, ptr %size.addr, align 8, !dbg !1904
  %sub = sub i64 0, %11, !dbg !1905
  %shl11 = shl i64 %sub, 12, !dbg !1906
  %or12 = or i64 %shl11, 2048, !dbg !1907
  %conv13 = trunc i64 %or12 to i32, !dbg !1905
  %12 = load ptr, ptr %vr, align 8, !dbg !1908
  %mask_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %12, i32 0, i32 2, !dbg !1909
  store i32 %conv13, ptr %mask_lo, align 4, !dbg !1910
  %13 = load i64, ptr %size.addr, align 8, !dbg !1911
  %sub14 = sub i64 0, %13, !dbg !1912
  %shr15 = lshr i64 %sub14, 20, !dbg !1913
  %14 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !1914
  %not16 = xor i32 %14, -1, !dbg !1915
  %conv17 = zext i32 %not16 to i64, !dbg !1915
  %and18 = and i64 %shr15, %conv17, !dbg !1916
  %conv19 = trunc i64 %and18 to i32, !dbg !1917
  %15 = load ptr, ptr %vr, align 8, !dbg !1918
  %mask_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %15, i32 0, i32 3, !dbg !1919
  store i32 %conv19, ptr %mask_hi, align 4, !dbg !1920
  %16 = load i32, ptr %reg.addr, align 4, !dbg !1921
  %mul20 = mul i32 2, %16, !dbg !1921
  %add21 = add i32 512, %mul20, !dbg !1921
  %17 = load ptr, ptr %vr, align 8, !dbg !1922
  %base_lo22 = getelementptr inbounds %struct.mtrr_var_range, ptr %17, i32 0, i32 0, !dbg !1923
  %18 = load i32, ptr %base_lo22, align 4, !dbg !1923
  %19 = load ptr, ptr %vr, align 8, !dbg !1924
  %base_hi23 = getelementptr inbounds %struct.mtrr_var_range, ptr %19, i32 0, i32 1, !dbg !1925
  %20 = load i32, ptr %base_hi23, align 4, !dbg !1925
  call void @mtrr_wrmsr(i32 noundef %add21, i32 noundef %18, i32 noundef %20) #21, !dbg !1926
  %21 = load i32, ptr %reg.addr, align 4, !dbg !1927
  %mul24 = mul i32 2, %21, !dbg !1927
  %add25 = add i32 512, %mul24, !dbg !1927
  %add26 = add i32 %add25, 1, !dbg !1927
  %22 = load ptr, ptr %vr, align 8, !dbg !1928
  %mask_lo27 = getelementptr inbounds %struct.mtrr_var_range, ptr %22, i32 0, i32 2, !dbg !1929
  %23 = load i32, ptr %mask_lo27, align 4, !dbg !1929
  %24 = load ptr, ptr %vr, align 8, !dbg !1930
  %mask_hi28 = getelementptr inbounds %struct.mtrr_var_range, ptr %24, i32 0, i32 3, !dbg !1931
  %25 = load i32, ptr %mask_hi28, align 4, !dbg !1931
  call void @mtrr_wrmsr(i32 noundef %add26, i32 noundef %23, i32 noundef %25) #21, !dbg !1932
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @cache_enable() #21, !dbg !1933
  br label %do.body29, !dbg !1934

do.body29:                                        ; preds = %if.end
  br label %do.body30, !dbg !1935

do.body30:                                        ; preds = %do.body29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy31) #20, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %__dummy31, metadata !1856, metadata !DIExpression()), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy232) #20, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %__dummy232, metadata !1860, metadata !DIExpression()), !dbg !1936
  %cmp33 = icmp eq ptr %__dummy31, %__dummy232, !dbg !1936
  %conv34 = zext i1 %cmp33 to i32, !dbg !1936
  store i32 1, ptr %tmp35, align 4, !dbg !1936
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy232) #20, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy31) #20, !dbg !1937
  %26 = load i32, ptr %tmp35, align 4, !dbg !1936
  br label %do.body36, !dbg !1937

do.body36:                                        ; preds = %do.body30
  br label %do.cond37, !dbg !1938

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !1938

do.end38:                                         ; preds = %do.cond37
  %27 = load i64, ptr %flags, align 8, !dbg !1937
  call void @arch_local_irq_restore(i64 noundef %27) #21, !dbg !1937
  br label %do.cond39, !dbg !1937

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !1937

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !1935

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !1935

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 8, ptr %vr) #20, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !1940
  ret void, !dbg !1940
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic_get_mtrr(i32 noundef %reg, ptr noundef %base, ptr noundef %size, ptr noundef %type) #1 align 16 !dbg !318 {
entry:
  %reg.addr = alloca i32, align 4
  %base.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %mask_lo = alloca i32, align 4
  %mask_hi = alloca i32, align 4
  %base_lo = alloca i32, align 4
  %base_hi = alloca i32, align 4
  %hi = alloca i32, align 4
  %tmp = alloca i64, align 8
  %mask = alloca i64, align 8
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %__val = alloca i64, align 8
  %__val17 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !320, metadata !DIExpression()), !dbg !1941
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !321, metadata !DIExpression()), !dbg !1942
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !322, metadata !DIExpression()), !dbg !1943
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !323, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_lo) #20, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %mask_lo, metadata !324, metadata !DIExpression()), !dbg !1946
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_hi) #20, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %mask_hi, metadata !325, metadata !DIExpression()), !dbg !1947
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_lo) #20, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %base_lo, metadata !326, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_hi) #20, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %base_hi, metadata !327, metadata !DIExpression()), !dbg !1949
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #20, !dbg !1950
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !328, metadata !DIExpression()), !dbg !1951
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #20, !dbg !1952
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !329, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #20, !dbg !1952
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !330, metadata !DIExpression()), !dbg !1954
  br label %do.body, !dbg !1955

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #21, !dbg !1956
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !1956, !srcloc !1958
  br label %do.cond, !dbg !1956

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1956

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str.11) #21, !dbg !1959
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #20, !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !331, metadata !DIExpression()), !dbg !1960
  br label %do.body3, !dbg !1960

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !335, metadata !DIExpression()), !dbg !1961
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1961
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1961
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !1960
  br label %do.cond4, !dbg !1961

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !1961

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #20, !dbg !1962
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !339, metadata !DIExpression()), !dbg !1962
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 2)) #24, !dbg !1962, !srcloc !1963
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1962
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1962
  %conv = zext i32 %2 to i64, !dbg !1962
  %conv7 = trunc i64 %conv to i32, !dbg !1962
  store i32 %conv7, ptr %tmp6, align 4, !dbg !1962
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #20, !dbg !1960
  %3 = load i32, ptr %tmp6, align 4, !dbg !1962
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1960
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1960
  store i32 %4, ptr %tmp8, align 4, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #20, !dbg !1959
  %5 = load i32, ptr %tmp8, align 4, !dbg !1960
  store i32 %5, ptr %tmp2, align 4, !dbg !1959
  %6 = load i32, ptr %tmp2, align 4, !dbg !1959
  store i32 %6, ptr %tmp1, align 4, !dbg !1956
  %7 = load i32, ptr %tmp1, align 4, !dbg !1955
  br label %do.body9, !dbg !1964

do.body9:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !1965
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !341, metadata !DIExpression()), !dbg !1965
  %8 = load i32, ptr %reg.addr, align 4, !dbg !1965
  %mul = mul i32 2, %8, !dbg !1965
  %add = add i32 512, %mul, !dbg !1965
  %add10 = add i32 %add, 1, !dbg !1965
  %call = call i64 @native_read_msr(i32 noundef %add10) #21, !dbg !1965
  store i64 %call, ptr %__val, align 8, !dbg !1965
  %9 = load i64, ptr %__val, align 8, !dbg !1965
  %conv11 = trunc i64 %9 to i32, !dbg !1965
  store i32 %conv11, ptr %mask_lo, align 4, !dbg !1965
  %10 = load i64, ptr %__val, align 8, !dbg !1965
  %shr = lshr i64 %10, 32, !dbg !1965
  %conv12 = trunc i64 %shr to i32, !dbg !1965
  store i32 %conv12, ptr %mask_hi, align 4, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !1964
  br label %do.cond13, !dbg !1965

do.cond13:                                        ; preds = %do.body9
  br label %do.end14, !dbg !1965

do.end14:                                         ; preds = %do.cond13
  %11 = load i32, ptr %mask_lo, align 4, !dbg !1966
  %conv15 = zext i32 %11 to i64, !dbg !1966
  %and = and i64 %conv15, 2048, !dbg !1968
  %tobool = icmp ne i64 %and, 0, !dbg !1968
  br i1 %tobool, label %if.end, label %if.then, !dbg !1969

if.then:                                          ; preds = %do.end14
  %12 = load ptr, ptr %base.addr, align 8, !dbg !1970
  store i64 0, ptr %12, align 8, !dbg !1972
  %13 = load ptr, ptr %size.addr, align 8, !dbg !1973
  store i64 0, ptr %13, align 8, !dbg !1974
  %14 = load ptr, ptr %type.addr, align 8, !dbg !1975
  store i8 0, ptr %14, align 1, !dbg !1976
  br label %out_put_cpu, !dbg !1977

if.end:                                           ; preds = %do.end14
  br label %do.body16, !dbg !1978

do.body16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val17) #20, !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %__val17, metadata !343, metadata !DIExpression()), !dbg !1979
  %15 = load i32, ptr %reg.addr, align 4, !dbg !1979
  %mul18 = mul i32 2, %15, !dbg !1979
  %add19 = add i32 512, %mul18, !dbg !1979
  %call20 = call i64 @native_read_msr(i32 noundef %add19) #21, !dbg !1979
  store i64 %call20, ptr %__val17, align 8, !dbg !1979
  %16 = load i64, ptr %__val17, align 8, !dbg !1979
  %conv21 = trunc i64 %16 to i32, !dbg !1979
  store i32 %conv21, ptr %base_lo, align 4, !dbg !1979
  %17 = load i64, ptr %__val17, align 8, !dbg !1979
  %shr22 = lshr i64 %17, 32, !dbg !1979
  %conv23 = trunc i64 %shr22 to i32, !dbg !1979
  store i32 %conv23, ptr %base_hi, align 4, !dbg !1979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val17) #20, !dbg !1978
  br label %do.cond24, !dbg !1979

do.cond24:                                        ; preds = %do.body16
  br label %do.end25, !dbg !1979

do.end25:                                         ; preds = %do.cond24
  %18 = load i32, ptr %mask_hi, align 4, !dbg !1980
  %conv26 = zext i32 %18 to i64, !dbg !1981
  %shl = shl i64 %conv26, 32, !dbg !1982
  %19 = load i32, ptr %mask_lo, align 4, !dbg !1983
  %conv27 = zext i32 %19 to i64, !dbg !1983
  %and28 = and i64 %conv27, -4096, !dbg !1984
  %or = or i64 %shl, %and28, !dbg !1985
  store i64 %or, ptr %tmp, align 8, !dbg !1986
  %20 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !1987
  %conv29 = zext i32 %20 to i64, !dbg !1988
  %shl30 = shl i64 %conv29, 32, !dbg !1989
  %21 = load i64, ptr %tmp, align 8, !dbg !1990
  %or31 = or i64 %shl30, %21, !dbg !1991
  store i64 %or31, ptr %mask, align 8, !dbg !1992
  %22 = load i64, ptr %tmp, align 8, !dbg !1993
  %call32 = call i32 @fls64(i64 noundef %22) #21, !dbg !1994
  store i32 %call32, ptr %hi, align 4, !dbg !1995
  %23 = load i32, ptr %hi, align 4, !dbg !1996
  %cmp = icmp ugt i32 %23, 0, !dbg !1998
  br i1 %cmp, label %if.then34, label %if.end47, !dbg !1999

if.then34:                                        ; preds = %do.end25
  %24 = load i32, ptr %hi, align 4, !dbg !2000
  %sub = sub i32 %24, 1, !dbg !2002
  %sh_prom = zext i32 %sub to i64, !dbg !2003
  %shl35 = shl i64 1, %sh_prom, !dbg !2003
  %sub36 = sub i64 %shl35, 1, !dbg !2004
  %not = xor i64 %sub36, -1, !dbg !2005
  %25 = load i64, ptr %tmp, align 8, !dbg !2006
  %or37 = or i64 %25, %not, !dbg !2006
  store i64 %or37, ptr %tmp, align 8, !dbg !2006
  %26 = load i64, ptr %tmp, align 8, !dbg !2007
  %27 = load i64, ptr %mask, align 8, !dbg !2009
  %cmp38 = icmp ne i64 %26, %27, !dbg !2010
  br i1 %cmp38, label %if.then40, label %if.end46, !dbg !2011

if.then40:                                        ; preds = %if.then34
  br label %do.body41, !dbg !2012

do.body41:                                        ; preds = %if.then40
  br label %do.cond42, !dbg !2015

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !2015

do.end43:                                         ; preds = %do.cond42
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28) #22, !dbg !2012
  store i32 %call45, ptr %tmp44, align 4, !dbg !2015
  %28 = load i32, ptr %tmp44, align 4, !dbg !2012
  call void @add_taint(i32 noundef 11, i32 noundef 0) #21, !dbg !2017
  %29 = load i64, ptr %tmp, align 8, !dbg !2018
  store i64 %29, ptr %mask, align 8, !dbg !2019
  br label %if.end46, !dbg !2020

if.end46:                                         ; preds = %do.end43, %if.then34
  br label %if.end47, !dbg !2021

if.end47:                                         ; preds = %if.end46, %do.end25
  %30 = load i64, ptr %mask, align 8, !dbg !2022
  %sub48 = sub i64 0, %30, !dbg !2023
  %shr49 = lshr i64 %sub48, 12, !dbg !2024
  %31 = load ptr, ptr %size.addr, align 8, !dbg !2025
  store i64 %shr49, ptr %31, align 8, !dbg !2026
  %32 = load i32, ptr %base_hi, align 4, !dbg !2027
  %conv50 = zext i32 %32 to i64, !dbg !2028
  %shl51 = shl i64 %conv50, 20, !dbg !2029
  %33 = load i32, ptr %base_lo, align 4, !dbg !2030
  %shr52 = lshr i32 %33, 12, !dbg !2031
  %conv53 = zext i32 %shr52 to i64, !dbg !2030
  %or54 = or i64 %shl51, %conv53, !dbg !2032
  %34 = load ptr, ptr %base.addr, align 8, !dbg !2033
  store i64 %or54, ptr %34, align 8, !dbg !2034
  %35 = load i32, ptr %base_lo, align 4, !dbg !2035
  %conv55 = zext i32 %35 to i64, !dbg !2035
  %and56 = and i64 %conv55, 255, !dbg !2036
  %conv57 = trunc i64 %and56 to i8, !dbg !2035
  %36 = load ptr, ptr %type.addr, align 8, !dbg !2037
  store i8 %conv57, ptr %36, align 1, !dbg !2038
  br label %out_put_cpu, !dbg !2039

out_put_cpu:                                      ; preds = %if.end47, %if.then
  call void @llvm.dbg.label(metadata !345), !dbg !2040
  br label %do.body58, !dbg !2041

do.body58:                                        ; preds = %out_put_cpu
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !2042, !srcloc !2044
  %call59 = call zeroext i1 @__preempt_count_dec_and_test() #21, !dbg !2045
  %lnot = xor i1 %call59, true, !dbg !2045
  %lnot60 = xor i1 %lnot, true, !dbg !2045
  %lnot.ext = zext i1 %lnot60 to i32, !dbg !2045
  %conv61 = sext i32 %lnot.ext to i64, !dbg !2045
  %expval = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !2045
  %tobool62 = icmp ne i64 %expval, 0, !dbg !2045
  br i1 %tobool62, label %if.then63, label %if.end67, !dbg !2042

if.then63:                                        ; preds = %do.body58
  br label %do.body64, !dbg !2045

do.body64:                                        ; preds = %if.then63
  %37 = call i64 @llvm.read_register.i64(metadata !347), !dbg !2047
  %38 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %37) #20, !dbg !2047, !srcloc !2049
  call void @llvm.write_register.i64(metadata !347, i64 %38), !dbg !2047
  br label %do.cond65, !dbg !2047

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !2047

do.end66:                                         ; preds = %do.cond65
  br label %if.end67, !dbg !2047

if.end67:                                         ; preds = %do.end66, %do.body58
  br label %do.cond68, !dbg !2042

do.cond68:                                        ; preds = %if.end67
  br label %do.end69, !dbg !2042

do.end69:                                         ; preds = %do.cond68
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #20, !dbg !2050
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #20, !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #20, !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_hi) #20, !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_lo) #20, !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_hi) #20, !dbg !2050
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_lo) #20, !dbg !2050
  ret void, !dbg !2050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @generic_have_wrcomb() #1 align 16 !dbg !2051 {
entry:
  %config = alloca i64, align 8
  %dummy = alloca i64, align 8
  %__val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #20, !dbg !2057
  call void @llvm.dbg.declare(metadata ptr %config, metadata !2053, metadata !DIExpression()), !dbg !2058
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #20, !dbg !2057
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !2054, metadata !DIExpression()), !dbg !2059
  br label %do.body, !dbg !2060

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !2055, metadata !DIExpression()), !dbg !2061
  %call = call i64 @native_read_msr(i32 noundef 254) #21, !dbg !2061
  store i64 %call, ptr %__val, align 8, !dbg !2061
  %0 = load i64, ptr %__val, align 8, !dbg !2061
  %conv = trunc i64 %0 to i32, !dbg !2061
  %conv1 = zext i32 %conv to i64, !dbg !2061
  store i64 %conv1, ptr %config, align 8, !dbg !2061
  %1 = load i64, ptr %__val, align 8, !dbg !2061
  %shr = lshr i64 %1, 32, !dbg !2061
  %conv2 = trunc i64 %shr to i32, !dbg !2061
  %conv3 = zext i32 %conv2 to i64, !dbg !2061
  store i64 %conv3, ptr %dummy, align 8, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !2060
  br label %do.cond, !dbg !2061

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2061

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %config, align 8, !dbg !2062
  %and = and i64 %2, 1024, !dbg !2063
  %conv4 = trunc i64 %and to i32, !dbg !2062
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #20, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #20, !dbg !2064
  ret i32 %conv4, !dbg !2065
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2066 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @get_var_mtrr_state(i32 noundef %reg, ptr noundef %start, ptr noundef %size) #1 align 16 !dbg !2070 {
entry:
  %retval = alloca i8, align 1
  %reg.addr = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %mtrr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !2075, metadata !DIExpression()), !dbg !2079
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2076, metadata !DIExpression()), !dbg !2080
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtrr) #20, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %mtrr, metadata !2078, metadata !DIExpression()), !dbg !2083
  %0 = load i32, ptr %reg.addr, align 4, !dbg !2084
  %idx.ext = zext i32 %0 to i64, !dbg !2085
  %add.ptr = getelementptr %struct.mtrr_var_range, ptr @mtrr_state, i64 %idx.ext, !dbg !2085
  store ptr %add.ptr, ptr %mtrr, align 8, !dbg !2083
  %1 = load ptr, ptr %mtrr, align 8, !dbg !2086
  %mask_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %1, i32 0, i32 2, !dbg !2088
  %2 = load i32, ptr %mask_lo, align 4, !dbg !2088
  %conv = zext i32 %2 to i64, !dbg !2086
  %and = and i64 %conv, 2048, !dbg !2089
  %tobool = icmp ne i64 %and, 0, !dbg !2089
  br i1 %tobool, label %if.end, label %if.then, !dbg !2090

if.then:                                          ; preds = %entry
  store i8 -1, ptr %retval, align 1, !dbg !2091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2091

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mtrr, align 8, !dbg !2092
  %base_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %3, i32 0, i32 1, !dbg !2093
  %4 = load i32, ptr %base_hi, align 4, !dbg !2093
  %conv1 = zext i32 %4 to i64, !dbg !2094
  %shl = shl i64 %conv1, 32, !dbg !2095
  %5 = load ptr, ptr %mtrr, align 8, !dbg !2096
  %base_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %5, i32 0, i32 0, !dbg !2097
  %6 = load i32, ptr %base_lo, align 4, !dbg !2097
  %conv2 = zext i32 %6 to i64, !dbg !2096
  %and3 = and i64 %conv2, -4096, !dbg !2098
  %add = add i64 %shl, %and3, !dbg !2099
  %7 = load ptr, ptr %start.addr, align 8, !dbg !2100
  store i64 %add, ptr %7, align 8, !dbg !2101
  %8 = load ptr, ptr %mtrr, align 8, !dbg !2102
  %mask_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %8, i32 0, i32 3, !dbg !2103
  %9 = load i32, ptr %mask_hi, align 4, !dbg !2103
  %conv4 = zext i32 %9 to i64, !dbg !2104
  %shl5 = shl i64 %conv4, 32, !dbg !2105
  %10 = load ptr, ptr %mtrr, align 8, !dbg !2106
  %mask_lo6 = getelementptr inbounds %struct.mtrr_var_range, ptr %10, i32 0, i32 2, !dbg !2107
  %11 = load i32, ptr %mask_lo6, align 4, !dbg !2107
  %conv7 = zext i32 %11 to i64, !dbg !2106
  %and8 = and i64 %conv7, -4096, !dbg !2108
  %add9 = add i64 %shl5, %and8, !dbg !2109
  %call = call i64 @get_mtrr_size(i64 noundef %add9) #21, !dbg !2110
  %12 = load ptr, ptr %size.addr, align 8, !dbg !2111
  store i64 %call, ptr %12, align 8, !dbg !2112
  %13 = load ptr, ptr %mtrr, align 8, !dbg !2113
  %base_lo10 = getelementptr inbounds %struct.mtrr_var_range, ptr %13, i32 0, i32 0, !dbg !2114
  %14 = load i32, ptr %base_lo10, align 4, !dbg !2114
  %conv11 = zext i32 %14 to i64, !dbg !2113
  %and12 = and i64 %conv11, 255, !dbg !2115
  %conv13 = trunc i64 %and12 to i8, !dbg !2113
  store i8 %conv13, ptr %retval, align 1, !dbg !2116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2116

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtrr) #20, !dbg !2117
  %15 = load i8, ptr %retval, align 1, !dbg !2117
  ret i8 %15, !dbg !2117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_mtrr_size(i64 noundef %mask) #1 align 16 !dbg !2118 {
entry:
  %mask.addr = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #20, !dbg !2125
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2123, metadata !DIExpression()), !dbg !2126
  %0 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !2127
  %conv = zext i32 %0 to i64, !dbg !2128
  %shl = shl i64 %conv, 32, !dbg !2129
  %1 = load i64, ptr %mask.addr, align 8, !dbg !2130
  %or = or i64 %1, %shl, !dbg !2130
  store i64 %or, ptr %mask.addr, align 8, !dbg !2130
  %2 = load i64, ptr %mask.addr, align 8, !dbg !2131
  %sub = sub i64 0, %2, !dbg !2132
  store i64 %sub, ptr %size, align 8, !dbg !2133
  %3 = load i64, ptr %size, align 8, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #20, !dbg !2135
  ret i64 %3, !dbg !2136
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_map_entry_at(i64 noundef %start, i64 noundef %end, i8 noundef zeroext %type, i32 noundef %idx) #1 align 16 !dbg !2137 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i8, align 1
  %idx.addr = alloca i32, align 4
  %merge_prev = alloca i8, align 1
  %merge_next = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2141, metadata !DIExpression()), !dbg !2161
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2142, metadata !DIExpression()), !dbg !2162
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2143, metadata !DIExpression()), !dbg !2163
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2144, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 1, ptr %merge_prev) #20, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %merge_prev, metadata !2145, metadata !DIExpression()), !dbg !2166
  store i8 0, ptr %merge_prev, align 1, !dbg !2166
  call void @llvm.lifetime.start.p0(i64 1, ptr %merge_next) #20, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %merge_next, metadata !2146, metadata !DIExpression()), !dbg !2167
  store i8 0, ptr %merge_next, align 1, !dbg !2167
  %0 = load i64, ptr %start.addr, align 8, !dbg !2168
  %1 = load i64, ptr %end.addr, align 8, !dbg !2170
  %cmp = icmp uge i64 %0, %1, !dbg !2171
  br i1 %cmp, label %if.then, label %if.end, !dbg !2172

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2173

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %idx.addr, align 4, !dbg !2174
  %cmp1 = icmp sgt i32 %2, 0, !dbg !2175
  br i1 %cmp1, label %if.then2, label %if.end16, !dbg !2176

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #20, !dbg !2177
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2147, metadata !DIExpression()), !dbg !2178
  %3 = load ptr, ptr @cache_map, align 8, !dbg !2179
  %4 = load i32, ptr %idx.addr, align 4, !dbg !2180
  %idx.ext = sext i32 %4 to i64, !dbg !2181
  %add.ptr = getelementptr %struct.cache_map, ptr %3, i64 %idx.ext, !dbg !2181
  %add.ptr3 = getelementptr %struct.cache_map, ptr %add.ptr, i64 -1, !dbg !2182
  store ptr %add.ptr3, ptr %prev, align 8, !dbg !2178
  %5 = load ptr, ptr %prev, align 8, !dbg !2183
  %fixed = getelementptr inbounds %struct.cache_map, ptr %5, i32 0, i32 3, !dbg !2185
  %bf.load = load i16, ptr %fixed, align 8, !dbg !2185
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !2185
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2185
  %bf.cast = zext i16 %bf.clear to i64, !dbg !2185
  %tobool = icmp ne i64 %bf.cast, 0, !dbg !2183
  br i1 %tobool, label %if.end15, label %land.lhs.true, !dbg !2186

land.lhs.true:                                    ; preds = %if.then2
  %6 = load i64, ptr %start.addr, align 8, !dbg !2187
  %7 = load ptr, ptr %prev, align 8, !dbg !2188
  %end4 = getelementptr inbounds %struct.cache_map, ptr %7, i32 0, i32 1, !dbg !2189
  %8 = load i64, ptr %end4, align 8, !dbg !2189
  %cmp5 = icmp eq i64 %6, %8, !dbg !2190
  br i1 %cmp5, label %land.lhs.true6, label %if.end15, !dbg !2191

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load i8, ptr %type.addr, align 1, !dbg !2192
  %conv = zext i8 %9 to i32, !dbg !2192
  %10 = load ptr, ptr %prev, align 8, !dbg !2193
  %type7 = getelementptr inbounds %struct.cache_map, ptr %10, i32 0, i32 3, !dbg !2194
  %bf.load8 = load i16, ptr %type7, align 8, !dbg !2194
  %bf.clear9 = and i16 %bf.load8, 255, !dbg !2194
  %bf.cast10 = zext i16 %bf.clear9 to i64, !dbg !2194
  %conv11 = trunc i64 %bf.cast10 to i32, !dbg !2193
  %cmp12 = icmp eq i32 %conv, %conv11, !dbg !2195
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2196

if.then14:                                        ; preds = %land.lhs.true6
  store i8 1, ptr %merge_prev, align 1, !dbg !2197
  br label %if.end15, !dbg !2198

if.end15:                                         ; preds = %if.then14, %land.lhs.true6, %land.lhs.true, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #20, !dbg !2199
  br label %if.end16, !dbg !2200

if.end16:                                         ; preds = %if.end15, %if.end
  %11 = load i32, ptr %idx.addr, align 4, !dbg !2201
  %12 = load i32, ptr @cache_map_n, align 4, !dbg !2202
  %cmp17 = icmp ult i32 %11, %12, !dbg !2203
  br i1 %cmp17, label %if.then19, label %if.end43, !dbg !2204

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #20, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2150, metadata !DIExpression()), !dbg !2206
  %13 = load ptr, ptr @cache_map, align 8, !dbg !2207
  %14 = load i32, ptr %idx.addr, align 4, !dbg !2208
  %idx.ext20 = sext i32 %14 to i64, !dbg !2209
  %add.ptr21 = getelementptr %struct.cache_map, ptr %13, i64 %idx.ext20, !dbg !2209
  store ptr %add.ptr21, ptr %next, align 8, !dbg !2206
  %15 = load ptr, ptr %next, align 8, !dbg !2210
  %fixed22 = getelementptr inbounds %struct.cache_map, ptr %15, i32 0, i32 3, !dbg !2212
  %bf.load23 = load i16, ptr %fixed22, align 8, !dbg !2212
  %bf.lshr24 = lshr i16 %bf.load23, 8, !dbg !2212
  %bf.clear25 = and i16 %bf.lshr24, 1, !dbg !2212
  %bf.cast26 = zext i16 %bf.clear25 to i64, !dbg !2212
  %tobool27 = icmp ne i64 %bf.cast26, 0, !dbg !2210
  br i1 %tobool27, label %if.end42, label %land.lhs.true28, !dbg !2213

land.lhs.true28:                                  ; preds = %if.then19
  %16 = load i64, ptr %end.addr, align 8, !dbg !2214
  %17 = load ptr, ptr %next, align 8, !dbg !2215
  %start29 = getelementptr inbounds %struct.cache_map, ptr %17, i32 0, i32 0, !dbg !2216
  %18 = load i64, ptr %start29, align 8, !dbg !2216
  %cmp30 = icmp eq i64 %16, %18, !dbg !2217
  br i1 %cmp30, label %land.lhs.true32, label %if.end42, !dbg !2218

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %19 = load i8, ptr %type.addr, align 1, !dbg !2219
  %conv33 = zext i8 %19 to i32, !dbg !2219
  %20 = load ptr, ptr %next, align 8, !dbg !2220
  %type34 = getelementptr inbounds %struct.cache_map, ptr %20, i32 0, i32 3, !dbg !2221
  %bf.load35 = load i16, ptr %type34, align 8, !dbg !2221
  %bf.clear36 = and i16 %bf.load35, 255, !dbg !2221
  %bf.cast37 = zext i16 %bf.clear36 to i64, !dbg !2221
  %conv38 = trunc i64 %bf.cast37 to i32, !dbg !2220
  %cmp39 = icmp eq i32 %conv33, %conv38, !dbg !2222
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2223

if.then41:                                        ; preds = %land.lhs.true32
  store i8 1, ptr %merge_next, align 1, !dbg !2224
  br label %if.end42, !dbg !2225

if.end42:                                         ; preds = %if.then41, %land.lhs.true32, %land.lhs.true28, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #20, !dbg !2226
  br label %if.end43, !dbg !2227

if.end43:                                         ; preds = %if.end42, %if.end16
  %21 = load i8, ptr %merge_prev, align 1, !dbg !2228, !range !543, !noundef !544
  %tobool44 = trunc i8 %21 to i1, !dbg !2228
  br i1 %tobool44, label %land.lhs.true46, label %if.end54, !dbg !2230

land.lhs.true46:                                  ; preds = %if.end43
  %22 = load i8, ptr %merge_next, align 1, !dbg !2231, !range !543, !noundef !544
  %tobool47 = trunc i8 %22 to i1, !dbg !2231
  br i1 %tobool47, label %if.then49, label %if.end54, !dbg !2232

if.then49:                                        ; preds = %land.lhs.true46
  %23 = load ptr, ptr @cache_map, align 8, !dbg !2233
  %24 = load i32, ptr %idx.addr, align 4, !dbg !2235
  %idxprom = sext i32 %24 to i64, !dbg !2233
  %arrayidx = getelementptr %struct.cache_map, ptr %23, i64 %idxprom, !dbg !2233
  %end50 = getelementptr inbounds %struct.cache_map, ptr %arrayidx, i32 0, i32 1, !dbg !2236
  %25 = load i64, ptr %end50, align 8, !dbg !2236
  %26 = load ptr, ptr @cache_map, align 8, !dbg !2237
  %27 = load i32, ptr %idx.addr, align 4, !dbg !2238
  %sub = sub i32 %27, 1, !dbg !2239
  %idxprom51 = sext i32 %sub to i64, !dbg !2237
  %arrayidx52 = getelementptr %struct.cache_map, ptr %26, i64 %idxprom51, !dbg !2237
  %end53 = getelementptr inbounds %struct.cache_map, ptr %arrayidx52, i32 0, i32 1, !dbg !2240
  store i64 %25, ptr %end53, align 8, !dbg !2241
  %28 = load i32, ptr %idx.addr, align 4, !dbg !2242
  call void @rm_map_entry_at(i32 noundef %28) #21, !dbg !2243
  store i32 2, ptr %retval, align 4, !dbg !2244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2244

if.end54:                                         ; preds = %land.lhs.true46, %if.end43
  %29 = load i8, ptr %merge_prev, align 1, !dbg !2245, !range !543, !noundef !544
  %tobool55 = trunc i8 %29 to i1, !dbg !2245
  br i1 %tobool55, label %if.then56, label %if.end61, !dbg !2247

if.then56:                                        ; preds = %if.end54
  %30 = load i64, ptr %end.addr, align 8, !dbg !2248
  %31 = load ptr, ptr @cache_map, align 8, !dbg !2250
  %32 = load i32, ptr %idx.addr, align 4, !dbg !2251
  %sub57 = sub i32 %32, 1, !dbg !2252
  %idxprom58 = sext i32 %sub57 to i64, !dbg !2250
  %arrayidx59 = getelementptr %struct.cache_map, ptr %31, i64 %idxprom58, !dbg !2250
  %end60 = getelementptr inbounds %struct.cache_map, ptr %arrayidx59, i32 0, i32 1, !dbg !2253
  store i64 %30, ptr %end60, align 8, !dbg !2254
  store i32 1, ptr %retval, align 4, !dbg !2255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2255

if.end61:                                         ; preds = %if.end54
  %33 = load i8, ptr %merge_next, align 1, !dbg !2256, !range !543, !noundef !544
  %tobool62 = trunc i8 %33 to i1, !dbg !2256
  br i1 %tobool62, label %if.then63, label %if.end67, !dbg !2258

if.then63:                                        ; preds = %if.end61
  %34 = load i64, ptr %start.addr, align 8, !dbg !2259
  %35 = load ptr, ptr @cache_map, align 8, !dbg !2261
  %36 = load i32, ptr %idx.addr, align 4, !dbg !2262
  %idxprom64 = sext i32 %36 to i64, !dbg !2261
  %arrayidx65 = getelementptr %struct.cache_map, ptr %35, i64 %idxprom64, !dbg !2261
  %start66 = getelementptr inbounds %struct.cache_map, ptr %arrayidx65, i32 0, i32 0, !dbg !2263
  store i64 %34, ptr %start66, align 8, !dbg !2264
  store i32 1, ptr %retval, align 4, !dbg !2265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2265

if.end67:                                         ; preds = %if.end61
  %37 = load i32, ptr @cache_map_n, align 4, !dbg !2266
  %38 = load i32, ptr @cache_map_size, align 4, !dbg !2267
  %cmp68 = icmp eq i32 %37, %38, !dbg !2268
  br i1 %cmp68, label %if.then70, label %if.end102, !dbg !2269

if.then70:                                        ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2153, metadata !DIExpression()), !dbg !2270
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2270
  %39 = load i32, ptr %__ret_warn_on, align 4, !dbg !2271
  %tobool71 = icmp ne i32 %39, 0, !dbg !2271
  %lnot = xor i1 %tobool71, true, !dbg !2271
  %lnot72 = xor i1 %lnot, true, !dbg !2271
  %lnot.ext = zext i1 %lnot72 to i32, !dbg !2271
  %conv73 = sext i32 %lnot.ext to i64, !dbg !2271
  %expval = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !2271
  %tobool74 = icmp ne i64 %expval, 0, !dbg !2271
  br i1 %tobool74, label %if.then75, label %if.end94, !dbg !2270

if.then75:                                        ; preds = %if.then70
  br label %do.body, !dbg !2271

do.body:                                          ; preds = %if.then75
  br label %do.body76, !dbg !2272

do.body76:                                        ; preds = %do.body
  br label %do.cond, !dbg !2273

do.cond:                                          ; preds = %do.body76
  br label %do.end, !dbg !2273

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.16) #21, !dbg !2272
  br label %do.body77, !dbg !2272

do.body77:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2157, metadata !DIExpression()), !dbg !2275
  store i32 2313, ptr %__flags, align 4, !dbg !2275
  br label %do.body78, !dbg !2275

do.body78:                                        ; preds = %do.body77
  br label %do.cond79, !dbg !2276

do.cond79:                                        ; preds = %do.body78
  br label %do.end80, !dbg !2276

do.end80:                                         ; preds = %do.cond79
  br label %do.body81, !dbg !2275

do.body81:                                        ; preds = %do.end80
  %40 = load i32, ptr %__flags, align 4, !dbg !2278
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 217, i32 %40, i64 12) #20, !dbg !2278, !srcloc !2280
  br label %do.cond82, !dbg !2278

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !2278

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !2275

do.body84:                                        ; preds = %do.end83
  br label %do.cond85, !dbg !2281

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !2281

do.end86:                                         ; preds = %do.cond85
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !2272
  br label %do.cond87, !dbg !2275

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !2275

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !2272

do.body89:                                        ; preds = %do.end88
  br label %do.cond90, !dbg !2283

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !2283

do.end91:                                         ; preds = %do.cond90
  br label %do.cond92, !dbg !2272

do.cond92:                                        ; preds = %do.end91
  br label %do.end93, !dbg !2272

do.end93:                                         ; preds = %do.cond92
  br label %if.end94, !dbg !2272

if.end94:                                         ; preds = %do.end93, %if.then70
  %41 = load i32, ptr %__ret_warn_on, align 4, !dbg !2270
  %tobool95 = icmp ne i32 %41, 0, !dbg !2270
  %lnot96 = xor i1 %tobool95, true, !dbg !2270
  %lnot98 = xor i1 %lnot96, true, !dbg !2270
  %lnot.ext99 = zext i1 %lnot98 to i32, !dbg !2270
  %conv100 = sext i32 %lnot.ext99 to i64, !dbg !2270
  %expval101 = call i64 @llvm.expect.i64(i64 %conv100, i64 0), !dbg !2270
  store i64 %expval101, ptr %tmp, align 8, !dbg !2271
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !2285
  %42 = load i64, ptr %tmp, align 8, !dbg !2270
  %43 = load i32, ptr @cache_map_fixed, align 4, !dbg !2286
  store i32 %43, ptr @cache_map_n, align 4, !dbg !2287
  store i32 0, ptr %retval, align 4, !dbg !2288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2288

if.end102:                                        ; preds = %if.end67
  %44 = load i32, ptr @cache_map_n, align 4, !dbg !2289
  %45 = load i32, ptr %idx.addr, align 4, !dbg !2291
  %cmp103 = icmp ugt i32 %44, %45, !dbg !2292
  br i1 %cmp103, label %if.then105, label %if.end113, !dbg !2293

if.then105:                                       ; preds = %if.end102
  %46 = load ptr, ptr @cache_map, align 8, !dbg !2294
  %47 = load i32, ptr %idx.addr, align 4, !dbg !2296
  %idx.ext106 = sext i32 %47 to i64, !dbg !2297
  %add.ptr107 = getelementptr %struct.cache_map, ptr %46, i64 %idx.ext106, !dbg !2297
  %add.ptr108 = getelementptr %struct.cache_map, ptr %add.ptr107, i64 1, !dbg !2298
  %48 = load ptr, ptr @cache_map, align 8, !dbg !2299
  %49 = load i32, ptr %idx.addr, align 4, !dbg !2300
  %idx.ext109 = sext i32 %49 to i64, !dbg !2301
  %add.ptr110 = getelementptr %struct.cache_map, ptr %48, i64 %idx.ext109, !dbg !2301
  %50 = load i32, ptr @cache_map_n, align 4, !dbg !2302
  %51 = load i32, ptr %idx.addr, align 4, !dbg !2303
  %sub111 = sub i32 %50, %51, !dbg !2304
  %conv112 = zext i32 %sub111 to i64, !dbg !2305
  %mul = mul i64 32, %conv112, !dbg !2306
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr108, ptr align 8 %add.ptr110, i64 %mul, i1 false), !dbg !2307
  br label %if.end113, !dbg !2308

if.end113:                                        ; preds = %if.then105, %if.end102
  %52 = load i64, ptr %start.addr, align 8, !dbg !2309
  %53 = load ptr, ptr @cache_map, align 8, !dbg !2310
  %54 = load i32, ptr %idx.addr, align 4, !dbg !2311
  %idxprom114 = sext i32 %54 to i64, !dbg !2310
  %arrayidx115 = getelementptr %struct.cache_map, ptr %53, i64 %idxprom114, !dbg !2310
  %start116 = getelementptr inbounds %struct.cache_map, ptr %arrayidx115, i32 0, i32 0, !dbg !2312
  store i64 %52, ptr %start116, align 8, !dbg !2313
  %55 = load i64, ptr %end.addr, align 8, !dbg !2314
  %56 = load ptr, ptr @cache_map, align 8, !dbg !2315
  %57 = load i32, ptr %idx.addr, align 4, !dbg !2316
  %idxprom117 = sext i32 %57 to i64, !dbg !2315
  %arrayidx118 = getelementptr %struct.cache_map, ptr %56, i64 %idxprom117, !dbg !2315
  %end119 = getelementptr inbounds %struct.cache_map, ptr %arrayidx118, i32 0, i32 1, !dbg !2317
  store i64 %55, ptr %end119, align 8, !dbg !2318
  %58 = load i8, ptr %type.addr, align 1, !dbg !2319
  %conv120 = zext i8 %58 to i64, !dbg !2319
  %59 = load ptr, ptr @cache_map, align 8, !dbg !2320
  %60 = load i32, ptr %idx.addr, align 4, !dbg !2321
  %idxprom121 = sext i32 %60 to i64, !dbg !2320
  %arrayidx122 = getelementptr %struct.cache_map, ptr %59, i64 %idxprom121, !dbg !2320
  %type123 = getelementptr inbounds %struct.cache_map, ptr %arrayidx122, i32 0, i32 3, !dbg !2322
  %61 = trunc i64 %conv120 to i16, !dbg !2323
  %bf.load124 = load i16, ptr %type123, align 8, !dbg !2323
  %bf.value = and i16 %61, 255, !dbg !2323
  %bf.clear125 = and i16 %bf.load124, -256, !dbg !2323
  %bf.set = or i16 %bf.clear125, %bf.value, !dbg !2323
  store i16 %bf.set, ptr %type123, align 8, !dbg !2323
  %bf.result.cast = zext i16 %bf.value to i64, !dbg !2323
  %62 = load ptr, ptr @cache_map, align 8, !dbg !2324
  %63 = load i32, ptr %idx.addr, align 4, !dbg !2325
  %idxprom126 = sext i32 %63 to i64, !dbg !2324
  %arrayidx127 = getelementptr %struct.cache_map, ptr %62, i64 %idxprom126, !dbg !2324
  %fixed128 = getelementptr inbounds %struct.cache_map, ptr %arrayidx127, i32 0, i32 3, !dbg !2326
  %bf.load129 = load i16, ptr %fixed128, align 8, !dbg !2327
  %bf.clear130 = and i16 %bf.load129, -257, !dbg !2327
  %bf.set131 = or i16 %bf.clear130, 0, !dbg !2327
  store i16 %bf.set131, ptr %fixed128, align 8, !dbg !2327
  %64 = load i32, ptr @cache_map_n, align 4, !dbg !2328
  %inc = add i32 %64, 1, !dbg !2328
  store i32 %inc, ptr @cache_map_n, align 4, !dbg !2328
  store i32 0, ptr %retval, align 4, !dbg !2329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2329

cleanup:                                          ; preds = %if.end113, %if.end94, %if.then63, %if.then56, %if.then49, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %merge_next) #20, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 1, ptr %merge_prev) #20, !dbg !2330
  %65 = load i32, ptr %retval, align 4, !dbg !2330
  ret i32 %65, !dbg !2330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @get_effective_type(i8 noundef zeroext %type1, i8 noundef zeroext %type2) #1 align 16 !dbg !2331 {
entry:
  %retval = alloca i8, align 1
  %type1.addr = alloca i8, align 1
  %type2.addr = alloca i8, align 1
  store i8 %type1, ptr %type1.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type1.addr, metadata !2335, metadata !DIExpression()), !dbg !2337
  store i8 %type2, ptr %type2.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type2.addr, metadata !2336, metadata !DIExpression()), !dbg !2338
  %0 = load i8, ptr %type1.addr, align 1, !dbg !2339
  %conv = zext i8 %0 to i32, !dbg !2339
  %cmp = icmp eq i32 %conv, 0, !dbg !2341
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2342

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %type2.addr, align 1, !dbg !2343
  %conv2 = zext i8 %1 to i32, !dbg !2343
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !2344
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2345

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, ptr %retval, align 1, !dbg !2346
  br label %return, !dbg !2346

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, ptr %type1.addr, align 1, !dbg !2347
  %conv5 = zext i8 %2 to i32, !dbg !2347
  %cmp6 = icmp eq i32 %conv5, 6, !dbg !2349
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false11, !dbg !2350

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8, ptr %type2.addr, align 1, !dbg !2351
  %conv8 = zext i8 %3 to i32, !dbg !2351
  %cmp9 = icmp eq i32 %conv8, 4, !dbg !2352
  br i1 %cmp9, label %if.then19, label %lor.lhs.false11, !dbg !2353

lor.lhs.false11:                                  ; preds = %land.lhs.true, %if.end
  %4 = load i8, ptr %type1.addr, align 1, !dbg !2354
  %conv12 = zext i8 %4 to i32, !dbg !2354
  %cmp13 = icmp eq i32 %conv12, 4, !dbg !2355
  br i1 %cmp13, label %land.lhs.true15, label %if.end20, !dbg !2356

land.lhs.true15:                                  ; preds = %lor.lhs.false11
  %5 = load i8, ptr %type2.addr, align 1, !dbg !2357
  %conv16 = zext i8 %5 to i32, !dbg !2357
  %cmp17 = icmp eq i32 %conv16, 6, !dbg !2358
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !2359

if.then19:                                        ; preds = %land.lhs.true15, %land.lhs.true
  store i8 4, ptr %retval, align 1, !dbg !2360
  br label %return, !dbg !2360

if.end20:                                         ; preds = %land.lhs.true15, %lor.lhs.false11
  %6 = load i8, ptr %type1.addr, align 1, !dbg !2361
  %conv21 = zext i8 %6 to i32, !dbg !2361
  %7 = load i8, ptr %type2.addr, align 1, !dbg !2363
  %conv22 = zext i8 %7 to i32, !dbg !2363
  %cmp23 = icmp ne i32 %conv21, %conv22, !dbg !2364
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2365

if.then25:                                        ; preds = %if.end20
  store i8 0, ptr %retval, align 1, !dbg !2366
  br label %return, !dbg !2366

if.end26:                                         ; preds = %if.end20
  %8 = load i8, ptr %type1.addr, align 1, !dbg !2367
  store i8 %8, ptr %retval, align 1, !dbg !2368
  br label %return, !dbg !2368

return:                                           ; preds = %if.end26, %if.then25, %if.then19, %if.then
  %9 = load i8, ptr %retval, align 1, !dbg !2369
  ret i8 %9, !dbg !2369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clr_map_range_at(i64 noundef %start, i64 noundef %end, i32 noundef %idx) #1 align 16 !dbg !2370 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %idx.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2374, metadata !DIExpression()), !dbg !2379
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2375, metadata !DIExpression()), !dbg !2380
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2377, metadata !DIExpression()), !dbg !2383
  %0 = load i64, ptr %start.addr, align 8, !dbg !2384
  %1 = load ptr, ptr @cache_map, align 8, !dbg !2385
  %2 = load i32, ptr %idx.addr, align 4, !dbg !2386
  %idxprom = sext i32 %2 to i64, !dbg !2385
  %arrayidx = getelementptr %struct.cache_map, ptr %1, i64 %idxprom, !dbg !2385
  %start1 = getelementptr inbounds %struct.cache_map, ptr %arrayidx, i32 0, i32 0, !dbg !2387
  %3 = load i64, ptr %start1, align 8, !dbg !2387
  %cmp = icmp ne i64 %0, %3, !dbg !2388
  %conv = zext i1 %cmp to i32, !dbg !2388
  store i32 %conv, ptr %ret, align 4, !dbg !2383
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #20, !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2378, metadata !DIExpression()), !dbg !2390
  %4 = load i64, ptr %start.addr, align 8, !dbg !2391
  %5 = load ptr, ptr @cache_map, align 8, !dbg !2393
  %6 = load i32, ptr %idx.addr, align 4, !dbg !2394
  %idxprom2 = sext i32 %6 to i64, !dbg !2393
  %arrayidx3 = getelementptr %struct.cache_map, ptr %5, i64 %idxprom2, !dbg !2393
  %start4 = getelementptr inbounds %struct.cache_map, ptr %arrayidx3, i32 0, i32 0, !dbg !2395
  %7 = load i64, ptr %start4, align 8, !dbg !2395
  %cmp5 = icmp eq i64 %4, %7, !dbg !2396
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !2397

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, ptr %end.addr, align 8, !dbg !2398
  %9 = load ptr, ptr @cache_map, align 8, !dbg !2399
  %10 = load i32, ptr %idx.addr, align 4, !dbg !2400
  %idxprom7 = sext i32 %10 to i64, !dbg !2399
  %arrayidx8 = getelementptr %struct.cache_map, ptr %9, i64 %idxprom7, !dbg !2399
  %end9 = getelementptr inbounds %struct.cache_map, ptr %arrayidx8, i32 0, i32 1, !dbg !2401
  %11 = load i64, ptr %end9, align 8, !dbg !2401
  %cmp10 = icmp eq i64 %8, %11, !dbg !2402
  br i1 %cmp10, label %if.then, label %if.else, !dbg !2403

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, ptr %idx.addr, align 4, !dbg !2404
  call void @rm_map_entry_at(i32 noundef %12) #21, !dbg !2406
  br label %if.end42, !dbg !2407

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i64, ptr %start.addr, align 8, !dbg !2408
  %14 = load ptr, ptr @cache_map, align 8, !dbg !2410
  %15 = load i32, ptr %idx.addr, align 4, !dbg !2411
  %idxprom12 = sext i32 %15 to i64, !dbg !2410
  %arrayidx13 = getelementptr %struct.cache_map, ptr %14, i64 %idxprom12, !dbg !2410
  %start14 = getelementptr inbounds %struct.cache_map, ptr %arrayidx13, i32 0, i32 0, !dbg !2412
  %16 = load i64, ptr %start14, align 8, !dbg !2412
  %cmp15 = icmp eq i64 %13, %16, !dbg !2413
  br i1 %cmp15, label %if.then17, label %if.else21, !dbg !2414

if.then17:                                        ; preds = %if.else
  %17 = load i64, ptr %end.addr, align 8, !dbg !2415
  %18 = load ptr, ptr @cache_map, align 8, !dbg !2417
  %19 = load i32, ptr %idx.addr, align 4, !dbg !2418
  %idxprom18 = sext i32 %19 to i64, !dbg !2417
  %arrayidx19 = getelementptr %struct.cache_map, ptr %18, i64 %idxprom18, !dbg !2417
  %start20 = getelementptr inbounds %struct.cache_map, ptr %arrayidx19, i32 0, i32 0, !dbg !2419
  store i64 %17, ptr %start20, align 8, !dbg !2420
  br label %if.end41, !dbg !2421

if.else21:                                        ; preds = %if.else
  %20 = load i64, ptr %end.addr, align 8, !dbg !2422
  %21 = load ptr, ptr @cache_map, align 8, !dbg !2424
  %22 = load i32, ptr %idx.addr, align 4, !dbg !2425
  %idxprom22 = sext i32 %22 to i64, !dbg !2424
  %arrayidx23 = getelementptr %struct.cache_map, ptr %21, i64 %idxprom22, !dbg !2424
  %end24 = getelementptr inbounds %struct.cache_map, ptr %arrayidx23, i32 0, i32 1, !dbg !2426
  %23 = load i64, ptr %end24, align 8, !dbg !2426
  %cmp25 = icmp eq i64 %20, %23, !dbg !2427
  br i1 %cmp25, label %if.then27, label %if.else31, !dbg !2428

if.then27:                                        ; preds = %if.else21
  %24 = load i64, ptr %start.addr, align 8, !dbg !2429
  %25 = load ptr, ptr @cache_map, align 8, !dbg !2431
  %26 = load i32, ptr %idx.addr, align 4, !dbg !2432
  %idxprom28 = sext i32 %26 to i64, !dbg !2431
  %arrayidx29 = getelementptr %struct.cache_map, ptr %25, i64 %idxprom28, !dbg !2431
  %end30 = getelementptr inbounds %struct.cache_map, ptr %arrayidx29, i32 0, i32 1, !dbg !2433
  store i64 %24, ptr %end30, align 8, !dbg !2434
  br label %if.end, !dbg !2435

if.else31:                                        ; preds = %if.else21
  %27 = load ptr, ptr @cache_map, align 8, !dbg !2436
  %28 = load i32, ptr %idx.addr, align 4, !dbg !2438
  %idxprom32 = sext i32 %28 to i64, !dbg !2436
  %arrayidx33 = getelementptr %struct.cache_map, ptr %27, i64 %idxprom32, !dbg !2436
  %end34 = getelementptr inbounds %struct.cache_map, ptr %arrayidx33, i32 0, i32 1, !dbg !2439
  %29 = load i64, ptr %end34, align 8, !dbg !2439
  store i64 %29, ptr %tmp, align 8, !dbg !2440
  %30 = load i64, ptr %start.addr, align 8, !dbg !2441
  %31 = load ptr, ptr @cache_map, align 8, !dbg !2442
  %32 = load i32, ptr %idx.addr, align 4, !dbg !2443
  %idxprom35 = sext i32 %32 to i64, !dbg !2442
  %arrayidx36 = getelementptr %struct.cache_map, ptr %31, i64 %idxprom35, !dbg !2442
  %end37 = getelementptr inbounds %struct.cache_map, ptr %arrayidx36, i32 0, i32 1, !dbg !2444
  store i64 %30, ptr %end37, align 8, !dbg !2445
  %33 = load i64, ptr %end.addr, align 8, !dbg !2446
  %34 = load i64, ptr %tmp, align 8, !dbg !2447
  %35 = load ptr, ptr @cache_map, align 8, !dbg !2448
  %36 = load i32, ptr %idx.addr, align 4, !dbg !2449
  %idxprom38 = sext i32 %36 to i64, !dbg !2448
  %arrayidx39 = getelementptr %struct.cache_map, ptr %35, i64 %idxprom38, !dbg !2448
  %type = getelementptr inbounds %struct.cache_map, ptr %arrayidx39, i32 0, i32 3, !dbg !2450
  %bf.load = load i16, ptr %type, align 8, !dbg !2450
  %bf.clear = and i16 %bf.load, 255, !dbg !2450
  %bf.cast = zext i16 %bf.clear to i64, !dbg !2450
  %conv40 = trunc i64 %bf.cast to i8, !dbg !2448
  %37 = load i32, ptr %idx.addr, align 4, !dbg !2451
  %add = add i32 %37, 1, !dbg !2452
  %call = call i32 @add_map_entry_at(i64 noundef %33, i64 noundef %34, i8 noundef zeroext %conv40, i32 noundef %add) #21, !dbg !2453
  br label %if.end

if.end:                                           ; preds = %if.else31, %if.then27
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then
  %38 = load i32, ptr %ret, align 4, !dbg !2454
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #20, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !2455
  ret i32 %38, !dbg !2456
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rm_map_entry_at(i32 noundef %idx) #1 align 16 !dbg !2457 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  %0 = load i32, ptr @cache_map_n, align 4, !dbg !2463
  %dec = add i32 %0, -1, !dbg !2463
  store i32 %dec, ptr @cache_map_n, align 4, !dbg !2463
  %1 = load i32, ptr @cache_map_n, align 4, !dbg !2464
  %2 = load i32, ptr %idx.addr, align 4, !dbg !2466
  %cmp = icmp ugt i32 %1, %2, !dbg !2467
  br i1 %cmp, label %if.then, label %if.end, !dbg !2468

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @cache_map, align 8, !dbg !2469
  %4 = load i32, ptr %idx.addr, align 4, !dbg !2471
  %idx.ext = sext i32 %4 to i64, !dbg !2472
  %add.ptr = getelementptr %struct.cache_map, ptr %3, i64 %idx.ext, !dbg !2472
  %5 = load ptr, ptr @cache_map, align 8, !dbg !2473
  %6 = load i32, ptr %idx.addr, align 4, !dbg !2474
  %idx.ext1 = sext i32 %6 to i64, !dbg !2475
  %add.ptr2 = getelementptr %struct.cache_map, ptr %5, i64 %idx.ext1, !dbg !2475
  %add.ptr3 = getelementptr %struct.cache_map, ptr %add.ptr2, i64 1, !dbg !2476
  %7 = load i32, ptr @cache_map_n, align 4, !dbg !2477
  %8 = load i32, ptr %idx.addr, align 4, !dbg !2478
  %sub = sub i32 %7, %8, !dbg !2479
  %conv = zext i32 %sub to i64, !dbg !2480
  %mul = mul i64 32, %conv, !dbg !2481
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %add.ptr3, i64 %mul, i1 false), !dbg !2482
  br label %if.end, !dbg !2483

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2484
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2485 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2489 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2491, metadata !DIExpression()), !dbg !2495
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2492, metadata !DIExpression()), !dbg !2496
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #20, !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2494, metadata !DIExpression()), !dbg !2499
  %0 = load i64, ptr %n.addr, align 8, !dbg !2500
  %1 = load i64, ptr %size.addr, align 8, !dbg !2500
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2500
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2500
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2500
  store i64 %4, ptr %bytes, align 8, !dbg !2500
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #21, !dbg !2500
  %lnot = xor i1 %call, true, !dbg !2500
  %lnot1 = xor i1 %lnot, true, !dbg !2500
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2500
  %conv = sext i32 %lnot.ext to i64, !dbg !2500
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2500
  %tobool = icmp ne i64 %expval, 0, !dbg !2500
  br i1 %tobool, label %if.then, label %if.end, !dbg !2502

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2503

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2504
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2506
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2507

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2508
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2509
  br i1 %8, label %if.then2, label %if.end4, !dbg !2510

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2511
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2512
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #25, !dbg !2513
  store ptr %call3, ptr %retval, align 8, !dbg !2514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2515
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2516
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #25, !dbg !2517
  store ptr %call5, ptr %retval, align 8, !dbg !2518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2518

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #20, !dbg !2519
  %13 = load ptr, ptr %retval, align 8, !dbg !2519
  ret ptr %13, !dbg !2519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #10 align 16 !dbg !2520 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2527, !range !543, !noundef !544
  %tobool = trunc i8 %0 to i1, !dbg !2527
  %lnot = xor i1 %tobool, true, !dbg !2527
  %lnot1 = xor i1 %lnot, true, !dbg !2527
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2527
  %conv = sext i32 %lnot.ext to i64, !dbg !2527
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2527
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2527
  ret i1 %tobool2, !dbg !2528
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !2529 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2533, metadata !DIExpression()), !dbg !2538
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2534, metadata !DIExpression()), !dbg !2539
  %0 = load i64, ptr %size.addr, align 8, !dbg !2540
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2541
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2542

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2543
  %tobool = icmp ne i64 %2, 0, !dbg !2543
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2544

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !2545
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2535, metadata !DIExpression()), !dbg !2546
  %3 = load i64, ptr %size.addr, align 8, !dbg !2547
  %cmp = icmp ugt i64 %3, 8192, !dbg !2549
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2550

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2551
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2552
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #25, !dbg !2553
  store ptr %call, ptr %retval, align 8, !dbg !2554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2554

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2555
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #21, !dbg !2555
  store i32 %call2, ptr %index, align 4, !dbg !2556
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2557
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2558
  %9 = ptrtoint ptr %8 to i64, !dbg !2558
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #21, !dbg !2559
  %idxprom = zext i32 %call3 to i64, !dbg !2560
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2560
  %10 = load i32, ptr %index, align 4, !dbg !2561
  %idxprom4 = zext i32 %10 to i64, !dbg !2560
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2560
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2560
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2562
  %13 = load i64, ptr %size.addr, align 8, !dbg !2563
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #26, !dbg !2564
  store ptr %call6, ptr %retval, align 8, !dbg !2565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2565

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !2566
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2567
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2568
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #25, !dbg !2569
  store ptr %call8, ptr %retval, align 8, !dbg !2570
  br label %return, !dbg !2570

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2571
  ret ptr %16, !dbg !2571
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2572 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2573 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2574 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2578, metadata !DIExpression()), !dbg !2580
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2579, metadata !DIExpression()), !dbg !2581
  %0 = load i64, ptr %size.addr, align 8, !dbg !2582
  %tobool = icmp ne i64 %0, 0, !dbg !2582
  br i1 %tobool, label %if.end, label %if.then, !dbg !2584

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2585
  br label %return, !dbg !2585

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2586
  %cmp = icmp ule i64 %1, 8, !dbg !2588
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2589

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2591
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2593
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2594

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2595
  %cmp4 = icmp ule i64 %3, 96, !dbg !2596
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2597

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2598
  br label %return, !dbg !2598

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2599
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2601
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2602

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2603
  %cmp9 = icmp ule i64 %5, 192, !dbg !2604
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2605

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2606
  br label %return, !dbg !2606

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2607
  %cmp12 = icmp ule i64 %6, 8, !dbg !2609
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2610

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2611
  br label %return, !dbg !2611

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2612
  %cmp15 = icmp ule i64 %7, 16, !dbg !2614
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2615

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2616
  br label %return, !dbg !2616

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2617
  %cmp18 = icmp ule i64 %8, 32, !dbg !2619
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2620

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2621
  br label %return, !dbg !2621

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2622
  %cmp21 = icmp ule i64 %9, 64, !dbg !2624
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2625

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2626
  br label %return, !dbg !2626

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2627
  %cmp24 = icmp ule i64 %10, 128, !dbg !2629
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2630

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2631
  br label %return, !dbg !2631

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2632
  %cmp27 = icmp ule i64 %11, 256, !dbg !2634
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2635

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2636
  br label %return, !dbg !2636

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2637
  %cmp30 = icmp ule i64 %12, 512, !dbg !2639
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2640

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2641
  br label %return, !dbg !2641

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2642
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2644
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2645

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2646
  br label %return, !dbg !2646

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2647
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2649
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2650

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2651
  br label %return, !dbg !2651

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2652
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2654
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2655

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2656
  br label %return, !dbg !2656

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2657
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2659
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2660

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2661
  br label %return, !dbg !2661

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2662
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2664
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2665

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2666
  br label %return, !dbg !2666

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2667
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2669
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2670

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2671
  br label %return, !dbg !2671

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2672
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2674
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2675

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2676
  br label %return, !dbg !2676

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2677
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2679
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2680

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2681
  br label %return, !dbg !2681

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2682
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2684
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2685

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2686
  br label %return, !dbg !2686

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2687
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2689
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2690

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2691
  br label %return, !dbg !2691

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2692
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2694
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2695

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2696
  br label %return, !dbg !2696

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2697
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2699
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2700

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2701
  br label %return, !dbg !2701

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2702, !range !543, !noundef !544
  %tobool69 = trunc i8 %25 to i1, !dbg !2702
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2704

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2705

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #27, !dbg !2706, !srcloc !2709
  unreachable, !dbg !2706

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2710

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2711

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2712

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2714

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2712

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, i32 480, i32 0, i64 12) #20, !dbg !2716, !srcloc !2718
  br label %do.end75, !dbg !2716

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2712

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2719
  br label %return, !dbg !2719

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2720
  ret i32 %26, !dbg !2720
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2721 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2727 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2731, metadata !DIExpression()), !dbg !2733
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2732, metadata !DIExpression()), !dbg !2734
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2735
  %and = and i32 %0, 17, !dbg !2735
  %cmp = icmp eq i32 %and, 0, !dbg !2735
  %lnot = xor i1 %cmp, true, !dbg !2735
  %lnot1 = xor i1 %lnot, true, !dbg !2735
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2735
  %conv = sext i32 %lnot.ext to i64, !dbg !2735
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2735
  %tobool = icmp ne i64 %expval, 0, !dbg !2735
  br i1 %tobool, label %if.then, label %if.end, !dbg !2737

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2738
  br label %return, !dbg !2738

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2739
  %and2 = and i32 %1, 1, !dbg !2741
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2741
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2742

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2743
  br label %return, !dbg !2743

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2744
  br label %return, !dbg !2744

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2746
  ret i32 %2, !dbg !2746
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2747 dso_local void @__compiletime_assert_206() #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !2748 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2752, metadata !DIExpression()), !dbg !2754
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2753, metadata !DIExpression()), !dbg !2755
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2756
  %and = and i64 %0, 63, !dbg !2757
  %shl = shl i64 1, %and, !dbg !2758
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2759
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2760
  %shr = ashr i64 %2, 6, !dbg !2761
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2759
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2759
  %and1 = and i64 %shl, %3, !dbg !2762
  %cmp = icmp ne i64 %and1, 0, !dbg !2763
  ret i1 %cmp, !dbg !2764
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !2765 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2767, metadata !DIExpression()), !dbg !2770
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #20, !dbg !2772
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2769, metadata !DIExpression()), !dbg !2773
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2774
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2775
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #20, !dbg !2776, !srcloc !2777
  %3 = icmp ult i8 %2, 2, !dbg !2776
  call void @llvm.assume(i1 %3), !dbg !2776
  store i8 %2, ptr %oldbit, align 1, !dbg !2776
  %4 = load i8, ptr %oldbit, align 1, !dbg !2778, !range !543, !noundef !544
  %tobool = trunc i8 %4 to i1, !dbg !2778
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #20, !dbg !2779
  ret i1 %tobool, !dbg !2780
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @k8_check_syscfg_dram_mod_en() #10 align 16 !dbg !2781 {
entry:
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #20, !dbg !2797
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !2783, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #20, !dbg !2797
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !2784, metadata !DIExpression()), !dbg !2799
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.2, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !2800
  %conv = zext i8 %0 to i32, !dbg !2802
  %cmp = icmp eq i32 %conv, 2, !dbg !2803
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !2804

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.2, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !2805
  %conv2 = zext i8 %1 to i32, !dbg !2806
  %cmp3 = icmp sge i32 %conv2, 15, !dbg !2807
  br i1 %cmp3, label %if.end, label %if.then, !dbg !2808

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2809

if.end:                                           ; preds = %land.lhs.true
  br label %do.body, !dbg !2810

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !2811
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !2785, metadata !DIExpression()), !dbg !2811
  %call = call i64 @native_read_msr(i32 noundef -1073676272) #21, !dbg !2811
  store i64 %call, ptr %__val, align 8, !dbg !2811
  %2 = load i64, ptr %__val, align 8, !dbg !2811
  %conv5 = trunc i64 %2 to i32, !dbg !2811
  store i32 %conv5, ptr %lo, align 4, !dbg !2811
  %3 = load i64, ptr %__val, align 8, !dbg !2811
  %shr = lshr i64 %3, 32, !dbg !2811
  %conv6 = trunc i64 %shr to i32, !dbg !2811
  store i32 %conv6, ptr %hi, align 4, !dbg !2811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !2810
  br label %do.cond, !dbg !2811

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2811

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %lo, align 4, !dbg !2812
  %and = and i32 %4, 524288, !dbg !2813
  %tobool = icmp ne i32 %and, 0, !dbg !2813
  br i1 %tobool, label %if.then7, label %if.end21, !dbg !2814

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !2815

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !2816

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2816

do.end10:                                         ; preds = %do.cond9
  call void @__this_cpu_preempt_check(ptr noundef @.str.11) #21, !dbg !2818
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #20, !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2787, metadata !DIExpression()), !dbg !2819
  br label %do.body12, !dbg !2819

do.body12:                                        ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !2820
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2793, metadata !DIExpression()), !dbg !2820
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2820
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !2820
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !2819
  br label %do.cond13, !dbg !2820

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2820

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #20, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2795, metadata !DIExpression()), !dbg !2821
  %6 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 2)) #24, !dbg !2821, !srcloc !2822
  store i32 %6, ptr %pfo_val__, align 4, !dbg !2821
  %7 = load i32, ptr %pfo_val__, align 4, !dbg !2821
  %conv16 = zext i32 %7 to i64, !dbg !2821
  %conv17 = trunc i64 %conv16 to i32, !dbg !2821
  store i32 %conv17, ptr %tmp15, align 4, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #20, !dbg !2819
  %8 = load i32, ptr %tmp15, align 4, !dbg !2821
  store i32 %8, ptr %pscr_ret__, align 4, !dbg !2819
  %9 = load i32, ptr %pscr_ret__, align 4, !dbg !2819
  store i32 %9, ptr %tmp18, align 4, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #20, !dbg !2818
  %10 = load i32, ptr %tmp18, align 4, !dbg !2819
  store i32 %10, ptr %tmp11, align 4, !dbg !2818
  %11 = load i32, ptr %tmp11, align 4, !dbg !2818
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18, i32 noundef %11) #22, !dbg !2815
  store i32 %call19, ptr %tmp, align 4, !dbg !2816
  %12 = load i32, ptr %tmp, align 4, !dbg !2815
  %13 = load i32, ptr %lo, align 4, !dbg !2823
  %and20 = and i32 %13, -524289, !dbg !2823
  store i32 %and20, ptr %lo, align 4, !dbg !2823
  %14 = load i32, ptr %lo, align 4, !dbg !2824
  %15 = load i32, ptr %hi, align 4, !dbg !2825
  call void @mtrr_wrmsr(i32 noundef -1073676272, i32 noundef %14, i32 noundef %15) #21, !dbg !2826
  br label %if.end21, !dbg !2827

if.end21:                                         ; preds = %do.end14, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2828
  br label %cleanup, !dbg !2828

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #20, !dbg !2828
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #20, !dbg !2828
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2828

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #9 align 16 !dbg !2829 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #20, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #20, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2833, metadata !DIExpression()), !dbg !2835
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2836
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #20, !dbg !2837, !srcloc !2838
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !2837
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !2837
  store i64 %asmresult, ptr %low, align 8, !dbg !2837
  store i64 %asmresult1, ptr %high, align 8, !dbg !2837
  %2 = load i64, ptr %low, align 8, !dbg !2839
  %3 = load i64, ptr %high, align 8, !dbg !2839
  %shl = shl i64 %3, 32, !dbg !2839
  %or = or i64 %2, %shl, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #20, !dbg !2840
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #20, !dbg !2840
  ret i64 %or, !dbg !2841
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #9 align 16 !dbg !2842 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2867, metadata !DIExpression()), !dbg !2868
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2869
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #21, !dbg !2870
  ret i1 %call, !dbg !2871
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2872 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #9 align 16 !dbg !2875 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2880, metadata !DIExpression()), !dbg !2883
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2881, metadata !DIExpression()), !dbg !2884
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2885
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2886, !range !543, !noundef !544
  %tobool = trunc i8 %1 to i1, !dbg !2886
  %conv = zext i1 %tobool to i32, !dbg !2886
  %or = or i32 2, %conv, !dbg !2887
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #20
          to label %asm.fallthrough [label %l_yes], !dbg !2888, !srcloc !2889

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2890
  br label %return, !dbg !2890

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2882), !dbg !2891
  store i1 true, ptr %retval, align 1, !dbg !2892
  br label %return, !dbg !2892

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2893
  ret i1 %2, !dbg !2893
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @print_fixed(i32 noundef %base, i32 noundef %step, ptr noundef %types) #0 section ".init.text" align 16 !dbg !2894 {
entry:
  %base.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %types.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !2900, metadata !DIExpression()), !dbg !2904
  store i32 %step, ptr %step.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %step.addr, metadata !2901, metadata !DIExpression()), !dbg !2905
  store ptr %types, ptr %types.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %types.addr, metadata !2902, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2903, metadata !DIExpression()), !dbg !2908
  store i32 0, ptr %i, align 4, !dbg !2909
  br label %for.cond, !dbg !2911

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2912
  %cmp = icmp ult i32 %0, 8, !dbg !2914
  br i1 %cmp, label %for.body, label %for.end, !dbg !2915

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @last_fixed_end, align 4, !dbg !2916
  %cmp1 = icmp eq i32 %1, 0, !dbg !2919
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2920

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %base.addr, align 4, !dbg !2921
  %3 = load i32, ptr %base.addr, align 4, !dbg !2923
  %4 = load i32, ptr %step.addr, align 4, !dbg !2924
  %add = add i32 %3, %4, !dbg !2925
  %5 = load ptr, ptr %types.addr, align 8, !dbg !2926
  %6 = load i8, ptr %5, align 1, !dbg !2927
  call void @update_fixed_last(i32 noundef %2, i32 noundef %add, i8 noundef zeroext %6) #22, !dbg !2928
  br label %for.inc, !dbg !2929

if.end:                                           ; preds = %for.body
  %7 = load i32, ptr @last_fixed_end, align 4, !dbg !2930
  %8 = load i32, ptr %base.addr, align 4, !dbg !2932
  %cmp2 = icmp eq i32 %7, %8, !dbg !2933
  br i1 %cmp2, label %land.lhs.true, label %if.end8, !dbg !2934

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8, ptr @last_fixed_type, align 1, !dbg !2935
  %conv = zext i8 %9 to i32, !dbg !2935
  %10 = load ptr, ptr %types.addr, align 8, !dbg !2936
  %11 = load i8, ptr %10, align 1, !dbg !2937
  %conv3 = zext i8 %11 to i32, !dbg !2937
  %cmp4 = icmp eq i32 %conv, %conv3, !dbg !2938
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !2939

if.then6:                                         ; preds = %land.lhs.true
  %12 = load i32, ptr %base.addr, align 4, !dbg !2940
  %13 = load i32, ptr %step.addr, align 4, !dbg !2942
  %add7 = add i32 %12, %13, !dbg !2943
  store i32 %add7, ptr @last_fixed_end, align 4, !dbg !2944
  br label %for.inc, !dbg !2945

if.end8:                                          ; preds = %land.lhs.true, %if.end
  call void @print_fixed_last() #22, !dbg !2946
  %14 = load i32, ptr %base.addr, align 4, !dbg !2947
  %15 = load i32, ptr %base.addr, align 4, !dbg !2948
  %16 = load i32, ptr %step.addr, align 4, !dbg !2949
  %add9 = add i32 %15, %16, !dbg !2950
  %17 = load ptr, ptr %types.addr, align 8, !dbg !2951
  %18 = load i8, ptr %17, align 1, !dbg !2952
  call void @update_fixed_last(i32 noundef %14, i32 noundef %add9, i8 noundef zeroext %18) #22, !dbg !2953
  br label %for.inc, !dbg !2954

for.inc:                                          ; preds = %if.end8, %if.then6, %if.then
  %19 = load i32, ptr %i, align 4, !dbg !2955
  %inc = add i32 %19, 1, !dbg !2955
  store i32 %inc, ptr %i, align 4, !dbg !2955
  %20 = load ptr, ptr %types.addr, align 8, !dbg !2956
  %incdec.ptr = getelementptr i8, ptr %20, i32 1, !dbg !2956
  store ptr %incdec.ptr, ptr %types.addr, align 8, !dbg !2956
  %21 = load i32, ptr %step.addr, align 4, !dbg !2957
  %22 = load i32, ptr %base.addr, align 4, !dbg !2958
  %add10 = add i32 %22, %21, !dbg !2958
  store i32 %add10, ptr %base.addr, align 4, !dbg !2958
  br label %for.cond, !dbg !2959, !llvm.loop !2960

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !2962
  ret void, !dbg !2962
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @print_fixed_last() #0 section ".init.text" align 16 !dbg !2963 {
entry:
  %tmp = alloca i32, align 4
  %0 = load i32, ptr @last_fixed_end, align 4, !dbg !2964
  %tobool = icmp ne i32 %0, 0, !dbg !2964
  br i1 %tobool, label %if.end, label %if.then, !dbg !2966

if.then:                                          ; preds = %entry
  br label %return, !dbg !2967

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2968

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2970

do.end:                                           ; preds = %do.body
  %1 = load i32, ptr @last_fixed_start, align 4, !dbg !2968
  %2 = load i32, ptr @last_fixed_end, align 4, !dbg !2968
  %sub = sub i32 %2, 1, !dbg !2968
  %3 = load i8, ptr @last_fixed_type, align 1, !dbg !2968
  %conv = zext i8 %3 to i32, !dbg !2968
  %call = call ptr @mtrr_attrib_to_str(i32 noundef %conv) #21, !dbg !2968
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27, i32 noundef %1, i32 noundef %sub, ptr noundef %call) #22, !dbg !2968
  store i32 %call1, ptr %tmp, align 4, !dbg !2970
  %4 = load i32, ptr %tmp, align 4, !dbg !2968
  store i32 0, ptr @last_fixed_end, align 4, !dbg !2972
  br label %return, !dbg !2973

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !2973
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @update_fixed_last(i32 noundef %base, i32 noundef %end, i8 noundef zeroext %type) #0 section ".init.text" align 16 !dbg !2974 {
entry:
  %base.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %type.addr = alloca i8, align 1
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !2978, metadata !DIExpression()), !dbg !2981
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2979, metadata !DIExpression()), !dbg !2982
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2980, metadata !DIExpression()), !dbg !2983
  %0 = load i32, ptr %base.addr, align 4, !dbg !2984
  store i32 %0, ptr @last_fixed_start, align 4, !dbg !2985
  %1 = load i32, ptr %end.addr, align 4, !dbg !2986
  store i32 %1, ptr @last_fixed_end, align 4, !dbg !2987
  %2 = load i8, ptr %type.addr, align 1, !dbg !2988
  store i8 %2, ptr @last_fixed_type, align 1, !dbg !2989
  ret void, !dbg !2990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #10 align 16 !dbg !2991 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2993, metadata !DIExpression()), !dbg !2997
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2994, metadata !DIExpression()), !dbg !2998
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2995, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !3000
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2996, metadata !DIExpression()), !dbg !3001
  %0 = load i32, ptr %msr.addr, align 4, !dbg !3002
  %1 = load i32, ptr %low.addr, align 4, !dbg !3003
  %2 = load i32, ptr %high.addr, align 4, !dbg !3004
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #20, !dbg !3005, !srcloc !3006
  store i32 %3, ptr %err, align 4, !dbg !3005
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #21, !dbg !3007
  br i1 %call, label %if.then, label %if.end, !dbg !3009

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !3010
  %5 = load i32, ptr %high.addr, align 4, !dbg !3011
  %conv = zext i32 %5 to i64, !dbg !3012
  %shl = shl i64 %conv, 32, !dbg !3013
  %6 = load i32, ptr %low.addr, align 4, !dbg !3014
  %conv1 = zext i32 %6 to i64, !dbg !3014
  %or = or i64 %shl, %conv1, !dbg !3015
  %7 = load i32, ptr %err, align 4, !dbg !3016
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #21, !dbg !3017
  br label %if.end, !dbg !3017

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !3018
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !3019
  ret i32 %8, !dbg !3020
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3021 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @set_mtrr_var_ranges(i32 noundef %index, ptr noundef %vr) #1 align 16 !dbg !3022 {
entry:
  %index.addr = alloca i32, align 4
  %vr.addr = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %changed = alloca i8, align 1
  %__val = alloca i64, align 8
  %__val16 = alloca i64, align 8
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3026, metadata !DIExpression()), !dbg !3035
  store ptr %vr, ptr %vr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vr.addr, metadata !3027, metadata !DIExpression()), !dbg !3036
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #20, !dbg !3037
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !3028, metadata !DIExpression()), !dbg !3038
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #20, !dbg !3037
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !3029, metadata !DIExpression()), !dbg !3039
  call void @llvm.lifetime.start.p0(i64 1, ptr %changed) #20, !dbg !3040
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !3030, metadata !DIExpression()), !dbg !3041
  store i8 0, ptr %changed, align 1, !dbg !3041
  br label %do.body, !dbg !3042

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !3043
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !3031, metadata !DIExpression()), !dbg !3043
  %0 = load i32, ptr %index.addr, align 4, !dbg !3043
  %mul = mul i32 2, %0, !dbg !3043
  %add = add i32 512, %mul, !dbg !3043
  %call = call i64 @native_read_msr(i32 noundef %add) #21, !dbg !3043
  store i64 %call, ptr %__val, align 8, !dbg !3043
  %1 = load i64, ptr %__val, align 8, !dbg !3043
  %conv = trunc i64 %1 to i32, !dbg !3043
  store i32 %conv, ptr %lo, align 4, !dbg !3043
  %2 = load i64, ptr %__val, align 8, !dbg !3043
  %shr = lshr i64 %2, 32, !dbg !3043
  %conv1 = trunc i64 %shr to i32, !dbg !3043
  store i32 %conv1, ptr %hi, align 4, !dbg !3043
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !3042
  br label %do.cond, !dbg !3043

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3043

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vr.addr, align 8, !dbg !3044
  %base_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %3, i32 0, i32 0, !dbg !3046
  %4 = load i32, ptr %base_lo, align 4, !dbg !3046
  %conv2 = zext i32 %4 to i64, !dbg !3044
  %and = and i64 %conv2, -3841, !dbg !3047
  %5 = load i32, ptr %lo, align 4, !dbg !3048
  %conv3 = zext i32 %5 to i64, !dbg !3048
  %and4 = and i64 %conv3, -3841, !dbg !3049
  %cmp = icmp ne i64 %and, %and4, !dbg !3050
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3051

lor.lhs.false:                                    ; preds = %do.end
  %6 = load ptr, ptr %vr.addr, align 8, !dbg !3052
  %base_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %6, i32 0, i32 1, !dbg !3053
  %7 = load i32, ptr %base_hi, align 4, !dbg !3053
  %8 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !3054
  %not = xor i32 %8, -1, !dbg !3055
  %and6 = and i32 %7, %not, !dbg !3056
  %9 = load i32, ptr %hi, align 4, !dbg !3057
  %10 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !3058
  %not7 = xor i32 %10, -1, !dbg !3059
  %and8 = and i32 %9, %not7, !dbg !3060
  %cmp9 = icmp ne i32 %and6, %and8, !dbg !3061
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3062

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %11 = load i32, ptr %index.addr, align 4, !dbg !3063
  %mul11 = mul i32 2, %11, !dbg !3063
  %add12 = add i32 512, %mul11, !dbg !3063
  %12 = load ptr, ptr %vr.addr, align 8, !dbg !3065
  %base_lo13 = getelementptr inbounds %struct.mtrr_var_range, ptr %12, i32 0, i32 0, !dbg !3066
  %13 = load i32, ptr %base_lo13, align 4, !dbg !3066
  %14 = load ptr, ptr %vr.addr, align 8, !dbg !3067
  %base_hi14 = getelementptr inbounds %struct.mtrr_var_range, ptr %14, i32 0, i32 1, !dbg !3068
  %15 = load i32, ptr %base_hi14, align 4, !dbg !3068
  call void @mtrr_wrmsr(i32 noundef %add12, i32 noundef %13, i32 noundef %15) #21, !dbg !3069
  store i8 1, ptr %changed, align 1, !dbg !3070
  br label %if.end, !dbg !3071

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %do.body15, !dbg !3072

do.body15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val16) #20, !dbg !3073
  call void @llvm.dbg.declare(metadata ptr %__val16, metadata !3033, metadata !DIExpression()), !dbg !3073
  %16 = load i32, ptr %index.addr, align 4, !dbg !3073
  %mul17 = mul i32 2, %16, !dbg !3073
  %add18 = add i32 512, %mul17, !dbg !3073
  %add19 = add i32 %add18, 1, !dbg !3073
  %call20 = call i64 @native_read_msr(i32 noundef %add19) #21, !dbg !3073
  store i64 %call20, ptr %__val16, align 8, !dbg !3073
  %17 = load i64, ptr %__val16, align 8, !dbg !3073
  %conv21 = trunc i64 %17 to i32, !dbg !3073
  store i32 %conv21, ptr %lo, align 4, !dbg !3073
  %18 = load i64, ptr %__val16, align 8, !dbg !3073
  %shr22 = lshr i64 %18, 32, !dbg !3073
  %conv23 = trunc i64 %shr22 to i32, !dbg !3073
  store i32 %conv23, ptr %hi, align 4, !dbg !3073
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val16) #20, !dbg !3072
  br label %do.cond24, !dbg !3073

do.cond24:                                        ; preds = %do.body15
  br label %do.end25, !dbg !3073

do.end25:                                         ; preds = %do.cond24
  %19 = load ptr, ptr %vr.addr, align 8, !dbg !3074
  %mask_lo = getelementptr inbounds %struct.mtrr_var_range, ptr %19, i32 0, i32 2, !dbg !3076
  %20 = load i32, ptr %mask_lo, align 4, !dbg !3076
  %conv26 = zext i32 %20 to i64, !dbg !3074
  %and27 = and i64 %conv26, -2048, !dbg !3077
  %21 = load i32, ptr %lo, align 4, !dbg !3078
  %conv28 = zext i32 %21 to i64, !dbg !3078
  %and29 = and i64 %conv28, -2048, !dbg !3079
  %cmp30 = icmp ne i64 %and27, %and29, !dbg !3080
  br i1 %cmp30, label %if.then39, label %lor.lhs.false32, !dbg !3081

lor.lhs.false32:                                  ; preds = %do.end25
  %22 = load ptr, ptr %vr.addr, align 8, !dbg !3082
  %mask_hi = getelementptr inbounds %struct.mtrr_var_range, ptr %22, i32 0, i32 3, !dbg !3083
  %23 = load i32, ptr %mask_hi, align 4, !dbg !3083
  %24 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !3084
  %not33 = xor i32 %24, -1, !dbg !3085
  %and34 = and i32 %23, %not33, !dbg !3086
  %25 = load i32, ptr %hi, align 4, !dbg !3087
  %26 = load i32, ptr @phys_hi_rsvd, align 4, !dbg !3088
  %not35 = xor i32 %26, -1, !dbg !3089
  %and36 = and i32 %25, %not35, !dbg !3090
  %cmp37 = icmp ne i32 %and34, %and36, !dbg !3091
  br i1 %cmp37, label %if.then39, label %if.end45, !dbg !3092

if.then39:                                        ; preds = %lor.lhs.false32, %do.end25
  %27 = load i32, ptr %index.addr, align 4, !dbg !3093
  %mul40 = mul i32 2, %27, !dbg !3093
  %add41 = add i32 512, %mul40, !dbg !3093
  %add42 = add i32 %add41, 1, !dbg !3093
  %28 = load ptr, ptr %vr.addr, align 8, !dbg !3095
  %mask_lo43 = getelementptr inbounds %struct.mtrr_var_range, ptr %28, i32 0, i32 2, !dbg !3096
  %29 = load i32, ptr %mask_lo43, align 4, !dbg !3096
  %30 = load ptr, ptr %vr.addr, align 8, !dbg !3097
  %mask_hi44 = getelementptr inbounds %struct.mtrr_var_range, ptr %30, i32 0, i32 3, !dbg !3098
  %31 = load i32, ptr %mask_hi44, align 4, !dbg !3098
  call void @mtrr_wrmsr(i32 noundef %add42, i32 noundef %29, i32 noundef %31) #21, !dbg !3099
  store i8 1, ptr %changed, align 1, !dbg !3100
  br label %if.end45, !dbg !3101

if.end45:                                         ; preds = %if.then39, %lor.lhs.false32
  %32 = load i8, ptr %changed, align 1, !dbg !3102, !range !543, !noundef !544
  %tobool = trunc i8 %32 to i1, !dbg !3102
  call void @llvm.lifetime.end.p0(i64 1, ptr %changed) #20, !dbg !3103
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #20, !dbg !3103
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #20, !dbg !3103
  ret i1 %tobool, !dbg !3104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_fixed_ranges(ptr noundef %frs) #1 align 16 !dbg !3105 {
entry:
  %frs.addr = alloca ptr, align 8
  %saved = alloca ptr, align 8
  %changed = alloca i8, align 1
  %block = alloca i32, align 4
  %range = alloca i32, align 4
  store ptr %frs, ptr %frs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frs.addr, metadata !3109, metadata !DIExpression()), !dbg !3114
  call void @llvm.lifetime.start.p0(i64 8, ptr %saved) #20, !dbg !3115
  call void @llvm.dbg.declare(metadata ptr %saved, metadata !3110, metadata !DIExpression()), !dbg !3116
  %0 = load ptr, ptr %frs.addr, align 8, !dbg !3117
  store ptr %0, ptr %saved, align 8, !dbg !3116
  call void @llvm.lifetime.start.p0(i64 1, ptr %changed) #20, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !3111, metadata !DIExpression()), !dbg !3119
  store i8 0, ptr %changed, align 1, !dbg !3119
  call void @llvm.lifetime.start.p0(i64 4, ptr %block) #20, !dbg !3120
  call void @llvm.dbg.declare(metadata ptr %block, metadata !3112, metadata !DIExpression()), !dbg !3121
  store i32 -1, ptr %block, align 4, !dbg !3121
  call void @llvm.lifetime.start.p0(i64 4, ptr %range) #20, !dbg !3120
  call void @llvm.dbg.declare(metadata ptr %range, metadata !3113, metadata !DIExpression()), !dbg !3122
  call void @k8_check_syscfg_dram_mod_en() #21, !dbg !3123
  br label %while.cond, !dbg !3124

while.cond:                                       ; preds = %for.end, %entry
  %1 = load i32, ptr %block, align 4, !dbg !3125
  %inc = add i32 %1, 1, !dbg !3125
  store i32 %inc, ptr %block, align 4, !dbg !3125
  %idxprom = sext i32 %inc to i64, !dbg !3126
  %arrayidx = getelementptr [4 x %struct.fixed_range_block], ptr @fixed_range_blocks, i64 0, i64 %idxprom, !dbg !3126
  %ranges = getelementptr inbounds %struct.fixed_range_block, ptr %arrayidx, i32 0, i32 1, !dbg !3127
  %2 = load i32, ptr %ranges, align 4, !dbg !3127
  %tobool = icmp ne i32 %2, 0, !dbg !3124
  br i1 %tobool, label %while.body, label %while.end, !dbg !3124

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %range, align 4, !dbg !3128
  br label %for.cond, !dbg !3131

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, ptr %range, align 4, !dbg !3132
  %4 = load i32, ptr %block, align 4, !dbg !3134
  %idxprom1 = sext i32 %4 to i64, !dbg !3135
  %arrayidx2 = getelementptr [4 x %struct.fixed_range_block], ptr @fixed_range_blocks, i64 0, i64 %idxprom1, !dbg !3135
  %ranges3 = getelementptr inbounds %struct.fixed_range_block, ptr %arrayidx2, i32 0, i32 1, !dbg !3136
  %5 = load i32, ptr %ranges3, align 4, !dbg !3136
  %cmp = icmp slt i32 %3, %5, !dbg !3137
  br i1 %cmp, label %for.body, label %for.end, !dbg !3138

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %block, align 4, !dbg !3139
  %idxprom4 = sext i32 %6 to i64, !dbg !3140
  %arrayidx5 = getelementptr [4 x %struct.fixed_range_block], ptr @fixed_range_blocks, i64 0, i64 %idxprom4, !dbg !3140
  %base_msr = getelementptr inbounds %struct.fixed_range_block, ptr %arrayidx5, i32 0, i32 0, !dbg !3141
  %7 = load i32, ptr %base_msr, align 8, !dbg !3141
  %8 = load i32, ptr %range, align 4, !dbg !3142
  %add = add i32 %7, %8, !dbg !3143
  %9 = load ptr, ptr %saved, align 8, !dbg !3144
  %incdec.ptr = getelementptr i64, ptr %9, i32 1, !dbg !3144
  store ptr %incdec.ptr, ptr %saved, align 8, !dbg !3144
  call void @set_fixed_range(i32 noundef %add, ptr noundef %changed, ptr noundef %9) #21, !dbg !3145
  br label %for.inc, !dbg !3145

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %range, align 4, !dbg !3146
  %inc6 = add i32 %10, 1, !dbg !3146
  store i32 %inc6, ptr %range, align 4, !dbg !3146
  br label %for.cond, !dbg !3147, !llvm.loop !3148

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !3124, !llvm.loop !3150

while.end:                                        ; preds = %while.cond
  %11 = load i8, ptr %changed, align 1, !dbg !3152, !range !543, !noundef !544
  %tobool7 = trunc i8 %11 to i1, !dbg !3152
  %conv = zext i1 %tobool7 to i32, !dbg !3152
  call void @llvm.lifetime.end.p0(i64 4, ptr %range) #20, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 4, ptr %block) #20, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 1, ptr %changed) #20, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 8, ptr %saved) #20, !dbg !3153
  ret i32 %conv, !dbg !3154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_fixed_range(i32 noundef %msr, ptr noundef %changed, ptr noundef %msrwords) #1 align 16 !dbg !3155 {
entry:
  %msr.addr = alloca i32, align 4
  %changed.addr = alloca ptr, align 8
  %msrwords.addr = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %__val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !3160, metadata !DIExpression()), !dbg !3167
  store ptr %changed, ptr %changed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %changed.addr, metadata !3161, metadata !DIExpression()), !dbg !3168
  store ptr %msrwords, ptr %msrwords.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msrwords.addr, metadata !3162, metadata !DIExpression()), !dbg !3169
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #20, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !3163, metadata !DIExpression()), !dbg !3171
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #20, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !3164, metadata !DIExpression()), !dbg !3172
  br label %do.body, !dbg !3173

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #20, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !3165, metadata !DIExpression()), !dbg !3174
  %0 = load i32, ptr %msr.addr, align 4, !dbg !3174
  %call = call i64 @native_read_msr(i32 noundef %0) #21, !dbg !3174
  store i64 %call, ptr %__val, align 8, !dbg !3174
  %1 = load i64, ptr %__val, align 8, !dbg !3174
  %conv = trunc i64 %1 to i32, !dbg !3174
  store i32 %conv, ptr %lo, align 4, !dbg !3174
  %2 = load i64, ptr %__val, align 8, !dbg !3174
  %shr = lshr i64 %2, 32, !dbg !3174
  %conv1 = trunc i64 %shr to i32, !dbg !3174
  store i32 %conv1, ptr %hi, align 4, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #20, !dbg !3173
  br label %do.cond, !dbg !3174

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3174

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %lo, align 4, !dbg !3175
  %4 = load ptr, ptr %msrwords.addr, align 8, !dbg !3177
  %arrayidx = getelementptr i32, ptr %4, i64 0, !dbg !3177
  %5 = load i32, ptr %arrayidx, align 4, !dbg !3177
  %cmp = icmp ne i32 %3, %5, !dbg !3178
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3179

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i32, ptr %hi, align 4, !dbg !3180
  %7 = load ptr, ptr %msrwords.addr, align 8, !dbg !3181
  %arrayidx3 = getelementptr i32, ptr %7, i64 1, !dbg !3181
  %8 = load i32, ptr %arrayidx3, align 4, !dbg !3181
  %cmp4 = icmp ne i32 %6, %8, !dbg !3182
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3183

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %9 = load i32, ptr %msr.addr, align 4, !dbg !3184
  %10 = load ptr, ptr %msrwords.addr, align 8, !dbg !3186
  %arrayidx6 = getelementptr i32, ptr %10, i64 0, !dbg !3186
  %11 = load i32, ptr %arrayidx6, align 4, !dbg !3186
  %12 = load ptr, ptr %msrwords.addr, align 8, !dbg !3187
  %arrayidx7 = getelementptr i32, ptr %12, i64 1, !dbg !3187
  %13 = load i32, ptr %arrayidx7, align 4, !dbg !3187
  call void @mtrr_wrmsr(i32 noundef %9, i32 noundef %11, i32 noundef %13) #21, !dbg !3188
  %14 = load ptr, ptr %changed.addr, align 8, !dbg !3189
  store i8 1, ptr %14, align 1, !dbg !3190
  br label %if.end, !dbg !3191

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #20, !dbg !3192
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #20, !dbg !3192
  ret void, !dbg !3192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !3193 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3201, metadata !DIExpression()), !dbg !3203
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3202, metadata !DIExpression()), !dbg !3204
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3205
  %1 = load i64, ptr %size.addr, align 8, !dbg !3206
  %conv = trunc i64 %1 to i32, !dbg !3206
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #21, !dbg !3207
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3208
  %3 = load i64, ptr %size.addr, align 8, !dbg !3208
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #21, !dbg !3208
  ret void, !dbg !3209
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3210 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3212, metadata !DIExpression()), !dbg !3214
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3213, metadata !DIExpression()), !dbg !3215
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3216
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3218
  br i1 %1, label %if.then, label %if.else, !dbg !3219

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3220
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3220
  %shr = ashr i64 %3, 3, !dbg !3220
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3220
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3222
  %and = and i64 %4, 7, !dbg !3222
  %sh_prom = trunc i64 %and to i32, !dbg !3222
  %shl = shl i32 1, %sh_prom, !dbg !3222
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #20, !dbg !3223, !srcloc !3224
  br label %if.end, !dbg !3225

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3226
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3228
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #20, !dbg !3229, !srcloc !3230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3231
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !3232 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3237, metadata !DIExpression()), !dbg !3239
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3238, metadata !DIExpression()), !dbg !3240
  ret i1 true, !dbg !3241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #10 align 16 !dbg !3242 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3247, metadata !DIExpression()), !dbg !3250
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3248, metadata !DIExpression()), !dbg !3251
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3249, metadata !DIExpression()), !dbg !3252
  ret void, !dbg !3253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #9 align 16 !dbg !3254 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3257, metadata !DIExpression()), !dbg !3259
  %call = call i64 @arch_local_save_flags() #21, !dbg !3260
  store i64 %call, ptr %flags, align 8, !dbg !3259
  call void @arch_local_irq_disable() #21, !dbg !3261
  %0 = load i64, ptr %flags, align 8, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3263
  ret i64 %0, !dbg !3264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3265 dso_local void @cache_disable() #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3267 dso_local void @cache_enable() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #9 align 16 !dbg !3268 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3272, metadata !DIExpression()), !dbg !3273
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3274
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #21, !dbg !3276
  %tobool = icmp ne i32 %call, 0, !dbg !3276
  br i1 %tobool, label %if.end, label %if.then, !dbg !3277

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #21, !dbg !3278
  br label %if.end, !dbg !3278

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #9 align 16 !dbg !3280 {
entry:
  %call = call i64 @native_save_fl() #21, !dbg !3281
  ret i64 %call, !dbg !3282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #9 align 16 !dbg !3283 {
entry:
  call void @native_irq_disable() #21, !dbg !3284
  ret void, !dbg !3285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #9 align 16 !dbg !3286 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #20, !dbg !3291, !srcloc !3292
  %0 = load i64, ptr %flags, align 8, !dbg !3293
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3294
  ret i64 %0, !dbg !3295
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #9 align 16 !dbg !3296 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3297, !srcloc !3298
  ret void, !dbg !3299
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #9 align 16 !dbg !3300 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3306
  %and = and i64 %0, 512, !dbg !3307
  %tobool = icmp ne i64 %and, 0, !dbg !3308
  %lnot = xor i1 %tobool, true, !dbg !3308
  %lnot.ext = zext i1 %lnot to i32, !dbg !3308
  ret i32 %lnot.ext, !dbg !3309
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #9 align 16 !dbg !3310 {
entry:
  call void @native_irq_enable() #21, !dbg !3311
  ret void, !dbg !3312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #9 align 16 !dbg !3313 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !3314, !srcloc !3315
  ret void, !dbg !3316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #9 align 16 !dbg !3317 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3320, metadata !DIExpression()), !dbg !3328
  br label %do.body, !dbg !3329

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #20, !dbg !3330
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !3321, metadata !DIExpression()), !dbg !3330
  %0 = load i32, ptr %val.addr, align 4, !dbg !3330
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3330
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3330

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !3330
  %cmp = icmp eq i32 %2, 1, !dbg !3330
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3330

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !3330
  %cmp1 = icmp eq i32 %3, -1, !dbg !3330
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3330

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !3330
  br label %cond.end, !dbg !3330

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !3330

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !3330
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !3330
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !3331
  %cmp2 = icmp eq i32 %5, 1, !dbg !3331
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3330

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3332, !srcloc !3334
  br label %if.end8, !dbg !3331

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !3335
  %cmp3 = icmp eq i32 %6, -1, !dbg !3335
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !3331

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3336, !srcloc !3338
  br label %if.end, !dbg !3335

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !3335

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #20, !dbg !3339
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !3324, metadata !DIExpression()), !dbg !3339
  %7 = load i32, ptr %val.addr, align 4, !dbg !3339
  %conv = sext i32 %7 to i64, !dbg !3339
  %and = and i64 %conv, 4294967295, !dbg !3339
  %conv7 = trunc i64 %and to i32, !dbg !3339
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !3339
  %8 = load i32, ptr %pto_val__, align 4, !dbg !3339
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3339, !srcloc !3340
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #20, !dbg !3335
  br label %do.cond, !dbg !3339

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3339

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #20, !dbg !3329
  br label %do.end10, !dbg !3330

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !3341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #9 align 16 !dbg !3342 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #20, !dbg !3349
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !3347, metadata !DIExpression()), !dbg !3350
  store i32 -1, ptr %bitpos, align 4, !dbg !3350
  %0 = load i32, ptr %bitpos, align 4, !dbg !3351
  %1 = load i64, ptr %x.addr, align 8, !dbg !3352
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #24, !dbg !3351, !srcloc !3353
  store i32 %2, ptr %bitpos, align 4, !dbg !3351
  %3 = load i32, ptr %bitpos, align 4, !dbg !3354
  %add = add i32 %3, 1, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #20, !dbg !3356
  ret i32 %add, !dbg !3357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3358 dso_local void @add_taint(i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #9 align 16 !dbg !3361 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #20, !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3363, metadata !DIExpression()), !dbg !3365
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #20, !dbg !3365, !srcloc !3366
  %1 = icmp ult i8 %0, 2, !dbg !3365
  call void @llvm.assume(i1 %1), !dbg !3365
  store i8 %0, ptr %c, align 1, !dbg !3365
  %2 = load i8, ptr %c, align 1, !dbg !3365, !range !543, !noundef !544
  %tobool = trunc i8 %2 to i1, !dbg !3365
  %frombool = zext i1 %tobool to i8, !dbg !3365
  store i8 %frombool, ptr %tmp, align 1, !dbg !3365
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #20, !dbg !3367
  %3 = load i8, ptr %tmp, align 1, !dbg !3365, !range !543, !noundef !544
  %tobool1 = trunc i8 %3 to i1, !dbg !3365
  ret i1 %tobool1, !dbg !3368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #18

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #19

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #19 = { nocallback nounwind }
attributes #20 = { nounwind }
attributes #21 = { noredzone }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone allocsize(0,1) }
attributes #24 = { nounwind memory(read) }
attributes #25 = { noredzone allocsize(0) }
attributes #26 = { noredzone allocsize(2) }
attributes #27 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!347}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_mtrr_param_setup", scope: !2, file: !3, line: 59, type: !346, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mtrr/.generic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mtrr/generic\22 -D KBUILD_BASENAME=\22generic\22 -D KBUILD_MODNAME=\22generic\22 -D __KBUILD_MODNAME=kmod_generic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mtrr/generic.ll arch/x86/kernel/cpu/mtrr/generic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !36, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/generic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "522d890de1a7f200baf0f3c1c8bd813c")
!4 = !{!5, !16, !21, !31}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!10 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!11 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!12 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!13 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!14 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!15 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !22, line: 364, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!29 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!30 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !32, line: 87, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!35 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!36 = !{!37, !38, !40, !41, !43, !47, !42, !48, !51, !54, !55, !56, !58}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !39, line: 154, baseType: !7)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 21, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !7)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!60 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!61 = !{!62, !74, !76, !81, !86, !91, !96, !101, !106, !108, !113, !118, !123, !128, !133, !138, !143, !148, !180, !184, !196, !198, !200, !202, !204, !206, !228, !230, !232, !0, !234, !239, !244, !247, !252, !254, !259, !264, !269, !274, !279, !284, !286, !291, !293, !295, !297, !299, !304, !311, !316}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "__setup_mtrr_param_setup", scope: !2, file: !3, line: 59, type: !64, isLocal: true, isDefinition: true, align: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !65, line: 324, size: 192, elements: !66)
!65 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!66 = !{!67, !68, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !64, file: !65, line: 325, baseType: !51, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !64, file: !65, line: 326, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!40, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !64, file: !65, line: 327, baseType: !40, size: 32, offset: 128)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mtrr_state281", scope: !2, file: !3, line: 90, type: !37, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 696, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 87)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 216, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 27)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 480, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 60)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 280, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 35)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 472, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 59)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 726, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 448, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 56)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 728, type: !98, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 730, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 456, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 57)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 732, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 424, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 53)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 733, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 272, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 34)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 384, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 48)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 40, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 5)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1023, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 360, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 45)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1029, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 600, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 75)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1043, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 544, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 68)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "generic_mtrr_ops", scope: !2, file: !3, line: 1064, type: !150, isLocal: false, isDefinition: true)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_ops", file: !152, line: 18, size: 384, elements: !153)
!152 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19252bbc0e8adbaf9fc5f7388a27e064")
!153 = !{!154, !155, !163, !168, !172, !176}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "var_regs", scope: !151, file: !152, line: 19, baseType: !43, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !151, file: !152, line: 20, baseType: !156, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !7, !42, !42, !159}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtrr_type", file: !160, line: 79, baseType: !161)
!160 = !DIFile(filename: "./arch/x86/include/uapi/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec45d3f08a98ea4c76b6e3b4c69c8d40")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !46, line: 21, baseType: !162)
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !151, file: !152, line: 22, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !7, !41, !41, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "get_free_region", scope: !151, file: !152, line: 24, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!40, !42, !42, !40}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "validate_add_page", scope: !151, file: !152, line: 26, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!40, !42, !42, !7}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "have_wrcomb", scope: !151, file: !152, line: 28, baseType: !177, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!40}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "mtrr_debug", scope: !2, file: !3, line: 44, type: !182, isLocal: false, isDefinition: true)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !183)
!183 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "init_cache_map", scope: !2, file: !3, line: 79, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 153600, elements: !194)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_map", file: !3, line: 36, size: 256, elements: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !187, file: !3, line: 37, baseType: !48, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !187, file: !3, line: 38, baseType: !48, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !3, line: 39, baseType: !48, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !3, line: 40, baseType: !48, size: 8, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !187, file: !3, line: 41, baseType: !48, size: 1, offset: 200, flags: DIFlagBitField, extraData: i64 192)
!194 = !{!195}
!195 = !DISubrange(count: 600)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "cache_map_n", scope: !2, file: !3, line: 82, type: !7, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "cache_map_fixed", scope: !2, file: !3, line: 83, type: !7, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "smp_changes_mask", scope: !2, file: !3, line: 85, type: !42, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "mtrr_state_set", scope: !2, file: !3, line: 86, type: !40, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "mtrr_tom2", scope: !2, file: !3, line: 87, type: !48, isLocal: false, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "mtrr_state", scope: !2, file: !3, line: 89, type: !208, isLocal: false, isDefinition: true)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_state_type", file: !209, line: 47, size: 33504, elements: !210)
!209 = !DIFile(filename: "./arch/x86/include/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7c890308cdc14a3bfc2cc2c920505da")
!210 = !{!211, !221, !225, !226, !227}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "var_ranges", scope: !208, file: !209, line: 48, baseType: !212, size: 32768)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 32768, elements: !219)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_var_range", file: !160, line: 70, size: 128, elements: !214)
!214 = !{!215, !216, !217, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "base_lo", scope: !213, file: !160, line: 71, baseType: !45, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "base_hi", scope: !213, file: !160, line: 72, baseType: !45, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mask_lo", scope: !213, file: !160, line: 73, baseType: !45, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mask_hi", scope: !213, file: !160, line: 74, baseType: !45, size: 32, offset: 96)
!219 = !{!220}
!220 = !DISubrange(count: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_ranges", scope: !208, file: !209, line: 49, baseType: !222, size: 704, offset: 32768)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 704, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 88)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !208, file: !209, line: 50, baseType: !162, size: 8, offset: 33472)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "have_fixed", scope: !208, file: !209, line: 51, baseType: !182, size: 8, offset: 33480)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "def_type", scope: !208, file: !209, line: 52, baseType: !159, size: 8, offset: 33488)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "phys_hi_rsvd", scope: !2, file: !3, line: 93, type: !43, isLocal: false, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "deftype_lo", scope: !2, file: !3, line: 898, type: !43, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "deftype_hi", scope: !2, file: !3, line: 898, type: !43, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 6)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 312, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 39)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "cache_map", scope: !2, file: !3, line: 80, type: !246, isLocal: true, isDefinition: true)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !22, line: 480, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 168, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 21)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "cache_map_size", scope: !2, file: !3, line: 81, type: !7, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 784, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 98)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 200, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 25)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 240, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 30)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 24, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 3)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 4)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 264, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 33)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !135, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 672, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 136, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 17)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 675, type: !83, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "last_fixed_end", scope: !2, file: !3, line: 590, type: !7, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "last_fixed_start", scope: !2, file: !3, line: 589, type: !7, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "last_fixed_type", scope: !2, file: !3, line: 591, type: !159, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 144, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 18)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "fixed_range_blocks", scope: !2, file: !3, line: 29, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !277)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_range_block", file: !3, line: 24, size: 64, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "base_msr", scope: !307, file: !3, line: 25, baseType: !40, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !307, file: !3, line: 26, baseType: !40, size: 32, offset: 32)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 831, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 64)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule286", scope: !318, file: !3, line: 846, type: !37, isLocal: true, isDefinition: true)
!318 = distinct !DISubprogram(name: "generic_get_mtrr", scope: !3, file: !3, line: 796, type: !165, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !335, !339, !341, !343, !345}
!320 = !DILocalVariable(name: "reg", arg: 1, scope: !318, file: !3, line: 796, type: !7)
!321 = !DILocalVariable(name: "base", arg: 2, scope: !318, file: !3, line: 796, type: !41)
!322 = !DILocalVariable(name: "size", arg: 3, scope: !318, file: !3, line: 797, type: !41)
!323 = !DILocalVariable(name: "type", arg: 4, scope: !318, file: !3, line: 797, type: !167)
!324 = !DILocalVariable(name: "mask_lo", scope: !318, file: !3, line: 799, type: !43)
!325 = !DILocalVariable(name: "mask_hi", scope: !318, file: !3, line: 799, type: !43)
!326 = !DILocalVariable(name: "base_lo", scope: !318, file: !3, line: 799, type: !43)
!327 = !DILocalVariable(name: "base_hi", scope: !318, file: !3, line: 799, type: !43)
!328 = !DILocalVariable(name: "hi", scope: !318, file: !3, line: 800, type: !7)
!329 = !DILocalVariable(name: "tmp", scope: !318, file: !3, line: 801, type: !48)
!330 = !DILocalVariable(name: "mask", scope: !318, file: !3, line: 801, type: !48)
!331 = !DILocalVariable(name: "pscr_ret__", scope: !332, file: !3, line: 807, type: !40)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 807, column: 2)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 807, column: 2)
!334 = distinct !DILexicalBlock(scope: !318, file: !3, line: 807, column: 2)
!335 = !DILocalVariable(name: "__vpp_verify", scope: !336, file: !3, line: 807, type: !337)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 807, column: 2)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!339 = !DILocalVariable(name: "pfo_val__", scope: !340, file: !3, line: 807, type: !43)
!340 = distinct !DILexicalBlock(scope: !332, file: !3, line: 807, column: 2)
!341 = !DILocalVariable(name: "__val", scope: !342, file: !3, line: 809, type: !48)
!342 = distinct !DILexicalBlock(scope: !318, file: !3, line: 809, column: 2)
!343 = !DILocalVariable(name: "__val", scope: !344, file: !3, line: 819, type: !48)
!344 = distinct !DILexicalBlock(scope: !318, file: !3, line: 819, column: 2)
!345 = !DILabel(scope: !318, name: "out_put_cpu", file: !3, line: 845)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 40, elements: !131)
!347 = !{!"rsp"}
!348 = !{i32 7, !"Dwarf Version", i32 5}
!349 = !{i32 2, !"Debug Info Version", i32 3}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 8, !"cf-protection-branch", i32 1}
!352 = !{i32 4, !"function_return_thunk_extern", i32 1}
!353 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!354 = !{i32 1, !"Code Model", i32 2}
!355 = !{i32 1, !"override-stack-alignment", i32 8}
!356 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!357 = distinct !DISubprogram(name: "mtrr_param_setup", scope: !3, file: !3, line: 46, type: !70, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "str", arg: 1, scope: !357, file: !3, line: 46, type: !72)
!360 = !DILocalVariable(name: "rc", scope: !357, file: !3, line: 48, type: !40)
!361 = !DILocation(line: 46, column: 42, scope: !357)
!362 = !DILocation(line: 48, column: 2, scope: !357)
!363 = !DILocation(line: 48, column: 6, scope: !357)
!364 = !DILocation(line: 50, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !3, line: 50, column: 6)
!366 = !DILocation(line: 50, column: 6, scope: !357)
!367 = !DILocation(line: 51, column: 3, scope: !365)
!368 = !DILocation(line: 52, column: 14, scope: !369)
!369 = distinct !DILexicalBlock(scope: !357, file: !3, line: 52, column: 6)
!370 = !DILocation(line: 52, column: 7, scope: !369)
!371 = !DILocation(line: 52, column: 6, scope: !357)
!372 = !DILocation(line: 53, column: 14, scope: !369)
!373 = !DILocation(line: 53, column: 3, scope: !369)
!374 = !DILocation(line: 55, column: 6, scope: !369)
!375 = !DILocation(line: 57, column: 9, scope: !357)
!376 = !DILocation(line: 57, column: 2, scope: !357)
!377 = !DILocation(line: 58, column: 1, scope: !357)
!378 = distinct !DISubprogram(name: "generic_rebuild_map", scope: !3, file: !3, line: 330, type: !379, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!379 = !DISubroutineType(types: !380)
!380 = !{null}
!381 = !DILocation(line: 332, column: 6, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 332, column: 6)
!383 = !DILocation(line: 332, column: 14, scope: !382)
!384 = !DILocation(line: 332, column: 6, scope: !378)
!385 = !DILocation(line: 333, column: 3, scope: !382)
!386 = !DILocation(line: 335, column: 16, scope: !378)
!387 = !DILocation(line: 335, column: 14, scope: !378)
!388 = !DILocation(line: 337, column: 2, scope: !378)
!389 = !DILocation(line: 338, column: 1, scope: !378)
!390 = distinct !DISubprogram(name: "map_add_var", scope: !3, file: !3, line: 301, type: !379, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DILocalVariable(name: "start", scope: !390, file: !3, line: 303, type: !48)
!393 = !DILocalVariable(name: "size", scope: !390, file: !3, line: 303, type: !48)
!394 = !DILocalVariable(name: "i", scope: !390, file: !3, line: 304, type: !7)
!395 = !DILocalVariable(name: "type", scope: !390, file: !3, line: 305, type: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 17, baseType: !161)
!397 = !DILocation(line: 303, column: 2, scope: !390)
!398 = !DILocation(line: 303, column: 6, scope: !390)
!399 = !DILocation(line: 303, column: 13, scope: !390)
!400 = !DILocation(line: 304, column: 2, scope: !390)
!401 = !DILocation(line: 304, column: 15, scope: !390)
!402 = !DILocation(line: 305, column: 2, scope: !390)
!403 = !DILocation(line: 305, column: 5, scope: !390)
!404 = !DILocation(line: 312, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !390, file: !3, line: 312, column: 6)
!406 = !DILocation(line: 312, column: 6, scope: !390)
!407 = !DILocation(line: 313, column: 30, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 312, column: 17)
!409 = !DILocation(line: 313, column: 3, scope: !408)
!410 = !DILocation(line: 314, column: 3, scope: !408)
!411 = !DILocation(line: 314, column: 13, scope: !408)
!412 = !DILocation(line: 314, column: 25, scope: !408)
!413 = !DILocation(line: 314, column: 30, scope: !408)
!414 = !DILocation(line: 314, column: 36, scope: !408)
!415 = !DILocation(line: 315, column: 2, scope: !408)
!416 = !DILocation(line: 317, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !390, file: !3, line: 317, column: 2)
!418 = !DILocation(line: 317, column: 7, scope: !417)
!419 = !DILocation(line: 317, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 317, column: 2)
!421 = !DILocation(line: 317, column: 18, scope: !420)
!422 = !DILocation(line: 317, column: 16, scope: !420)
!423 = !DILocation(line: 317, column: 2, scope: !417)
!424 = !DILocation(line: 318, column: 29, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !3, line: 317, column: 39)
!426 = !DILocation(line: 318, column: 10, scope: !425)
!427 = !DILocation(line: 318, column: 8, scope: !425)
!428 = !DILocation(line: 319, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !3, line: 319, column: 7)
!430 = !DILocation(line: 319, column: 12, scope: !429)
!431 = !DILocation(line: 319, column: 7, scope: !425)
!432 = !DILocation(line: 320, column: 18, scope: !429)
!433 = !DILocation(line: 320, column: 25, scope: !429)
!434 = !DILocation(line: 320, column: 33, scope: !429)
!435 = !DILocation(line: 320, column: 31, scope: !429)
!436 = !DILocation(line: 320, column: 39, scope: !429)
!437 = !DILocation(line: 320, column: 4, scope: !429)
!438 = !DILocation(line: 321, column: 2, scope: !425)
!439 = !DILocation(line: 317, column: 35, scope: !420)
!440 = !DILocation(line: 317, column: 2, scope: !420)
!441 = distinct !{!441, !423, !442, !443, !444}
!442 = !DILocation(line: 321, column: 2, scope: !417)
!443 = !{!"llvm.loop.mustprogress"}
!444 = !{!"llvm.loop.unroll.disable"}
!445 = !DILocation(line: 322, column: 1, scope: !390)
!446 = distinct !DISubprogram(name: "mtrr_build_map", scope: !3, file: !3, line: 346, type: !379, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!447 = !{!448, !449, !450, !451, !452}
!448 = !DILocalVariable(name: "start", scope: !446, file: !3, line: 348, type: !48)
!449 = !DILocalVariable(name: "end", scope: !446, file: !3, line: 348, type: !48)
!450 = !DILocalVariable(name: "size", scope: !446, file: !3, line: 348, type: !48)
!451 = !DILocalVariable(name: "i", scope: !446, file: !3, line: 349, type: !7)
!452 = !DILocalVariable(name: "type", scope: !446, file: !3, line: 350, type: !396)
!453 = !DILocation(line: 348, column: 2, scope: !446)
!454 = !DILocation(line: 348, column: 6, scope: !446)
!455 = !DILocation(line: 348, column: 13, scope: !446)
!456 = !DILocation(line: 348, column: 18, scope: !446)
!457 = !DILocation(line: 349, column: 2, scope: !446)
!458 = !DILocation(line: 349, column: 15, scope: !446)
!459 = !DILocation(line: 350, column: 2, scope: !446)
!460 = !DILocation(line: 350, column: 5, scope: !446)
!461 = !DILocation(line: 353, column: 17, scope: !462)
!462 = distinct !DILexicalBlock(scope: !446, file: !3, line: 353, column: 6)
!463 = !DILocation(line: 353, column: 6, scope: !462)
!464 = !DILocation(line: 353, column: 25, scope: !462)
!465 = !DILocation(line: 353, column: 6, scope: !446)
!466 = !DILocation(line: 358, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 353, column: 58)
!468 = !DILocation(line: 359, column: 14, scope: !467)
!469 = !DILocation(line: 359, column: 7, scope: !467)
!470 = !DILocation(line: 360, column: 10, scope: !467)
!471 = !DILocation(line: 360, column: 8, scope: !467)
!472 = !DILocation(line: 362, column: 10, scope: !473)
!473 = distinct !DILexicalBlock(scope: !467, file: !3, line: 362, column: 3)
!474 = !DILocation(line: 362, column: 8, scope: !473)
!475 = !DILocation(line: 362, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 362, column: 3)
!477 = !DILocation(line: 362, column: 17, scope: !476)
!478 = !DILocation(line: 362, column: 3, scope: !473)
!479 = !DILocation(line: 364, column: 8, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 364, column: 8)
!481 = distinct !DILexicalBlock(scope: !476, file: !3, line: 362, column: 47)
!482 = !DILocation(line: 364, column: 10, scope: !480)
!483 = !DILocation(line: 364, column: 15, scope: !480)
!484 = !DILocation(line: 364, column: 18, scope: !480)
!485 = !DILocation(line: 364, column: 20, scope: !480)
!486 = !DILocation(line: 364, column: 8, scope: !481)
!487 = !DILocation(line: 365, column: 10, scope: !480)
!488 = !DILocation(line: 365, column: 5, scope: !480)
!489 = !DILocation(line: 367, column: 32, scope: !490)
!490 = distinct !DILexicalBlock(scope: !481, file: !3, line: 367, column: 8)
!491 = !DILocation(line: 367, column: 8, scope: !490)
!492 = !DILocation(line: 367, column: 38, scope: !490)
!493 = !DILocation(line: 367, column: 35, scope: !490)
!494 = !DILocation(line: 367, column: 8, scope: !481)
!495 = !DILocation(line: 368, column: 19, scope: !496)
!496 = distinct !DILexicalBlock(scope: !490, file: !3, line: 367, column: 44)
!497 = !DILocation(line: 368, column: 26, scope: !496)
!498 = !DILocation(line: 368, column: 31, scope: !496)
!499 = !DILocation(line: 368, column: 5, scope: !496)
!500 = !DILocation(line: 369, column: 13, scope: !496)
!501 = !DILocation(line: 369, column: 11, scope: !496)
!502 = !DILocation(line: 370, column: 36, scope: !496)
!503 = !DILocation(line: 370, column: 12, scope: !496)
!504 = !DILocation(line: 370, column: 10, scope: !496)
!505 = !DILocation(line: 371, column: 4, scope: !496)
!506 = !DILocation(line: 372, column: 11, scope: !481)
!507 = !DILocation(line: 372, column: 8, scope: !481)
!508 = !DILocation(line: 373, column: 3, scope: !481)
!509 = !DILocation(line: 362, column: 43, scope: !476)
!510 = !DILocation(line: 362, column: 3, scope: !476)
!511 = distinct !{!511, !478, !512, !443, !444}
!512 = !DILocation(line: 373, column: 3, scope: !473)
!513 = !DILocation(line: 374, column: 17, scope: !467)
!514 = !DILocation(line: 374, column: 24, scope: !467)
!515 = !DILocation(line: 374, column: 29, scope: !467)
!516 = !DILocation(line: 374, column: 3, scope: !467)
!517 = !DILocation(line: 375, column: 2, scope: !467)
!518 = !DILocation(line: 378, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !446, file: !3, line: 378, column: 2)
!520 = !DILocation(line: 378, column: 7, scope: !519)
!521 = !DILocation(line: 378, column: 14, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 378, column: 2)
!523 = !DILocation(line: 378, column: 18, scope: !522)
!524 = !DILocation(line: 378, column: 16, scope: !522)
!525 = !DILocation(line: 378, column: 2, scope: !519)
!526 = !DILocation(line: 379, column: 3, scope: !522)
!527 = !DILocation(line: 379, column: 13, scope: !522)
!528 = !DILocation(line: 379, column: 16, scope: !522)
!529 = !DILocation(line: 379, column: 22, scope: !522)
!530 = !DILocation(line: 378, column: 32, scope: !522)
!531 = !DILocation(line: 378, column: 2, scope: !522)
!532 = distinct !{!532, !525, !533, !443, !444}
!533 = !DILocation(line: 379, column: 24, scope: !519)
!534 = !DILocation(line: 380, column: 20, scope: !446)
!535 = !DILocation(line: 380, column: 18, scope: !446)
!536 = !DILocation(line: 382, column: 2, scope: !446)
!537 = !DILocation(line: 384, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !446, file: !3, line: 384, column: 2)
!539 = !DILocation(line: 384, column: 2, scope: !540)
!540 = distinct !DILexicalBlock(scope: !538, file: !3, line: 384, column: 2)
!541 = !DILocation(line: 388, column: 6, scope: !542)
!542 = distinct !DILexicalBlock(scope: !446, file: !3, line: 388, column: 6)
!543 = !{i8 0, i8 2}
!544 = !{}
!545 = !DILocation(line: 388, column: 6, scope: !446)
!546 = !DILocation(line: 389, column: 10, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 389, column: 3)
!548 = distinct !DILexicalBlock(scope: !542, file: !3, line: 388, column: 18)
!549 = !DILocation(line: 389, column: 8, scope: !547)
!550 = !DILocation(line: 389, column: 15, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !3, line: 389, column: 3)
!552 = !DILocation(line: 389, column: 19, scope: !551)
!553 = !DILocation(line: 389, column: 17, scope: !551)
!554 = !DILocation(line: 389, column: 3, scope: !547)
!555 = !DILocation(line: 390, column: 4, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 390, column: 4)
!557 = distinct !DILexicalBlock(scope: !551, file: !3, line: 389, column: 37)
!558 = !DILocation(line: 390, column: 4, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !3, line: 390, column: 4)
!560 = !DILocation(line: 393, column: 3, scope: !557)
!561 = !DILocation(line: 389, column: 33, scope: !551)
!562 = !DILocation(line: 389, column: 3, scope: !551)
!563 = distinct !{!563, !554, !564, !443, !444}
!564 = !DILocation(line: 393, column: 3, scope: !547)
!565 = !DILocation(line: 394, column: 2, scope: !548)
!566 = !DILocation(line: 395, column: 1, scope: !446)
!567 = distinct !DISubprogram(name: "add_map_entry", scope: !3, file: !3, line: 262, type: !568, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !48, !48, !396}
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !585, !586, !588}
!571 = !DILocalVariable(name: "start", arg: 1, scope: !567, file: !3, line: 262, type: !48)
!572 = !DILocalVariable(name: "end", arg: 2, scope: !567, file: !3, line: 262, type: !48)
!573 = !DILocalVariable(name: "type", arg: 3, scope: !567, file: !3, line: 262, type: !396)
!574 = !DILocalVariable(name: "new_type", scope: !567, file: !3, line: 264, type: !396)
!575 = !DILocalVariable(name: "old_type", scope: !567, file: !3, line: 264, type: !396)
!576 = !DILocalVariable(name: "tmp", scope: !567, file: !3, line: 265, type: !48)
!577 = !DILocalVariable(name: "i", scope: !567, file: !3, line: 266, type: !40)
!578 = !DILocalVariable(name: "__UNIQUE_ID___x282", scope: !579, file: !3, line: 274, type: !48)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 274, column: 10)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 272, column: 35)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 272, column: 7)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 268, column: 51)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 268, column: 2)
!584 = distinct !DILexicalBlock(scope: !567, file: !3, line: 268, column: 2)
!585 = !DILocalVariable(name: "__UNIQUE_ID___y283", scope: !579, file: !3, line: 274, type: !48)
!586 = !DILocalVariable(name: "__UNIQUE_ID___x284", scope: !587, file: !3, line: 290, type: !48)
!587 = distinct !DILexicalBlock(scope: !582, file: !3, line: 290, column: 9)
!588 = !DILocalVariable(name: "__UNIQUE_ID___y285", scope: !587, file: !3, line: 290, type: !48)
!589 = !DILocation(line: 262, column: 31, scope: !567)
!590 = !DILocation(line: 262, column: 42, scope: !567)
!591 = !DILocation(line: 262, column: 50, scope: !567)
!592 = !DILocation(line: 264, column: 2, scope: !567)
!593 = !DILocation(line: 264, column: 5, scope: !567)
!594 = !DILocation(line: 264, column: 15, scope: !567)
!595 = !DILocation(line: 265, column: 2, scope: !567)
!596 = !DILocation(line: 265, column: 6, scope: !567)
!597 = !DILocation(line: 266, column: 2, scope: !567)
!598 = !DILocation(line: 266, column: 6, scope: !567)
!599 = !DILocation(line: 268, column: 9, scope: !584)
!600 = !DILocation(line: 268, column: 7, scope: !584)
!601 = !DILocation(line: 268, column: 14, scope: !583)
!602 = !DILocation(line: 268, column: 18, scope: !583)
!603 = !DILocation(line: 268, column: 16, scope: !583)
!604 = !DILocation(line: 268, column: 30, scope: !583)
!605 = !DILocation(line: 268, column: 33, scope: !583)
!606 = !DILocation(line: 268, column: 41, scope: !583)
!607 = !DILocation(line: 268, column: 39, scope: !583)
!608 = !DILocation(line: 0, scope: !583)
!609 = !DILocation(line: 268, column: 2, scope: !584)
!610 = !DILocation(line: 269, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !582, file: !3, line: 269, column: 7)
!612 = !DILocation(line: 269, column: 16, scope: !611)
!613 = !DILocation(line: 269, column: 26, scope: !611)
!614 = !DILocation(line: 269, column: 29, scope: !611)
!615 = !DILocation(line: 269, column: 13, scope: !611)
!616 = !DILocation(line: 269, column: 7, scope: !582)
!617 = !DILocation(line: 270, column: 4, scope: !611)
!618 = !DILocation(line: 272, column: 7, scope: !581)
!619 = !DILocation(line: 272, column: 15, scope: !581)
!620 = !DILocation(line: 272, column: 25, scope: !581)
!621 = !DILocation(line: 272, column: 28, scope: !581)
!622 = !DILocation(line: 272, column: 13, scope: !581)
!623 = !DILocation(line: 272, column: 7, scope: !582)
!624 = !DILocation(line: 274, column: 10, scope: !579)
!625 = !DILocation(line: 274, column: 10, scope: !580)
!626 = !DILocation(line: 274, column: 8, scope: !580)
!627 = !DILocation(line: 275, column: 26, scope: !580)
!628 = !DILocation(line: 275, column: 33, scope: !580)
!629 = !DILocation(line: 275, column: 39, scope: !580)
!630 = !DILocation(line: 275, column: 45, scope: !580)
!631 = !DILocation(line: 275, column: 9, scope: !580)
!632 = !DILocation(line: 275, column: 6, scope: !580)
!633 = !DILocation(line: 276, column: 12, scope: !580)
!634 = !DILocation(line: 276, column: 10, scope: !580)
!635 = !DILocation(line: 277, column: 4, scope: !580)
!636 = !DILocation(line: 280, column: 33, scope: !582)
!637 = !DILocation(line: 280, column: 39, scope: !582)
!638 = !DILocation(line: 280, column: 49, scope: !582)
!639 = !DILocation(line: 280, column: 52, scope: !582)
!640 = !DILocation(line: 280, column: 14, scope: !582)
!641 = !DILocation(line: 280, column: 12, scope: !582)
!642 = !DILocation(line: 281, column: 14, scope: !582)
!643 = !DILocation(line: 281, column: 24, scope: !582)
!644 = !DILocation(line: 281, column: 27, scope: !582)
!645 = !DILocation(line: 281, column: 12, scope: !582)
!646 = !DILocation(line: 283, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !582, file: !3, line: 283, column: 7)
!648 = !DILocation(line: 283, column: 17, scope: !647)
!649 = !DILocation(line: 283, column: 20, scope: !647)
!650 = !DILocation(line: 283, column: 26, scope: !647)
!651 = !DILocation(line: 283, column: 29, scope: !647)
!652 = !DILocation(line: 283, column: 41, scope: !647)
!653 = !DILocation(line: 283, column: 38, scope: !647)
!654 = !DILocation(line: 283, column: 7, scope: !582)
!655 = !DILocation(line: 285, column: 12, scope: !656)
!656 = distinct !DILexicalBlock(scope: !647, file: !3, line: 283, column: 51)
!657 = !DILocation(line: 285, column: 22, scope: !656)
!658 = !DILocation(line: 285, column: 25, scope: !656)
!659 = !DILocation(line: 285, column: 10, scope: !656)
!660 = !DILocation(line: 286, column: 4, scope: !656)
!661 = !DILocation(line: 290, column: 9, scope: !587)
!662 = !DILocation(line: 290, column: 9, scope: !582)
!663 = !DILocation(line: 290, column: 7, scope: !582)
!664 = !DILocation(line: 291, column: 25, scope: !582)
!665 = !DILocation(line: 291, column: 32, scope: !582)
!666 = !DILocation(line: 291, column: 37, scope: !582)
!667 = !DILocation(line: 291, column: 8, scope: !582)
!668 = !DILocation(line: 291, column: 5, scope: !582)
!669 = !DILocation(line: 292, column: 25, scope: !582)
!670 = !DILocation(line: 292, column: 32, scope: !582)
!671 = !DILocation(line: 292, column: 37, scope: !582)
!672 = !DILocation(line: 292, column: 47, scope: !582)
!673 = !DILocation(line: 292, column: 8, scope: !582)
!674 = !DILocation(line: 292, column: 5, scope: !582)
!675 = !DILocation(line: 293, column: 11, scope: !582)
!676 = !DILocation(line: 293, column: 9, scope: !582)
!677 = !DILocation(line: 294, column: 2, scope: !582)
!678 = !DILocation(line: 268, column: 47, scope: !583)
!679 = !DILocation(line: 268, column: 2, scope: !583)
!680 = distinct !{!680, !609, !681, !443, !444}
!681 = !DILocation(line: 294, column: 2, scope: !584)
!682 = !DILocation(line: 297, column: 19, scope: !567)
!683 = !DILocation(line: 297, column: 26, scope: !567)
!684 = !DILocation(line: 297, column: 31, scope: !567)
!685 = !DILocation(line: 297, column: 37, scope: !567)
!686 = !DILocation(line: 297, column: 2, scope: !567)
!687 = !DILocation(line: 298, column: 1, scope: !567)
!688 = !DISubprogram(name: "_printk", scope: !689, file: !689, line: 153, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!690 = !DISubroutineType(types: !691)
!691 = !{!40, !51, null}
!692 = distinct !DISubprogram(name: "get_cache_map_size", scope: !3, file: !3, line: 340, type: !693, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!693 = !DISubroutineType(types: !694)
!694 = !{!7}
!695 = !DILocation(line: 342, column: 9, scope: !692)
!696 = !DILocation(line: 342, column: 31, scope: !692)
!697 = !DILocation(line: 342, column: 29, scope: !692)
!698 = !DILocation(line: 342, column: 25, scope: !692)
!699 = !DILocation(line: 342, column: 49, scope: !692)
!700 = !DILocation(line: 342, column: 59, scope: !692)
!701 = !DILocation(line: 342, column: 46, scope: !692)
!702 = !DILocation(line: 342, column: 2, scope: !692)
!703 = !DISubprogram(name: "mtrr_attrib_to_str", scope: !152, file: !152, line: 66, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DISubroutineType(types: !705)
!705 = !{!51, !40}
!706 = distinct !DISubprogram(name: "mtrr_copy_map", scope: !3, file: !3, line: 398, type: !379, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !707)
!707 = !{!708}
!708 = !DILocalVariable(name: "new_size", scope: !706, file: !3, line: 400, type: !7)
!709 = !DILocation(line: 400, column: 2, scope: !706)
!710 = !DILocation(line: 400, column: 15, scope: !706)
!711 = !DILocation(line: 400, column: 26, scope: !706)
!712 = !DILocation(line: 402, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !706, file: !3, line: 402, column: 6)
!714 = !DILocation(line: 402, column: 7, scope: !713)
!715 = !DILocation(line: 402, column: 26, scope: !713)
!716 = !DILocation(line: 402, column: 30, scope: !713)
!717 = !DILocation(line: 402, column: 6, scope: !706)
!718 = !DILocation(line: 403, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !713, file: !3, line: 402, column: 40)
!720 = !DILocation(line: 404, column: 3, scope: !719)
!721 = !DILocation(line: 407, column: 2, scope: !706)
!722 = !DILocation(line: 409, column: 22, scope: !706)
!723 = !DILocation(line: 409, column: 14, scope: !706)
!724 = !DILocation(line: 409, column: 12, scope: !706)
!725 = !DILocation(line: 410, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !706, file: !3, line: 410, column: 6)
!727 = !DILocation(line: 410, column: 6, scope: !706)
!728 = !DILocation(line: 411, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 410, column: 17)
!730 = !DILocation(line: 412, column: 4, scope: !729)
!731 = !DILocation(line: 412, column: 16, scope: !729)
!732 = !DILocation(line: 411, column: 3, scope: !729)
!733 = !DILocation(line: 413, column: 20, scope: !729)
!734 = !DILocation(line: 413, column: 18, scope: !729)
!735 = !DILocation(line: 414, column: 2, scope: !729)
!736 = !DILocation(line: 415, column: 22, scope: !737)
!737 = distinct !DILexicalBlock(scope: !726, file: !3, line: 414, column: 9)
!738 = !DILocation(line: 416, column: 3, scope: !739)
!739 = distinct !DILexicalBlock(scope: !737, file: !3, line: 416, column: 3)
!740 = !DILocation(line: 416, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !739, file: !3, line: 416, column: 3)
!742 = !DILocation(line: 419, column: 2, scope: !706)
!743 = !DILocation(line: 420, column: 1, scope: !706)
!744 = !DISubprogram(name: "mutex_lock", scope: !745, file: !745, line: 227, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!746 = !DISubroutineType(types: !747)
!747 = !{null, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !745, line: 66, size: 256, elements: !750)
!750 = !{!751, !761, !792, !797}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !749, file: !745, line: 67, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !753, line: 13, baseType: !754)
!753 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !39, line: 181, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 179, size: 64, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !755, file: !39, line: 180, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !44, line: 22, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !46, line: 30, baseType: !760)
!760 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !749, file: !745, line: 68, baseType: !762, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !763, line: 23, baseType: !764)
!763 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !763, line: 14, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !764, file: !763, line: 15, baseType: !767, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !768, line: 44, baseType: !769)
!768 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !768, line: 14, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !768, line: 15, baseType: !772, size: 32)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !768, line: 15, size: 32, elements: !773)
!773 = !{!774, !779, !784}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !772, file: !768, line: 16, baseType: !775, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !39, line: 174, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 172, size: 32, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !776, file: !39, line: 173, baseType: !40, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 24, baseType: !780, size: 16)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 24, size: 16, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !780, file: !768, line: 25, baseType: !396, size: 8)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !780, file: !768, line: 26, baseType: !396, size: 8, offset: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !768, line: 28, baseType: !785, size: 32)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !768, line: 28, size: 32, elements: !786)
!786 = !{!787, !791}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !785, file: !768, line: 29, baseType: !788, size: 16)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 19, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !46, line: 24, baseType: !790)
!790 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !785, file: !768, line: 30, baseType: !788, size: 16, offset: 16)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !749, file: !745, line: 70, baseType: !793, size: 32, offset: 96)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !794, line: 15, size: 32, elements: !795)
!794 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !793, file: !794, line: 20, baseType: !775, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !749, file: !745, line: 72, baseType: !798, size: 128, offset: 128)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !39, line: 190, size: 128, elements: !799)
!799 = !{!800, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !39, line: 191, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !798, file: !39, line: 191, baseType: !801, size: 64, offset: 64)
!803 = distinct !DISubprogram(name: "kcalloc", scope: !22, file: !22, line: 666, type: !804, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!804 = !DISubroutineType(types: !805)
!805 = !{!37, !806, !806, !38}
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 61, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !808, line: 72, baseType: !809)
!808 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !808, line: 16, baseType: !42)
!810 = !{!811, !812, !813}
!811 = !DILocalVariable(name: "n", arg: 1, scope: !803, file: !22, line: 666, type: !806)
!812 = !DILocalVariable(name: "size", arg: 2, scope: !803, file: !22, line: 666, type: !806)
!813 = !DILocalVariable(name: "flags", arg: 3, scope: !803, file: !22, line: 666, type: !38)
!814 = !DILocation(line: 666, column: 55, scope: !803)
!815 = !DILocation(line: 666, column: 65, scope: !803)
!816 = !DILocation(line: 666, column: 77, scope: !803)
!817 = !DILocation(line: 668, column: 23, scope: !803)
!818 = !DILocation(line: 668, column: 26, scope: !803)
!819 = !DILocation(line: 668, column: 32, scope: !803)
!820 = !DILocation(line: 668, column: 38, scope: !803)
!821 = !DILocation(line: 668, column: 9, scope: !803)
!822 = !DILocation(line: 668, column: 2, scope: !803)
!823 = !DISubprogram(name: "mutex_unlock", scope: !745, file: !745, line: 246, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = distinct !DISubprogram(name: "mtrr_overwrite_state", scope: !3, file: !3, line: 432, type: !825, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !827, !7, !159}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!828 = !{!829, !830, !831, !832, !833, !836}
!829 = !DILocalVariable(name: "var", arg: 1, scope: !824, file: !3, line: 432, type: !827)
!830 = !DILocalVariable(name: "num_var", arg: 2, scope: !824, file: !3, line: 432, type: !7)
!831 = !DILocalVariable(name: "def_type", arg: 3, scope: !824, file: !3, line: 433, type: !159)
!832 = !DILocalVariable(name: "i", scope: !824, file: !3, line: 435, type: !7)
!833 = !DILocalVariable(name: "__ret_warn_on", scope: !834, file: !3, line: 438, type: !40)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 438, column: 6)
!835 = distinct !DILexicalBlock(scope: !824, file: !3, line: 438, column: 6)
!836 = !DILocalVariable(name: "__flags", scope: !837, file: !3, line: 438, type: !40)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 438, column: 6)
!838 = distinct !DILexicalBlock(scope: !834, file: !3, line: 438, column: 6)
!839 = !DILocation(line: 432, column: 50, scope: !824)
!840 = !DILocation(line: 432, column: 68, scope: !824)
!841 = !DILocation(line: 433, column: 16, scope: !824)
!842 = !DILocation(line: 435, column: 2, scope: !824)
!843 = !DILocation(line: 435, column: 15, scope: !824)
!844 = !DILocation(line: 438, column: 6, scope: !834)
!845 = !DILocation(line: 438, column: 6, scope: !838)
!846 = !DILocation(line: 438, column: 6, scope: !837)
!847 = !DILocation(line: 438, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !837, file: !3, line: 438, column: 6)
!849 = !DILocation(line: 438, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !837, file: !3, line: 438, column: 6)
!851 = !{i64 2154956019, i64 2154956048, i64 2154956094, i64 2154956152, i64 2154956206, i64 2154956260, i64 2154956315, i64 2154956346, i64 2154956654, i64 2154956660, i64 2154956707, i64 2154956730, i64 2154956756}
!852 = !DILocation(line: 438, column: 6, scope: !853)
!853 = distinct !DILexicalBlock(scope: !837, file: !3, line: 438, column: 6)
!854 = !DILocation(line: 438, column: 6, scope: !835)
!855 = !DILocation(line: 438, column: 6, scope: !824)
!856 = !DILocation(line: 439, column: 3, scope: !835)
!857 = !DILocation(line: 442, column: 6, scope: !824)
!858 = !DILocation(line: 442, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !824, file: !3, line: 442, column: 6)
!860 = !DILocation(line: 443, column: 3, scope: !859)
!861 = !DILocation(line: 452, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !824, file: !3, line: 452, column: 6)
!863 = !DILocation(line: 452, column: 46, scope: !862)
!864 = !DILocation(line: 453, column: 7, scope: !862)
!865 = !DILocation(line: 452, column: 6, scope: !824)
!866 = !DILocation(line: 456, column: 3, scope: !862)
!867 = !DILocation(line: 459, column: 2, scope: !824)
!868 = !DILocation(line: 461, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !824, file: !3, line: 461, column: 6)
!870 = !DILocation(line: 461, column: 6, scope: !824)
!871 = !DILocation(line: 462, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 462, column: 7)
!873 = distinct !DILexicalBlock(scope: !869, file: !3, line: 461, column: 11)
!874 = !DILocation(line: 462, column: 15, scope: !872)
!875 = !DILocation(line: 462, column: 7, scope: !873)
!876 = !DILocation(line: 463, column: 4, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 463, column: 4)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 462, column: 38)
!879 = !DILocation(line: 463, column: 4, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 463, column: 4)
!881 = !DILocation(line: 465, column: 12, scope: !878)
!882 = !DILocation(line: 466, column: 3, scope: !878)
!883 = !DILocation(line: 467, column: 10, scope: !884)
!884 = distinct !DILexicalBlock(scope: !873, file: !3, line: 467, column: 3)
!885 = !DILocation(line: 467, column: 8, scope: !884)
!886 = !DILocation(line: 467, column: 15, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 467, column: 3)
!888 = !DILocation(line: 467, column: 19, scope: !887)
!889 = !DILocation(line: 467, column: 17, scope: !887)
!890 = !DILocation(line: 467, column: 3, scope: !884)
!891 = !DILocation(line: 468, column: 26, scope: !887)
!892 = !DILocation(line: 468, column: 4, scope: !887)
!893 = !DILocation(line: 468, column: 31, scope: !887)
!894 = !DILocation(line: 468, column: 35, scope: !887)
!895 = !DILocation(line: 467, column: 29, scope: !887)
!896 = !DILocation(line: 467, column: 3, scope: !887)
!897 = distinct !{!897, !890, !898, !443, !444}
!898 = !DILocation(line: 468, column: 36, scope: !884)
!899 = !DILocation(line: 469, column: 20, scope: !873)
!900 = !DILocation(line: 469, column: 18, scope: !873)
!901 = !DILocation(line: 470, column: 2, scope: !873)
!902 = !DILocation(line: 472, column: 24, scope: !824)
!903 = !DILocation(line: 472, column: 22, scope: !824)
!904 = !DILocation(line: 473, column: 21, scope: !824)
!905 = !DILocation(line: 475, column: 17, scope: !824)
!906 = !DILocation(line: 476, column: 1, scope: !824)
!907 = distinct !DISubprogram(name: "arch_test_bit", scope: !908, file: !908, line: 237, type: !909, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !914)
!908 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!909 = !DISubroutineType(types: !910)
!910 = !{!182, !42, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!914 = !{!915, !916}
!915 = !DILocalVariable(name: "nr", arg: 1, scope: !907, file: !908, line: 237, type: !42)
!916 = !DILocalVariable(name: "addr", arg: 2, scope: !907, file: !908, line: 237, type: !911)
!917 = !DILocation(line: 237, column: 29, scope: !907)
!918 = !DILocation(line: 237, column: 63, scope: !907)
!919 = !DILocation(line: 239, column: 30, scope: !907)
!920 = !DILocation(line: 239, column: 9, scope: !907)
!921 = !DILocation(line: 239, column: 54, scope: !907)
!922 = !DILocation(line: 239, column: 58, scope: !907)
!923 = !DILocation(line: 239, column: 36, scope: !907)
!924 = !DILocation(line: 240, column: 26, scope: !907)
!925 = !DILocation(line: 240, column: 30, scope: !907)
!926 = !DILocation(line: 240, column: 8, scope: !907)
!927 = !DILocation(line: 239, column: 2, scope: !907)
!928 = distinct !DISubprogram(name: "_static_cpu_has", scope: !929, file: !929, line: 173, type: !930, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!929 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!930 = !DISubroutineType(types: !931)
!931 = !{!182, !788}
!932 = !{!933, !934, !935}
!933 = !DILocalVariable(name: "bit", arg: 1, scope: !928, file: !929, line: 173, type: !788)
!934 = !DILabel(scope: !928, name: "t_yes", file: !929, line: 187)
!935 = !DILabel(scope: !928, name: "t_no", file: !929, line: 189)
!936 = !DILocation(line: 173, column: 49, scope: !928)
!937 = !DILocation(line: 183, column: 24, scope: !928)
!938 = !DILocation(line: 184, column: 30, scope: !928)
!939 = !DILocation(line: 184, column: 34, scope: !928)
!940 = !DILocation(line: 184, column: 26, scope: !928)
!941 = !DILocation(line: 185, column: 70, scope: !928)
!942 = !DILocation(line: 185, column: 74, scope: !928)
!943 = !DILocation(line: 185, column: 25, scope: !928)
!944 = !DILocation(line: 175, column: 2, scope: !928)
!945 = !{i64 2149594521, i64 2149594554, i64 2149594560, i64 2149594576, i64 2149594595, i64 2149594626, i64 2149595579, i64 2149594168, i64 2149595585, i64 2149595633, i64 2149595697, i64 2149595761, i64 2149595818, i64 2149596025, i64 2149596073, i64 2149596137, i64 2149596201, i64 2149596258, i64 2149594286, i64 2149594311, i64 2149596468, i64 2149596596, i64 2149596529, i64 2149596610, i64 2149596624, i64 2149596740, i64 2149596685, i64 2149596754, i64 2149594445, i64 1923116, i64 1923156, i64 1923165, i64 1923215, i64 1923236, i64 1923256}
!946 = !DILocation(line: 187, column: 1, scope: !928)
!947 = !DILocation(line: 188, column: 2, scope: !928)
!948 = !DILocation(line: 189, column: 1, scope: !928)
!949 = !DILocation(line: 190, column: 2, scope: !928)
!950 = !DILocation(line: 191, column: 1, scope: !928)
!951 = distinct !DISubprogram(name: "cc_platform_has", scope: !6, file: !6, line: 113, type: !952, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !954)
!952 = !DISubroutineType(types: !953)
!953 = !{!182, !5}
!954 = !{!955}
!955 = !DILocalVariable(name: "attr", arg: 1, scope: !951, file: !6, line: 113, type: !5)
!956 = !DILocation(line: 113, column: 49, scope: !951)
!957 = !DILocation(line: 113, column: 57, scope: !951)
!958 = distinct !DISubprogram(name: "hv_is_isolation_supported", scope: !959, file: !959, line: 293, type: !960, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!959 = !DIFile(filename: "./include/asm-generic/mshyperv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd50a0b047962e893af356bbfd04e3c5")
!960 = !DISubroutineType(types: !961)
!961 = !{!182}
!962 = !DILocation(line: 293, column: 54, scope: !958)
!963 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !929, file: !929, line: 150, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !7}
!966 = distinct !DISubprogram(name: "mtrr_type_lookup", scope: !3, file: !3, line: 503, type: !967, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!967 = !DISubroutineType(types: !968)
!968 = !{!396, !48, !48, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!970 = !{!971, !972, !973, !974, !975}
!971 = !DILocalVariable(name: "start", arg: 1, scope: !966, file: !3, line: 503, type: !48)
!972 = !DILocalVariable(name: "end", arg: 2, scope: !966, file: !3, line: 503, type: !48)
!973 = !DILocalVariable(name: "uniform", arg: 3, scope: !966, file: !3, line: 503, type: !969)
!974 = !DILocalVariable(name: "type", scope: !966, file: !3, line: 505, type: !396)
!975 = !DILocalVariable(name: "i", scope: !966, file: !3, line: 506, type: !7)
!976 = !DILocation(line: 503, column: 25, scope: !966)
!977 = !DILocation(line: 503, column: 36, scope: !966)
!978 = !DILocation(line: 503, column: 45, scope: !966)
!979 = !DILocation(line: 505, column: 2, scope: !966)
!980 = !DILocation(line: 505, column: 5, scope: !966)
!981 = !DILocation(line: 506, column: 2, scope: !966)
!982 = !DILocation(line: 506, column: 15, scope: !966)
!983 = !DILocation(line: 508, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !966, file: !3, line: 508, column: 6)
!985 = !DILocation(line: 508, column: 6, scope: !966)
!986 = !DILocation(line: 510, column: 4, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 508, column: 23)
!988 = !DILocation(line: 510, column: 12, scope: !987)
!989 = !DILocation(line: 511, column: 3, scope: !987)
!990 = !DILocation(line: 514, column: 3, scope: !966)
!991 = !DILocation(line: 514, column: 11, scope: !966)
!992 = !DILocation(line: 516, column: 19, scope: !993)
!993 = distinct !DILexicalBlock(scope: !966, file: !3, line: 516, column: 6)
!994 = !DILocation(line: 516, column: 8, scope: !993)
!995 = !DILocation(line: 516, column: 27, scope: !993)
!996 = !DILocation(line: 516, column: 6, scope: !966)
!997 = !DILocation(line: 517, column: 3, scope: !993)
!998 = !DILocation(line: 519, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !966, file: !3, line: 519, column: 2)
!1000 = !DILocation(line: 519, column: 7, scope: !999)
!1001 = !DILocation(line: 519, column: 14, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !3, line: 519, column: 2)
!1003 = !DILocation(line: 519, column: 18, scope: !1002)
!1004 = !DILocation(line: 519, column: 16, scope: !1002)
!1005 = !DILocation(line: 519, column: 30, scope: !1002)
!1006 = !DILocation(line: 519, column: 33, scope: !1002)
!1007 = !DILocation(line: 519, column: 41, scope: !1002)
!1008 = !DILocation(line: 519, column: 39, scope: !1002)
!1009 = !DILocation(line: 0, scope: !1002)
!1010 = !DILocation(line: 519, column: 2, scope: !999)
!1011 = !DILocation(line: 521, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 521, column: 7)
!1013 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 519, column: 51)
!1014 = !DILocation(line: 521, column: 16, scope: !1012)
!1015 = !DILocation(line: 521, column: 26, scope: !1012)
!1016 = !DILocation(line: 521, column: 29, scope: !1012)
!1017 = !DILocation(line: 521, column: 13, scope: !1012)
!1018 = !DILocation(line: 521, column: 7, scope: !1013)
!1019 = !DILocation(line: 522, column: 4, scope: !1012)
!1020 = !DILocation(line: 525, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 525, column: 7)
!1022 = !DILocation(line: 525, column: 15, scope: !1021)
!1023 = !DILocation(line: 525, column: 25, scope: !1021)
!1024 = !DILocation(line: 525, column: 28, scope: !1021)
!1025 = !DILocation(line: 525, column: 13, scope: !1021)
!1026 = !DILocation(line: 525, column: 7, scope: !1013)
!1027 = !DILocation(line: 527, column: 22, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 525, column: 35)
!1029 = !DILocation(line: 527, column: 39, scope: !1028)
!1030 = !DILocation(line: 527, column: 49, scope: !1028)
!1031 = !DILocation(line: 527, column: 11, scope: !1028)
!1032 = !DILocation(line: 527, column: 9, scope: !1028)
!1033 = !DILocation(line: 529, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 529, column: 8)
!1035 = !DILocation(line: 529, column: 15, scope: !1034)
!1036 = !DILocation(line: 529, column: 25, scope: !1034)
!1037 = !DILocation(line: 529, column: 28, scope: !1034)
!1038 = !DILocation(line: 529, column: 12, scope: !1034)
!1039 = !DILocation(line: 529, column: 8, scope: !1028)
!1040 = !DILocation(line: 530, column: 12, scope: !1034)
!1041 = !DILocation(line: 530, column: 5, scope: !1034)
!1042 = !DILocation(line: 531, column: 3, scope: !1028)
!1043 = !DILocation(line: 534, column: 21, scope: !1013)
!1044 = !DILocation(line: 534, column: 27, scope: !1013)
!1045 = !DILocation(line: 534, column: 37, scope: !1013)
!1046 = !DILocation(line: 534, column: 40, scope: !1013)
!1047 = !DILocation(line: 534, column: 46, scope: !1013)
!1048 = !DILocation(line: 534, column: 10, scope: !1013)
!1049 = !DILocation(line: 534, column: 8, scope: !1013)
!1050 = !DILocation(line: 536, column: 11, scope: !1013)
!1051 = !DILocation(line: 536, column: 21, scope: !1013)
!1052 = !DILocation(line: 536, column: 24, scope: !1013)
!1053 = !DILocation(line: 536, column: 9, scope: !1013)
!1054 = !DILocation(line: 537, column: 2, scope: !1013)
!1055 = !DILocation(line: 519, column: 47, scope: !1002)
!1056 = !DILocation(line: 519, column: 2, scope: !1002)
!1057 = distinct !{!1057, !1010, !1058, !443, !444}
!1058 = !DILocation(line: 537, column: 2, scope: !999)
!1059 = !DILocation(line: 540, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !966, file: !3, line: 540, column: 6)
!1061 = !DILocation(line: 540, column: 14, scope: !1060)
!1062 = !DILocation(line: 540, column: 12, scope: !1060)
!1063 = !DILocation(line: 540, column: 6, scope: !966)
!1064 = !DILocation(line: 541, column: 21, scope: !1060)
!1065 = !DILocation(line: 541, column: 38, scope: !1060)
!1066 = !DILocation(line: 541, column: 48, scope: !1060)
!1067 = !DILocation(line: 541, column: 10, scope: !1060)
!1068 = !DILocation(line: 541, column: 8, scope: !1060)
!1069 = !DILocation(line: 541, column: 3, scope: !1060)
!1070 = !DILocation(line: 543, column: 9, scope: !966)
!1071 = !DILocation(line: 543, column: 2, scope: !966)
!1072 = !DILocation(line: 544, column: 1, scope: !966)
!1073 = distinct !DISubprogram(name: "type_merge", scope: !3, file: !3, line: 478, type: !1074, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!396, !396, !396, !969}
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DILocalVariable(name: "type", arg: 1, scope: !1073, file: !3, line: 478, type: !396)
!1078 = !DILocalVariable(name: "new_type", arg: 2, scope: !1073, file: !3, line: 478, type: !396)
!1079 = !DILocalVariable(name: "uniform", arg: 3, scope: !1073, file: !3, line: 478, type: !969)
!1080 = !DILocalVariable(name: "effective_type", scope: !1073, file: !3, line: 480, type: !396)
!1081 = !DILocation(line: 478, column: 25, scope: !1073)
!1082 = !DILocation(line: 478, column: 34, scope: !1073)
!1083 = !DILocation(line: 478, column: 48, scope: !1073)
!1084 = !DILocation(line: 480, column: 2, scope: !1073)
!1085 = !DILocation(line: 480, column: 5, scope: !1073)
!1086 = !DILocation(line: 482, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 482, column: 6)
!1088 = !DILocation(line: 482, column: 11, scope: !1087)
!1089 = !DILocation(line: 482, column: 6, scope: !1073)
!1090 = !DILocation(line: 483, column: 10, scope: !1087)
!1091 = !DILocation(line: 483, column: 3, scope: !1087)
!1092 = !DILocation(line: 485, column: 38, scope: !1073)
!1093 = !DILocation(line: 485, column: 44, scope: !1073)
!1094 = !DILocation(line: 485, column: 19, scope: !1073)
!1095 = !DILocation(line: 485, column: 17, scope: !1073)
!1096 = !DILocation(line: 486, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 486, column: 6)
!1098 = !DILocation(line: 486, column: 14, scope: !1097)
!1099 = !DILocation(line: 486, column: 11, scope: !1097)
!1100 = !DILocation(line: 486, column: 6, scope: !1073)
!1101 = !DILocation(line: 487, column: 4, scope: !1097)
!1102 = !DILocation(line: 487, column: 12, scope: !1097)
!1103 = !DILocation(line: 487, column: 3, scope: !1097)
!1104 = !DILocation(line: 489, column: 9, scope: !1073)
!1105 = !DILocation(line: 489, column: 2, scope: !1073)
!1106 = !DILocation(line: 490, column: 1, scope: !1073)
!1107 = distinct !DISubprogram(name: "fill_mtrr_var_range", scope: !3, file: !3, line: 555, type: !1108, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !7, !43, !43, !43, !43}
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116}
!1111 = !DILocalVariable(name: "index", arg: 1, scope: !1107, file: !3, line: 555, type: !7)
!1112 = !DILocalVariable(name: "base_lo", arg: 2, scope: !1107, file: !3, line: 556, type: !43)
!1113 = !DILocalVariable(name: "base_hi", arg: 3, scope: !1107, file: !3, line: 556, type: !43)
!1114 = !DILocalVariable(name: "mask_lo", arg: 4, scope: !1107, file: !3, line: 556, type: !43)
!1115 = !DILocalVariable(name: "mask_hi", arg: 5, scope: !1107, file: !3, line: 556, type: !43)
!1116 = !DILocalVariable(name: "vr", scope: !1107, file: !3, line: 558, type: !827)
!1117 = !DILocation(line: 555, column: 39, scope: !1107)
!1118 = !DILocation(line: 556, column: 7, scope: !1107)
!1119 = !DILocation(line: 556, column: 20, scope: !1107)
!1120 = !DILocation(line: 556, column: 33, scope: !1107)
!1121 = !DILocation(line: 556, column: 46, scope: !1107)
!1122 = !DILocation(line: 558, column: 2, scope: !1107)
!1123 = !DILocation(line: 558, column: 25, scope: !1107)
!1124 = !DILocation(line: 560, column: 5, scope: !1107)
!1125 = !DILocation(line: 562, column: 22, scope: !1107)
!1126 = !DILocation(line: 562, column: 2, scope: !1107)
!1127 = !DILocation(line: 562, column: 5, scope: !1107)
!1128 = !DILocation(line: 562, column: 12, scope: !1107)
!1129 = !DILocation(line: 562, column: 20, scope: !1107)
!1130 = !DILocation(line: 563, column: 22, scope: !1107)
!1131 = !DILocation(line: 563, column: 2, scope: !1107)
!1132 = !DILocation(line: 563, column: 5, scope: !1107)
!1133 = !DILocation(line: 563, column: 12, scope: !1107)
!1134 = !DILocation(line: 563, column: 20, scope: !1107)
!1135 = !DILocation(line: 564, column: 22, scope: !1107)
!1136 = !DILocation(line: 564, column: 2, scope: !1107)
!1137 = !DILocation(line: 564, column: 5, scope: !1107)
!1138 = !DILocation(line: 564, column: 12, scope: !1107)
!1139 = !DILocation(line: 564, column: 20, scope: !1107)
!1140 = !DILocation(line: 565, column: 22, scope: !1107)
!1141 = !DILocation(line: 565, column: 2, scope: !1107)
!1142 = !DILocation(line: 565, column: 5, scope: !1107)
!1143 = !DILocation(line: 565, column: 12, scope: !1107)
!1144 = !DILocation(line: 565, column: 20, scope: !1107)
!1145 = !DILocation(line: 566, column: 1, scope: !1107)
!1146 = distinct !DISubprogram(name: "mtrr_save_fixed_ranges", scope: !3, file: !3, line: 583, type: !1147, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !37}
!1149 = !{!1150}
!1150 = !DILocalVariable(name: "info", arg: 1, scope: !1146, file: !3, line: 583, type: !37)
!1151 = !DILocation(line: 583, column: 35, scope: !1146)
!1152 = !DILocation(line: 585, column: 6, scope: !1146)
!1153 = !DILocation(line: 585, column: 6, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 585, column: 6)
!1155 = !DILocation(line: 586, column: 3, scope: !1154)
!1156 = !DILocation(line: 587, column: 1, scope: !1146)
!1157 = distinct !DISubprogram(name: "get_fixed_ranges", scope: !3, file: !3, line: 568, type: !1158, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !167}
!1160 = !{!1161, !1162, !1163, !1164, !1166, !1170}
!1161 = !DILocalVariable(name: "frs", arg: 1, scope: !1157, file: !3, line: 568, type: !167)
!1162 = !DILocalVariable(name: "p", scope: !1157, file: !3, line: 570, type: !54)
!1163 = !DILocalVariable(name: "i", scope: !1157, file: !3, line: 571, type: !40)
!1164 = !DILocalVariable(name: "__val", scope: !1165, file: !3, line: 575, type: !48)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 575, column: 2)
!1166 = !DILocalVariable(name: "__val", scope: !1167, file: !3, line: 578, type: !48)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 578, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 577, column: 2)
!1169 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 577, column: 2)
!1170 = !DILocalVariable(name: "__val", scope: !1171, file: !3, line: 580, type: !48)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 580, column: 3)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 579, column: 2)
!1173 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 579, column: 2)
!1174 = !DILocation(line: 568, column: 41, scope: !1157)
!1175 = !DILocation(line: 570, column: 2, scope: !1157)
!1176 = !DILocation(line: 570, column: 16, scope: !1157)
!1177 = !DILocation(line: 570, column: 36, scope: !1157)
!1178 = !DILocation(line: 571, column: 2, scope: !1157)
!1179 = !DILocation(line: 571, column: 6, scope: !1157)
!1180 = !DILocation(line: 573, column: 2, scope: !1157)
!1181 = !DILocation(line: 575, column: 2, scope: !1157)
!1182 = !DILocation(line: 575, column: 2, scope: !1165)
!1183 = !DILocation(line: 577, column: 9, scope: !1169)
!1184 = !DILocation(line: 577, column: 7, scope: !1169)
!1185 = !DILocation(line: 577, column: 14, scope: !1168)
!1186 = !DILocation(line: 577, column: 16, scope: !1168)
!1187 = !DILocation(line: 577, column: 2, scope: !1169)
!1188 = !DILocation(line: 578, column: 3, scope: !1168)
!1189 = !DILocation(line: 578, column: 3, scope: !1167)
!1190 = !DILocation(line: 577, column: 22, scope: !1168)
!1191 = !DILocation(line: 577, column: 2, scope: !1168)
!1192 = distinct !{!1192, !1187, !1193, !443, !444}
!1193 = !DILocation(line: 578, column: 3, scope: !1169)
!1194 = !DILocation(line: 579, column: 9, scope: !1173)
!1195 = !DILocation(line: 579, column: 7, scope: !1173)
!1196 = !DILocation(line: 579, column: 14, scope: !1172)
!1197 = !DILocation(line: 579, column: 16, scope: !1172)
!1198 = !DILocation(line: 579, column: 2, scope: !1173)
!1199 = !DILocation(line: 580, column: 3, scope: !1172)
!1200 = !DILocation(line: 580, column: 3, scope: !1171)
!1201 = !DILocation(line: 579, column: 22, scope: !1172)
!1202 = !DILocation(line: 579, column: 2, scope: !1172)
!1203 = distinct !{!1203, !1198, !1204, !443, !444}
!1204 = !DILocation(line: 580, column: 3, scope: !1173)
!1205 = !DILocation(line: 581, column: 1, scope: !1157)
!1206 = distinct !DISubprogram(name: "get_mtrr_state", scope: !3, file: !3, line: 679, type: !960, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1207)
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1214, !1216, !1219, !1220}
!1208 = !DILocalVariable(name: "vrs", scope: !1206, file: !3, line: 681, type: !827)
!1209 = !DILocalVariable(name: "lo", scope: !1206, file: !3, line: 682, type: !7)
!1210 = !DILocalVariable(name: "dummy", scope: !1206, file: !3, line: 682, type: !7)
!1211 = !DILocalVariable(name: "i", scope: !1206, file: !3, line: 683, type: !7)
!1212 = !DILocalVariable(name: "__val", scope: !1213, file: !3, line: 687, type: !48)
!1213 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 687, column: 2)
!1214 = !DILocalVariable(name: "__val", scope: !1215, file: !3, line: 695, type: !48)
!1215 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 695, column: 2)
!1216 = !DILocalVariable(name: "low", scope: !1217, file: !3, line: 700, type: !7)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 699, column: 34)
!1218 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 699, column: 6)
!1219 = !DILocalVariable(name: "high", scope: !1217, file: !3, line: 700, type: !7)
!1220 = !DILocalVariable(name: "__val", scope: !1221, file: !3, line: 703, type: !48)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 703, column: 3)
!1222 = !DILocation(line: 681, column: 2, scope: !1206)
!1223 = !DILocation(line: 681, column: 25, scope: !1206)
!1224 = !DILocation(line: 682, column: 2, scope: !1206)
!1225 = !DILocation(line: 682, column: 11, scope: !1206)
!1226 = !DILocation(line: 682, column: 15, scope: !1206)
!1227 = !DILocation(line: 683, column: 2, scope: !1206)
!1228 = !DILocation(line: 683, column: 15, scope: !1206)
!1229 = !DILocation(line: 685, column: 6, scope: !1206)
!1230 = !DILocation(line: 687, column: 2, scope: !1206)
!1231 = !DILocation(line: 687, column: 2, scope: !1213)
!1232 = !DILocation(line: 688, column: 26, scope: !1206)
!1233 = !DILocation(line: 688, column: 29, scope: !1206)
!1234 = !DILocation(line: 688, column: 24, scope: !1206)
!1235 = !DILocation(line: 690, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 690, column: 2)
!1237 = !DILocation(line: 690, column: 7, scope: !1236)
!1238 = !DILocation(line: 690, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 690, column: 2)
!1240 = !DILocation(line: 690, column: 18, scope: !1239)
!1241 = !DILocation(line: 690, column: 16, scope: !1239)
!1242 = !DILocation(line: 690, column: 2, scope: !1236)
!1243 = !DILocation(line: 691, column: 22, scope: !1239)
!1244 = !DILocation(line: 691, column: 26, scope: !1239)
!1245 = !DILocation(line: 691, column: 30, scope: !1239)
!1246 = !DILocation(line: 691, column: 3, scope: !1239)
!1247 = !DILocation(line: 690, column: 35, scope: !1239)
!1248 = !DILocation(line: 690, column: 2, scope: !1239)
!1249 = distinct !{!1249, !1242, !1250, !443, !444}
!1250 = !DILocation(line: 691, column: 32, scope: !1236)
!1251 = !DILocation(line: 692, column: 17, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 692, column: 6)
!1253 = !DILocation(line: 692, column: 6, scope: !1206)
!1254 = !DILocation(line: 693, column: 3, scope: !1252)
!1255 = !DILocation(line: 695, column: 2, scope: !1206)
!1256 = !DILocation(line: 695, column: 2, scope: !1215)
!1257 = !DILocation(line: 696, column: 24, scope: !1206)
!1258 = !DILocation(line: 696, column: 27, scope: !1206)
!1259 = !DILocation(line: 696, column: 22, scope: !1206)
!1260 = !DILocation(line: 697, column: 24, scope: !1206)
!1261 = !DILocation(line: 697, column: 27, scope: !1206)
!1262 = !DILocation(line: 697, column: 51, scope: !1206)
!1263 = !DILocation(line: 697, column: 23, scope: !1206)
!1264 = !DILocation(line: 697, column: 21, scope: !1206)
!1265 = !DILocation(line: 699, column: 6, scope: !1218)
!1266 = !DILocation(line: 699, column: 6, scope: !1206)
!1267 = !DILocation(line: 700, column: 3, scope: !1217)
!1268 = !DILocation(line: 700, column: 12, scope: !1217)
!1269 = !DILocation(line: 700, column: 17, scope: !1217)
!1270 = !DILocation(line: 703, column: 3, scope: !1217)
!1271 = !DILocation(line: 703, column: 3, scope: !1221)
!1272 = !DILocation(line: 704, column: 15, scope: !1217)
!1273 = !DILocation(line: 704, column: 13, scope: !1217)
!1274 = !DILocation(line: 705, column: 13, scope: !1217)
!1275 = !DILocation(line: 706, column: 16, scope: !1217)
!1276 = !DILocation(line: 706, column: 13, scope: !1217)
!1277 = !DILocation(line: 707, column: 13, scope: !1217)
!1278 = !DILocation(line: 708, column: 2, scope: !1218)
!1279 = !DILocation(line: 708, column: 2, scope: !1217)
!1280 = !DILocation(line: 710, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 710, column: 6)
!1282 = !DILocation(line: 710, column: 6, scope: !1206)
!1283 = !DILocation(line: 711, column: 3, scope: !1281)
!1284 = !DILocation(line: 713, column: 17, scope: !1206)
!1285 = !DILocation(line: 715, column: 23, scope: !1206)
!1286 = !DILocation(line: 715, column: 12, scope: !1206)
!1287 = !DILocation(line: 715, column: 31, scope: !1206)
!1288 = !DILocation(line: 715, column: 10, scope: !1206)
!1289 = !DILocation(line: 715, column: 9, scope: !1206)
!1290 = !DILocation(line: 716, column: 1, scope: !1206)
!1291 = !DILocation(line: 715, column: 2, scope: !1206)
!1292 = distinct !DISubprogram(name: "native_read_msr", scope: !1293, file: !1293, line: 114, type: !1294, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1296)
!1293 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!50, !7}
!1296 = !{!1297, !1298}
!1297 = !DILocalVariable(name: "msr", arg: 1, scope: !1292, file: !1293, line: 114, type: !7)
!1298 = !DILocalVariable(name: "val", scope: !1292, file: !1293, line: 116, type: !50)
!1299 = !DILocation(line: 114, column: 63, scope: !1292)
!1300 = !DILocation(line: 116, column: 2, scope: !1292)
!1301 = !DILocation(line: 116, column: 21, scope: !1292)
!1302 = !DILocation(line: 118, column: 16, scope: !1292)
!1303 = !DILocation(line: 118, column: 8, scope: !1292)
!1304 = !DILocation(line: 118, column: 6, scope: !1292)
!1305 = !DILocation(line: 120, column: 6, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1292, file: !1293, line: 120, column: 6)
!1307 = !DILocation(line: 120, column: 6, scope: !1292)
!1308 = !DILocation(line: 121, column: 21, scope: !1306)
!1309 = !DILocation(line: 121, column: 26, scope: !1306)
!1310 = !DILocation(line: 121, column: 3, scope: !1306)
!1311 = !DILocation(line: 123, column: 9, scope: !1292)
!1312 = !DILocation(line: 124, column: 1, scope: !1292)
!1313 = !DILocation(line: 123, column: 2, scope: !1292)
!1314 = distinct !DISubprogram(name: "get_mtrr_var_range", scope: !3, file: !3, line: 548, type: !1315, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !7, !827}
!1317 = !{!1318, !1319, !1320, !1322}
!1318 = !DILocalVariable(name: "index", arg: 1, scope: !1314, file: !3, line: 548, type: !7)
!1319 = !DILocalVariable(name: "vr", arg: 2, scope: !1314, file: !3, line: 548, type: !827)
!1320 = !DILocalVariable(name: "__val", scope: !1321, file: !3, line: 550, type: !48)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 550, column: 2)
!1322 = !DILocalVariable(name: "__val", scope: !1323, file: !3, line: 551, type: !48)
!1323 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 551, column: 2)
!1324 = !DILocation(line: 548, column: 33, scope: !1314)
!1325 = !DILocation(line: 548, column: 63, scope: !1314)
!1326 = !DILocation(line: 550, column: 2, scope: !1314)
!1327 = !DILocation(line: 550, column: 2, scope: !1321)
!1328 = !DILocation(line: 551, column: 2, scope: !1314)
!1329 = !DILocation(line: 551, column: 2, scope: !1323)
!1330 = !DILocation(line: 552, column: 1, scope: !1314)
!1331 = !DISubprogram(name: "amd_special_default_mtrr", scope: !209, file: !209, line: 74, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = distinct !DISubprogram(name: "print_mtrr_state", scope: !3, file: !3, line: 632, type: !379, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1333 = !{!1334, !1335}
!1334 = !DILocalVariable(name: "i", scope: !1332, file: !3, line: 634, type: !7)
!1335 = !DILocalVariable(name: "high_width", scope: !1332, file: !3, line: 635, type: !40)
!1336 = !DILocation(line: 634, column: 2, scope: !1332)
!1337 = !DILocation(line: 634, column: 15, scope: !1332)
!1338 = !DILocation(line: 635, column: 2, scope: !1332)
!1339 = !DILocation(line: 635, column: 6, scope: !1332)
!1340 = !DILocation(line: 637, column: 2, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 637, column: 2)
!1342 = !DILocation(line: 637, column: 2, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 637, column: 2)
!1344 = !DILocation(line: 639, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 639, column: 6)
!1346 = !DILocation(line: 639, column: 6, scope: !1332)
!1347 = !DILocation(line: 640, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 640, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 639, column: 29)
!1350 = !DILocation(line: 640, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 640, column: 3)
!1352 = !DILocation(line: 0, scope: !1348)
!1353 = !DILocation(line: 644, column: 3, scope: !1349)
!1354 = !DILocation(line: 645, column: 10, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 645, column: 3)
!1356 = !DILocation(line: 645, column: 8, scope: !1355)
!1357 = !DILocation(line: 645, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 645, column: 3)
!1359 = !DILocation(line: 645, column: 17, scope: !1358)
!1360 = !DILocation(line: 645, column: 3, scope: !1355)
!1361 = !DILocation(line: 646, column: 26, scope: !1358)
!1362 = !DILocation(line: 646, column: 28, scope: !1358)
!1363 = !DILocation(line: 646, column: 24, scope: !1358)
!1364 = !DILocation(line: 647, column: 36, scope: !1358)
!1365 = !DILocation(line: 647, column: 38, scope: !1358)
!1366 = !DILocation(line: 647, column: 43, scope: !1358)
!1367 = !DILocation(line: 647, column: 33, scope: !1358)
!1368 = !DILocation(line: 646, column: 4, scope: !1358)
!1369 = !DILocation(line: 645, column: 22, scope: !1358)
!1370 = !DILocation(line: 645, column: 3, scope: !1358)
!1371 = distinct !{!1371, !1360, !1372, !443, !444}
!1372 = !DILocation(line: 647, column: 46, scope: !1355)
!1373 = !DILocation(line: 648, column: 10, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 648, column: 3)
!1375 = !DILocation(line: 648, column: 8, scope: !1374)
!1376 = !DILocation(line: 648, column: 15, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 648, column: 3)
!1378 = !DILocation(line: 648, column: 17, scope: !1377)
!1379 = !DILocation(line: 648, column: 3, scope: !1374)
!1380 = !DILocation(line: 649, column: 26, scope: !1377)
!1381 = !DILocation(line: 649, column: 28, scope: !1377)
!1382 = !DILocation(line: 649, column: 24, scope: !1377)
!1383 = !DILocation(line: 650, column: 36, scope: !1377)
!1384 = !DILocation(line: 650, column: 38, scope: !1377)
!1385 = !DILocation(line: 650, column: 43, scope: !1377)
!1386 = !DILocation(line: 650, column: 33, scope: !1377)
!1387 = !DILocation(line: 649, column: 4, scope: !1377)
!1388 = !DILocation(line: 648, column: 22, scope: !1377)
!1389 = !DILocation(line: 648, column: 3, scope: !1377)
!1390 = distinct !{!1390, !1379, !1391, !443, !444}
!1391 = !DILocation(line: 650, column: 46, scope: !1374)
!1392 = !DILocation(line: 653, column: 3, scope: !1349)
!1393 = !DILocation(line: 654, column: 2, scope: !1349)
!1394 = !DILocation(line: 655, column: 2, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 655, column: 2)
!1396 = !DILocation(line: 655, column: 2, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 655, column: 2)
!1398 = !DILocation(line: 657, column: 30, scope: !1332)
!1399 = !DILocation(line: 657, column: 16, scope: !1332)
!1400 = !DILocation(line: 657, column: 44, scope: !1332)
!1401 = !DILocation(line: 657, column: 64, scope: !1332)
!1402 = !DILocation(line: 657, column: 69, scope: !1332)
!1403 = !DILocation(line: 657, column: 13, scope: !1332)
!1404 = !DILocation(line: 659, column: 9, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 659, column: 2)
!1406 = !DILocation(line: 659, column: 7, scope: !1405)
!1407 = !DILocation(line: 659, column: 14, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 659, column: 2)
!1409 = !DILocation(line: 659, column: 18, scope: !1408)
!1410 = !DILocation(line: 659, column: 16, scope: !1408)
!1411 = !DILocation(line: 659, column: 2, scope: !1405)
!1412 = !DILocation(line: 660, column: 29, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 660, column: 7)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 659, column: 39)
!1415 = !DILocation(line: 660, column: 7, scope: !1413)
!1416 = !DILocation(line: 660, column: 32, scope: !1413)
!1417 = !DILocation(line: 660, column: 40, scope: !1413)
!1418 = !DILocation(line: 660, column: 7, scope: !1414)
!1419 = !DILocation(line: 661, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 661, column: 4)
!1421 = !DILocation(line: 661, column: 4, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 661, column: 4)
!1423 = !DILocation(line: 661, column: 4, scope: !1413)
!1424 = !DILocation(line: 672, column: 4, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 672, column: 4)
!1426 = !DILocation(line: 672, column: 4, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 672, column: 4)
!1428 = !DILocation(line: 673, column: 2, scope: !1414)
!1429 = !DILocation(line: 659, column: 34, scope: !1408)
!1430 = !DILocation(line: 659, column: 2, scope: !1408)
!1431 = distinct !{!1431, !1411, !1432, !443, !444}
!1432 = !DILocation(line: 673, column: 2, scope: !1405)
!1433 = !DILocation(line: 674, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 674, column: 6)
!1435 = !DILocation(line: 674, column: 6, scope: !1332)
!1436 = !DILocation(line: 675, column: 3, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 675, column: 3)
!1438 = !DILocation(line: 675, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 675, column: 3)
!1440 = !DILocation(line: 675, column: 3, scope: !1434)
!1441 = !DILocation(line: 676, column: 1, scope: !1332)
!1442 = distinct !DISubprogram(name: "mtrr_state_warn", scope: !3, file: !3, line: 719, type: !379, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1443 = !{!1444}
!1444 = !DILocalVariable(name: "mask", scope: !1442, file: !3, line: 721, type: !42)
!1445 = !DILocation(line: 721, column: 2, scope: !1442)
!1446 = !DILocation(line: 721, column: 16, scope: !1442)
!1447 = !DILocation(line: 721, column: 23, scope: !1442)
!1448 = !DILocation(line: 723, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 723, column: 6)
!1450 = !DILocation(line: 723, column: 6, scope: !1442)
!1451 = !DILocation(line: 724, column: 3, scope: !1449)
!1452 = !DILocation(line: 725, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 725, column: 6)
!1454 = !DILocation(line: 725, column: 11, scope: !1453)
!1455 = !DILocation(line: 725, column: 6, scope: !1442)
!1456 = !DILocation(line: 726, column: 3, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 726, column: 3)
!1458 = !DILocation(line: 726, column: 3, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 726, column: 3)
!1460 = !DILocation(line: 726, column: 3, scope: !1453)
!1461 = !DILocation(line: 727, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 727, column: 6)
!1463 = !DILocation(line: 727, column: 11, scope: !1462)
!1464 = !DILocation(line: 727, column: 6, scope: !1442)
!1465 = !DILocation(line: 728, column: 3, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 728, column: 3)
!1467 = !DILocation(line: 728, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 728, column: 3)
!1469 = !DILocation(line: 728, column: 3, scope: !1462)
!1470 = !DILocation(line: 729, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 729, column: 6)
!1472 = !DILocation(line: 729, column: 11, scope: !1471)
!1473 = !DILocation(line: 729, column: 6, scope: !1442)
!1474 = !DILocation(line: 730, column: 3, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 730, column: 3)
!1476 = !DILocation(line: 730, column: 3, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 730, column: 3)
!1478 = !DILocation(line: 730, column: 3, scope: !1471)
!1479 = !DILocation(line: 732, column: 2, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 732, column: 2)
!1481 = !DILocation(line: 732, column: 2, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 732, column: 2)
!1483 = !DILocation(line: 733, column: 2, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 733, column: 2)
!1485 = !DILocation(line: 733, column: 2, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 733, column: 2)
!1487 = !DILocation(line: 734, column: 1, scope: !1442)
!1488 = distinct !DISubprogram(name: "mtrr_wrmsr", scope: !3, file: !3, line: 741, type: !1489, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !7, !7, !7}
!1491 = !{!1492, !1493, !1494, !1495, !1501, !1503}
!1492 = !DILocalVariable(name: "msr", arg: 1, scope: !1488, file: !3, line: 741, type: !7)
!1493 = !DILocalVariable(name: "a", arg: 2, scope: !1488, file: !3, line: 741, type: !7)
!1494 = !DILocalVariable(name: "b", arg: 3, scope: !1488, file: !3, line: 741, type: !7)
!1495 = !DILocalVariable(name: "pscr_ret__", scope: !1496, file: !3, line: 744, type: !40)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 744, column: 3)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 744, column: 3)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 744, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 743, column: 33)
!1500 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 743, column: 6)
!1501 = !DILocalVariable(name: "__vpp_verify", scope: !1502, file: !3, line: 744, type: !337)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 744, column: 3)
!1503 = !DILocalVariable(name: "pfo_val__", scope: !1504, file: !3, line: 744, type: !43)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 744, column: 3)
!1505 = !DILocation(line: 741, column: 26, scope: !1488)
!1506 = !DILocation(line: 741, column: 40, scope: !1488)
!1507 = !DILocation(line: 741, column: 52, scope: !1488)
!1508 = !DILocation(line: 743, column: 17, scope: !1500)
!1509 = !DILocation(line: 743, column: 22, scope: !1500)
!1510 = !DILocation(line: 743, column: 25, scope: !1500)
!1511 = !DILocation(line: 743, column: 6, scope: !1500)
!1512 = !DILocation(line: 743, column: 28, scope: !1500)
!1513 = !DILocation(line: 743, column: 6, scope: !1488)
!1514 = !DILocation(line: 744, column: 3, scope: !1498)
!1515 = !DILocation(line: 744, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 744, column: 3)
!1517 = !DILocation(line: 744, column: 3, scope: !1497)
!1518 = !DILocation(line: 744, column: 3, scope: !1496)
!1519 = !DILocation(line: 744, column: 3, scope: !1502)
!1520 = !DILocation(line: 744, column: 3, scope: !1504)
!1521 = !{i64 2155031920}
!1522 = !DILocation(line: 746, column: 2, scope: !1499)
!1523 = !DILocation(line: 747, column: 1, scope: !1488)
!1524 = distinct !DISubprogram(name: "wrmsr_safe", scope: !1293, file: !1293, line: 266, type: !1525, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!40, !7, !43, !43}
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "msr", arg: 1, scope: !1524, file: !1293, line: 266, type: !7)
!1529 = !DILocalVariable(name: "low", arg: 2, scope: !1524, file: !1293, line: 266, type: !43)
!1530 = !DILocalVariable(name: "high", arg: 3, scope: !1524, file: !1293, line: 266, type: !43)
!1531 = !DILocation(line: 266, column: 43, scope: !1524)
!1532 = !DILocation(line: 266, column: 52, scope: !1524)
!1533 = !DILocation(line: 266, column: 61, scope: !1524)
!1534 = !DILocation(line: 268, column: 31, scope: !1524)
!1535 = !DILocation(line: 268, column: 36, scope: !1524)
!1536 = !DILocation(line: 268, column: 41, scope: !1524)
!1537 = !DILocation(line: 268, column: 9, scope: !1524)
!1538 = !DILocation(line: 268, column: 2, scope: !1524)
!1539 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1540, file: !1540, line: 313, type: !1541, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
!1540 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !51}
!1543 = !{!1544}
!1544 = !DILocalVariable(name: "op", arg: 1, scope: !1539, file: !1540, line: 313, type: !51)
!1545 = !DILocation(line: 313, column: 66, scope: !1539)
!1546 = !DILocation(line: 313, column: 72, scope: !1539)
!1547 = distinct !DISubprogram(name: "generic_get_free_region", scope: !3, file: !3, line: 777, type: !170, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1549 = !DILocalVariable(name: "base", arg: 1, scope: !1547, file: !3, line: 777, type: !42)
!1550 = !DILocalVariable(name: "size", arg: 2, scope: !1547, file: !3, line: 777, type: !42)
!1551 = !DILocalVariable(name: "replace_reg", arg: 3, scope: !1547, file: !3, line: 777, type: !40)
!1552 = !DILocalVariable(name: "lbase", scope: !1547, file: !3, line: 779, type: !42)
!1553 = !DILocalVariable(name: "lsize", scope: !1547, file: !3, line: 779, type: !42)
!1554 = !DILocalVariable(name: "ltype", scope: !1547, file: !3, line: 780, type: !159)
!1555 = !DILocalVariable(name: "i", scope: !1547, file: !3, line: 781, type: !40)
!1556 = !DILocalVariable(name: "max", scope: !1547, file: !3, line: 781, type: !40)
!1557 = !DILocation(line: 777, column: 39, scope: !1547)
!1558 = !DILocation(line: 777, column: 59, scope: !1547)
!1559 = !DILocation(line: 777, column: 69, scope: !1547)
!1560 = !DILocation(line: 779, column: 2, scope: !1547)
!1561 = !DILocation(line: 779, column: 16, scope: !1547)
!1562 = !DILocation(line: 779, column: 23, scope: !1547)
!1563 = !DILocation(line: 780, column: 2, scope: !1547)
!1564 = !DILocation(line: 780, column: 12, scope: !1547)
!1565 = !DILocation(line: 781, column: 2, scope: !1547)
!1566 = !DILocation(line: 781, column: 6, scope: !1547)
!1567 = !DILocation(line: 781, column: 9, scope: !1547)
!1568 = !DILocation(line: 783, column: 8, scope: !1547)
!1569 = !DILocation(line: 783, column: 6, scope: !1547)
!1570 = !DILocation(line: 784, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 784, column: 6)
!1572 = !DILocation(line: 784, column: 18, scope: !1571)
!1573 = !DILocation(line: 784, column: 23, scope: !1571)
!1574 = !DILocation(line: 784, column: 26, scope: !1571)
!1575 = !DILocation(line: 784, column: 40, scope: !1571)
!1576 = !DILocation(line: 784, column: 38, scope: !1571)
!1577 = !DILocation(line: 784, column: 6, scope: !1547)
!1578 = !DILocation(line: 785, column: 10, scope: !1571)
!1579 = !DILocation(line: 785, column: 3, scope: !1571)
!1580 = !DILocation(line: 787, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 787, column: 2)
!1582 = !DILocation(line: 787, column: 7, scope: !1581)
!1583 = !DILocation(line: 787, column: 14, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 787, column: 2)
!1585 = !DILocation(line: 787, column: 18, scope: !1584)
!1586 = !DILocation(line: 787, column: 16, scope: !1584)
!1587 = !DILocation(line: 787, column: 2, scope: !1581)
!1588 = !DILocation(line: 788, column: 3, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 787, column: 28)
!1590 = !DILocation(line: 788, column: 12, scope: !1589)
!1591 = !DILocation(line: 788, column: 16, scope: !1589)
!1592 = !DILocation(line: 789, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 789, column: 7)
!1594 = !DILocation(line: 789, column: 13, scope: !1593)
!1595 = !DILocation(line: 789, column: 7, scope: !1589)
!1596 = !DILocation(line: 790, column: 11, scope: !1593)
!1597 = !DILocation(line: 790, column: 4, scope: !1593)
!1598 = !DILocation(line: 791, column: 2, scope: !1589)
!1599 = !DILocation(line: 787, column: 23, scope: !1584)
!1600 = !DILocation(line: 787, column: 2, scope: !1584)
!1601 = distinct !{!1601, !1587, !1602, !443, !444}
!1602 = !DILocation(line: 791, column: 2, scope: !1581)
!1603 = !DILocation(line: 793, column: 2, scope: !1547)
!1604 = !DILocation(line: 794, column: 1, scope: !1547)
!1605 = distinct !DISubprogram(name: "mtrr_disable", scope: !3, file: !3, line: 938, type: !379, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1606)
!1606 = !{!1607}
!1607 = !DILocalVariable(name: "__val", scope: !1608, file: !3, line: 941, type: !48)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 941, column: 2)
!1609 = !DILocation(line: 941, column: 2, scope: !1605)
!1610 = !DILocation(line: 941, column: 2, scope: !1608)
!1611 = !DILocation(line: 944, column: 30, scope: !1605)
!1612 = !DILocation(line: 944, column: 41, scope: !1605)
!1613 = !DILocation(line: 944, column: 66, scope: !1605)
!1614 = !DILocation(line: 944, column: 2, scope: !1605)
!1615 = !DILocation(line: 945, column: 1, scope: !1605)
!1616 = distinct !DISubprogram(name: "mtrr_enable", scope: !3, file: !3, line: 947, type: !379, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1617 = !DILocation(line: 950, column: 30, scope: !1616)
!1618 = !DILocation(line: 950, column: 42, scope: !1616)
!1619 = !DILocation(line: 950, column: 2, scope: !1616)
!1620 = !DILocation(line: 951, column: 1, scope: !1616)
!1621 = distinct !DISubprogram(name: "mtrr_generic_set_state", scope: !3, file: !3, line: 953, type: !379, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1622)
!1622 = !{!1623, !1624}
!1623 = !DILocalVariable(name: "mask", scope: !1621, file: !3, line: 955, type: !42)
!1624 = !DILocalVariable(name: "count", scope: !1621, file: !3, line: 955, type: !42)
!1625 = !DILocation(line: 955, column: 2, scope: !1621)
!1626 = !DILocation(line: 955, column: 16, scope: !1621)
!1627 = !DILocation(line: 955, column: 22, scope: !1621)
!1628 = !DILocation(line: 958, column: 9, scope: !1621)
!1629 = !DILocation(line: 958, column: 7, scope: !1621)
!1630 = !DILocation(line: 961, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 961, column: 2)
!1632 = !DILocation(line: 961, column: 7, scope: !1631)
!1633 = !DILocation(line: 961, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 961, column: 2)
!1635 = !DILocation(line: 961, column: 24, scope: !1634)
!1636 = !DILocation(line: 961, column: 2, scope: !1631)
!1637 = !DILocation(line: 962, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 962, column: 7)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 961, column: 53)
!1640 = !DILocation(line: 962, column: 12, scope: !1638)
!1641 = !DILocation(line: 962, column: 7, scope: !1639)
!1642 = !DILocation(line: 963, column: 12, scope: !1638)
!1643 = !DILocation(line: 963, column: 4, scope: !1638)
!1644 = !DILocation(line: 964, column: 8, scope: !1639)
!1645 = !DILocation(line: 965, column: 2, scope: !1639)
!1646 = !DILocation(line: 961, column: 44, scope: !1634)
!1647 = !DILocation(line: 961, column: 2, scope: !1634)
!1648 = distinct !{!1648, !1636, !1649, !443, !444}
!1649 = !DILocation(line: 965, column: 2, scope: !1631)
!1650 = !DILocation(line: 966, column: 1, scope: !1621)
!1651 = distinct !DISubprogram(name: "set_mtrr_state", scope: !3, file: !3, line: 909, type: !1652, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!42}
!1654 = !{!1655, !1656}
!1655 = !DILocalVariable(name: "change_mask", scope: !1651, file: !3, line: 911, type: !42)
!1656 = !DILocalVariable(name: "i", scope: !1651, file: !3, line: 912, type: !7)
!1657 = !DILocation(line: 911, column: 2, scope: !1651)
!1658 = !DILocation(line: 911, column: 16, scope: !1651)
!1659 = !DILocation(line: 912, column: 2, scope: !1651)
!1660 = !DILocation(line: 912, column: 15, scope: !1651)
!1661 = !DILocation(line: 914, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 914, column: 2)
!1663 = !DILocation(line: 914, column: 7, scope: !1662)
!1664 = !DILocation(line: 914, column: 14, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 914, column: 2)
!1666 = !DILocation(line: 914, column: 18, scope: !1665)
!1667 = !DILocation(line: 914, column: 16, scope: !1665)
!1668 = !DILocation(line: 914, column: 2, scope: !1662)
!1669 = !DILocation(line: 915, column: 27, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 915, column: 7)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 914, column: 39)
!1672 = !DILocation(line: 915, column: 53, scope: !1670)
!1673 = !DILocation(line: 915, column: 31, scope: !1670)
!1674 = !DILocation(line: 915, column: 7, scope: !1670)
!1675 = !DILocation(line: 915, column: 7, scope: !1671)
!1676 = !DILocation(line: 916, column: 16, scope: !1670)
!1677 = !DILocation(line: 916, column: 4, scope: !1670)
!1678 = !DILocation(line: 917, column: 2, scope: !1671)
!1679 = !DILocation(line: 914, column: 35, scope: !1665)
!1680 = !DILocation(line: 914, column: 2, scope: !1665)
!1681 = distinct !{!1681, !1668, !1682, !443, !444}
!1682 = !DILocation(line: 917, column: 2, scope: !1662)
!1683 = !DILocation(line: 919, column: 17, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 919, column: 6)
!1685 = !DILocation(line: 919, column: 28, scope: !1684)
!1686 = !DILocation(line: 919, column: 31, scope: !1684)
!1687 = !DILocation(line: 919, column: 6, scope: !1651)
!1688 = !DILocation(line: 920, column: 15, scope: !1684)
!1689 = !DILocation(line: 920, column: 3, scope: !1684)
!1690 = !DILocation(line: 926, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 926, column: 6)
!1692 = !DILocation(line: 926, column: 18, scope: !1691)
!1693 = !DILocation(line: 926, column: 54, scope: !1691)
!1694 = !DILocation(line: 926, column: 43, scope: !1691)
!1695 = !DILocation(line: 926, column: 40, scope: !1691)
!1696 = !DILocation(line: 926, column: 63, scope: !1691)
!1697 = !DILocation(line: 927, column: 8, scope: !1691)
!1698 = !DILocation(line: 927, column: 19, scope: !1691)
!1699 = !DILocation(line: 927, column: 43, scope: !1691)
!1700 = !DILocation(line: 927, column: 78, scope: !1691)
!1701 = !DILocation(line: 927, column: 67, scope: !1691)
!1702 = !DILocation(line: 927, column: 64, scope: !1691)
!1703 = !DILocation(line: 926, column: 6, scope: !1651)
!1704 = !DILocation(line: 929, column: 17, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 927, column: 87)
!1706 = !DILocation(line: 929, column: 28, scope: !1705)
!1707 = !DILocation(line: 930, column: 20, scope: !1705)
!1708 = !DILocation(line: 930, column: 9, scope: !1705)
!1709 = !DILocation(line: 929, column: 53, scope: !1705)
!1710 = !DILocation(line: 931, column: 21, scope: !1705)
!1711 = !DILocation(line: 931, column: 10, scope: !1705)
!1712 = !DILocation(line: 931, column: 29, scope: !1705)
!1713 = !DILocation(line: 931, column: 9, scope: !1705)
!1714 = !DILocation(line: 930, column: 29, scope: !1705)
!1715 = !DILocation(line: 929, column: 16, scope: !1705)
!1716 = !DILocation(line: 929, column: 14, scope: !1705)
!1717 = !DILocation(line: 932, column: 15, scope: !1705)
!1718 = !DILocation(line: 933, column: 2, scope: !1705)
!1719 = !DILocation(line: 935, column: 9, scope: !1651)
!1720 = !DILocation(line: 936, column: 1, scope: !1651)
!1721 = !DILocation(line: 935, column: 2, scope: !1651)
!1722 = distinct !DISubprogram(name: "set_bit", scope: !1723, file: !1723, line: 26, type: !1724, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1723 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !60, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1727 = !{!1728, !1729}
!1728 = !DILocalVariable(name: "nr", arg: 1, scope: !1722, file: !1723, line: 26, type: !60)
!1729 = !DILocalVariable(name: "addr", arg: 2, scope: !1722, file: !1723, line: 26, type: !1726)
!1730 = !DILocation(line: 26, column: 42, scope: !1722)
!1731 = !DILocation(line: 26, column: 70, scope: !1722)
!1732 = !DILocation(line: 28, column: 26, scope: !1722)
!1733 = !DILocation(line: 28, column: 33, scope: !1722)
!1734 = !DILocation(line: 28, column: 31, scope: !1722)
!1735 = !DILocation(line: 28, column: 2, scope: !1722)
!1736 = !DILocation(line: 29, column: 15, scope: !1722)
!1737 = !DILocation(line: 29, column: 19, scope: !1722)
!1738 = !DILocation(line: 29, column: 2, scope: !1722)
!1739 = !DILocation(line: 30, column: 1, scope: !1722)
!1740 = distinct !DISubprogram(name: "generic_validate_add_page", scope: !3, file: !3, line: 1010, type: !174, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746}
!1742 = !DILocalVariable(name: "base", arg: 1, scope: !1740, file: !3, line: 1010, type: !42)
!1743 = !DILocalVariable(name: "size", arg: 2, scope: !1740, file: !3, line: 1010, type: !42)
!1744 = !DILocalVariable(name: "type", arg: 3, scope: !1740, file: !3, line: 1011, type: !7)
!1745 = !DILocalVariable(name: "lbase", scope: !1740, file: !3, line: 1013, type: !42)
!1746 = !DILocalVariable(name: "last", scope: !1740, file: !3, line: 1013, type: !42)
!1747 = !DILocation(line: 1010, column: 45, scope: !1740)
!1748 = !DILocation(line: 1010, column: 65, scope: !1740)
!1749 = !DILocation(line: 1011, column: 23, scope: !1740)
!1750 = !DILocation(line: 1013, column: 2, scope: !1740)
!1751 = !DILocation(line: 1013, column: 16, scope: !1740)
!1752 = !DILocation(line: 1013, column: 23, scope: !1740)
!1753 = !DILocation(line: 1019, column: 6, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1019, column: 6)
!1755 = !DILocation(line: 1019, column: 14, scope: !1754)
!1756 = !DILocation(line: 1019, column: 35, scope: !1754)
!1757 = !DILocation(line: 1019, column: 52, scope: !1754)
!1758 = !DILocation(line: 1019, column: 38, scope: !1754)
!1759 = !DILocation(line: 1019, column: 56, scope: !1754)
!1760 = !DILocation(line: 1019, column: 61, scope: !1754)
!1761 = !DILocation(line: 1020, column: 20, scope: !1754)
!1762 = !DILocation(line: 1020, column: 6, scope: !1754)
!1763 = !DILocation(line: 1020, column: 30, scope: !1754)
!1764 = !DILocation(line: 1020, column: 35, scope: !1754)
!1765 = !DILocation(line: 1021, column: 20, scope: !1754)
!1766 = !DILocation(line: 1021, column: 6, scope: !1754)
!1767 = !DILocation(line: 1021, column: 33, scope: !1754)
!1768 = !DILocation(line: 1019, column: 6, scope: !1740)
!1769 = !DILocation(line: 1022, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1022, column: 7)
!1771 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1021, column: 39)
!1772 = !DILocation(line: 1022, column: 12, scope: !1770)
!1773 = !DILocation(line: 1022, column: 7, scope: !1771)
!1774 = !DILocation(line: 1023, column: 4, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1023, column: 4)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1022, column: 46)
!1777 = !DILocation(line: 1023, column: 4, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 1023, column: 4)
!1779 = !DILocation(line: 1024, column: 4, scope: !1776)
!1780 = !DILocation(line: 1026, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1026, column: 7)
!1782 = !DILocation(line: 1026, column: 16, scope: !1781)
!1783 = !DILocation(line: 1026, column: 14, scope: !1781)
!1784 = !DILocation(line: 1026, column: 21, scope: !1781)
!1785 = !DILocation(line: 1026, column: 31, scope: !1781)
!1786 = !DILocation(line: 1026, column: 34, scope: !1781)
!1787 = !DILocation(line: 1026, column: 39, scope: !1781)
!1788 = !DILocation(line: 1026, column: 50, scope: !1781)
!1789 = !DILocation(line: 1027, column: 8, scope: !1781)
!1790 = !DILocation(line: 1027, column: 13, scope: !1781)
!1791 = !DILocation(line: 1028, column: 8, scope: !1781)
!1792 = !DILocation(line: 1028, column: 11, scope: !1781)
!1793 = !DILocation(line: 1028, column: 16, scope: !1781)
!1794 = !DILocation(line: 1026, column: 7, scope: !1771)
!1795 = !DILocation(line: 1029, column: 4, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1029, column: 4)
!1797 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 1028, column: 38)
!1798 = !DILocation(line: 1029, column: 4, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 1029, column: 4)
!1800 = !DILocation(line: 1030, column: 4, scope: !1797)
!1801 = !DILocation(line: 1032, column: 2, scope: !1771)
!1802 = !DILocation(line: 1038, column: 9, scope: !1740)
!1803 = !DILocation(line: 1038, column: 16, scope: !1740)
!1804 = !DILocation(line: 1038, column: 14, scope: !1740)
!1805 = !DILocation(line: 1038, column: 21, scope: !1740)
!1806 = !DILocation(line: 1038, column: 7, scope: !1740)
!1807 = !DILocation(line: 1039, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1039, column: 2)
!1809 = !DILocation(line: 1039, column: 13, scope: !1808)
!1810 = !DILocation(line: 1039, column: 7, scope: !1808)
!1811 = !DILocation(line: 1039, column: 23, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1039, column: 2)
!1813 = !DILocation(line: 1039, column: 29, scope: !1812)
!1814 = !DILocation(line: 1039, column: 34, scope: !1812)
!1815 = !DILocation(line: 1039, column: 38, scope: !1812)
!1816 = !DILocation(line: 1039, column: 43, scope: !1812)
!1817 = !DILocation(line: 0, scope: !1812)
!1818 = !DILocation(line: 1039, column: 2, scope: !1808)
!1819 = !DILocation(line: 1040, column: 15, scope: !1812)
!1820 = !DILocation(line: 1040, column: 21, scope: !1812)
!1821 = !DILocation(line: 1040, column: 13, scope: !1812)
!1822 = !DILocation(line: 1040, column: 34, scope: !1812)
!1823 = !DILocation(line: 1040, column: 39, scope: !1812)
!1824 = !DILocation(line: 1040, column: 32, scope: !1812)
!1825 = !DILocation(line: 1039, column: 2, scope: !1812)
!1826 = distinct !{!1826, !1818, !1827, !443, !444}
!1827 = !DILocation(line: 1041, column: 3, scope: !1808)
!1828 = !DILocation(line: 1042, column: 6, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1042, column: 6)
!1830 = !DILocation(line: 1042, column: 15, scope: !1829)
!1831 = !DILocation(line: 1042, column: 12, scope: !1829)
!1832 = !DILocation(line: 1042, column: 6, scope: !1740)
!1833 = !DILocation(line: 1043, column: 3, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1043, column: 3)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 1042, column: 21)
!1836 = !DILocation(line: 1043, column: 3, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 1043, column: 3)
!1838 = !DILocation(line: 1044, column: 3, scope: !1835)
!1839 = !DILocation(line: 1046, column: 2, scope: !1740)
!1840 = !DILocation(line: 1047, column: 1, scope: !1740)
!1841 = distinct !DISubprogram(name: "positive_have_wrcomb", scope: !3, file: !3, line: 1056, type: !178, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1842 = !DILocation(line: 1058, column: 2, scope: !1841)
!1843 = distinct !DISubprogram(name: "generic_set_mtrr", scope: !3, file: !3, line: 978, type: !157, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1855, !1856, !1860}
!1845 = !DILocalVariable(name: "reg", arg: 1, scope: !1843, file: !3, line: 978, type: !7)
!1846 = !DILocalVariable(name: "base", arg: 2, scope: !1843, file: !3, line: 978, type: !42)
!1847 = !DILocalVariable(name: "size", arg: 3, scope: !1843, file: !3, line: 979, type: !42)
!1848 = !DILocalVariable(name: "type", arg: 4, scope: !1843, file: !3, line: 979, type: !159)
!1849 = !DILocalVariable(name: "flags", scope: !1843, file: !3, line: 981, type: !42)
!1850 = !DILocalVariable(name: "vr", scope: !1843, file: !3, line: 982, type: !827)
!1851 = !DILocalVariable(name: "__dummy", scope: !1852, file: !3, line: 986, type: !42)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 986, column: 2)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 986, column: 2)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 986, column: 2)
!1855 = !DILocalVariable(name: "__dummy2", scope: !1852, file: !3, line: 986, type: !42)
!1856 = !DILocalVariable(name: "__dummy", scope: !1857, file: !3, line: 1007, type: !42)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 1007, column: 2)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1007, column: 2)
!1859 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1007, column: 2)
!1860 = !DILocalVariable(name: "__dummy2", scope: !1857, file: !3, line: 1007, type: !42)
!1861 = !DILocation(line: 978, column: 43, scope: !1843)
!1862 = !DILocation(line: 978, column: 62, scope: !1843)
!1863 = !DILocation(line: 979, column: 23, scope: !1843)
!1864 = !DILocation(line: 979, column: 39, scope: !1843)
!1865 = !DILocation(line: 981, column: 2, scope: !1843)
!1866 = !DILocation(line: 981, column: 16, scope: !1843)
!1867 = !DILocation(line: 982, column: 2, scope: !1843)
!1868 = !DILocation(line: 982, column: 25, scope: !1843)
!1869 = !DILocation(line: 984, column: 30, scope: !1843)
!1870 = !DILocation(line: 984, column: 8, scope: !1843)
!1871 = !DILocation(line: 984, column: 5, scope: !1843)
!1872 = !DILocation(line: 986, column: 2, scope: !1843)
!1873 = !DILocation(line: 986, column: 2, scope: !1854)
!1874 = !DILocation(line: 986, column: 2, scope: !1852)
!1875 = !DILocation(line: 986, column: 2, scope: !1853)
!1876 = !DILocation(line: 987, column: 2, scope: !1843)
!1877 = !DILocation(line: 989, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 989, column: 6)
!1879 = !DILocation(line: 989, column: 11, scope: !1878)
!1880 = !DILocation(line: 989, column: 6, scope: !1843)
!1881 = !DILocation(line: 994, column: 14, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 989, column: 17)
!1883 = !DILocation(line: 994, column: 3, scope: !1882)
!1884 = !DILocation(line: 995, column: 10, scope: !1882)
!1885 = !DILocation(line: 995, column: 3, scope: !1882)
!1886 = !DILocation(line: 996, column: 2, scope: !1882)
!1887 = !DILocation(line: 997, column: 17, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 996, column: 9)
!1889 = !DILocation(line: 997, column: 22, scope: !1888)
!1890 = !DILocation(line: 997, column: 38, scope: !1888)
!1891 = !DILocation(line: 997, column: 36, scope: !1888)
!1892 = !DILocation(line: 997, column: 3, scope: !1888)
!1893 = !DILocation(line: 997, column: 7, scope: !1888)
!1894 = !DILocation(line: 997, column: 15, scope: !1888)
!1895 = !DILocation(line: 998, column: 18, scope: !1888)
!1896 = !DILocation(line: 998, column: 23, scope: !1888)
!1897 = !DILocation(line: 998, column: 48, scope: !1888)
!1898 = !DILocation(line: 998, column: 47, scope: !1888)
!1899 = !DILocation(line: 998, column: 45, scope: !1888)
!1900 = !DILocation(line: 998, column: 17, scope: !1888)
!1901 = !DILocation(line: 998, column: 3, scope: !1888)
!1902 = !DILocation(line: 998, column: 7, scope: !1888)
!1903 = !DILocation(line: 998, column: 15, scope: !1888)
!1904 = !DILocation(line: 999, column: 18, scope: !1888)
!1905 = !DILocation(line: 999, column: 17, scope: !1888)
!1906 = !DILocation(line: 999, column: 23, scope: !1888)
!1907 = !DILocation(line: 999, column: 37, scope: !1888)
!1908 = !DILocation(line: 999, column: 3, scope: !1888)
!1909 = !DILocation(line: 999, column: 7, scope: !1888)
!1910 = !DILocation(line: 999, column: 15, scope: !1888)
!1911 = !DILocation(line: 1000, column: 19, scope: !1888)
!1912 = !DILocation(line: 1000, column: 18, scope: !1888)
!1913 = !DILocation(line: 1000, column: 24, scope: !1888)
!1914 = !DILocation(line: 1000, column: 49, scope: !1888)
!1915 = !DILocation(line: 1000, column: 48, scope: !1888)
!1916 = !DILocation(line: 1000, column: 46, scope: !1888)
!1917 = !DILocation(line: 1000, column: 17, scope: !1888)
!1918 = !DILocation(line: 1000, column: 3, scope: !1888)
!1919 = !DILocation(line: 1000, column: 7, scope: !1888)
!1920 = !DILocation(line: 1000, column: 15, scope: !1888)
!1921 = !DILocation(line: 1002, column: 14, scope: !1888)
!1922 = !DILocation(line: 1002, column: 37, scope: !1888)
!1923 = !DILocation(line: 1002, column: 41, scope: !1888)
!1924 = !DILocation(line: 1002, column: 50, scope: !1888)
!1925 = !DILocation(line: 1002, column: 54, scope: !1888)
!1926 = !DILocation(line: 1002, column: 3, scope: !1888)
!1927 = !DILocation(line: 1003, column: 14, scope: !1888)
!1928 = !DILocation(line: 1003, column: 37, scope: !1888)
!1929 = !DILocation(line: 1003, column: 41, scope: !1888)
!1930 = !DILocation(line: 1003, column: 50, scope: !1888)
!1931 = !DILocation(line: 1003, column: 54, scope: !1888)
!1932 = !DILocation(line: 1003, column: 3, scope: !1888)
!1933 = !DILocation(line: 1006, column: 2, scope: !1843)
!1934 = !DILocation(line: 1007, column: 2, scope: !1843)
!1935 = !DILocation(line: 1007, column: 2, scope: !1859)
!1936 = !DILocation(line: 1007, column: 2, scope: !1857)
!1937 = !DILocation(line: 1007, column: 2, scope: !1858)
!1938 = !DILocation(line: 1007, column: 2, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 1007, column: 2)
!1940 = !DILocation(line: 1008, column: 1, scope: !1843)
!1941 = !DILocation(line: 796, column: 43, scope: !318)
!1942 = !DILocation(line: 796, column: 63, scope: !318)
!1943 = !DILocation(line: 797, column: 24, scope: !318)
!1944 = !DILocation(line: 797, column: 41, scope: !318)
!1945 = !DILocation(line: 799, column: 2, scope: !318)
!1946 = !DILocation(line: 799, column: 6, scope: !318)
!1947 = !DILocation(line: 799, column: 15, scope: !318)
!1948 = !DILocation(line: 799, column: 24, scope: !318)
!1949 = !DILocation(line: 799, column: 33, scope: !318)
!1950 = !DILocation(line: 800, column: 2, scope: !318)
!1951 = !DILocation(line: 800, column: 15, scope: !318)
!1952 = !DILocation(line: 801, column: 2, scope: !318)
!1953 = !DILocation(line: 801, column: 6, scope: !318)
!1954 = !DILocation(line: 801, column: 11, scope: !318)
!1955 = !DILocation(line: 807, column: 2, scope: !334)
!1956 = !DILocation(line: 807, column: 2, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !334, file: !3, line: 807, column: 2)
!1958 = !{i64 2155033024}
!1959 = !DILocation(line: 807, column: 2, scope: !333)
!1960 = !DILocation(line: 807, column: 2, scope: !332)
!1961 = !DILocation(line: 807, column: 2, scope: !336)
!1962 = !DILocation(line: 807, column: 2, scope: !340)
!1963 = !{i64 2155035662}
!1964 = !DILocation(line: 809, column: 2, scope: !318)
!1965 = !DILocation(line: 809, column: 2, scope: !342)
!1966 = !DILocation(line: 811, column: 8, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !318, file: !3, line: 811, column: 6)
!1968 = !DILocation(line: 811, column: 16, scope: !1967)
!1969 = !DILocation(line: 811, column: 6, scope: !318)
!1970 = !DILocation(line: 813, column: 4, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 811, column: 36)
!1972 = !DILocation(line: 813, column: 9, scope: !1971)
!1973 = !DILocation(line: 814, column: 4, scope: !1971)
!1974 = !DILocation(line: 814, column: 9, scope: !1971)
!1975 = !DILocation(line: 815, column: 4, scope: !1971)
!1976 = !DILocation(line: 815, column: 9, scope: !1971)
!1977 = !DILocation(line: 816, column: 3, scope: !1971)
!1978 = !DILocation(line: 819, column: 2, scope: !318)
!1979 = !DILocation(line: 819, column: 2, scope: !344)
!1980 = !DILocation(line: 822, column: 13, scope: !318)
!1981 = !DILocation(line: 822, column: 8, scope: !318)
!1982 = !DILocation(line: 822, column: 21, scope: !318)
!1983 = !DILocation(line: 822, column: 30, scope: !318)
!1984 = !DILocation(line: 822, column: 38, scope: !318)
!1985 = !DILocation(line: 822, column: 27, scope: !318)
!1986 = !DILocation(line: 822, column: 6, scope: !318)
!1987 = !DILocation(line: 823, column: 14, scope: !318)
!1988 = !DILocation(line: 823, column: 9, scope: !318)
!1989 = !DILocation(line: 823, column: 27, scope: !318)
!1990 = !DILocation(line: 823, column: 35, scope: !318)
!1991 = !DILocation(line: 823, column: 33, scope: !318)
!1992 = !DILocation(line: 823, column: 7, scope: !318)
!1993 = !DILocation(line: 826, column: 13, scope: !318)
!1994 = !DILocation(line: 826, column: 7, scope: !318)
!1995 = !DILocation(line: 826, column: 5, scope: !318)
!1996 = !DILocation(line: 827, column: 6, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !318, file: !3, line: 827, column: 6)
!1998 = !DILocation(line: 827, column: 9, scope: !1997)
!1999 = !DILocation(line: 827, column: 6, scope: !318)
!2000 = !DILocation(line: 828, column: 20, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 827, column: 14)
!2002 = !DILocation(line: 828, column: 23, scope: !2001)
!2003 = !DILocation(line: 828, column: 17, scope: !2001)
!2004 = !DILocation(line: 828, column: 29, scope: !2001)
!2005 = !DILocation(line: 828, column: 10, scope: !2001)
!2006 = !DILocation(line: 828, column: 7, scope: !2001)
!2007 = !DILocation(line: 830, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 830, column: 7)
!2009 = !DILocation(line: 830, column: 14, scope: !2008)
!2010 = !DILocation(line: 830, column: 11, scope: !2008)
!2011 = !DILocation(line: 830, column: 7, scope: !2001)
!2012 = !DILocation(line: 831, column: 4, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 831, column: 4)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 830, column: 20)
!2015 = !DILocation(line: 831, column: 4, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 831, column: 4)
!2017 = !DILocation(line: 832, column: 4, scope: !2014)
!2018 = !DILocation(line: 833, column: 11, scope: !2014)
!2019 = !DILocation(line: 833, column: 9, scope: !2014)
!2020 = !DILocation(line: 834, column: 3, scope: !2014)
!2021 = !DILocation(line: 835, column: 2, scope: !2001)
!2022 = !DILocation(line: 841, column: 11, scope: !318)
!2023 = !DILocation(line: 841, column: 10, scope: !318)
!2024 = !DILocation(line: 841, column: 16, scope: !318)
!2025 = !DILocation(line: 841, column: 3, scope: !318)
!2026 = !DILocation(line: 841, column: 8, scope: !318)
!2027 = !DILocation(line: 842, column: 15, scope: !318)
!2028 = !DILocation(line: 842, column: 10, scope: !318)
!2029 = !DILocation(line: 842, column: 23, scope: !318)
!2030 = !DILocation(line: 842, column: 46, scope: !318)
!2031 = !DILocation(line: 842, column: 54, scope: !318)
!2032 = !DILocation(line: 842, column: 44, scope: !318)
!2033 = !DILocation(line: 842, column: 3, scope: !318)
!2034 = !DILocation(line: 842, column: 8, scope: !318)
!2035 = !DILocation(line: 843, column: 10, scope: !318)
!2036 = !DILocation(line: 843, column: 18, scope: !318)
!2037 = !DILocation(line: 843, column: 3, scope: !318)
!2038 = !DILocation(line: 843, column: 8, scope: !318)
!2039 = !DILocation(line: 843, column: 2, scope: !318)
!2040 = !DILocation(line: 845, column: 1, scope: !318)
!2041 = !DILocation(line: 846, column: 2, scope: !318)
!2042 = !DILocation(line: 846, column: 2, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !318, file: !3, line: 846, column: 2)
!2044 = !{i64 2155038473}
!2045 = !DILocation(line: 846, column: 2, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 846, column: 2)
!2047 = !DILocation(line: 846, column: 2, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 846, column: 2)
!2049 = !{i64 2155038655}
!2050 = !DILocation(line: 847, column: 1, scope: !318)
!2051 = distinct !DISubprogram(name: "generic_have_wrcomb", scope: !3, file: !3, line: 1049, type: !178, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "config", scope: !2051, file: !3, line: 1051, type: !42)
!2054 = !DILocalVariable(name: "dummy", scope: !2051, file: !3, line: 1051, type: !42)
!2055 = !DILocalVariable(name: "__val", scope: !2056, file: !3, line: 1052, type: !48)
!2056 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 1052, column: 2)
!2057 = !DILocation(line: 1051, column: 2, scope: !2051)
!2058 = !DILocation(line: 1051, column: 16, scope: !2051)
!2059 = !DILocation(line: 1051, column: 24, scope: !2051)
!2060 = !DILocation(line: 1052, column: 2, scope: !2051)
!2061 = !DILocation(line: 1052, column: 2, scope: !2056)
!2062 = !DILocation(line: 1053, column: 9, scope: !2051)
!2063 = !DILocation(line: 1053, column: 16, scope: !2051)
!2064 = !DILocation(line: 1054, column: 1, scope: !2051)
!2065 = !DILocation(line: 1053, column: 2, scope: !2051)
!2066 = !DISubprogram(name: "strcmp", scope: !2067, file: !2067, line: 88, type: !2068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2067 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!40, !51, !51}
!2070 = distinct !DISubprogram(name: "get_var_mtrr_state", scope: !3, file: !3, line: 132, type: !2071, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2074)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!396, !7, !2073, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!2074 = !{!2075, !2076, !2077, !2078}
!2075 = !DILocalVariable(name: "reg", arg: 1, scope: !2070, file: !3, line: 132, type: !7)
!2076 = !DILocalVariable(name: "start", arg: 2, scope: !2070, file: !3, line: 132, type: !2073)
!2077 = !DILocalVariable(name: "size", arg: 3, scope: !2070, file: !3, line: 132, type: !2073)
!2078 = !DILocalVariable(name: "mtrr", scope: !2070, file: !3, line: 134, type: !827)
!2079 = !DILocation(line: 132, column: 43, scope: !2070)
!2080 = !DILocation(line: 132, column: 53, scope: !2070)
!2081 = !DILocation(line: 132, column: 65, scope: !2070)
!2082 = !DILocation(line: 134, column: 2, scope: !2070)
!2083 = !DILocation(line: 134, column: 25, scope: !2070)
!2084 = !DILocation(line: 134, column: 56, scope: !2070)
!2085 = !DILocation(line: 134, column: 54, scope: !2070)
!2086 = !DILocation(line: 136, column: 8, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 136, column: 6)
!2088 = !DILocation(line: 136, column: 14, scope: !2087)
!2089 = !DILocation(line: 136, column: 22, scope: !2087)
!2090 = !DILocation(line: 136, column: 6, scope: !2070)
!2091 = !DILocation(line: 137, column: 3, scope: !2087)
!2092 = !DILocation(line: 139, column: 18, scope: !2070)
!2093 = !DILocation(line: 139, column: 24, scope: !2070)
!2094 = !DILocation(line: 139, column: 13, scope: !2070)
!2095 = !DILocation(line: 139, column: 33, scope: !2070)
!2096 = !DILocation(line: 139, column: 43, scope: !2070)
!2097 = !DILocation(line: 139, column: 49, scope: !2070)
!2098 = !DILocation(line: 139, column: 57, scope: !2070)
!2099 = !DILocation(line: 139, column: 40, scope: !2070)
!2100 = !DILocation(line: 139, column: 3, scope: !2070)
!2101 = !DILocation(line: 139, column: 9, scope: !2070)
!2102 = !DILocation(line: 140, column: 31, scope: !2070)
!2103 = !DILocation(line: 140, column: 37, scope: !2070)
!2104 = !DILocation(line: 140, column: 26, scope: !2070)
!2105 = !DILocation(line: 140, column: 46, scope: !2070)
!2106 = !DILocation(line: 141, column: 11, scope: !2070)
!2107 = !DILocation(line: 141, column: 17, scope: !2070)
!2108 = !DILocation(line: 141, column: 25, scope: !2070)
!2109 = !DILocation(line: 140, column: 53, scope: !2070)
!2110 = !DILocation(line: 140, column: 10, scope: !2070)
!2111 = !DILocation(line: 140, column: 3, scope: !2070)
!2112 = !DILocation(line: 140, column: 8, scope: !2070)
!2113 = !DILocation(line: 143, column: 9, scope: !2070)
!2114 = !DILocation(line: 143, column: 15, scope: !2070)
!2115 = !DILocation(line: 143, column: 23, scope: !2070)
!2116 = !DILocation(line: 143, column: 2, scope: !2070)
!2117 = !DILocation(line: 144, column: 1, scope: !2070)
!2118 = distinct !DISubprogram(name: "get_mtrr_size", scope: !3, file: !3, line: 122, type: !2119, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!48, !48}
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "mask", arg: 1, scope: !2118, file: !3, line: 122, type: !48)
!2123 = !DILocalVariable(name: "size", scope: !2118, file: !3, line: 124, type: !48)
!2124 = !DILocation(line: 122, column: 30, scope: !2118)
!2125 = !DILocation(line: 124, column: 2, scope: !2118)
!2126 = !DILocation(line: 124, column: 6, scope: !2118)
!2127 = !DILocation(line: 126, column: 15, scope: !2118)
!2128 = !DILocation(line: 126, column: 10, scope: !2118)
!2129 = !DILocation(line: 126, column: 28, scope: !2118)
!2130 = !DILocation(line: 126, column: 7, scope: !2118)
!2131 = !DILocation(line: 127, column: 10, scope: !2118)
!2132 = !DILocation(line: 127, column: 9, scope: !2118)
!2133 = !DILocation(line: 127, column: 7, scope: !2118)
!2134 = !DILocation(line: 129, column: 9, scope: !2118)
!2135 = !DILocation(line: 130, column: 1, scope: !2118)
!2136 = !DILocation(line: 129, column: 2, scope: !2118)
!2137 = distinct !DISubprogram(name: "add_map_entry_at", scope: !3, file: !3, line: 180, type: !2138, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!40, !48, !48, !396, !40}
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2150, !2153, !2157}
!2141 = !DILocalVariable(name: "start", arg: 1, scope: !2137, file: !3, line: 180, type: !48)
!2142 = !DILocalVariable(name: "end", arg: 2, scope: !2137, file: !3, line: 180, type: !48)
!2143 = !DILocalVariable(name: "type", arg: 3, scope: !2137, file: !3, line: 180, type: !396)
!2144 = !DILocalVariable(name: "idx", arg: 4, scope: !2137, file: !3, line: 180, type: !40)
!2145 = !DILocalVariable(name: "merge_prev", scope: !2137, file: !3, line: 182, type: !182)
!2146 = !DILocalVariable(name: "merge_next", scope: !2137, file: !3, line: 182, type: !182)
!2147 = !DILocalVariable(name: "prev", scope: !2148, file: !3, line: 188, type: !246)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 187, column: 15)
!2149 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 187, column: 6)
!2150 = !DILocalVariable(name: "next", scope: !2151, file: !3, line: 195, type: !246)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 194, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 194, column: 6)
!2153 = !DILocalVariable(name: "__ret_warn_on", scope: !2154, file: !3, line: 217, type: !40)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 217, column: 3)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 216, column: 37)
!2156 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 216, column: 6)
!2157 = !DILocalVariable(name: "__flags", scope: !2158, file: !3, line: 217, type: !40)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 217, column: 3)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 217, column: 3)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 217, column: 3)
!2161 = !DILocation(line: 180, column: 33, scope: !2137)
!2162 = !DILocation(line: 180, column: 44, scope: !2137)
!2163 = !DILocation(line: 180, column: 52, scope: !2137)
!2164 = !DILocation(line: 180, column: 62, scope: !2137)
!2165 = !DILocation(line: 182, column: 2, scope: !2137)
!2166 = !DILocation(line: 182, column: 7, scope: !2137)
!2167 = !DILocation(line: 182, column: 27, scope: !2137)
!2168 = !DILocation(line: 184, column: 6, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 184, column: 6)
!2170 = !DILocation(line: 184, column: 15, scope: !2169)
!2171 = !DILocation(line: 184, column: 12, scope: !2169)
!2172 = !DILocation(line: 184, column: 6, scope: !2137)
!2173 = !DILocation(line: 185, column: 3, scope: !2169)
!2174 = !DILocation(line: 187, column: 6, scope: !2149)
!2175 = !DILocation(line: 187, column: 10, scope: !2149)
!2176 = !DILocation(line: 187, column: 6, scope: !2137)
!2177 = !DILocation(line: 188, column: 3, scope: !2148)
!2178 = !DILocation(line: 188, column: 21, scope: !2148)
!2179 = !DILocation(line: 188, column: 28, scope: !2148)
!2180 = !DILocation(line: 188, column: 40, scope: !2148)
!2181 = !DILocation(line: 188, column: 38, scope: !2148)
!2182 = !DILocation(line: 188, column: 44, scope: !2148)
!2183 = !DILocation(line: 190, column: 8, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 190, column: 7)
!2185 = !DILocation(line: 190, column: 14, scope: !2184)
!2186 = !DILocation(line: 190, column: 20, scope: !2184)
!2187 = !DILocation(line: 190, column: 23, scope: !2184)
!2188 = !DILocation(line: 190, column: 32, scope: !2184)
!2189 = !DILocation(line: 190, column: 38, scope: !2184)
!2190 = !DILocation(line: 190, column: 29, scope: !2184)
!2191 = !DILocation(line: 190, column: 42, scope: !2184)
!2192 = !DILocation(line: 190, column: 45, scope: !2184)
!2193 = !DILocation(line: 190, column: 53, scope: !2184)
!2194 = !DILocation(line: 190, column: 59, scope: !2184)
!2195 = !DILocation(line: 190, column: 50, scope: !2184)
!2196 = !DILocation(line: 190, column: 7, scope: !2148)
!2197 = !DILocation(line: 191, column: 15, scope: !2184)
!2198 = !DILocation(line: 191, column: 4, scope: !2184)
!2199 = !DILocation(line: 192, column: 2, scope: !2149)
!2200 = !DILocation(line: 192, column: 2, scope: !2148)
!2201 = !DILocation(line: 194, column: 6, scope: !2152)
!2202 = !DILocation(line: 194, column: 12, scope: !2152)
!2203 = !DILocation(line: 194, column: 10, scope: !2152)
!2204 = !DILocation(line: 194, column: 6, scope: !2137)
!2205 = !DILocation(line: 195, column: 3, scope: !2151)
!2206 = !DILocation(line: 195, column: 21, scope: !2151)
!2207 = !DILocation(line: 195, column: 28, scope: !2151)
!2208 = !DILocation(line: 195, column: 40, scope: !2151)
!2209 = !DILocation(line: 195, column: 38, scope: !2151)
!2210 = !DILocation(line: 197, column: 8, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 197, column: 7)
!2212 = !DILocation(line: 197, column: 14, scope: !2211)
!2213 = !DILocation(line: 197, column: 20, scope: !2211)
!2214 = !DILocation(line: 197, column: 23, scope: !2211)
!2215 = !DILocation(line: 197, column: 30, scope: !2211)
!2216 = !DILocation(line: 197, column: 36, scope: !2211)
!2217 = !DILocation(line: 197, column: 27, scope: !2211)
!2218 = !DILocation(line: 197, column: 42, scope: !2211)
!2219 = !DILocation(line: 197, column: 45, scope: !2211)
!2220 = !DILocation(line: 197, column: 53, scope: !2211)
!2221 = !DILocation(line: 197, column: 59, scope: !2211)
!2222 = !DILocation(line: 197, column: 50, scope: !2211)
!2223 = !DILocation(line: 197, column: 7, scope: !2151)
!2224 = !DILocation(line: 198, column: 15, scope: !2211)
!2225 = !DILocation(line: 198, column: 4, scope: !2211)
!2226 = !DILocation(line: 199, column: 2, scope: !2152)
!2227 = !DILocation(line: 199, column: 2, scope: !2151)
!2228 = !DILocation(line: 201, column: 6, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 201, column: 6)
!2230 = !DILocation(line: 201, column: 17, scope: !2229)
!2231 = !DILocation(line: 201, column: 20, scope: !2229)
!2232 = !DILocation(line: 201, column: 6, scope: !2137)
!2233 = !DILocation(line: 202, column: 28, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 201, column: 32)
!2235 = !DILocation(line: 202, column: 38, scope: !2234)
!2236 = !DILocation(line: 202, column: 43, scope: !2234)
!2237 = !DILocation(line: 202, column: 3, scope: !2234)
!2238 = !DILocation(line: 202, column: 13, scope: !2234)
!2239 = !DILocation(line: 202, column: 17, scope: !2234)
!2240 = !DILocation(line: 202, column: 22, scope: !2234)
!2241 = !DILocation(line: 202, column: 26, scope: !2234)
!2242 = !DILocation(line: 203, column: 19, scope: !2234)
!2243 = !DILocation(line: 203, column: 3, scope: !2234)
!2244 = !DILocation(line: 204, column: 3, scope: !2234)
!2245 = !DILocation(line: 206, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 206, column: 6)
!2247 = !DILocation(line: 206, column: 6, scope: !2137)
!2248 = !DILocation(line: 207, column: 28, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 206, column: 18)
!2250 = !DILocation(line: 207, column: 3, scope: !2249)
!2251 = !DILocation(line: 207, column: 13, scope: !2249)
!2252 = !DILocation(line: 207, column: 17, scope: !2249)
!2253 = !DILocation(line: 207, column: 22, scope: !2249)
!2254 = !DILocation(line: 207, column: 26, scope: !2249)
!2255 = !DILocation(line: 208, column: 3, scope: !2249)
!2256 = !DILocation(line: 210, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 210, column: 6)
!2258 = !DILocation(line: 210, column: 6, scope: !2137)
!2259 = !DILocation(line: 211, column: 26, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 210, column: 18)
!2261 = !DILocation(line: 211, column: 3, scope: !2260)
!2262 = !DILocation(line: 211, column: 13, scope: !2260)
!2263 = !DILocation(line: 211, column: 18, scope: !2260)
!2264 = !DILocation(line: 211, column: 24, scope: !2260)
!2265 = !DILocation(line: 212, column: 3, scope: !2260)
!2266 = !DILocation(line: 216, column: 6, scope: !2156)
!2267 = !DILocation(line: 216, column: 21, scope: !2156)
!2268 = !DILocation(line: 216, column: 18, scope: !2156)
!2269 = !DILocation(line: 216, column: 6, scope: !2137)
!2270 = !DILocation(line: 217, column: 3, scope: !2154)
!2271 = !DILocation(line: 217, column: 3, scope: !2160)
!2272 = !DILocation(line: 217, column: 3, scope: !2159)
!2273 = !DILocation(line: 217, column: 3, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 217, column: 3)
!2275 = !DILocation(line: 217, column: 3, scope: !2158)
!2276 = !DILocation(line: 217, column: 3, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 217, column: 3)
!2278 = !DILocation(line: 217, column: 3, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 217, column: 3)
!2280 = !{i64 2154930702, i64 2154930731, i64 2154930777, i64 2154930835, i64 2154930889, i64 2154930943, i64 2154930998, i64 2154931029, i64 2154931337, i64 2154931343, i64 2154931390, i64 2154931413, i64 2154931439}
!2281 = !DILocation(line: 217, column: 3, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 217, column: 3)
!2283 = !DILocation(line: 217, column: 3, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 217, column: 3)
!2285 = !DILocation(line: 217, column: 3, scope: !2155)
!2286 = !DILocation(line: 218, column: 17, scope: !2155)
!2287 = !DILocation(line: 218, column: 15, scope: !2155)
!2288 = !DILocation(line: 219, column: 3, scope: !2155)
!2289 = !DILocation(line: 222, column: 6, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 222, column: 6)
!2291 = !DILocation(line: 222, column: 20, scope: !2290)
!2292 = !DILocation(line: 222, column: 18, scope: !2290)
!2293 = !DILocation(line: 222, column: 6, scope: !2137)
!2294 = !DILocation(line: 223, column: 11, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 222, column: 25)
!2296 = !DILocation(line: 223, column: 23, scope: !2295)
!2297 = !DILocation(line: 223, column: 21, scope: !2295)
!2298 = !DILocation(line: 223, column: 27, scope: !2295)
!2299 = !DILocation(line: 223, column: 32, scope: !2295)
!2300 = !DILocation(line: 223, column: 44, scope: !2295)
!2301 = !DILocation(line: 223, column: 42, scope: !2295)
!2302 = !DILocation(line: 224, column: 26, scope: !2295)
!2303 = !DILocation(line: 224, column: 40, scope: !2295)
!2304 = !DILocation(line: 224, column: 38, scope: !2295)
!2305 = !DILocation(line: 224, column: 25, scope: !2295)
!2306 = !DILocation(line: 224, column: 23, scope: !2295)
!2307 = !DILocation(line: 223, column: 3, scope: !2295)
!2308 = !DILocation(line: 225, column: 2, scope: !2295)
!2309 = !DILocation(line: 227, column: 25, scope: !2137)
!2310 = !DILocation(line: 227, column: 2, scope: !2137)
!2311 = !DILocation(line: 227, column: 12, scope: !2137)
!2312 = !DILocation(line: 227, column: 17, scope: !2137)
!2313 = !DILocation(line: 227, column: 23, scope: !2137)
!2314 = !DILocation(line: 228, column: 23, scope: !2137)
!2315 = !DILocation(line: 228, column: 2, scope: !2137)
!2316 = !DILocation(line: 228, column: 12, scope: !2137)
!2317 = !DILocation(line: 228, column: 17, scope: !2137)
!2318 = !DILocation(line: 228, column: 21, scope: !2137)
!2319 = !DILocation(line: 229, column: 24, scope: !2137)
!2320 = !DILocation(line: 229, column: 2, scope: !2137)
!2321 = !DILocation(line: 229, column: 12, scope: !2137)
!2322 = !DILocation(line: 229, column: 17, scope: !2137)
!2323 = !DILocation(line: 229, column: 22, scope: !2137)
!2324 = !DILocation(line: 230, column: 2, scope: !2137)
!2325 = !DILocation(line: 230, column: 12, scope: !2137)
!2326 = !DILocation(line: 230, column: 17, scope: !2137)
!2327 = !DILocation(line: 230, column: 23, scope: !2137)
!2328 = !DILocation(line: 231, column: 13, scope: !2137)
!2329 = !DILocation(line: 233, column: 2, scope: !2137)
!2330 = !DILocation(line: 234, column: 1, scope: !2137)
!2331 = distinct !DISubprogram(name: "get_effective_type", scope: !3, file: !3, line: 146, type: !2332, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!396, !396, !396}
!2334 = !{!2335, !2336}
!2335 = !DILocalVariable(name: "type1", arg: 1, scope: !2331, file: !3, line: 146, type: !396)
!2336 = !DILocalVariable(name: "type2", arg: 2, scope: !2331, file: !3, line: 146, type: !396)
!2337 = !DILocation(line: 146, column: 33, scope: !2331)
!2338 = !DILocation(line: 146, column: 43, scope: !2331)
!2339 = !DILocation(line: 148, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 148, column: 6)
!2341 = !DILocation(line: 148, column: 12, scope: !2340)
!2342 = !DILocation(line: 148, column: 36, scope: !2340)
!2343 = !DILocation(line: 148, column: 39, scope: !2340)
!2344 = !DILocation(line: 148, column: 45, scope: !2340)
!2345 = !DILocation(line: 148, column: 6, scope: !2331)
!2346 = !DILocation(line: 149, column: 3, scope: !2340)
!2347 = !DILocation(line: 151, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 151, column: 6)
!2349 = !DILocation(line: 151, column: 13, scope: !2348)
!2350 = !DILocation(line: 151, column: 33, scope: !2348)
!2351 = !DILocation(line: 151, column: 36, scope: !2348)
!2352 = !DILocation(line: 151, column: 42, scope: !2348)
!2353 = !DILocation(line: 151, column: 66, scope: !2348)
!2354 = !DILocation(line: 152, column: 7, scope: !2348)
!2355 = !DILocation(line: 152, column: 13, scope: !2348)
!2356 = !DILocation(line: 152, column: 36, scope: !2348)
!2357 = !DILocation(line: 152, column: 39, scope: !2348)
!2358 = !DILocation(line: 152, column: 45, scope: !2348)
!2359 = !DILocation(line: 151, column: 6, scope: !2331)
!2360 = !DILocation(line: 153, column: 3, scope: !2348)
!2361 = !DILocation(line: 155, column: 6, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 155, column: 6)
!2363 = !DILocation(line: 155, column: 15, scope: !2362)
!2364 = !DILocation(line: 155, column: 12, scope: !2362)
!2365 = !DILocation(line: 155, column: 6, scope: !2331)
!2366 = !DILocation(line: 156, column: 3, scope: !2362)
!2367 = !DILocation(line: 158, column: 9, scope: !2331)
!2368 = !DILocation(line: 158, column: 2, scope: !2331)
!2369 = !DILocation(line: 159, column: 1, scope: !2331)
!2370 = distinct !DISubprogram(name: "clr_map_range_at", scope: !3, file: !3, line: 237, type: !2371, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!40, !48, !48, !40}
!2373 = !{!2374, !2375, !2376, !2377, !2378}
!2374 = !DILocalVariable(name: "start", arg: 1, scope: !2370, file: !3, line: 237, type: !48)
!2375 = !DILocalVariable(name: "end", arg: 2, scope: !2370, file: !3, line: 237, type: !48)
!2376 = !DILocalVariable(name: "idx", arg: 3, scope: !2370, file: !3, line: 237, type: !40)
!2377 = !DILocalVariable(name: "ret", scope: !2370, file: !3, line: 239, type: !40)
!2378 = !DILocalVariable(name: "tmp", scope: !2370, file: !3, line: 240, type: !48)
!2379 = !DILocation(line: 237, column: 33, scope: !2370)
!2380 = !DILocation(line: 237, column: 44, scope: !2370)
!2381 = !DILocation(line: 237, column: 53, scope: !2370)
!2382 = !DILocation(line: 239, column: 2, scope: !2370)
!2383 = !DILocation(line: 239, column: 6, scope: !2370)
!2384 = !DILocation(line: 239, column: 12, scope: !2370)
!2385 = !DILocation(line: 239, column: 21, scope: !2370)
!2386 = !DILocation(line: 239, column: 31, scope: !2370)
!2387 = !DILocation(line: 239, column: 36, scope: !2370)
!2388 = !DILocation(line: 239, column: 18, scope: !2370)
!2389 = !DILocation(line: 240, column: 2, scope: !2370)
!2390 = !DILocation(line: 240, column: 6, scope: !2370)
!2391 = !DILocation(line: 242, column: 6, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 242, column: 6)
!2393 = !DILocation(line: 242, column: 15, scope: !2392)
!2394 = !DILocation(line: 242, column: 25, scope: !2392)
!2395 = !DILocation(line: 242, column: 30, scope: !2392)
!2396 = !DILocation(line: 242, column: 12, scope: !2392)
!2397 = !DILocation(line: 242, column: 36, scope: !2392)
!2398 = !DILocation(line: 242, column: 39, scope: !2392)
!2399 = !DILocation(line: 242, column: 46, scope: !2392)
!2400 = !DILocation(line: 242, column: 56, scope: !2392)
!2401 = !DILocation(line: 242, column: 61, scope: !2392)
!2402 = !DILocation(line: 242, column: 43, scope: !2392)
!2403 = !DILocation(line: 242, column: 6, scope: !2370)
!2404 = !DILocation(line: 243, column: 19, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 242, column: 66)
!2406 = !DILocation(line: 243, column: 3, scope: !2405)
!2407 = !DILocation(line: 244, column: 2, scope: !2405)
!2408 = !DILocation(line: 244, column: 13, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 244, column: 13)
!2410 = !DILocation(line: 244, column: 22, scope: !2409)
!2411 = !DILocation(line: 244, column: 32, scope: !2409)
!2412 = !DILocation(line: 244, column: 37, scope: !2409)
!2413 = !DILocation(line: 244, column: 19, scope: !2409)
!2414 = !DILocation(line: 244, column: 13, scope: !2392)
!2415 = !DILocation(line: 245, column: 26, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 244, column: 44)
!2417 = !DILocation(line: 245, column: 3, scope: !2416)
!2418 = !DILocation(line: 245, column: 13, scope: !2416)
!2419 = !DILocation(line: 245, column: 18, scope: !2416)
!2420 = !DILocation(line: 245, column: 24, scope: !2416)
!2421 = !DILocation(line: 246, column: 2, scope: !2416)
!2422 = !DILocation(line: 246, column: 13, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 246, column: 13)
!2424 = !DILocation(line: 246, column: 20, scope: !2423)
!2425 = !DILocation(line: 246, column: 30, scope: !2423)
!2426 = !DILocation(line: 246, column: 35, scope: !2423)
!2427 = !DILocation(line: 246, column: 17, scope: !2423)
!2428 = !DILocation(line: 246, column: 13, scope: !2409)
!2429 = !DILocation(line: 247, column: 24, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 246, column: 40)
!2431 = !DILocation(line: 247, column: 3, scope: !2430)
!2432 = !DILocation(line: 247, column: 13, scope: !2430)
!2433 = !DILocation(line: 247, column: 18, scope: !2430)
!2434 = !DILocation(line: 247, column: 22, scope: !2430)
!2435 = !DILocation(line: 248, column: 2, scope: !2430)
!2436 = !DILocation(line: 249, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 248, column: 9)
!2438 = !DILocation(line: 249, column: 19, scope: !2437)
!2439 = !DILocation(line: 249, column: 24, scope: !2437)
!2440 = !DILocation(line: 249, column: 7, scope: !2437)
!2441 = !DILocation(line: 250, column: 24, scope: !2437)
!2442 = !DILocation(line: 250, column: 3, scope: !2437)
!2443 = !DILocation(line: 250, column: 13, scope: !2437)
!2444 = !DILocation(line: 250, column: 18, scope: !2437)
!2445 = !DILocation(line: 250, column: 22, scope: !2437)
!2446 = !DILocation(line: 251, column: 20, scope: !2437)
!2447 = !DILocation(line: 251, column: 25, scope: !2437)
!2448 = !DILocation(line: 251, column: 30, scope: !2437)
!2449 = !DILocation(line: 251, column: 40, scope: !2437)
!2450 = !DILocation(line: 251, column: 45, scope: !2437)
!2451 = !DILocation(line: 251, column: 51, scope: !2437)
!2452 = !DILocation(line: 251, column: 55, scope: !2437)
!2453 = !DILocation(line: 251, column: 3, scope: !2437)
!2454 = !DILocation(line: 254, column: 9, scope: !2370)
!2455 = !DILocation(line: 255, column: 1, scope: !2370)
!2456 = !DILocation(line: 254, column: 2, scope: !2370)
!2457 = distinct !DISubprogram(name: "rm_map_entry_at", scope: !3, file: !3, line: 161, type: !2458, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !40}
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "idx", arg: 1, scope: !2457, file: !3, line: 161, type: !40)
!2462 = !DILocation(line: 161, column: 33, scope: !2457)
!2463 = !DILocation(line: 163, column: 13, scope: !2457)
!2464 = !DILocation(line: 164, column: 6, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 164, column: 6)
!2466 = !DILocation(line: 164, column: 20, scope: !2465)
!2467 = !DILocation(line: 164, column: 18, scope: !2465)
!2468 = !DILocation(line: 164, column: 6, scope: !2457)
!2469 = !DILocation(line: 165, column: 11, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 164, column: 25)
!2471 = !DILocation(line: 165, column: 23, scope: !2470)
!2472 = !DILocation(line: 165, column: 21, scope: !2470)
!2473 = !DILocation(line: 165, column: 28, scope: !2470)
!2474 = !DILocation(line: 165, column: 40, scope: !2470)
!2475 = !DILocation(line: 165, column: 38, scope: !2470)
!2476 = !DILocation(line: 165, column: 44, scope: !2470)
!2477 = !DILocation(line: 166, column: 26, scope: !2470)
!2478 = !DILocation(line: 166, column: 40, scope: !2470)
!2479 = !DILocation(line: 166, column: 38, scope: !2470)
!2480 = !DILocation(line: 166, column: 25, scope: !2470)
!2481 = !DILocation(line: 166, column: 23, scope: !2470)
!2482 = !DILocation(line: 165, column: 3, scope: !2470)
!2483 = !DILocation(line: 167, column: 2, scope: !2470)
!2484 = !DILocation(line: 168, column: 1, scope: !2457)
!2485 = !DISubprogram(name: "__warn_printk", scope: !2486, file: !2486, line: 93, type: !2487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2486 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !51, null}
!2489 = distinct !DISubprogram(name: "kmalloc_array", scope: !22, file: !22, line: 629, type: !804, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2490 = !{!2491, !2492, !2493, !2494}
!2491 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !22, line: 629, type: !806)
!2492 = !DILocalVariable(name: "size", arg: 2, scope: !2489, file: !22, line: 629, type: !806)
!2493 = !DILocalVariable(name: "flags", arg: 3, scope: !2489, file: !22, line: 629, type: !38)
!2494 = !DILocalVariable(name: "bytes", scope: !2489, file: !22, line: 631, type: !806)
!2495 = !DILocation(line: 629, column: 61, scope: !2489)
!2496 = !DILocation(line: 629, column: 71, scope: !2489)
!2497 = !DILocation(line: 629, column: 83, scope: !2489)
!2498 = !DILocation(line: 631, column: 2, scope: !2489)
!2499 = !DILocation(line: 631, column: 9, scope: !2489)
!2500 = !DILocation(line: 633, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2489, file: !22, line: 633, column: 6)
!2502 = !DILocation(line: 633, column: 6, scope: !2489)
!2503 = !DILocation(line: 634, column: 3, scope: !2501)
!2504 = !DILocation(line: 635, column: 27, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2489, file: !22, line: 635, column: 6)
!2506 = !DILocation(line: 635, column: 6, scope: !2505)
!2507 = !DILocation(line: 635, column: 30, scope: !2505)
!2508 = !DILocation(line: 635, column: 54, scope: !2505)
!2509 = !DILocation(line: 635, column: 33, scope: !2505)
!2510 = !DILocation(line: 635, column: 6, scope: !2489)
!2511 = !DILocation(line: 636, column: 18, scope: !2505)
!2512 = !DILocation(line: 636, column: 25, scope: !2505)
!2513 = !DILocation(line: 636, column: 10, scope: !2505)
!2514 = !DILocation(line: 636, column: 3, scope: !2505)
!2515 = !DILocation(line: 637, column: 19, scope: !2489)
!2516 = !DILocation(line: 637, column: 26, scope: !2489)
!2517 = !DILocation(line: 637, column: 9, scope: !2489)
!2518 = !DILocation(line: 637, column: 2, scope: !2489)
!2519 = !DILocation(line: 638, column: 1, scope: !2489)
!2520 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2521, file: !2521, line: 51, type: !2522, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2524)
!2521 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!182, !182}
!2524 = !{!2525}
!2525 = !DILocalVariable(name: "overflow", arg: 1, scope: !2520, file: !2521, line: 51, type: !182)
!2526 = !DILocation(line: 51, column: 60, scope: !2520)
!2527 = !DILocation(line: 53, column: 9, scope: !2520)
!2528 = !DILocation(line: 53, column: 2, scope: !2520)
!2529 = distinct !DISubprogram(name: "kmalloc", scope: !22, file: !22, line: 591, type: !2530, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!37, !806, !38}
!2532 = !{!2533, !2534, !2535}
!2533 = !DILocalVariable(name: "size", arg: 1, scope: !2529, file: !22, line: 591, type: !806)
!2534 = !DILocalVariable(name: "flags", arg: 2, scope: !2529, file: !22, line: 591, type: !38)
!2535 = !DILocalVariable(name: "index", scope: !2536, file: !22, line: 594, type: !7)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !22, line: 593, column: 42)
!2537 = distinct !DILexicalBlock(scope: !2529, file: !22, line: 593, column: 6)
!2538 = !DILocation(line: 591, column: 61, scope: !2529)
!2539 = !DILocation(line: 591, column: 73, scope: !2529)
!2540 = !DILocation(line: 593, column: 27, scope: !2537)
!2541 = !DILocation(line: 593, column: 6, scope: !2537)
!2542 = !DILocation(line: 593, column: 33, scope: !2537)
!2543 = !DILocation(line: 593, column: 36, scope: !2537)
!2544 = !DILocation(line: 593, column: 6, scope: !2529)
!2545 = !DILocation(line: 594, column: 3, scope: !2536)
!2546 = !DILocation(line: 594, column: 16, scope: !2536)
!2547 = !DILocation(line: 596, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2536, file: !22, line: 596, column: 7)
!2549 = !DILocation(line: 596, column: 12, scope: !2548)
!2550 = !DILocation(line: 596, column: 7, scope: !2536)
!2551 = !DILocation(line: 597, column: 25, scope: !2548)
!2552 = !DILocation(line: 597, column: 31, scope: !2548)
!2553 = !DILocation(line: 597, column: 11, scope: !2548)
!2554 = !DILocation(line: 597, column: 4, scope: !2548)
!2555 = !DILocation(line: 599, column: 11, scope: !2536)
!2556 = !DILocation(line: 599, column: 9, scope: !2536)
!2557 = !DILocation(line: 601, column: 33, scope: !2536)
!2558 = !DILocation(line: 601, column: 40, scope: !2536)
!2559 = !DILocation(line: 601, column: 20, scope: !2536)
!2560 = !DILocation(line: 601, column: 5, scope: !2536)
!2561 = !DILocation(line: 601, column: 51, scope: !2536)
!2562 = !DILocation(line: 602, column: 5, scope: !2536)
!2563 = !DILocation(line: 602, column: 12, scope: !2536)
!2564 = !DILocation(line: 600, column: 10, scope: !2536)
!2565 = !DILocation(line: 600, column: 3, scope: !2536)
!2566 = !DILocation(line: 603, column: 2, scope: !2537)
!2567 = !DILocation(line: 604, column: 19, scope: !2529)
!2568 = !DILocation(line: 604, column: 25, scope: !2529)
!2569 = !DILocation(line: 604, column: 9, scope: !2529)
!2570 = !DILocation(line: 604, column: 2, scope: !2529)
!2571 = !DILocation(line: 605, column: 1, scope: !2529)
!2572 = !DISubprogram(name: "__kmalloc", scope: !22, file: !22, line: 488, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2573 = !DISubprogram(name: "kmalloc_large", scope: !22, file: !22, line: 531, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2574 = distinct !DISubprogram(name: "__kmalloc_index", scope: !22, file: !22, line: 444, type: !2575, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!7, !806, !182}
!2577 = !{!2578, !2579}
!2578 = !DILocalVariable(name: "size", arg: 1, scope: !2574, file: !22, line: 444, type: !806)
!2579 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2574, file: !22, line: 445, type: !182)
!2580 = !DILocation(line: 444, column: 60, scope: !2574)
!2581 = !DILocation(line: 445, column: 16, scope: !2574)
!2582 = !DILocation(line: 447, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 447, column: 6)
!2584 = !DILocation(line: 447, column: 6, scope: !2574)
!2585 = !DILocation(line: 448, column: 3, scope: !2583)
!2586 = !DILocation(line: 450, column: 6, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 450, column: 6)
!2588 = !DILocation(line: 450, column: 11, scope: !2587)
!2589 = !DILocation(line: 450, column: 6, scope: !2574)
!2590 = !DILocation(line: 451, column: 3, scope: !2587)
!2591 = !DILocation(line: 453, column: 32, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 453, column: 6)
!2593 = !DILocation(line: 453, column: 37, scope: !2592)
!2594 = !DILocation(line: 453, column: 42, scope: !2592)
!2595 = !DILocation(line: 453, column: 45, scope: !2592)
!2596 = !DILocation(line: 453, column: 50, scope: !2592)
!2597 = !DILocation(line: 453, column: 6, scope: !2574)
!2598 = !DILocation(line: 454, column: 3, scope: !2592)
!2599 = !DILocation(line: 455, column: 32, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 455, column: 6)
!2601 = !DILocation(line: 455, column: 37, scope: !2600)
!2602 = !DILocation(line: 455, column: 43, scope: !2600)
!2603 = !DILocation(line: 455, column: 46, scope: !2600)
!2604 = !DILocation(line: 455, column: 51, scope: !2600)
!2605 = !DILocation(line: 455, column: 6, scope: !2574)
!2606 = !DILocation(line: 456, column: 3, scope: !2600)
!2607 = !DILocation(line: 457, column: 6, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 457, column: 6)
!2609 = !DILocation(line: 457, column: 11, scope: !2608)
!2610 = !DILocation(line: 457, column: 6, scope: !2574)
!2611 = !DILocation(line: 457, column: 26, scope: !2608)
!2612 = !DILocation(line: 458, column: 6, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 458, column: 6)
!2614 = !DILocation(line: 458, column: 11, scope: !2613)
!2615 = !DILocation(line: 458, column: 6, scope: !2574)
!2616 = !DILocation(line: 458, column: 26, scope: !2613)
!2617 = !DILocation(line: 459, column: 6, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 459, column: 6)
!2619 = !DILocation(line: 459, column: 11, scope: !2618)
!2620 = !DILocation(line: 459, column: 6, scope: !2574)
!2621 = !DILocation(line: 459, column: 26, scope: !2618)
!2622 = !DILocation(line: 460, column: 6, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 460, column: 6)
!2624 = !DILocation(line: 460, column: 11, scope: !2623)
!2625 = !DILocation(line: 460, column: 6, scope: !2574)
!2626 = !DILocation(line: 460, column: 26, scope: !2623)
!2627 = !DILocation(line: 461, column: 6, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 461, column: 6)
!2629 = !DILocation(line: 461, column: 11, scope: !2628)
!2630 = !DILocation(line: 461, column: 6, scope: !2574)
!2631 = !DILocation(line: 461, column: 26, scope: !2628)
!2632 = !DILocation(line: 462, column: 6, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 462, column: 6)
!2634 = !DILocation(line: 462, column: 11, scope: !2633)
!2635 = !DILocation(line: 462, column: 6, scope: !2574)
!2636 = !DILocation(line: 462, column: 26, scope: !2633)
!2637 = !DILocation(line: 463, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 463, column: 6)
!2639 = !DILocation(line: 463, column: 11, scope: !2638)
!2640 = !DILocation(line: 463, column: 6, scope: !2574)
!2641 = !DILocation(line: 463, column: 26, scope: !2638)
!2642 = !DILocation(line: 464, column: 6, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 464, column: 6)
!2644 = !DILocation(line: 464, column: 11, scope: !2643)
!2645 = !DILocation(line: 464, column: 6, scope: !2574)
!2646 = !DILocation(line: 464, column: 26, scope: !2643)
!2647 = !DILocation(line: 465, column: 6, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 465, column: 6)
!2649 = !DILocation(line: 465, column: 11, scope: !2648)
!2650 = !DILocation(line: 465, column: 6, scope: !2574)
!2651 = !DILocation(line: 465, column: 26, scope: !2648)
!2652 = !DILocation(line: 466, column: 6, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 466, column: 6)
!2654 = !DILocation(line: 466, column: 11, scope: !2653)
!2655 = !DILocation(line: 466, column: 6, scope: !2574)
!2656 = !DILocation(line: 466, column: 26, scope: !2653)
!2657 = !DILocation(line: 467, column: 6, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 467, column: 6)
!2659 = !DILocation(line: 467, column: 11, scope: !2658)
!2660 = !DILocation(line: 467, column: 6, scope: !2574)
!2661 = !DILocation(line: 467, column: 26, scope: !2658)
!2662 = !DILocation(line: 468, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 468, column: 6)
!2664 = !DILocation(line: 468, column: 11, scope: !2663)
!2665 = !DILocation(line: 468, column: 6, scope: !2574)
!2666 = !DILocation(line: 468, column: 26, scope: !2663)
!2667 = !DILocation(line: 469, column: 6, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 469, column: 6)
!2669 = !DILocation(line: 469, column: 11, scope: !2668)
!2670 = !DILocation(line: 469, column: 6, scope: !2574)
!2671 = !DILocation(line: 469, column: 26, scope: !2668)
!2672 = !DILocation(line: 470, column: 6, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 470, column: 6)
!2674 = !DILocation(line: 470, column: 11, scope: !2673)
!2675 = !DILocation(line: 470, column: 6, scope: !2574)
!2676 = !DILocation(line: 470, column: 26, scope: !2673)
!2677 = !DILocation(line: 471, column: 6, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 471, column: 6)
!2679 = !DILocation(line: 471, column: 11, scope: !2678)
!2680 = !DILocation(line: 471, column: 6, scope: !2574)
!2681 = !DILocation(line: 471, column: 26, scope: !2678)
!2682 = !DILocation(line: 472, column: 6, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 472, column: 6)
!2684 = !DILocation(line: 472, column: 11, scope: !2683)
!2685 = !DILocation(line: 472, column: 6, scope: !2574)
!2686 = !DILocation(line: 472, column: 26, scope: !2683)
!2687 = !DILocation(line: 473, column: 6, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 473, column: 6)
!2689 = !DILocation(line: 473, column: 11, scope: !2688)
!2690 = !DILocation(line: 473, column: 6, scope: !2574)
!2691 = !DILocation(line: 473, column: 26, scope: !2688)
!2692 = !DILocation(line: 474, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 474, column: 6)
!2694 = !DILocation(line: 474, column: 11, scope: !2693)
!2695 = !DILocation(line: 474, column: 6, scope: !2574)
!2696 = !DILocation(line: 474, column: 27, scope: !2693)
!2697 = !DILocation(line: 475, column: 6, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 475, column: 6)
!2699 = !DILocation(line: 475, column: 11, scope: !2698)
!2700 = !DILocation(line: 475, column: 6, scope: !2574)
!2701 = !DILocation(line: 475, column: 32, scope: !2698)
!2702 = !DILocation(line: 477, column: 50, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2574, file: !22, line: 477, column: 6)
!2704 = !DILocation(line: 477, column: 6, scope: !2574)
!2705 = !DILocation(line: 478, column: 3, scope: !2703)
!2706 = !DILocation(line: 478, column: 3, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !22, line: 478, column: 3)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !22, line: 478, column: 3)
!2709 = !{i32 -2142201992}
!2710 = !DILocation(line: 478, column: 3, scope: !2708)
!2711 = !DILocation(line: 480, column: 3, scope: !2703)
!2712 = !DILocation(line: 480, column: 3, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2703, file: !22, line: 480, column: 3)
!2714 = !DILocation(line: 480, column: 3, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2713, file: !22, line: 480, column: 3)
!2716 = !DILocation(line: 480, column: 3, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !22, line: 480, column: 3)
!2718 = !{i64 2152765507, i64 2152765536, i64 2152765582, i64 2152765640, i64 2152765694, i64 2152765748, i64 2152765803, i64 2152765834}
!2719 = !DILocation(line: 483, column: 2, scope: !2574)
!2720 = !DILocation(line: 484, column: 1, scope: !2574)
!2721 = !DISubprogram(name: "kmalloc_trace", scope: !22, file: !22, line: 525, type: !2722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!37, !2724, !38, !806}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2726, line: 11, flags: DIFlagFwdDecl)
!2726 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2727 = distinct !DISubprogram(name: "kmalloc_type", scope: !22, file: !22, line: 401, type: !2728, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!21, !38, !42}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "flags", arg: 1, scope: !2727, file: !22, line: 401, type: !38)
!2732 = !DILocalVariable(name: "caller", arg: 2, scope: !2727, file: !22, line: 401, type: !42)
!2733 = !DILocation(line: 401, column: 67, scope: !2727)
!2734 = !DILocation(line: 401, column: 88, scope: !2727)
!2735 = !DILocation(line: 407, column: 6, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2727, file: !22, line: 407, column: 6)
!2737 = !DILocation(line: 407, column: 6, scope: !2727)
!2738 = !DILocation(line: 413, column: 3, scope: !2736)
!2739 = !DILocation(line: 423, column: 38, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2727, file: !22, line: 423, column: 6)
!2741 = !DILocation(line: 423, column: 44, scope: !2740)
!2742 = !DILocation(line: 423, column: 6, scope: !2727)
!2743 = !DILocation(line: 424, column: 3, scope: !2740)
!2744 = !DILocation(line: 426, column: 3, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2727, file: !22, line: 425, column: 6)
!2746 = !DILocation(line: 429, column: 1, scope: !2727)
!2747 = !DISubprogram(name: "__compiletime_assert_206", scope: !22, file: !22, line: 478, type: !379, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2748 = distinct !DISubprogram(name: "constant_test_bit", scope: !908, file: !908, line: 204, type: !2749, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!182, !60, !911}
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "nr", arg: 1, scope: !2748, file: !908, line: 204, type: !60)
!2753 = !DILocalVariable(name: "addr", arg: 2, scope: !2748, file: !908, line: 204, type: !911)
!2754 = !DILocation(line: 204, column: 52, scope: !2748)
!2755 = !DILocation(line: 204, column: 86, scope: !2748)
!2756 = !DILocation(line: 206, column: 19, scope: !2748)
!2757 = !DILocation(line: 206, column: 22, scope: !2748)
!2758 = !DILocation(line: 206, column: 15, scope: !2748)
!2759 = !DILocation(line: 207, column: 4, scope: !2748)
!2760 = !DILocation(line: 207, column: 9, scope: !2748)
!2761 = !DILocation(line: 207, column: 12, scope: !2748)
!2762 = !DILocation(line: 206, column: 44, scope: !2748)
!2763 = !DILocation(line: 207, column: 37, scope: !2748)
!2764 = !DILocation(line: 206, column: 2, scope: !2748)
!2765 = distinct !DISubprogram(name: "variable_test_bit", scope: !908, file: !908, line: 224, type: !2749, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2766 = !{!2767, !2768, !2769}
!2767 = !DILocalVariable(name: "nr", arg: 1, scope: !2765, file: !908, line: 224, type: !60)
!2768 = !DILocalVariable(name: "addr", arg: 2, scope: !2765, file: !908, line: 224, type: !911)
!2769 = !DILocalVariable(name: "oldbit", scope: !2765, file: !908, line: 226, type: !182)
!2770 = !DILocation(line: 224, column: 52, scope: !2765)
!2771 = !DILocation(line: 224, column: 86, scope: !2765)
!2772 = !DILocation(line: 226, column: 2, scope: !2765)
!2773 = !DILocation(line: 226, column: 7, scope: !2765)
!2774 = !DILocation(line: 231, column: 33, scope: !2765)
!2775 = !DILocation(line: 231, column: 46, scope: !2765)
!2776 = !DILocation(line: 228, column: 2, scope: !2765)
!2777 = !{i64 2148076190, i64 2148076264}
!2778 = !DILocation(line: 233, column: 9, scope: !2765)
!2779 = !DILocation(line: 234, column: 1, scope: !2765)
!2780 = !DILocation(line: 233, column: 2, scope: !2765)
!2781 = distinct !DISubprogram(name: "k8_check_syscfg_dram_mod_en", scope: !3, file: !3, line: 103, type: !379, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2782)
!2782 = !{!2783, !2784, !2785, !2787, !2793, !2795}
!2783 = !DILocalVariable(name: "lo", scope: !2781, file: !3, line: 105, type: !43)
!2784 = !DILocalVariable(name: "hi", scope: !2781, file: !3, line: 105, type: !43)
!2785 = !DILocalVariable(name: "__val", scope: !2786, file: !3, line: 111, type: !48)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 111, column: 2)
!2787 = !DILocalVariable(name: "pscr_ret__", scope: !2788, file: !3, line: 113, type: !40)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 113, column: 3)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 113, column: 3)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 113, column: 3)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 112, column: 40)
!2792 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 112, column: 6)
!2793 = !DILocalVariable(name: "__vpp_verify", scope: !2794, file: !3, line: 113, type: !337)
!2794 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 113, column: 3)
!2795 = !DILocalVariable(name: "pfo_val__", scope: !2796, file: !3, line: 113, type: !43)
!2796 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 113, column: 3)
!2797 = !DILocation(line: 105, column: 2, scope: !2781)
!2798 = !DILocation(line: 105, column: 6, scope: !2781)
!2799 = !DILocation(line: 105, column: 10, scope: !2781)
!2800 = !DILocation(line: 107, column: 23, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 107, column: 6)
!2802 = !DILocation(line: 107, column: 9, scope: !2801)
!2803 = !DILocation(line: 107, column: 34, scope: !2801)
!2804 = !DILocation(line: 107, column: 53, scope: !2801)
!2805 = !DILocation(line: 108, column: 23, scope: !2801)
!2806 = !DILocation(line: 108, column: 9, scope: !2801)
!2807 = !DILocation(line: 108, column: 27, scope: !2801)
!2808 = !DILocation(line: 107, column: 6, scope: !2781)
!2809 = !DILocation(line: 109, column: 3, scope: !2801)
!2810 = !DILocation(line: 111, column: 2, scope: !2781)
!2811 = !DILocation(line: 111, column: 2, scope: !2786)
!2812 = !DILocation(line: 112, column: 6, scope: !2792)
!2813 = !DILocation(line: 112, column: 9, scope: !2792)
!2814 = !DILocation(line: 112, column: 6, scope: !2781)
!2815 = !DILocation(line: 113, column: 3, scope: !2790)
!2816 = !DILocation(line: 113, column: 3, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 113, column: 3)
!2818 = !DILocation(line: 113, column: 3, scope: !2789)
!2819 = !DILocation(line: 113, column: 3, scope: !2788)
!2820 = !DILocation(line: 113, column: 3, scope: !2794)
!2821 = !DILocation(line: 113, column: 3, scope: !2796)
!2822 = !{i64 2154928162}
!2823 = !DILocation(line: 116, column: 6, scope: !2791)
!2824 = !DILocation(line: 117, column: 32, scope: !2791)
!2825 = !DILocation(line: 117, column: 36, scope: !2791)
!2826 = !DILocation(line: 117, column: 3, scope: !2791)
!2827 = !DILocation(line: 118, column: 2, scope: !2791)
!2828 = !DILocation(line: 119, column: 1, scope: !2781)
!2829 = distinct !DISubprogram(name: "__rdmsr", scope: !1293, file: !1293, line: 80, type: !1294, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2830)
!2830 = !{!2831, !2832, !2833}
!2831 = !DILocalVariable(name: "msr", arg: 1, scope: !2829, file: !1293, line: 80, type: !7)
!2832 = !DILocalVariable(name: "low", scope: !2829, file: !1293, line: 82, type: !42)
!2833 = !DILocalVariable(name: "high", scope: !2829, file: !1293, line: 82, type: !42)
!2834 = !DILocation(line: 80, column: 64, scope: !2829)
!2835 = !DILocation(line: 82, column: 2, scope: !2829)
!2836 = !DILocation(line: 87, column: 45, scope: !2829)
!2837 = !DILocation(line: 84, column: 2, scope: !2829)
!2838 = !{i64 1995538, i64 1995559, i64 2149497024, i64 2149497068, i64 2149497091, i64 2149497124, i64 2149497155, i64 2149497194}
!2839 = !DILocation(line: 89, column: 9, scope: !2829)
!2840 = !DILocation(line: 90, column: 1, scope: !2829)
!2841 = !DILocation(line: 89, column: 2, scope: !2829)
!2842 = distinct !DISubprogram(name: "static_key_false", scope: !2843, file: !2843, line: 205, type: !2844, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2843 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!182, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2843, line: 85, size: 128, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2847, file: !2843, line: 86, baseType: !775, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2847, file: !2843, line: 101, baseType: !2851, size: 64, offset: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2847, file: !2843, line: 101, size: 64, elements: !2852)
!2852 = !{!2853, !2854, !2863}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2851, file: !2843, line: 102, baseType: !42, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2851, file: !2843, line: 103, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2843, line: 117, size: 128, elements: !2857)
!2857 = !{!2858, !2861, !2862}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2856, file: !2843, line: 118, baseType: !2859, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !44, line: 20, baseType: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !46, line: 26, baseType: !40)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2856, file: !2843, line: 119, baseType: !2859, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2856, file: !2843, line: 120, baseType: !60, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2851, file: !2843, line: 104, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2843, line: 104, flags: DIFlagFwdDecl)
!2866 = !{!2867}
!2867 = !DILocalVariable(name: "key", arg: 1, scope: !2842, file: !2843, line: 205, type: !2846)
!2868 = !DILocation(line: 205, column: 65, scope: !2842)
!2869 = !DILocation(line: 207, column: 28, scope: !2842)
!2870 = !DILocation(line: 207, column: 9, scope: !2842)
!2871 = !DILocation(line: 207, column: 2, scope: !2842)
!2872 = !DISubprogram(name: "do_trace_read_msr", scope: !1293, file: !1293, line: 65, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !7, !48, !40}
!2875 = distinct !DISubprogram(name: "arch_static_branch", scope: !2876, file: !2876, line: 25, type: !2877, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2879)
!2876 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!182, !2846, !182}
!2879 = !{!2880, !2881, !2882}
!2880 = !DILocalVariable(name: "key", arg: 1, scope: !2875, file: !2876, line: 25, type: !2846)
!2881 = !DILocalVariable(name: "branch", arg: 2, scope: !2875, file: !2876, line: 25, type: !182)
!2882 = !DILabel(scope: !2875, name: "l_yes", file: !2876, line: 33)
!2883 = !DILocation(line: 25, column: 67, scope: !2875)
!2884 = !DILocation(line: 25, column: 77, scope: !2875)
!2885 = !DILocation(line: 30, column: 13, scope: !2875)
!2886 = !DILocation(line: 30, column: 28, scope: !2875)
!2887 = !DILocation(line: 30, column: 26, scope: !2875)
!2888 = !DILocation(line: 27, column: 2, scope: !2875)
!2889 = !{i64 421949, i64 421993, i64 2147908968, i64 2147908989, i64 2147909015, i64 2147909048, i64 2147909082, i64 2147909106}
!2890 = !DILocation(line: 32, column: 2, scope: !2875)
!2891 = !DILocation(line: 33, column: 1, scope: !2875)
!2892 = !DILocation(line: 34, column: 2, scope: !2875)
!2893 = !DILocation(line: 35, column: 1, scope: !2875)
!2894 = distinct !DISubprogram(name: "print_fixed", scope: !3, file: !3, line: 613, type: !2895, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !7, !7, !2897}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DILocalVariable(name: "base", arg: 1, scope: !2894, file: !3, line: 613, type: !7)
!2901 = !DILocalVariable(name: "step", arg: 2, scope: !2894, file: !3, line: 613, type: !7)
!2902 = !DILocalVariable(name: "types", arg: 3, scope: !2894, file: !3, line: 613, type: !2897)
!2903 = !DILocalVariable(name: "i", scope: !2894, file: !3, line: 615, type: !7)
!2904 = !DILocation(line: 613, column: 22, scope: !2894)
!2905 = !DILocation(line: 613, column: 37, scope: !2894)
!2906 = !DILocation(line: 613, column: 60, scope: !2894)
!2907 = !DILocation(line: 615, column: 2, scope: !2894)
!2908 = !DILocation(line: 615, column: 11, scope: !2894)
!2909 = !DILocation(line: 617, column: 9, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 617, column: 2)
!2911 = !DILocation(line: 617, column: 7, scope: !2910)
!2912 = !DILocation(line: 617, column: 14, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 617, column: 2)
!2914 = !DILocation(line: 617, column: 16, scope: !2913)
!2915 = !DILocation(line: 617, column: 2, scope: !2910)
!2916 = !DILocation(line: 618, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 618, column: 7)
!2918 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 617, column: 49)
!2919 = !DILocation(line: 618, column: 22, scope: !2917)
!2920 = !DILocation(line: 618, column: 7, scope: !2918)
!2921 = !DILocation(line: 619, column: 22, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 618, column: 28)
!2923 = !DILocation(line: 619, column: 28, scope: !2922)
!2924 = !DILocation(line: 619, column: 35, scope: !2922)
!2925 = !DILocation(line: 619, column: 33, scope: !2922)
!2926 = !DILocation(line: 619, column: 42, scope: !2922)
!2927 = !DILocation(line: 619, column: 41, scope: !2922)
!2928 = !DILocation(line: 619, column: 4, scope: !2922)
!2929 = !DILocation(line: 620, column: 4, scope: !2922)
!2930 = !DILocation(line: 622, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 622, column: 7)
!2932 = !DILocation(line: 622, column: 25, scope: !2931)
!2933 = !DILocation(line: 622, column: 22, scope: !2931)
!2934 = !DILocation(line: 622, column: 30, scope: !2931)
!2935 = !DILocation(line: 622, column: 33, scope: !2931)
!2936 = !DILocation(line: 622, column: 53, scope: !2931)
!2937 = !DILocation(line: 622, column: 52, scope: !2931)
!2938 = !DILocation(line: 622, column: 49, scope: !2931)
!2939 = !DILocation(line: 622, column: 7, scope: !2918)
!2940 = !DILocation(line: 623, column: 21, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 622, column: 60)
!2942 = !DILocation(line: 623, column: 28, scope: !2941)
!2943 = !DILocation(line: 623, column: 26, scope: !2941)
!2944 = !DILocation(line: 623, column: 19, scope: !2941)
!2945 = !DILocation(line: 624, column: 4, scope: !2941)
!2946 = !DILocation(line: 627, column: 3, scope: !2918)
!2947 = !DILocation(line: 628, column: 21, scope: !2918)
!2948 = !DILocation(line: 628, column: 27, scope: !2918)
!2949 = !DILocation(line: 628, column: 34, scope: !2918)
!2950 = !DILocation(line: 628, column: 32, scope: !2918)
!2951 = !DILocation(line: 628, column: 41, scope: !2918)
!2952 = !DILocation(line: 628, column: 40, scope: !2918)
!2953 = !DILocation(line: 628, column: 3, scope: !2918)
!2954 = !DILocation(line: 629, column: 2, scope: !2918)
!2955 = !DILocation(line: 617, column: 21, scope: !2913)
!2956 = !DILocation(line: 617, column: 26, scope: !2913)
!2957 = !DILocation(line: 617, column: 43, scope: !2913)
!2958 = !DILocation(line: 617, column: 40, scope: !2913)
!2959 = !DILocation(line: 617, column: 2, scope: !2913)
!2960 = distinct !{!2960, !2915, !2961, !443, !444}
!2961 = !DILocation(line: 629, column: 2, scope: !2910)
!2962 = !DILocation(line: 630, column: 1, scope: !2894)
!2963 = distinct !DISubprogram(name: "print_fixed_last", scope: !3, file: !3, line: 593, type: !379, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2964 = !DILocation(line: 595, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 595, column: 6)
!2966 = !DILocation(line: 595, column: 6, scope: !2963)
!2967 = !DILocation(line: 596, column: 3, scope: !2965)
!2968 = !DILocation(line: 598, column: 2, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 598, column: 2)
!2970 = !DILocation(line: 598, column: 2, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 598, column: 2)
!2972 = !DILocation(line: 601, column: 17, scope: !2963)
!2973 = !DILocation(line: 602, column: 1, scope: !2963)
!2974 = distinct !DISubprogram(name: "update_fixed_last", scope: !3, file: !3, line: 604, type: !2975, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !7, !7, !159}
!2977 = !{!2978, !2979, !2980}
!2978 = !DILocalVariable(name: "base", arg: 1, scope: !2974, file: !3, line: 604, type: !7)
!2979 = !DILocalVariable(name: "end", arg: 2, scope: !2974, file: !3, line: 604, type: !7)
!2980 = !DILocalVariable(name: "type", arg: 3, scope: !2974, file: !3, line: 605, type: !159)
!2981 = !DILocation(line: 604, column: 47, scope: !2974)
!2982 = !DILocation(line: 604, column: 62, scope: !2974)
!2983 = !DILocation(line: 605, column: 20, scope: !2974)
!2984 = !DILocation(line: 607, column: 21, scope: !2974)
!2985 = !DILocation(line: 607, column: 19, scope: !2974)
!2986 = !DILocation(line: 608, column: 19, scope: !2974)
!2987 = !DILocation(line: 608, column: 17, scope: !2974)
!2988 = !DILocation(line: 609, column: 20, scope: !2974)
!2989 = !DILocation(line: 609, column: 18, scope: !2974)
!2990 = !DILocation(line: 610, column: 1, scope: !2974)
!2991 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !1293, file: !1293, line: 153, type: !1525, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2992 = !{!2993, !2994, !2995, !2996}
!2993 = !DILocalVariable(name: "msr", arg: 1, scope: !2991, file: !1293, line: 153, type: !7)
!2994 = !DILocalVariable(name: "low", arg: 2, scope: !2991, file: !1293, line: 153, type: !43)
!2995 = !DILocalVariable(name: "high", arg: 3, scope: !2991, file: !1293, line: 153, type: !43)
!2996 = !DILocalVariable(name: "err", scope: !2991, file: !1293, line: 155, type: !40)
!2997 = !DILocation(line: 153, column: 36, scope: !2991)
!2998 = !DILocation(line: 153, column: 45, scope: !2991)
!2999 = !DILocation(line: 153, column: 54, scope: !2991)
!3000 = !DILocation(line: 155, column: 2, scope: !2991)
!3001 = !DILocation(line: 155, column: 6, scope: !2991)
!3002 = !DILocation(line: 161, column: 15, scope: !2991)
!3003 = !DILocation(line: 161, column: 26, scope: !2991)
!3004 = !DILocation(line: 161, column: 37, scope: !2991)
!3005 = !DILocation(line: 157, column: 2, scope: !2991)
!3006 = !{i64 1997377, i64 1997418, i64 1997422, i64 2149500140, i64 2149500165, i64 2149500200, i64 2149500417, i64 2149500470, i64 2149500501, i64 2149500532, i64 2149500610, i64 2149500644, i64 2149500682, i64 2149500725, i64 2149500748, i64 2149500786, i64 2149500808, i64 2149500839, i64 2149500924, i64 2149500958, i64 2149500996, i64 2149501039, i64 2149501062, i64 2149501100, i64 2149501122, i64 2149501156, i64 2149501218, i64 2149501241, i64 2149500266, i64 2149501315, i64 2149500377}
!3007 = !DILocation(line: 163, column: 6, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2991, file: !1293, line: 163, column: 6)
!3009 = !DILocation(line: 163, column: 6, scope: !2991)
!3010 = !DILocation(line: 164, column: 22, scope: !3008)
!3011 = !DILocation(line: 164, column: 33, scope: !3008)
!3012 = !DILocation(line: 164, column: 28, scope: !3008)
!3013 = !DILocation(line: 164, column: 38, scope: !3008)
!3014 = !DILocation(line: 164, column: 46, scope: !3008)
!3015 = !DILocation(line: 164, column: 44, scope: !3008)
!3016 = !DILocation(line: 164, column: 52, scope: !3008)
!3017 = !DILocation(line: 164, column: 3, scope: !3008)
!3018 = !DILocation(line: 165, column: 9, scope: !2991)
!3019 = !DILocation(line: 166, column: 1, scope: !2991)
!3020 = !DILocation(line: 165, column: 2, scope: !2991)
!3021 = !DISubprogram(name: "do_trace_write_msr", scope: !1293, file: !1293, line: 64, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3022 = distinct !DISubprogram(name: "set_mtrr_var_ranges", scope: !3, file: !3, line: 875, type: !3023, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!182, !7, !827}
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3033}
!3026 = !DILocalVariable(name: "index", arg: 1, scope: !3022, file: !3, line: 875, type: !7)
!3027 = !DILocalVariable(name: "vr", arg: 2, scope: !3022, file: !3, line: 875, type: !827)
!3028 = !DILocalVariable(name: "lo", scope: !3022, file: !3, line: 877, type: !7)
!3029 = !DILocalVariable(name: "hi", scope: !3022, file: !3, line: 877, type: !7)
!3030 = !DILocalVariable(name: "changed", scope: !3022, file: !3, line: 878, type: !182)
!3031 = !DILocalVariable(name: "__val", scope: !3032, file: !3, line: 880, type: !48)
!3032 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 880, column: 2)
!3033 = !DILocalVariable(name: "__val", scope: !3034, file: !3, line: 888, type: !48)
!3034 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 888, column: 2)
!3035 = !DILocation(line: 875, column: 46, scope: !3022)
!3036 = !DILocation(line: 875, column: 76, scope: !3022)
!3037 = !DILocation(line: 877, column: 2, scope: !3022)
!3038 = !DILocation(line: 877, column: 15, scope: !3022)
!3039 = !DILocation(line: 877, column: 19, scope: !3022)
!3040 = !DILocation(line: 878, column: 2, scope: !3022)
!3041 = !DILocation(line: 878, column: 7, scope: !3022)
!3042 = !DILocation(line: 880, column: 2, scope: !3022)
!3043 = !DILocation(line: 880, column: 2, scope: !3032)
!3044 = !DILocation(line: 881, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 881, column: 6)
!3046 = !DILocation(line: 881, column: 11, scope: !3045)
!3047 = !DILocation(line: 881, column: 19, scope: !3045)
!3048 = !DILocation(line: 881, column: 46, scope: !3045)
!3049 = !DILocation(line: 881, column: 49, scope: !3045)
!3050 = !DILocation(line: 881, column: 42, scope: !3045)
!3051 = !DILocation(line: 882, column: 6, scope: !3045)
!3052 = !DILocation(line: 882, column: 10, scope: !3045)
!3053 = !DILocation(line: 882, column: 14, scope: !3045)
!3054 = !DILocation(line: 882, column: 25, scope: !3045)
!3055 = !DILocation(line: 882, column: 24, scope: !3045)
!3056 = !DILocation(line: 882, column: 22, scope: !3045)
!3057 = !DILocation(line: 882, column: 43, scope: !3045)
!3058 = !DILocation(line: 882, column: 49, scope: !3045)
!3059 = !DILocation(line: 882, column: 48, scope: !3045)
!3060 = !DILocation(line: 882, column: 46, scope: !3045)
!3061 = !DILocation(line: 882, column: 39, scope: !3045)
!3062 = !DILocation(line: 881, column: 6, scope: !3022)
!3063 = !DILocation(line: 884, column: 14, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 882, column: 64)
!3065 = !DILocation(line: 884, column: 39, scope: !3064)
!3066 = !DILocation(line: 884, column: 43, scope: !3064)
!3067 = !DILocation(line: 884, column: 52, scope: !3064)
!3068 = !DILocation(line: 884, column: 56, scope: !3064)
!3069 = !DILocation(line: 884, column: 3, scope: !3064)
!3070 = !DILocation(line: 885, column: 11, scope: !3064)
!3071 = !DILocation(line: 886, column: 2, scope: !3064)
!3072 = !DILocation(line: 888, column: 2, scope: !3022)
!3073 = !DILocation(line: 888, column: 2, scope: !3034)
!3074 = !DILocation(line: 890, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 890, column: 6)
!3076 = !DILocation(line: 890, column: 11, scope: !3075)
!3077 = !DILocation(line: 890, column: 19, scope: !3075)
!3078 = !DILocation(line: 890, column: 46, scope: !3075)
!3079 = !DILocation(line: 890, column: 49, scope: !3075)
!3080 = !DILocation(line: 890, column: 42, scope: !3075)
!3081 = !DILocation(line: 891, column: 6, scope: !3075)
!3082 = !DILocation(line: 891, column: 10, scope: !3075)
!3083 = !DILocation(line: 891, column: 14, scope: !3075)
!3084 = !DILocation(line: 891, column: 25, scope: !3075)
!3085 = !DILocation(line: 891, column: 24, scope: !3075)
!3086 = !DILocation(line: 891, column: 22, scope: !3075)
!3087 = !DILocation(line: 891, column: 43, scope: !3075)
!3088 = !DILocation(line: 891, column: 49, scope: !3075)
!3089 = !DILocation(line: 891, column: 48, scope: !3075)
!3090 = !DILocation(line: 891, column: 46, scope: !3075)
!3091 = !DILocation(line: 891, column: 39, scope: !3075)
!3092 = !DILocation(line: 890, column: 6, scope: !3022)
!3093 = !DILocation(line: 892, column: 14, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 891, column: 64)
!3095 = !DILocation(line: 892, column: 39, scope: !3094)
!3096 = !DILocation(line: 892, column: 43, scope: !3094)
!3097 = !DILocation(line: 892, column: 52, scope: !3094)
!3098 = !DILocation(line: 892, column: 56, scope: !3094)
!3099 = !DILocation(line: 892, column: 3, scope: !3094)
!3100 = !DILocation(line: 893, column: 11, scope: !3094)
!3101 = !DILocation(line: 894, column: 2, scope: !3094)
!3102 = !DILocation(line: 895, column: 9, scope: !3022)
!3103 = !DILocation(line: 896, column: 1, scope: !3022)
!3104 = !DILocation(line: 895, column: 2, scope: !3022)
!3105 = distinct !DISubprogram(name: "set_fixed_ranges", scope: !3, file: !3, line: 854, type: !3106, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!40, !167}
!3108 = !{!3109, !3110, !3111, !3112, !3113}
!3109 = !DILocalVariable(name: "frs", arg: 1, scope: !3105, file: !3, line: 854, type: !167)
!3110 = !DILocalVariable(name: "saved", scope: !3105, file: !3, line: 856, type: !55)
!3111 = !DILocalVariable(name: "changed", scope: !3105, file: !3, line: 857, type: !182)
!3112 = !DILocalVariable(name: "block", scope: !3105, file: !3, line: 858, type: !40)
!3113 = !DILocalVariable(name: "range", scope: !3105, file: !3, line: 858, type: !40)
!3114 = !DILocation(line: 854, column: 40, scope: !3105)
!3115 = !DILocation(line: 856, column: 2, scope: !3105)
!3116 = !DILocation(line: 856, column: 22, scope: !3105)
!3117 = !DILocation(line: 856, column: 52, scope: !3105)
!3118 = !DILocation(line: 857, column: 2, scope: !3105)
!3119 = !DILocation(line: 857, column: 7, scope: !3105)
!3120 = !DILocation(line: 858, column: 2, scope: !3105)
!3121 = !DILocation(line: 858, column: 6, scope: !3105)
!3122 = !DILocation(line: 858, column: 18, scope: !3105)
!3123 = !DILocation(line: 860, column: 2, scope: !3105)
!3124 = !DILocation(line: 862, column: 2, scope: !3105)
!3125 = !DILocation(line: 862, column: 28, scope: !3105)
!3126 = !DILocation(line: 862, column: 9, scope: !3105)
!3127 = !DILocation(line: 862, column: 37, scope: !3105)
!3128 = !DILocation(line: 863, column: 14, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 863, column: 3)
!3130 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 862, column: 45)
!3131 = !DILocation(line: 863, column: 8, scope: !3129)
!3132 = !DILocation(line: 863, column: 19, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 863, column: 3)
!3134 = !DILocation(line: 863, column: 46, scope: !3133)
!3135 = !DILocation(line: 863, column: 27, scope: !3133)
!3136 = !DILocation(line: 863, column: 53, scope: !3133)
!3137 = !DILocation(line: 863, column: 25, scope: !3133)
!3138 = !DILocation(line: 863, column: 3, scope: !3129)
!3139 = !DILocation(line: 864, column: 39, scope: !3133)
!3140 = !DILocation(line: 864, column: 20, scope: !3133)
!3141 = !DILocation(line: 864, column: 46, scope: !3133)
!3142 = !DILocation(line: 864, column: 57, scope: !3133)
!3143 = !DILocation(line: 864, column: 55, scope: !3133)
!3144 = !DILocation(line: 865, column: 37, scope: !3133)
!3145 = !DILocation(line: 864, column: 4, scope: !3133)
!3146 = !DILocation(line: 863, column: 66, scope: !3133)
!3147 = !DILocation(line: 863, column: 3, scope: !3133)
!3148 = distinct !{!3148, !3138, !3149, !443, !444}
!3149 = !DILocation(line: 865, column: 39, scope: !3129)
!3150 = distinct !{!3150, !3124, !3151, !443, !444}
!3151 = !DILocation(line: 866, column: 2, scope: !3105)
!3152 = !DILocation(line: 868, column: 9, scope: !3105)
!3153 = !DILocation(line: 869, column: 1, scope: !3105)
!3154 = !DILocation(line: 868, column: 2, scope: !3105)
!3155 = distinct !DISubprogram(name: "set_fixed_range", scope: !3, file: !3, line: 756, type: !3156, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3159)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !40, !3158, !54}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165}
!3160 = !DILocalVariable(name: "msr", arg: 1, scope: !3155, file: !3, line: 756, type: !40)
!3161 = !DILocalVariable(name: "changed", arg: 2, scope: !3155, file: !3, line: 756, type: !3158)
!3162 = !DILocalVariable(name: "msrwords", arg: 3, scope: !3155, file: !3, line: 756, type: !54)
!3163 = !DILocalVariable(name: "lo", scope: !3155, file: !3, line: 758, type: !7)
!3164 = !DILocalVariable(name: "hi", scope: !3155, file: !3, line: 758, type: !7)
!3165 = !DILocalVariable(name: "__val", scope: !3166, file: !3, line: 760, type: !48)
!3166 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 760, column: 2)
!3167 = !DILocation(line: 756, column: 33, scope: !3155)
!3168 = !DILocation(line: 756, column: 44, scope: !3155)
!3169 = !DILocation(line: 756, column: 67, scope: !3155)
!3170 = !DILocation(line: 758, column: 2, scope: !3155)
!3171 = !DILocation(line: 758, column: 11, scope: !3155)
!3172 = !DILocation(line: 758, column: 15, scope: !3155)
!3173 = !DILocation(line: 760, column: 2, scope: !3155)
!3174 = !DILocation(line: 760, column: 2, scope: !3166)
!3175 = !DILocation(line: 762, column: 6, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 762, column: 6)
!3177 = !DILocation(line: 762, column: 12, scope: !3176)
!3178 = !DILocation(line: 762, column: 9, scope: !3176)
!3179 = !DILocation(line: 762, column: 24, scope: !3176)
!3180 = !DILocation(line: 762, column: 27, scope: !3176)
!3181 = !DILocation(line: 762, column: 33, scope: !3176)
!3182 = !DILocation(line: 762, column: 30, scope: !3176)
!3183 = !DILocation(line: 762, column: 6, scope: !3155)
!3184 = !DILocation(line: 763, column: 14, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 762, column: 46)
!3186 = !DILocation(line: 763, column: 19, scope: !3185)
!3187 = !DILocation(line: 763, column: 32, scope: !3185)
!3188 = !DILocation(line: 763, column: 3, scope: !3185)
!3189 = !DILocation(line: 764, column: 4, scope: !3185)
!3190 = !DILocation(line: 764, column: 12, scope: !3185)
!3191 = !DILocation(line: 765, column: 2, scope: !3185)
!3192 = !DILocation(line: 766, column: 1, scope: !3155)
!3193 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3194, file: !3194, line: 80, type: !3195, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3200)
!3194 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3197, !806}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "v", arg: 1, scope: !3193, file: !3194, line: 80, type: !3197)
!3202 = !DILocalVariable(name: "size", arg: 2, scope: !3193, file: !3194, line: 80, type: !806)
!3203 = !DILocation(line: 80, column: 74, scope: !3193)
!3204 = !DILocation(line: 80, column: 84, scope: !3193)
!3205 = !DILocation(line: 82, column: 20, scope: !3193)
!3206 = !DILocation(line: 82, column: 23, scope: !3193)
!3207 = !DILocation(line: 82, column: 2, scope: !3193)
!3208 = !DILocation(line: 83, column: 2, scope: !3193)
!3209 = !DILocation(line: 84, column: 1, scope: !3193)
!3210 = distinct !DISubprogram(name: "arch_set_bit", scope: !908, file: !908, line: 52, type: !1724, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3211)
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "nr", arg: 1, scope: !3210, file: !908, line: 52, type: !60)
!3213 = !DILocalVariable(name: "addr", arg: 2, scope: !3210, file: !908, line: 52, type: !1726)
!3214 = !DILocation(line: 52, column: 19, scope: !3210)
!3215 = !DILocation(line: 52, column: 47, scope: !3210)
!3216 = !DILocation(line: 54, column: 27, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3210, file: !908, line: 54, column: 6)
!3218 = !DILocation(line: 54, column: 6, scope: !3217)
!3219 = !DILocation(line: 54, column: 6, scope: !3210)
!3220 = !DILocation(line: 56, column: 6, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !908, line: 54, column: 32)
!3222 = !DILocation(line: 57, column: 12, scope: !3221)
!3223 = !DILocation(line: 55, column: 3, scope: !3221)
!3224 = !{i64 2148062578, i64 2148062617, i64 2148062638, i64 2148062675, i64 2148062698, i64 2148062568}
!3225 = !DILocation(line: 59, column: 2, scope: !3221)
!3226 = !DILocation(line: 61, column: 8, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3217, file: !908, line: 59, column: 9)
!3228 = !DILocation(line: 61, column: 32, scope: !3227)
!3229 = !DILocation(line: 60, column: 3, scope: !3227)
!3230 = !{i64 2148062863, i64 2148062902, i64 2148062923, i64 2148062960, i64 2148062983, i64 2148062853}
!3231 = !DILocation(line: 63, column: 1, scope: !3210)
!3232 = distinct !DISubprogram(name: "kasan_check_write", scope: !3233, file: !3233, line: 44, type: !3234, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3236)
!3233 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!182, !3197, !7}
!3236 = !{!3237, !3238}
!3237 = !DILocalVariable(name: "p", arg: 1, scope: !3232, file: !3233, line: 44, type: !3197)
!3238 = !DILocalVariable(name: "size", arg: 2, scope: !3232, file: !3233, line: 44, type: !7)
!3239 = !DILocation(line: 44, column: 59, scope: !3232)
!3240 = !DILocation(line: 44, column: 75, scope: !3232)
!3241 = !DILocation(line: 46, column: 2, scope: !3232)
!3242 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3243, file: !3243, line: 229, type: !3244, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3246)
!3243 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !3197, !806, !40}
!3246 = !{!3247, !3248, !3249}
!3247 = !DILocalVariable(name: "ptr", arg: 1, scope: !3242, file: !3243, line: 229, type: !3197)
!3248 = !DILocalVariable(name: "size", arg: 2, scope: !3242, file: !3243, line: 229, type: !806)
!3249 = !DILocalVariable(name: "type", arg: 3, scope: !3242, file: !3243, line: 230, type: !40)
!3250 = !DILocation(line: 229, column: 60, scope: !3242)
!3251 = !DILocation(line: 229, column: 72, scope: !3242)
!3252 = !DILocation(line: 230, column: 15, scope: !3242)
!3253 = !DILocation(line: 230, column: 23, scope: !3242)
!3254 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3255, file: !3255, line: 101, type: !1652, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3256)
!3255 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "flags", scope: !3254, file: !3255, line: 103, type: !42)
!3258 = !DILocation(line: 103, column: 2, scope: !3254)
!3259 = !DILocation(line: 103, column: 16, scope: !3254)
!3260 = !DILocation(line: 103, column: 24, scope: !3254)
!3261 = !DILocation(line: 104, column: 2, scope: !3254)
!3262 = !DILocation(line: 105, column: 9, scope: !3254)
!3263 = !DILocation(line: 106, column: 1, scope: !3254)
!3264 = !DILocation(line: 105, column: 2, scope: !3254)
!3265 = !DISubprogram(name: "cache_disable", scope: !3266, file: !3266, line: 13, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3266 = !DIFile(filename: "./arch/x86/include/asm/cacheinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72510c6c59c3c1d875de31fb2baaf624")
!3267 = !DISubprogram(name: "cache_enable", scope: !3266, file: !3266, line: 14, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3268 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3255, file: !3255, line: 132, type: !3269, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !42}
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "flags", arg: 1, scope: !3268, file: !3255, line: 132, type: !42)
!3273 = !DILocation(line: 132, column: 66, scope: !3268)
!3274 = !DILocation(line: 134, column: 32, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3268, file: !3255, line: 134, column: 6)
!3276 = !DILocation(line: 134, column: 7, scope: !3275)
!3277 = !DILocation(line: 134, column: 6, scope: !3268)
!3278 = !DILocation(line: 135, column: 3, scope: !3275)
!3279 = !DILocation(line: 136, column: 1, scope: !3268)
!3280 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3255, file: !3255, line: 65, type: !1652, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3281 = !DILocation(line: 67, column: 9, scope: !3280)
!3282 = !DILocation(line: 67, column: 2, scope: !3280)
!3283 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3255, file: !3255, line: 70, type: !379, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3284 = !DILocation(line: 72, column: 2, scope: !3283)
!3285 = !DILocation(line: 73, column: 1, scope: !3283)
!3286 = distinct !DISubprogram(name: "native_save_fl", scope: !3255, file: !3255, line: 17, type: !1652, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3287)
!3287 = !{!3288}
!3288 = !DILocalVariable(name: "flags", scope: !3286, file: !3255, line: 19, type: !42)
!3289 = !DILocation(line: 19, column: 2, scope: !3286)
!3290 = !DILocation(line: 19, column: 16, scope: !3286)
!3291 = !DILocation(line: 26, column: 2, scope: !3286)
!3292 = !{i64 2038471, i64 2038492}
!3293 = !DILocation(line: 32, column: 9, scope: !3286)
!3294 = !DILocation(line: 33, column: 1, scope: !3286)
!3295 = !DILocation(line: 32, column: 2, scope: !3286)
!3296 = distinct !DISubprogram(name: "native_irq_disable", scope: !3255, file: !3255, line: 35, type: !379, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3297 = !DILocation(line: 37, column: 2, scope: !3296)
!3298 = !{i64 2038675}
!3299 = !DILocation(line: 38, column: 1, scope: !3296)
!3300 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3255, file: !3255, line: 120, type: !3301, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!40, !42}
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "flags", arg: 1, scope: !3300, file: !3255, line: 120, type: !42)
!3305 = !DILocation(line: 120, column: 67, scope: !3300)
!3306 = !DILocation(line: 122, column: 11, scope: !3300)
!3307 = !DILocation(line: 122, column: 17, scope: !3300)
!3308 = !DILocation(line: 122, column: 9, scope: !3300)
!3309 = !DILocation(line: 122, column: 2, scope: !3300)
!3310 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !3255, file: !3255, line: 75, type: !379, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3311 = !DILocation(line: 77, column: 2, scope: !3310)
!3312 = !DILocation(line: 78, column: 1, scope: !3310)
!3313 = distinct !DISubprogram(name: "native_irq_enable", scope: !3255, file: !3255, line: 40, type: !379, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3314 = !DILocation(line: 42, column: 2, scope: !3313)
!3315 = !{i64 2038767}
!3316 = !DILocation(line: 43, column: 1, scope: !3313)
!3317 = distinct !DISubprogram(name: "__preempt_count_add", scope: !3318, file: !3318, line: 78, type: !2458, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3319)
!3318 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3319 = !{!3320, !3321, !3324}
!3320 = !DILocalVariable(name: "val", arg: 1, scope: !3317, file: !3318, line: 78, type: !40)
!3321 = !DILocalVariable(name: "pao_ID__", scope: !3322, file: !3318, line: 80, type: !3323)
!3322 = distinct !DILexicalBlock(scope: !3317, file: !3318, line: 80, column: 2)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!3324 = !DILocalVariable(name: "pto_val__", scope: !3325, file: !3318, line: 80, type: !43)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3318, line: 80, column: 2)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !3318, line: 80, column: 2)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !3318, line: 80, column: 2)
!3328 = !DILocation(line: 78, column: 53, scope: !3317)
!3329 = !DILocation(line: 80, column: 2, scope: !3317)
!3330 = !DILocation(line: 80, column: 2, scope: !3322)
!3331 = !DILocation(line: 80, column: 2, scope: !3327)
!3332 = !DILocation(line: 80, column: 2, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !3318, line: 80, column: 2)
!3334 = !{i64 2149611549}
!3335 = !DILocation(line: 80, column: 2, scope: !3326)
!3336 = !DILocation(line: 80, column: 2, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3326, file: !3318, line: 80, column: 2)
!3338 = !{i64 2149611844}
!3339 = !DILocation(line: 80, column: 2, scope: !3325)
!3340 = !{i64 2149612549}
!3341 = !DILocation(line: 81, column: 1, scope: !3317)
!3342 = distinct !DISubprogram(name: "fls64", scope: !908, file: !908, line: 401, type: !3343, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!40, !49}
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "x", arg: 1, scope: !3342, file: !908, line: 401, type: !49)
!3347 = !DILocalVariable(name: "bitpos", scope: !3342, file: !908, line: 403, type: !40)
!3348 = !DILocation(line: 401, column: 40, scope: !3342)
!3349 = !DILocation(line: 403, column: 2, scope: !3342)
!3350 = !DILocation(line: 403, column: 6, scope: !3342)
!3351 = !DILocation(line: 409, column: 2, scope: !3342)
!3352 = !DILocation(line: 411, column: 14, scope: !3342)
!3353 = !{i64 575293}
!3354 = !DILocation(line: 412, column: 9, scope: !3342)
!3355 = !DILocation(line: 412, column: 16, scope: !3342)
!3356 = !DILocation(line: 413, column: 1, scope: !3342)
!3357 = !DILocation(line: 412, column: 2, scope: !3342)
!3358 = !DISubprogram(name: "add_taint", scope: !32, file: !32, line: 93, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !7, !31}
!3361 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !3318, file: !3318, line: 93, type: !960, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3362)
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "c", scope: !3364, file: !3318, line: 95, type: !182)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !3318, line: 95, column: 9)
!3365 = !DILocation(line: 95, column: 9, scope: !3364)
!3366 = !{i64 2149615905, i64 2149615998}
!3367 = !DILocation(line: 95, column: 9, scope: !3361)
!3368 = !DILocation(line: 95, column: 2, scope: !3361)
