; ModuleID = 'net/core/gen_estimator.c'
source_filename = "net/core/gen_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_new_estimator: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_new_estimator ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_kill_estimator: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_kill_estimator ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_replace_estimator: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_replace_estimator ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_estimator_active: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_estimator_active ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_estimator_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_estimator_read ; .previous"

%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.u64_stats_sync = type {}
%struct.gnet_estimator = type { i8, i8 }
%struct.net_rate_estimator = type { ptr, ptr, i8, ptr, i8, i8, %struct.seqcount, i64, i64, i64, i64, i64, %struct.timer_list, %struct.callback_head }
%struct.seqcount = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.gnet_stats_rate_est64 = type { i64, i64 }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID___addressable_gen_new_estimator540 = internal global ptr @gen_new_estimator, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_gen_kill_estimator543 = internal global ptr @gen_kill_estimator, section ".discard.addressable", align 8, !dbg !172
@__UNIQUE_ID___addressable_gen_replace_estimator544 = internal global ptr @gen_replace_estimator, section ".discard.addressable", align 8, !dbg !174
@__UNIQUE_ID___addressable_gen_estimator_active547 = internal global ptr @gen_estimator_active, section ".discard.addressable", align 8, !dbg !176
@__UNIQUE_ID___addressable_gen_estimator_read550 = internal global ptr @gen_estimator_read, section ".discard.addressable", align 8, !dbg !178
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !180
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@est_timer.__UNIQUE_ID___addressable___SCK__preempt_schedule535 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !185
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_gen_new_estimator540, ptr @__UNIQUE_ID___addressable_gen_kill_estimator543, ptr @__UNIQUE_ID___addressable_gen_replace_estimator544, ptr @__UNIQUE_ID___addressable_gen_estimator_active547, ptr @__UNIQUE_ID___addressable_gen_estimator_read550, ptr @est_timer.__UNIQUE_ID___addressable___SCK__preempt_schedule535], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @gen_new_estimator(ptr noundef %bstats, ptr noundef %cpu_bstats, ptr noundef %rate_est, ptr noundef %lock, i1 noundef zeroext %running, ptr noundef %opt) #0 align 16 !dbg !208 {
entry:
  %retval = alloca i32, align 4
  %bstats.addr = alloca ptr, align 8
  %cpu_bstats.addr = alloca ptr, align 8
  %rate_est.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %running.addr = alloca i8, align 1
  %opt.addr = alloca ptr, align 8
  %parm = alloca ptr, align 8
  %old = alloca ptr, align 8
  %est = alloca ptr, align 8
  %b = alloca %struct.gnet_stats_basic_sync, align 16
  %intvl_log = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %___p = alloca ptr, align 8
  store ptr %bstats, ptr %bstats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bstats.addr, metadata !219, metadata !DIExpression()), !dbg !242
  store ptr %cpu_bstats, ptr %cpu_bstats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_bstats.addr, metadata !220, metadata !DIExpression()), !dbg !243
  store ptr %rate_est, ptr %rate_est.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rate_est.addr, metadata !221, metadata !DIExpression()), !dbg !244
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !222, metadata !DIExpression()), !dbg !245
  %frombool = zext i1 %running to i8
  store i8 %frombool, ptr %running.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %running.addr, metadata !223, metadata !DIExpression()), !dbg !246
  store ptr %opt, ptr %opt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !224, metadata !DIExpression()), !dbg !247
  call void @llvm.lifetime.start.p0(i64 8, ptr %parm) #16, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %parm, metadata !225, metadata !DIExpression()), !dbg !249
  %0 = load ptr, ptr %opt.addr, align 8, !dbg !250
  %call = call ptr @nla_data(ptr noundef %0) #17, !dbg !251
  store ptr %call, ptr %parm, align 8, !dbg !249
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %old, metadata !233, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #16, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %est, metadata !234, metadata !DIExpression()), !dbg !254
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %b, metadata !235, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 4, ptr %intvl_log) #16, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %intvl_log, metadata !236, metadata !DIExpression()), !dbg !258
  %1 = load ptr, ptr %opt.addr, align 8, !dbg !259
  %call1 = call i32 @nla_len(ptr noundef %1) #17, !dbg !261
  %conv = sext i32 %call1 to i64, !dbg !261
  %cmp = icmp ult i64 %conv, 2, !dbg !262
  br i1 %cmp, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !264

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %parm, align 8, !dbg !265
  %interval = getelementptr inbounds %struct.gnet_estimator, ptr %2, i32 0, i32 0, !dbg !267
  %3 = load i8, ptr %interval, align 1, !dbg !267
  %conv3 = sext i8 %3 to i32, !dbg !265
  %cmp4 = icmp slt i32 %conv3, -2, !dbg !268
  br i1 %cmp4, label %if.then10, label %lor.lhs.false, !dbg !269

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %parm, align 8, !dbg !270
  %interval6 = getelementptr inbounds %struct.gnet_estimator, ptr %4, i32 0, i32 0, !dbg !271
  %5 = load i8, ptr %interval6, align 1, !dbg !271
  %conv7 = sext i8 %5 to i32, !dbg !270
  %cmp8 = icmp sgt i32 %conv7, 3, !dbg !272
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !273

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

if.end11:                                         ; preds = %lor.lhs.false
  %6 = load ptr, ptr %parm, align 8, !dbg !275
  %ewma_log = getelementptr inbounds %struct.gnet_estimator, ptr %6, i32 0, i32 1, !dbg !277
  %7 = load i8, ptr %ewma_log, align 1, !dbg !277
  %conv12 = zext i8 %7 to i32, !dbg !275
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !278
  br i1 %cmp13, label %if.then20, label %lor.lhs.false15, !dbg !279

lor.lhs.false15:                                  ; preds = %if.end11
  %8 = load ptr, ptr %parm, align 8, !dbg !280
  %ewma_log16 = getelementptr inbounds %struct.gnet_estimator, ptr %8, i32 0, i32 1, !dbg !281
  %9 = load i8, ptr %ewma_log16, align 1, !dbg !281
  %conv17 = zext i8 %9 to i32, !dbg !280
  %cmp18 = icmp sge i32 %conv17, 31, !dbg !282
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !283

if.then20:                                        ; preds = %lor.lhs.false15, %if.end11
  store i32 -22, ptr %retval, align 4, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

if.end21:                                         ; preds = %lor.lhs.false15
  %call22 = call noalias ptr @kzalloc(i64 noundef 136, i32 noundef 3264) #18, !dbg !285
  store ptr %call22, ptr %est, align 8, !dbg !286
  %10 = load ptr, ptr %est, align 8, !dbg !287
  %tobool = icmp ne ptr %10, null, !dbg !287
  br i1 %tobool, label %if.end24, label %if.then23, !dbg !289

if.then23:                                        ; preds = %if.end21
  store i32 -105, ptr %retval, align 4, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

if.end24:                                         ; preds = %if.end21
  %11 = load ptr, ptr %est, align 8, !dbg !291
  %seq = getelementptr inbounds %struct.net_rate_estimator, ptr %11, i32 0, i32 6, !dbg !291
  call void @__seqcount_init(ptr noundef %seq, ptr noundef null, ptr noundef null) #17, !dbg !291
  %12 = load ptr, ptr %parm, align 8, !dbg !292
  %interval25 = getelementptr inbounds %struct.gnet_estimator, ptr %12, i32 0, i32 0, !dbg !293
  %13 = load i8, ptr %interval25, align 1, !dbg !293
  %conv26 = sext i8 %13 to i32, !dbg !292
  %add = add i32 %conv26, 2, !dbg !294
  store i32 %add, ptr %intvl_log, align 4, !dbg !295
  %14 = load ptr, ptr %bstats.addr, align 8, !dbg !296
  %15 = load ptr, ptr %est, align 8, !dbg !297
  %bstats27 = getelementptr inbounds %struct.net_rate_estimator, ptr %15, i32 0, i32 0, !dbg !298
  store ptr %14, ptr %bstats27, align 8, !dbg !299
  %16 = load ptr, ptr %lock.addr, align 8, !dbg !300
  %17 = load ptr, ptr %est, align 8, !dbg !301
  %stats_lock = getelementptr inbounds %struct.net_rate_estimator, ptr %17, i32 0, i32 1, !dbg !302
  store ptr %16, ptr %stats_lock, align 8, !dbg !303
  %18 = load i8, ptr %running.addr, align 1, !dbg !304, !range !305, !noundef !62
  %tobool28 = trunc i8 %18 to i1, !dbg !304
  %19 = load ptr, ptr %est, align 8, !dbg !306
  %running29 = getelementptr inbounds %struct.net_rate_estimator, ptr %19, i32 0, i32 2, !dbg !307
  %frombool30 = zext i1 %tobool28 to i8, !dbg !308
  store i8 %frombool30, ptr %running29, align 8, !dbg !308
  %20 = load ptr, ptr %parm, align 8, !dbg !309
  %ewma_log31 = getelementptr inbounds %struct.gnet_estimator, ptr %20, i32 0, i32 1, !dbg !310
  %21 = load i8, ptr %ewma_log31, align 1, !dbg !310
  %22 = load ptr, ptr %est, align 8, !dbg !311
  %ewma_log32 = getelementptr inbounds %struct.net_rate_estimator, ptr %22, i32 0, i32 4, !dbg !312
  store i8 %21, ptr %ewma_log32, align 8, !dbg !313
  %23 = load i32, ptr %intvl_log, align 4, !dbg !314
  %conv33 = trunc i32 %23 to i8, !dbg !314
  %24 = load ptr, ptr %est, align 8, !dbg !315
  %intvl_log34 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 5, !dbg !316
  store i8 %conv33, ptr %intvl_log34, align 1, !dbg !317
  %25 = load ptr, ptr %cpu_bstats.addr, align 8, !dbg !318
  %26 = load ptr, ptr %est, align 8, !dbg !319
  %cpu_bstats35 = getelementptr inbounds %struct.net_rate_estimator, ptr %26, i32 0, i32 3, !dbg !320
  store ptr %25, ptr %cpu_bstats35, align 8, !dbg !321
  %27 = load ptr, ptr %lock.addr, align 8, !dbg !322
  %tobool36 = icmp ne ptr %27, null, !dbg !322
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !324

if.then37:                                        ; preds = %if.end24
  call void @local_bh_disable() #17, !dbg !325
  br label %if.end38, !dbg !325

if.end38:                                         ; preds = %if.then37, %if.end24
  %28 = load ptr, ptr %est, align 8, !dbg !326
  call void @est_fetch_counters(ptr noundef %28, ptr noundef %b) #17, !dbg !327
  %29 = load ptr, ptr %lock.addr, align 8, !dbg !328
  %tobool39 = icmp ne ptr %29, null, !dbg !328
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !330

if.then40:                                        ; preds = %if.end38
  call void @local_bh_enable() #17, !dbg !331
  br label %if.end41, !dbg !331

if.end41:                                         ; preds = %if.then40, %if.end38
  %bytes = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 0, !dbg !332
  %call42 = call i64 @u64_stats_read(ptr noundef %bytes) #17, !dbg !333
  %30 = load ptr, ptr %est, align 8, !dbg !334
  %last_bytes = getelementptr inbounds %struct.net_rate_estimator, ptr %30, i32 0, i32 8, !dbg !335
  store i64 %call42, ptr %last_bytes, align 8, !dbg !336
  %packets = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 1, !dbg !337
  %call43 = call i64 @u64_stats_read(ptr noundef %packets) #17, !dbg !338
  %31 = load ptr, ptr %est, align 8, !dbg !339
  %last_packets = getelementptr inbounds %struct.net_rate_estimator, ptr %31, i32 0, i32 7, !dbg !340
  store i64 %call43, ptr %last_packets, align 8, !dbg !341
  %32 = load ptr, ptr %lock.addr, align 8, !dbg !342
  %tobool44 = icmp ne ptr %32, null, !dbg !342
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !344

if.then45:                                        ; preds = %if.end41
  %33 = load ptr, ptr %lock.addr, align 8, !dbg !345
  call void @spin_lock_bh(ptr noundef %33) #17, !dbg !346
  br label %if.end46, !dbg !346

if.end46:                                         ; preds = %if.then45, %if.end41
  br label %do.body, !dbg !347

do.body:                                          ; preds = %if.end46
  br label %do.cond, !dbg !349

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !349

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %rate_est.addr, align 8, !dbg !347
  %35 = load ptr, ptr %34, align 8, !dbg !347
  store ptr %35, ptr %tmp, align 8, !dbg !349
  %36 = load ptr, ptr %tmp, align 8, !dbg !347
  store ptr %36, ptr %old, align 8, !dbg !351
  %37 = load ptr, ptr %old, align 8, !dbg !352
  %tobool47 = icmp ne ptr %37, null, !dbg !352
  br i1 %tobool47, label %if.then48, label %if.end52, !dbg !354

if.then48:                                        ; preds = %do.end
  %38 = load ptr, ptr %old, align 8, !dbg !355
  %timer = getelementptr inbounds %struct.net_rate_estimator, ptr %38, i32 0, i32 12, !dbg !357
  %call49 = call i32 @del_timer_sync(ptr noundef %timer) #17, !dbg !358
  %39 = load ptr, ptr %old, align 8, !dbg !359
  %avbps = getelementptr inbounds %struct.net_rate_estimator, ptr %39, i32 0, i32 10, !dbg !360
  %40 = load i64, ptr %avbps, align 8, !dbg !360
  %41 = load ptr, ptr %est, align 8, !dbg !361
  %avbps50 = getelementptr inbounds %struct.net_rate_estimator, ptr %41, i32 0, i32 10, !dbg !362
  store i64 %40, ptr %avbps50, align 8, !dbg !363
  %42 = load ptr, ptr %old, align 8, !dbg !364
  %avpps = getelementptr inbounds %struct.net_rate_estimator, ptr %42, i32 0, i32 9, !dbg !365
  %43 = load i64, ptr %avpps, align 8, !dbg !365
  %44 = load ptr, ptr %est, align 8, !dbg !366
  %avpps51 = getelementptr inbounds %struct.net_rate_estimator, ptr %44, i32 0, i32 9, !dbg !367
  store i64 %43, ptr %avpps51, align 8, !dbg !368
  br label %if.end52, !dbg !369

if.end52:                                         ; preds = %if.then48, %do.end
  %45 = load volatile i64, ptr @jiffies, align 64, !dbg !370
  %46 = load i32, ptr %intvl_log, align 4, !dbg !371
  %shl = shl i32 250, %46, !dbg !372
  %conv53 = sext i32 %shl to i64, !dbg !373
  %add54 = add i64 %45, %conv53, !dbg !374
  %47 = load ptr, ptr %est, align 8, !dbg !375
  %next_jiffies = getelementptr inbounds %struct.net_rate_estimator, ptr %47, i32 0, i32 11, !dbg !376
  store i64 %add54, ptr %next_jiffies, align 8, !dbg !377
  %48 = load ptr, ptr %est, align 8, !dbg !378
  %timer55 = getelementptr inbounds %struct.net_rate_estimator, ptr %48, i32 0, i32 12, !dbg !378
  call void @init_timer_key(ptr noundef %timer55, ptr noundef @est_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #17, !dbg !378
  %49 = load ptr, ptr %est, align 8, !dbg !379
  %timer56 = getelementptr inbounds %struct.net_rate_estimator, ptr %49, i32 0, i32 12, !dbg !380
  %50 = load ptr, ptr %est, align 8, !dbg !381
  %next_jiffies57 = getelementptr inbounds %struct.net_rate_estimator, ptr %50, i32 0, i32 11, !dbg !382
  %51 = load i64, ptr %next_jiffies57, align 8, !dbg !382
  %call58 = call i32 @mod_timer(ptr noundef %timer56, i64 noundef %51) #17, !dbg !383
  br label %do.body59, !dbg !384

do.body59:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !237, metadata !DIExpression()), !dbg !385
  %52 = load ptr, ptr %est, align 8, !dbg !385
  %53 = ptrtoint ptr %52 to i64, !dbg !385
  store i64 %53, ptr %_r_a_p__v, align 8, !dbg !385
  br i1 false, label %land.lhs.true, label %if.else, !dbg !386

land.lhs.true:                                    ; preds = %do.body59
  %54 = load i64, ptr %_r_a_p__v, align 8, !dbg !386
  %cmp60 = icmp eq i64 %54, 0, !dbg !386
  br i1 %cmp60, label %if.then62, label %if.else, !dbg !385

if.then62:                                        ; preds = %land.lhs.true
  br label %do.body63, !dbg !386

do.body63:                                        ; preds = %if.then62
  br label %do.body64, !dbg !388

do.body64:                                        ; preds = %do.body63
  br label %do.cond65, !dbg !390

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !390

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !388

do.body67:                                        ; preds = %do.end66
  %55 = load i64, ptr %_r_a_p__v, align 8, !dbg !392
  %56 = inttoptr i64 %55 to ptr, !dbg !392
  %57 = load ptr, ptr %rate_est.addr, align 8, !dbg !392
  store volatile ptr %56, ptr %57, align 8, !dbg !392
  br label %do.cond68, !dbg !392

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !392

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !388

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !388

do.end71:                                         ; preds = %do.cond70
  br label %if.end93, !dbg !388

if.else:                                          ; preds = %land.lhs.true, %do.body59
  br label %do.body72, !dbg !386

do.body72:                                        ; preds = %if.else
  br label %do.body73, !dbg !394

do.body73:                                        ; preds = %do.body72
  br label %do.cond74, !dbg !396

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !396

do.end75:                                         ; preds = %do.cond74
  br label %do.body76, !dbg !394

do.body76:                                        ; preds = %do.end75
  br label %do.body77, !dbg !398

do.body77:                                        ; preds = %do.body76
  br label %do.cond78, !dbg !400

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !400

do.end79:                                         ; preds = %do.cond78
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !398, !srcloc !402
  br label %do.body80, !dbg !398

do.body80:                                        ; preds = %do.end79
  br label %do.body81, !dbg !403

do.body81:                                        ; preds = %do.body80
  br label %do.cond82, !dbg !405

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !405

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !403

do.body84:                                        ; preds = %do.end83
  %58 = load i64, ptr %_r_a_p__v, align 8, !dbg !407
  %59 = inttoptr i64 %58 to ptr, !dbg !407
  %60 = load ptr, ptr %rate_est.addr, align 8, !dbg !407
  store volatile ptr %59, ptr %60, align 8, !dbg !407
  br label %do.cond85, !dbg !407

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !407

do.end86:                                         ; preds = %do.cond85
  br label %do.cond87, !dbg !403

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !403

do.end88:                                         ; preds = %do.cond87
  br label %do.cond89, !dbg !398

do.cond89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !398

do.end90:                                         ; preds = %do.cond89
  br label %do.cond91, !dbg !394

do.cond91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !394

do.end92:                                         ; preds = %do.cond91
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %do.end71
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !384
  br label %do.cond94, !dbg !385

do.cond94:                                        ; preds = %if.end93
  br label %do.end95, !dbg !385

do.end95:                                         ; preds = %do.cond94
  %61 = load ptr, ptr %lock.addr, align 8, !dbg !409
  %tobool96 = icmp ne ptr %61, null, !dbg !409
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !411

if.then97:                                        ; preds = %do.end95
  %62 = load ptr, ptr %lock.addr, align 8, !dbg !412
  call void @spin_unlock_bh(ptr noundef %62) #17, !dbg !413
  br label %if.end98, !dbg !413

if.end98:                                         ; preds = %if.then97, %do.end95
  %63 = load ptr, ptr %old, align 8, !dbg !414
  %tobool99 = icmp ne ptr %63, null, !dbg !414
  br i1 %tobool99, label %if.then100, label %if.end110, !dbg !415

if.then100:                                       ; preds = %if.end98
  br label %do.body101, !dbg !416

do.body101:                                       ; preds = %if.then100
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #16, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !239, metadata !DIExpression()), !dbg !417
  %64 = load ptr, ptr %old, align 8, !dbg !417
  store ptr %64, ptr %___p, align 8, !dbg !417
  %65 = load ptr, ptr %___p, align 8, !dbg !418
  %tobool102 = icmp ne ptr %65, null, !dbg !418
  br i1 %tobool102, label %if.then103, label %if.end107, !dbg !417

if.then103:                                       ; preds = %do.body101
  br label %do.body104, !dbg !420

do.body104:                                       ; preds = %if.then103
  br label %do.cond105, !dbg !422

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !422

do.end106:                                        ; preds = %do.cond105
  %66 = load ptr, ptr %___p, align 8, !dbg !420
  %rcu = getelementptr inbounds %struct.net_rate_estimator, ptr %66, i32 0, i32 13, !dbg !420
  %67 = load ptr, ptr %___p, align 8, !dbg !420
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %67) #17, !dbg !420
  br label %if.end107, !dbg !420

if.end107:                                        ; preds = %do.end106, %do.body101
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #16, !dbg !416
  br label %do.cond108, !dbg !417

do.cond108:                                       ; preds = %if.end107
  br label %do.end109, !dbg !417

do.end109:                                        ; preds = %do.cond108
  br label %if.end110, !dbg !417

if.end110:                                        ; preds = %do.end109, %if.end98
  store i32 0, ptr %retval, align 4, !dbg !424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !424

cleanup:                                          ; preds = %if.end110, %if.then23, %if.then20, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %intvl_log) #16, !dbg !425
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #16, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %parm) #16, !dbg !425
  %68 = load i32, ptr %retval, align 4, !dbg !425
  ret i32 %68, !dbg !425
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_data(ptr noundef %nla) #3 align 16 !dbg !426 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !435
  %add.ptr = getelementptr i8, ptr %0, i64 4, !dbg !436
  ret ptr %add.ptr, !dbg !437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_len(ptr noundef %nla) #3 align 16 !dbg !438 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !444
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 0, !dbg !445
  %1 = load i16, ptr %nla_len, align 2, !dbg !445
  %conv = zext i16 %1 to i32, !dbg !444
  %sub = sub i32 %conv, 4, !dbg !446
  ret i32 %sub, !dbg !447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !448 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !456, metadata !DIExpression()), !dbg !458
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !457, metadata !DIExpression()), !dbg !459
  %0 = load i64, ptr %size.addr, align 8, !dbg !460
  %1 = load i32, ptr %flags.addr, align 4, !dbg !461
  %or = or i32 %1, 256, !dbg !462
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !463
  ret ptr %call, !dbg !464
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqcount_init(ptr noundef %s, ptr noundef %name, ptr noundef %key) #3 align 16 !dbg !465 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !475, metadata !DIExpression()), !dbg !478
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !476, metadata !DIExpression()), !dbg !479
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !477, metadata !DIExpression()), !dbg !480
  br label %do.body, !dbg !481

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !482
  %1 = load ptr, ptr %key.addr, align 8, !dbg !482
  br label %do.end, !dbg !482

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %s.addr, align 8, !dbg !484
  %sequence = getelementptr inbounds %struct.seqcount, ptr %2, i32 0, i32 0, !dbg !485
  store i32 0, ptr %sequence, align 4, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_bh_disable() #3 align 16 !dbg !488 {
entry:
  %__here = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__here) #16, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %__here, metadata !493, metadata !DIExpression()), !dbg !495
  %0 = call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #19, !dbg !495, !srcloc !496
  store i64 %0, ptr %__here, align 8, !dbg !495
  %1 = load i64, ptr %__here, align 8, !dbg !495
  store i64 %1, ptr %tmp, align 8, !dbg !495
  call void @llvm.lifetime.end.p0(i64 8, ptr %__here) #16, !dbg !497
  %2 = load i64, ptr %tmp, align 8, !dbg !495
  call void @__local_bh_disable_ip(i64 noundef %2, i32 noundef 512) #17, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @est_fetch_counters(ptr noundef %e, ptr noundef %b) #0 align 16 !dbg !500 {
entry:
  %e.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !504, metadata !DIExpression()), !dbg !506
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !505, metadata !DIExpression()), !dbg !507
  %0 = load ptr, ptr %b.addr, align 8, !dbg !508
  call void @gnet_stats_basic_sync_init(ptr noundef %0) #17, !dbg !509
  %1 = load ptr, ptr %e.addr, align 8, !dbg !510
  %stats_lock = getelementptr inbounds %struct.net_rate_estimator, ptr %1, i32 0, i32 1, !dbg !512
  %2 = load ptr, ptr %stats_lock, align 8, !dbg !512
  %tobool = icmp ne ptr %2, null, !dbg !510
  br i1 %tobool, label %if.then, label %if.end, !dbg !513

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %e.addr, align 8, !dbg !514
  %stats_lock1 = getelementptr inbounds %struct.net_rate_estimator, ptr %3, i32 0, i32 1, !dbg !515
  %4 = load ptr, ptr %stats_lock1, align 8, !dbg !515
  call void @spin_lock(ptr noundef %4) #17, !dbg !516
  br label %if.end, !dbg !516

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %b.addr, align 8, !dbg !517
  %6 = load ptr, ptr %e.addr, align 8, !dbg !518
  %cpu_bstats = getelementptr inbounds %struct.net_rate_estimator, ptr %6, i32 0, i32 3, !dbg !519
  %7 = load ptr, ptr %cpu_bstats, align 8, !dbg !519
  %8 = load ptr, ptr %e.addr, align 8, !dbg !520
  %bstats = getelementptr inbounds %struct.net_rate_estimator, ptr %8, i32 0, i32 0, !dbg !521
  %9 = load ptr, ptr %bstats, align 8, !dbg !521
  %10 = load ptr, ptr %e.addr, align 8, !dbg !522
  %running = getelementptr inbounds %struct.net_rate_estimator, ptr %10, i32 0, i32 2, !dbg !523
  %11 = load i8, ptr %running, align 8, !dbg !523, !range !305, !noundef !62
  %tobool2 = trunc i8 %11 to i1, !dbg !523
  call void @gnet_stats_add_basic(ptr noundef %5, ptr noundef %7, ptr noundef %9, i1 noundef zeroext %tobool2) #17, !dbg !524
  %12 = load ptr, ptr %e.addr, align 8, !dbg !525
  %stats_lock3 = getelementptr inbounds %struct.net_rate_estimator, ptr %12, i32 0, i32 1, !dbg !527
  %13 = load ptr, ptr %stats_lock3, align 8, !dbg !527
  %tobool4 = icmp ne ptr %13, null, !dbg !525
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !528

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %e.addr, align 8, !dbg !529
  %stats_lock6 = getelementptr inbounds %struct.net_rate_estimator, ptr %14, i32 0, i32 1, !dbg !530
  %15 = load ptr, ptr %stats_lock6, align 8, !dbg !530
  call void @spin_unlock(ptr noundef %15) #17, !dbg !531
  br label %if.end7, !dbg !531

if.end7:                                          ; preds = %if.then5, %if.end
  ret void, !dbg !532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_bh_enable() #3 align 16 !dbg !533 {
entry:
  %__here = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__here) #16, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %__here, metadata !535, metadata !DIExpression()), !dbg !537
  %0 = call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #19, !dbg !537, !srcloc !538
  store i64 %0, ptr %__here, align 8, !dbg !537
  %1 = load i64, ptr %__here, align 8, !dbg !537
  store i64 %1, ptr %tmp, align 8, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__here) #16, !dbg !539
  %2 = load i64, ptr %tmp, align 8, !dbg !537
  call void @__local_bh_enable_ip(i64 noundef %2, i32 noundef 512) #17, !dbg !540
  ret void, !dbg !541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @u64_stats_read(ptr noundef %p) #3 align 16 !dbg !542 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load ptr, ptr %p.addr, align 8, !dbg !550
  %v = getelementptr inbounds %struct.u64_stats_t, ptr %0, i32 0, i32 0, !dbg !550
  %a = getelementptr inbounds %struct.local64_t, ptr %v, i32 0, i32 0, !dbg !550
  %a1 = getelementptr inbounds %struct.local_t, ptr %a, i32 0, i32 0, !dbg !550
  %call = call i64 @atomic_long_read(ptr noundef %a1) #17, !dbg !550
  ret i64 %call, !dbg !551
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_bh(ptr noundef %lock) #5 align 16 !dbg !552 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !557, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !559
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !559
  call void @_raw_spin_lock_bh(ptr noundef %1) #17, !dbg !559
  ret void, !dbg !560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @del_timer_sync(ptr noundef %timer) #3 align 16 !dbg !561 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !565, metadata !DIExpression()), !dbg !566
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !567
  %call = call i32 @timer_delete_sync(ptr noundef %0) #17, !dbg !568
  ret i32 %call, !dbg !569
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !570 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @est_timer(ptr noundef %t) #0 align 16 !dbg !187 {
entry:
  %t.addr = alloca ptr, align 8
  %est = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %b = alloca %struct.gnet_stats_basic_sync, align 16
  %b_bytes = alloca i64, align 8
  %b_packets = alloca i64, align 8
  %rate = alloca i64, align 8
  %brate = alloca i64, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !189, metadata !DIExpression()), !dbg !573
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #16, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %est, metadata !190, metadata !DIExpression()), !dbg !575
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !191, metadata !DIExpression()), !dbg !576
  %0 = load ptr, ptr %t.addr, align 8, !dbg !576
  store ptr %0, ptr %__mptr, align 8, !dbg !576
  %1 = load ptr, ptr %__mptr, align 8, !dbg !576
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !576
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !577
  %2 = load ptr, ptr %tmp, align 8, !dbg !576
  store ptr %2, ptr %est, align 8, !dbg !575
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %b, metadata !193, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_bytes) #16, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %b_bytes, metadata !194, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_packets) #16, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %b_packets, metadata !195, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %rate) #16, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %rate, metadata !196, metadata !DIExpression()), !dbg !584
  call void @llvm.lifetime.start.p0(i64 8, ptr %brate) #16, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %brate, metadata !197, metadata !DIExpression()), !dbg !585
  %3 = load ptr, ptr %est, align 8, !dbg !586
  call void @est_fetch_counters(ptr noundef %3, ptr noundef %b) #17, !dbg !587
  %bytes = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 0, !dbg !588
  %call = call i64 @u64_stats_read(ptr noundef %bytes) #17, !dbg !589
  store i64 %call, ptr %b_bytes, align 8, !dbg !590
  %packets = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 1, !dbg !591
  %call1 = call i64 @u64_stats_read(ptr noundef %packets) #17, !dbg !592
  store i64 %call1, ptr %b_packets, align 8, !dbg !593
  %4 = load i64, ptr %b_bytes, align 8, !dbg !594
  %5 = load ptr, ptr %est, align 8, !dbg !595
  %last_bytes = getelementptr inbounds %struct.net_rate_estimator, ptr %5, i32 0, i32 8, !dbg !596
  %6 = load i64, ptr %last_bytes, align 8, !dbg !596
  %sub = sub i64 %4, %6, !dbg !597
  %7 = load ptr, ptr %est, align 8, !dbg !598
  %intvl_log = getelementptr inbounds %struct.net_rate_estimator, ptr %7, i32 0, i32 5, !dbg !599
  %8 = load i8, ptr %intvl_log, align 1, !dbg !599
  %conv = zext i8 %8 to i32, !dbg !598
  %sub2 = sub i32 10, %conv, !dbg !600
  %sh_prom = zext i32 %sub2 to i64, !dbg !601
  %shl = shl i64 %sub, %sh_prom, !dbg !601
  store i64 %shl, ptr %brate, align 8, !dbg !602
  %9 = load i64, ptr %brate, align 8, !dbg !603
  %10 = load ptr, ptr %est, align 8, !dbg !604
  %ewma_log = getelementptr inbounds %struct.net_rate_estimator, ptr %10, i32 0, i32 4, !dbg !605
  %11 = load i8, ptr %ewma_log, align 8, !dbg !605
  %conv3 = zext i8 %11 to i32, !dbg !604
  %sh_prom4 = zext i32 %conv3 to i64, !dbg !606
  %shr = lshr i64 %9, %sh_prom4, !dbg !606
  %12 = load ptr, ptr %est, align 8, !dbg !607
  %avbps = getelementptr inbounds %struct.net_rate_estimator, ptr %12, i32 0, i32 10, !dbg !608
  %13 = load i64, ptr %avbps, align 8, !dbg !608
  %14 = load ptr, ptr %est, align 8, !dbg !609
  %ewma_log5 = getelementptr inbounds %struct.net_rate_estimator, ptr %14, i32 0, i32 4, !dbg !610
  %15 = load i8, ptr %ewma_log5, align 8, !dbg !610
  %conv6 = zext i8 %15 to i32, !dbg !609
  %sh_prom7 = zext i32 %conv6 to i64, !dbg !611
  %shr8 = lshr i64 %13, %sh_prom7, !dbg !611
  %sub9 = sub i64 %shr, %shr8, !dbg !612
  store i64 %sub9, ptr %brate, align 8, !dbg !613
  %16 = load i64, ptr %b_packets, align 8, !dbg !614
  %17 = load ptr, ptr %est, align 8, !dbg !615
  %last_packets = getelementptr inbounds %struct.net_rate_estimator, ptr %17, i32 0, i32 7, !dbg !616
  %18 = load i64, ptr %last_packets, align 8, !dbg !616
  %sub10 = sub i64 %16, %18, !dbg !617
  %19 = load ptr, ptr %est, align 8, !dbg !618
  %intvl_log11 = getelementptr inbounds %struct.net_rate_estimator, ptr %19, i32 0, i32 5, !dbg !619
  %20 = load i8, ptr %intvl_log11, align 1, !dbg !619
  %conv12 = zext i8 %20 to i32, !dbg !618
  %sub13 = sub i32 10, %conv12, !dbg !620
  %sh_prom14 = zext i32 %sub13 to i64, !dbg !621
  %shl15 = shl i64 %sub10, %sh_prom14, !dbg !621
  store i64 %shl15, ptr %rate, align 8, !dbg !622
  %21 = load i64, ptr %rate, align 8, !dbg !623
  %22 = load ptr, ptr %est, align 8, !dbg !624
  %ewma_log16 = getelementptr inbounds %struct.net_rate_estimator, ptr %22, i32 0, i32 4, !dbg !625
  %23 = load i8, ptr %ewma_log16, align 8, !dbg !625
  %conv17 = zext i8 %23 to i32, !dbg !624
  %sh_prom18 = zext i32 %conv17 to i64, !dbg !626
  %shr19 = lshr i64 %21, %sh_prom18, !dbg !626
  %24 = load ptr, ptr %est, align 8, !dbg !627
  %avpps = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 9, !dbg !628
  %25 = load i64, ptr %avpps, align 8, !dbg !628
  %26 = load ptr, ptr %est, align 8, !dbg !629
  %ewma_log20 = getelementptr inbounds %struct.net_rate_estimator, ptr %26, i32 0, i32 4, !dbg !630
  %27 = load i8, ptr %ewma_log20, align 8, !dbg !630
  %conv21 = zext i8 %27 to i32, !dbg !629
  %sh_prom22 = zext i32 %conv21 to i64, !dbg !631
  %shr23 = lshr i64 %25, %sh_prom22, !dbg !631
  %sub24 = sub i64 %shr19, %shr23, !dbg !632
  store i64 %sub24, ptr %rate, align 8, !dbg !633
  br label %do.body, !dbg !634

do.body:                                          ; preds = %entry
  %28 = load ptr, ptr %est, align 8, !dbg !635
  %seq = getelementptr inbounds %struct.net_rate_estimator, ptr %28, i32 0, i32 6, !dbg !635
  call void @__seqprop_assert(ptr noundef %seq) #17, !dbg !635
  %29 = load ptr, ptr %est, align 8, !dbg !637
  %seq25 = getelementptr inbounds %struct.net_rate_estimator, ptr %29, i32 0, i32 6, !dbg !637
  %call26 = call zeroext i1 @__seqprop_preemptible(ptr noundef %seq25) #17, !dbg !637
  br i1 %call26, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %do.body
  br label %do.body27, !dbg !637

do.body27:                                        ; preds = %if.then
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !639
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !639, !srcloc !641
  br label %do.cond, !dbg !639

do.cond:                                          ; preds = %do.body27
  br label %do.end, !dbg !639

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !639

if.end:                                           ; preds = %do.end, %do.body
  %30 = load ptr, ptr %est, align 8, !dbg !635
  %seq28 = getelementptr inbounds %struct.net_rate_estimator, ptr %30, i32 0, i32 6, !dbg !635
  %call29 = call ptr @__seqprop_ptr(ptr noundef %seq28) #17, !dbg !635
  call void @do_write_seqcount_begin(ptr noundef %call29) #17, !dbg !635
  br label %do.cond30, !dbg !635

do.cond30:                                        ; preds = %if.end
  br label %do.end31, !dbg !635

do.end31:                                         ; preds = %do.cond30
  %31 = load i64, ptr %brate, align 8, !dbg !642
  %32 = load ptr, ptr %est, align 8, !dbg !643
  %avbps32 = getelementptr inbounds %struct.net_rate_estimator, ptr %32, i32 0, i32 10, !dbg !644
  %33 = load i64, ptr %avbps32, align 8, !dbg !645
  %add = add i64 %33, %31, !dbg !645
  store i64 %add, ptr %avbps32, align 8, !dbg !645
  %34 = load i64, ptr %rate, align 8, !dbg !646
  %35 = load ptr, ptr %est, align 8, !dbg !647
  %avpps33 = getelementptr inbounds %struct.net_rate_estimator, ptr %35, i32 0, i32 9, !dbg !648
  %36 = load i64, ptr %avpps33, align 8, !dbg !649
  %add34 = add i64 %36, %34, !dbg !649
  store i64 %add34, ptr %avpps33, align 8, !dbg !649
  br label %do.body35, !dbg !650

do.body35:                                        ; preds = %do.end31
  %37 = load ptr, ptr %est, align 8, !dbg !651
  %seq36 = getelementptr inbounds %struct.net_rate_estimator, ptr %37, i32 0, i32 6, !dbg !651
  %call37 = call ptr @__seqprop_ptr(ptr noundef %seq36) #17, !dbg !651
  call void @do_write_seqcount_end(ptr noundef %call37) #17, !dbg !651
  %38 = load ptr, ptr %est, align 8, !dbg !653
  %seq38 = getelementptr inbounds %struct.net_rate_estimator, ptr %38, i32 0, i32 6, !dbg !653
  %call39 = call zeroext i1 @__seqprop_preemptible(ptr noundef %seq38) #17, !dbg !653
  br i1 %call39, label %if.then40, label %if.end52, !dbg !651

if.then40:                                        ; preds = %do.body35
  br label %do.body41, !dbg !653

do.body41:                                        ; preds = %if.then40
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !655, !srcloc !657
  %call42 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !658
  %lnot = xor i1 %call42, true, !dbg !658
  %lnot43 = xor i1 %lnot, true, !dbg !658
  %lnot.ext = zext i1 %lnot43 to i32, !dbg !658
  %conv44 = sext i32 %lnot.ext to i64, !dbg !658
  %expval = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !658
  %tobool = icmp ne i64 %expval, 0, !dbg !658
  br i1 %tobool, label %if.then45, label %if.end49, !dbg !655

if.then45:                                        ; preds = %do.body41
  br label %do.body46, !dbg !658

do.body46:                                        ; preds = %if.then45
  %39 = call i64 @llvm.read_register.i64(metadata !198), !dbg !660
  %40 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %39) #16, !dbg !660, !srcloc !662
  call void @llvm.write_register.i64(metadata !198, i64 %40), !dbg !660
  br label %do.cond47, !dbg !660

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !660

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !660

if.end49:                                         ; preds = %do.end48, %do.body41
  br label %do.cond50, !dbg !655

do.cond50:                                        ; preds = %if.end49
  br label %do.end51, !dbg !655

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !655

if.end52:                                         ; preds = %do.end51, %do.body35
  br label %do.cond53, !dbg !651

do.cond53:                                        ; preds = %if.end52
  br label %do.end54, !dbg !651

do.end54:                                         ; preds = %do.cond53
  %41 = load i64, ptr %b_bytes, align 8, !dbg !663
  %42 = load ptr, ptr %est, align 8, !dbg !664
  %last_bytes55 = getelementptr inbounds %struct.net_rate_estimator, ptr %42, i32 0, i32 8, !dbg !665
  store i64 %41, ptr %last_bytes55, align 8, !dbg !666
  %43 = load i64, ptr %b_packets, align 8, !dbg !667
  %44 = load ptr, ptr %est, align 8, !dbg !668
  %last_packets56 = getelementptr inbounds %struct.net_rate_estimator, ptr %44, i32 0, i32 7, !dbg !669
  store i64 %43, ptr %last_packets56, align 8, !dbg !670
  %45 = load ptr, ptr %est, align 8, !dbg !671
  %intvl_log57 = getelementptr inbounds %struct.net_rate_estimator, ptr %45, i32 0, i32 5, !dbg !672
  %46 = load i8, ptr %intvl_log57, align 1, !dbg !672
  %conv58 = zext i8 %46 to i32, !dbg !671
  %shl59 = shl i32 250, %conv58, !dbg !673
  %conv60 = sext i32 %shl59 to i64, !dbg !674
  %47 = load ptr, ptr %est, align 8, !dbg !675
  %next_jiffies = getelementptr inbounds %struct.net_rate_estimator, ptr %47, i32 0, i32 11, !dbg !676
  %48 = load i64, ptr %next_jiffies, align 8, !dbg !677
  %add61 = add i64 %48, %conv60, !dbg !677
  store i64 %add61, ptr %next_jiffies, align 8, !dbg !677
  %49 = load volatile i64, ptr @jiffies, align 64, !dbg !678
  %50 = load ptr, ptr %est, align 8, !dbg !678
  %next_jiffies62 = getelementptr inbounds %struct.net_rate_estimator, ptr %50, i32 0, i32 11, !dbg !678
  %51 = load i64, ptr %next_jiffies62, align 8, !dbg !678
  %sub63 = sub i64 %49, %51, !dbg !678
  %cmp = icmp sge i64 %sub63, 0, !dbg !678
  %lnot65 = xor i1 %cmp, true, !dbg !678
  %lnot67 = xor i1 %lnot65, true, !dbg !678
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !678
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !678
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !678
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !678
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !680

if.then72:                                        ; preds = %do.end54
  %52 = load volatile i64, ptr @jiffies, align 64, !dbg !681
  %add73 = add i64 %52, 1, !dbg !683
  %53 = load ptr, ptr %est, align 8, !dbg !684
  %next_jiffies74 = getelementptr inbounds %struct.net_rate_estimator, ptr %53, i32 0, i32 11, !dbg !685
  store i64 %add73, ptr %next_jiffies74, align 8, !dbg !686
  br label %if.end75, !dbg !687

if.end75:                                         ; preds = %if.then72, %do.end54
  %54 = load ptr, ptr %est, align 8, !dbg !688
  %timer = getelementptr inbounds %struct.net_rate_estimator, ptr %54, i32 0, i32 12, !dbg !689
  %55 = load ptr, ptr %est, align 8, !dbg !690
  %next_jiffies76 = getelementptr inbounds %struct.net_rate_estimator, ptr %55, i32 0, i32 11, !dbg !691
  %56 = load i64, ptr %next_jiffies76, align 8, !dbg !691
  %call77 = call i32 @mod_timer(ptr noundef %timer, i64 noundef %56) #17, !dbg !692
  call void @llvm.lifetime.end.p0(i64 8, ptr %brate) #16, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %rate) #16, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_packets) #16, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_bytes) #16, !dbg !693
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #16, !dbg !693
  ret void, !dbg !693
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !694 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_bh(ptr noundef %lock) #5 align 16 !dbg !697 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !699, metadata !DIExpression()), !dbg !700
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !701
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !701
  call void @_raw_spin_unlock_bh(ptr noundef %1) #17, !dbg !701
  ret void, !dbg !702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !703 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gen_kill_estimator(ptr noundef %rate_est) #0 align 16 !dbg !707 {
entry:
  %rate_est.addr = alloca ptr, align 8
  %est = alloca ptr, align 8
  %__UNIQUE_ID_rcu541 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %rate_est, ptr %rate_est.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rate_est.addr, metadata !711, metadata !DIExpression()), !dbg !723
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #16, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %est, metadata !712, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu541) #16, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu541, metadata !713, metadata !DIExpression()), !dbg !726
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #16, !dbg !727
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !715, metadata !DIExpression()), !dbg !727
  %0 = load ptr, ptr %rate_est.addr, align 8, !dbg !727
  store ptr %0, ptr %__ai_ptr, align 8, !dbg !727
  br label %do.body, !dbg !727

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !728

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !728

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !727
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #17, !dbg !727
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #16, !dbg !730
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !717, metadata !DIExpression()), !dbg !730
  store ptr null, ptr %__ret, align 8, !dbg !730
  %2 = load ptr, ptr %__ret, align 8, !dbg !730
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !730
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #16, !dbg !730, !srcloc !731
  store ptr %4, ptr %__ret, align 8, !dbg !730
  %5 = load ptr, ptr %__ret, align 8, !dbg !730
  store ptr %5, ptr %tmp1, align 8, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #16, !dbg !727
  %6 = load ptr, ptr %tmp1, align 8, !dbg !730
  store ptr %6, ptr %tmp, align 8, !dbg !727
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #16, !dbg !726
  %7 = load ptr, ptr %tmp, align 8, !dbg !727
  store ptr %7, ptr %__UNIQUE_ID_rcu541, align 8, !dbg !726
  %8 = load ptr, ptr %__UNIQUE_ID_rcu541, align 8, !dbg !726
  store ptr %8, ptr %tmp2, align 8, !dbg !726
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu541) #16, !dbg !732
  %9 = load ptr, ptr %tmp2, align 8, !dbg !726
  store ptr %9, ptr %est, align 8, !dbg !733
  %10 = load ptr, ptr %est, align 8, !dbg !734
  %tobool = icmp ne ptr %10, null, !dbg !734
  br i1 %tobool, label %if.then, label %if.end11, !dbg !735

if.then:                                          ; preds = %do.end
  %11 = load ptr, ptr %est, align 8, !dbg !736
  %timer = getelementptr inbounds %struct.net_rate_estimator, ptr %11, i32 0, i32 12, !dbg !737
  %call = call i32 @timer_shutdown_sync(ptr noundef %timer) #17, !dbg !738
  br label %do.body3, !dbg !739

do.body3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #16, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !719, metadata !DIExpression()), !dbg !740
  %12 = load ptr, ptr %est, align 8, !dbg !740
  store ptr %12, ptr %___p, align 8, !dbg !740
  %13 = load ptr, ptr %___p, align 8, !dbg !741
  %tobool4 = icmp ne ptr %13, null, !dbg !741
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !740

if.then5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !743

do.body6:                                         ; preds = %if.then5
  br label %do.cond7, !dbg !745

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !745

do.end8:                                          ; preds = %do.cond7
  %14 = load ptr, ptr %___p, align 8, !dbg !743
  %rcu = getelementptr inbounds %struct.net_rate_estimator, ptr %14, i32 0, i32 13, !dbg !743
  %15 = load ptr, ptr %___p, align 8, !dbg !743
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %15) #17, !dbg !743
  br label %if.end, !dbg !743

if.end:                                           ; preds = %do.end8, %do.body3
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #16, !dbg !739
  br label %do.cond9, !dbg !740

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !740

do.end10:                                         ; preds = %do.cond9
  br label %if.end11, !dbg !747

if.end11:                                         ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #16, !dbg !748
  ret void, !dbg !748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !749 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !757, metadata !DIExpression()), !dbg !759
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !758, metadata !DIExpression()), !dbg !760
  %0 = load ptr, ptr %v.addr, align 8, !dbg !761
  %1 = load i64, ptr %size.addr, align 8, !dbg !762
  %conv = trunc i64 %1 to i32, !dbg !762
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !763
  %2 = load ptr, ptr %v.addr, align 8, !dbg !764
  %3 = load i64, ptr %size.addr, align 8, !dbg !764
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !764
  ret void, !dbg !765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !766 dso_local i32 @timer_shutdown_sync(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @gen_replace_estimator(ptr noundef %bstats, ptr noundef %cpu_bstats, ptr noundef %rate_est, ptr noundef %lock, i1 noundef zeroext %running, ptr noundef %opt) #0 align 16 !dbg !767 {
entry:
  %bstats.addr = alloca ptr, align 8
  %cpu_bstats.addr = alloca ptr, align 8
  %rate_est.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %running.addr = alloca i8, align 1
  %opt.addr = alloca ptr, align 8
  store ptr %bstats, ptr %bstats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bstats.addr, metadata !769, metadata !DIExpression()), !dbg !775
  store ptr %cpu_bstats, ptr %cpu_bstats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_bstats.addr, metadata !770, metadata !DIExpression()), !dbg !776
  store ptr %rate_est, ptr %rate_est.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rate_est.addr, metadata !771, metadata !DIExpression()), !dbg !777
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !772, metadata !DIExpression()), !dbg !778
  %frombool = zext i1 %running to i8
  store i8 %frombool, ptr %running.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %running.addr, metadata !773, metadata !DIExpression()), !dbg !779
  store ptr %opt, ptr %opt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !774, metadata !DIExpression()), !dbg !780
  %0 = load ptr, ptr %bstats.addr, align 8, !dbg !781
  %1 = load ptr, ptr %cpu_bstats.addr, align 8, !dbg !782
  %2 = load ptr, ptr %rate_est.addr, align 8, !dbg !783
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !784
  %4 = load i8, ptr %running.addr, align 1, !dbg !785, !range !305, !noundef !62
  %tobool = trunc i8 %4 to i1, !dbg !785
  %5 = load ptr, ptr %opt.addr, align 8, !dbg !786
  %call = call i32 @gen_new_estimator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %tobool, ptr noundef %5) #17, !dbg !787
  ret i32 %call, !dbg !788
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @gen_estimator_active(ptr noundef %rate_est) #0 align 16 !dbg !789 {
entry:
  %rate_est.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu545 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %rate_est, ptr %rate_est.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rate_est.addr, metadata !793, metadata !DIExpression()), !dbg !796
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu545) #16, !dbg !797
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu545, metadata !794, metadata !DIExpression()), !dbg !797
  br label %do.body, !dbg !798

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !800

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !800

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rate_est.addr, align 8, !dbg !798
  %1 = load volatile ptr, ptr %0, align 8, !dbg !798
  store ptr %1, ptr %tmp, align 8, !dbg !800
  %2 = load ptr, ptr %tmp, align 8, !dbg !798
  store ptr %2, ptr %__UNIQUE_ID_rcu545, align 8, !dbg !797
  %3 = load ptr, ptr %__UNIQUE_ID_rcu545, align 8, !dbg !797
  store ptr %3, ptr %tmp1, align 8, !dbg !797
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu545) #16, !dbg !802
  %4 = load ptr, ptr %tmp1, align 8, !dbg !797
  %tobool = icmp ne ptr %4, null, !dbg !803
  %lnot = xor i1 %tobool, true, !dbg !803
  %lnot2 = xor i1 %lnot, true, !dbg !804
  ret i1 %lnot2, !dbg !805
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @gen_estimator_read(ptr noundef %rate_est, ptr noundef %sample) #0 align 16 !dbg !806 {
entry:
  %retval = alloca i1, align 1
  %rate_est.addr = alloca ptr, align 8
  %sample.addr = alloca ptr, align 8
  %est = alloca ptr, align 8
  %seq = alloca i32, align 4
  %__UNIQUE_ID_rcu548 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store ptr %rate_est, ptr %rate_est.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rate_est.addr, metadata !815, metadata !DIExpression()), !dbg !827
  store ptr %sample, ptr %sample.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sample.addr, metadata !816, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #16, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %est, metadata !817, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #16, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !818, metadata !DIExpression()), !dbg !832
  call void @rcu_read_lock() #17, !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu548) #16, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu548, metadata !819, metadata !DIExpression()), !dbg !834
  br label %do.body, !dbg !835

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !837

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !837

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rate_est.addr, align 8, !dbg !835
  %1 = load volatile ptr, ptr %0, align 8, !dbg !835
  store ptr %1, ptr %tmp, align 8, !dbg !837
  %2 = load ptr, ptr %tmp, align 8, !dbg !835
  store ptr %2, ptr %__UNIQUE_ID_rcu548, align 8, !dbg !834
  br label %do.body1, !dbg !834

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !839

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !839

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu548, align 8, !dbg !834
  store ptr %3, ptr %tmp4, align 8, !dbg !839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu548) #16, !dbg !841
  %4 = load ptr, ptr %tmp4, align 8, !dbg !834
  store ptr %4, ptr %est, align 8, !dbg !842
  %5 = load ptr, ptr %est, align 8, !dbg !843
  %tobool = icmp ne ptr %5, null, !dbg !843
  br i1 %tobool, label %if.end, label %if.then, !dbg !845

if.then:                                          ; preds = %do.end3
  call void @rcu_read_unlock() #17, !dbg !846
  store i1 false, ptr %retval, align 1, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

if.end:                                           ; preds = %do.end3
  br label %do.body5, !dbg !849

do.body5:                                         ; preds = %do.cond24, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #16, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !821, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #16, !dbg !851
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !825, metadata !DIExpression()), !dbg !851
  br label %while.cond, !dbg !851

while.cond:                                       ; preds = %while.body, %do.body5
  %6 = load ptr, ptr %est, align 8, !dbg !851
  %seq7 = getelementptr inbounds %struct.net_rate_estimator, ptr %6, i32 0, i32 6, !dbg !851
  %call = call i32 @__seqprop_sequence(ptr noundef %seq7) #17, !dbg !851
  store i32 %call, ptr %__seq, align 4, !dbg !851
  %and = and i32 %call, 1, !dbg !851
  %tobool8 = icmp ne i32 %and, 0, !dbg !851
  br i1 %tobool8, label %while.body, label %while.end, !dbg !851

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #17, !dbg !851
  br label %while.cond, !dbg !851, !llvm.loop !852

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #17, !dbg !851
  %7 = load i32, ptr %__seq, align 4, !dbg !851
  store i32 %7, ptr %tmp9, align 4, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #16, !dbg !850
  %8 = load i32, ptr %tmp9, align 4, !dbg !851
  store i32 %8, ptr %_seq, align 4, !dbg !850
  br label %do.body10, !dbg !850

do.body10:                                        ; preds = %while.end
  br label %do.body11, !dbg !855

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !857

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !857

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !855

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !859

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !861

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !861

do.end17:                                         ; preds = %do.cond16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !859, !srcloc !863
  br label %do.cond18, !dbg !859

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !859

do.end19:                                         ; preds = %do.cond18
  br label %do.cond20, !dbg !855

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !855

do.end21:                                         ; preds = %do.cond20
  %9 = load i32, ptr %_seq, align 4, !dbg !850
  store i32 %9, ptr %tmp22, align 4, !dbg !855
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #16, !dbg !864
  %10 = load i32, ptr %tmp22, align 4, !dbg !850
  store i32 %10, ptr %tmp6, align 4, !dbg !865
  %11 = load i32, ptr %tmp6, align 4, !dbg !864
  store i32 %11, ptr %seq, align 4, !dbg !866
  %12 = load ptr, ptr %est, align 8, !dbg !867
  %avbps = getelementptr inbounds %struct.net_rate_estimator, ptr %12, i32 0, i32 10, !dbg !868
  %13 = load i64, ptr %avbps, align 8, !dbg !868
  %shr = lshr i64 %13, 8, !dbg !869
  %14 = load ptr, ptr %sample.addr, align 8, !dbg !870
  %bps = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %14, i32 0, i32 0, !dbg !871
  store i64 %shr, ptr %bps, align 8, !dbg !872
  %15 = load ptr, ptr %est, align 8, !dbg !873
  %avpps = getelementptr inbounds %struct.net_rate_estimator, ptr %15, i32 0, i32 9, !dbg !874
  %16 = load i64, ptr %avpps, align 8, !dbg !874
  %shr23 = lshr i64 %16, 8, !dbg !875
  %17 = load ptr, ptr %sample.addr, align 8, !dbg !876
  %pps = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %17, i32 0, i32 1, !dbg !877
  store i64 %shr23, ptr %pps, align 8, !dbg !878
  br label %do.cond24, !dbg !879

do.cond24:                                        ; preds = %do.end21
  %18 = load ptr, ptr %est, align 8, !dbg !880
  %seq25 = getelementptr inbounds %struct.net_rate_estimator, ptr %18, i32 0, i32 6, !dbg !880
  %call26 = call ptr @__seqprop_ptr(ptr noundef %seq25) #17, !dbg !880
  %19 = load i32, ptr %seq, align 4, !dbg !880
  %call27 = call i32 @do_read_seqcount_retry(ptr noundef %call26, i32 noundef %19) #17, !dbg !880
  %tobool28 = icmp ne i32 %call27, 0, !dbg !879
  br i1 %tobool28, label %do.body5, label %do.end29, !dbg !879, !llvm.loop !881

do.end29:                                         ; preds = %do.cond24
  call void @rcu_read_unlock() #17, !dbg !883
  store i1 true, ptr %retval, align 1, !dbg !884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !884

cleanup:                                          ; preds = %do.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #16, !dbg !885
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #16, !dbg !885
  %20 = load i1, ptr %retval, align 1, !dbg !885
  ret i1 %20, !dbg !885
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !886 {
entry:
  call void @__rcu_read_lock() #17, !dbg !888
  br label %do.body, !dbg !889

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !890

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !892

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !893

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !896 {
entry:
  br label %do.body, !dbg !897

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !898

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !900
  br label %do.body1, !dbg !901

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !902

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !904
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_sequence(ptr noundef %s) #3 align 16 !dbg !905 {
entry:
  %s.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !911, metadata !DIExpression()), !dbg !912
  br label %do.body, !dbg !913

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !915

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !913
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !913
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !913
  store i32 %1, ptr %tmp, align 4, !dbg !915
  %2 = load i32, ptr %tmp, align 4, !dbg !913
  ret i32 %2, !dbg !917
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #5 align 16 !dbg !918 {
entry:
  call void @rep_nop() #17, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #3 align 16 !dbg !922 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !927, metadata !DIExpression()), !dbg !928
  ret void, !dbg !929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #3 align 16 !dbg !930 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !934, metadata !DIExpression()), !dbg !936
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !935, metadata !DIExpression()), !dbg !937
  br label %do.body, !dbg !938

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !939

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !941

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !939

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !943

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !945

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !943, !srcloc !947
  br label %do.end5, !dbg !943

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !939

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !948
  %1 = load i32, ptr %start.addr, align 4, !dbg !949
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #17, !dbg !950
  ret i32 %call, !dbg !951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_ptr(ptr noundef %s) #3 align 16 !dbg !952 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !956, metadata !DIExpression()), !dbg !957
  %0 = load ptr, ptr %s.addr, align 8, !dbg !958
  ret ptr %0, !dbg !959
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !960 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !962, metadata !DIExpression()), !dbg !967
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !963, metadata !DIExpression()), !dbg !968
  %0 = load i64, ptr %size.addr, align 8, !dbg !969
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !970
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !971

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !972
  %tobool = icmp ne i64 %2, 0, !dbg !972
  br i1 %tobool, label %if.then, label %if.end7, !dbg !973

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %index, metadata !964, metadata !DIExpression()), !dbg !975
  %3 = load i64, ptr %size.addr, align 8, !dbg !976
  %cmp = icmp ugt i64 %3, 8192, !dbg !978
  br i1 %cmp, label %if.then1, label %if.end, !dbg !979

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !980
  %5 = load i32, ptr %flags.addr, align 4, !dbg !981
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !982
  store ptr %call, ptr %retval, align 8, !dbg !983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !984
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !984
  store i32 %call2, ptr %index, align 4, !dbg !985
  %7 = load i32, ptr %flags.addr, align 4, !dbg !986
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !987
  %9 = ptrtoint ptr %8 to i64, !dbg !987
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !988
  %idxprom = zext i32 %call3 to i64, !dbg !989
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !989
  %10 = load i32, ptr %index, align 4, !dbg !990
  %idxprom4 = zext i32 %10 to i64, !dbg !989
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !989
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !989
  %12 = load i32, ptr %flags.addr, align 4, !dbg !991
  %13 = load i64, ptr %size.addr, align 8, !dbg !992
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !993
  store ptr %call6, ptr %retval, align 8, !dbg !994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !994

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !995
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !996
  %15 = load i32, ptr %flags.addr, align 4, !dbg !997
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !998
  store ptr %call8, ptr %retval, align 8, !dbg !999
  br label %return, !dbg !999

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1000
  ret ptr %16, !dbg !1000
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1001 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !1002 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1006, metadata !DIExpression()), !dbg !1008
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1007, metadata !DIExpression()), !dbg !1009
  %0 = load i64, ptr %size.addr, align 8, !dbg !1010
  %tobool = icmp ne i64 %0, 0, !dbg !1010
  br i1 %tobool, label %if.end, label %if.then, !dbg !1012

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1013
  br label %return, !dbg !1013

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1014
  %cmp = icmp ule i64 %1, 8, !dbg !1016
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1017

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1018
  br label %return, !dbg !1018

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1019
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1021
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1022

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1023
  %cmp4 = icmp ule i64 %3, 96, !dbg !1024
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1025

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1026
  br label %return, !dbg !1026

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1027
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1029
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1030

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1031
  %cmp9 = icmp ule i64 %5, 192, !dbg !1032
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1033

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1034
  br label %return, !dbg !1034

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1035
  %cmp12 = icmp ule i64 %6, 8, !dbg !1037
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1038

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1040
  %cmp15 = icmp ule i64 %7, 16, !dbg !1042
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1043

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1044
  br label %return, !dbg !1044

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1045
  %cmp18 = icmp ule i64 %8, 32, !dbg !1047
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1048

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1049
  br label %return, !dbg !1049

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1050
  %cmp21 = icmp ule i64 %9, 64, !dbg !1052
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1053

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1054
  br label %return, !dbg !1054

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1055
  %cmp24 = icmp ule i64 %10, 128, !dbg !1057
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1058

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1059
  br label %return, !dbg !1059

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1060
  %cmp27 = icmp ule i64 %11, 256, !dbg !1062
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1063

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1064
  br label %return, !dbg !1064

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1065
  %cmp30 = icmp ule i64 %12, 512, !dbg !1067
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1068

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1069
  br label %return, !dbg !1069

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1070
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1072
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1073

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1074
  br label %return, !dbg !1074

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1075
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1077
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1078

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1079
  br label %return, !dbg !1079

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1080
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1082
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1083

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1084
  br label %return, !dbg !1084

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1085
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1087
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1088

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1089
  br label %return, !dbg !1089

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1090
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1092
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1093

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1094
  br label %return, !dbg !1094

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1095
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1097
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1098

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1099
  br label %return, !dbg !1099

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1100
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1102
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1103

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1104
  br label %return, !dbg !1104

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1105
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1107
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1108

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1109
  br label %return, !dbg !1109

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1110
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1112
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1113

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1114
  br label %return, !dbg !1114

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1115
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1117
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1118

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1119
  br label %return, !dbg !1119

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1120
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1122
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1123

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1124
  br label %return, !dbg !1124

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1125
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1127
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1128

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1129
  br label %return, !dbg !1129

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1130, !range !305, !noundef !62
  %tobool69 = trunc i8 %25 to i1, !dbg !1130
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1132

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1133

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_239() #21, !dbg !1134, !srcloc !1137
  unreachable, !dbg !1134

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1138

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1139

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1140

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1142

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1140

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !1144, !srcloc !1146
  br label %do.end75, !dbg !1144

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1140

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1147
  br label %return, !dbg !1147

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1148
  ret i32 %26, !dbg !1148
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1149 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !1155 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1159, metadata !DIExpression()), !dbg !1161
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1160, metadata !DIExpression()), !dbg !1162
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1163
  %and = and i32 %0, 17, !dbg !1163
  %cmp = icmp eq i32 %and, 0, !dbg !1163
  %lnot = xor i1 %cmp, true, !dbg !1163
  %lnot1 = xor i1 %lnot, true, !dbg !1163
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1163
  %conv = sext i32 %lnot.ext to i64, !dbg !1163
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1163
  %tobool = icmp ne i64 %expval, 0, !dbg !1163
  br i1 %tobool, label %if.then, label %if.end, !dbg !1165

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1167
  %and2 = and i32 %1, 1, !dbg !1169
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1169
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1170

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1171
  br label %return, !dbg !1171

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1172
  br label %return, !dbg !1172

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1174
  ret i32 %2, !dbg !1174
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1175 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1176 dso_local void @__compiletime_assert_239() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__local_bh_disable_ip(i64 noundef %ip, i32 noundef %cnt) #5 align 16 !dbg !1177 {
entry:
  %ip.addr = alloca i64, align 8
  %cnt.addr = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !1181, metadata !DIExpression()), !dbg !1183
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !1182, metadata !DIExpression()), !dbg !1184
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !1185
  call void @__preempt_count_add(i32 noundef %0) #17, !dbg !1185
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1186, !srcloc !1187
  ret void, !dbg !1188
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !1189 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1192, metadata !DIExpression()), !dbg !1200
  br label %do.body, !dbg !1201

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #16, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1193, metadata !DIExpression()), !dbg !1202
  %0 = load i32, ptr %val.addr, align 4, !dbg !1202
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1202
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1202

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1202
  %cmp = icmp eq i32 %2, 1, !dbg !1202
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1202

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1202
  %cmp1 = icmp eq i32 %3, -1, !dbg !1202
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1202

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1202
  br label %cond.end, !dbg !1202

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1202

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1202
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1202
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1203
  %cmp2 = icmp eq i32 %5, 1, !dbg !1203
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1202

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1204, !srcloc !1206
  br label %if.end8, !dbg !1203

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1207
  %cmp3 = icmp eq i32 %6, -1, !dbg !1207
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1203

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1208, !srcloc !1210
  br label %if.end, !dbg !1207

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1207

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #16, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1196, metadata !DIExpression()), !dbg !1211
  %7 = load i32, ptr %val.addr, align 4, !dbg !1211
  %conv = sext i32 %7 to i64, !dbg !1211
  %and = and i64 %conv, 4294967295, !dbg !1211
  %conv7 = trunc i64 %and to i32, !dbg !1211
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1211
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1211
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1211, !srcloc !1212
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #16, !dbg !1207
  br label %do.cond, !dbg !1211

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1211

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #16, !dbg !1201
  br label %do.end10, !dbg !1202

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1213
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1214 dso_local void @gnet_stats_basic_sync_init(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !1217 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1221
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1221
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1223 dso_local void @gnet_stats_add_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !1226 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1228, metadata !DIExpression()), !dbg !1229
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1230
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1230
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1232 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1238 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1239 dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #5 align 16 !dbg !1240 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1249
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !1250
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1251
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !1252
  ret i64 %call, !dbg !1253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !1254 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1256, metadata !DIExpression()), !dbg !1258
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1257, metadata !DIExpression()), !dbg !1259
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1260
  %1 = load i64, ptr %size.addr, align 8, !dbg !1261
  %conv = trunc i64 %1 to i32, !dbg !1261
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !1262
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1263
  %3 = load i64, ptr %size.addr, align 8, !dbg !1263
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !1263
  ret void, !dbg !1264
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #5 align 16 !dbg !1265 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1267, metadata !DIExpression()), !dbg !1268
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1269
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !1270
  ret i64 %call, !dbg !1271
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1272 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1277, metadata !DIExpression()), !dbg !1279
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1278, metadata !DIExpression()), !dbg !1280
  ret i1 true, !dbg !1281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1282 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1286, metadata !DIExpression()), !dbg !1289
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1287, metadata !DIExpression()), !dbg !1290
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1288, metadata !DIExpression()), !dbg !1291
  ret void, !dbg !1292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #5 align 16 !dbg !1293 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1300, metadata !DIExpression()), !dbg !1301
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1302
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !1303
  ret i64 %call, !dbg !1304
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #5 align 16 !dbg !1305 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1308, metadata !DIExpression()), !dbg !1309
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1310
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1310
  %1 = load volatile i64, ptr %counter, align 8, !dbg !1310
  ret i64 %1, !dbg !1311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1312 dso_local void @_raw_spin_lock_bh(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1313 dso_local i32 @timer_delete_sync(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqprop_assert(ptr noundef %s) #3 align 16 !dbg !1314 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  br label %do.body, !dbg !1320

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1321

do.end:                                           ; preds = %do.body
  ret void, !dbg !1323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__seqprop_preemptible(ptr noundef %s) #3 align 16 !dbg !1324 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1328, metadata !DIExpression()), !dbg !1329
  ret i1 false, !dbg !1330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin(ptr noundef %s) #3 align 16 !dbg !1331 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1335, metadata !DIExpression()), !dbg !1336
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1337
  call void @do_write_seqcount_begin_nested(ptr noundef %0, i32 noundef 0) #17, !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_end(ptr noundef %s) #3 align 16 !dbg !1340 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1342, metadata !DIExpression()), !dbg !1343
  br label %do.body, !dbg !1344

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1345

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1347
  call void @do_raw_write_seqcount_end(ptr noundef %0) #17, !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !1350 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !1356
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1354, metadata !DIExpression()), !dbg !1356
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1356, !srcloc !1357
  %1 = icmp ult i8 %0, 2, !dbg !1356
  call void @llvm.assume(i1 %1), !dbg !1356
  store i8 %0, ptr %c, align 1, !dbg !1356
  %2 = load i8, ptr %c, align 1, !dbg !1356, !range !305, !noundef !62
  %tobool = trunc i8 %2 to i1, !dbg !1356
  %frombool = zext i1 %tobool to i8, !dbg !1356
  store i8 %frombool, ptr %tmp, align 1, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !1358
  %3 = load i8, ptr %tmp, align 1, !dbg !1356, !range !305, !noundef !62
  %tobool1 = trunc i8 %3 to i1, !dbg !1356
  ret i1 %tobool1, !dbg !1359
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin_nested(ptr noundef %s, i32 noundef %subclass) #3 align 16 !dbg !1360 {
entry:
  %s.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1364, metadata !DIExpression()), !dbg !1366
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !1365, metadata !DIExpression()), !dbg !1367
  br label %do.body, !dbg !1368

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1369

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1371
  call void @do_raw_write_seqcount_begin(ptr noundef %0) #17, !dbg !1372
  ret void, !dbg !1373
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #3 align 16 !dbg !1374 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @kcsan_nestable_atomic_begin() #17, !dbg !1378
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1379
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1380
  %1 = load i32, ptr %sequence, align 4, !dbg !1381
  %inc = add i32 %1, 1, !dbg !1381
  store i32 %inc, ptr %sequence, align 4, !dbg !1381
  br label %do.body, !dbg !1382

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1383

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1385

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1383, !srcloc !1387
  br label %do.end2, !dbg !1383

do.end2:                                          ; preds = %do.end
  ret void, !dbg !1388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #3 align 16 !dbg !1389 {
entry:
  ret void, !dbg !1390
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #3 align 16 !dbg !1391 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1393, metadata !DIExpression()), !dbg !1394
  br label %do.body, !dbg !1395

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1396

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1398

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1396, !srcloc !1400
  br label %do.end2, !dbg !1396

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1402
  %1 = load i32, ptr %sequence, align 4, !dbg !1403
  %inc = add i32 %1, 1, !dbg !1403
  store i32 %inc, ptr %sequence, align 4, !dbg !1403
  call void @kcsan_nestable_atomic_end() #17, !dbg !1404
  ret void, !dbg !1405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #3 align 16 !dbg !1406 {
entry:
  ret void, !dbg !1407
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1408 dso_local void @_raw_spin_unlock_bh(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1409 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1411, metadata !DIExpression()), !dbg !1413
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1412, metadata !DIExpression()), !dbg !1414
  ret i1 true, !dbg !1415
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1416 dso_local void @__rcu_read_lock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1417 dso_local void @__rcu_read_unlock() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #5 align 16 !dbg !1418 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1419, !srcloc !1420
  ret void, !dbg !1421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #3 align 16 !dbg !1422 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1424, metadata !DIExpression()), !dbg !1426
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1425, metadata !DIExpression()), !dbg !1427
  call void @kcsan_atomic_next(i32 noundef 0) #17, !dbg !1428
  br label %do.body, !dbg !1429

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1431

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1429
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1429
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !1429
  store i32 %1, ptr %tmp, align 4, !dbg !1431
  %2 = load i32, ptr %tmp, align 4, !dbg !1429
  %3 = load i32, ptr %start.addr, align 4, !dbg !1433
  %cmp = icmp ne i32 %2, %3, !dbg !1433
  %lnot = xor i1 %cmp, true, !dbg !1433
  %lnot1 = xor i1 %lnot, true, !dbg !1433
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1433
  %conv = sext i32 %lnot.ext to i64, !dbg !1433
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1433
  %conv2 = trunc i64 %expval to i32, !dbg !1433
  ret i32 %conv2, !dbg !1434
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_new_estimator540", scope: !2, file: !3, line: 196, type: !157, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/core/.gen_estimator.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/core/gen_estimator\22 -D KBUILD_BASENAME=\22gen_estimator\22 -D KBUILD_MODNAME=\22gen_estimator\22 -D __KBUILD_MODNAME=kmod_gen_estimator -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/core/gen_estimator.ll net/core/gen_estimator.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !171, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/core/gen_estimator.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39172b5730440b4f6d8696695748ab2e")
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
!21 = !{!22, !24, !156, !157, !158, !160, !162, !89, !126, !145, !164, !167, !168}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !7)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net_rate_estimator", file: !3, line: 42, size: 1088, elements: !26)
!26 = !{!27, !63, !106, !109, !110, !111, !112, !118, !122, !123, !124, !125, !127, !147}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "bstats", scope: !25, file: !3, line: 43, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gnet_stats_basic_sync", file: !30, line: 18, size: 128, align: 128, elements: !31)
!30 = !DIFile(filename: "./include/net/gen_stats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4833b90124adf513d009b4bd4dc4fb12")
!31 = !{!32, !59, !60}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !29, file: !30, line: 19, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64_stats_t", file: !34, line: 75, baseType: !35)
!34 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 73, size: 64, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !35, file: !34, line: 74, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !39, line: 26, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 24, size: 64, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !40, file: !39, line: 25, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !44, line: 12, baseType: !45)
!44 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 10, size: 64, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !45, file: !44, line: 11, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !49, line: 13, baseType: !50)
!49 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !23, line: 181, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 179, size: 64, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !51, file: !23, line: 180, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !55, line: 22, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !57, line: 30, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!58 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "packets", scope: !29, file: !30, line: 20, baseType: !33, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !29, file: !30, line: 21, baseType: !61, offset: 128)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !34, line: 64, elements: !62)
!62 = !{}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !25, file: !3, line: 44, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !66, line: 29, baseType: !67)
!66 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !66, line: 17, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 18, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 18, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !70, file: !66, line: 19, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !74, line: 14, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !73, file: !74, line: 15, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !78, line: 44, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !78, line: 14, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !78, line: 15, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !78, line: 15, size: 32, elements: !83)
!83 = !{!84, !90, !98}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !78, line: 16, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !23, line: 174, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 172, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !86, file: !23, line: 173, baseType: !89, size: 32)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 24, baseType: !91, size: 16)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 24, size: 16, elements: !92)
!92 = !{!93, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !91, file: !78, line: 25, baseType: !94, size: 8)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 17, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !57, line: 21, baseType: !96)
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !91, file: !78, line: 26, baseType: !94, size: 8, offset: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 28, baseType: !99, size: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 28, size: 32, elements: !100)
!100 = !{!101, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !99, file: !78, line: 29, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 19, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !57, line: 24, baseType: !104)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !99, file: !78, line: 30, baseType: !102, size: 16, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !25, file: !3, line: 45, baseType: !107, size: 8, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !108)
!108 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bstats", scope: !25, file: !3, line: 46, baseType: !28, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ewma_log", scope: !25, file: !3, line: 47, baseType: !94, size: 8, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "intvl_log", scope: !25, file: !3, line: 48, baseType: !94, size: 8, offset: 264)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !25, file: !3, line: 50, baseType: !113, size: 32, offset: 288)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !114, line: 69, baseType: !115)
!114 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !114, line: 64, size: 32, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !115, file: !114, line: 65, baseType: !7, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "last_packets", scope: !25, file: !3, line: 51, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !55, line: 23, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !57, line: 31, baseType: !121)
!121 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "last_bytes", scope: !25, file: !3, line: 52, baseType: !119, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "avpps", scope: !25, file: !3, line: 54, baseType: !119, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "avbps", scope: !25, file: !3, line: 55, baseType: !119, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_jiffies", scope: !25, file: !3, line: 57, baseType: !126, size: 64, offset: 576)
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !25, file: !3, line: 58, baseType: !128, size: 320, offset: 640)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !129, line: 11, size: 320, elements: !130)
!129 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!130 = !{!131, !138, !139, !144}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !128, file: !129, line: 16, baseType: !132, size: 128)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !23, line: 198, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !23, line: 199, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !132, file: !23, line: 199, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !128, file: !129, line: 17, baseType: !126, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !128, file: !129, line: 18, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !129, line: 19, baseType: !145, size: 32, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !55, line: 21, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !57, line: 27, baseType: !7)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !25, file: !3, line: 59, baseType: !148, size: 128, align: 64, offset: 960)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !23, line: 232, size: 128, align: 64, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !23, line: 233, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !148, file: !23, line: 234, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !151}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 42, baseType: !126)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!167 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!171 = !{!0, !172, !174, !176, !178, !180, !185}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_kill_estimator543", scope: !2, file: !3, line: 215, type: !157, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_replace_estimator544", scope: !2, file: !3, line: 242, type: !157, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_estimator_active547", scope: !2, file: !3, line: 254, type: !157, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_estimator_read550", scope: !2, file: !3, line: 278, type: !157, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 168, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 21)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule535", scope: !187, file: !3, line: 96, type: !157, isLocal: true, isDefinition: true)
!187 = distinct !DISubprogram(name: "est_timer", scope: !3, file: !3, line: 76, type: !141, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !188)
!188 = !{!189, !190, !191, !193, !194, !195, !196, !197}
!189 = !DILocalVariable(name: "t", arg: 1, scope: !187, file: !3, line: 76, type: !143)
!190 = !DILocalVariable(name: "est", scope: !187, file: !3, line: 78, type: !24)
!191 = !DILocalVariable(name: "__mptr", scope: !192, file: !3, line: 78, type: !157)
!192 = distinct !DILexicalBlock(scope: !187, file: !3, line: 78, column: 35)
!193 = !DILocalVariable(name: "b", scope: !187, file: !3, line: 79, type: !29)
!194 = !DILocalVariable(name: "b_bytes", scope: !187, file: !3, line: 80, type: !119)
!195 = !DILocalVariable(name: "b_packets", scope: !187, file: !3, line: 80, type: !119)
!196 = !DILocalVariable(name: "rate", scope: !187, file: !3, line: 81, type: !119)
!197 = !DILocalVariable(name: "brate", scope: !187, file: !3, line: 81, type: !119)
!198 = !{!"rsp"}
!199 = !{i32 7, !"Dwarf Version", i32 5}
!200 = !{i32 2, !"Debug Info Version", i32 3}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 8, !"cf-protection-branch", i32 1}
!203 = !{i32 4, !"function_return_thunk_extern", i32 1}
!204 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!205 = !{i32 1, !"Code Model", i32 2}
!206 = !{i32 1, !"override-stack-alignment", i32 8}
!207 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!208 = distinct !DISubprogram(name: "gen_new_estimator", scope: !3, file: !3, line: 130, type: !209, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!209 = !DISubroutineType(types: !210)
!210 = !{!89, !28, !28, !211, !64, !107, !212}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !214, line: 229, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !213, file: !214, line: 230, baseType: !103, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !213, file: !214, line: 231, baseType: !103, size: 16, offset: 16)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !233, !234, !235, !236, !237, !239}
!219 = !DILocalVariable(name: "bstats", arg: 1, scope: !208, file: !3, line: 130, type: !28)
!220 = !DILocalVariable(name: "cpu_bstats", arg: 2, scope: !208, file: !3, line: 131, type: !28)
!221 = !DILocalVariable(name: "rate_est", arg: 3, scope: !208, file: !3, line: 132, type: !211)
!222 = !DILocalVariable(name: "lock", arg: 4, scope: !208, file: !3, line: 133, type: !64)
!223 = !DILocalVariable(name: "running", arg: 5, scope: !208, file: !3, line: 134, type: !107)
!224 = !DILocalVariable(name: "opt", arg: 6, scope: !208, file: !3, line: 135, type: !212)
!225 = !DILocalVariable(name: "parm", scope: !208, file: !3, line: 137, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gnet_estimator", file: !228, line: 72, size: 16, elements: !229)
!228 = !DIFile(filename: "./include/uapi/linux/gen_stats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09f8b824f10efa71515ffca2ba9a1d38")
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !227, file: !228, line: 73, baseType: !231, size: 8)
!231 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ewma_log", scope: !227, file: !228, line: 74, baseType: !96, size: 8, offset: 8)
!233 = !DILocalVariable(name: "old", scope: !208, file: !3, line: 138, type: !24)
!234 = !DILocalVariable(name: "est", scope: !208, file: !3, line: 138, type: !24)
!235 = !DILocalVariable(name: "b", scope: !208, file: !3, line: 139, type: !29)
!236 = !DILocalVariable(name: "intvl_log", scope: !208, file: !3, line: 140, type: !89)
!237 = !DILocalVariable(name: "_r_a_p__v", scope: !238, file: !3, line: 189, type: !156)
!238 = distinct !DILexicalBlock(scope: !208, file: !3, line: 189, column: 2)
!239 = !DILocalVariable(name: "___p", scope: !240, file: !3, line: 193, type: !24)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 193, column: 3)
!241 = distinct !DILexicalBlock(scope: !208, file: !3, line: 192, column: 6)
!242 = !DILocation(line: 130, column: 53, scope: !208)
!243 = !DILocation(line: 131, column: 48, scope: !208)
!244 = !DILocation(line: 132, column: 43, scope: !208)
!245 = !DILocation(line: 133, column: 21, scope: !208)
!246 = !DILocation(line: 134, column: 14, scope: !208)
!247 = !DILocation(line: 135, column: 24, scope: !208)
!248 = !DILocation(line: 137, column: 2, scope: !208)
!249 = !DILocation(line: 137, column: 25, scope: !208)
!250 = !DILocation(line: 137, column: 41, scope: !208)
!251 = !DILocation(line: 137, column: 32, scope: !208)
!252 = !DILocation(line: 138, column: 2, scope: !208)
!253 = !DILocation(line: 138, column: 29, scope: !208)
!254 = !DILocation(line: 138, column: 35, scope: !208)
!255 = !DILocation(line: 139, column: 2, scope: !208)
!256 = !DILocation(line: 139, column: 31, scope: !208)
!257 = !DILocation(line: 140, column: 2, scope: !208)
!258 = !DILocation(line: 140, column: 6, scope: !208)
!259 = !DILocation(line: 142, column: 14, scope: !260)
!260 = distinct !DILexicalBlock(scope: !208, file: !3, line: 142, column: 6)
!261 = !DILocation(line: 142, column: 6, scope: !260)
!262 = !DILocation(line: 142, column: 19, scope: !260)
!263 = !DILocation(line: 142, column: 6, scope: !208)
!264 = !DILocation(line: 143, column: 3, scope: !260)
!265 = !DILocation(line: 149, column: 6, scope: !266)
!266 = distinct !DILexicalBlock(scope: !208, file: !3, line: 149, column: 6)
!267 = !DILocation(line: 149, column: 12, scope: !266)
!268 = !DILocation(line: 149, column: 21, scope: !266)
!269 = !DILocation(line: 149, column: 26, scope: !266)
!270 = !DILocation(line: 149, column: 29, scope: !266)
!271 = !DILocation(line: 149, column: 35, scope: !266)
!272 = !DILocation(line: 149, column: 44, scope: !266)
!273 = !DILocation(line: 149, column: 6, scope: !208)
!274 = !DILocation(line: 150, column: 3, scope: !266)
!275 = !DILocation(line: 152, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !208, file: !3, line: 152, column: 6)
!277 = !DILocation(line: 152, column: 12, scope: !276)
!278 = !DILocation(line: 152, column: 21, scope: !276)
!279 = !DILocation(line: 152, column: 26, scope: !276)
!280 = !DILocation(line: 152, column: 29, scope: !276)
!281 = !DILocation(line: 152, column: 35, scope: !276)
!282 = !DILocation(line: 152, column: 44, scope: !276)
!283 = !DILocation(line: 152, column: 6, scope: !208)
!284 = !DILocation(line: 153, column: 3, scope: !276)
!285 = !DILocation(line: 155, column: 8, scope: !208)
!286 = !DILocation(line: 155, column: 6, scope: !208)
!287 = !DILocation(line: 156, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !208, file: !3, line: 156, column: 6)
!289 = !DILocation(line: 156, column: 6, scope: !208)
!290 = !DILocation(line: 157, column: 3, scope: !288)
!291 = !DILocation(line: 159, column: 2, scope: !208)
!292 = !DILocation(line: 160, column: 14, scope: !208)
!293 = !DILocation(line: 160, column: 20, scope: !208)
!294 = !DILocation(line: 160, column: 29, scope: !208)
!295 = !DILocation(line: 160, column: 12, scope: !208)
!296 = !DILocation(line: 161, column: 16, scope: !208)
!297 = !DILocation(line: 161, column: 2, scope: !208)
!298 = !DILocation(line: 161, column: 7, scope: !208)
!299 = !DILocation(line: 161, column: 14, scope: !208)
!300 = !DILocation(line: 162, column: 20, scope: !208)
!301 = !DILocation(line: 162, column: 2, scope: !208)
!302 = !DILocation(line: 162, column: 7, scope: !208)
!303 = !DILocation(line: 162, column: 18, scope: !208)
!304 = !DILocation(line: 163, column: 18, scope: !208)
!305 = !{i8 0, i8 2}
!306 = !DILocation(line: 163, column: 2, scope: !208)
!307 = !DILocation(line: 163, column: 7, scope: !208)
!308 = !DILocation(line: 163, column: 16, scope: !208)
!309 = !DILocation(line: 164, column: 18, scope: !208)
!310 = !DILocation(line: 164, column: 24, scope: !208)
!311 = !DILocation(line: 164, column: 2, scope: !208)
!312 = !DILocation(line: 164, column: 7, scope: !208)
!313 = !DILocation(line: 164, column: 16, scope: !208)
!314 = !DILocation(line: 165, column: 19, scope: !208)
!315 = !DILocation(line: 165, column: 2, scope: !208)
!316 = !DILocation(line: 165, column: 7, scope: !208)
!317 = !DILocation(line: 165, column: 17, scope: !208)
!318 = !DILocation(line: 166, column: 20, scope: !208)
!319 = !DILocation(line: 166, column: 2, scope: !208)
!320 = !DILocation(line: 166, column: 7, scope: !208)
!321 = !DILocation(line: 166, column: 18, scope: !208)
!322 = !DILocation(line: 168, column: 6, scope: !323)
!323 = distinct !DILexicalBlock(scope: !208, file: !3, line: 168, column: 6)
!324 = !DILocation(line: 168, column: 6, scope: !208)
!325 = !DILocation(line: 169, column: 3, scope: !323)
!326 = !DILocation(line: 170, column: 21, scope: !208)
!327 = !DILocation(line: 170, column: 2, scope: !208)
!328 = !DILocation(line: 171, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !208, file: !3, line: 171, column: 6)
!330 = !DILocation(line: 171, column: 6, scope: !208)
!331 = !DILocation(line: 172, column: 3, scope: !329)
!332 = !DILocation(line: 173, column: 38, scope: !208)
!333 = !DILocation(line: 173, column: 20, scope: !208)
!334 = !DILocation(line: 173, column: 2, scope: !208)
!335 = !DILocation(line: 173, column: 7, scope: !208)
!336 = !DILocation(line: 173, column: 18, scope: !208)
!337 = !DILocation(line: 174, column: 40, scope: !208)
!338 = !DILocation(line: 174, column: 22, scope: !208)
!339 = !DILocation(line: 174, column: 2, scope: !208)
!340 = !DILocation(line: 174, column: 7, scope: !208)
!341 = !DILocation(line: 174, column: 20, scope: !208)
!342 = !DILocation(line: 176, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !208, file: !3, line: 176, column: 6)
!344 = !DILocation(line: 176, column: 6, scope: !208)
!345 = !DILocation(line: 177, column: 16, scope: !343)
!346 = !DILocation(line: 177, column: 3, scope: !343)
!347 = !DILocation(line: 178, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !208, file: !3, line: 178, column: 8)
!349 = !DILocation(line: 178, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !3, line: 178, column: 8)
!351 = !DILocation(line: 178, column: 6, scope: !208)
!352 = !DILocation(line: 179, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !208, file: !3, line: 179, column: 6)
!354 = !DILocation(line: 179, column: 6, scope: !208)
!355 = !DILocation(line: 180, column: 19, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 179, column: 11)
!357 = !DILocation(line: 180, column: 24, scope: !356)
!358 = !DILocation(line: 180, column: 3, scope: !356)
!359 = !DILocation(line: 181, column: 16, scope: !356)
!360 = !DILocation(line: 181, column: 21, scope: !356)
!361 = !DILocation(line: 181, column: 3, scope: !356)
!362 = !DILocation(line: 181, column: 8, scope: !356)
!363 = !DILocation(line: 181, column: 14, scope: !356)
!364 = !DILocation(line: 182, column: 16, scope: !356)
!365 = !DILocation(line: 182, column: 21, scope: !356)
!366 = !DILocation(line: 182, column: 3, scope: !356)
!367 = !DILocation(line: 182, column: 8, scope: !356)
!368 = !DILocation(line: 182, column: 14, scope: !356)
!369 = !DILocation(line: 183, column: 2, scope: !356)
!370 = !DILocation(line: 185, column: 22, scope: !208)
!371 = !DILocation(line: 185, column: 43, scope: !208)
!372 = !DILocation(line: 185, column: 40, scope: !208)
!373 = !DILocation(line: 185, column: 32, scope: !208)
!374 = !DILocation(line: 185, column: 30, scope: !208)
!375 = !DILocation(line: 185, column: 2, scope: !208)
!376 = !DILocation(line: 185, column: 7, scope: !208)
!377 = !DILocation(line: 185, column: 20, scope: !208)
!378 = !DILocation(line: 186, column: 2, scope: !208)
!379 = !DILocation(line: 187, column: 13, scope: !208)
!380 = !DILocation(line: 187, column: 18, scope: !208)
!381 = !DILocation(line: 187, column: 25, scope: !208)
!382 = !DILocation(line: 187, column: 30, scope: !208)
!383 = !DILocation(line: 187, column: 2, scope: !208)
!384 = !DILocation(line: 189, column: 2, scope: !208)
!385 = !DILocation(line: 189, column: 2, scope: !238)
!386 = !DILocation(line: 189, column: 2, scope: !387)
!387 = distinct !DILexicalBlock(scope: !238, file: !3, line: 189, column: 2)
!388 = !DILocation(line: 189, column: 2, scope: !389)
!389 = distinct !DILexicalBlock(scope: !387, file: !3, line: 189, column: 2)
!390 = !DILocation(line: 189, column: 2, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !3, line: 189, column: 2)
!392 = !DILocation(line: 189, column: 2, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 189, column: 2)
!394 = !DILocation(line: 189, column: 2, scope: !395)
!395 = distinct !DILexicalBlock(scope: !387, file: !3, line: 189, column: 2)
!396 = !DILocation(line: 189, column: 2, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !3, line: 189, column: 2)
!398 = !DILocation(line: 189, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 189, column: 2)
!400 = !DILocation(line: 189, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !3, line: 189, column: 2)
!402 = !{i64 2157596666}
!403 = !DILocation(line: 189, column: 2, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !3, line: 189, column: 2)
!405 = !DILocation(line: 189, column: 2, scope: !406)
!406 = distinct !DILexicalBlock(scope: !404, file: !3, line: 189, column: 2)
!407 = !DILocation(line: 189, column: 2, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !3, line: 189, column: 2)
!409 = !DILocation(line: 190, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !208, file: !3, line: 190, column: 6)
!411 = !DILocation(line: 190, column: 6, scope: !208)
!412 = !DILocation(line: 191, column: 18, scope: !410)
!413 = !DILocation(line: 191, column: 3, scope: !410)
!414 = !DILocation(line: 192, column: 6, scope: !241)
!415 = !DILocation(line: 192, column: 6, scope: !208)
!416 = !DILocation(line: 193, column: 3, scope: !241)
!417 = !DILocation(line: 193, column: 3, scope: !240)
!418 = !DILocation(line: 193, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !240, file: !3, line: 193, column: 3)
!420 = !DILocation(line: 193, column: 3, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !3, line: 193, column: 3)
!422 = !DILocation(line: 193, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !3, line: 193, column: 3)
!424 = !DILocation(line: 194, column: 2, scope: !208)
!425 = !DILocation(line: 195, column: 1, scope: !208)
!426 = distinct !DISubprogram(name: "nla_data", scope: !427, file: !427, line: 1183, type: !428, scopeLine: 1184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!427 = !DIFile(filename: "./include/net/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ea2e9501d91e2f676980361db2fc9a")
!428 = !DISubroutineType(types: !429)
!429 = !{!157, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!432 = !{!433}
!433 = !DILocalVariable(name: "nla", arg: 1, scope: !426, file: !427, line: 1183, type: !430)
!434 = !DILocation(line: 1183, column: 51, scope: !426)
!435 = !DILocation(line: 1185, column: 18, scope: !426)
!436 = !DILocation(line: 1185, column: 22, scope: !426)
!437 = !DILocation(line: 1185, column: 2, scope: !426)
!438 = distinct !DISubprogram(name: "nla_len", scope: !427, file: !427, line: 1192, type: !439, scopeLine: 1193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!89, !430}
!441 = !{!442}
!442 = !DILocalVariable(name: "nla", arg: 1, scope: !438, file: !427, line: 1192, type: !430)
!443 = !DILocation(line: 1192, column: 48, scope: !438)
!444 = !DILocation(line: 1194, column: 9, scope: !438)
!445 = !DILocation(line: 1194, column: 14, scope: !438)
!446 = !DILocation(line: 1194, column: 22, scope: !438)
!447 = !DILocation(line: 1194, column: 2, scope: !438)
!448 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !449, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!449 = !DISubroutineType(types: !450)
!450 = !{!157, !451, !22}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !453, line: 72, baseType: !454)
!453 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !453, line: 16, baseType: !126)
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "size", arg: 1, scope: !448, file: !12, line: 719, type: !451)
!457 = !DILocalVariable(name: "flags", arg: 2, scope: !448, file: !12, line: 719, type: !22)
!458 = !DILocation(line: 719, column: 52, scope: !448)
!459 = !DILocation(line: 719, column: 64, scope: !448)
!460 = !DILocation(line: 721, column: 17, scope: !448)
!461 = !DILocation(line: 721, column: 23, scope: !448)
!462 = !DILocation(line: 721, column: 29, scope: !448)
!463 = !DILocation(line: 721, column: 9, scope: !448)
!464 = !DILocation(line: 721, column: 2, scope: !448)
!465 = distinct !DISubprogram(name: "__seqcount_init", scope: !114, file: !114, line: 71, type: !466, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !469, !471}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !473, line: 206, elements: !62)
!473 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "s", arg: 1, scope: !465, file: !114, line: 71, type: !468)
!476 = !DILocalVariable(name: "name", arg: 2, scope: !465, file: !114, line: 71, type: !469)
!477 = !DILocalVariable(name: "key", arg: 3, scope: !465, file: !114, line: 72, type: !471)
!478 = !DILocation(line: 71, column: 48, scope: !465)
!479 = !DILocation(line: 71, column: 63, scope: !465)
!480 = !DILocation(line: 72, column: 31, scope: !465)
!481 = !DILocation(line: 77, column: 2, scope: !465)
!482 = !DILocation(line: 77, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !465, file: !114, line: 77, column: 2)
!484 = !DILocation(line: 78, column: 2, scope: !465)
!485 = !DILocation(line: 78, column: 5, scope: !465)
!486 = !DILocation(line: 78, column: 14, scope: !465)
!487 = !DILocation(line: 79, column: 1, scope: !465)
!488 = distinct !DISubprogram(name: "local_bh_disable", scope: !489, file: !489, line: 18, type: !490, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!489 = !DIFile(filename: "./include/linux/bottom_half.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b933219b2ffe4299c2e8936a7abfd81d")
!490 = !DISubroutineType(types: !491)
!491 = !{null}
!492 = !{!493}
!493 = !DILocalVariable(name: "__here", scope: !494, file: !489, line: 20, type: !126)
!494 = distinct !DILexicalBlock(scope: !488, file: !489, line: 20, column: 24)
!495 = !DILocation(line: 20, column: 24, scope: !494)
!496 = !{i64 2149632559}
!497 = !DILocation(line: 20, column: 24, scope: !488)
!498 = !DILocation(line: 20, column: 2, scope: !488)
!499 = !DILocation(line: 21, column: 1, scope: !488)
!500 = distinct !DISubprogram(name: "est_fetch_counters", scope: !3, file: !3, line: 62, type: !501, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !24, !28}
!503 = !{!504, !505}
!504 = !DILocalVariable(name: "e", arg: 1, scope: !500, file: !3, line: 62, type: !24)
!505 = !DILocalVariable(name: "b", arg: 2, scope: !500, file: !3, line: 63, type: !28)
!506 = !DILocation(line: 62, column: 59, scope: !500)
!507 = !DILocation(line: 63, column: 41, scope: !500)
!508 = !DILocation(line: 65, column: 29, scope: !500)
!509 = !DILocation(line: 65, column: 2, scope: !500)
!510 = !DILocation(line: 66, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !500, file: !3, line: 66, column: 6)
!512 = !DILocation(line: 66, column: 9, scope: !511)
!513 = !DILocation(line: 66, column: 6, scope: !500)
!514 = !DILocation(line: 67, column: 13, scope: !511)
!515 = !DILocation(line: 67, column: 16, scope: !511)
!516 = !DILocation(line: 67, column: 3, scope: !511)
!517 = !DILocation(line: 69, column: 23, scope: !500)
!518 = !DILocation(line: 69, column: 26, scope: !500)
!519 = !DILocation(line: 69, column: 29, scope: !500)
!520 = !DILocation(line: 69, column: 41, scope: !500)
!521 = !DILocation(line: 69, column: 44, scope: !500)
!522 = !DILocation(line: 69, column: 52, scope: !500)
!523 = !DILocation(line: 69, column: 55, scope: !500)
!524 = !DILocation(line: 69, column: 2, scope: !500)
!525 = !DILocation(line: 71, column: 6, scope: !526)
!526 = distinct !DILexicalBlock(scope: !500, file: !3, line: 71, column: 6)
!527 = !DILocation(line: 71, column: 9, scope: !526)
!528 = !DILocation(line: 71, column: 6, scope: !500)
!529 = !DILocation(line: 72, column: 15, scope: !526)
!530 = !DILocation(line: 72, column: 18, scope: !526)
!531 = !DILocation(line: 72, column: 3, scope: !526)
!532 = !DILocation(line: 74, column: 1, scope: !500)
!533 = distinct !DISubprogram(name: "local_bh_enable", scope: !489, file: !489, line: 31, type: !490, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!534 = !{!535}
!535 = !DILocalVariable(name: "__here", scope: !536, file: !489, line: 33, type: !126)
!536 = distinct !DILexicalBlock(scope: !533, file: !489, line: 33, column: 23)
!537 = !DILocation(line: 33, column: 23, scope: !536)
!538 = !{i64 2149633125}
!539 = !DILocation(line: 33, column: 23, scope: !533)
!540 = !DILocation(line: 33, column: 2, scope: !533)
!541 = !DILocation(line: 34, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "u64_stats_read", scope: !34, file: !34, line: 77, type: !543, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!543 = !DISubroutineType(types: !544)
!544 = !{!119, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!547 = !{!548}
!548 = !DILocalVariable(name: "p", arg: 1, scope: !542, file: !34, line: 77, type: !545)
!549 = !DILocation(line: 77, column: 53, scope: !542)
!550 = !DILocation(line: 79, column: 9, scope: !542)
!551 = !DILocation(line: 79, column: 2, scope: !542)
!552 = distinct !DISubprogram(name: "spin_lock_bh", scope: !553, file: !553, line: 354, type: !554, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!553 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!554 = !DISubroutineType(types: !555)
!555 = !{null, !64}
!556 = !{!557}
!557 = !DILocalVariable(name: "lock", arg: 1, scope: !552, file: !553, line: 354, type: !64)
!558 = !DILocation(line: 354, column: 54, scope: !552)
!559 = !DILocation(line: 356, column: 2, scope: !552)
!560 = !DILocation(line: 357, column: 1, scope: !552)
!561 = distinct !DISubprogram(name: "del_timer_sync", scope: !129, file: !129, line: 198, type: !562, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!89, !143}
!564 = !{!565}
!565 = !DILocalVariable(name: "timer", arg: 1, scope: !561, file: !129, line: 198, type: !143)
!566 = !DILocation(line: 198, column: 53, scope: !561)
!567 = !DILocation(line: 200, column: 27, scope: !561)
!568 = !DILocation(line: 200, column: 9, scope: !561)
!569 = !DILocation(line: 200, column: 2, scope: !561)
!570 = !DISubprogram(name: "init_timer_key", scope: !129, file: !129, line: 91, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !143, !140, !7, !469, !471}
!573 = !DILocation(line: 76, column: 42, scope: !187)
!574 = !DILocation(line: 78, column: 2, scope: !187)
!575 = !DILocation(line: 78, column: 29, scope: !187)
!576 = !DILocation(line: 78, column: 35, scope: !192)
!577 = !DILocation(line: 78, column: 35, scope: !187)
!578 = !DILocation(line: 79, column: 2, scope: !187)
!579 = !DILocation(line: 79, column: 31, scope: !187)
!580 = !DILocation(line: 80, column: 2, scope: !187)
!581 = !DILocation(line: 80, column: 6, scope: !187)
!582 = !DILocation(line: 80, column: 15, scope: !187)
!583 = !DILocation(line: 81, column: 2, scope: !187)
!584 = !DILocation(line: 81, column: 6, scope: !187)
!585 = !DILocation(line: 81, column: 12, scope: !187)
!586 = !DILocation(line: 83, column: 21, scope: !187)
!587 = !DILocation(line: 83, column: 2, scope: !187)
!588 = !DILocation(line: 84, column: 30, scope: !187)
!589 = !DILocation(line: 84, column: 12, scope: !187)
!590 = !DILocation(line: 84, column: 10, scope: !187)
!591 = !DILocation(line: 85, column: 32, scope: !187)
!592 = !DILocation(line: 85, column: 14, scope: !187)
!593 = !DILocation(line: 85, column: 12, scope: !187)
!594 = !DILocation(line: 87, column: 11, scope: !187)
!595 = !DILocation(line: 87, column: 21, scope: !187)
!596 = !DILocation(line: 87, column: 26, scope: !187)
!597 = !DILocation(line: 87, column: 19, scope: !187)
!598 = !DILocation(line: 87, column: 47, scope: !187)
!599 = !DILocation(line: 87, column: 52, scope: !187)
!600 = !DILocation(line: 87, column: 45, scope: !187)
!601 = !DILocation(line: 87, column: 38, scope: !187)
!602 = !DILocation(line: 87, column: 8, scope: !187)
!603 = !DILocation(line: 88, column: 11, scope: !187)
!604 = !DILocation(line: 88, column: 20, scope: !187)
!605 = !DILocation(line: 88, column: 25, scope: !187)
!606 = !DILocation(line: 88, column: 17, scope: !187)
!607 = !DILocation(line: 88, column: 38, scope: !187)
!608 = !DILocation(line: 88, column: 43, scope: !187)
!609 = !DILocation(line: 88, column: 52, scope: !187)
!610 = !DILocation(line: 88, column: 57, scope: !187)
!611 = !DILocation(line: 88, column: 49, scope: !187)
!612 = !DILocation(line: 88, column: 35, scope: !187)
!613 = !DILocation(line: 88, column: 8, scope: !187)
!614 = !DILocation(line: 90, column: 10, scope: !187)
!615 = !DILocation(line: 90, column: 22, scope: !187)
!616 = !DILocation(line: 90, column: 27, scope: !187)
!617 = !DILocation(line: 90, column: 20, scope: !187)
!618 = !DILocation(line: 90, column: 50, scope: !187)
!619 = !DILocation(line: 90, column: 55, scope: !187)
!620 = !DILocation(line: 90, column: 48, scope: !187)
!621 = !DILocation(line: 90, column: 41, scope: !187)
!622 = !DILocation(line: 90, column: 7, scope: !187)
!623 = !DILocation(line: 91, column: 10, scope: !187)
!624 = !DILocation(line: 91, column: 18, scope: !187)
!625 = !DILocation(line: 91, column: 23, scope: !187)
!626 = !DILocation(line: 91, column: 15, scope: !187)
!627 = !DILocation(line: 91, column: 36, scope: !187)
!628 = !DILocation(line: 91, column: 41, scope: !187)
!629 = !DILocation(line: 91, column: 50, scope: !187)
!630 = !DILocation(line: 91, column: 55, scope: !187)
!631 = !DILocation(line: 91, column: 47, scope: !187)
!632 = !DILocation(line: 91, column: 33, scope: !187)
!633 = !DILocation(line: 91, column: 7, scope: !187)
!634 = !DILocation(line: 93, column: 2, scope: !187)
!635 = !DILocation(line: 93, column: 2, scope: !636)
!636 = distinct !DILexicalBlock(scope: !187, file: !3, line: 93, column: 2)
!637 = !DILocation(line: 93, column: 2, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !3, line: 93, column: 2)
!639 = !DILocation(line: 93, column: 2, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !3, line: 93, column: 2)
!641 = !{i64 2157581186}
!642 = !DILocation(line: 94, column: 16, scope: !187)
!643 = !DILocation(line: 94, column: 2, scope: !187)
!644 = !DILocation(line: 94, column: 7, scope: !187)
!645 = !DILocation(line: 94, column: 13, scope: !187)
!646 = !DILocation(line: 95, column: 16, scope: !187)
!647 = !DILocation(line: 95, column: 2, scope: !187)
!648 = !DILocation(line: 95, column: 7, scope: !187)
!649 = !DILocation(line: 95, column: 13, scope: !187)
!650 = !DILocation(line: 96, column: 2, scope: !187)
!651 = !DILocation(line: 96, column: 2, scope: !652)
!652 = distinct !DILexicalBlock(scope: !187, file: !3, line: 96, column: 2)
!653 = !DILocation(line: 96, column: 2, scope: !654)
!654 = distinct !DILexicalBlock(scope: !652, file: !3, line: 96, column: 2)
!655 = !DILocation(line: 96, column: 2, scope: !656)
!656 = distinct !DILexicalBlock(scope: !654, file: !3, line: 96, column: 2)
!657 = !{i64 2157588496}
!658 = !DILocation(line: 96, column: 2, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 96, column: 2)
!660 = !DILocation(line: 96, column: 2, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !3, line: 96, column: 2)
!662 = !{i64 2157588678}
!663 = !DILocation(line: 98, column: 20, scope: !187)
!664 = !DILocation(line: 98, column: 2, scope: !187)
!665 = !DILocation(line: 98, column: 7, scope: !187)
!666 = !DILocation(line: 98, column: 18, scope: !187)
!667 = !DILocation(line: 99, column: 22, scope: !187)
!668 = !DILocation(line: 99, column: 2, scope: !187)
!669 = !DILocation(line: 99, column: 7, scope: !187)
!670 = !DILocation(line: 99, column: 20, scope: !187)
!671 = !DILocation(line: 101, column: 34, scope: !187)
!672 = !DILocation(line: 101, column: 39, scope: !187)
!673 = !DILocation(line: 101, column: 31, scope: !187)
!674 = !DILocation(line: 101, column: 23, scope: !187)
!675 = !DILocation(line: 101, column: 2, scope: !187)
!676 = !DILocation(line: 101, column: 7, scope: !187)
!677 = !DILocation(line: 101, column: 20, scope: !187)
!678 = !DILocation(line: 103, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !187, file: !3, line: 103, column: 6)
!680 = !DILocation(line: 103, column: 6, scope: !187)
!681 = !DILocation(line: 105, column: 23, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !3, line: 103, column: 59)
!683 = !DILocation(line: 105, column: 31, scope: !682)
!684 = !DILocation(line: 105, column: 3, scope: !682)
!685 = !DILocation(line: 105, column: 8, scope: !682)
!686 = !DILocation(line: 105, column: 21, scope: !682)
!687 = !DILocation(line: 106, column: 2, scope: !682)
!688 = !DILocation(line: 107, column: 13, scope: !187)
!689 = !DILocation(line: 107, column: 18, scope: !187)
!690 = !DILocation(line: 107, column: 25, scope: !187)
!691 = !DILocation(line: 107, column: 30, scope: !187)
!692 = !DILocation(line: 107, column: 2, scope: !187)
!693 = !DILocation(line: 108, column: 1, scope: !187)
!694 = !DISubprogram(name: "mod_timer", scope: !129, file: !129, line: 172, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DISubroutineType(types: !696)
!696 = !{!89, !143, !126}
!697 = distinct !DISubprogram(name: "spin_unlock_bh", scope: !553, file: !553, line: 394, type: !554, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!698 = !{!699}
!699 = !DILocalVariable(name: "lock", arg: 1, scope: !697, file: !553, line: 394, type: !64)
!700 = !DILocation(line: 394, column: 56, scope: !697)
!701 = !DILocation(line: 396, column: 2, scope: !697)
!702 = !DILocation(line: 397, column: 1, scope: !697)
!703 = !DISubprogram(name: "kvfree_call_rcu", scope: !704, file: !704, line: 37, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!705 = !DISubroutineType(types: !706)
!706 = !{null, !151, !157}
!707 = distinct !DISubprogram(name: "gen_kill_estimator", scope: !3, file: !3, line: 205, type: !708, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !211}
!710 = !{!711, !712, !713, !715, !717, !719}
!711 = !DILocalVariable(name: "rate_est", arg: 1, scope: !707, file: !3, line: 205, type: !211)
!712 = !DILocalVariable(name: "est", scope: !707, file: !3, line: 207, type: !24)
!713 = !DILocalVariable(name: "__UNIQUE_ID_rcu541", scope: !714, file: !3, line: 209, type: !24)
!714 = distinct !DILexicalBlock(scope: !707, file: !3, line: 209, column: 8)
!715 = !DILocalVariable(name: "__ai_ptr", scope: !716, file: !3, line: 209, type: !211)
!716 = distinct !DILexicalBlock(scope: !714, file: !3, line: 209, column: 8)
!717 = !DILocalVariable(name: "__ret", scope: !718, file: !3, line: 209, type: !24)
!718 = distinct !DILexicalBlock(scope: !716, file: !3, line: 209, column: 8)
!719 = !DILocalVariable(name: "___p", scope: !720, file: !3, line: 212, type: !24)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 212, column: 3)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 210, column: 11)
!722 = distinct !DILexicalBlock(scope: !707, file: !3, line: 210, column: 6)
!723 = !DILocation(line: 205, column: 59, scope: !707)
!724 = !DILocation(line: 207, column: 2, scope: !707)
!725 = !DILocation(line: 207, column: 29, scope: !707)
!726 = !DILocation(line: 209, column: 8, scope: !714)
!727 = !DILocation(line: 209, column: 8, scope: !716)
!728 = !DILocation(line: 209, column: 8, scope: !729)
!729 = distinct !DILexicalBlock(scope: !716, file: !3, line: 209, column: 8)
!730 = !DILocation(line: 209, column: 8, scope: !718)
!731 = !{i64 2157608230}
!732 = !DILocation(line: 209, column: 8, scope: !707)
!733 = !DILocation(line: 209, column: 6, scope: !707)
!734 = !DILocation(line: 210, column: 6, scope: !722)
!735 = !DILocation(line: 210, column: 6, scope: !707)
!736 = !DILocation(line: 211, column: 24, scope: !721)
!737 = !DILocation(line: 211, column: 29, scope: !721)
!738 = !DILocation(line: 211, column: 3, scope: !721)
!739 = !DILocation(line: 212, column: 3, scope: !721)
!740 = !DILocation(line: 212, column: 3, scope: !720)
!741 = !DILocation(line: 212, column: 3, scope: !742)
!742 = distinct !DILexicalBlock(scope: !720, file: !3, line: 212, column: 3)
!743 = !DILocation(line: 212, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !3, line: 212, column: 3)
!745 = !DILocation(line: 212, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !3, line: 212, column: 3)
!747 = !DILocation(line: 213, column: 2, scope: !721)
!748 = !DILocation(line: 214, column: 1, scope: !707)
!749 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !750, file: !750, line: 94, type: !751, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!750 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!751 = !DISubroutineType(types: !752)
!752 = !{null, !753, !451}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "v", arg: 1, scope: !749, file: !750, line: 94, type: !753)
!758 = !DILocalVariable(name: "size", arg: 2, scope: !749, file: !750, line: 94, type: !451)
!759 = !DILocation(line: 94, column: 79, scope: !749)
!760 = !DILocation(line: 94, column: 89, scope: !749)
!761 = !DILocation(line: 96, column: 20, scope: !749)
!762 = !DILocation(line: 96, column: 23, scope: !749)
!763 = !DILocation(line: 96, column: 2, scope: !749)
!764 = !DILocation(line: 97, column: 2, scope: !749)
!765 = !DILocation(line: 98, column: 1, scope: !749)
!766 = !DISubprogram(name: "timer_shutdown_sync", scope: !129, file: !129, line: 187, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = distinct !DISubprogram(name: "gen_replace_estimator", scope: !3, file: !3, line: 233, type: !209, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!768 = !{!769, !770, !771, !772, !773, !774}
!769 = !DILocalVariable(name: "bstats", arg: 1, scope: !767, file: !3, line: 233, type: !28)
!770 = !DILocalVariable(name: "cpu_bstats", arg: 2, scope: !767, file: !3, line: 234, type: !28)
!771 = !DILocalVariable(name: "rate_est", arg: 3, scope: !767, file: !3, line: 235, type: !211)
!772 = !DILocalVariable(name: "lock", arg: 4, scope: !767, file: !3, line: 236, type: !64)
!773 = !DILocalVariable(name: "running", arg: 5, scope: !767, file: !3, line: 237, type: !107)
!774 = !DILocalVariable(name: "opt", arg: 6, scope: !767, file: !3, line: 237, type: !212)
!775 = !DILocation(line: 233, column: 57, scope: !767)
!776 = !DILocation(line: 234, column: 45, scope: !767)
!777 = !DILocation(line: 235, column: 40, scope: !767)
!778 = !DILocation(line: 236, column: 18, scope: !767)
!779 = !DILocation(line: 237, column: 11, scope: !767)
!780 = !DILocation(line: 237, column: 35, scope: !767)
!781 = !DILocation(line: 239, column: 27, scope: !767)
!782 = !DILocation(line: 239, column: 35, scope: !767)
!783 = !DILocation(line: 239, column: 47, scope: !767)
!784 = !DILocation(line: 240, column: 6, scope: !767)
!785 = !DILocation(line: 240, column: 12, scope: !767)
!786 = !DILocation(line: 240, column: 21, scope: !767)
!787 = !DILocation(line: 239, column: 9, scope: !767)
!788 = !DILocation(line: 239, column: 2, scope: !767)
!789 = distinct !DISubprogram(name: "gen_estimator_active", scope: !3, file: !3, line: 250, type: !790, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{!107, !211}
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "rate_est", arg: 1, scope: !789, file: !3, line: 250, type: !211)
!794 = !DILocalVariable(name: "__UNIQUE_ID_rcu545", scope: !795, file: !3, line: 252, type: !24)
!795 = distinct !DILexicalBlock(scope: !789, file: !3, line: 252, column: 11)
!796 = !DILocation(line: 250, column: 61, scope: !789)
!797 = !DILocation(line: 252, column: 11, scope: !795)
!798 = !DILocation(line: 252, column: 11, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !3, line: 252, column: 11)
!800 = !DILocation(line: 252, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !799, file: !3, line: 252, column: 11)
!802 = !DILocation(line: 252, column: 11, scope: !789)
!803 = !DILocation(line: 252, column: 10, scope: !789)
!804 = !DILocation(line: 252, column: 9, scope: !789)
!805 = !DILocation(line: 252, column: 2, scope: !789)
!806 = distinct !DISubprogram(name: "gen_estimator_read", scope: !3, file: !3, line: 256, type: !807, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!807 = !DISubroutineType(types: !808)
!808 = !{!107, !211, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gnet_stats_rate_est64", file: !228, line: 46, size: 128, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !810, file: !228, line: 47, baseType: !120, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !810, file: !228, line: 48, baseType: !120, size: 64, offset: 64)
!814 = !{!815, !816, !817, !818, !819, !821, !825}
!815 = !DILocalVariable(name: "rate_est", arg: 1, scope: !806, file: !3, line: 256, type: !211)
!816 = !DILocalVariable(name: "sample", arg: 2, scope: !806, file: !3, line: 257, type: !809)
!817 = !DILocalVariable(name: "est", scope: !806, file: !3, line: 259, type: !24)
!818 = !DILocalVariable(name: "seq", scope: !806, file: !3, line: 260, type: !7)
!819 = !DILocalVariable(name: "__UNIQUE_ID_rcu548", scope: !820, file: !3, line: 263, type: !24)
!820 = distinct !DILexicalBlock(scope: !806, file: !3, line: 263, column: 8)
!821 = !DILocalVariable(name: "_seq", scope: !822, file: !3, line: 270, type: !7)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 270, column: 9)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 270, column: 9)
!824 = distinct !DILexicalBlock(scope: !806, file: !3, line: 269, column: 5)
!825 = !DILocalVariable(name: "__seq", scope: !826, file: !3, line: 270, type: !7)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 270, column: 9)
!827 = !DILocation(line: 256, column: 59, scope: !806)
!828 = !DILocation(line: 257, column: 34, scope: !806)
!829 = !DILocation(line: 259, column: 2, scope: !806)
!830 = !DILocation(line: 259, column: 29, scope: !806)
!831 = !DILocation(line: 260, column: 2, scope: !806)
!832 = !DILocation(line: 260, column: 11, scope: !806)
!833 = !DILocation(line: 262, column: 2, scope: !806)
!834 = !DILocation(line: 263, column: 8, scope: !820)
!835 = !DILocation(line: 263, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !820, file: !3, line: 263, column: 8)
!837 = !DILocation(line: 263, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !3, line: 263, column: 8)
!839 = !DILocation(line: 263, column: 8, scope: !840)
!840 = distinct !DILexicalBlock(scope: !820, file: !3, line: 263, column: 8)
!841 = !DILocation(line: 263, column: 8, scope: !806)
!842 = !DILocation(line: 263, column: 6, scope: !806)
!843 = !DILocation(line: 264, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !806, file: !3, line: 264, column: 6)
!845 = !DILocation(line: 264, column: 6, scope: !806)
!846 = !DILocation(line: 265, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 264, column: 12)
!848 = !DILocation(line: 266, column: 3, scope: !847)
!849 = !DILocation(line: 269, column: 2, scope: !806)
!850 = !DILocation(line: 270, column: 9, scope: !822)
!851 = !DILocation(line: 270, column: 9, scope: !826)
!852 = distinct !{!852, !851, !851, !853, !854}
!853 = !{!"llvm.loop.mustprogress"}
!854 = !{!"llvm.loop.unroll.disable"}
!855 = !DILocation(line: 270, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !822, file: !3, line: 270, column: 9)
!857 = !DILocation(line: 270, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !856, file: !3, line: 270, column: 9)
!859 = !DILocation(line: 270, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !3, line: 270, column: 9)
!861 = !DILocation(line: 270, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !860, file: !3, line: 270, column: 9)
!863 = !{i64 2157626735}
!864 = !DILocation(line: 270, column: 9, scope: !823)
!865 = !DILocation(line: 270, column: 9, scope: !824)
!866 = !DILocation(line: 270, column: 7, scope: !824)
!867 = !DILocation(line: 271, column: 17, scope: !824)
!868 = !DILocation(line: 271, column: 22, scope: !824)
!869 = !DILocation(line: 271, column: 28, scope: !824)
!870 = !DILocation(line: 271, column: 3, scope: !824)
!871 = !DILocation(line: 271, column: 11, scope: !824)
!872 = !DILocation(line: 271, column: 15, scope: !824)
!873 = !DILocation(line: 272, column: 17, scope: !824)
!874 = !DILocation(line: 272, column: 22, scope: !824)
!875 = !DILocation(line: 272, column: 28, scope: !824)
!876 = !DILocation(line: 272, column: 3, scope: !824)
!877 = !DILocation(line: 272, column: 11, scope: !824)
!878 = !DILocation(line: 272, column: 15, scope: !824)
!879 = !DILocation(line: 273, column: 2, scope: !824)
!880 = !DILocation(line: 273, column: 11, scope: !806)
!881 = distinct !{!881, !849, !882, !853, !854}
!882 = !DILocation(line: 273, column: 46, scope: !806)
!883 = !DILocation(line: 275, column: 2, scope: !806)
!884 = !DILocation(line: 276, column: 2, scope: !806)
!885 = !DILocation(line: 277, column: 1, scope: !806)
!886 = distinct !DISubprogram(name: "rcu_read_lock", scope: !887, file: !887, line: 782, type: !490, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!887 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!888 = !DILocation(line: 784, column: 2, scope: !886)
!889 = !DILocation(line: 786, column: 2, scope: !886)
!890 = !DILocation(line: 786, column: 2, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !887, line: 786, column: 2)
!892 = !DILocation(line: 787, column: 2, scope: !886)
!893 = !DILocation(line: 787, column: 2, scope: !894)
!894 = distinct !DILexicalBlock(scope: !886, file: !887, line: 787, column: 2)
!895 = !DILocation(line: 789, column: 1, scope: !886)
!896 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !887, file: !887, line: 813, type: !490, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!897 = !DILocation(line: 815, column: 2, scope: !896)
!898 = !DILocation(line: 815, column: 2, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !887, line: 815, column: 2)
!900 = !DILocation(line: 818, column: 2, scope: !896)
!901 = !DILocation(line: 819, column: 2, scope: !896)
!902 = !DILocation(line: 819, column: 2, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !887, line: 819, column: 2)
!904 = !DILocation(line: 820, column: 1, scope: !896)
!905 = distinct !DISubprogram(name: "__seqprop_sequence", scope: !114, file: !114, line: 257, type: !906, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!906 = !DISubroutineType(types: !907)
!907 = !{!7, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!910 = !{!911}
!911 = !DILocalVariable(name: "s", arg: 1, scope: !905, file: !114, line: 257, type: !908)
!912 = !DILocation(line: 257, column: 61, scope: !905)
!913 = !DILocation(line: 259, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !905, file: !114, line: 259, column: 9)
!915 = !DILocation(line: 259, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !914, file: !114, line: 259, column: 9)
!917 = !DILocation(line: 259, column: 2, scope: !905)
!918 = distinct !DISubprogram(name: "cpu_relax", scope: !919, file: !919, line: 16, type: !490, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!919 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!920 = !DILocation(line: 18, column: 2, scope: !918)
!921 = !DILocation(line: 19, column: 1, scope: !918)
!922 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !923, file: !923, line: 203, type: !924, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !926)
!923 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!924 = !DISubroutineType(types: !925)
!925 = !{null, !89}
!926 = !{!927}
!927 = !DILocalVariable(name: "n", arg: 1, scope: !922, file: !923, line: 203, type: !89)
!928 = !DILocation(line: 203, column: 42, scope: !922)
!929 = !DILocation(line: 203, column: 48, scope: !922)
!930 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !114, file: !114, line: 446, type: !931, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!89, !908, !7}
!933 = !{!934, !935}
!934 = !DILocalVariable(name: "s", arg: 1, scope: !930, file: !114, line: 446, type: !908)
!935 = !DILocalVariable(name: "start", arg: 2, scope: !930, file: !114, line: 446, type: !7)
!936 = !DILocation(line: 446, column: 60, scope: !930)
!937 = !DILocation(line: 446, column: 72, scope: !930)
!938 = !DILocation(line: 448, column: 2, scope: !930)
!939 = !DILocation(line: 448, column: 2, scope: !940)
!940 = distinct !DILexicalBlock(scope: !930, file: !114, line: 448, column: 2)
!941 = !DILocation(line: 448, column: 2, scope: !942)
!942 = distinct !DILexicalBlock(scope: !940, file: !114, line: 448, column: 2)
!943 = !DILocation(line: 448, column: 2, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !114, line: 448, column: 2)
!945 = !DILocation(line: 448, column: 2, scope: !946)
!946 = distinct !DILexicalBlock(scope: !944, file: !114, line: 448, column: 2)
!947 = !{i64 2150516799}
!948 = !DILocation(line: 449, column: 34, scope: !930)
!949 = !DILocation(line: 449, column: 37, scope: !930)
!950 = !DILocation(line: 449, column: 9, scope: !930)
!951 = !DILocation(line: 449, column: 2, scope: !930)
!952 = distinct !DISubprogram(name: "__seqprop_ptr", scope: !114, file: !114, line: 252, type: !953, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{!468, !468}
!955 = !{!956}
!956 = !DILocalVariable(name: "s", arg: 1, scope: !952, file: !114, line: 252, type: !468)
!957 = !DILocation(line: 252, column: 53, scope: !952)
!958 = !DILocation(line: 254, column: 9, scope: !952)
!959 = !DILocation(line: 254, column: 2, scope: !952)
!960 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !449, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "size", arg: 1, scope: !960, file: !12, line: 591, type: !451)
!963 = !DILocalVariable(name: "flags", arg: 2, scope: !960, file: !12, line: 591, type: !22)
!964 = !DILocalVariable(name: "index", scope: !965, file: !12, line: 594, type: !7)
!965 = distinct !DILexicalBlock(scope: !966, file: !12, line: 593, column: 42)
!966 = distinct !DILexicalBlock(scope: !960, file: !12, line: 593, column: 6)
!967 = !DILocation(line: 591, column: 61, scope: !960)
!968 = !DILocation(line: 591, column: 73, scope: !960)
!969 = !DILocation(line: 593, column: 27, scope: !966)
!970 = !DILocation(line: 593, column: 6, scope: !966)
!971 = !DILocation(line: 593, column: 33, scope: !966)
!972 = !DILocation(line: 593, column: 36, scope: !966)
!973 = !DILocation(line: 593, column: 6, scope: !960)
!974 = !DILocation(line: 594, column: 3, scope: !965)
!975 = !DILocation(line: 594, column: 16, scope: !965)
!976 = !DILocation(line: 596, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !965, file: !12, line: 596, column: 7)
!978 = !DILocation(line: 596, column: 12, scope: !977)
!979 = !DILocation(line: 596, column: 7, scope: !965)
!980 = !DILocation(line: 597, column: 25, scope: !977)
!981 = !DILocation(line: 597, column: 31, scope: !977)
!982 = !DILocation(line: 597, column: 11, scope: !977)
!983 = !DILocation(line: 597, column: 4, scope: !977)
!984 = !DILocation(line: 599, column: 11, scope: !965)
!985 = !DILocation(line: 599, column: 9, scope: !965)
!986 = !DILocation(line: 601, column: 33, scope: !965)
!987 = !DILocation(line: 601, column: 40, scope: !965)
!988 = !DILocation(line: 601, column: 20, scope: !965)
!989 = !DILocation(line: 601, column: 5, scope: !965)
!990 = !DILocation(line: 601, column: 51, scope: !965)
!991 = !DILocation(line: 602, column: 5, scope: !965)
!992 = !DILocation(line: 602, column: 12, scope: !965)
!993 = !DILocation(line: 600, column: 10, scope: !965)
!994 = !DILocation(line: 600, column: 3, scope: !965)
!995 = !DILocation(line: 603, column: 2, scope: !966)
!996 = !DILocation(line: 604, column: 19, scope: !960)
!997 = !DILocation(line: 604, column: 25, scope: !960)
!998 = !DILocation(line: 604, column: 9, scope: !960)
!999 = !DILocation(line: 604, column: 2, scope: !960)
!1000 = !DILocation(line: 605, column: 1, scope: !960)
!1001 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1003, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!7, !451, !107}
!1005 = !{!1006, !1007}
!1006 = !DILocalVariable(name: "size", arg: 1, scope: !1002, file: !12, line: 444, type: !451)
!1007 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1002, file: !12, line: 445, type: !107)
!1008 = !DILocation(line: 444, column: 60, scope: !1002)
!1009 = !DILocation(line: 445, column: 16, scope: !1002)
!1010 = !DILocation(line: 447, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 447, column: 6)
!1012 = !DILocation(line: 447, column: 6, scope: !1002)
!1013 = !DILocation(line: 448, column: 3, scope: !1011)
!1014 = !DILocation(line: 450, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 450, column: 6)
!1016 = !DILocation(line: 450, column: 11, scope: !1015)
!1017 = !DILocation(line: 450, column: 6, scope: !1002)
!1018 = !DILocation(line: 451, column: 3, scope: !1015)
!1019 = !DILocation(line: 453, column: 32, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 453, column: 6)
!1021 = !DILocation(line: 453, column: 37, scope: !1020)
!1022 = !DILocation(line: 453, column: 42, scope: !1020)
!1023 = !DILocation(line: 453, column: 45, scope: !1020)
!1024 = !DILocation(line: 453, column: 50, scope: !1020)
!1025 = !DILocation(line: 453, column: 6, scope: !1002)
!1026 = !DILocation(line: 454, column: 3, scope: !1020)
!1027 = !DILocation(line: 455, column: 32, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 455, column: 6)
!1029 = !DILocation(line: 455, column: 37, scope: !1028)
!1030 = !DILocation(line: 455, column: 43, scope: !1028)
!1031 = !DILocation(line: 455, column: 46, scope: !1028)
!1032 = !DILocation(line: 455, column: 51, scope: !1028)
!1033 = !DILocation(line: 455, column: 6, scope: !1002)
!1034 = !DILocation(line: 456, column: 3, scope: !1028)
!1035 = !DILocation(line: 457, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 457, column: 6)
!1037 = !DILocation(line: 457, column: 11, scope: !1036)
!1038 = !DILocation(line: 457, column: 6, scope: !1002)
!1039 = !DILocation(line: 457, column: 26, scope: !1036)
!1040 = !DILocation(line: 458, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 458, column: 6)
!1042 = !DILocation(line: 458, column: 11, scope: !1041)
!1043 = !DILocation(line: 458, column: 6, scope: !1002)
!1044 = !DILocation(line: 458, column: 26, scope: !1041)
!1045 = !DILocation(line: 459, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 459, column: 6)
!1047 = !DILocation(line: 459, column: 11, scope: !1046)
!1048 = !DILocation(line: 459, column: 6, scope: !1002)
!1049 = !DILocation(line: 459, column: 26, scope: !1046)
!1050 = !DILocation(line: 460, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 460, column: 6)
!1052 = !DILocation(line: 460, column: 11, scope: !1051)
!1053 = !DILocation(line: 460, column: 6, scope: !1002)
!1054 = !DILocation(line: 460, column: 26, scope: !1051)
!1055 = !DILocation(line: 461, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 461, column: 6)
!1057 = !DILocation(line: 461, column: 11, scope: !1056)
!1058 = !DILocation(line: 461, column: 6, scope: !1002)
!1059 = !DILocation(line: 461, column: 26, scope: !1056)
!1060 = !DILocation(line: 462, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 462, column: 6)
!1062 = !DILocation(line: 462, column: 11, scope: !1061)
!1063 = !DILocation(line: 462, column: 6, scope: !1002)
!1064 = !DILocation(line: 462, column: 26, scope: !1061)
!1065 = !DILocation(line: 463, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 463, column: 6)
!1067 = !DILocation(line: 463, column: 11, scope: !1066)
!1068 = !DILocation(line: 463, column: 6, scope: !1002)
!1069 = !DILocation(line: 463, column: 26, scope: !1066)
!1070 = !DILocation(line: 464, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 464, column: 6)
!1072 = !DILocation(line: 464, column: 11, scope: !1071)
!1073 = !DILocation(line: 464, column: 6, scope: !1002)
!1074 = !DILocation(line: 464, column: 26, scope: !1071)
!1075 = !DILocation(line: 465, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 465, column: 6)
!1077 = !DILocation(line: 465, column: 11, scope: !1076)
!1078 = !DILocation(line: 465, column: 6, scope: !1002)
!1079 = !DILocation(line: 465, column: 26, scope: !1076)
!1080 = !DILocation(line: 466, column: 6, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 466, column: 6)
!1082 = !DILocation(line: 466, column: 11, scope: !1081)
!1083 = !DILocation(line: 466, column: 6, scope: !1002)
!1084 = !DILocation(line: 466, column: 26, scope: !1081)
!1085 = !DILocation(line: 467, column: 6, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 467, column: 6)
!1087 = !DILocation(line: 467, column: 11, scope: !1086)
!1088 = !DILocation(line: 467, column: 6, scope: !1002)
!1089 = !DILocation(line: 467, column: 26, scope: !1086)
!1090 = !DILocation(line: 468, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 468, column: 6)
!1092 = !DILocation(line: 468, column: 11, scope: !1091)
!1093 = !DILocation(line: 468, column: 6, scope: !1002)
!1094 = !DILocation(line: 468, column: 26, scope: !1091)
!1095 = !DILocation(line: 469, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 469, column: 6)
!1097 = !DILocation(line: 469, column: 11, scope: !1096)
!1098 = !DILocation(line: 469, column: 6, scope: !1002)
!1099 = !DILocation(line: 469, column: 26, scope: !1096)
!1100 = !DILocation(line: 470, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 470, column: 6)
!1102 = !DILocation(line: 470, column: 11, scope: !1101)
!1103 = !DILocation(line: 470, column: 6, scope: !1002)
!1104 = !DILocation(line: 470, column: 26, scope: !1101)
!1105 = !DILocation(line: 471, column: 6, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 471, column: 6)
!1107 = !DILocation(line: 471, column: 11, scope: !1106)
!1108 = !DILocation(line: 471, column: 6, scope: !1002)
!1109 = !DILocation(line: 471, column: 26, scope: !1106)
!1110 = !DILocation(line: 472, column: 6, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 472, column: 6)
!1112 = !DILocation(line: 472, column: 11, scope: !1111)
!1113 = !DILocation(line: 472, column: 6, scope: !1002)
!1114 = !DILocation(line: 472, column: 26, scope: !1111)
!1115 = !DILocation(line: 473, column: 6, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 473, column: 6)
!1117 = !DILocation(line: 473, column: 11, scope: !1116)
!1118 = !DILocation(line: 473, column: 6, scope: !1002)
!1119 = !DILocation(line: 473, column: 26, scope: !1116)
!1120 = !DILocation(line: 474, column: 6, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 474, column: 6)
!1122 = !DILocation(line: 474, column: 11, scope: !1121)
!1123 = !DILocation(line: 474, column: 6, scope: !1002)
!1124 = !DILocation(line: 474, column: 27, scope: !1121)
!1125 = !DILocation(line: 475, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 475, column: 6)
!1127 = !DILocation(line: 475, column: 11, scope: !1126)
!1128 = !DILocation(line: 475, column: 6, scope: !1002)
!1129 = !DILocation(line: 475, column: 32, scope: !1126)
!1130 = !DILocation(line: 477, column: 50, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1002, file: !12, line: 477, column: 6)
!1132 = !DILocation(line: 477, column: 6, scope: !1002)
!1133 = !DILocation(line: 478, column: 3, scope: !1131)
!1134 = !DILocation(line: 478, column: 3, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !12, line: 478, column: 3)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !12, line: 478, column: 3)
!1137 = !{i32 -2141704648}
!1138 = !DILocation(line: 478, column: 3, scope: !1136)
!1139 = !DILocation(line: 480, column: 3, scope: !1131)
!1140 = !DILocation(line: 480, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1131, file: !12, line: 480, column: 3)
!1142 = !DILocation(line: 480, column: 3, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1141, file: !12, line: 480, column: 3)
!1144 = !DILocation(line: 480, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !12, line: 480, column: 3)
!1146 = !{i64 2153262851, i64 2153262880, i64 2153262926, i64 2153262984, i64 2153263038, i64 2153263092, i64 2153263147, i64 2153263178}
!1147 = !DILocation(line: 483, column: 2, scope: !1002)
!1148 = !DILocation(line: 484, column: 1, scope: !1002)
!1149 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!157, !1152, !22, !451}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1154, line: 11, flags: DIFlagFwdDecl)
!1154 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1155 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1156, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!11, !22, !126}
!1158 = !{!1159, !1160}
!1159 = !DILocalVariable(name: "flags", arg: 1, scope: !1155, file: !12, line: 401, type: !22)
!1160 = !DILocalVariable(name: "caller", arg: 2, scope: !1155, file: !12, line: 401, type: !126)
!1161 = !DILocation(line: 401, column: 67, scope: !1155)
!1162 = !DILocation(line: 401, column: 88, scope: !1155)
!1163 = !DILocation(line: 407, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1155, file: !12, line: 407, column: 6)
!1165 = !DILocation(line: 407, column: 6, scope: !1155)
!1166 = !DILocation(line: 413, column: 3, scope: !1164)
!1167 = !DILocation(line: 423, column: 38, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1155, file: !12, line: 423, column: 6)
!1169 = !DILocation(line: 423, column: 44, scope: !1168)
!1170 = !DILocation(line: 423, column: 6, scope: !1155)
!1171 = !DILocation(line: 424, column: 3, scope: !1168)
!1172 = !DILocation(line: 426, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1155, file: !12, line: 425, column: 6)
!1174 = !DILocation(line: 429, column: 1, scope: !1155)
!1175 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = !DISubprogram(name: "__compiletime_assert_239", scope: !12, file: !12, line: 478, type: !490, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1177 = distinct !DISubprogram(name: "__local_bh_disable_ip", scope: !489, file: !489, line: 11, type: !1178, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !126, !7}
!1180 = !{!1181, !1182}
!1181 = !DILocalVariable(name: "ip", arg: 1, scope: !1177, file: !489, line: 11, type: !126)
!1182 = !DILocalVariable(name: "cnt", arg: 2, scope: !1177, file: !489, line: 11, type: !7)
!1183 = !DILocation(line: 11, column: 65, scope: !1177)
!1184 = !DILocation(line: 11, column: 82, scope: !1177)
!1185 = !DILocation(line: 13, column: 2, scope: !1177)
!1186 = !DILocation(line: 14, column: 2, scope: !1177)
!1187 = !{i64 2149632347}
!1188 = !DILocation(line: 15, column: 1, scope: !1177)
!1189 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1190, file: !1190, line: 78, type: !924, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1191)
!1190 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1191 = !{!1192, !1193, !1196}
!1192 = !DILocalVariable(name: "val", arg: 1, scope: !1189, file: !1190, line: 78, type: !89)
!1193 = !DILocalVariable(name: "pao_ID__", scope: !1194, file: !1190, line: 80, type: !1195)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !1190, line: 80, column: 2)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1196 = !DILocalVariable(name: "pto_val__", scope: !1197, file: !1190, line: 80, type: !145)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1190, line: 80, column: 2)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1190, line: 80, column: 2)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !1190, line: 80, column: 2)
!1200 = !DILocation(line: 78, column: 53, scope: !1189)
!1201 = !DILocation(line: 80, column: 2, scope: !1189)
!1202 = !DILocation(line: 80, column: 2, scope: !1194)
!1203 = !DILocation(line: 80, column: 2, scope: !1199)
!1204 = !DILocation(line: 80, column: 2, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !1190, line: 80, column: 2)
!1206 = !{i64 2149608849}
!1207 = !DILocation(line: 80, column: 2, scope: !1198)
!1208 = !DILocation(line: 80, column: 2, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1198, file: !1190, line: 80, column: 2)
!1210 = !{i64 2149609144}
!1211 = !DILocation(line: 80, column: 2, scope: !1197)
!1212 = !{i64 2149609849}
!1213 = !DILocation(line: 81, column: 1, scope: !1189)
!1214 = !DISubprogram(name: "gnet_stats_basic_sync_init", scope: !30, file: !30, line: 40, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !28}
!1217 = distinct !DISubprogram(name: "spin_lock", scope: !553, file: !553, line: 349, type: !554, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "lock", arg: 1, scope: !1217, file: !553, line: 349, type: !64)
!1220 = !DILocation(line: 349, column: 51, scope: !1217)
!1221 = !DILocation(line: 351, column: 2, scope: !1217)
!1222 = !DILocation(line: 352, column: 1, scope: !1217)
!1223 = !DISubprogram(name: "gnet_stats_add_basic", scope: !30, file: !30, line: 52, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !28, !28, !28, !107}
!1226 = distinct !DISubprogram(name: "spin_unlock", scope: !553, file: !553, line: 389, type: !554, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "lock", arg: 1, scope: !1226, file: !553, line: 389, type: !64)
!1229 = !DILocation(line: 389, column: 53, scope: !1226)
!1230 = !DILocation(line: 391, column: 2, scope: !1226)
!1231 = !DILocation(line: 392, column: 1, scope: !1226)
!1232 = !DISubprogram(name: "_raw_spin_lock", scope: !1233, file: !1233, line: 22, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1233 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !74, line: 23, baseType: !73)
!1238 = !DISubprogram(name: "_raw_spin_unlock", scope: !1233, file: !1233, line: 39, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DISubprogram(name: "__local_bh_enable_ip", scope: !489, file: !489, line: 24, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = distinct !DISubprogram(name: "atomic_long_read", scope: !1241, file: !1241, line: 3158, type: !1242, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1241 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!167, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "v", arg: 1, scope: !1240, file: !1241, line: 3158, type: !1244)
!1248 = !DILocation(line: 3158, column: 39, scope: !1240)
!1249 = !DILocation(line: 3160, column: 25, scope: !1240)
!1250 = !DILocation(line: 3160, column: 2, scope: !1240)
!1251 = !DILocation(line: 3161, column: 30, scope: !1240)
!1252 = !DILocation(line: 3161, column: 9, scope: !1240)
!1253 = !DILocation(line: 3161, column: 2, scope: !1240)
!1254 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !750, file: !750, line: 66, type: !751, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1255)
!1255 = !{!1256, !1257}
!1256 = !DILocalVariable(name: "v", arg: 1, scope: !1254, file: !750, line: 66, type: !753)
!1257 = !DILocalVariable(name: "size", arg: 2, scope: !1254, file: !750, line: 66, type: !451)
!1258 = !DILocation(line: 66, column: 73, scope: !1254)
!1259 = !DILocation(line: 66, column: 83, scope: !1254)
!1260 = !DILocation(line: 68, column: 19, scope: !1254)
!1261 = !DILocation(line: 68, column: 22, scope: !1254)
!1262 = !DILocation(line: 68, column: 2, scope: !1254)
!1263 = !DILocation(line: 69, column: 2, scope: !1254)
!1264 = !DILocation(line: 70, column: 1, scope: !1254)
!1265 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !49, file: !49, line: 35, type: !1242, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1266 = !{!1267}
!1267 = !DILocalVariable(name: "v", arg: 1, scope: !1265, file: !49, line: 35, type: !1244)
!1268 = !DILocation(line: 35, column: 43, scope: !1265)
!1269 = !DILocation(line: 38, column: 27, scope: !1265)
!1270 = !DILocation(line: 38, column: 9, scope: !1265)
!1271 = !DILocation(line: 38, column: 2, scope: !1265)
!1272 = distinct !DISubprogram(name: "kasan_check_read", scope: !1273, file: !1273, line: 40, type: !1274, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1273 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!107, !753, !7}
!1276 = !{!1277, !1278}
!1277 = !DILocalVariable(name: "p", arg: 1, scope: !1272, file: !1273, line: 40, type: !753)
!1278 = !DILocalVariable(name: "size", arg: 2, scope: !1272, file: !1273, line: 40, type: !7)
!1279 = !DILocation(line: 40, column: 58, scope: !1272)
!1280 = !DILocation(line: 40, column: 74, scope: !1272)
!1281 = !DILocation(line: 42, column: 2, scope: !1272)
!1282 = distinct !DISubprogram(name: "kcsan_check_access", scope: !923, file: !923, line: 229, type: !1283, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !753, !451, !89}
!1285 = !{!1286, !1287, !1288}
!1286 = !DILocalVariable(name: "ptr", arg: 1, scope: !1282, file: !923, line: 229, type: !753)
!1287 = !DILocalVariable(name: "size", arg: 2, scope: !1282, file: !923, line: 229, type: !451)
!1288 = !DILocalVariable(name: "type", arg: 3, scope: !1282, file: !923, line: 230, type: !89)
!1289 = !DILocation(line: 229, column: 60, scope: !1282)
!1290 = !DILocation(line: 229, column: 72, scope: !1282)
!1291 = !DILocation(line: 230, column: 15, scope: !1282)
!1292 = !DILocation(line: 230, column: 23, scope: !1282)
!1293 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !1294, file: !1294, line: 2554, type: !1295, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1294 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!54, !1297}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!1299 = !{!1300}
!1300 = !DILocalVariable(name: "v", arg: 1, scope: !1293, file: !1294, line: 2554, type: !1297)
!1301 = !DILocation(line: 2554, column: 37, scope: !1293)
!1302 = !DILocation(line: 2556, column: 28, scope: !1293)
!1303 = !DILocation(line: 2556, column: 9, scope: !1293)
!1304 = !DILocation(line: 2556, column: 2, scope: !1293)
!1305 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !1306, file: !1306, line: 13, type: !1295, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1306 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!1307 = !{!1308}
!1308 = !DILocalVariable(name: "v", arg: 1, scope: !1305, file: !1306, line: 13, type: !1297)
!1309 = !DILocation(line: 13, column: 65, scope: !1305)
!1310 = !DILocation(line: 15, column: 9, scope: !1305)
!1311 = !DILocation(line: 15, column: 2, scope: !1305)
!1312 = !DISubprogram(name: "_raw_spin_lock_bh", scope: !1233, file: !1233, line: 28, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubprogram(name: "timer_delete_sync", scope: !129, file: !129, line: 185, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1314 = distinct !DISubprogram(name: "__seqprop_assert", scope: !114, file: !114, line: 267, type: !1315, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !908}
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "s", arg: 1, scope: !1314, file: !114, line: 267, type: !908)
!1319 = !DILocation(line: 267, column: 55, scope: !1314)
!1320 = !DILocation(line: 269, column: 2, scope: !1314)
!1321 = !DILocation(line: 269, column: 2, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !114, line: 269, column: 2)
!1323 = !DILocation(line: 270, column: 1, scope: !1314)
!1324 = distinct !DISubprogram(name: "__seqprop_preemptible", scope: !114, file: !114, line: 262, type: !1325, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!107, !908}
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "s", arg: 1, scope: !1324, file: !114, line: 262, type: !908)
!1329 = !DILocation(line: 262, column: 60, scope: !1324)
!1330 = !DILocation(line: 264, column: 2, scope: !1324)
!1331 = distinct !DISubprogram(name: "do_write_seqcount_begin", scope: !114, file: !114, line: 539, type: !1332, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !468}
!1334 = !{!1335}
!1335 = !DILocalVariable(name: "s", arg: 1, scope: !1331, file: !114, line: 539, type: !468)
!1336 = !DILocation(line: 539, column: 56, scope: !1331)
!1337 = !DILocation(line: 541, column: 33, scope: !1331)
!1338 = !DILocation(line: 541, column: 2, scope: !1331)
!1339 = !DILocation(line: 542, column: 1, scope: !1331)
!1340 = distinct !DISubprogram(name: "do_write_seqcount_end", scope: !114, file: !114, line: 559, type: !1332, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "s", arg: 1, scope: !1340, file: !114, line: 559, type: !468)
!1343 = !DILocation(line: 559, column: 54, scope: !1340)
!1344 = !DILocation(line: 561, column: 2, scope: !1340)
!1345 = !DILocation(line: 561, column: 2, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !114, line: 561, column: 2)
!1347 = !DILocation(line: 562, column: 28, scope: !1340)
!1348 = !DILocation(line: 562, column: 2, scope: !1340)
!1349 = !DILocation(line: 563, column: 1, scope: !1340)
!1350 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1190, file: !1190, line: 93, type: !1351, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!107}
!1353 = !{!1354}
!1354 = !DILocalVariable(name: "c", scope: !1355, file: !1190, line: 95, type: !107)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !1190, line: 95, column: 9)
!1356 = !DILocation(line: 95, column: 9, scope: !1355)
!1357 = !{i64 2149613205, i64 2149613298}
!1358 = !DILocation(line: 95, column: 9, scope: !1350)
!1359 = !DILocation(line: 95, column: 2, scope: !1350)
!1360 = distinct !DISubprogram(name: "do_write_seqcount_begin_nested", scope: !114, file: !114, line: 513, type: !1361, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !468, !89}
!1363 = !{!1364, !1365}
!1364 = !DILocalVariable(name: "s", arg: 1, scope: !1360, file: !114, line: 513, type: !468)
!1365 = !DILocalVariable(name: "subclass", arg: 2, scope: !1360, file: !114, line: 513, type: !89)
!1366 = !DILocation(line: 513, column: 63, scope: !1360)
!1367 = !DILocation(line: 513, column: 70, scope: !1360)
!1368 = !DILocation(line: 515, column: 2, scope: !1360)
!1369 = !DILocation(line: 515, column: 2, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !114, line: 515, column: 2)
!1371 = !DILocation(line: 516, column: 30, scope: !1360)
!1372 = !DILocation(line: 516, column: 2, scope: !1360)
!1373 = !DILocation(line: 517, column: 1, scope: !1360)
!1374 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !114, file: !114, line: 466, type: !1332, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1375)
!1375 = !{!1376}
!1376 = !DILocalVariable(name: "s", arg: 1, scope: !1374, file: !114, line: 466, type: !468)
!1377 = !DILocation(line: 466, column: 60, scope: !1374)
!1378 = !DILocation(line: 468, column: 2, scope: !1374)
!1379 = !DILocation(line: 469, column: 2, scope: !1374)
!1380 = !DILocation(line: 469, column: 5, scope: !1374)
!1381 = !DILocation(line: 469, column: 13, scope: !1374)
!1382 = !DILocation(line: 470, column: 2, scope: !1374)
!1383 = !DILocation(line: 470, column: 2, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !114, line: 470, column: 2)
!1385 = !DILocation(line: 470, column: 2, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1384, file: !114, line: 470, column: 2)
!1387 = !{i64 2150517072}
!1388 = !DILocation(line: 471, column: 1, scope: !1374)
!1389 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !923, file: !923, line: 199, type: !490, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1390 = !DILocation(line: 199, column: 56, scope: !1389)
!1391 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !114, file: !114, line: 487, type: !1332, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1392)
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "s", arg: 1, scope: !1391, file: !114, line: 487, type: !468)
!1394 = !DILocation(line: 487, column: 58, scope: !1391)
!1395 = !DILocation(line: 489, column: 2, scope: !1391)
!1396 = !DILocation(line: 489, column: 2, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !114, line: 489, column: 2)
!1398 = !DILocation(line: 489, column: 2, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !114, line: 489, column: 2)
!1400 = !{i64 2150517345}
!1401 = !DILocation(line: 490, column: 2, scope: !1391)
!1402 = !DILocation(line: 490, column: 5, scope: !1391)
!1403 = !DILocation(line: 490, column: 13, scope: !1391)
!1404 = !DILocation(line: 491, column: 2, scope: !1391)
!1405 = !DILocation(line: 492, column: 1, scope: !1391)
!1406 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !923, file: !923, line: 200, type: !490, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1407 = !DILocation(line: 200, column: 54, scope: !1406)
!1408 = !DISubprogram(name: "_raw_spin_unlock_bh", scope: !1233, file: !1233, line: 40, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1409 = distinct !DISubprogram(name: "kasan_check_write", scope: !1273, file: !1273, line: 44, type: !1274, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1410)
!1410 = !{!1411, !1412}
!1411 = !DILocalVariable(name: "p", arg: 1, scope: !1409, file: !1273, line: 44, type: !753)
!1412 = !DILocalVariable(name: "size", arg: 2, scope: !1409, file: !1273, line: 44, type: !7)
!1413 = !DILocation(line: 44, column: 59, scope: !1409)
!1414 = !DILocation(line: 44, column: 75, scope: !1409)
!1415 = !DILocation(line: 46, column: 2, scope: !1409)
!1416 = !DISubprogram(name: "__rcu_read_lock", scope: !887, file: !887, line: 74, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubprogram(name: "__rcu_read_unlock", scope: !887, file: !887, line: 75, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = distinct !DISubprogram(name: "rep_nop", scope: !919, file: !919, line: 11, type: !490, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1419 = !DILocation(line: 13, column: 2, scope: !1418)
!1420 = !{i64 2077635}
!1421 = !DILocation(line: 14, column: 1, scope: !1418)
!1422 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !114, file: !114, line: 426, type: !931, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1423 = !{!1424, !1425}
!1424 = !DILocalVariable(name: "s", arg: 1, scope: !1422, file: !114, line: 426, type: !908)
!1425 = !DILocalVariable(name: "start", arg: 2, scope: !1422, file: !114, line: 426, type: !7)
!1426 = !DILocation(line: 426, column: 62, scope: !1422)
!1427 = !DILocation(line: 426, column: 74, scope: !1422)
!1428 = !DILocation(line: 428, column: 2, scope: !1422)
!1429 = !DILocation(line: 429, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !114, line: 429, column: 9)
!1431 = !DILocation(line: 429, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1430, file: !114, line: 429, column: 9)
!1433 = !DILocation(line: 429, column: 9, scope: !1422)
!1434 = !DILocation(line: 429, column: 2, scope: !1422)
