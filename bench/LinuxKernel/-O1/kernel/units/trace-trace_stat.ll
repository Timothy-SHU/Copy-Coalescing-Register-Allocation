; ModuleID = 'kernel/trace/trace_stat.c'
source_filename = "kernel/trace/trace_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracer_stat = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat_session = type { %struct.list_head, ptr, %struct.rb_root, %struct.mutex, ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.22 = type { ptr }
%struct.file = type { %union.anon.23, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.24, %struct.qspinlock }
%union.anon.24 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.stat_node = type { %struct.rb_node, ptr }
%struct.rb_node = type { i64, ptr, ptr }

@all_stat_sessions_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @all_stat_sessions_mutex, i64 16), ptr getelementptr (i8, ptr @all_stat_sessions_mutex, i64 16) } }, align 8, !dbg !0
@all_stat_sessions = internal global %struct.list_head { ptr @all_stat_sessions, ptr @all_stat_sessions }, align 8, !dbg !6248
@register_stat_tracer.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6226
@.str = private unnamed_addr constant [21 x i8] c"&session->stat_mutex\00", align 1, !dbg !6243
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6250
@stat_dir = internal global ptr null, align 8, !dbg !6252
@tracing_stat_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @tracing_stat_open, ptr null, ptr @tracing_stat_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6264
@.str.2 = private unnamed_addr constant [11 x i8] c"trace_stat\00", align 1, !dbg !6254
@.str.3 = private unnamed_addr constant [47 x i8] c"\014Could not create tracefs 'trace_stat' entry\0A\00", align 1, !dbg !6259
@trace_stat_seq_ops = internal constant %struct.seq_operations { ptr @stat_seq_start, ptr @stat_seq_stop, ptr @stat_seq_next, ptr @stat_seq_show }, align 8, !dbg !6266

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_stat_tracer(ptr noundef %trace) #0 align 16 !dbg !6228 {
entry:
  %retval = alloca i32, align 4
  %trace.addr = alloca ptr, align 8
  %session = alloca ptr, align 8
  %node = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %trace, ptr %trace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace.addr, metadata !6232, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !6278
  call void @llvm.dbg.declare(metadata ptr %session, metadata !6233, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #15, !dbg !6278
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6234, metadata !DIExpression()), !dbg !6280
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6235, metadata !DIExpression()), !dbg !6282
  store i32 -22, ptr %ret, align 4, !dbg !6282
  %0 = load ptr, ptr %trace.addr, align 8, !dbg !6283
  %tobool = icmp ne ptr %0, null, !dbg !6283
  br i1 %tobool, label %if.end, label %if.then, !dbg !6285

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %trace.addr, align 8, !dbg !6287
  %stat_start = getelementptr inbounds %struct.tracer_stat, ptr %1, i32 0, i32 1, !dbg !6289
  %2 = load ptr, ptr %stat_start, align 8, !dbg !6289
  %tobool1 = icmp ne ptr %2, null, !dbg !6287
  br i1 %tobool1, label %lor.lhs.false, label %if.then5, !dbg !6290

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %trace.addr, align 8, !dbg !6291
  %stat_next = getelementptr inbounds %struct.tracer_stat, ptr %3, i32 0, i32 2, !dbg !6292
  %4 = load ptr, ptr %stat_next, align 8, !dbg !6292
  %tobool2 = icmp ne ptr %4, null, !dbg !6291
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5, !dbg !6293

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %trace.addr, align 8, !dbg !6294
  %stat_show = getelementptr inbounds %struct.tracer_stat, ptr %5, i32 0, i32 4, !dbg !6295
  %6 = load ptr, ptr %stat_show, align 8, !dbg !6295
  %tobool4 = icmp ne ptr %6, null, !dbg !6294
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6296

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6297

if.end6:                                          ; preds = %lor.lhs.false3
  call void @mutex_lock(ptr noundef @all_stat_sessions_mutex) #16, !dbg !6298
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6299
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6236, metadata !DIExpression()), !dbg !6299
  %7 = load ptr, ptr @all_stat_sessions, align 8, !dbg !6299
  store ptr %7, ptr %__mptr, align 8, !dbg !6299
  %8 = load ptr, ptr %__mptr, align 8, !dbg !6299
  %add.ptr = getelementptr i8, ptr %8, i64 0, !dbg !6299
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6300
  %9 = load ptr, ptr %tmp, align 8, !dbg !6299
  store ptr %9, ptr %node, align 8, !dbg !6300
  br label %for.cond, !dbg !6300

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load ptr, ptr %node, align 8, !dbg !6301
  %session_list = getelementptr inbounds %struct.stat_session, ptr %10, i32 0, i32 0, !dbg !6301
  %cmp = icmp eq ptr %session_list, @all_stat_sessions, !dbg !6301
  %lnot = xor i1 %cmp, true, !dbg !6301
  br i1 %lnot, label %for.body, label %for.end, !dbg !6300

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %node, align 8, !dbg !6302
  %ts = getelementptr inbounds %struct.stat_session, ptr %11, i32 0, i32 1, !dbg !6305
  %12 = load ptr, ptr %ts, align 8, !dbg !6305
  %13 = load ptr, ptr %trace.addr, align 8, !dbg !6306
  %cmp7 = icmp eq ptr %12, %13, !dbg !6307
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6308

if.then8:                                         ; preds = %for.body
  br label %out, !dbg !6309

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !6310

for.inc:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #15, !dbg !6311
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !6239, metadata !DIExpression()), !dbg !6311
  %14 = load ptr, ptr %node, align 8, !dbg !6311
  %session_list11 = getelementptr inbounds %struct.stat_session, ptr %14, i32 0, i32 0, !dbg !6311
  %next = getelementptr inbounds %struct.list_head, ptr %session_list11, i32 0, i32 0, !dbg !6311
  %15 = load ptr, ptr %next, align 8, !dbg !6311
  store ptr %15, ptr %__mptr10, align 8, !dbg !6311
  %16 = load ptr, ptr %__mptr10, align 8, !dbg !6311
  %add.ptr13 = getelementptr i8, ptr %16, i64 0, !dbg !6311
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !6311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #15, !dbg !6301
  %17 = load ptr, ptr %tmp12, align 8, !dbg !6311
  store ptr %17, ptr %node, align 8, !dbg !6301
  br label %for.cond, !dbg !6301, !llvm.loop !6312

for.end:                                          ; preds = %for.cond
  store i32 -12, ptr %ret, align 4, !dbg !6316
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #17, !dbg !6317
  store ptr %call, ptr %session, align 8, !dbg !6318
  %18 = load ptr, ptr %session, align 8, !dbg !6319
  %tobool14 = icmp ne ptr %18, null, !dbg !6319
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !6321

if.then15:                                        ; preds = %for.end
  br label %out, !dbg !6322

if.end16:                                         ; preds = %for.end
  %19 = load ptr, ptr %trace.addr, align 8, !dbg !6323
  %20 = load ptr, ptr %session, align 8, !dbg !6324
  %ts17 = getelementptr inbounds %struct.stat_session, ptr %20, i32 0, i32 1, !dbg !6325
  store ptr %19, ptr %ts17, align 8, !dbg !6326
  %21 = load ptr, ptr %session, align 8, !dbg !6327
  %session_list18 = getelementptr inbounds %struct.stat_session, ptr %21, i32 0, i32 0, !dbg !6328
  call void @INIT_LIST_HEAD(ptr noundef %session_list18) #16, !dbg !6329
  br label %do.body, !dbg !6330

do.body:                                          ; preds = %if.end16
  %22 = load ptr, ptr %session, align 8, !dbg !6331
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %22, i32 0, i32 3, !dbg !6331
  call void @__mutex_init(ptr noundef %stat_mutex, ptr noundef @.str, ptr noundef @register_stat_tracer.__key) #16, !dbg !6331
  br label %do.cond, !dbg !6331

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6331

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %session, align 8, !dbg !6333
  %call19 = call i32 @init_stat_file(ptr noundef %23) #16, !dbg !6334
  store i32 %call19, ptr %ret, align 4, !dbg !6335
  %24 = load i32, ptr %ret, align 4, !dbg !6336
  %tobool20 = icmp ne i32 %24, 0, !dbg !6336
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6338

if.then21:                                        ; preds = %do.end
  %25 = load ptr, ptr %session, align 8, !dbg !6339
  call void @destroy_session(ptr noundef %25) #16, !dbg !6341
  br label %out, !dbg !6342

if.end22:                                         ; preds = %do.end
  store i32 0, ptr %ret, align 4, !dbg !6343
  %26 = load ptr, ptr %session, align 8, !dbg !6344
  %session_list23 = getelementptr inbounds %struct.stat_session, ptr %26, i32 0, i32 0, !dbg !6345
  call void @list_add_tail(ptr noundef %session_list23, ptr noundef @all_stat_sessions) #16, !dbg !6346
  br label %out, !dbg !6346

out:                                              ; preds = %if.end22, %if.then21, %if.then15, %if.then8
  call void @llvm.dbg.label(metadata !6242), !dbg !6347
  call void @mutex_unlock(ptr noundef @all_stat_sessions_mutex) #16, !dbg !6348
  %27 = load i32, ptr %ret, align 4, !dbg !6349
  store i32 %27, ptr %retval, align 4, !dbg !6350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6350

cleanup:                                          ; preds = %out, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #15, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !6351
  %28 = load i32, ptr %retval, align 4, !dbg !6351
  ret i32 %28, !dbg !6351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6352 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !6356 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6360, metadata !DIExpression()), !dbg !6362
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6361, metadata !DIExpression()), !dbg !6363
  %0 = load i64, ptr %size.addr, align 8, !dbg !6364
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6365
  %or = or i32 %1, 256, !dbg !6366
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !6367
  ret ptr %call, !dbg !6368
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !6369 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6374, metadata !DIExpression()), !dbg !6375
  br label %do.body, !dbg !6376

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6377

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6379

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6377

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6381
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6381
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6381
  store volatile ptr %0, ptr %next, align 8, !dbg !6381
  br label %do.end3, !dbg !6381

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6377

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6383

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6384

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6386

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6384

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6388
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6388
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6388
  store volatile ptr %2, ptr %prev, align 8, !dbg !6388
  br label %do.end9, !dbg !6388

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6384

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6391 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @init_stat_file(ptr noundef %session) #0 align 16 !dbg !6395 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session.addr, metadata !6399, metadata !DIExpression()), !dbg !6401
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6400, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr @stat_dir, align 8, !dbg !6404
  %tobool = icmp ne ptr %0, null, !dbg !6404
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6406

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @tracing_stat_init() #16, !dbg !6407
  store i32 %call, ptr %ret, align 4, !dbg !6408
  %tobool1 = icmp ne i32 %call, 0, !dbg !6408
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6409

if.then:                                          ; preds = %land.lhs.true
  %1 = load i32, ptr %ret, align 4, !dbg !6410
  store i32 %1, ptr %retval, align 4, !dbg !6411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6411

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %session.addr, align 8, !dbg !6412
  %ts = getelementptr inbounds %struct.stat_session, ptr %2, i32 0, i32 1, !dbg !6413
  %3 = load ptr, ptr %ts, align 8, !dbg !6413
  %name = getelementptr inbounds %struct.tracer_stat, ptr %3, i32 0, i32 0, !dbg !6414
  %4 = load ptr, ptr %name, align 8, !dbg !6414
  %5 = load ptr, ptr @stat_dir, align 8, !dbg !6415
  %6 = load ptr, ptr %session.addr, align 8, !dbg !6416
  %call2 = call ptr @tracefs_create_file(ptr noundef %4, i16 noundef zeroext 416, ptr noundef %5, ptr noundef %6, ptr noundef @tracing_stat_fops) #16, !dbg !6417
  %7 = load ptr, ptr %session.addr, align 8, !dbg !6418
  %file = getelementptr inbounds %struct.stat_session, ptr %7, i32 0, i32 4, !dbg !6419
  store ptr %call2, ptr %file, align 8, !dbg !6420
  %8 = load ptr, ptr %session.addr, align 8, !dbg !6421
  %file3 = getelementptr inbounds %struct.stat_session, ptr %8, i32 0, i32 4, !dbg !6423
  %9 = load ptr, ptr %file3, align 8, !dbg !6423
  %tobool4 = icmp ne ptr %9, null, !dbg !6421
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6424

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6426

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6427
  %10 = load i32, ptr %retval, align 4, !dbg !6427
  ret i32 %10, !dbg !6427
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_session(ptr noundef %session) #0 align 16 !dbg !6428 {
entry:
  %session.addr = alloca ptr, align 8
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session.addr, metadata !6432, metadata !DIExpression()), !dbg !6433
  %0 = load ptr, ptr %session.addr, align 8, !dbg !6434
  %file = getelementptr inbounds %struct.stat_session, ptr %0, i32 0, i32 4, !dbg !6435
  %1 = load ptr, ptr %file, align 8, !dbg !6435
  call void @tracefs_remove(ptr noundef %1) #16, !dbg !6436
  %2 = load ptr, ptr %session.addr, align 8, !dbg !6437
  call void @__reset_stat_session(ptr noundef %2) #16, !dbg !6438
  %3 = load ptr, ptr %session.addr, align 8, !dbg !6439
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %3, i32 0, i32 3, !dbg !6440
  call void @mutex_destroy(ptr noundef %stat_mutex) #16, !dbg !6441
  %4 = load ptr, ptr %session.addr, align 8, !dbg !6442
  call void @kfree(ptr noundef %4) #16, !dbg !6443
  ret void, !dbg !6444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6445 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6450, metadata !DIExpression()), !dbg !6452
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6453
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6454
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6455
  %2 = load ptr, ptr %prev, align 8, !dbg !6455
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6456
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !6457
  ret void, !dbg !6458
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6459 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_stat_tracer(ptr noundef %trace) #0 align 16 !dbg !6460 {
entry:
  %trace.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %trace, ptr %trace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace.addr, metadata !6464, metadata !DIExpression()), !dbg !6475
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #15, !dbg !6476
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6465, metadata !DIExpression()), !dbg !6477
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !6476
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6466, metadata !DIExpression()), !dbg !6478
  call void @mutex_lock(ptr noundef @all_stat_sessions_mutex) #16, !dbg !6479
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6480
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6467, metadata !DIExpression()), !dbg !6480
  %0 = load ptr, ptr @all_stat_sessions, align 8, !dbg !6480
  store ptr %0, ptr %__mptr, align 8, !dbg !6480
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6480
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6480
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !6480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6481
  %2 = load ptr, ptr %tmp1, align 8, !dbg !6480
  store ptr %2, ptr %node, align 8, !dbg !6481
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6470, metadata !DIExpression()), !dbg !6482
  %3 = load ptr, ptr %node, align 8, !dbg !6482
  %session_list = getelementptr inbounds %struct.stat_session, ptr %3, i32 0, i32 0, !dbg !6482
  %next = getelementptr inbounds %struct.list_head, ptr %session_list, i32 0, i32 0, !dbg !6482
  %4 = load ptr, ptr %next, align 8, !dbg !6482
  store ptr %4, ptr %__mptr2, align 8, !dbg !6482
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !6482
  %add.ptr4 = getelementptr i8, ptr %5, i64 0, !dbg !6482
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !6482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !6481
  %6 = load ptr, ptr %tmp3, align 8, !dbg !6482
  store ptr %6, ptr %tmp, align 8, !dbg !6481
  br label %for.cond, !dbg !6481

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %node, align 8, !dbg !6483
  %session_list5 = getelementptr inbounds %struct.stat_session, ptr %7, i32 0, i32 0, !dbg !6483
  %cmp = icmp eq ptr %session_list5, @all_stat_sessions, !dbg !6483
  %lnot = xor i1 %cmp, true, !dbg !6483
  br i1 %lnot, label %for.body, label %for.end, !dbg !6481

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %node, align 8, !dbg !6484
  %ts = getelementptr inbounds %struct.stat_session, ptr %8, i32 0, i32 1, !dbg !6487
  %9 = load ptr, ptr %ts, align 8, !dbg !6487
  %10 = load ptr, ptr %trace.addr, align 8, !dbg !6488
  %cmp6 = icmp eq ptr %9, %10, !dbg !6489
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6490

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %node, align 8, !dbg !6491
  %session_list7 = getelementptr inbounds %struct.stat_session, ptr %11, i32 0, i32 0, !dbg !6493
  call void @list_del(ptr noundef %session_list7) #16, !dbg !6494
  %12 = load ptr, ptr %node, align 8, !dbg !6495
  call void @destroy_session(ptr noundef %12) #16, !dbg !6496
  br label %for.end, !dbg !6497

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6498

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %tmp, align 8, !dbg !6483
  store ptr %13, ptr %node, align 8, !dbg !6483
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #15, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !6472, metadata !DIExpression()), !dbg !6499
  %14 = load ptr, ptr %tmp, align 8, !dbg !6499
  %session_list9 = getelementptr inbounds %struct.stat_session, ptr %14, i32 0, i32 0, !dbg !6499
  %next10 = getelementptr inbounds %struct.list_head, ptr %session_list9, i32 0, i32 0, !dbg !6499
  %15 = load ptr, ptr %next10, align 8, !dbg !6499
  store ptr %15, ptr %__mptr8, align 8, !dbg !6499
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !6499
  %add.ptr12 = getelementptr i8, ptr %16, i64 0, !dbg !6499
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #15, !dbg !6483
  %17 = load ptr, ptr %tmp11, align 8, !dbg !6499
  store ptr %17, ptr %tmp, align 8, !dbg !6483
  br label %for.cond, !dbg !6483, !llvm.loop !6500

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @all_stat_sessions_mutex) #16, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #15, !dbg !6503
  ret void, !dbg !6503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !6504 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6508
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !6509
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6510
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6511
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6512
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6513
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6514
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6515
  ret void, !dbg !6516
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6517 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6519, metadata !DIExpression()), !dbg !6524
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6520, metadata !DIExpression()), !dbg !6525
  %0 = load i64, ptr %size.addr, align 8, !dbg !6526
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6527
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6528

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6529
  %tobool = icmp ne i64 %2, 0, !dbg !6529
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6530

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6521, metadata !DIExpression()), !dbg !6532
  %3 = load i64, ptr %size.addr, align 8, !dbg !6533
  %cmp = icmp ugt i64 %3, 8192, !dbg !6535
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6536

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6537
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6538
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6539
  store ptr %call, ptr %retval, align 8, !dbg !6540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6540

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6541
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6541
  store i32 %call2, ptr %index, align 4, !dbg !6542
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6543
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6544
  %9 = ptrtoint ptr %8 to i64, !dbg !6544
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6545
  %idxprom = zext i32 %call3 to i64, !dbg !6546
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6546
  %10 = load i32, ptr %index, align 4, !dbg !6547
  %idxprom4 = zext i32 %10 to i64, !dbg !6546
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6546
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6546
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6548
  %13 = load i64, ptr %size.addr, align 8, !dbg !6549
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6550
  store ptr %call6, ptr %retval, align 8, !dbg !6551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6551

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6552
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6553
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6554
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6555
  store ptr %call8, ptr %retval, align 8, !dbg !6556
  br label %return, !dbg !6556

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6557
  ret ptr %16, !dbg !6557
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6558 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !6559 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6563, metadata !DIExpression()), !dbg !6565
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6564, metadata !DIExpression()), !dbg !6566
  %0 = load i64, ptr %size.addr, align 8, !dbg !6567
  %tobool = icmp ne i64 %0, 0, !dbg !6567
  br i1 %tobool, label %if.end, label %if.then, !dbg !6569

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6570
  br label %return, !dbg !6570

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6571
  %cmp = icmp ule i64 %1, 8, !dbg !6573
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6574

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6575
  br label %return, !dbg !6575

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6576
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6578
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6579

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6580
  %cmp4 = icmp ule i64 %3, 96, !dbg !6581
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6582

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6583
  br label %return, !dbg !6583

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6584
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6586
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6587

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6588
  %cmp9 = icmp ule i64 %5, 192, !dbg !6589
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6590

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6591
  br label %return, !dbg !6591

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6592
  %cmp12 = icmp ule i64 %6, 8, !dbg !6594
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6595

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6596
  br label %return, !dbg !6596

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6597
  %cmp15 = icmp ule i64 %7, 16, !dbg !6599
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6600

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6602
  %cmp18 = icmp ule i64 %8, 32, !dbg !6604
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6605

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6606
  br label %return, !dbg !6606

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6607
  %cmp21 = icmp ule i64 %9, 64, !dbg !6609
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6610

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6611
  br label %return, !dbg !6611

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6612
  %cmp24 = icmp ule i64 %10, 128, !dbg !6614
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6615

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6616
  br label %return, !dbg !6616

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6617
  %cmp27 = icmp ule i64 %11, 256, !dbg !6619
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6620

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6621
  br label %return, !dbg !6621

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6622
  %cmp30 = icmp ule i64 %12, 512, !dbg !6624
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6625

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6626
  br label %return, !dbg !6626

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6627
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6629
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6630

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6631
  br label %return, !dbg !6631

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6632
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6634
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6635

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6636
  br label %return, !dbg !6636

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6637
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6639
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6640

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6641
  br label %return, !dbg !6641

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6642
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6644
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6645

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6646
  br label %return, !dbg !6646

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6647
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6649
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6650

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6652
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6654
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6655

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6657
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6659
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6660

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6662
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6664
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6665

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6666
  br label %return, !dbg !6666

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6667
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6669
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6670

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6671
  br label %return, !dbg !6671

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6672
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6674
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6675

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6677
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6679
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6680

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6684
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6685

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6686
  br label %return, !dbg !6686

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6687, !range !6689, !noundef !836
  %tobool69 = trunc i8 %25 to i1, !dbg !6687
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6690

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6691

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !6692, !srcloc !6695
  unreachable, !dbg !6692

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6696

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6697

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6698

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6700

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6698

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !6702, !srcloc !6704
  br label %do.end75, !dbg !6702

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6698

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6705
  br label %return, !dbg !6705

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6706
  ret i32 %26, !dbg !6706
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6707 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !6710 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6714, metadata !DIExpression()), !dbg !6716
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6715, metadata !DIExpression()), !dbg !6717
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6718
  %and = and i32 %0, 17, !dbg !6718
  %cmp = icmp eq i32 %and, 0, !dbg !6718
  %lnot = xor i1 %cmp, true, !dbg !6718
  %lnot1 = xor i1 %lnot, true, !dbg !6718
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6718
  %conv = sext i32 %lnot.ext to i64, !dbg !6718
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6718
  %tobool = icmp ne i64 %expval, 0, !dbg !6718
  br i1 %tobool, label %if.then, label %if.end, !dbg !6720

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6721
  br label %return, !dbg !6721

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6722
  %and2 = and i32 %1, 1, !dbg !6724
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6724
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6725

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6726
  br label %return, !dbg !6726

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6727
  br label %return, !dbg !6727

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6729
  ret i32 %2, !dbg !6729
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6730 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6731 dso_local void @__compiletime_assert_245() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracing_stat_init() #0 align 16 !dbg !6732 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6735
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6734, metadata !DIExpression()), !dbg !6736
  %call = call i32 @tracing_init_dentry() #16, !dbg !6737
  store i32 %call, ptr %ret, align 4, !dbg !6738
  %0 = load i32, ptr %ret, align 4, !dbg !6739
  %tobool = icmp ne i32 %0, 0, !dbg !6739
  br i1 %tobool, label %if.then, label %if.end, !dbg !6741

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6742

if.end:                                           ; preds = %entry
  %call1 = call ptr @tracefs_create_dir(ptr noundef @.str.2, ptr noundef null) #16, !dbg !6743
  store ptr %call1, ptr @stat_dir, align 8, !dbg !6744
  %1 = load ptr, ptr @stat_dir, align 8, !dbg !6745
  %tobool2 = icmp ne ptr %1, null, !dbg !6745
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6747

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !6748

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6751

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6751

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #20, !dbg !6748
  store i32 %call4, ptr %tmp, align 4, !dbg !6751
  %2 = load i32, ptr %tmp, align 4, !dbg !6748
  store i32 -12, ptr %retval, align 4, !dbg !6753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6753

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6754

cleanup:                                          ; preds = %if.end5, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6755
  %3 = load i32, ptr %retval, align 4, !dbg !6755
  ret i32 %3, !dbg !6755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6759 dso_local i32 @tracing_init_dentry() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6760 dso_local ptr @tracefs_create_dir(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6763 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracing_stat_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6767 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %m = alloca ptr, align 8
  %session = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6769, metadata !DIExpression()), !dbg !6774
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6770, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6771, metadata !DIExpression()), !dbg !6777
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #15, !dbg !6778
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6772, metadata !DIExpression()), !dbg !6779
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !6780
  call void @llvm.dbg.declare(metadata ptr %session, metadata !6773, metadata !DIExpression()), !dbg !6781
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6782
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6783
  %1 = load ptr, ptr %i_private, align 8, !dbg !6783
  store ptr %1, ptr %session, align 8, !dbg !6781
  %call = call i32 @security_locked_down(i32 noundef 26) #16, !dbg !6784
  store i32 %call, ptr %ret, align 4, !dbg !6785
  %2 = load i32, ptr %ret, align 4, !dbg !6786
  %tobool = icmp ne i32 %2, 0, !dbg !6786
  br i1 %tobool, label %if.then, label %if.end, !dbg !6788

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6789
  store i32 %3, ptr %retval, align 4, !dbg !6790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6790

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %session, align 8, !dbg !6791
  %call1 = call i32 @stat_seq_init(ptr noundef %4) #16, !dbg !6792
  store i32 %call1, ptr %ret, align 4, !dbg !6793
  %5 = load i32, ptr %ret, align 4, !dbg !6794
  %tobool2 = icmp ne i32 %5, 0, !dbg !6794
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6796

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !6797
  store i32 %6, ptr %retval, align 4, !dbg !6798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6798

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6799
  %call5 = call i32 @seq_open(ptr noundef %7, ptr noundef @trace_stat_seq_ops) #16, !dbg !6800
  store i32 %call5, ptr %ret, align 4, !dbg !6801
  %8 = load i32, ptr %ret, align 4, !dbg !6802
  %tobool6 = icmp ne i32 %8, 0, !dbg !6802
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6804

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %session, align 8, !dbg !6805
  call void @reset_stat_session(ptr noundef %9) #16, !dbg !6807
  %10 = load i32, ptr %ret, align 4, !dbg !6808
  store i32 %10, ptr %retval, align 4, !dbg !6809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6809

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %file.addr, align 8, !dbg !6810
  %private_data = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 15, !dbg !6811
  %12 = load ptr, ptr %private_data, align 8, !dbg !6811
  store ptr %12, ptr %m, align 8, !dbg !6812
  %13 = load ptr, ptr %session, align 8, !dbg !6813
  %14 = load ptr, ptr %m, align 8, !dbg !6814
  %private = getelementptr inbounds %struct.seq_file, ptr %14, i32 0, i32 11, !dbg !6815
  store ptr %13, ptr %private, align 8, !dbg !6816
  %15 = load i32, ptr %ret, align 4, !dbg !6817
  store i32 %15, ptr %retval, align 4, !dbg !6818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6818

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !6819
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #15, !dbg !6819
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6819
  %16 = load i32, ptr %retval, align 4, !dbg !6819
  ret i32 %16, !dbg !6819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracing_stat_release(ptr noundef %i, ptr noundef %f) #0 align 16 !dbg !6820 {
entry:
  %i.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %session = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6822, metadata !DIExpression()), !dbg !6825
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6823, metadata !DIExpression()), !dbg !6826
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !6827
  call void @llvm.dbg.declare(metadata ptr %session, metadata !6824, metadata !DIExpression()), !dbg !6828
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6829
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6830
  %1 = load ptr, ptr %i_private, align 8, !dbg !6830
  store ptr %1, ptr %session, align 8, !dbg !6828
  %2 = load ptr, ptr %session, align 8, !dbg !6831
  call void @reset_stat_session(ptr noundef %2) #16, !dbg !6832
  %3 = load ptr, ptr %i.addr, align 8, !dbg !6833
  %4 = load ptr, ptr %f.addr, align 8, !dbg !6834
  %call = call i32 @seq_release(ptr noundef %3, ptr noundef %4) #16, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !6836
  ret i32 %call, !dbg !6837
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6838 dso_local i32 @security_locked_down(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stat_seq_init(ptr noundef %session) #0 align 16 !dbg !6841 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %ts = alloca ptr, align 8
  %root = alloca ptr, align 8
  %stat = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session.addr, metadata !6843, metadata !DIExpression()), !dbg !6852
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #15, !dbg !6853
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6844, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr %session.addr, align 8, !dbg !6855
  %ts1 = getelementptr inbounds %struct.stat_session, ptr %0, i32 0, i32 1, !dbg !6856
  %1 = load ptr, ptr %ts1, align 8, !dbg !6856
  store ptr %1, ptr %ts, align 8, !dbg !6854
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #15, !dbg !6857
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6845, metadata !DIExpression()), !dbg !6858
  %2 = load ptr, ptr %session.addr, align 8, !dbg !6859
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %2, i32 0, i32 2, !dbg !6860
  store ptr %stat_root, ptr %root, align 8, !dbg !6858
  call void @llvm.lifetime.start.p0(i64 8, ptr %stat) #15, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %stat, metadata !6847, metadata !DIExpression()), !dbg !6862
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6863
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6848, metadata !DIExpression()), !dbg !6864
  store i32 0, ptr %ret, align 4, !dbg !6864
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6865
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6849, metadata !DIExpression()), !dbg !6866
  %3 = load ptr, ptr %session.addr, align 8, !dbg !6867
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %3, i32 0, i32 3, !dbg !6868
  call void @mutex_lock(ptr noundef %stat_mutex) #16, !dbg !6869
  %4 = load ptr, ptr %session.addr, align 8, !dbg !6870
  call void @__reset_stat_session(ptr noundef %4) #16, !dbg !6871
  %5 = load ptr, ptr %ts, align 8, !dbg !6872
  %stat_cmp = getelementptr inbounds %struct.tracer_stat, ptr %5, i32 0, i32 3, !dbg !6874
  %6 = load ptr, ptr %stat_cmp, align 8, !dbg !6874
  %tobool = icmp ne ptr %6, null, !dbg !6872
  br i1 %tobool, label %if.end, label %if.then, !dbg !6875

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %ts, align 8, !dbg !6876
  %stat_cmp2 = getelementptr inbounds %struct.tracer_stat, ptr %7, i32 0, i32 3, !dbg !6877
  store ptr @dummy_cmp, ptr %stat_cmp2, align 8, !dbg !6878
  br label %if.end, !dbg !6876

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %ts, align 8, !dbg !6879
  %stat_start = getelementptr inbounds %struct.tracer_stat, ptr %8, i32 0, i32 1, !dbg !6880
  %9 = load ptr, ptr %stat_start, align 8, !dbg !6880
  %10 = load ptr, ptr %ts, align 8, !dbg !6881
  %call = call ptr %9(ptr noundef %10) #16, !dbg !6879
  store ptr %call, ptr %stat, align 8, !dbg !6882
  %11 = load ptr, ptr %stat, align 8, !dbg !6883
  %tobool3 = icmp ne ptr %11, null, !dbg !6883
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6885

if.then4:                                         ; preds = %if.end
  br label %exit, !dbg !6886

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %root, align 8, !dbg !6887
  %13 = load ptr, ptr %stat, align 8, !dbg !6888
  %14 = load ptr, ptr %ts, align 8, !dbg !6889
  %stat_cmp6 = getelementptr inbounds %struct.tracer_stat, ptr %14, i32 0, i32 3, !dbg !6890
  %15 = load ptr, ptr %stat_cmp6, align 8, !dbg !6890
  %call7 = call i32 @insert_stat(ptr noundef %12, ptr noundef %13, ptr noundef %15) #16, !dbg !6891
  store i32 %call7, ptr %ret, align 4, !dbg !6892
  %16 = load i32, ptr %ret, align 4, !dbg !6893
  %tobool8 = icmp ne i32 %16, 0, !dbg !6893
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6895

if.then9:                                         ; preds = %if.end5
  br label %exit, !dbg !6896

if.end10:                                         ; preds = %if.end5
  store i32 1, ptr %i, align 4, !dbg !6897
  br label %for.cond, !dbg !6899

for.cond:                                         ; preds = %for.inc, %if.end10
  %17 = load ptr, ptr %ts, align 8, !dbg !6900
  %stat_next = getelementptr inbounds %struct.tracer_stat, ptr %17, i32 0, i32 2, !dbg !6903
  %18 = load ptr, ptr %stat_next, align 8, !dbg !6903
  %19 = load ptr, ptr %stat, align 8, !dbg !6904
  %20 = load i32, ptr %i, align 4, !dbg !6905
  %call11 = call ptr %18(ptr noundef %19, i32 noundef %20) #16, !dbg !6900
  store ptr %call11, ptr %stat, align 8, !dbg !6906
  %21 = load ptr, ptr %stat, align 8, !dbg !6907
  %tobool12 = icmp ne ptr %21, null, !dbg !6907
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6909

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !6910

if.end14:                                         ; preds = %for.cond
  %22 = load ptr, ptr %root, align 8, !dbg !6911
  %23 = load ptr, ptr %stat, align 8, !dbg !6912
  %24 = load ptr, ptr %ts, align 8, !dbg !6913
  %stat_cmp15 = getelementptr inbounds %struct.tracer_stat, ptr %24, i32 0, i32 3, !dbg !6914
  %25 = load ptr, ptr %stat_cmp15, align 8, !dbg !6914
  %call16 = call i32 @insert_stat(ptr noundef %22, ptr noundef %23, ptr noundef %25) #16, !dbg !6915
  store i32 %call16, ptr %ret, align 4, !dbg !6916
  %26 = load i32, ptr %ret, align 4, !dbg !6917
  %tobool17 = icmp ne i32 %26, 0, !dbg !6917
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6919

if.then18:                                        ; preds = %if.end14
  br label %exit_free_rbtree, !dbg !6920

if.end19:                                         ; preds = %if.end14
  br label %for.inc, !dbg !6921

for.inc:                                          ; preds = %if.end19
  %27 = load i32, ptr %i, align 4, !dbg !6922
  %inc = add i32 %27, 1, !dbg !6922
  store i32 %inc, ptr %i, align 4, !dbg !6922
  br label %for.cond, !dbg !6923, !llvm.loop !6924

for.end:                                          ; preds = %if.then13
  br label %exit, !dbg !6926

exit:                                             ; preds = %for.end, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !6850), !dbg !6927
  %28 = load ptr, ptr %session.addr, align 8, !dbg !6928
  %stat_mutex20 = getelementptr inbounds %struct.stat_session, ptr %28, i32 0, i32 3, !dbg !6929
  call void @mutex_unlock(ptr noundef %stat_mutex20) #16, !dbg !6930
  %29 = load i32, ptr %ret, align 4, !dbg !6931
  store i32 %29, ptr %retval, align 4, !dbg !6932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6932

exit_free_rbtree:                                 ; preds = %if.then18
  call void @llvm.dbg.label(metadata !6851), !dbg !6933
  %30 = load ptr, ptr %session.addr, align 8, !dbg !6934
  call void @__reset_stat_session(ptr noundef %30) #16, !dbg !6935
  %31 = load ptr, ptr %session.addr, align 8, !dbg !6936
  %stat_mutex21 = getelementptr inbounds %struct.stat_session, ptr %31, i32 0, i32 3, !dbg !6937
  call void @mutex_unlock(ptr noundef %stat_mutex21) #16, !dbg !6938
  %32 = load i32, ptr %ret, align 4, !dbg !6939
  store i32 %32, ptr %retval, align 4, !dbg !6940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6940

cleanup:                                          ; preds = %exit_free_rbtree, %exit
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %stat) #15, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #15, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #15, !dbg !6941
  %33 = load i32, ptr %retval, align 4, !dbg !6941
  ret i32 %33, !dbg !6941
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6942 dso_local i32 @seq_open(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reset_stat_session(ptr noundef %session) #0 align 16 !dbg !6945 {
entry:
  %session.addr = alloca ptr, align 8
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session.addr, metadata !6947, metadata !DIExpression()), !dbg !6948
  %0 = load ptr, ptr %session.addr, align 8, !dbg !6949
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %0, i32 0, i32 3, !dbg !6950
  call void @mutex_lock(ptr noundef %stat_mutex) #16, !dbg !6951
  %1 = load ptr, ptr %session.addr, align 8, !dbg !6952
  call void @__reset_stat_session(ptr noundef %1) #16, !dbg !6953
  %2 = load ptr, ptr %session.addr, align 8, !dbg !6954
  %stat_mutex1 = getelementptr inbounds %struct.stat_session, ptr %2, i32 0, i32 3, !dbg !6955
  call void @mutex_unlock(ptr noundef %stat_mutex1) #16, !dbg !6956
  ret void, !dbg !6957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__reset_stat_session(ptr noundef %session) #0 align 16 !dbg !6958 {
entry:
  %session.addr = alloca ptr, align 8
  %snode = alloca ptr, align 8
  %n = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %____ptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp14 = alloca i32, align 4
  %.compoundliteral = alloca %struct.rb_root, align 8
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session.addr, metadata !6960, metadata !DIExpression()), !dbg !6974
  call void @llvm.lifetime.start.p0(i64 8, ptr %snode) #15, !dbg !6975
  call void @llvm.dbg.declare(metadata ptr %snode, metadata !6961, metadata !DIExpression()), !dbg !6976
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !6975
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6962, metadata !DIExpression()), !dbg !6977
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #15, !dbg !6978
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !6963, metadata !DIExpression()), !dbg !6978
  %0 = load ptr, ptr %session.addr, align 8, !dbg !6978
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %0, i32 0, i32 2, !dbg !6978
  %call = call ptr @rb_first_postorder(ptr noundef %stat_root) #16, !dbg !6978
  store ptr %call, ptr %____ptr, align 8, !dbg !6978
  %1 = load ptr, ptr %____ptr, align 8, !dbg !6978
  %tobool = icmp ne ptr %1, null, !dbg !6978
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6978

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6979
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6966, metadata !DIExpression()), !dbg !6979
  %2 = load ptr, ptr %____ptr, align 8, !dbg !6979
  store ptr %2, ptr %__mptr, align 8, !dbg !6979
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6979
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !6979
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !6979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6978
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6979
  br label %cond.end, !dbg !6978

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !6978
  store ptr %cond, ptr %tmp, align 8, !dbg !6978
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #15, !dbg !6980
  %5 = load ptr, ptr %tmp, align 8, !dbg !6978
  store ptr %5, ptr %snode, align 8, !dbg !6980
  br label %for.cond, !dbg !6980

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load ptr, ptr %snode, align 8, !dbg !6981
  %tobool2 = icmp ne ptr %6, null, !dbg !6981
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !6981

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr3) #15, !dbg !6982
  call void @llvm.dbg.declare(metadata ptr %____ptr3, metadata !6968, metadata !DIExpression()), !dbg !6982
  %7 = load ptr, ptr %snode, align 8, !dbg !6982
  %node = getelementptr inbounds %struct.stat_node, ptr %7, i32 0, i32 0, !dbg !6982
  %call4 = call ptr @rb_next_postorder(ptr noundef %node) #16, !dbg !6982
  store ptr %call4, ptr %____ptr3, align 8, !dbg !6982
  %8 = load ptr, ptr %____ptr3, align 8, !dbg !6982
  %tobool6 = icmp ne ptr %8, null, !dbg !6982
  br i1 %tobool6, label %cond.true7, label %cond.false11, !dbg !6982

cond.true7:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #15, !dbg !6983
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !6972, metadata !DIExpression()), !dbg !6983
  %9 = load ptr, ptr %____ptr3, align 8, !dbg !6983
  store ptr %9, ptr %__mptr8, align 8, !dbg !6983
  %10 = load ptr, ptr %__mptr8, align 8, !dbg !6983
  %add.ptr10 = getelementptr i8, ptr %10, i64 0, !dbg !6983
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !6983
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #15, !dbg !6982
  %11 = load ptr, ptr %tmp9, align 8, !dbg !6983
  br label %cond.end12, !dbg !6982

cond.false11:                                     ; preds = %land.rhs
  br label %cond.end12, !dbg !6982

cond.end12:                                       ; preds = %cond.false11, %cond.true7
  %cond13 = phi ptr [ %11, %cond.true7 ], [ null, %cond.false11 ], !dbg !6982
  store ptr %cond13, ptr %tmp5, align 8, !dbg !6982
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr3) #15, !dbg !6984
  %12 = load ptr, ptr %tmp5, align 8, !dbg !6982
  store ptr %12, ptr %n, align 8, !dbg !6984
  store i32 1, ptr %tmp14, align 4, !dbg !6984
  %13 = load i32, ptr %tmp14, align 4, !dbg !6984
  %tobool15 = icmp ne i32 %13, 0, !dbg !6981
  br label %land.end

land.end:                                         ; preds = %cond.end12, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool15, %cond.end12 ], !dbg !6985
  br i1 %14, label %for.body, label %for.end, !dbg !6980

for.body:                                         ; preds = %land.end
  %15 = load ptr, ptr %session.addr, align 8, !dbg !6986
  %ts = getelementptr inbounds %struct.stat_session, ptr %15, i32 0, i32 1, !dbg !6989
  %16 = load ptr, ptr %ts, align 8, !dbg !6989
  %stat_release = getelementptr inbounds %struct.tracer_stat, ptr %16, i32 0, i32 5, !dbg !6990
  %17 = load ptr, ptr %stat_release, align 8, !dbg !6990
  %tobool16 = icmp ne ptr %17, null, !dbg !6986
  br i1 %tobool16, label %if.then, label %if.end, !dbg !6991

if.then:                                          ; preds = %for.body
  %18 = load ptr, ptr %session.addr, align 8, !dbg !6992
  %ts17 = getelementptr inbounds %struct.stat_session, ptr %18, i32 0, i32 1, !dbg !6993
  %19 = load ptr, ptr %ts17, align 8, !dbg !6993
  %stat_release18 = getelementptr inbounds %struct.tracer_stat, ptr %19, i32 0, i32 5, !dbg !6994
  %20 = load ptr, ptr %stat_release18, align 8, !dbg !6994
  %21 = load ptr, ptr %snode, align 8, !dbg !6995
  %stat = getelementptr inbounds %struct.stat_node, ptr %21, i32 0, i32 1, !dbg !6996
  %22 = load ptr, ptr %stat, align 8, !dbg !6996
  call void %20(ptr noundef %22) #16, !dbg !6992
  br label %if.end, !dbg !6992

if.end:                                           ; preds = %if.then, %for.body
  %23 = load ptr, ptr %snode, align 8, !dbg !6997
  call void @kfree(ptr noundef %23) #16, !dbg !6998
  br label %for.inc, !dbg !6999

for.inc:                                          ; preds = %if.end
  %24 = load ptr, ptr %n, align 8, !dbg !6981
  store ptr %24, ptr %snode, align 8, !dbg !6981
  br label %for.cond, !dbg !6981, !llvm.loop !7000

for.end:                                          ; preds = %land.end
  %25 = load ptr, ptr %session.addr, align 8, !dbg !7002
  %stat_root19 = getelementptr inbounds %struct.stat_session, ptr %25, i32 0, i32 2, !dbg !7003
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %.compoundliteral, i32 0, i32 0, !dbg !7004
  store ptr null, ptr %rb_node, align 8, !dbg !7004
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %stat_root19, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !7004
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !7005
  call void @llvm.lifetime.end.p0(i64 8, ptr %snode) #15, !dbg !7005
  ret void, !dbg !7005
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dummy_cmp(ptr noundef %p1, ptr noundef %p2) #0 align 16 !dbg !7006 {
entry:
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !7008, metadata !DIExpression()), !dbg !7010
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !7009, metadata !DIExpression()), !dbg !7011
  ret i32 -1, !dbg !7012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insert_stat(ptr noundef %root, ptr noundef %stat, ptr noundef %cmp) #0 align 16 !dbg !7013 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %cmp.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %this = alloca ptr, align 8
  %result = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !7017, metadata !DIExpression()), !dbg !7029
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !7018, metadata !DIExpression()), !dbg !7030
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !7019, metadata !DIExpression()), !dbg !7031
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #15, !dbg !7032
  call void @llvm.dbg.declare(metadata ptr %new, metadata !7020, metadata !DIExpression()), !dbg !7033
  %0 = load ptr, ptr %root.addr, align 8, !dbg !7034
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %0, i32 0, i32 0, !dbg !7035
  store ptr %rb_node, ptr %new, align 8, !dbg !7033
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !7032
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !7022, metadata !DIExpression()), !dbg !7036
  store ptr null, ptr %parent, align 8, !dbg !7036
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !7037
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7023, metadata !DIExpression()), !dbg !7038
  %call = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #17, !dbg !7039
  store ptr %call, ptr %data, align 8, !dbg !7040
  %1 = load ptr, ptr %data, align 8, !dbg !7041
  %tobool = icmp ne ptr %1, null, !dbg !7041
  br i1 %tobool, label %if.end, label %if.then, !dbg !7043

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !7044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7044

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %stat.addr, align 8, !dbg !7045
  %3 = load ptr, ptr %data, align 8, !dbg !7046
  %stat1 = getelementptr inbounds %struct.stat_node, ptr %3, i32 0, i32 1, !dbg !7047
  store ptr %2, ptr %stat1, align 8, !dbg !7048
  br label %while.cond, !dbg !7049

while.cond:                                       ; preds = %if.end8, %if.end
  %4 = load ptr, ptr %new, align 8, !dbg !7050
  %5 = load ptr, ptr %4, align 8, !dbg !7051
  %tobool2 = icmp ne ptr %5, null, !dbg !7049
  br i1 %tobool2, label %while.body, label %while.end, !dbg !7049

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #15, !dbg !7052
  call void @llvm.dbg.declare(metadata ptr %this, metadata !7024, metadata !DIExpression()), !dbg !7053
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !7054
  call void @llvm.dbg.declare(metadata ptr %result, metadata !7026, metadata !DIExpression()), !dbg !7055
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7056
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7027, metadata !DIExpression()), !dbg !7056
  %6 = load ptr, ptr %new, align 8, !dbg !7056
  %7 = load ptr, ptr %6, align 8, !dbg !7056
  store ptr %7, ptr %__mptr, align 8, !dbg !7056
  %8 = load ptr, ptr %__mptr, align 8, !dbg !7056
  %add.ptr = getelementptr i8, ptr %8, i64 0, !dbg !7056
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7056
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7057
  %9 = load ptr, ptr %tmp, align 8, !dbg !7056
  store ptr %9, ptr %this, align 8, !dbg !7058
  %10 = load ptr, ptr %cmp.addr, align 8, !dbg !7059
  %11 = load ptr, ptr %data, align 8, !dbg !7060
  %stat3 = getelementptr inbounds %struct.stat_node, ptr %11, i32 0, i32 1, !dbg !7061
  %12 = load ptr, ptr %stat3, align 8, !dbg !7061
  %13 = load ptr, ptr %this, align 8, !dbg !7062
  %stat4 = getelementptr inbounds %struct.stat_node, ptr %13, i32 0, i32 1, !dbg !7063
  %14 = load ptr, ptr %stat4, align 8, !dbg !7063
  %call5 = call i32 %10(ptr noundef %12, ptr noundef %14) #16, !dbg !7059
  store i32 %call5, ptr %result, align 4, !dbg !7064
  %15 = load ptr, ptr %new, align 8, !dbg !7065
  %16 = load ptr, ptr %15, align 8, !dbg !7066
  store ptr %16, ptr %parent, align 8, !dbg !7067
  %17 = load i32, ptr %result, align 4, !dbg !7068
  %cmp6 = icmp sge i32 %17, 0, !dbg !7070
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !7071

if.then7:                                         ; preds = %while.body
  %18 = load ptr, ptr %new, align 8, !dbg !7072
  %19 = load ptr, ptr %18, align 8, !dbg !7073
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2, !dbg !7074
  store ptr %rb_left, ptr %new, align 8, !dbg !7075
  br label %if.end8, !dbg !7076

if.else:                                          ; preds = %while.body
  %20 = load ptr, ptr %new, align 8, !dbg !7077
  %21 = load ptr, ptr %20, align 8, !dbg !7078
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1, !dbg !7079
  store ptr %rb_right, ptr %new, align 8, !dbg !7080
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !7081
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #15, !dbg !7081
  br label %while.cond, !dbg !7049, !llvm.loop !7082

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %data, align 8, !dbg !7083
  %node = getelementptr inbounds %struct.stat_node, ptr %22, i32 0, i32 0, !dbg !7084
  %23 = load ptr, ptr %parent, align 8, !dbg !7085
  %24 = load ptr, ptr %new, align 8, !dbg !7086
  call void @rb_link_node(ptr noundef %node, ptr noundef %23, ptr noundef %24) #16, !dbg !7087
  %25 = load ptr, ptr %data, align 8, !dbg !7088
  %node9 = getelementptr inbounds %struct.stat_node, ptr %25, i32 0, i32 0, !dbg !7089
  %26 = load ptr, ptr %root.addr, align 8, !dbg !7090
  call void @rb_insert_color(ptr noundef %node9, ptr noundef %26) #16, !dbg !7091
  store i32 0, ptr %retval, align 4, !dbg !7092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7092

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #15, !dbg !7093
  %27 = load i32, ptr %retval, align 4, !dbg !7093
  ret i32 %27, !dbg !7093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7094 dso_local ptr @rb_first_postorder(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7100 dso_local ptr @rb_next_postorder(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7105 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #5 align 16 !dbg !7108 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !7113, metadata !DIExpression()), !dbg !7116
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !7114, metadata !DIExpression()), !dbg !7117
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !7118
  %1 = ptrtoint ptr %0 to i64, !dbg !7119
  %2 = load ptr, ptr %node.addr, align 8, !dbg !7120
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !7121
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !7122
  %3 = load ptr, ptr %node.addr, align 8, !dbg !7123
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !7124
  store ptr null, ptr %rb_right, align 8, !dbg !7125
  %4 = load ptr, ptr %node.addr, align 8, !dbg !7126
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !7127
  store ptr null, ptr %rb_left, align 8, !dbg !7128
  %5 = load ptr, ptr %node.addr, align 8, !dbg !7129
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !7130
  store ptr %5, ptr %6, align 8, !dbg !7131
  ret void, !dbg !7132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7133 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @stat_seq_start(ptr noundef %s, ptr noundef %pos) #0 align 16 !dbg !7136 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %session = alloca ptr, align 8
  %node = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7138, metadata !DIExpression()), !dbg !7144
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !7139, metadata !DIExpression()), !dbg !7145
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !7146
  call void @llvm.dbg.declare(metadata ptr %session, metadata !7140, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7148
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7149
  %1 = load ptr, ptr %private, align 8, !dbg !7149
  store ptr %1, ptr %session, align 8, !dbg !7147
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #15, !dbg !7150
  call void @llvm.dbg.declare(metadata ptr %node, metadata !7141, metadata !DIExpression()), !dbg !7151
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #15, !dbg !7152
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7142, metadata !DIExpression()), !dbg !7153
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !7154
  %3 = load i64, ptr %2, align 8, !dbg !7155
  %conv = trunc i64 %3 to i32, !dbg !7155
  store i32 %conv, ptr %n, align 4, !dbg !7153
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !7156
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7143, metadata !DIExpression()), !dbg !7157
  %4 = load ptr, ptr %session, align 8, !dbg !7158
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %4, i32 0, i32 3, !dbg !7159
  call void @mutex_lock(ptr noundef %stat_mutex) #16, !dbg !7160
  %5 = load ptr, ptr %session, align 8, !dbg !7161
  %ts = getelementptr inbounds %struct.stat_session, ptr %5, i32 0, i32 1, !dbg !7163
  %6 = load ptr, ptr %ts, align 8, !dbg !7163
  %stat_headers = getelementptr inbounds %struct.tracer_stat, ptr %6, i32 0, i32 6, !dbg !7164
  %7 = load ptr, ptr %stat_headers, align 8, !dbg !7164
  %tobool = icmp ne ptr %7, null, !dbg !7161
  br i1 %tobool, label %if.then, label %if.end3, !dbg !7165

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %n, align 4, !dbg !7166
  %cmp = icmp eq i32 %8, 0, !dbg !7169
  br i1 %cmp, label %if.then2, label %if.end, !dbg !7170

if.then2:                                         ; preds = %if.then
  store ptr inttoptr (i64 1 to ptr), ptr %retval, align 8, !dbg !7171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7171

if.end:                                           ; preds = %if.then
  %9 = load i32, ptr %n, align 4, !dbg !7172
  %dec = add i32 %9, -1, !dbg !7172
  store i32 %dec, ptr %n, align 4, !dbg !7172
  br label %if.end3, !dbg !7173

if.end3:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %session, align 8, !dbg !7174
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %10, i32 0, i32 2, !dbg !7175
  %call = call ptr @rb_first(ptr noundef %stat_root) #16, !dbg !7176
  store ptr %call, ptr %node, align 8, !dbg !7177
  store i32 0, ptr %i, align 4, !dbg !7178
  br label %for.cond, !dbg !7180

for.cond:                                         ; preds = %for.inc, %if.end3
  %11 = load ptr, ptr %node, align 8, !dbg !7181
  %tobool4 = icmp ne ptr %11, null, !dbg !7181
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !7183

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4, !dbg !7184
  %13 = load i32, ptr %n, align 4, !dbg !7185
  %cmp5 = icmp slt i32 %12, %13, !dbg !7186
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !7187
  br i1 %14, label %for.body, label %for.end, !dbg !7188

for.body:                                         ; preds = %land.end
  %15 = load ptr, ptr %node, align 8, !dbg !7189
  %call7 = call ptr @rb_next(ptr noundef %15) #16, !dbg !7190
  store ptr %call7, ptr %node, align 8, !dbg !7191
  br label %for.inc, !dbg !7192

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !7193
  %inc = add i32 %16, 1, !dbg !7193
  store i32 %inc, ptr %i, align 4, !dbg !7193
  br label %for.cond, !dbg !7194, !llvm.loop !7195

for.end:                                          ; preds = %land.end
  %17 = load ptr, ptr %node, align 8, !dbg !7197
  store ptr %17, ptr %retval, align 8, !dbg !7198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7198

cleanup:                                          ; preds = %for.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !7199
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #15, !dbg !7199
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #15, !dbg !7199
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !7199
  %18 = load ptr, ptr %retval, align 8, !dbg !7199
  ret ptr %18, !dbg !7199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stat_seq_stop(ptr noundef %s, ptr noundef %p) #0 align 16 !dbg !7200 {
entry:
  %s.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %session = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7202, metadata !DIExpression()), !dbg !7205
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7203, metadata !DIExpression()), !dbg !7206
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !7207
  call void @llvm.dbg.declare(metadata ptr %session, metadata !7204, metadata !DIExpression()), !dbg !7208
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7209
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7210
  %1 = load ptr, ptr %private, align 8, !dbg !7210
  store ptr %1, ptr %session, align 8, !dbg !7208
  %2 = load ptr, ptr %session, align 8, !dbg !7211
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %2, i32 0, i32 3, !dbg !7212
  call void @mutex_unlock(ptr noundef %stat_mutex) #16, !dbg !7213
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !7214
  ret void, !dbg !7214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @stat_seq_next(ptr noundef %s, ptr noundef %p, ptr noundef %pos) #0 align 16 !dbg !7215 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %session = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7217, metadata !DIExpression()), !dbg !7222
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7218, metadata !DIExpression()), !dbg !7223
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !7219, metadata !DIExpression()), !dbg !7224
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !7225
  call void @llvm.dbg.declare(metadata ptr %session, metadata !7220, metadata !DIExpression()), !dbg !7226
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7227
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7228
  %1 = load ptr, ptr %private, align 8, !dbg !7228
  store ptr %1, ptr %session, align 8, !dbg !7226
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #15, !dbg !7229
  call void @llvm.dbg.declare(metadata ptr %node, metadata !7221, metadata !DIExpression()), !dbg !7230
  %2 = load ptr, ptr %p.addr, align 8, !dbg !7231
  store ptr %2, ptr %node, align 8, !dbg !7230
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !7232
  %4 = load i64, ptr %3, align 8, !dbg !7233
  %inc = add i64 %4, 1, !dbg !7233
  store i64 %inc, ptr %3, align 8, !dbg !7233
  %5 = load ptr, ptr %p.addr, align 8, !dbg !7234
  %cmp = icmp eq ptr %5, inttoptr (i64 1 to ptr), !dbg !7236
  br i1 %cmp, label %if.then, label %if.end, !dbg !7237

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %session, align 8, !dbg !7238
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %6, i32 0, i32 2, !dbg !7239
  %call = call ptr @rb_first(ptr noundef %stat_root) #16, !dbg !7240
  store ptr %call, ptr %retval, align 8, !dbg !7241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7241

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %node, align 8, !dbg !7242
  %call1 = call ptr @rb_next(ptr noundef %7) #16, !dbg !7243
  store ptr %call1, ptr %retval, align 8, !dbg !7244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7244

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #15, !dbg !7245
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !7245
  %8 = load ptr, ptr %retval, align 8, !dbg !7245
  ret ptr %8, !dbg !7245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stat_seq_show(ptr noundef %s, ptr noundef %v) #0 align 16 !dbg !7246 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %session = alloca ptr, align 8
  %l = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7248, metadata !DIExpression()), !dbg !7254
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7249, metadata !DIExpression()), !dbg !7255
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #15, !dbg !7256
  call void @llvm.dbg.declare(metadata ptr %session, metadata !7250, metadata !DIExpression()), !dbg !7257
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7258
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7259
  %1 = load ptr, ptr %private, align 8, !dbg !7259
  store ptr %1, ptr %session, align 8, !dbg !7257
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #15, !dbg !7260
  call void @llvm.dbg.declare(metadata ptr %l, metadata !7251, metadata !DIExpression()), !dbg !7261
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !7262
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7252, metadata !DIExpression()), !dbg !7262
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7262
  store ptr %2, ptr %__mptr, align 8, !dbg !7262
  %3 = load ptr, ptr %__mptr, align 8, !dbg !7262
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !7262
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !7263
  %4 = load ptr, ptr %tmp, align 8, !dbg !7262
  store ptr %4, ptr %l, align 8, !dbg !7261
  %5 = load ptr, ptr %v.addr, align 8, !dbg !7264
  %cmp = icmp eq ptr %5, inttoptr (i64 1 to ptr), !dbg !7266
  br i1 %cmp, label %if.then, label %if.end, !dbg !7267

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %session, align 8, !dbg !7268
  %ts = getelementptr inbounds %struct.stat_session, ptr %6, i32 0, i32 1, !dbg !7269
  %7 = load ptr, ptr %ts, align 8, !dbg !7269
  %stat_headers = getelementptr inbounds %struct.tracer_stat, ptr %7, i32 0, i32 6, !dbg !7270
  %8 = load ptr, ptr %stat_headers, align 8, !dbg !7270
  %9 = load ptr, ptr %s.addr, align 8, !dbg !7271
  %call = call i32 %8(ptr noundef %9) #16, !dbg !7268
  store i32 %call, ptr %retval, align 4, !dbg !7272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7272

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %session, align 8, !dbg !7273
  %ts1 = getelementptr inbounds %struct.stat_session, ptr %10, i32 0, i32 1, !dbg !7274
  %11 = load ptr, ptr %ts1, align 8, !dbg !7274
  %stat_show = getelementptr inbounds %struct.tracer_stat, ptr %11, i32 0, i32 4, !dbg !7275
  %12 = load ptr, ptr %stat_show, align 8, !dbg !7275
  %13 = load ptr, ptr %s.addr, align 8, !dbg !7276
  %14 = load ptr, ptr %l, align 8, !dbg !7277
  %stat = getelementptr inbounds %struct.stat_node, ptr %14, i32 0, i32 1, !dbg !7278
  %15 = load ptr, ptr %stat, align 8, !dbg !7278
  %call2 = call i32 %12(ptr noundef %13, ptr noundef %15) #16, !dbg !7273
  store i32 %call2, ptr %retval, align 4, !dbg !7279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7279

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #15, !dbg !7280
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #15, !dbg !7280
  %16 = load i32, ptr %retval, align 4, !dbg !7280
  ret i32 %16, !dbg !7280
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7281 dso_local ptr @rb_first(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7282 dso_local ptr @rb_next(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7283 dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7284 dso_local void @tracefs_remove(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #5 align 16 !dbg !7285 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7287, metadata !DIExpression()), !dbg !7288
  ret void, !dbg !7289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7290 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7294, metadata !DIExpression()), !dbg !7297
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7295, metadata !DIExpression()), !dbg !7298
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7296, metadata !DIExpression()), !dbg !7299
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7300
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7302
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7303
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !7304
  br i1 %call, label %if.end, label %if.then, !dbg !7305

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7306

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7307
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7308
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7309
  store ptr %3, ptr %prev1, align 8, !dbg !7310
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7311
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7312
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7313
  store ptr %5, ptr %next2, align 8, !dbg !7314
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7315
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7316
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7317
  store ptr %7, ptr %prev3, align 8, !dbg !7318
  br label %do.body, !dbg !7319

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7320

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7322

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7320

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7324
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7324
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7324
  store volatile ptr %9, ptr %next6, align 8, !dbg !7324
  br label %do.end7, !dbg !7324

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7320

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7327 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7331, metadata !DIExpression()), !dbg !7334
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7332, metadata !DIExpression()), !dbg !7335
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7333, metadata !DIExpression()), !dbg !7336
  ret i1 true, !dbg !7337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !7338 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7340, metadata !DIExpression()), !dbg !7341
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7342
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !7344
  br i1 %call, label %if.end, label %if.then, !dbg !7345

if.then:                                          ; preds = %entry
  br label %return, !dbg !7346

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7347
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7348
  %2 = load ptr, ptr %prev, align 8, !dbg !7348
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7349
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7350
  %4 = load ptr, ptr %next, align 8, !dbg !7350
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !7351
  br label %return, !dbg !7352

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !7353 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7357, metadata !DIExpression()), !dbg !7358
  ret i1 true, !dbg !7359
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7360 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7362, metadata !DIExpression()), !dbg !7364
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7363, metadata !DIExpression()), !dbg !7365
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7366
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7367
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7368
  store ptr %0, ptr %prev1, align 8, !dbg !7369
  br label %do.body, !dbg !7370

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7371

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7373

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7371

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7375
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7375
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7375
  store volatile ptr %2, ptr %next4, align 8, !dbg !7375
  br label %do.end5, !dbg !7375

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7371

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7377
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }
attributes #20 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6268, !6269, !6270, !6271, !6272, !6273, !6274, !6275}
!llvm.ident = !{!6276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "all_stat_sessions_mutex", scope: !2, file: !3, line: 42, type: !359, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.trace_stat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/trace_stat\22 -D KBUILD_BASENAME=\22trace_stat\22 -D KBUILD_MODNAME=\22trace_stat\22 -D __KBUILD_MODNAME=kmod_trace_stat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/trace_stat.ll kernel/trace/trace_stat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !316, globals: !6225, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/trace/trace_stat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2c09013be276374794ce557ca4862a2")
!4 = !{!5, !11, !107, !113, !129, !136, !142, !153, !159, !165, !172, !180, !187, !193, !202, !207, !212, !218, !227, !232, !238, !245, !253, !260, !268, !273, !283}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !108, line: 16, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "TT_NONE", value: 0)
!111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !114, line: 1325, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!116 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!117 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!118 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!119 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!120 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!121 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!122 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!123 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!124 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!125 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!126 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!127 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!128 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !130, line: 312, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!133 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!134 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!135 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !137, line: 26, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!140 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!141 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !143, line: 253, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152}
!145 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!146 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!147 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!148 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!149 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!150 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!151 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!152 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !143, line: 158, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!156 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!157 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!158 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !160, line: 45, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!163 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!164 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !166, line: 487, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!169 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!170 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!171 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !173, line: 620, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!174 = !{!175, !176, !177, !178, !179}
!175 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!176 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!177 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!178 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!179 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !173, line: 597, baseType: !22, size: 32, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!183 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!184 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!185 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!186 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !188, line: 30, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!191 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!192 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !166, line: 547, baseType: !7, size: 32, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201}
!195 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!196 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!197 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!198 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!199 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!200 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!201 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !166, line: 564, baseType: !7, size: 32, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!205 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!206 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !166, line: 577, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!210 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!211 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !166, line: 503, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217}
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!215 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!216 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!217 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !219, line: 593, baseType: !22, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!222 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!223 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!224 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!225 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!226 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !228, line: 2052, baseType: !7, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!229 = !{!230, !231}
!230 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!231 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !233, line: 54, baseType: !7, size: 32, elements: !234)
!233 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "USRQUOTA", value: 0)
!236 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!237 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !239, line: 15, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!242 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!243 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!244 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !246, line: 68, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!247 = !{!248, !249, !250, !251, !252}
!248 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!249 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!250 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!251 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!252 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !254, line: 51, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!255 = !{!256, !257, !258, !259}
!256 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!257 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!258 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!259 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !261, line: 9, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!262 = !{!263, !264, !265, !266, !267}
!263 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!264 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!265 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!266 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!267 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !269, line: 10, baseType: !7, size: 32, elements: !270)
!269 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!270 = !{!271, !272}
!271 = !DIEnumerator(name: "false", value: 0)
!272 = !DIEnumerator(name: "true", value: 1)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !274, line: 364, baseType: !7, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!275 = !{!276, !277, !278, !279, !280, !281, !282}
!276 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!277 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!278 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!279 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!280 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!281 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!282 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !284, line: 107, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!286 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!287 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!288 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!289 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!290 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!291 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!292 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!293 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!294 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!295 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!296 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!297 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!298 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!299 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!300 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!301 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!302 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!303 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!304 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!305 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!306 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!307 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!308 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!309 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!310 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!311 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!312 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!313 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!314 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!315 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!316 = !{!20, !317, !503, !39, !6218, !6220}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat_session", file: !3, line: 32, size: 576, elements: !319)
!319 = !{!320, !321, !6215, !6216, !6217}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "session_list", scope: !318, file: !3, line: 33, baseType: !97, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !318, file: !3, line: 34, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_stat", file: !324, line: 12, size: 448, elements: !325)
!324 = !DIFile(filename: "kernel/trace/trace_stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b27ab2e87951f457636d22e6083fdb52")
!325 = !{!326, !327, !331, !335, !342, !6210, !6211}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !324, line: 14, baseType: !16, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "stat_start", scope: !323, file: !324, line: 16, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!20, !322}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "stat_next", scope: !323, file: !324, line: 17, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!20, !20, !22}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "stat_cmp", scope: !323, file: !324, line: 19, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !25, line: 245, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!22, !340, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "stat_show", scope: !323, file: !324, line: 21, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!22, !346, !20}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !348, line: 17, size: 960, elements: !349)
!348 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!349 = !{!350, !352, !353, !354, !355, !356, !357, !358, !379, !397, !398, !6209}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !347, file: !348, line: 18, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !347, file: !348, line: 19, baseType: !35, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !347, file: !348, line: 20, baseType: !35, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !347, file: !348, line: 21, baseType: !35, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !347, file: !348, line: 22, baseType: !35, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !347, file: !348, line: 23, baseType: !41, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !347, file: !348, line: 24, baseType: !41, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !348, line: 25, baseType: !359, size: 256, offset: 448)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !360, line: 66, size: 256, elements: !361)
!360 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!361 = !{!362, !371, !373, !378}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !359, file: !360, line: 67, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !364, line: 13, baseType: !365)
!364 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !366, file: !25, line: 180, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !359, file: !360, line: 68, baseType: !372, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !359, file: !360, line: 70, baseType: !374, size: 32, offset: 96)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !375, line: 15, size: 32, elements: !376)
!375 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !374, file: !375, line: 20, baseType: !49, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !359, file: !360, line: 72, baseType: !97, size: 128, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !347, file: !348, line: 26, baseType: !380, size: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !348, line: 32, size: 256, elements: !383)
!383 = !{!384, !388, !392, !396}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !382, file: !348, line: 33, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!20, !346, !40}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !382, file: !348, line: 34, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !346, !20}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !348, line: 35, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!20, !346, !20, !40}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !382, file: !348, line: 36, baseType: !343, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !347, file: !348, line: 27, baseType: !22, size: 32, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !347, file: !348, line: 28, baseType: !399, size: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !228, line: 994, size: 1856, align: 64, elements: !402)
!402 = !{!403, !422, !423, !425, !426, !427, !428, !429, !6189, !6190, !6199, !6200, !6201, !6202, !6203, !6204, !6205, !6206, !6207, !6208}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !228, line: 995, baseType: !404, size: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !228, line: 995, size: 128, elements: !405)
!405 = !{!406, !412, !421}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !404, file: !228, line: 996, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !408, line: 60, size: 64, elements: !409)
!408 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !408, line: 61, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !404, file: !228, line: 997, baseType: !413, size: 128, align: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !414)
!414 = !{!415, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !25, line: 233, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !413, file: !25, line: 234, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !416}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !404, file: !228, line: 998, baseType: !7, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !401, file: !228, line: 1005, baseType: !59, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !401, file: !228, line: 1006, baseType: !424, size: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !401, file: !228, line: 1007, baseType: !363, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !401, file: !228, line: 1008, baseType: !359, size: 256, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !401, file: !228, line: 1009, baseType: !41, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !401, file: !228, line: 1010, baseType: !7, size: 32, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !401, file: !228, line: 1011, baseType: !430, size: 256, offset: 640)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !228, line: 948, size: 256, elements: !431)
!431 = !{!432, !455, !6185, !6186, !6187, !6188}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !430, file: !228, line: 949, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !434, line: 34, baseType: !435)
!434 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 25, size: 64, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !435, file: !434, line: 26, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !439, line: 27, baseType: !440)
!439 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !439, line: 13, size: 64, elements: !441)
!441 = !{!442, !454}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !439, line: 14, baseType: !443, size: 32)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !439, line: 14, size: 32, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !443, file: !439, line: 15, baseType: !49, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !439, line: 16, baseType: !447, size: 32)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !439, line: 16, size: 32, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !447, file: !439, line: 18, baseType: !83, size: 8)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !447, file: !439, line: 19, baseType: !451, size: 24, offset: 8)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 3)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !440, file: !439, line: 26, baseType: !71, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !430, file: !228, line: 950, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !261, line: 59, size: 768, elements: !458)
!458 = !{!459, !465, !466, !467, !480, !481, !482, !483}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !457, file: !261, line: 61, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !461, line: 113, baseType: !462)
!461 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !461, line: 111, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !462, file: !461, line: 112, baseType: !49, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !457, file: !261, line: 62, baseType: !7, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !457, file: !261, line: 63, baseType: !59, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !457, file: !261, line: 65, baseType: !468, size: 256, offset: 128)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 256, elements: !478)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !469, file: !25, line: 195, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !25, line: 199, baseType: !472, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !473, file: !25, line: 199, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!478 = !{!479}
!479 = !DISubrange(count: 4)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !457, file: !261, line: 66, baseType: !469, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !457, file: !261, line: 68, baseType: !54, size: 192, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !457, file: !261, line: 69, baseType: !413, size: 128, align: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !457, file: !261, line: 70, baseType: !484, offset: 768)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, elements: !1264)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !261, line: 54, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !485, file: !261, line: 55, baseType: !22, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !485, file: !261, line: 56, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !491, line: 26, size: 1152, elements: !492)
!491 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!492 = !{!493, !507, !508, !509, !6174, !6175, !6176, !6177, !6180, !6181, !6182, !6183, !6184}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !490, file: !491, line: 27, baseType: !494, size: 192)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !495, line: 19, size: 192, elements: !496)
!495 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!496 = !{!497, !505, !506}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !494, file: !495, line: 20, baseType: !498, size: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !499, line: 296, size: 128, elements: !500)
!499 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!500 = !{!501, !502, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !498, file: !499, line: 297, baseType: !59, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !498, file: !499, line: 299, baseType: !503, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !498, file: !499, line: 300, baseType: !20, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !494, file: !495, line: 21, baseType: !7, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !494, file: !495, line: 22, baseType: !7, size: 32, offset: 160)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !491, line: 28, baseType: !413, size: 128, align: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !490, file: !491, line: 29, baseType: !7, size: 32, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !490, file: !491, line: 30, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !512, line: 746, size: 58368, elements: !513)
!512 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!513 = !{!514, !524, !525, !526, !527, !528, !529, !530, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !606, !617, !717, !721, !724, !755, !756, !757, !758, !769, !771, !772, !773, !774, !775, !776, !787, !788, !791, !792, !793, !794, !795, !796, !797, !798, !805, !806, !813, !814, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1350, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1365, !1366, !1367, !1368, !1370, !1371, !1372, !1373, !1374, !1375, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1399, !1405, !1475, !1476, !1477, !1478, !1482, !1485, !1492, !1497, !1500, !1503, !1506, !5438, !5636, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5674, !5675, !5676, !5685, !5693, !5694, !5695, !5696, !5697, !5702, !5703, !5704, !5707, !5708, !5711, !5714, !5717, !5725, !5728, !5729, !5815, !5816, !5817, !5818, !5819, !5825, !5826, !5827, !5828, !5829, !5830, !5833, !5836, !5837, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5880, !5881, !5887, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5899, !5971, !5973, !5974, !5975, !5976, !5977, !5978, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6007, !6008, !6009}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !511, file: !512, line: 752, baseType: !515, size: 192)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !516, line: 56, size: 192, elements: !517)
!516 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!517 = !{!518, !519, !520, !523}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !516, line: 57, baseType: !39, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !515, file: !516, line: 58, baseType: !39, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !515, file: !516, line: 59, baseType: !521, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !515, file: !516, line: 61, baseType: !521, size: 32, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !511, file: !512, line: 754, baseType: !7, size: 32, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !511, file: !512, line: 767, baseType: !20, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !511, file: !512, line: 768, baseType: !460, size: 32, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !512, line: 770, baseType: !7, size: 32, offset: 352)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !511, file: !512, line: 771, baseType: !7, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !511, file: !512, line: 774, baseType: !22, size: 32, offset: 416)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !511, file: !512, line: 775, baseType: !531, size: 128, offset: 448)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !532, line: 58, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!533 = !{!534, !535, !540, !541}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !531, file: !532, line: 59, baseType: !407, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 60, baseType: !536, size: 32, offset: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 60, size: 32, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !536, file: !532, line: 61, baseType: !7, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !536, file: !532, line: 62, baseType: !49, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !531, file: !532, line: 65, baseType: !93, size: 16, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !531, file: !532, line: 65, baseType: !93, size: 16, offset: 112)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !511, file: !512, line: 776, baseType: !7, size: 32, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !511, file: !512, line: 777, baseType: !39, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !511, file: !512, line: 778, baseType: !510, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !511, file: !512, line: 787, baseType: !22, size: 32, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !511, file: !512, line: 788, baseType: !22, size: 32, offset: 800)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !511, file: !512, line: 790, baseType: !22, size: 32, offset: 832)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !511, file: !512, line: 792, baseType: !22, size: 32, offset: 864)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !511, file: !512, line: 793, baseType: !22, size: 32, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !511, file: !512, line: 794, baseType: !22, size: 32, offset: 928)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !511, file: !512, line: 795, baseType: !7, size: 32, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !511, file: !512, line: 797, baseType: !553, size: 2048, offset: 1024)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !512, line: 551, size: 2048, elements: !554)
!554 = !{!555, !560, !568, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !585, !588, !589, !590}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !553, file: !512, line: 553, baseType: !556, size: 128)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !512, line: 411, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !556, file: !512, line: 412, baseType: !39, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !556, file: !512, line: 413, baseType: !521, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !553, file: !512, line: 554, baseType: !561, size: 192, align: 64, offset: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !562, line: 5, size: 192, align: 64, elements: !563)
!562 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!563 = !{!564, !565, !567}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !561, file: !562, line: 6, baseType: !39, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !561, file: !562, line: 7, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !561, file: !562, line: 8, baseType: !566, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !553, file: !512, line: 555, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !571)
!571 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !553, file: !512, line: 556, baseType: !569, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !553, file: !512, line: 558, baseType: !97, size: 128, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !553, file: !512, line: 559, baseType: !7, size: 32, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !553, file: !512, line: 561, baseType: !569, size: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !553, file: !512, line: 562, baseType: !569, size: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !553, file: !512, line: 563, baseType: !569, size: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !553, file: !512, line: 564, baseType: !569, size: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !553, file: !512, line: 565, baseType: !369, size: 64, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !553, file: !512, line: 566, baseType: !569, size: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !553, file: !512, line: 568, baseType: !569, size: 64, offset: 1024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !553, file: !512, line: 571, baseType: !22, size: 32, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !553, file: !512, line: 572, baseType: !584, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !553, file: !512, line: 574, baseType: !586, size: 64, offset: 1216)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !512, line: 49, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !553, file: !512, line: 576, baseType: !586, size: 64, offset: 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !553, file: !512, line: 578, baseType: !39, size: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !553, file: !512, line: 588, baseType: !591, size: 512, align: 512, offset: 1536)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !512, line: 497, size: 512, align: 512, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !591, file: !512, line: 498, baseType: !569, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !591, file: !512, line: 499, baseType: !569, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !591, file: !512, line: 500, baseType: !569, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !591, file: !512, line: 501, baseType: !521, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !591, file: !512, line: 502, baseType: !521, size: 32, offset: 224)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !591, file: !512, line: 503, baseType: !39, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !591, file: !512, line: 504, baseType: !39, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !591, file: !512, line: 505, baseType: !39, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !591, file: !512, line: 506, baseType: !602, size: 64, align: 64, offset: 448)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !512, line: 445, size: 64, align: 64, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !602, file: !512, line: 446, baseType: !7, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !602, file: !512, line: 447, baseType: !7, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !511, file: !512, line: 798, baseType: !607, size: 384, offset: 3072)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !512, line: 592, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !607, file: !512, line: 593, baseType: !97, size: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !607, file: !512, line: 594, baseType: !39, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !607, file: !512, line: 595, baseType: !39, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !607, file: !512, line: 596, baseType: !7, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !607, file: !512, line: 597, baseType: !26, size: 16, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !607, file: !512, line: 598, baseType: !26, size: 16, offset: 304)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !607, file: !512, line: 600, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !511, file: !512, line: 799, baseType: !618, size: 1792, offset: 3456)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !512, line: 610, size: 1792, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !714, !715}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !618, file: !512, line: 611, baseType: !561, size: 192, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !618, file: !512, line: 618, baseType: !569, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !618, file: !512, line: 619, baseType: !569, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !618, file: !512, line: 620, baseType: !569, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !618, file: !512, line: 621, baseType: !569, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !618, file: !512, line: 622, baseType: !569, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !618, file: !512, line: 629, baseType: !369, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !618, file: !512, line: 630, baseType: !569, size: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !512, line: 631, baseType: !7, size: 32, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !618, file: !512, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !618, file: !512, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !618, file: !512, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !618, file: !512, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !618, file: !512, line: 662, baseType: !634, size: 512, offset: 704)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !635)
!635 = !{!636, !644, !645, !650, !710, !711, !712, !713}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !6, line: 119, baseType: !637, size: 256)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !638, line: 9, size: 256, elements: !639)
!638 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !638, line: 10, baseType: !561, size: 192, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !637, file: !638, line: 11, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !643, line: 29, baseType: !369)
!643 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !634, file: !6, line: 120, baseType: !642, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !634, file: !6, line: 121, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!5, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !634, file: !6, line: 122, baseType: !651, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !653)
!653 = !{!654, !679, !680, !683, !693, !694, !705, !709}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !652, file: !6, line: 160, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !6, line: 216, baseType: !372, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !656, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !656, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !656, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !656, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !656, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !656, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !656, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !656, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !656, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !656, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !656, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !656, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !656, file: !6, line: 235, baseType: !642, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !656, file: !6, line: 236, baseType: !649, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !656, file: !6, line: 237, baseType: !642, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !656, file: !6, line: 238, baseType: !649, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !656, file: !6, line: 239, baseType: !676, size: 4096, align: 512, offset: 512)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 4096, align: 512, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 8)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !652, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !652, file: !6, line: 162, baseType: !681, size: 32, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !652, file: !6, line: 163, baseType: !684, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !685, line: 274, baseType: !686)
!685 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !685, line: 274, size: 32, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !686, file: !685, line: 274, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !685, line: 69, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !685, line: 64, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !690, file: !685, line: 65, baseType: !7, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !652, file: !6, line: 164, baseType: !649, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !652, file: !6, line: 165, baseType: !695, size: 128, offset: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !638, line: 14, size: 128, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !695, file: !638, line: 15, baseType: !698, size: 128)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !562, line: 26, size: 128, elements: !699)
!699 = !{!700, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !698, file: !562, line: 27, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !562, line: 12, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !701, file: !562, line: 13, baseType: !566, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !698, file: !562, line: 28, baseType: !566, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !652, file: !6, line: 166, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!642}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !652, file: !6, line: 167, baseType: !642, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !634, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !634, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !634, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !634, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !618, file: !512, line: 671, baseType: !634, size: 512, offset: 1216)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !618, file: !512, line: 679, baseType: !716, size: 64, offset: 1728)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !511, file: !512, line: 800, baseType: !718, size: 64, offset: 5248)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !512, line: 800, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !511, file: !512, line: 809, baseType: !722, size: 64, offset: 5312)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !512, line: 70, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !511, file: !512, line: 825, baseType: !725, size: 2048, align: 512, offset: 5632)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !512, line: 509, size: 2048, align: 512, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !725, file: !512, line: 511, baseType: !569, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !725, file: !512, line: 512, baseType: !569, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !725, file: !512, line: 513, baseType: !569, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !725, file: !512, line: 514, baseType: !569, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !725, file: !512, line: 515, baseType: !569, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !725, file: !512, line: 516, baseType: !569, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !725, file: !512, line: 518, baseType: !569, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !725, file: !512, line: 519, baseType: !569, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !725, file: !512, line: 520, baseType: !369, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !725, file: !512, line: 522, baseType: !569, size: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !725, file: !512, line: 523, baseType: !569, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !725, file: !512, line: 524, baseType: !369, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !725, file: !512, line: 526, baseType: !369, size: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !725, file: !512, line: 527, baseType: !569, size: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !725, file: !512, line: 529, baseType: !569, size: 64, offset: 896)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !725, file: !512, line: 530, baseType: !569, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !725, file: !512, line: 531, baseType: !569, size: 64, offset: 1024)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !725, file: !512, line: 532, baseType: !569, size: 64, offset: 1088)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !725, file: !512, line: 533, baseType: !569, size: 64, offset: 1152)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !725, file: !512, line: 535, baseType: !569, size: 64, offset: 1216)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !725, file: !512, line: 536, baseType: !569, size: 64, offset: 1280)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !725, file: !512, line: 537, baseType: !569, size: 64, offset: 1344)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !725, file: !512, line: 538, baseType: !569, size: 64, offset: 1408)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !725, file: !512, line: 539, baseType: !569, size: 64, offset: 1472)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !725, file: !512, line: 540, baseType: !569, size: 64, offset: 1536)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !725, file: !512, line: 541, baseType: !569, size: 64, offset: 1600)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !725, file: !512, line: 542, baseType: !569, size: 64, offset: 1664)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !725, file: !512, line: 543, baseType: !569, size: 64, offset: 1728)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !511, file: !512, line: 833, baseType: !7, size: 32, offset: 7680)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !511, file: !512, line: 836, baseType: !7, size: 32, offset: 7712)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !511, file: !512, line: 837, baseType: !22, size: 32, offset: 7744)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !511, file: !512, line: 838, baseType: !759, size: 64, offset: 7808)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !762, line: 19, baseType: !763)
!762 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !762, line: 19, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !763, file: !762, line: 19, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 1)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !511, file: !512, line: 839, baseType: !770, size: 64, offset: 7872)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !511, file: !512, line: 840, baseType: !761, size: 64, offset: 7936)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !511, file: !512, line: 841, baseType: !20, size: 64, offset: 8000)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !511, file: !512, line: 843, baseType: !26, size: 16, offset: 8064)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !511, file: !512, line: 845, baseType: !26, size: 16, offset: 8080)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !511, file: !512, line: 848, baseType: !22, size: 32, offset: 8096)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !511, file: !512, line: 849, baseType: !777, size: 32, offset: 8128)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !512, line: 718, size: 32, elements: !778)
!778 = !{!779, !786}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !777, file: !512, line: 724, baseType: !780, size: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !512, line: 719, size: 32, elements: !781)
!781 = !{!782, !783, !784, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !780, file: !512, line: 720, baseType: !83, size: 8)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !780, file: !512, line: 721, baseType: !83, size: 8, offset: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !780, file: !512, line: 722, baseType: !83, size: 8, offset: 16)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !780, file: !512, line: 723, baseType: !83, size: 8, offset: 24)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !777, file: !512, line: 725, baseType: !521, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !511, file: !512, line: 850, baseType: !97, size: 128, offset: 8192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !511, file: !512, line: 851, baseType: !789, size: 64, offset: 8320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !512, line: 60, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !511, file: !512, line: 855, baseType: !39, size: 64, offset: 8384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !511, file: !512, line: 856, baseType: !83, size: 8, offset: 8448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !511, file: !512, line: 857, baseType: !83, size: 8, offset: 8456)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !511, file: !512, line: 858, baseType: !22, size: 32, offset: 8480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !511, file: !512, line: 859, baseType: !97, size: 128, offset: 8512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !511, file: !512, line: 860, baseType: !22, size: 32, offset: 8640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !511, file: !512, line: 861, baseType: !97, size: 128, offset: 8704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !511, file: !512, line: 873, baseType: !799, size: 256, offset: 8832)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !512, line: 376, size: 256, elements: !800)
!800 = !{!801, !802, !803, !804}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !799, file: !512, line: 381, baseType: !39, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !799, file: !512, line: 384, baseType: !571, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !799, file: !512, line: 389, baseType: !571, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !799, file: !512, line: 392, baseType: !571, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !511, file: !512, line: 875, baseType: !97, size: 128, offset: 9088)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !511, file: !512, line: 877, baseType: !807, size: 320, offset: 9216)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !808, line: 86, size: 320, elements: !809)
!808 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !807, file: !808, line: 87, baseType: !22, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !807, file: !808, line: 88, baseType: !97, size: 128, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !807, file: !808, line: 89, baseType: !97, size: 128, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !511, file: !512, line: 878, baseType: !561, size: 192, align: 64, offset: 9536)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !511, file: !512, line: 881, baseType: !815, size: 64, offset: 9728)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !114, line: 733, size: 10240, elements: !817)
!817 = !{!818, !1262}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !114, line: 734, baseType: !819, size: 10240)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !114, line: 734, size: 10240, elements: !820)
!820 = !{!821, !825, !839, !844, !845, !846, !847, !848, !849, !858, !859, !860, !866, !867, !868, !869, !870, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !907, !919, !922, !969, !970, !971, !974, !1248, !1249, !1252, !1253, !1254, !1260, !1261}
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !114, line: 739, baseType: !822, size: 512, align: 512)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !819, file: !114, line: 739, size: 512, align: 512, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !822, file: !114, line: 747, baseType: !49, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !819, file: !114, line: 750, baseType: !826, size: 128, offset: 512)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !827, line: 218, size: 128, elements: !828)
!827 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!828 = !{!829, !837, !838}
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !827, line: 219, baseType: !830, size: 32)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !826, file: !827, line: 219, size: 32, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !830, file: !827, line: 220, baseType: !59, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !830, file: !827, line: 221, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !827, line: 197, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !827, line: 197, elements: !836)
!836 = !{}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !826, file: !827, line: 223, baseType: !7, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !826, file: !827, line: 224, baseType: !20, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !819, file: !114, line: 752, baseType: !840, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!39, !843, !39, !39, !39, !39}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !819, file: !114, line: 756, baseType: !39, size: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !819, file: !114, line: 757, baseType: !39, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !819, file: !114, line: 760, baseType: !39, size: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !819, file: !114, line: 761, baseType: !39, size: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !819, file: !114, line: 763, baseType: !39, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !819, file: !114, line: 764, baseType: !850, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !852, line: 299, baseType: !853)
!852 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 299, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !853, file: !852, line: 299, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !857, line: 18, baseType: !39)
!857 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!858 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !819, file: !114, line: 773, baseType: !49, size: 32, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !819, file: !114, line: 785, baseType: !49, size: 32, offset: 1120)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !819, file: !114, line: 795, baseType: !861, size: 64, offset: 1152)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !114, line: 726, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !862, file: !114, line: 727, baseType: !569, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !862, file: !114, line: 728, baseType: !22, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !819, file: !114, line: 801, baseType: !39, size: 64, offset: 1216)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !819, file: !114, line: 804, baseType: !363, size: 64, offset: 1280)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !819, file: !114, line: 806, baseType: !22, size: 32, offset: 1344)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !819, file: !114, line: 808, baseType: !59, size: 32, offset: 1376)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !819, file: !114, line: 823, baseType: !871, size: 320, offset: 1408)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !872, line: 48, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!873 = !{!874, !875, !876, !877, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 49, baseType: !363, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !871, file: !872, line: 55, baseType: !363, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !871, file: !872, line: 57, baseType: !374, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !871, file: !872, line: 59, baseType: !372, size: 32, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !871, file: !872, line: 60, baseType: !97, size: 128, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !819, file: !114, line: 825, baseType: !97, size: 128, offset: 1728)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !819, file: !114, line: 845, baseType: !22, size: 32, offset: 1856)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !819, file: !114, line: 849, baseType: !39, size: 64, offset: 1920)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !819, file: !114, line: 850, baseType: !39, size: 64, offset: 1984)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !819, file: !114, line: 852, baseType: !39, size: 64, offset: 2048)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !819, file: !114, line: 853, baseType: !39, size: 64, offset: 2112)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !819, file: !114, line: 854, baseType: !365, size: 64, offset: 2176)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !819, file: !114, line: 855, baseType: !39, size: 64, offset: 2240)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !819, file: !114, line: 856, baseType: !39, size: 64, offset: 2304)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !819, file: !114, line: 857, baseType: !39, size: 64, offset: 2368)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !819, file: !114, line: 858, baseType: !39, size: 64, offset: 2432)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !819, file: !114, line: 865, baseType: !689, size: 32, offset: 2496)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !819, file: !114, line: 867, baseType: !59, size: 32, offset: 2528)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !819, file: !114, line: 869, baseType: !39, size: 64, offset: 2560)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !819, file: !114, line: 869, baseType: !39, size: 64, offset: 2624)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !819, file: !114, line: 869, baseType: !39, size: 64, offset: 2688)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !819, file: !114, line: 869, baseType: !39, size: 64, offset: 2752)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !819, file: !114, line: 870, baseType: !39, size: 64, offset: 2816)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !819, file: !114, line: 870, baseType: !39, size: 64, offset: 2880)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !819, file: !114, line: 870, baseType: !39, size: 64, offset: 2944)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !819, file: !114, line: 871, baseType: !39, size: 64, offset: 3008)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !819, file: !114, line: 871, baseType: !39, size: 64, offset: 3072)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !819, file: !114, line: 871, baseType: !39, size: 64, offset: 3136)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !819, file: !114, line: 871, baseType: !39, size: 64, offset: 3200)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !819, file: !114, line: 873, baseType: !904, size: 3328, offset: 3264)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 52)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !819, file: !114, line: 875, baseType: !908, size: 1280, offset: 6592)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 1280, elements: !478)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !910, line: 22, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 23, baseType: !372, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !910, line: 24, baseType: !369, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !909, file: !910, line: 26, baseType: !97, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !910, line: 28, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !819, file: !114, line: 877, baseType: !920, size: 64, offset: 7872)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !114, line: 877, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !819, file: !114, line: 880, baseType: !923, size: 1088, offset: 7936)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !924, line: 72, baseType: !925)
!924 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 23, size: 1088, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !934, !935, !936, !937, !963, !964, !965}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !925, file: !924, line: 28, baseType: !569, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !925, file: !924, line: 38, baseType: !365, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !925, file: !924, line: 40, baseType: !39, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !925, file: !924, line: 43, baseType: !871, size: 320, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !925, file: !924, line: 44, baseType: !932, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !924, line: 44, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !924, line: 48, baseType: !39, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !925, file: !924, line: 59, baseType: !359, size: 256, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !925, file: !924, line: 60, baseType: !20, size: 64, offset: 896)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !925, file: !924, line: 61, baseType: !938, size: 64, offset: 960)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !941, line: 13, size: 1216, elements: !942)
!941 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !940, file: !941, line: 14, baseType: !20, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !940, file: !941, line: 15, baseType: !39, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !940, file: !941, line: 17, baseType: !39, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !940, file: !941, line: 17, baseType: !39, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !940, file: !941, line: 18, baseType: !39, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !940, file: !941, line: 18, baseType: !39, size: 64, offset: 320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !940, file: !941, line: 19, baseType: !340, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !940, file: !941, line: 21, baseType: !951, size: 64, offset: 448)
!951 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !940, file: !941, line: 23, baseType: !951, size: 64, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !940, file: !941, line: 24, baseType: !951, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !940, file: !941, line: 25, baseType: !951, size: 64, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !940, file: !941, line: 26, baseType: !951, size: 64, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !940, file: !941, line: 27, baseType: !951, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !940, file: !941, line: 28, baseType: !951, size: 64, offset: 832)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !940, file: !941, line: 29, baseType: !951, size: 64, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !940, file: !941, line: 30, baseType: !951, size: 64, offset: 960)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !940, file: !941, line: 31, baseType: !951, size: 64, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !940, file: !941, line: 32, baseType: !951, size: 64, offset: 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !940, file: !941, line: 33, baseType: !951, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !925, file: !924, line: 63, baseType: !49, size: 32, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !925, file: !924, line: 69, baseType: !93, size: 16, offset: 1056)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !925, file: !924, line: 70, baseType: !966, size: 16, offset: 1072)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !968)
!968 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !114, line: 882, baseType: !39, size: 64, offset: 9024)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !819, file: !114, line: 885, baseType: !59, size: 32, offset: 9088)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !819, file: !114, line: 886, baseType: !972, size: 64, offset: 9152)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !114, line: 732, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !819, file: !114, line: 901, baseType: !975, size: 64, offset: 9216)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !977, line: 68, size: 4800, elements: !978)
!977 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!978 = !{!979, !1001, !1002, !1003, !1004, !1005, !1013, !1020, !1031, !1032, !1035, !1036, !1146, !1147, !1159, !1229, !1230, !1244, !1246}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !976, file: !977, line: 69, baseType: !980, size: 576)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !977, line: 23, size: 576, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !980, file: !977, line: 24, baseType: !521, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !977, line: 25, baseType: !984, size: 512, offset: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !977, line: 25, size: 512, elements: !985)
!985 = !{!986, !995}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !984, file: !977, line: 26, baseType: !987, size: 480)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 480, elements: !993)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !977, line: 17, size: 96, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !988, file: !977, line: 18, baseType: !521, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !988, file: !977, line: 19, baseType: !521, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !988, file: !977, line: 20, baseType: !521, size: 32, offset: 64)
!993 = !{!994}
!994 = !DISubrange(count: 5)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !977, line: 27, baseType: !996, size: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !977, line: 27, size: 128, elements: !997)
!997 = !{!998, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !996, file: !977, line: 28, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !996, file: !977, line: 29, baseType: !999, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !976, file: !977, line: 70, baseType: !980, size: 576, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !976, file: !977, line: 71, baseType: !980, size: 576, offset: 1152)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !976, file: !977, line: 72, baseType: !975, size: 64, offset: 1728)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !976, file: !977, line: 73, baseType: !22, size: 32, offset: 1792)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !976, file: !977, line: 74, baseType: !1006, size: 32, offset: 1824)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1007, line: 23, baseType: !1008)
!1007 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 21, size: 32, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1008, file: !1007, line: 22, baseType: !1011, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !976, file: !977, line: 75, baseType: !1014, size: 32, offset: 1856)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1007, line: 28, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 26, size: 32, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1015, file: !1007, line: 27, baseType: !1018, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !976, file: !977, line: 76, baseType: !1021, size: 192, offset: 1920)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1022, line: 9, size: 192, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1023 = !{!1024, !1025, !1029, !1030}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1021, file: !1022, line: 10, baseType: !363, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1021, file: !1022, line: 11, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1022, line: 7, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1021, file: !1022, line: 12, baseType: !7, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1021, file: !1022, line: 13, baseType: !460, size: 32, offset: 160)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !977, line: 77, baseType: !39, size: 64, offset: 2112)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !976, file: !977, line: 80, baseType: !1033, size: 8, offset: 2176)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !1034)
!1034 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !976, file: !977, line: 88, baseType: !97, size: 128, offset: 2240)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !976, file: !977, line: 89, baseType: !1037, size: 64, offset: 2368)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1039, line: 195, size: 1728, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1040 = !{!1041, !1042, !1045, !1050, !1051, !1054, !1055, !1062, !1063, !1064, !1065, !1068, !1069, !1070, !1071, !1072, !1110, !1131}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1038, file: !1039, line: 196, baseType: !460, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1038, file: !1039, line: 197, baseType: !1043, size: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1039, line: 28, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !917)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !1039, line: 198, baseType: !1046, size: 192, offset: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !1039, line: 198, size: 192, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1046, file: !1039, line: 199, baseType: !97, size: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1046, file: !1039, line: 200, baseType: !561, size: 192, align: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1038, file: !1039, line: 205, baseType: !871, size: 320, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1038, file: !1039, line: 206, baseType: !1052, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1039, line: 206, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1038, file: !1039, line: 207, baseType: !20, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !1039, line: 208, baseType: !1056, size: 64, offset: 704)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !1039, line: 208, size: 64, elements: !1057)
!1057 = !{!1058, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1056, file: !1039, line: 209, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1060, line: 8, baseType: !370)
!1060 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1056, file: !1039, line: 210, baseType: !1059, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1038, file: !1039, line: 212, baseType: !1059, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1038, file: !1039, line: 213, baseType: !1006, size: 32, offset: 832)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1038, file: !1039, line: 214, baseType: !1014, size: 32, offset: 864)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1038, file: !1039, line: 215, baseType: !1066, size: 32, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1039, line: 31, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !521)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1038, file: !1039, line: 216, baseType: !26, size: 16, offset: 928)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1038, file: !1039, line: 217, baseType: !26, size: 16, offset: 944)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1038, file: !1039, line: 221, baseType: !968, size: 16, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !1039, line: 228, baseType: !39, size: 64, offset: 1024)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !1039, line: 245, baseType: !1073, size: 320, offset: 1088)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !1039, line: 245, size: 320, elements: !1074)
!1074 = !{!1075, !1102}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1073, file: !1039, line: 246, baseType: !1076, size: 320)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1039, line: 114, size: 320, elements: !1077)
!1077 = !{!1078, !1079, !1091, !1094, !1101}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1076, file: !1039, line: 116, baseType: !39, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !1039, line: 117, baseType: !1080, size: 64, offset: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1076, file: !1039, line: 117, size: 64, elements: !1081)
!1081 = !{!1082, !1090}
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !1039, line: 118, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1039, line: 118, size: 64, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1083, file: !1039, line: 120, baseType: !93, size: 16)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1083, file: !1039, line: 121, baseType: !1087, size: 48, offset: 16)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !1088)
!1088 = !{!1089}
!1089 = !DISubrange(count: 6)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1080, file: !1039, line: 127, baseType: !39, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1076, file: !1039, line: 129, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1039, line: 102, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1076, file: !1039, line: 130, baseType: !1095, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1039, line: 108, size: 192, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1096, file: !1039, line: 109, baseType: !413, size: 128, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1096, file: !1039, line: 110, baseType: !460, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1096, file: !1039, line: 111, baseType: !1033, size: 8, offset: 160)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1076, file: !1039, line: 131, baseType: !16, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1039, line: 247, baseType: !1103, size: 320)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !1039, line: 247, size: 320, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1103, file: !1039, line: 248, baseType: !39, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1103, file: !1039, line: 249, baseType: !39, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !1039, line: 250, baseType: !1092, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1103, file: !1039, line: 251, baseType: !1095, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1103, file: !1039, line: 252, baseType: !351, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !1039, line: 260, baseType: !1111, size: 256, offset: 1408)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !1039, line: 260, size: 256, elements: !1112)
!1112 = !{!1113, !1119}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1111, file: !1039, line: 261, baseType: !1114, size: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1039, line: 134, size: 256, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1114, file: !1039, line: 135, baseType: !20, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1114, file: !1039, line: 136, baseType: !1118, size: 256)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !478)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !1039, line: 262, baseType: !1120, size: 256)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1111, file: !1039, line: 262, size: 256, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1120, file: !1039, line: 264, baseType: !97, size: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1120, file: !1039, line: 265, baseType: !1124, size: 128, offset: 128)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1125, line: 22, size: 128, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1126 = !{!1127, !1130}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1124, file: !1125, line: 23, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1125, line: 23, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1124, file: !1125, line: 24, baseType: !39, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1038, file: !1039, line: 280, baseType: !1132, size: 64, offset: 1664)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1039, line: 176, size: 192, elements: !1134)
!1134 = !{!1135, !1144, !1145}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1133, file: !1039, line: 177, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1039, line: 171, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!22, !1037, !1140, !1142, !1037}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1133, file: !1039, line: 178, baseType: !1037, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1133, file: !1039, line: 179, baseType: !1092, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !976, file: !977, line: 90, baseType: !871, size: 320, offset: 2432)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !976, file: !977, line: 97, baseType: !1148, size: 256, offset: 2752)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1149, line: 98, size: 256, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1150 = !{!1151, !1152, !1153}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1148, file: !1149, line: 99, baseType: !363, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1148, file: !1149, line: 100, baseType: !97, size: 128, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1148, file: !1149, line: 101, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1149, line: 21, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !976, file: !977, line: 99, baseType: !1160, size: 768, offset: 3008)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !1161)
!1161 = !{!1162, !1167}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1160, file: !12, line: 200, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!22, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1160, file: !12, line: 201, baseType: !1168, size: 704, offset: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !1169)
!1169 = !{!1170, !1228}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1168, file: !12, line: 195, baseType: !1171, size: 640)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !1172)
!1172 = !{!1173, !1185, !1197, !1198, !1218, !1219, !1221, !1227}
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !12, line: 174, baseType: !1174, size: 192)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !12, line: 174, size: 192, elements: !1175)
!1175 = !{!1176, !1184}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !12, line: 175, baseType: !1177, size: 192)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !12, line: 175, size: 192, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1177, file: !12, line: 176, baseType: !33, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1177, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1177, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1177, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1177, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1174, file: !12, line: 182, baseType: !413, size: 128, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1171, file: !12, line: 184, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1188, line: 26, size: 256, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1187, file: !1188, line: 27, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1187, file: !1188, line: 28, baseType: !1192, size: 192, offset: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1193, line: 43, size: 192, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1192, file: !1193, line: 44, baseType: !372, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1192, file: !1193, line: 45, baseType: !97, size: 128, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1171, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1171, file: !12, line: 186, baseType: !1199, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1201)
!1201 = !{!1202, !1203, !1207, !1214}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1200, file: !12, line: 205, baseType: !1160, size: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1200, file: !12, line: 206, baseType: !1204, size: 64, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1166, !1199}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1200, file: !12, line: 207, baseType: !1208, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1211, !1212, !1213}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1200, file: !12, line: 209, baseType: !1215, size: 64, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!22, !1211, !33}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1171, file: !12, line: 187, baseType: !1166, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1171, file: !12, line: 188, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1171, file: !12, line: 189, baseType: !1222, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1223, file: !12, line: 158, baseType: !561, size: 192, align: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1223, file: !12, line: 159, baseType: !1211, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1171, file: !12, line: 190, baseType: !469, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1168, file: !12, line: 196, baseType: !701, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !976, file: !977, line: 100, baseType: !1211, size: 64, offset: 3776)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !976, file: !977, line: 102, baseType: !1231, size: 64, offset: 3840)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !977, line: 107, size: 1152, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1242}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1232, file: !977, line: 108, baseType: !473, size: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1232, file: !977, line: 109, baseType: !975, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1232, file: !977, line: 110, baseType: !1006, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1232, file: !977, line: 111, baseType: !49, size: 32, offset: 224)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1232, file: !977, line: 112, baseType: !1239, size: 640, offset: 256)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 640, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 10)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1232, file: !977, line: 113, baseType: !1243, size: 256, offset: 896)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !478)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !976, file: !977, line: 103, baseType: !1245, size: 640, offset: 3904)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 640, elements: !1240)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !976, file: !977, line: 104, baseType: !1247, size: 256, offset: 4544)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 256, elements: !478)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !819, file: !114, line: 904, baseType: !843, size: 64, offset: 9280)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !819, file: !114, line: 906, baseType: !1250, size: 64, offset: 9344)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !114, line: 906, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !819, file: !114, line: 930, baseType: !49, size: 32, offset: 9408)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !819, file: !114, line: 933, baseType: !49, size: 32, offset: 9440)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !819, file: !114, line: 935, baseType: !1255, size: 64, offset: 9472)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !254, line: 103, size: 64, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1255, file: !254, line: 104, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !254, line: 101, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !819, file: !114, line: 940, baseType: !363, size: 64, offset: 9536)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !819, file: !114, line: 942, baseType: !1148, size: 256, offset: 9600)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !816, file: !114, line: 986, baseType: !1263, offset: 10240)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: -1)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !511, file: !512, line: 882, baseType: !815, size: 64, offset: 9792)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !511, file: !512, line: 884, baseType: !22, size: 32, offset: 9856)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !511, file: !512, line: 885, baseType: !22, size: 32, offset: 9888)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !511, file: !512, line: 886, baseType: !22, size: 32, offset: 9920)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !511, file: !512, line: 888, baseType: !22, size: 32, offset: 9952)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !511, file: !512, line: 890, baseType: !39, size: 64, offset: 9984)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !511, file: !512, line: 893, baseType: !7, size: 32, offset: 10048)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !511, file: !512, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !511, file: !512, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !511, file: !512, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !511, file: !512, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !511, file: !512, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !511, file: !512, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !511, file: !512, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !511, file: !512, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !511, file: !512, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !511, file: !512, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !511, file: !512, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !511, file: !512, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !511, file: !512, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !511, file: !512, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !511, file: !512, line: 969, baseType: !39, size: 64, offset: 10176)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !511, file: !512, line: 971, baseType: !1289, size: 448, offset: 10240)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !1290)
!1290 = !{!1291, !1292, !1297}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1289, file: !108, line: 26, baseType: !39, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1289, file: !108, line: 27, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!951, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !108, line: 28, baseType: !1298, size: 320, offset: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !108, line: 28, size: 320, elements: !1299)
!1299 = !{!1300, !1310, !1335}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1298, file: !108, line: 37, baseType: !1301, size: 320)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !108, line: 30, size: 320, elements: !1302)
!1302 = !{!1303, !1305, !1306, !1307, !1308, !1309}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1301, file: !108, line: 31, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1301, file: !108, line: 32, baseType: !521, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !108, line: 33, baseType: !521, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1301, file: !108, line: 34, baseType: !521, size: 32, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1301, file: !108, line: 35, baseType: !569, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1301, file: !108, line: 36, baseType: !1304, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1298, file: !108, line: 47, baseType: !1311, size: 192)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !108, line: 39, size: 192, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1334}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1311, file: !108, line: 40, baseType: !681, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1311, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !108, line: 42, baseType: !1316, size: 64, offset: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !108, line: 42, size: 64, elements: !1317)
!1317 = !{!1318, !1326}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1316, file: !108, line: 43, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1321, line: 7, size: 128, elements: !1322)
!1321 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1322 = !{!1323, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1320, file: !1321, line: 8, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1320, file: !1321, line: 9, baseType: !43, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1316, file: !108, line: 44, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1329, line: 7, size: 64, elements: !1330)
!1329 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1330 = !{!1331, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1328, file: !1329, line: 8, baseType: !1332, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1329, line: 5, baseType: !917)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1328, file: !1329, line: 9, baseType: !917, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1311, file: !108, line: 46, baseType: !569, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1298, file: !108, line: 55, baseType: !1336, size: 256)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !108, line: 49, size: 256, elements: !1337)
!1337 = !{!1338, !1346, !1347, !1348, !1349}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1336, file: !108, line: 50, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1341, line: 36, size: 64, elements: !1342)
!1341 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1340, file: !1341, line: 37, baseType: !22, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1340, file: !1341, line: 38, baseType: !968, size: 16, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1340, file: !1341, line: 39, baseType: !968, size: 16, offset: 48)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1336, file: !108, line: 51, baseType: !22, size: 32, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1336, file: !108, line: 52, baseType: !22, size: 32, offset: 96)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1336, file: !108, line: 53, baseType: !39, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1336, file: !108, line: 54, baseType: !39, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !511, file: !512, line: 973, baseType: !1351, size: 32, offset: 10688)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !511, file: !512, line: 974, baseType: !1351, size: 32, offset: 10720)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !511, file: !512, line: 978, baseType: !39, size: 64, offset: 10752)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !511, file: !512, line: 987, baseType: !510, size: 64, offset: 10816)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !511, file: !512, line: 990, baseType: !510, size: 64, offset: 10880)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !511, file: !512, line: 995, baseType: !97, size: 128, offset: 10944)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !511, file: !512, line: 996, baseType: !97, size: 128, offset: 11072)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !511, file: !512, line: 997, baseType: !510, size: 64, offset: 11200)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !511, file: !512, line: 1005, baseType: !97, size: 128, offset: 11264)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !511, file: !512, line: 1006, baseType: !97, size: 128, offset: 11392)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !511, file: !512, line: 1009, baseType: !456, size: 64, offset: 11520)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !511, file: !512, line: 1010, baseType: !1364, size: 512, offset: 11584)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 512, elements: !478)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !511, file: !512, line: 1011, baseType: !97, size: 128, offset: 12096)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !511, file: !512, line: 1012, baseType: !97, size: 128, offset: 12224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !511, file: !512, line: 1014, baseType: !1186, size: 64, offset: 12352)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !511, file: !512, line: 1017, baseType: !1369, size: 64, offset: 12416)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !511, file: !512, line: 1020, baseType: !1369, size: 64, offset: 12480)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !511, file: !512, line: 1023, baseType: !20, size: 64, offset: 12544)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !511, file: !512, line: 1025, baseType: !569, size: 64, offset: 12608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !511, file: !512, line: 1026, baseType: !569, size: 64, offset: 12672)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !511, file: !512, line: 1031, baseType: !569, size: 64, offset: 12736)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !511, file: !512, line: 1032, baseType: !1376, size: 192, offset: 12800)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !512, line: 324, size: 192, elements: !1377)
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1376, file: !512, line: 326, baseType: !569, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1376, file: !512, line: 327, baseType: !569, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1376, file: !512, line: 328, baseType: !372, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !511, file: !512, line: 1041, baseType: !39, size: 64, offset: 12992)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !511, file: !512, line: 1042, baseType: !39, size: 64, offset: 13056)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !511, file: !512, line: 1045, baseType: !569, size: 64, offset: 13120)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !511, file: !512, line: 1048, baseType: !569, size: 64, offset: 13184)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !511, file: !512, line: 1051, baseType: !39, size: 64, offset: 13248)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !511, file: !512, line: 1052, baseType: !39, size: 64, offset: 13312)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !511, file: !512, line: 1055, baseType: !1388, size: 640, offset: 13376)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1389, line: 132, size: 640, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1390 = !{!1391, !1397, !1398}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1388, file: !1389, line: 133, baseType: !1392, size: 576)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, size: 576, elements: !452)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1389, line: 117, size: 192, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1393, file: !1389, line: 118, baseType: !569, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1393, file: !1389, line: 119, baseType: !695, size: 128, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1388, file: !1389, line: 134, baseType: !7, size: 32, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1388, file: !1389, line: 135, baseType: !7, size: 32, offset: 608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !511, file: !512, line: 1058, baseType: !1400, size: 448, offset: 14016)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1389, line: 144, size: 448, elements: !1401)
!1401 = !{!1402, !1403, !1404}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1400, file: !1389, line: 145, baseType: !413, size: 128, align: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1400, file: !1389, line: 146, baseType: !359, size: 256, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1400, file: !1389, line: 147, baseType: !7, size: 32, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !511, file: !512, line: 1064, baseType: !1406, size: 64, offset: 14464)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1409, line: 110, size: 1472, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1460, !1461, !1462, !1470}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1408, file: !1409, line: 111, baseType: !363, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1408, file: !1409, line: 112, baseType: !1006, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1408, file: !1409, line: 113, baseType: !1014, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1408, file: !1409, line: 114, baseType: !1006, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1408, file: !1409, line: 115, baseType: !1014, size: 32, offset: 160)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1408, file: !1409, line: 116, baseType: !1006, size: 32, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1408, file: !1409, line: 117, baseType: !1014, size: 32, offset: 224)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1408, file: !1409, line: 118, baseType: !1006, size: 32, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1408, file: !1409, line: 119, baseType: !1014, size: 32, offset: 288)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1408, file: !1409, line: 120, baseType: !7, size: 32, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1408, file: !1409, line: 121, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1423, line: 24, baseType: !1424)
!1423 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1423, line: 24, size: 64, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1424, file: !1423, line: 24, baseType: !569, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1408, file: !1409, line: 122, baseType: !1422, size: 64, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1408, file: !1409, line: 123, baseType: !1422, size: 64, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1408, file: !1409, line: 124, baseType: !1422, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1408, file: !1409, line: 125, baseType: !1422, size: 64, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1408, file: !1409, line: 127, baseType: !87, size: 8, offset: 704)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1408, file: !1409, line: 129, baseType: !1037, size: 64, offset: 768)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1408, file: !1409, line: 130, baseType: !1037, size: 64, offset: 832)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1408, file: !1409, line: 131, baseType: !1037, size: 64, offset: 896)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1408, file: !1409, line: 132, baseType: !1037, size: 64, offset: 960)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1408, file: !1409, line: 135, baseType: !20, size: 64, offset: 1024)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1408, file: !1409, line: 137, baseType: !1438, size: 64, offset: 1088)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1440, line: 14, size: 1088, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1439, file: !1440, line: 15, baseType: !460, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1439, file: !1440, line: 17, baseType: !909, size: 320, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1439, file: !1440, line: 19, baseType: !39, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1439, file: !1440, line: 20, baseType: !363, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1439, file: !1440, line: 23, baseType: !473, size: 128, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1439, file: !1440, line: 24, baseType: !1006, size: 32, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1439, file: !1440, line: 29, baseType: !363, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1439, file: !1440, line: 36, baseType: !1450, size: 320, offset: 768)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1451, line: 15, size: 320, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1450, file: !1451, line: 16, baseType: !372, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1450, file: !1451, line: 18, baseType: !22, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1450, file: !1451, line: 19, baseType: !22, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1450, file: !1451, line: 20, baseType: !22, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1450, file: !1451, line: 21, baseType: !22, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1450, file: !1451, line: 22, baseType: !39, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1451, line: 23, baseType: !39, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1408, file: !1409, line: 138, baseType: !975, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1408, file: !1409, line: 139, baseType: !1231, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1408, file: !1409, line: 140, baseType: !1463, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1409, line: 25, size: 64, elements: !1465)
!1465 = !{!1466, !1467, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1464, file: !1409, line: 26, baseType: !49, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1464, file: !1409, line: 27, baseType: !22, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1464, file: !1409, line: 28, baseType: !1469, offset: 64)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, elements: !1264)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 142, baseType: !1471, size: 128, offset: 1344)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 142, size: 128, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1471, file: !1409, line: 143, baseType: !22, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1471, file: !1409, line: 144, baseType: !413, size: 128, align: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !511, file: !512, line: 1067, baseType: !1406, size: 64, offset: 14528)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !511, file: !512, line: 1070, baseType: !1406, size: 64, offset: 14592)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !511, file: !512, line: 1074, baseType: !1037, size: 64, offset: 14656)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !511, file: !512, line: 1084, baseType: !1479, size: 128, offset: 14720)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 16)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !511, file: !512, line: 1086, baseType: !1483, size: 64, offset: 14848)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !512, line: 55, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !511, file: !512, line: 1089, baseType: !1486, size: 64, offset: 14912)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1487, line: 12, size: 64, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1486, file: !1487, line: 13, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1487, line: 8, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !511, file: !512, line: 1090, baseType: !1493, size: 128, offset: 14976)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1494, line: 13, size: 128, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1493, file: !1494, line: 14, baseType: !97, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !511, file: !512, line: 1097, baseType: !1498, size: 64, offset: 15104)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !512, line: 50, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !511, file: !512, line: 1100, baseType: !1501, size: 64, offset: 15168)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !512, line: 1100, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !511, file: !512, line: 1103, baseType: !1504, size: 64, offset: 15232)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !512, line: 53, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !511, file: !512, line: 1107, baseType: !1507, size: 64, offset: 15296)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1509, line: 31, size: 576, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1510 = !{!1511, !1512, !1515, !1518, !1521, !1522, !1525, !1528, !1529}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1508, file: !1509, line: 32, baseType: !460, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1508, file: !1509, line: 33, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1509, line: 9, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1508, file: !1509, line: 34, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1509, line: 10, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1508, file: !1509, line: 35, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1509, line: 8, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1508, file: !1509, line: 36, baseType: !489, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1508, file: !1509, line: 37, baseType: !1523, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1039, line: 34, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1508, file: !1509, line: 38, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1509, line: 38, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1508, file: !1509, line: 39, baseType: !1526, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1508, file: !1509, line: 40, baseType: !1530, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1532, line: 771, size: 384, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1533 = !{!1534, !1535, !1536, !1537}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1531, file: !1532, line: 772, baseType: !1021, size: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1531, file: !1532, line: 773, baseType: !975, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1531, file: !1532, line: 774, baseType: !1231, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1531, file: !1532, line: 775, baseType: !1538, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1540, line: 209, size: 4736, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1541 = !{!1542, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1539, file: !1540, line: 215, baseType: !1543, size: 896)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1544, size: 896, elements: !5247)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1540, line: 152, size: 1600, elements: !1546)
!1546 = !{!1547, !5298, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5416}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1545, file: !1540, line: 154, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1540, line: 389, size: 7872, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !5212, !5218, !5219, !5223, !5224, !5225, !5226, !5227, !5228, !5244, !5245, !5249, !5250, !5251, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5285, !5288, !5289, !5296}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1549, file: !1540, line: 391, baseType: !1545, size: 1600)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1540, line: 393, baseType: !39, size: 64, offset: 1600)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1549, file: !1540, line: 401, baseType: !22, size: 32, offset: 1664)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1549, file: !1540, line: 404, baseType: !22, size: 32, offset: 1696)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1549, file: !1540, line: 417, baseType: !22, size: 32, offset: 1728)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1549, file: !1540, line: 418, baseType: !22, size: 32, offset: 1760)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1549, file: !1540, line: 419, baseType: !22, size: 32, offset: 1792)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1549, file: !1540, line: 432, baseType: !22, size: 32, offset: 1824)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1549, file: !1540, line: 433, baseType: !22, size: 32, offset: 1856)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1549, file: !1540, line: 434, baseType: !22, size: 32, offset: 1888)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1549, file: !1540, line: 436, baseType: !22, size: 32, offset: 1920)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1549, file: !1540, line: 439, baseType: !7, size: 32, offset: 1952)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1549, file: !1540, line: 441, baseType: !1564, size: 64, offset: 1984)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1566, line: 190, size: 1152, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !5204, !5205, !5206, !5207, !5208, !5211}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1565, file: !1566, line: 191, baseType: !49, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1565, file: !1566, line: 192, baseType: !49, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1565, file: !1566, line: 202, baseType: !1564, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1565, file: !1566, line: 203, baseType: !16, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1565, file: !1566, line: 205, baseType: !561, size: 192, align: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1565, file: !1566, line: 207, baseType: !340, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1565, file: !1566, line: 208, baseType: !7, size: 32, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !1566, line: 209, baseType: !1576, size: 256, offset: 512)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !1566, line: 209, size: 256, elements: !1577)
!1577 = !{!1578, !1587, !1591}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1576, file: !1566, line: 210, baseType: !1579, size: 256)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1566, line: 153, size: 256, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1586}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1579, file: !1566, line: 154, baseType: !39, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1579, file: !1566, line: 156, baseType: !701, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1579, file: !1566, line: 162, baseType: !1584, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1566, line: 162, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1579, file: !1566, line: 167, baseType: !39, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1576, file: !1566, line: 211, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1566, line: 170, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1588, file: !1566, line: 171, baseType: !1564, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1576, file: !1566, line: 212, baseType: !1592, size: 256)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1566, line: 174, size: 256, elements: !1593)
!1593 = !{!1594, !5199, !5202, !5203}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1592, file: !1566, line: 175, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1566, line: 271, size: 768, elements: !1598)
!1598 = !{!1599, !5176, !5180, !5181, !5182, !5183, !5184, !5188, !5189, !5190, !5191, !5195}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1597, file: !1566, line: 276, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!22, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1566, line: 251, size: 1216, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1604, file: !1566, line: 253, baseType: !1564, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1604, file: !1566, line: 254, baseType: !843, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1604, file: !1566, line: 255, baseType: !346, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1604, file: !1566, line: 256, baseType: !20, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1604, file: !1566, line: 259, baseType: !359, size: 256, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1604, file: !1566, line: 260, baseType: !359, size: 256, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1604, file: !1566, line: 261, baseType: !22, size: 32, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1604, file: !1566, line: 262, baseType: !97, size: 128, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1604, file: !1566, line: 263, baseType: !351, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1604, file: !1566, line: 265, baseType: !35, size: 64, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1604, file: !1566, line: 266, baseType: !1033, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1604, file: !1566, line: 267, baseType: !1033, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1604, file: !1566, line: 268, baseType: !1619, size: 64, offset: 1152)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1622, line: 563, size: 1024, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1623 = !{!1624, !1680, !1681, !1685, !1689, !1693, !5142, !5146, !5150, !5154, !5155, !5156, !5160, !5164, !5168, !5172}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1621, file: !1622, line: 564, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !114, line: 625, size: 1344, elements: !1630)
!1630 = !{!1631, !1640, !1641, !1647, !1654, !1655, !1660, !1661, !1666, !1667, !1670, !1671, !1672, !1673, !1674, !1675, !1678}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !114, line: 628, baseType: !1632, size: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !114, line: 628, size: 128, elements: !1633)
!1633 = !{!1634, !1639}
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !114, line: 629, baseType: !1635, size: 128)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1632, file: !114, line: 629, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1635, file: !114, line: 631, baseType: !39, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1635, file: !114, line: 632, baseType: !39, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1632, file: !114, line: 635, baseType: !413, size: 128, align: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1629, file: !114, line: 639, baseType: !815, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1629, file: !114, line: 640, baseType: !1642, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !852, line: 297, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !852, line: 297, size: 64, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1643, file: !852, line: 297, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !857, line: 19, baseType: !39)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !114, line: 646, baseType: !1648, size: 64, offset: 256)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !114, line: 646, size: 64, elements: !1649)
!1649 = !{!1650, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1648, file: !114, line: 647, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !114, line: 542, baseType: !39)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1648, file: !114, line: 648, baseType: !1652, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1629, file: !114, line: 666, baseType: !22, size: 32, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1629, file: !114, line: 667, baseType: !1656, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !114, line: 579, size: 320, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1657, file: !114, line: 580, baseType: !871, size: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1629, file: !114, line: 670, baseType: !1033, size: 8, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1629, file: !114, line: 681, baseType: !1662, size: 256, offset: 512)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !114, line: 678, size: 256, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1662, file: !114, line: 679, baseType: !561, size: 192, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1662, file: !114, line: 680, baseType: !39, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1629, file: !114, line: 689, baseType: !97, size: 128, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1629, file: !114, line: 691, baseType: !1668, size: 64, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !114, line: 691, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1629, file: !114, line: 694, baseType: !1619, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1629, file: !114, line: 697, baseType: !39, size: 64, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1629, file: !114, line: 699, baseType: !843, size: 64, offset: 1088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1629, file: !114, line: 700, baseType: !20, size: 64, offset: 1152)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1629, file: !114, line: 711, baseType: !363, size: 64, offset: 1216)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1629, file: !114, line: 717, baseType: !1676, size: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !114, line: 717, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1629, file: !114, line: 722, baseType: !1679, offset: 1344)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !114, line: 570, elements: !836)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1621, file: !1622, line: 569, baseType: !1625, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1621, file: !1622, line: 571, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!22, !1628, !39}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1621, file: !1622, line: 572, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!22, !1628}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1621, file: !1622, line: 578, baseType: !1690, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!22, !1628, !39, !39, !39}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1621, file: !1622, line: 580, baseType: !1694, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !114, line: 1184, baseType: !7)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1622, line: 512, size: 896, elements: !1700)
!1700 = !{!1701, !1709, !1710, !1717, !1724, !1734, !5135, !5136, !5138, !5140}
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1622, line: 513, baseType: !1702, size: 320)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !1622, line: 513, size: 320, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1702, file: !1622, line: 514, baseType: !1628, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1702, file: !1622, line: 515, baseType: !503, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1702, file: !1622, line: 516, baseType: !39, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1702, file: !1622, line: 517, baseType: !39, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1702, file: !1622, line: 518, baseType: !39, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1622, line: 520, baseType: !113, size: 32, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1699, file: !1622, line: 522, baseType: !1711, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !857, line: 22, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 22, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1713, file: !857, line: 22, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !857, line: 15, baseType: !39)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1699, file: !1622, line: 524, baseType: !1718, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !852, line: 372, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 372, size: 64, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1720, file: !852, line: 372, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !857, line: 16, baseType: !39)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1622, line: 527, baseType: !1725, size: 64, offset: 512)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1622, line: 527, size: 64, elements: !1726)
!1726 = !{!1727, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1725, file: !1622, line: 528, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !857, line: 21, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 21, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1729, file: !857, line: 21, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !857, line: 14, baseType: !39)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1725, file: !1622, line: 529, baseType: !1712, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1699, file: !1622, line: 534, baseType: !1735, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !114, line: 74, size: 512, align: 128, elements: !1737)
!1737 = !{!1738, !1739, !5129, !5134}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1736, file: !114, line: 75, baseType: !39, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !114, line: 83, baseType: !1740, size: 320, offset: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !114, line: 83, size: 320, elements: !1741)
!1741 = !{!1742, !5035, !5049, !5053, !5128}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !114, line: 84, baseType: !1743, size: 320)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !114, line: 84, size: 320, elements: !1744)
!1744 = !{!1745, !1756, !5029, !5034}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !114, line: 90, baseType: !1746, size: 128)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !114, line: 90, size: 128, elements: !1747)
!1747 = !{!1748, !1749, !1754, !1755}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1746, file: !114, line: 91, baseType: !97, size: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !114, line: 94, baseType: !1750, size: 128)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !114, line: 94, size: 128, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1750, file: !114, line: 96, baseType: !20, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1750, file: !114, line: 98, baseType: !7, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1746, file: !114, line: 102, baseType: !97, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1746, file: !114, line: 103, baseType: !97, size: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1743, file: !114, line: 106, baseType: !1757, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !228, line: 472, size: 1536, align: 64, elements: !1759)
!1759 = !{!1760, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !5023, !5024, !5025, !5026, !5027, !5028}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1758, file: !228, line: 473, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !228, line: 641, size: 4800, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1773, !1774, !4637, !4638, !4639, !4640, !4641, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4845, !4848, !4849, !4850, !4859, !4860, !4861, !4862}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1762, file: !228, line: 642, baseType: !24, size: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1762, file: !228, line: 643, baseType: !26, size: 16, offset: 16)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1762, file: !228, line: 644, baseType: !1006, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1762, file: !228, line: 645, baseType: !97, size: 128, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1762, file: !228, line: 646, baseType: !1014, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1762, file: !228, line: 647, baseType: !7, size: 32, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1762, file: !228, line: 650, baseType: !1771, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !228, line: 607, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1762, file: !228, line: 651, baseType: !1771, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1762, file: !228, line: 654, baseType: !1775, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !228, line: 1966, size: 2048, align: 512, elements: !1778)
!1778 = !{!1779, !4471, !4481, !4485, !4489, !4493, !4497, !4501, !4505, !4509, !4513, !4514, !4518, !4522, !4559, !4588, !4592, !4598, !4602, !4606, !4610, !4614, !4618, !4624, !4628}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1777, file: !228, line: 1967, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1783, !1761, !1783, !7}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1785, line: 82, size: 1536, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1786 = !{!1787, !1788, !1793, !1801, !1802, !1817, !1818, !1822, !1835, !4454, !4455, !4456, !4457, !4463, !4464, !4465}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1784, file: !1785, line: 84, baseType: !7, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1784, file: !1785, line: 85, baseType: !1789, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !685, line: 275, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !685, line: 275, size: 32, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1790, file: !685, line: 275, baseType: !689, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1784, file: !1785, line: 86, baseType: !1794, size: 128, offset: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1795, line: 38, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1796 = !{!1797, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1794, file: !1795, line: 39, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1794, file: !1795, line: 39, baseType: !1800, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1784, file: !1785, line: 87, baseType: !1783, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1784, file: !1785, line: 88, baseType: !1803, size: 128, offset: 256)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1785, line: 49, size: 128, elements: !1804)
!1804 = !{!1805, !1814}
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1785, line: 50, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1785, line: 50, size: 64, elements: !1807)
!1807 = !{!1808, !1813}
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1785, line: 51, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1806, file: !1785, line: 51, size: 64, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1809, file: !1785, line: 52, baseType: !521, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1809, file: !1785, line: 52, baseType: !521, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1806, file: !1785, line: 54, baseType: !569, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !1785, line: 56, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1784, file: !1785, line: 89, baseType: !1761, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1784, file: !1785, line: 91, baseType: !1819, size: 256, offset: 448)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1784, file: !1785, line: 94, baseType: !1823, size: 64, offset: 704)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1824, line: 25, size: 64, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !1824, line: 26, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !1824, line: 26, size: 64, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1827, file: !1824, line: 28, baseType: !570, size: 64, align: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !1824, line: 30, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1824, line: 30, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1831, file: !1824, line: 31, baseType: !59, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1831, file: !1824, line: 32, baseType: !22, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1784, file: !1785, line: 95, baseType: !1836, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1785, line: 128, size: 1024, align: 512, elements: !1839)
!1839 = !{!1840, !1844, !1845, !1852, !1858, !1862, !1866, !1870, !1871, !1875, !1879, !4444, !4448}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1838, file: !1785, line: 129, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!22, !1783, !7}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1838, file: !1785, line: 130, baseType: !1841, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1838, file: !1785, line: 131, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!22, !1849, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1838, file: !1785, line: 132, baseType: !1853, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!22, !1849, !7, !16, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1838, file: !1785, line: 134, baseType: !1859, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!22, !1849}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1838, file: !1785, line: 135, baseType: !1863, size: 64, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!22, !1783}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1838, file: !1785, line: 136, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1783}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1838, file: !1785, line: 137, baseType: !1867, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1838, file: !1785, line: 138, baseType: !1872, size: 64, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1783, !1761}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1838, file: !1785, line: 139, baseType: !1876, size: 64, offset: 576)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!351, !1783, !351, !22}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1838, file: !1785, line: 140, baseType: !1880, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1883, !4443}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1885, line: 70, size: 256, elements: !1886)
!1885 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1886 = !{!1887, !1888, !4439, !4440}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1884, file: !1885, line: 71, baseType: !1783, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1884, file: !1885, line: 72, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !228, line: 1190, size: 10752, elements: !1891)
!1891 = !{!1892, !1893, !1896, !1897, !1898, !1899, !4009, !4143, !4183, !4273, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4290, !4294, !4295, !4298, !4301, !4304, !4307, !4308, !4309, !4350, !4372, !4373, !4374, !4375, !4376, !4377, !4380, !4381, !4387, !4388, !4389, !4390, !4391, !4406, !4407, !4408, !4409, !4412, !4413, !4414, !4415, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1890, file: !228, line: 1191, baseType: !97, size: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1890, file: !228, line: 1192, baseType: !1894, size: 32, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1895)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !521)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1890, file: !228, line: 1193, baseType: !87, size: 8, offset: 160)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1890, file: !228, line: 1194, baseType: !39, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1890, file: !228, line: 1195, baseType: !41, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1890, file: !228, line: 1196, baseType: !1900, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !228, line: 2366, size: 576, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1911, !1915, !1919, !1923, !3997, !3998, !3999, !4001, !4002, !4003, !4005, !4006, !4007, !4008}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1901, file: !228, line: 2367, baseType: !16, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1901, file: !228, line: 2368, baseType: !22, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1901, file: !228, line: 2376, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!22, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1885, line: 21, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1901, file: !228, line: 2377, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !228, line: 75, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1901, file: !228, line: 2378, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1783, !1900, !22, !16, !20}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1901, file: !228, line: 2380, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1889}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1901, file: !228, line: 2381, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !130, line: 402, size: 9216, align: 512, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1933, !2113, !2139, !2140, !2141, !2142, !2146, !2149, !2150, !2151, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2219, !2223, !2243, !2260, !2261, !2262, !2263, !2272, !2295, !2296, !2299, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2313, !2314, !2413, !2421, !2422, !2423, !2425, !3975, !3976, !3985, !3986, !3987, !3988, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1925, file: !130, line: 403, baseType: !129, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1925, file: !130, line: 406, baseType: !97, size: 128, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1925, file: !130, line: 409, baseType: !1930, size: 448, offset: 192)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1931)
!1931 = !{!1932}
!1932 = !DISubrange(count: 56)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1925, file: !130, line: 417, baseType: !1934, size: 768, offset: 640)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !130, line: 45, size: 768, elements: !1935)
!1935 = !{!1936, !2107, !2108, !2109, !2112}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1934, file: !130, line: 46, baseType: !1937, size: 512)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1938, line: 64, size: 512, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1939 = !{!1940, !1941, !1942, !1944, !1988, !2096, !2097, !2102, !2103, !2104, !2105, !2106}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1937, file: !1938, line: 65, baseType: !16, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1937, file: !1938, line: 66, baseType: !97, size: 128, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1937, file: !1938, line: 67, baseType: !1943, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1937, file: !1938, line: 68, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1938, line: 168, size: 768, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1946, file: !1938, line: 169, baseType: !97, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1946, file: !1938, line: 170, baseType: !59, size: 32, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1946, file: !1938, line: 171, baseType: !1937, size: 512, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1946, file: !1938, line: 172, baseType: !1952, size: 64, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1938, line: 133, size: 192, elements: !1955)
!1955 = !{!1956, !1963, !1968}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1954, file: !1938, line: 134, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!22, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1954, file: !1938, line: 135, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!16, !1961}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1954, file: !1938, line: 136, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!22, !1961, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1938, line: 125, size: 20736, elements: !1975)
!1975 = !{!1976, !1978, !1982, !1983, !1987}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1974, file: !1938, line: 126, baseType: !1977, size: 192)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 192, elements: !452)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1974, file: !1938, line: 127, baseType: !1979, size: 4096, offset: 192)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 4096, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1974, file: !1938, line: 128, baseType: !22, size: 32, offset: 4288)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1974, file: !1938, line: 129, baseType: !1984, size: 16384, offset: 4320)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1985)
!1985 = !{!1986}
!1986 = !DISubrange(count: 2048)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1974, file: !1938, line: 130, baseType: !22, size: 32, offset: 20704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1937, file: !1938, line: 69, baseType: !1989, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1938, line: 116, size: 384, elements: !1992)
!1992 = !{!1993, !1997, !2019, !2057, !2088, !2092}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1991, file: !1938, line: 117, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1943}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1991, file: !1938, line: 118, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2001, line: 254, size: 128, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2002 = !{!2003, !2015}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2000, file: !2001, line: 255, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!2007, !1943, !2010, !351}
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !951)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2001, line: 30, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2011, file: !2001, line: 31, baseType: !16, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2011, file: !2001, line: 32, baseType: !24, size: 16, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2000, file: !2001, line: 256, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2007, !1943, !2010, !16, !35}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1991, file: !1938, line: 119, baseType: !2020, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2001, line: 84, size: 320, elements: !2024)
!2024 = !{!2025, !2026, !2030, !2053, !2055}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2023, file: !2001, line: 85, baseType: !16, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2023, file: !2001, line: 86, baseType: !2027, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!24, !1943, !2010, !22}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2023, file: !2001, line: 88, baseType: !2031, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!24, !1943, !2034, !22}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2001, line: 175, size: 512, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2044, !2048, !2049}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2035, file: !2001, line: 176, baseType: !2011, size: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2035, file: !2001, line: 177, baseType: !35, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2035, file: !2001, line: 178, baseType: !20, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2035, file: !2001, line: 179, baseType: !2041, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!1757}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2035, file: !2001, line: 180, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!2007, !843, !1943, !2034, !351, !41, !35}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2035, file: !2001, line: 182, baseType: !2045, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2035, file: !2001, line: 184, baseType: !2050, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!22, !843, !1943, !2034, !1628}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2023, file: !2001, line: 90, baseType: !2054, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2023, file: !2001, line: 91, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1991, file: !1938, line: 120, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2061, !1961}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !137, line: 39, size: 384, elements: !2064)
!2064 = !{!2065, !2066, !2070, !2074, !2080, !2084}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2063, file: !137, line: 40, baseType: !136, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2063, file: !137, line: 41, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!1033}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2063, file: !137, line: 42, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!20}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2063, file: !137, line: 43, baseType: !2075, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!340, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !284, line: 177, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2063, file: !137, line: 44, baseType: !2081, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!340}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2063, file: !137, line: 45, baseType: !2085, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !20}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1991, file: !1938, line: 121, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!340, !1961}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1991, file: !1938, line: 122, baseType: !2093, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !1961, !1212, !1213}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1937, file: !1938, line: 70, baseType: !1564, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1937, file: !1938, line: 71, baseType: !2098, size: 32, offset: 448)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2099, line: 19, size: 32, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2098, file: !2099, line: 20, baseType: !460, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1937, file: !1938, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1937, file: !1938, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1937, file: !1938, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1937, file: !1938, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1937, file: !1938, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1934, file: !130, line: 47, baseType: !1924, size: 64, offset: 512)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1934, file: !130, line: 48, baseType: !1943, size: 64, offset: 576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1934, file: !130, line: 49, baseType: !2110, size: 64, offset: 640)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !130, line: 49, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1934, file: !130, line: 50, baseType: !1186, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1925, file: !130, line: 418, baseType: !2114, size: 64, offset: 1408)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !130, line: 53, size: 448, elements: !2116)
!2116 = !{!2117, !2118, !2123, !2127, !2131, !2135}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2115, file: !130, line: 54, baseType: !2011, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2115, file: !130, line: 55, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2007, !2114, !2122, !351}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2115, file: !130, line: 57, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2007, !2114, !2122, !16, !35}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2115, file: !130, line: 59, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !1924, !16}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2115, file: !130, line: 60, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!22, !1924}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2115, file: !130, line: 61, baseType: !2136, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !1924}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1925, file: !130, line: 419, baseType: !16, size: 64, offset: 1472)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1925, file: !130, line: 420, baseType: !16, size: 64, offset: 1536)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1925, file: !130, line: 421, baseType: !1943, size: 64, offset: 1600)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1925, file: !130, line: 424, baseType: !2143, size: 64, offset: 1664)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2145)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !130, line: 424, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1925, file: !130, line: 425, baseType: !2147, size: 64, offset: 1728)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1925, file: !130, line: 426, baseType: !7, size: 32, offset: 1792)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1925, file: !130, line: 435, baseType: !359, size: 256, offset: 1856)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1925, file: !130, line: 437, baseType: !2152, size: 64, offset: 2112)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2154, line: 69, size: 320, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2155 = !{!2156, !2157, !2158, !2175, !2177, !2181, !2182}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2153, file: !2154, line: 70, baseType: !16, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2153, file: !2154, line: 71, baseType: !1924, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2153, file: !2154, line: 72, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2154, line: 47, size: 256, elements: !2162)
!2162 = !{!2163, !2164, !2170, !2174}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2154, line: 49, baseType: !7, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2161, file: !2154, line: 51, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!22, !16, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2161, file: !2154, line: 53, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!22, !351, !2168}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2161, file: !2154, line: 55, baseType: !2085, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2153, file: !2154, line: 73, baseType: !2176, size: 16, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2153, file: !2154, line: 74, baseType: !2178, size: 8, offset: 208)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2180)
!2180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 75, baseType: !83, size: 8, offset: 216)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !2154, line: 76, baseType: !2183, size: 64, offset: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !2154, line: 76, size: 64, elements: !2184)
!2184 = !{!2185, !2186, !2193}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2183, file: !2154, line: 77, baseType: !20, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2183, file: !2154, line: 78, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2154, line: 86, size: 128, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2189, file: !2154, line: 87, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2189, file: !2154, line: 88, baseType: !351, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2183, file: !2154, line: 79, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2154, line: 92, size: 256, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2202, !2203}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2196, file: !2154, line: 94, baseType: !7, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2196, file: !2154, line: 95, baseType: !7, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2196, file: !2154, line: 96, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2196, file: !2154, line: 97, baseType: !2159, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2196, file: !2154, line: 98, baseType: !20, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1925, file: !130, line: 438, baseType: !7, size: 32, offset: 2176)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1925, file: !130, line: 441, baseType: !7, size: 32, offset: 2208)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1925, file: !130, line: 442, baseType: !2143, size: 64, offset: 2240)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1925, file: !130, line: 443, baseType: !2147, size: 64, offset: 2304)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1925, file: !130, line: 444, baseType: !1033, size: 8, offset: 2368)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1925, file: !130, line: 451, baseType: !1033, size: 8, offset: 2376)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1925, file: !130, line: 454, baseType: !7, size: 32, offset: 2400)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1925, file: !130, line: 455, baseType: !2212, size: 64, offset: 2432)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2214, line: 23, size: 96, elements: !2215)
!2214 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2215 = !{!2216, !2217, !2218}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2213, file: !2214, line: 24, baseType: !22, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2213, file: !2214, line: 24, baseType: !22, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2213, file: !2214, line: 24, baseType: !22, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1925, file: !130, line: 458, baseType: !2220, size: 64, offset: 2496)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!22}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1925, file: !130, line: 460, baseType: !2224, size: 4032, align: 512, offset: 2560)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2225, size: 4032, elements: !2241)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !130, line: 362, size: 576, elements: !2226)
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2225, file: !130, line: 363, baseType: !20, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2225, file: !130, line: 364, baseType: !7, size: 32, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2225, file: !130, line: 367, baseType: !2230, size: 448, offset: 128)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !130, line: 319, size: 448, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2230, file: !130, line: 320, baseType: !1924, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2230, file: !130, line: 321, baseType: !2234, size: 384, offset: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2235, line: 40, size: 384, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2236 = !{!2237}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2234, file: !2235, line: 41, baseType: !2238, size: 384, align: 64)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 384, align: 64, elements: !2239)
!2239 = !{!2240}
!2240 = !DISubrange(count: 2)
!2241 = !{!2242}
!2242 = !DISubrange(count: 7)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1925, file: !130, line: 463, baseType: !2244, size: 192, offset: 6592)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2245, line: 8, size: 192, elements: !2246)
!2245 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2244, file: !2245, line: 10, baseType: !7, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2244, file: !2245, line: 11, baseType: !1369, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2244, file: !2245, line: 12, baseType: !2250, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2252, line: 59, size: 48, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2251, file: !2252, line: 60, baseType: !966, size: 16)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2251, file: !2252, line: 61, baseType: !966, size: 16, offset: 16)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2251, file: !2252, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2251, file: !2252, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2251, file: !2252, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2251, file: !2252, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1925, file: !130, line: 465, baseType: !39, size: 64, offset: 6784)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1925, file: !130, line: 469, baseType: !7, size: 32, offset: 6848)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1925, file: !130, line: 470, baseType: !97, size: 128, offset: 6912)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1925, file: !130, line: 471, baseType: !2264, size: 64, offset: 7040)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2266, line: 33, size: 96, elements: !2267)
!2266 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2265, file: !2266, line: 37, baseType: !22, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2265, file: !2266, line: 43, baseType: !22, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2265, file: !2266, line: 45, baseType: !26, size: 16, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !2266, line: 47, baseType: !26, size: 16, offset: 80)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1925, file: !130, line: 476, baseType: !2273, size: 64, offset: 7104)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !130, line: 378, size: 256, elements: !2275)
!2275 = !{!2276, !2292, !2293, !2294}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2274, file: !130, line: 379, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2279, line: 204, baseType: !2280)
!2279 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2279, line: 197, size: 192, elements: !2281)
!2281 = !{!2282, !2284, !2285, !2286, !2288, !2290}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2280, file: !2279, line: 198, baseType: !2283, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2279, line: 21, baseType: !522)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2280, file: !2279, line: 199, baseType: !87, size: 8, offset: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2280, file: !2279, line: 200, baseType: !87, size: 8, offset: 40)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2280, file: !2279, line: 201, baseType: !2287, size: 16, offset: 48)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2279, line: 17, baseType: !94)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2280, file: !2279, line: 202, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2279, line: 16, baseType: !570)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2280, file: !2279, line: 203, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2279, line: 22, baseType: !570)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2274, file: !130, line: 380, baseType: !7, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2274, file: !130, line: 381, baseType: !351, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2274, file: !130, line: 382, baseType: !351, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1925, file: !130, line: 477, baseType: !2274, size: 256, offset: 7168)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1925, file: !130, line: 480, baseType: !2297, size: 64, offset: 7424)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !130, line: 480, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1925, file: !130, line: 483, baseType: !2300, size: 64, offset: 7488)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !130, line: 483, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1925, file: !130, line: 488, baseType: !351, size: 64, offset: 7552)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1925, file: !130, line: 492, baseType: !20, size: 64, offset: 7616)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1925, file: !130, line: 493, baseType: !7, size: 32, offset: 7680)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1925, file: !130, line: 495, baseType: !20, size: 64, offset: 7744)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1925, file: !130, line: 496, baseType: !7, size: 32, offset: 7808)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1925, file: !130, line: 499, baseType: !7, size: 32, offset: 7840)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1925, file: !130, line: 500, baseType: !2309, size: 64, offset: 7872)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2311, line: 45, baseType: !2312)
!2311 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1925, file: !130, line: 503, baseType: !7, size: 32, offset: 7936)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1925, file: !130, line: 504, baseType: !2315, size: 64, offset: 8000)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2318, line: 96, size: 192, elements: !2319)
!2318 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2319 = !{!2320, !2321, !2374, !2377}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2317, file: !2318, line: 97, baseType: !7, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2317, file: !2318, line: 98, baseType: !2322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2318, line: 24, size: 3072, elements: !2324)
!2324 = !{!2325, !2327, !2328, !2329, !2330, !2343, !2344, !2345, !2346, !2358, !2359, !2360, !2371, !2372, !2373}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2323, file: !2318, line: 26, baseType: !2326, size: 128)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 128, elements: !2239)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2323, file: !2318, line: 27, baseType: !2326, size: 128, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2323, file: !2318, line: 28, baseType: !22, size: 32, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2323, file: !2318, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2323, file: !2318, line: 32, baseType: !2331, size: 960, offset: 576)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2332, line: 206, size: 960, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2333 = !{!2334, !2335, !2338, !2340, !2341, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2331, file: !2332, line: 207, baseType: !416, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2331, file: !2332, line: 208, baseType: !2336, size: 256, offset: 64)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2337, size: 256, elements: !478)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2331, file: !2332, line: 209, baseType: !2339, size: 256, offset: 320)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !478)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2331, file: !2332, line: 213, baseType: !951, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2331, file: !2332, line: 215, baseType: !1247, size: 256, offset: 640)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2331, file: !2332, line: 216, baseType: !83, size: 8, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2323, file: !2318, line: 33, baseType: !39, size: 64, offset: 1536)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2323, file: !2318, line: 34, baseType: !39, size: 64, offset: 1600)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2323, file: !2318, line: 35, baseType: !1033, size: 8, offset: 1664)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2323, file: !2318, line: 36, baseType: !2347, size: 320, offset: 1728)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2348, line: 11, size: 320, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2349 = !{!2350, !2351, !2352, !2357}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2347, file: !2348, line: 16, baseType: !473, size: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2347, file: !2348, line: 17, baseType: !39, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2347, file: !2348, line: 18, baseType: !2353, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !2348, line: 19, baseType: !521, size: 32, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2323, file: !2318, line: 37, baseType: !1148, size: 256, offset: 2048)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2323, file: !2318, line: 38, baseType: !413, size: 128, align: 64, offset: 2304)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2323, file: !2318, line: 39, baseType: !2361, size: 64, offset: 2432)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2318, line: 49, size: 768, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2362, file: !2318, line: 50, baseType: !59, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2362, file: !2318, line: 51, baseType: !2339, size: 256, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2362, file: !2318, line: 53, baseType: !2339, size: 256, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2362, file: !2318, line: 54, baseType: !39, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2362, file: !2318, line: 55, baseType: !2361, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2362, file: !2318, line: 56, baseType: !22, size: 32, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2362, file: !2318, line: 57, baseType: !22, size: 32, offset: 736)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2323, file: !2318, line: 40, baseType: !39, size: 64, offset: 2496)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2323, file: !2318, line: 42, baseType: !22, size: 32, offset: 2560)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2323, file: !2318, line: 43, baseType: !2316, size: 64, offset: 2624)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2317, file: !2318, line: 99, baseType: !2375, offset: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2376, line: 211, elements: !836)
!2376 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2317, file: !2318, line: 100, baseType: !2378, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2318, line: 63, size: 3008, elements: !2380)
!2380 = !{!2381, !2382, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2412}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2379, file: !2318, line: 64, baseType: !2361, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2379, file: !2318, line: 65, baseType: !2383, size: 192, offset: 64)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, size: 192, elements: !452)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2379, file: !2318, line: 67, baseType: !22, size: 32, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2379, file: !2318, line: 68, baseType: !359, size: 256, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2379, file: !2318, line: 69, baseType: !59, size: 32, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2379, file: !2318, line: 70, baseType: !359, size: 256, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2379, file: !2318, line: 71, baseType: !39, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2379, file: !2318, line: 72, baseType: !39, size: 64, offset: 960)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2379, file: !2318, line: 73, baseType: !39, size: 64, offset: 1024)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2379, file: !2318, line: 74, baseType: !39, size: 64, offset: 1088)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2379, file: !2318, line: 75, baseType: !39, size: 64, offset: 1152)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2379, file: !2318, line: 76, baseType: !39, size: 64, offset: 1216)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2379, file: !2318, line: 77, baseType: !39, size: 64, offset: 1280)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2379, file: !2318, line: 78, baseType: !39, size: 64, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2379, file: !2318, line: 79, baseType: !1033, size: 8, offset: 1408)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2379, file: !2318, line: 80, baseType: !39, size: 64, offset: 1472)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2379, file: !2318, line: 81, baseType: !359, size: 256, offset: 1536)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2379, file: !2318, line: 82, baseType: !1187, size: 256, offset: 1792)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2379, file: !2318, line: 84, baseType: !49, size: 32, offset: 2048)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2379, file: !2318, line: 87, baseType: !39, size: 64, offset: 2112)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2379, file: !2318, line: 88, baseType: !39, size: 64, offset: 2176)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2379, file: !2318, line: 89, baseType: !2404, size: 704, offset: 2240)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1149, line: 111, size: 704, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2411}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2404, file: !1149, line: 112, baseType: !1148, size: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2404, file: !1149, line: 113, baseType: !2347, size: 320, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2404, file: !1149, line: 116, baseType: !2409, size: 64, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1149, line: 18, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2404, file: !1149, line: 117, baseType: !22, size: 32, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2379, file: !2318, line: 90, baseType: !2316, size: 64, offset: 2944)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1925, file: !130, line: 515, baseType: !2414, size: 64, offset: 8064)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2416, line: 117, size: 128, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2417 = !{!2418, !2419, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2415, file: !2416, line: 118, baseType: !917, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2415, file: !2416, line: 119, baseType: !917, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2415, file: !2416, line: 120, baseType: !951, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1925, file: !130, line: 516, baseType: !7, size: 32, offset: 8128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1925, file: !130, line: 519, baseType: !7, size: 32, offset: 8160)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1925, file: !130, line: 520, baseType: !2424, size: 64, offset: 8192)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1925, file: !130, line: 523, baseType: !2426, size: 64, offset: 8256)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !143, line: 372, size: 1024, elements: !2429)
!2429 = !{!2430, !2431, !2471, !2531, !2837, !2838, !2839, !2844, !2845, !2846, !2847, !2849, !2852}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2428, file: !143, line: 373, baseType: !97, size: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2428, file: !143, line: 374, baseType: !2432, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !143, line: 291, size: 576, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2442, !2465, !2469, !2470}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2433, file: !143, line: 292, baseType: !16, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2433, file: !143, line: 293, baseType: !20, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2433, file: !143, line: 295, baseType: !20, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2433, file: !143, line: 297, baseType: !2439, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!22, !2427, !142, !20}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2433, file: !143, line: 299, baseType: !2443, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !143, line: 275, size: 320, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2444, file: !143, line: 276, baseType: !16, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !143, line: 277, baseType: !2448, size: 256, offset: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2444, file: !143, line: 277, size: 256, elements: !2449)
!2449 = !{!2450, !2461}
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !143, line: 278, baseType: !2451, size: 256)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2448, file: !143, line: 278, size: 256, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2458, !2459, !2460}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2451, file: !143, line: 279, baseType: !16, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2451, file: !143, line: 280, baseType: !2312, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2451, file: !143, line: 281, baseType: !2312, size: 32, offset: 96)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2451, file: !143, line: 282, baseType: !2457, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2451, file: !143, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2451, file: !143, line: 284, baseType: !2312, size: 32, offset: 160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2451, file: !143, line: 285, baseType: !2312, size: 32, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2448, file: !143, line: 287, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!22, !2427}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2433, file: !143, line: 300, baseType: !2466, size: 64, offset: 320)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!100, !2427}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2433, file: !143, line: 301, baseType: !97, size: 128, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2433, file: !143, line: 302, baseType: !2462, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !143, line: 375, baseType: !2472, size: 64, offset: 192)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !143, line: 375, size: 64, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2472, file: !143, line: 376, baseType: !16, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2472, file: !143, line: 378, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2311, line: 32, size: 640, elements: !2478)
!2478 = !{!2479, !2480, !2492, !2516, !2517, !2518, !2519, !2520, !2524}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2477, file: !2311, line: 33, baseType: !16, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2477, file: !2311, line: 34, baseType: !2481, size: 128, offset: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2416, line: 85, size: 128, elements: !2482)
!2482 = !{!2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2481, file: !2416, line: 86, baseType: !49, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2481, file: !2416, line: 101, baseType: !2485, size: 64, offset: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2481, file: !2416, line: 101, size: 64, elements: !2486)
!2486 = !{!2487, !2488, !2489}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2485, file: !2416, line: 102, baseType: !39, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2485, file: !2416, line: 103, baseType: !2414, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2485, file: !2416, line: 104, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2416, line: 104, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2477, file: !2311, line: 35, baseType: !2493, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2495, line: 61, size: 128, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2494, file: !2495, line: 62, baseType: !20, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2494, file: !2495, line: 63, baseType: !2499, size: 64, offset: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2494, file: !2495, line: 63, size: 64, elements: !2500)
!2500 = !{!2501, !2502, !2515}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2499, file: !2495, line: 65, baseType: !39, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2499, file: !2495, line: 66, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2505, line: 169, size: 192, elements: !2506)
!2505 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2506 = !{!2507, !2508, !2509}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2504, file: !2505, line: 170, baseType: !2503, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2504, file: !2505, line: 171, baseType: !1924, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2504, file: !2505, line: 172, baseType: !2510, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2495, line: 32, size: 64, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2511, file: !2495, line: 33, baseType: !917, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2511, file: !2495, line: 34, baseType: !917, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2499, file: !2495, line: 67, baseType: !2510, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2477, file: !2311, line: 36, baseType: !20, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2477, file: !2311, line: 37, baseType: !20, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2477, file: !2311, line: 38, baseType: !20, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2477, file: !2311, line: 39, baseType: !2220, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2477, file: !2311, line: 40, baseType: !2521, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2477, file: !2311, line: 41, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2311, line: 26, size: 192, elements: !2527)
!2527 = !{!2528, !2529, !2530}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2526, file: !2311, line: 27, baseType: !20, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2526, file: !2311, line: 28, baseType: !20, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2526, file: !2311, line: 29, baseType: !22, size: 32, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2428, file: !143, line: 380, baseType: !2532, size: 256, offset: 256)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !143, line: 148, size: 256, elements: !2533)
!2533 = !{!2534, !2535, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2532, file: !143, line: 149, baseType: !473, size: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2532, file: !143, line: 150, baseType: !22, size: 32, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2532, file: !143, line: 151, baseType: !2537, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !143, line: 141, size: 256, elements: !2539)
!2539 = !{!2540, !2834, !2835, !2836}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2538, file: !143, line: 142, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !143, line: 138, baseType: !2542)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!153, !2545, !22, !2833}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !143, line: 93, size: 67776, elements: !2547)
!2547 = !{!2548, !2782, !2783, !2785, !2786, !2787, !2788, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2815, !2816, !2817, !2818, !2826, !2827, !2828, !2829, !2830, !2831, !2832}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2546, file: !143, line: 94, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !2551, line: 319, size: 2560, elements: !2552)
!2551 = !DIFile(filename: "kernel/trace/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cded56e3446de300e74751317646ffb")
!2552 = !{!2553, !2554, !2555, !2585, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2713, !2726, !2727, !2728, !2766, !2769, !2770, !2771, !2772, !2773, !2774}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2550, file: !2551, line: 320, baseType: !97, size: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2550, file: !2551, line: 321, baseType: !351, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2550, file: !2551, line: 322, baseType: !2556, size: 320, offset: 192)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !2551, line: 210, size: 320, elements: !2557)
!2557 = !{!2558, !2559, !2563, !2583, !2584}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2556, file: !2551, line: 211, baseType: !2549, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2556, file: !2551, line: 212, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !2562, line: 9, flags: DIFlagFwdDecl)
!2562 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2556, file: !2551, line: 213, baseType: !2564, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array_cpu", file: !2551, line: 183, size: 1024, elements: !2566)
!2566 = !{!2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !2565, file: !2551, line: 184, baseType: !49, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_page", scope: !2565, file: !2551, line: 185, baseType: !20, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2565, file: !2551, line: 187, baseType: !39, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "saved_latency", scope: !2565, file: !2551, line: 188, baseType: !39, size: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "critical_start", scope: !2565, file: !2551, line: 189, baseType: !39, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "critical_end", scope: !2565, file: !2551, line: 190, baseType: !39, size: 64, offset: 320)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "critical_sequence", scope: !2565, file: !2551, line: 191, baseType: !39, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nice", scope: !2565, file: !2551, line: 192, baseType: !39, size: 64, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2565, file: !2551, line: 193, baseType: !39, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2565, file: !2551, line: 194, baseType: !39, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_entries", scope: !2565, file: !2551, line: 195, baseType: !39, size: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_timestamp", scope: !2565, file: !2551, line: 196, baseType: !569, size: 64, offset: 704)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2565, file: !2551, line: 197, baseType: !1351, size: 32, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2565, file: !2551, line: 198, baseType: !1006, size: 32, offset: 800)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2565, file: !2551, line: 199, baseType: !1479, size: 128, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_pid", scope: !2565, file: !2551, line: 204, baseType: !1033, size: 8, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "time_start", scope: !2556, file: !2551, line: 214, baseType: !569, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2556, file: !2551, line: 215, baseType: !22, size: 32, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_pids", scope: !2550, file: !2551, line: 346, baseType: !2586, size: 64, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_pid_list", file: !2588, line: 78, size: 16896, elements: !2589)
!2588 = !DIFile(filename: "kernel/trace/pid_list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca7ceba9dd4bbea3985e3aae225c7de1")
!2589 = !{!2590, !2591, !2606, !2622, !2623, !2624, !2625}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2587, file: !2588, line: 79, baseType: !372, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "refill_irqwork", scope: !2587, file: !2588, line: 80, baseType: !2592, size: 256, offset: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !2593, line: 17, size: 256, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!2594 = !{!2595, !2596, !2601}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2592, file: !2593, line: 18, baseType: !531, size: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2592, file: !2593, line: 19, baseType: !2597, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !2592, file: !2593, line: 20, baseType: !2602, size: 64, offset: 192)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2603, line: 16, size: 64, elements: !2604)
!2603 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2602, file: !2603, line: 17, baseType: !510, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !2587, file: !2588, line: 81, baseType: !2607, size: 16384, offset: 320)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 16384, elements: !2620)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "upper_chunk", file: !2588, line: 73, size: 16384, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2609, file: !2588, line: 74, baseType: !2608, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2609, file: !2588, line: 75, baseType: !2613, size: 16384)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 16384, elements: !2620)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "lower_chunk", file: !2588, line: 68, size: 16384, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2615, file: !2588, line: 69, baseType: !2614, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2615, file: !2588, line: 70, baseType: !2619, size: 16384)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !2620)
!2620 = !{!2621}
!2621 = !DISubrange(count: 256)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "upper_list", scope: !2587, file: !2588, line: 82, baseType: !2608, size: 64, offset: 16704)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "lower_list", scope: !2587, file: !2588, line: 83, baseType: !2614, size: 64, offset: 16768)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "free_upper_chunks", scope: !2587, file: !2588, line: 84, baseType: !22, size: 32, offset: 16832)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "free_lower_chunks", scope: !2587, file: !2588, line: 85, baseType: !22, size: 32, offset: 16864)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_no_pids", scope: !2550, file: !2551, line: 347, baseType: !2586, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "max_lock", scope: !2550, file: !2551, line: 361, baseType: !71, size: 32, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_disabled", scope: !2550, file: !2551, line: 362, baseType: !22, size: 32, offset: 672)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stop_count", scope: !2550, file: !2551, line: 369, baseType: !22, size: 32, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_id", scope: !2550, file: !2551, line: 370, baseType: !22, size: 32, offset: 736)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_topts", scope: !2550, file: !2551, line: 371, baseType: !22, size: 32, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "clear_trace", scope: !2550, file: !2551, line: 372, baseType: !1033, size: 8, offset: 800)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_percent", scope: !2550, file: !2551, line: 373, baseType: !22, size: 32, offset: 832)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "n_err_log_entries", scope: !2550, file: !2551, line: 374, baseType: !7, size: 32, offset: 864)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "current_trace", scope: !2550, file: !2551, line: 375, baseType: !2636, size: 64, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !2551, line: 556, size: 1216, elements: !2638)
!2638 = !{!2639, !2640, !2644, !2648, !2649, !2650, !2651, !2655, !2656, !2657, !2658, !2662, !2668, !2672, !2676, !2680, !2684, !2685, !2697, !2698, !2699, !2700}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2637, file: !2551, line: 557, baseType: !16, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2637, file: !2551, line: 558, baseType: !2641, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!22, !2549}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2637, file: !2551, line: 559, baseType: !2645, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2549}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2637, file: !2551, line: 560, baseType: !2645, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2637, file: !2551, line: 561, baseType: !2645, size: 64, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "update_thresh", scope: !2637, file: !2551, line: 562, baseType: !2641, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2637, file: !2551, line: 563, baseType: !2652, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !2545}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_open", scope: !2637, file: !2551, line: 564, baseType: !2652, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2637, file: !2551, line: 565, baseType: !2652, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_close", scope: !2637, file: !2551, line: 566, baseType: !2652, size: 64, offset: 576)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2637, file: !2551, line: 567, baseType: !2659, size: 64, offset: 640)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!2007, !2545, !843, !351, !35, !40}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2637, file: !2551, line: 570, baseType: !2663, size: 64, offset: 704)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!2007, !2545, !843, !40, !2666, !35, !7}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !512, line: 59, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "print_header", scope: !2637, file: !2551, line: 580, baseType: !2669, size: 64, offset: 768)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !346}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "print_line", scope: !2637, file: !2551, line: 581, baseType: !2673, size: 64, offset: 832)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!153, !2545}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "set_flag", scope: !2637, file: !2551, line: 583, baseType: !2677, size: 64, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!22, !2549, !521, !521, !22}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_changed", scope: !2637, file: !2551, line: 586, baseType: !2681, size: 64, offset: 960)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!22, !2549, !521, !22}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2637, file: !2551, line: 588, baseType: !2636, size: 64, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !2551, line: 589, baseType: !2686, size: 64, offset: 1088)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_flags", file: !2551, line: 519, size: 192, elements: !2688)
!2688 = !{!2689, !2690, !2696}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2687, file: !2551, line: 520, baseType: !521, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2687, file: !2551, line: 521, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_opt", file: !2551, line: 510, size: 128, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2692, file: !2551, line: 511, baseType: !16, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !2692, file: !2551, line: 512, baseType: !521, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2687, file: !2551, line: 522, baseType: !2636, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2637, file: !2551, line: 590, baseType: !22, size: 32, offset: 1152)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "print_max", scope: !2637, file: !2551, line: 591, baseType: !1033, size: 8, offset: 1184)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "allow_instances", scope: !2637, file: !2551, line: 592, baseType: !1033, size: 8, offset: 1192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "noboot", scope: !2637, file: !2551, line: 597, baseType: !1033, size: 8, offset: 1200)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags", scope: !2550, file: !2551, line: 376, baseType: !7, size: 32, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags_index", scope: !2550, file: !2551, line: 377, baseType: !1819, size: 256, offset: 992)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2550, file: !2551, line: 378, baseType: !7, size: 32, offset: 1248)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "start_lock", scope: !2550, file: !2551, line: 379, baseType: !372, size: 32, offset: 1280)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "err_log", scope: !2550, file: !2551, line: 380, baseType: !97, size: 128, offset: 1344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2550, file: !2551, line: 381, baseType: !1783, size: 64, offset: 1472)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2550, file: !2551, line: 382, baseType: !1783, size: 64, offset: 1536)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dir", scope: !2550, file: !2551, line: 383, baseType: !1783, size: 64, offset: 1600)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "event_dir", scope: !2550, file: !2551, line: 384, baseType: !2710, size: 64, offset: 1664)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !2712, line: 80, flags: DIFlagFwdDecl)
!2712 = !DIFile(filename: "./include/linux/tracefs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4889574467ac457255616de05cb15d8")
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !2550, file: !2551, line: 385, baseType: !2714, size: 64, offset: 1728)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_options", file: !2551, line: 220, size: 128, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "tracer", scope: !2715, file: !2551, line: 221, baseType: !2636, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !2715, file: !2551, line: 222, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_option_dentry", file: !2551, line: 529, size: 256, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !2720, file: !2551, line: 530, baseType: !2691, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2720, file: !2551, line: 531, baseType: !2686, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2720, file: !2551, line: 532, baseType: !2549, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2720, file: !2551, line: 533, baseType: !1783, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "systems", scope: !2550, file: !2551, line: 386, baseType: !97, size: 128, offset: 1792)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2550, file: !2551, line: 387, baseType: !97, size: 128, offset: 1920)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "trace_marker_file", scope: !2550, file: !2551, line: 388, baseType: !2729, size: 64, offset: 2048)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !143, line: 655, size: 768, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2742, !2743, !2744, !2761, !2762, !2763, !2764, !2765}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2730, file: !143, line: 656, baseType: !97, size: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !2730, file: !143, line: 657, baseType: !2427, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2730, file: !143, line: 658, baseType: !2735, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !2551, line: 1332, size: 128, elements: !2737)
!2737 = !{!2738, !2741}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !2736, file: !2551, line: 1333, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "prog_entry", file: !2551, line: 1330, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "filter_string", scope: !2736, file: !2551, line: 1334, baseType: !351, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !2730, file: !143, line: 659, baseType: !2710, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2730, file: !143, line: 660, baseType: !2549, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2730, file: !143, line: 661, baseType: !2745, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !2551, line: 1344, size: 384, elements: !2747)
!2747 = !{!2748, !2749, !2757, !2758, !2759, !2760}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2746, file: !2551, line: 1345, baseType: !97, size: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem", scope: !2746, file: !2551, line: 1346, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_subsystem", file: !2551, line: 1337, size: 320, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2751, file: !2551, line: 1338, baseType: !97, size: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2751, file: !2551, line: 1339, baseType: !16, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2751, file: !2551, line: 1340, baseType: !2735, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !2751, file: !2551, line: 1341, baseType: !22, size: 32, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2746, file: !2551, line: 1347, baseType: !2549, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !2746, file: !2551, line: 1348, baseType: !2710, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !2746, file: !2551, line: 1349, baseType: !22, size: 32, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2746, file: !2551, line: 1350, baseType: !22, size: 32, offset: 352)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !2730, file: !143, line: 662, baseType: !97, size: 128, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2730, file: !143, line: 680, baseType: !39, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2730, file: !143, line: 681, baseType: !49, size: 32, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !2730, file: !143, line: 682, baseType: !49, size: 32, offset: 672)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !2730, file: !143, line: 683, baseType: !49, size: 32, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "tracing_cpumask", scope: !2550, file: !2551, line: 389, baseType: !2767, size: 64, offset: 2112)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !762, line: 913, baseType: !2768)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 64, elements: !767)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_cpumask", scope: !2550, file: !2551, line: 391, baseType: !2767, size: 64, offset: 2176)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2550, file: !2551, line: 392, baseType: !22, size: 32, offset: 2240)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ref", scope: !2550, file: !2551, line: 393, baseType: !22, size: 32, offset: 2272)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "no_filter_buffering_ref", scope: !2550, file: !2551, line: 407, baseType: !22, size: 32, offset: 2304)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "hist_vars", scope: !2550, file: !2551, line: 408, baseType: !97, size: 128, offset: 2368)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "last_func_repeats", scope: !2550, file: !2551, line: 412, baseType: !2775, size: 64, offset: 2496)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_func_repeats", file: !2551, line: 307, size: 256, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2776, file: !2551, line: 308, baseType: !39, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ip", scope: !2776, file: !2551, line: 309, baseType: !39, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2776, file: !2551, line: 310, baseType: !39, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ts_last_call", scope: !2776, file: !2551, line: 311, baseType: !569, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2546, file: !143, line: 95, baseType: !2636, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2546, file: !143, line: 96, baseType: !2784, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2546, file: !143, line: 97, baseType: !20, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2546, file: !143, line: 98, baseType: !22, size: 32, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2546, file: !143, line: 99, baseType: !359, size: 256, offset: 320)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2546, file: !143, line: 100, baseType: !2789, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2562, line: 10, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2546, file: !143, line: 101, baseType: !39, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2546, file: !143, line: 102, baseType: !20, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2546, file: !143, line: 103, baseType: !7, size: 32, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2546, file: !143, line: 104, baseType: !351, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2546, file: !143, line: 105, baseType: !7, size: 32, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2546, file: !143, line: 106, baseType: !951, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2546, file: !143, line: 109, baseType: !2799, size: 33088, offset: 1024)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2800, line: 14, size: 33088, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2801 = !{!2802, !2806, !2813, !2814}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2799, file: !2800, line: 15, baseType: !2803, size: 32768)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !2804)
!2804 = !{!2805}
!2805 = !DISubrange(count: 4096)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2799, file: !2800, line: 16, baseType: !2807, size: 192, offset: 32768)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2808, line: 18, size: 192, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2807, file: !2808, line: 19, baseType: !351, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2807, file: !2808, line: 20, baseType: !35, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2807, file: !2808, line: 21, baseType: !35, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2799, file: !2800, line: 17, baseType: !35, size: 64, offset: 32960)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2799, file: !2800, line: 18, baseType: !22, size: 32, offset: 33024)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2546, file: !143, line: 111, baseType: !2767, size: 64, offset: 34112)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2546, file: !143, line: 114, baseType: !1033, size: 8, offset: 34176)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2546, file: !143, line: 117, baseType: !2799, size: 33088, offset: 34240)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2546, file: !143, line: 118, baseType: !2819, size: 64, offset: 67328)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !143, line: 79, size: 64, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2820, file: !143, line: 80, baseType: !26, size: 16)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2820, file: !143, line: 81, baseType: !87, size: 8, offset: 16)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2820, file: !143, line: 82, baseType: !87, size: 8, offset: 24)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2820, file: !143, line: 83, baseType: !22, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2546, file: !143, line: 119, baseType: !39, size: 64, offset: 67392)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2546, file: !143, line: 120, baseType: !22, size: 32, offset: 67456)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2546, file: !143, line: 121, baseType: !22, size: 32, offset: 67488)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2546, file: !143, line: 122, baseType: !22, size: 32, offset: 67520)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2546, file: !143, line: 123, baseType: !569, size: 64, offset: 67584)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2546, file: !143, line: 125, baseType: !41, size: 64, offset: 67648)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2546, file: !143, line: 126, baseType: !951, size: 64, offset: 67712)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2538, file: !143, line: 143, baseType: !2541, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2538, file: !143, line: 144, baseType: !2541, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2538, file: !143, line: 145, baseType: !2541, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2428, file: !143, line: 381, baseType: !351, size: 64, offset: 512)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2428, file: !143, line: 382, baseType: !2735, size: 64, offset: 576)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !143, line: 387, baseType: !2840, size: 64, offset: 640)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !143, line: 387, size: 64, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2840, file: !143, line: 388, baseType: !20, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2840, file: !143, line: 389, baseType: !49, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2428, file: !143, line: 391, baseType: !20, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !143, line: 394, baseType: !22, size: 32, offset: 768)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2428, file: !143, line: 397, baseType: !22, size: 32, offset: 800)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2428, file: !143, line: 398, baseType: !2848, size: 64, offset: 832)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2428, file: !143, line: 399, baseType: !2850, size: 64, offset: 896)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !143, line: 399, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2428, file: !143, line: 401, baseType: !2853, size: 64, offset: 960)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!22, !2427, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !219, line: 671, size: 8512, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !3532, !3533, !3534, !3535, !3541, !3542, !3543, !3544, !3545, !3629, !3630, !3631, !3632, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3768, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3785, !3956, !3957, !3958, !3959, !3972, !3973, !3974}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2857, file: !219, line: 678, baseType: !97, size: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2857, file: !219, line: 684, baseType: !97, size: 128, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2857, file: !219, line: 685, baseType: !97, size: 128, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2857, file: !219, line: 689, baseType: !561, size: 192, align: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2857, file: !219, line: 690, baseType: !569, size: 64, offset: 576)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2857, file: !219, line: 696, baseType: !97, size: 128, offset: 640)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2857, file: !219, line: 698, baseType: !473, size: 128, offset: 768)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2857, file: !219, line: 699, baseType: !97, size: 128, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2857, file: !219, line: 700, baseType: !22, size: 32, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2857, file: !219, line: 703, baseType: !22, size: 32, offset: 1056)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2857, file: !219, line: 705, baseType: !22, size: 32, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2857, file: !219, line: 707, baseType: !7, size: 32, offset: 1120)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2857, file: !219, line: 708, baseType: !2856, size: 64, offset: 1152)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2857, file: !219, line: 714, baseType: !2873, size: 64, offset: 1216)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !219, line: 302, size: 2432, elements: !2875)
!2875 = !{!2876, !2877, !2878, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3438, !3439, !3440, !3441, !3442, !3446, !3447, !3451, !3455, !3456, !3460, !3464, !3465, !3466, !3470, !3474, !3478, !3479, !3480, !3484, !3488, !3492, !3497, !3498, !3518, !3522, !3523, !3524, !3528}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2874, file: !219, line: 303, baseType: !97, size: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2874, file: !219, line: 305, baseType: !1924, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2874, file: !219, line: 306, baseType: !2879, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !166, line: 705, size: 5824, elements: !2881)
!2881 = !{!2882, !2883, !2884, !2887, !2888, !2941, !3028, !3029, !3030, !3031, !3032, !3039, !3131, !3144, !3154, !3158, !3160, !3161, !3162, !3166, !3173, !3174, !3177, !3180, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3342, !3343, !3344, !3347, !3350, !3359, !3360, !3361, !3362, !3363, !3364}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2880, file: !166, line: 706, baseType: !1937, size: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2880, file: !166, line: 707, baseType: !2879, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2880, file: !166, line: 709, baseType: !2885, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !166, line: 37, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2880, file: !166, line: 711, baseType: !16, size: 64, offset: 640)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2880, file: !166, line: 712, baseType: !2889, size: 64, offset: 704)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !166, line: 89, size: 384, elements: !2892)
!2892 = !{!2893, !2894, !2895, !2901, !2906, !2910}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2891, file: !166, line: 90, baseType: !16, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2891, file: !166, line: 91, baseType: !2020, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2891, file: !166, line: 92, baseType: !2896, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!22, !2899, !1973}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2880)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2891, file: !166, line: 93, baseType: !2902, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!351, !2899, !2905, !1212, !1213}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2891, file: !166, line: 95, baseType: !2907, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2879}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2891, file: !166, line: 97, baseType: !2911, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2913)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !173, line: 286, size: 1472, elements: !2914)
!2914 = !{!2915, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2913, file: !173, line: 287, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!22, !2879}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2913, file: !173, line: 288, baseType: !2907, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2913, file: !173, line: 289, baseType: !2916, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2913, file: !173, line: 290, baseType: !2916, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2913, file: !173, line: 291, baseType: !2916, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2913, file: !173, line: 292, baseType: !2916, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2913, file: !173, line: 293, baseType: !2916, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2913, file: !173, line: 294, baseType: !2916, size: 64, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2913, file: !173, line: 295, baseType: !2916, size: 64, offset: 512)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2913, file: !173, line: 296, baseType: !2916, size: 64, offset: 576)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2913, file: !173, line: 297, baseType: !2916, size: 64, offset: 640)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2913, file: !173, line: 298, baseType: !2916, size: 64, offset: 704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2913, file: !173, line: 299, baseType: !2916, size: 64, offset: 768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2913, file: !173, line: 300, baseType: !2916, size: 64, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2913, file: !173, line: 301, baseType: !2916, size: 64, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2913, file: !173, line: 302, baseType: !2916, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2913, file: !173, line: 303, baseType: !2916, size: 64, offset: 1024)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2913, file: !173, line: 304, baseType: !2916, size: 64, offset: 1088)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2913, file: !173, line: 305, baseType: !2916, size: 64, offset: 1152)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2913, file: !173, line: 306, baseType: !2916, size: 64, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2913, file: !173, line: 307, baseType: !2916, size: 64, offset: 1280)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2913, file: !173, line: 308, baseType: !2916, size: 64, offset: 1344)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2913, file: !173, line: 309, baseType: !2916, size: 64, offset: 1408)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2880, file: !166, line: 714, baseType: !2942, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2944)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2945, line: 80, size: 1344, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3027}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2944, file: !2945, line: 81, baseType: !16, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2944, file: !2945, line: 82, baseType: !16, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2944, file: !2945, line: 83, baseType: !2020, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2944, file: !2945, line: 84, baseType: !2020, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2944, file: !2945, line: 85, baseType: !2020, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2944, file: !2945, line: 87, baseType: !2953, size: 64, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!22, !2879, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !160, line: 96, size: 1152, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2979, !2990, !2991, !2992, !2993, !2994, !3002, !3003, !3004, !3005, !3006, !3007}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2957, file: !160, line: 97, baseType: !16, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2957, file: !160, line: 98, baseType: !2942, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2957, file: !160, line: 100, baseType: !1924, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2957, file: !160, line: 101, baseType: !16, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2957, file: !160, line: 103, baseType: !1033, size: 8, offset: 256)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2957, file: !160, line: 104, baseType: !159, size: 32, offset: 288)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2957, file: !160, line: 106, baseType: !2966, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2969, line: 282, size: 1600, elements: !2970)
!2969 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2970 = !{!2971, !2973, !2974, !2978}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2968, file: !2969, line: 283, baseType: !2972, size: 256)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !1820)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2968, file: !2969, line: 284, baseType: !2972, size: 256, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2968, file: !2969, line: 285, baseType: !2975, size: 1024, offset: 512)
!2975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !2976)
!2976 = !{!2977}
!2977 = !DISubrange(count: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2968, file: !2969, line: 286, baseType: !340, size: 64, offset: 1536)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2957, file: !160, line: 107, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2969, line: 217, size: 256, elements: !2983)
!2983 = !{!2984, !2986, !2988, !2989}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2982, file: !2969, line: 218, baseType: !2985, size: 128)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !1480)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2982, file: !2969, line: 219, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2969, line: 15, baseType: !39)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2982, file: !2969, line: 220, baseType: !522, size: 32, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2982, file: !2969, line: 221, baseType: !522, size: 32, offset: 224)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2957, file: !160, line: 109, baseType: !2916, size: 64, offset: 448)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2957, file: !160, line: 110, baseType: !2907, size: 64, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2957, file: !160, line: 111, baseType: !2916, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2957, file: !160, line: 112, baseType: !2907, size: 64, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2957, file: !160, line: 113, baseType: !2995, size: 64, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!22, !2879, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !173, line: 60, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !173, line: 58, size: 32, elements: !3000)
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2999, file: !173, line: 59, baseType: !22, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2957, file: !160, line: 114, baseType: !2916, size: 64, offset: 768)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2957, file: !160, line: 115, baseType: !2020, size: 64, offset: 832)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2957, file: !160, line: 116, baseType: !2020, size: 64, offset: 896)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2957, file: !160, line: 118, baseType: !2911, size: 64, offset: 960)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2957, file: !160, line: 119, baseType: !2907, size: 64, offset: 1024)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2957, file: !160, line: 121, baseType: !3008, size: 64, offset: 1088)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !160, line: 121, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2944, file: !2945, line: 88, baseType: !2896, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2944, file: !2945, line: 89, baseType: !2916, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2944, file: !2945, line: 90, baseType: !2907, size: 64, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2944, file: !2945, line: 91, baseType: !2907, size: 64, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2944, file: !2945, line: 92, baseType: !2907, size: 64, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2944, file: !2945, line: 94, baseType: !2916, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2944, file: !2945, line: 95, baseType: !2916, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2944, file: !2945, line: 97, baseType: !2995, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2944, file: !2945, line: 98, baseType: !2916, size: 64, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2944, file: !2945, line: 100, baseType: !2916, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2944, file: !2945, line: 102, baseType: !2916, size: 64, offset: 1024)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2944, file: !2945, line: 103, baseType: !2907, size: 64, offset: 1088)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2944, file: !2945, line: 105, baseType: !2911, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2944, file: !2945, line: 107, baseType: !3024, size: 64, offset: 1216)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3026)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2945, line: 107, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2944, file: !2945, line: 109, baseType: !1033, size: 8, offset: 1280)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2880, file: !166, line: 715, baseType: !2956, size: 64, offset: 832)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2880, file: !166, line: 717, baseType: !20, size: 64, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2880, file: !166, line: 719, baseType: !20, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2880, file: !166, line: 721, baseType: !359, size: 256, offset: 1024)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2880, file: !166, line: 725, baseType: !3033, size: 448, offset: 1280)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !166, line: 517, size: 448, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3038}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3033, file: !166, line: 518, baseType: !97, size: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3033, file: !166, line: 519, baseType: !97, size: 128, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3033, file: !166, line: 520, baseType: !97, size: 128, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3033, file: !166, line: 521, baseType: !165, size: 32, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2880, file: !166, line: 726, baseType: !3040, size: 2496, offset: 1728)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !173, line: 663, size: 2496, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3124, !3128}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3040, file: !173, line: 664, baseType: !2998, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3040, file: !173, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3040, file: !173, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3040, file: !173, line: 667, baseType: !1033, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3040, file: !173, line: 668, baseType: !1033, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3040, file: !173, line: 669, baseType: !1033, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3040, file: !173, line: 670, baseType: !1033, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3040, file: !173, line: 671, baseType: !1033, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3040, file: !173, line: 672, baseType: !1033, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3040, file: !173, line: 673, baseType: !1033, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3040, file: !173, line: 674, baseType: !1033, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3040, file: !173, line: 675, baseType: !521, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3040, file: !173, line: 676, baseType: !59, size: 32, offset: 96)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3040, file: !173, line: 678, baseType: !97, size: 128, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3040, file: !173, line: 679, baseType: !1187, size: 256, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3040, file: !173, line: 680, baseType: !3058, size: 64, offset: 512)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3060, line: 43, size: 1536, elements: !3061)
!3060 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3059, file: !3060, line: 44, baseType: !16, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3059, file: !3060, line: 45, baseType: !22, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3059, file: !3060, line: 46, baseType: !97, size: 128, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3059, file: !3060, line: 47, baseType: !59, size: 32, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3059, file: !3060, line: 48, baseType: !3067, size: 64, offset: 320)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !173, line: 629, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3059, file: !3060, line: 49, baseType: !2347, size: 320, offset: 384)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3059, file: !3060, line: 50, baseType: !39, size: 64, offset: 704)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3059, file: !3060, line: 51, baseType: !642, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3059, file: !3060, line: 52, baseType: !642, size: 64, offset: 832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3059, file: !3060, line: 53, baseType: !642, size: 64, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3059, file: !3060, line: 54, baseType: !642, size: 64, offset: 960)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3059, file: !3060, line: 55, baseType: !642, size: 64, offset: 1024)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3059, file: !3060, line: 56, baseType: !39, size: 64, offset: 1088)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3059, file: !3060, line: 57, baseType: !39, size: 64, offset: 1152)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3059, file: !3060, line: 58, baseType: !39, size: 64, offset: 1216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3059, file: !3060, line: 59, baseType: !39, size: 64, offset: 1280)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3059, file: !3060, line: 60, baseType: !39, size: 64, offset: 1344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3059, file: !3060, line: 61, baseType: !2879, size: 64, offset: 1408)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3059, file: !3060, line: 62, baseType: !1033, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3059, file: !3060, line: 63, baseType: !1033, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3040, file: !173, line: 681, baseType: !1033, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3040, file: !173, line: 682, baseType: !1033, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3040, file: !173, line: 683, baseType: !1033, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3040, file: !173, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3040, file: !173, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3040, file: !173, line: 690, baseType: !634, size: 512, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3040, file: !173, line: 691, baseType: !569, size: 64, offset: 1152)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3040, file: !173, line: 692, baseType: !1148, size: 256, offset: 1216)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3040, file: !173, line: 693, baseType: !54, size: 192, offset: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3040, file: !173, line: 694, baseType: !3067, size: 64, offset: 1664)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3040, file: !173, line: 695, baseType: !49, size: 32, offset: 1728)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3040, file: !173, line: 696, baseType: !49, size: 32, offset: 1760)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3040, file: !173, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3040, file: !173, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3040, file: !173, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3040, file: !173, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3040, file: !173, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3040, file: !173, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3040, file: !173, line: 703, baseType: !1033, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3040, file: !173, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3040, file: !173, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3040, file: !173, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3040, file: !173, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3040, file: !173, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3040, file: !173, line: 709, baseType: !7, size: 32, offset: 1824)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3040, file: !173, line: 710, baseType: !172, size: 32, offset: 1856)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3040, file: !173, line: 711, baseType: !180, size: 32, offset: 1888)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3040, file: !173, line: 712, baseType: !180, size: 32, offset: 1920)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3040, file: !173, line: 713, baseType: !22, size: 32, offset: 1952)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3040, file: !173, line: 714, baseType: !22, size: 32, offset: 1984)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3040, file: !173, line: 715, baseType: !569, size: 64, offset: 2048)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3040, file: !173, line: 716, baseType: !569, size: 64, offset: 2112)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3040, file: !173, line: 717, baseType: !569, size: 64, offset: 2176)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3040, file: !173, line: 718, baseType: !569, size: 64, offset: 2240)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3040, file: !173, line: 720, baseType: !3119, size: 64, offset: 2304)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !173, line: 632, size: 64, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3120, file: !173, line: 633, baseType: !59, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3120, file: !173, line: 634, baseType: !7, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3040, file: !173, line: 721, baseType: !3125, size: 64, offset: 2368)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !2879, !917}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3040, file: !173, line: 722, baseType: !3129, size: 64, offset: 2432)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !173, line: 722, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2880, file: !166, line: 727, baseType: !3132, size: 64, offset: 4224)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !173, line: 742, size: 1792, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3141, !3142, !3143}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3133, file: !173, line: 743, baseType: !2913, size: 1472)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3133, file: !173, line: 744, baseType: !2916, size: 64, offset: 1472)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3133, file: !173, line: 745, baseType: !3138, size: 64, offset: 1536)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !2879, !1033}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3133, file: !173, line: 746, baseType: !2916, size: 64, offset: 1600)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3133, file: !173, line: 747, baseType: !2907, size: 64, offset: 1664)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3133, file: !173, line: 748, baseType: !2907, size: 64, offset: 1728)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2880, file: !166, line: 736, baseType: !3145, size: 128, offset: 4288)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !166, line: 529, size: 128, elements: !3146)
!3146 = !{!3147, !3151}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3145, file: !166, line: 531, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3150, line: 13, flags: DIFlagFwdDecl)
!3150 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3145, file: !166, line: 532, baseType: !3152, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !166, line: 49, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2880, file: !166, line: 738, baseType: !3155, size: 64, offset: 4416)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3157)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !166, line: 738, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2880, file: !166, line: 740, baseType: !3159, size: 64, offset: 4480)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2880, file: !166, line: 741, baseType: !569, size: 64, offset: 4544)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2880, file: !166, line: 746, baseType: !569, size: 64, offset: 4608)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2880, file: !166, line: 747, baseType: !3163, size: 64, offset: 4672)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3165)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !166, line: 747, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2880, file: !166, line: 749, baseType: !3167, size: 64, offset: 4736)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !166, line: 428, size: 128, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3168, file: !166, line: 433, baseType: !7, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3168, file: !166, line: 434, baseType: !7, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3168, file: !166, line: 435, baseType: !39, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2880, file: !166, line: 751, baseType: !97, size: 128, offset: 4800)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2880, file: !166, line: 762, baseType: !3175, size: 64, offset: 4928)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !166, line: 762, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2880, file: !166, line: 770, baseType: !3178, offset: 4992)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3179, line: 5, elements: !836)
!3179 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2880, file: !166, line: 772, baseType: !3181, size: 64, offset: 4992)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3183, line: 48, size: 1152, elements: !3184)
!3183 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3184 = !{!3185, !3186, !3188, !3189, !3292, !3300, !3301, !3302, !3303, !3304, !3305}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3182, file: !3183, line: 49, baseType: !16, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3182, file: !3183, line: 50, baseType: !3187, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3183, line: 25, baseType: !521)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3182, file: !3183, line: 51, baseType: !16, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3182, file: !3183, line: 52, baseType: !3190, size: 512, offset: 192)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3191, line: 41, size: 512, elements: !3192)
!3191 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3192 = !{!3193, !3195, !3288, !3289, !3290, !3291}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3190, file: !3191, line: 42, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3190, file: !3191, line: 43, baseType: !3196, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3191, line: 125, size: 1408, elements: !3199)
!3199 = !{!3200, !3204, !3208, !3214, !3218, !3219, !3223, !3227, !3231, !3235, !3239, !3240, !3244, !3248, !3252, !3263, !3264, !3265, !3266, !3276, !3280, !3284}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3198, file: !3191, line: 126, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!3194, !3194}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3198, file: !3191, line: 127, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !3194}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3198, file: !3191, line: 128, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!1033, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3198, file: !3191, line: 129, baseType: !3215, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!340, !3212, !2899}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3198, file: !3191, line: 131, baseType: !3209, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3198, file: !3191, line: 133, baseType: !3220, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!187, !3212}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3198, file: !3191, line: 134, baseType: !3224, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!1033, !3212, !16}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3198, file: !3191, line: 136, baseType: !3228, size: 64, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!22, !3212, !16, !7, !20, !35}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3198, file: !3191, line: 141, baseType: !3232, size: 64, offset: 512)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!22, !3212, !16, !2424, !35}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3198, file: !3191, line: 144, baseType: !3236, size: 64, offset: 576)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!16, !3212}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3198, file: !3191, line: 145, baseType: !3236, size: 64, offset: 640)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3198, file: !3191, line: 146, baseType: !3241, size: 64, offset: 704)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!3194, !3212}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3198, file: !3191, line: 148, baseType: !3245, size: 64, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!3194, !3212, !3194}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3198, file: !3191, line: 151, baseType: !3249, size: 64, offset: 832)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!3194, !3212, !16}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3198, file: !3191, line: 153, baseType: !3253, size: 64, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!22, !3212, !16, !16, !7, !7, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3191, line: 94, size: 640, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3257, file: !3191, line: 95, baseType: !3194, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3257, file: !3191, line: 96, baseType: !7, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3257, file: !3191, line: 97, baseType: !3262, size: 512, offset: 128)
!3262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 512, elements: !677)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3198, file: !3191, line: 158, baseType: !3245, size: 64, offset: 960)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3198, file: !3191, line: 161, baseType: !3241, size: 64, offset: 1024)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3198, file: !3191, line: 163, baseType: !3201, size: 64, offset: 1088)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3198, file: !3191, line: 164, baseType: !3267, size: 64, offset: 1152)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!22, !3212, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3191, line: 73, size: 128, elements: !3272)
!3272 = !{!3273, !3274, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3271, file: !3191, line: 74, baseType: !7, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3271, file: !3191, line: 75, baseType: !7, size: 32, offset: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3271, file: !3191, line: 76, baseType: !3212, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3198, file: !3191, line: 166, baseType: !3277, size: 64, offset: 1216)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!20, !3194, !22}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3198, file: !3191, line: 167, baseType: !3281, size: 64, offset: 1280)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!22, !3212, !7}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3198, file: !3191, line: 168, baseType: !3285, size: 64, offset: 1344)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!22, !3194}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3190, file: !3191, line: 44, baseType: !2879, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3190, file: !3191, line: 45, baseType: !97, size: 128, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3190, file: !3191, line: 46, baseType: !97, size: 128, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3190, file: !3191, line: 47, baseType: !83, size: 8, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3182, file: !3183, line: 54, baseType: !3293, size: 64, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3183, line: 28, size: 256, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3294, file: !3183, line: 29, baseType: !351, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3294, file: !3183, line: 30, baseType: !22, size: 32, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3294, file: !3183, line: 31, baseType: !20, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3294, file: !3183, line: 32, baseType: !3293, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3182, file: !3183, line: 55, baseType: !3293, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3182, file: !3183, line: 56, baseType: !3181, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3182, file: !3183, line: 57, baseType: !3181, size: 64, offset: 896)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3182, file: !3183, line: 58, baseType: !3181, size: 64, offset: 960)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3182, file: !3183, line: 62, baseType: !39, size: 64, offset: 1024)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3182, file: !3183, line: 63, baseType: !20, size: 64, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2880, file: !166, line: 773, baseType: !3194, size: 64, offset: 5056)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2880, file: !166, line: 776, baseType: !22, size: 32, offset: 5120)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2880, file: !166, line: 778, baseType: !1894, size: 32, offset: 5152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2880, file: !166, line: 779, baseType: !521, size: 32, offset: 5184)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2880, file: !166, line: 781, baseType: !59, size: 32, offset: 5216)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2880, file: !166, line: 782, baseType: !97, size: 128, offset: 5248)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2880, file: !166, line: 784, baseType: !3313, size: 64, offset: 5376)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3316, line: 52, size: 768, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3326, !3330, !3331, !3332, !3333, !3337, !3341}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3315, file: !3316, line: 53, baseType: !16, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3315, file: !3316, line: 55, baseType: !2020, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3315, file: !3316, line: 56, baseType: !2020, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3315, file: !3316, line: 58, baseType: !2896, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3315, file: !3316, line: 59, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!351, !2899, !2905}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3315, file: !3316, line: 61, baseType: !3327, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !3313}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3315, file: !3316, line: 62, baseType: !2907, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3315, file: !3316, line: 64, baseType: !2916, size: 64, offset: 448)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3315, file: !3316, line: 66, baseType: !2061, size: 64, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3315, file: !3316, line: 67, baseType: !3334, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!340, !2899}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3315, file: !3316, line: 69, baseType: !3338, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !2899, !1212, !1213}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3315, file: !3316, line: 71, baseType: !2911, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2880, file: !166, line: 785, baseType: !2020, size: 64, offset: 5440)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2880, file: !166, line: 787, baseType: !2907, size: 64, offset: 5504)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2880, file: !166, line: 788, baseType: !3345, size: 64, offset: 5568)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !166, line: 46, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2880, file: !166, line: 789, baseType: !3348, size: 64, offset: 5632)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !166, line: 48, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2880, file: !166, line: 791, baseType: !3351, size: 64, offset: 5696)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !166, line: 597, size: 128, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3352, file: !166, line: 598, baseType: !193, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3352, file: !166, line: 599, baseType: !202, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3352, file: !166, line: 600, baseType: !207, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3352, file: !166, line: 601, baseType: !1033, size: 8, offset: 96)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3352, file: !166, line: 602, baseType: !1033, size: 8, offset: 104)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2880, file: !166, line: 793, baseType: !212, size: 32, offset: 5760)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2880, file: !166, line: 795, baseType: !1033, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2880, file: !166, line: 796, baseType: !1033, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2880, file: !166, line: 797, baseType: !1033, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2880, file: !166, line: 798, baseType: !1033, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2880, file: !166, line: 799, baseType: !1033, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2874, file: !219, line: 307, baseType: !2879, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2874, file: !219, line: 308, baseType: !2020, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2874, file: !219, line: 309, baseType: !2020, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2874, file: !219, line: 310, baseType: !16, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2874, file: !219, line: 311, baseType: !22, size: 32, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2874, file: !219, line: 316, baseType: !22, size: 32, offset: 544)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2874, file: !219, line: 318, baseType: !1369, size: 64, offset: 576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2874, file: !219, line: 319, baseType: !3373, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !219, line: 977, size: 1856, elements: !3375)
!3375 = !{!3376, !3428, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3374, file: !219, line: 978, baseType: !3377, size: 896)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !219, line: 873, size: 896, elements: !3378)
!3378 = !{!3379, !3380, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3377, file: !219, line: 874, baseType: !2873, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3377, file: !219, line: 875, baseType: !3381, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !219, line: 912, size: 1792, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !219, line: 917, baseType: !372, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3382, file: !219, line: 923, baseType: !359, size: 256, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3382, file: !219, line: 925, baseType: !97, size: 128, offset: 320)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3382, file: !219, line: 926, baseType: !3388, size: 128, offset: 448)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !219, line: 901, size: 128, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3388, file: !219, line: 902, baseType: !701, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3388, file: !219, line: 903, baseType: !569, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3382, file: !219, line: 927, baseType: !3388, size: 128, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3382, file: !219, line: 928, baseType: !97, size: 128, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3382, file: !219, line: 930, baseType: !22, size: 32, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3382, file: !219, line: 931, baseType: !22, size: 32, offset: 864)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3382, file: !219, line: 932, baseType: !22, size: 32, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3382, file: !219, line: 934, baseType: !22, size: 32, offset: 928)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3382, file: !219, line: 935, baseType: !22, size: 32, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3382, file: !219, line: 936, baseType: !22, size: 32, offset: 992)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3382, file: !219, line: 937, baseType: !22, size: 32, offset: 1024)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3382, file: !219, line: 939, baseType: !460, size: 32, offset: 1056)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3382, file: !219, line: 940, baseType: !510, size: 64, offset: 1088)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3382, file: !219, line: 945, baseType: !569, size: 64, offset: 1152)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3382, file: !219, line: 946, baseType: !569, size: 64, offset: 1216)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3382, file: !219, line: 947, baseType: !569, size: 64, offset: 1280)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3382, file: !219, line: 953, baseType: !3381, size: 64, offset: 1344)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3382, file: !219, line: 954, baseType: !569, size: 64, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3382, file: !219, line: 955, baseType: !569, size: 64, offset: 1472)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3382, file: !219, line: 956, baseType: !22, size: 32, offset: 1536)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3382, file: !219, line: 958, baseType: !22, size: 32, offset: 1568)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3382, file: !219, line: 960, baseType: !413, size: 128, align: 64, offset: 1600)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3382, file: !219, line: 968, baseType: !3413, size: 64, offset: 1728)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3414, line: 12, baseType: !3415)
!3414 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3414, line: 10, size: 64, elements: !3416)
!3416 = !{!3417}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3415, file: !3414, line: 11, baseType: !363, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3377, file: !219, line: 877, baseType: !97, size: 128, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3377, file: !219, line: 879, baseType: !97, size: 128, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3377, file: !219, line: 880, baseType: !97, size: 128, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3377, file: !219, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3377, file: !219, line: 885, baseType: !7, size: 32, offset: 544)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3377, file: !219, line: 886, baseType: !7, size: 32, offset: 576)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3377, file: !219, line: 888, baseType: !49, size: 32, offset: 608)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3377, file: !219, line: 889, baseType: !413, size: 128, align: 64, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3377, file: !219, line: 891, baseType: !20, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3377, file: !219, line: 898, baseType: !22, size: 32, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3374, file: !219, line: 979, baseType: !3429, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3374, file: !219, line: 981, baseType: !97, size: 128, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3374, file: !219, line: 982, baseType: !22, size: 32, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3374, file: !219, line: 984, baseType: !22, size: 32, offset: 1120)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3374, file: !219, line: 985, baseType: !22, size: 32, offset: 1152)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3374, file: !219, line: 987, baseType: !372, size: 32, offset: 1184)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3374, file: !219, line: 988, baseType: !634, size: 512, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3374, file: !219, line: 989, baseType: !642, size: 64, offset: 1728)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3374, file: !219, line: 990, baseType: !7, size: 32, offset: 1792)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2874, file: !219, line: 320, baseType: !49, size: 32, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2874, file: !219, line: 321, baseType: !22, size: 32, offset: 736)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2874, file: !219, line: 322, baseType: !22, size: 32, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2874, file: !219, line: 325, baseType: !7, size: 32, offset: 800)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2874, file: !219, line: 331, baseType: !3443, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !2873}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2874, file: !219, line: 332, baseType: !3443, size: 64, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2874, file: !219, line: 350, baseType: !3448, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!22, !2856}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2874, file: !219, line: 356, baseType: !3452, size: 64, offset: 1024)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !2856, !815}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2874, file: !219, line: 357, baseType: !3452, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2874, file: !219, line: 385, baseType: !3457, size: 64, offset: 1152)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!22, !2856, !22}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2874, file: !219, line: 386, baseType: !3461, size: 64, offset: 1216)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{null, !2856, !22}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2874, file: !219, line: 406, baseType: !3461, size: 64, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2874, file: !219, line: 407, baseType: !3461, size: 64, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2874, file: !219, line: 415, baseType: !3467, size: 64, offset: 1408)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !2856}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2874, file: !219, line: 427, baseType: !3471, size: 64, offset: 1472)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !2873, !7}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2874, file: !219, line: 436, baseType: !3475, size: 64, offset: 1536)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!22, !2873}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2874, file: !219, line: 443, baseType: !3443, size: 64, offset: 1600)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2874, file: !219, line: 450, baseType: !3448, size: 64, offset: 1664)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2874, file: !219, line: 455, baseType: !3481, size: 64, offset: 1728)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !3429, !1033}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2874, file: !219, line: 461, baseType: !3485, size: 64, offset: 1792)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3487, line: 325, flags: DIFlagFwdDecl)
!3487 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2874, file: !219, line: 469, baseType: !3489, size: 64, offset: 1856)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3429, !3429}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2874, file: !219, line: 476, baseType: !3493, size: 64, offset: 1920)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!20, !2856, !3496, !22, !1033}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2874, file: !219, line: 483, baseType: !2085, size: 64, offset: 1984)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2874, file: !219, line: 494, baseType: !3499, size: 64, offset: 2048)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!951, !2856, !3502, !39}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !219, line: 1014, size: 448, elements: !3504)
!3504 = !{!3505, !3506, !3509, !3510, !3511, !3512, !3517}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3503, file: !219, line: 1015, baseType: !2856, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3503, file: !219, line: 1016, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !219, line: 641, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3503, file: !219, line: 1017, baseType: !39, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3503, file: !219, line: 1018, baseType: !39, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3503, file: !219, line: 1019, baseType: !569, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !219, line: 1020, baseType: !3513, size: 64, offset: 320)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !219, line: 1020, size: 64, elements: !3514)
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3513, file: !219, line: 1021, baseType: !20, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3513, file: !219, line: 1022, baseType: !39, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3503, file: !219, line: 1024, baseType: !22, size: 32, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2874, file: !219, line: 506, baseType: !3519, size: 64, offset: 2112)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!22, !100}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2874, file: !219, line: 520, baseType: !3467, size: 64, offset: 2176)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2874, file: !219, line: 530, baseType: !3448, size: 64, offset: 2240)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2874, file: !219, line: 537, baseType: !3525, size: 64, offset: 2304)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!1033, !2873, !22}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2874, file: !219, line: 542, baseType: !3529, size: 64, offset: 2368)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!22, !2856, !569}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2857, file: !219, line: 715, baseType: !20, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2857, file: !219, line: 717, baseType: !218, size: 32, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2857, file: !219, line: 718, baseType: !7, size: 32, offset: 1376)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2857, file: !219, line: 719, baseType: !3536, size: 64, offset: 1408)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3537, line: 26, baseType: !3538)
!3537 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3537, line: 24, size: 64, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3538, file: !3537, line: 25, baseType: !3413, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2857, file: !219, line: 720, baseType: !365, size: 64, offset: 1472)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2857, file: !219, line: 728, baseType: !569, size: 64, offset: 1536)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2857, file: !219, line: 729, baseType: !569, size: 64, offset: 1600)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2857, file: !219, line: 730, baseType: !569, size: 64, offset: 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2857, file: !219, line: 732, baseType: !3546, size: 1088, offset: 1728)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3547, line: 385, size: 1088, elements: !3548)
!3547 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3548 = !{!3549, !3550, !3551, !3552, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3602, !3603, !3610, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3546, file: !3547, line: 390, baseType: !522, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3546, file: !3547, line: 395, baseType: !522, size: 32, offset: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3546, file: !3547, line: 400, baseType: !570, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3546, file: !3547, line: 402, baseType: !3553, size: 64, offset: 128)
!3553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3546, file: !3547, line: 402, size: 64, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3553, file: !3547, line: 403, baseType: !570, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3553, file: !3547, line: 404, baseType: !570, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3546, file: !3547, line: 407, baseType: !570, size: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3546, file: !3547, line: 408, baseType: !570, size: 64, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3546, file: !3547, line: 410, baseType: !570, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3546, file: !3547, line: 411, baseType: !570, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3546, file: !3547, line: 412, baseType: !570, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3546, file: !3547, line: 413, baseType: !570, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3546, file: !3547, line: 414, baseType: !570, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3546, file: !3547, line: 415, baseType: !570, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3546, file: !3547, line: 416, baseType: !570, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3546, file: !3547, line: 417, baseType: !570, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3546, file: !3547, line: 418, baseType: !570, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3546, file: !3547, line: 419, baseType: !570, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3546, file: !3547, line: 420, baseType: !570, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3546, file: !3547, line: 421, baseType: !570, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3546, file: !3547, line: 422, baseType: !570, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3546, file: !3547, line: 423, baseType: !570, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3546, file: !3547, line: 424, baseType: !570, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3546, file: !3547, line: 435, baseType: !570, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3546, file: !3547, line: 436, baseType: !570, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3546, file: !3547, line: 437, baseType: !570, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3546, file: !3547, line: 439, baseType: !570, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3546, file: !3547, line: 440, baseType: !570, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3546, file: !3547, line: 442, baseType: !570, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3546, file: !3547, line: 443, baseType: !570, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3546, file: !3547, line: 444, baseType: !570, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3546, file: !3547, line: 445, baseType: !570, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3546, file: !3547, line: 446, baseType: !570, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3546, file: !3547, line: 447, baseType: !570, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3546, file: !3547, line: 448, baseType: !570, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3546, file: !3547, line: 449, baseType: !570, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3546, file: !3547, line: 450, baseType: !570, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3546, file: !3547, line: 451, baseType: !570, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3546, file: !3547, line: 452, baseType: !570, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3546, file: !3547, line: 453, baseType: !570, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3546, file: !3547, line: 454, baseType: !570, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3546, file: !3547, line: 455, baseType: !570, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3546, file: !3547, line: 456, baseType: !570, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3546, file: !3547, line: 457, baseType: !570, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3546, file: !3547, line: 458, baseType: !570, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3546, file: !3547, line: 459, baseType: !570, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !3546, file: !3547, line: 461, baseType: !3598, size: 32, offset: 384)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3546, file: !3547, line: 461, size: 32, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3598, file: !3547, line: 462, baseType: !522, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3598, file: !3547, line: 463, baseType: !522, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3546, file: !3547, line: 466, baseType: !522, size: 32, offset: 416)
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3546, file: !3547, line: 467, baseType: !3604, size: 64, offset: 448)
!3604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3546, file: !3547, line: 467, size: 64, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3604, file: !3547, line: 468, baseType: !570, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3604, file: !3547, line: 469, baseType: !570, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3604, file: !3547, line: 470, baseType: !570, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3604, file: !3547, line: 471, baseType: !570, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3546, file: !3547, line: 473, baseType: !3611, size: 64, offset: 512)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3546, file: !3547, line: 473, size: 64, elements: !3612)
!3612 = !{!3613, !3614, !3615, !3616}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3611, file: !3547, line: 474, baseType: !570, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3611, file: !3547, line: 475, baseType: !570, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3611, file: !3547, line: 476, baseType: !570, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3611, file: !3547, line: 477, baseType: !570, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3546, file: !3547, line: 479, baseType: !570, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3546, file: !3547, line: 485, baseType: !570, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3546, file: !3547, line: 490, baseType: !522, size: 32, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3546, file: !3547, line: 492, baseType: !918, size: 32, offset: 736)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3546, file: !3547, line: 501, baseType: !570, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3546, file: !3547, line: 506, baseType: !522, size: 32, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3546, file: !3547, line: 507, baseType: !94, size: 16, offset: 864)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3546, file: !3547, line: 508, baseType: !94, size: 16, offset: 880)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3546, file: !3547, line: 509, baseType: !522, size: 32, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3546, file: !3547, line: 510, baseType: !522, size: 32, offset: 928)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3546, file: !3547, line: 518, baseType: !570, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3546, file: !3547, line: 520, baseType: !570, size: 64, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2857, file: !219, line: 733, baseType: !93, size: 16, offset: 2816)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2857, file: !219, line: 734, baseType: !93, size: 16, offset: 2832)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2857, file: !219, line: 735, baseType: !93, size: 16, offset: 2848)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2857, file: !219, line: 736, baseType: !3633, size: 1536, offset: 2880)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !219, line: 155, size: 1536, elements: !3634)
!3634 = !{!3635, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3719, !3720, !3721, !3722}
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !3633, file: !219, line: 157, baseType: !3636, size: 768)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3633, file: !219, line: 157, size: 768, elements: !3637)
!3637 = !{!3638, !3657, !3661, !3665, !3670, !3692}
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !219, line: 158, baseType: !3639, size: 768)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !219, line: 158, size: 768, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3656}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3639, file: !219, line: 159, baseType: !569, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3639, file: !219, line: 160, baseType: !569, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3639, file: !219, line: 161, baseType: !39, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3639, file: !219, line: 162, baseType: !39, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3639, file: !219, line: 163, baseType: !22, size: 32, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3639, file: !219, line: 164, baseType: !22, size: 32, offset: 288)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3639, file: !219, line: 165, baseType: !22, size: 32, offset: 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3639, file: !219, line: 166, baseType: !22, size: 32, offset: 352)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3639, file: !219, line: 168, baseType: !3650, size: 192, offset: 384)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !219, line: 134, size: 192, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3650, file: !219, line: 135, baseType: !569, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3650, file: !219, line: 136, baseType: !7, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3650, file: !219, line: 137, baseType: !22, size: 32, offset: 96)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3650, file: !219, line: 138, baseType: !22, size: 32, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3639, file: !219, line: 169, baseType: !3650, size: 192, offset: 576)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !219, line: 171, baseType: !3658, size: 512)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !219, line: 171, size: 512, elements: !3659)
!3659 = !{!3660}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3658, file: !219, line: 172, baseType: !634, size: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !219, line: 174, baseType: !3662, size: 128)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !219, line: 174, size: 128, elements: !3663)
!3663 = !{!3664}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3662, file: !219, line: 176, baseType: !97, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !219, line: 178, baseType: !3666, size: 128)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !219, line: 178, size: 128, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3666, file: !219, line: 179, baseType: !569, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3666, file: !219, line: 180, baseType: !569, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !219, line: 183, baseType: !3671, size: 320)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !219, line: 183, size: 320, elements: !3672)
!3672 = !{!3673, !3681}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3671, file: !219, line: 189, baseType: !3674, size: 192)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3675, line: 14, size: 192, elements: !3676)
!3675 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3676 = !{!3677, !3678, !3679, !3680}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3674, file: !3675, line: 15, baseType: !39, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3674, file: !3675, line: 16, baseType: !39, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3674, file: !3675, line: 17, baseType: !83, size: 8, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3674, file: !3675, line: 18, baseType: !83, size: 8, offset: 136)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3671, file: !219, line: 190, baseType: !3682, size: 128, offset: 192)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3683, line: 21, size: 128, elements: !3684)
!3683 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3684 = !{!3685, !3690}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3682, file: !3683, line: 22, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3683, line: 17, size: 64, elements: !3687)
!3687 = !{!3688}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3686, file: !3683, line: 18, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3682, file: !3683, line: 23, baseType: !3691, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !219, line: 193, baseType: !3693, size: 192)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !219, line: 193, size: 192, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3699}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3693, file: !219, line: 194, baseType: !83, size: 8)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3693, file: !219, line: 195, baseType: !83, size: 8, offset: 8)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3693, file: !219, line: 196, baseType: !93, size: 16, offset: 16)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3693, file: !219, line: 197, baseType: !569, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3693, file: !219, line: 198, baseType: !569, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3633, file: !219, line: 205, baseType: !510, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3633, file: !219, line: 211, baseType: !20, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3633, file: !219, line: 214, baseType: !39, size: 64, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3633, file: !219, line: 223, baseType: !22, size: 32, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3633, file: !219, line: 229, baseType: !3536, size: 64, offset: 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3633, file: !219, line: 234, baseType: !569, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3633, file: !219, line: 236, baseType: !3707, size: 128, offset: 1152)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3633, file: !219, line: 236, size: 128, elements: !3708)
!3708 = !{!3709, !3714}
!3709 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !219, line: 237, baseType: !3710, size: 128)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3707, file: !219, line: 237, size: 128, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3710, file: !219, line: 241, baseType: !569, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3710, file: !219, line: 249, baseType: !3536, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !219, line: 251, baseType: !3715, size: 128)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3707, file: !219, line: 251, size: 128, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3715, file: !219, line: 252, baseType: !569, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3715, file: !219, line: 253, baseType: !569, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3633, file: !219, line: 261, baseType: !569, size: 64, offset: 1280)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3633, file: !219, line: 262, baseType: !569, size: 64, offset: 1344)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3633, file: !219, line: 268, baseType: !569, size: 64, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3633, file: !219, line: 269, baseType: !569, size: 64, offset: 1472)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2857, file: !219, line: 738, baseType: !3381, size: 64, offset: 4416)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2857, file: !219, line: 744, baseType: !3429, size: 64, offset: 4480)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2857, file: !219, line: 745, baseType: !363, size: 64, offset: 4544)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2857, file: !219, line: 751, baseType: !365, size: 64, offset: 4608)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2857, file: !219, line: 752, baseType: !365, size: 64, offset: 4672)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2857, file: !219, line: 757, baseType: !359, size: 256, offset: 4736)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2857, file: !219, line: 758, baseType: !97, size: 128, offset: 4992)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2857, file: !219, line: 759, baseType: !2856, size: 64, offset: 5120)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2857, file: !219, line: 761, baseType: !22, size: 32, offset: 5184)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2857, file: !219, line: 762, baseType: !22, size: 32, offset: 5216)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2857, file: !219, line: 764, baseType: !97, size: 128, offset: 5248)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2857, file: !219, line: 765, baseType: !510, size: 64, offset: 5376)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2857, file: !219, line: 768, baseType: !359, size: 256, offset: 5440)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2857, file: !219, line: 769, baseType: !49, size: 32, offset: 5696)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2857, file: !219, line: 771, baseType: !3507, size: 64, offset: 5760)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2857, file: !219, line: 772, baseType: !97, size: 128, offset: 5824)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2857, file: !219, line: 773, baseType: !39, size: 64, offset: 5952)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2857, file: !219, line: 774, baseType: !22, size: 32, offset: 6016)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2857, file: !219, line: 777, baseType: !54, size: 192, offset: 6080)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2857, file: !219, line: 778, baseType: !3743, size: 64, offset: 6272)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !228, line: 1083, size: 384, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3751}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3744, file: !228, line: 1084, baseType: !433, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3744, file: !228, line: 1085, baseType: !22, size: 32, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3744, file: !228, line: 1086, baseType: !22, size: 32, offset: 96)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3744, file: !228, line: 1087, baseType: !3743, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3744, file: !228, line: 1088, baseType: !843, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3744, file: !228, line: 1089, baseType: !413, size: 128, align: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2857, file: !219, line: 781, baseType: !7, size: 32, offset: 6336)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2857, file: !219, line: 782, baseType: !7, size: 32, offset: 6368)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2857, file: !219, line: 783, baseType: !7, size: 32, offset: 6400)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2857, file: !219, line: 784, baseType: !7, size: 32, offset: 6432)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2857, file: !219, line: 785, baseType: !39, size: 64, offset: 6464)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2857, file: !219, line: 786, baseType: !2592, size: 256, offset: 6528)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2857, file: !219, line: 787, baseType: !413, size: 128, align: 64, offset: 6784)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2857, file: !219, line: 788, baseType: !7, size: 32, offset: 6912)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2857, file: !219, line: 789, baseType: !2602, size: 64, offset: 6976)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2857, file: !219, line: 791, baseType: !49, size: 32, offset: 7040)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2857, file: !219, line: 794, baseType: !3763, size: 192, offset: 7104)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !219, line: 579, size: 192, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3763, file: !219, line: 580, baseType: !97, size: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3763, file: !219, line: 581, baseType: !372, size: 32, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3763, file: !219, line: 582, baseType: !7, size: 32, offset: 160)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2857, file: !219, line: 796, baseType: !3769, size: 64, offset: 7296)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !219, line: 585, size: 128, elements: !3771)
!3771 = !{!3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3770, file: !219, line: 586, baseType: !39, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3770, file: !219, line: 587, baseType: !39, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2857, file: !219, line: 797, baseType: !39, size: 64, offset: 7360)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2857, file: !219, line: 800, baseType: !2856, size: 64, offset: 7424)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2857, file: !219, line: 802, baseType: !3467, size: 64, offset: 7488)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2857, file: !219, line: 803, baseType: !413, size: 128, align: 64, offset: 7552)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2857, file: !219, line: 805, baseType: !489, size: 64, offset: 7680)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2857, file: !219, line: 806, baseType: !569, size: 64, offset: 7744)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2857, file: !219, line: 808, baseType: !365, size: 64, offset: 7808)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2857, file: !219, line: 810, baseType: !3782, size: 64, offset: 7872)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!569}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2857, file: !219, line: 811, baseType: !3786, size: 64, offset: 7936)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !219, line: 605, baseType: !3787)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !2856, !3790, !3895}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !219, line: 1148, size: 2048, align: 512, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3802, !3803, !3804, !3809, !3810, !3817, !3838, !3860, !3870, !3888, !3889, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3791, file: !219, line: 1153, baseType: !569, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3791, file: !219, line: 1154, baseType: !569, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3791, file: !219, line: 1155, baseType: !569, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3791, file: !219, line: 1161, baseType: !569, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3791, file: !219, line: 1165, baseType: !3798, size: 64, offset: 256)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !219, line: 1162, size: 64, elements: !3799)
!3799 = !{!3800, !3801}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3798, file: !219, line: 1163, baseType: !521, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3798, file: !219, line: 1164, baseType: !521, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3791, file: !219, line: 1166, baseType: !569, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3791, file: !219, line: 1167, baseType: !569, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3791, file: !219, line: 1171, baseType: !3805, size: 64, offset: 448)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !219, line: 1168, size: 64, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3805, file: !219, line: 1169, baseType: !521, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3805, file: !219, line: 1170, baseType: !521, size: 32, offset: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3791, file: !219, line: 1177, baseType: !569, size: 64, offset: 512)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3791, file: !219, line: 1178, baseType: !3811, size: 64, offset: 576)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !219, line: 67, size: 64, elements: !3813)
!3813 = !{!3814, !3815}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3812, file: !219, line: 68, baseType: !570, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3812, file: !219, line: 69, baseType: !3816, offset: 64)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, elements: !1264)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3791, file: !219, line: 1179, baseType: !3818, size: 64, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !219, line: 93, size: 256, elements: !3820)
!3820 = !{!3821, !3837}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3819, file: !219, line: 94, baseType: !3822, size: 224)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !219, line: 83, size: 224, elements: !3823)
!3823 = !{!3824, !3830, !3835, !3836}
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3822, file: !219, line: 84, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3822, file: !219, line: 84, size: 64, elements: !3826)
!3826 = !{!3827, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3825, file: !219, line: 85, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3825, file: !219, line: 86, baseType: !39, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3822, file: !219, line: 88, baseType: !3831, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !219, line: 80, baseType: !3832)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!39, !20, !340, !39, !39}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3822, file: !219, line: 89, baseType: !20, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3822, file: !219, line: 90, baseType: !521, size: 32, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3819, file: !219, line: 95, baseType: !521, size: 32, offset: 224)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3791, file: !219, line: 1180, baseType: !3839, size: 64, offset: 704)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !219, line: 123, size: 128, elements: !3841)
!3841 = !{!3842, !3843, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3840, file: !219, line: 124, baseType: !570, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3840, file: !219, line: 125, baseType: !570, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3840, file: !219, line: 126, baseType: !3845, offset: 128)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3846, elements: !1264)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3547, line: 1415, size: 192, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3846, file: !3547, line: 1416, baseType: !570, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3846, file: !3547, line: 1417, baseType: !570, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3846, file: !3547, line: 1418, baseType: !570, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3846, file: !3547, line: 1419, baseType: !570, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3846, file: !3547, line: 1420, baseType: !570, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3846, file: !3547, line: 1421, baseType: !570, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3846, file: !3547, line: 1422, baseType: !570, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3846, file: !3547, line: 1423, baseType: !570, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3846, file: !3547, line: 1424, baseType: !570, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3846, file: !3547, line: 1425, baseType: !570, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3846, file: !3547, line: 1426, baseType: !570, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3846, file: !3547, line: 1427, baseType: !570, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3791, file: !219, line: 1181, baseType: !3861, size: 64, offset: 768)
!3861 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3547, line: 1430, size: 64, elements: !3862)
!3862 = !{!3863, !3864}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3861, file: !3547, line: 1431, baseType: !570, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !3547, line: 1433, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !3547, line: 1433, size: 64, elements: !3866)
!3866 = !{!3867, !3868, !3869}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3865, file: !3547, line: 1434, baseType: !522, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3865, file: !3547, line: 1435, baseType: !94, size: 16, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3865, file: !3547, line: 1436, baseType: !94, size: 16, offset: 48)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3791, file: !219, line: 1182, baseType: !3871, size: 64, offset: 832)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3547, line: 1267, size: 64, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3871, file: !3547, line: 1268, baseType: !570, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !3871, file: !3547, line: 1269, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3871, file: !3547, line: 1269, size: 64, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3875, file: !3547, line: 1270, baseType: !570, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3875, file: !3547, line: 1271, baseType: !570, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3875, file: !3547, line: 1272, baseType: !570, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3875, file: !3547, line: 1273, baseType: !570, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3875, file: !3547, line: 1274, baseType: !570, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3875, file: !3547, line: 1275, baseType: !570, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3875, file: !3547, line: 1276, baseType: !570, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3875, file: !3547, line: 1277, baseType: !570, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3875, file: !3547, line: 1278, baseType: !570, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3875, file: !3547, line: 1279, baseType: !570, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3875, file: !3547, line: 1280, baseType: !570, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3791, file: !219, line: 1183, baseType: !569, size: 64, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3791, file: !219, line: 1185, baseType: !3890, size: 128, offset: 960)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3891, line: 7, size: 128, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3890, file: !3891, line: 8, baseType: !570, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3890, file: !3891, line: 9, baseType: !3895, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3897, line: 103, size: 1344, elements: !3898)
!3897 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3927, !3928, !3929}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3896, file: !3897, line: 109, baseType: !39, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3896, file: !3897, line: 110, baseType: !39, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3896, file: !3897, line: 111, baseType: !39, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3896, file: !3897, line: 112, baseType: !39, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3896, file: !3897, line: 113, baseType: !39, size: 64, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3896, file: !3897, line: 114, baseType: !39, size: 64, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3896, file: !3897, line: 117, baseType: !39, size: 64, offset: 384)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3896, file: !3897, line: 118, baseType: !39, size: 64, offset: 448)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3896, file: !3897, line: 119, baseType: !39, size: 64, offset: 512)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3896, file: !3897, line: 120, baseType: !39, size: 64, offset: 576)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3896, file: !3897, line: 121, baseType: !39, size: 64, offset: 640)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3896, file: !3897, line: 122, baseType: !39, size: 64, offset: 704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3896, file: !3897, line: 123, baseType: !39, size: 64, offset: 768)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3896, file: !3897, line: 124, baseType: !39, size: 64, offset: 832)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3896, file: !3897, line: 125, baseType: !39, size: 64, offset: 896)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3896, file: !3897, line: 139, baseType: !39, size: 64, offset: 960)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3896, file: !3897, line: 142, baseType: !39, size: 64, offset: 1024)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !3897, line: 144, baseType: !3917, size: 64, offset: 1088)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !3897, line: 144, size: 64, elements: !3918)
!3918 = !{!3919, !3920, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3917, file: !3897, line: 146, baseType: !93, size: 16)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3917, file: !3897, line: 148, baseType: !569, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3917, file: !3897, line: 150, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3897, line: 59, size: 64, elements: !3923)
!3923 = !{!3924, !3925, !3926}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3922, file: !3897, line: 61, baseType: !569, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3922, file: !3897, line: 63, baseType: !569, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3922, file: !3897, line: 65, baseType: !569, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3896, file: !3897, line: 153, baseType: !39, size: 64, offset: 1152)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3896, file: !3897, line: 154, baseType: !39, size: 64, offset: 1216)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !3897, line: 156, baseType: !3930, size: 64, offset: 1280)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !3897, line: 156, size: 64, elements: !3931)
!3931 = !{!3932, !3933, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3930, file: !3897, line: 158, baseType: !93, size: 16)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3930, file: !3897, line: 160, baseType: !569, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3930, file: !3897, line: 162, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3897, line: 69, size: 64, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3935, file: !3897, line: 71, baseType: !569, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3935, file: !3897, line: 73, baseType: !569, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3935, file: !3897, line: 75, baseType: !569, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3935, file: !3897, line: 77, baseType: !569, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3935, file: !3897, line: 80, baseType: !569, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3935, file: !3897, line: 83, baseType: !569, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3935, file: !3897, line: 86, baseType: !569, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3935, file: !3897, line: 88, baseType: !569, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3935, file: !3897, line: 93, baseType: !569, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3935, file: !3897, line: 100, baseType: !569, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3791, file: !219, line: 1186, baseType: !3890, size: 128, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3791, file: !219, line: 1187, baseType: !569, size: 64, offset: 1216)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3791, file: !219, line: 1189, baseType: !569, size: 64, offset: 1280)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3791, file: !219, line: 1190, baseType: !569, size: 64, offset: 1344)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3791, file: !219, line: 1191, baseType: !569, size: 64, offset: 1408)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3791, file: !219, line: 1192, baseType: !569, size: 64, offset: 1472)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3791, file: !219, line: 1193, baseType: !569, size: 64, offset: 1536)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3791, file: !219, line: 1194, baseType: !569, size: 64, offset: 1600)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3791, file: !219, line: 1195, baseType: !569, size: 64, offset: 1664)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2857, file: !219, line: 812, baseType: !20, size: 64, offset: 8000)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2857, file: !219, line: 820, baseType: !2427, size: 64, offset: 8064)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2857, file: !219, line: 821, baseType: !2735, size: 64, offset: 8128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2857, file: !219, line: 828, baseType: !3960, size: 64, offset: 8192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !219, line: 1046, size: 1664, elements: !3962)
!3962 = !{!3963, !3964}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3961, file: !219, line: 1047, baseType: !1545, size: 1600)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3961, file: !219, line: 1048, baseType: !3965, size: 64, offset: 1600)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !219, line: 1039, size: 256, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3966, file: !219, line: 1040, baseType: !569, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3966, file: !219, line: 1041, baseType: !569, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3966, file: !219, line: 1042, baseType: !569, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3966, file: !219, line: 1043, baseType: !22, size: 32, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2857, file: !219, line: 832, baseType: !20, size: 64, offset: 8256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2857, file: !219, line: 834, baseType: !97, size: 128, offset: 8320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2857, file: !219, line: 842, baseType: !522, size: 32, offset: 8448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1925, file: !130, line: 524, baseType: !7, size: 32, offset: 8320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1925, file: !130, line: 525, baseType: !3977, size: 64, offset: 8384)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3980, line: 28, size: 192, elements: !3981)
!3980 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3979, file: !3980, line: 29, baseType: !16, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3979, file: !3980, line: 30, baseType: !16, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3979, file: !3980, line: 31, baseType: !39, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1925, file: !130, line: 526, baseType: !7, size: 32, offset: 8448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1925, file: !130, line: 533, baseType: !20, size: 64, offset: 8512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1925, file: !130, line: 534, baseType: !7, size: 32, offset: 8576)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1925, file: !130, line: 535, baseType: !3989, size: 64, offset: 8640)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1925, file: !130, line: 536, baseType: !7, size: 32, offset: 8704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1925, file: !130, line: 539, baseType: !22, size: 32, offset: 8736)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1925, file: !130, line: 540, baseType: !2510, size: 64, offset: 8768)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1925, file: !130, line: 563, baseType: !97, size: 128, offset: 8832)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1925, file: !130, line: 565, baseType: !97, size: 128, offset: 8960)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1925, file: !130, line: 568, baseType: !2521, size: 64, offset: 9088)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1925, file: !130, line: 570, baseType: !49, size: 32, offset: 9152)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1901, file: !228, line: 2382, baseType: !1900, size: 64, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1901, file: !228, line: 2383, baseType: !469, size: 64, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1901, file: !228, line: 2385, baseType: !4000, offset: 576)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2376, line: 206, elements: !836)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1901, file: !228, line: 2386, baseType: !4000, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1901, file: !228, line: 2387, baseType: !4000, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1901, file: !228, line: 2388, baseType: !4004, offset: 576)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4000, elements: !452)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1901, file: !228, line: 2390, baseType: !4000, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1901, file: !228, line: 2391, baseType: !4000, offset: 576)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1901, file: !228, line: 2392, baseType: !4000, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1901, file: !228, line: 2393, baseType: !4000, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1890, file: !228, line: 1197, baseType: !4010, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !228, line: 2057, size: 1664, elements: !4013)
!4013 = !{!4014, !4018, !4022, !4023, !4027, !4033, !4037, !4038, !4039, !4043, !4047, !4051, !4052, !4053, !4059, !4063, !4064, !4068, !4069, !4070, !4071, !4075, !4079, !4126, !4141, !4142}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4012, file: !228, line: 2058, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!1761, !1889}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4012, file: !228, line: 2059, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !1761}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4012, file: !228, line: 2060, baseType: !4019, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4012, file: !228, line: 2062, baseType: !4024, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !1761, !22}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4012, file: !228, line: 2063, baseType: !4028, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!22, !1761, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !228, line: 309, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4012, file: !228, line: 2064, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!22, !1761}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4012, file: !228, line: 2065, baseType: !4019, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4012, file: !228, line: 2066, baseType: !1920, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4012, file: !228, line: 2067, baseType: !4040, size: 64, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!22, !1889, !22}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4012, file: !228, line: 2068, baseType: !4044, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!22, !1889, !227}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4012, file: !228, line: 2069, baseType: !4048, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!22, !1889}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4012, file: !228, line: 2070, baseType: !4044, size: 64, offset: 704)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4012, file: !228, line: 2071, baseType: !4048, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4012, file: !228, line: 2072, baseType: !4054, size: 64, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!22, !1783, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !228, line: 62, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4012, file: !228, line: 2073, baseType: !4060, size: 64, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!22, !1889, !1369, !351}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4012, file: !228, line: 2074, baseType: !1920, size: 64, offset: 960)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4012, file: !228, line: 2076, baseType: !4065, size: 64, offset: 1024)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!22, !346, !1783}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4012, file: !228, line: 2077, baseType: !4065, size: 64, offset: 1088)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4012, file: !228, line: 2078, baseType: !4065, size: 64, offset: 1152)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4012, file: !228, line: 2079, baseType: !4065, size: 64, offset: 1216)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4012, file: !228, line: 2081, baseType: !4072, size: 64, offset: 1280)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!2007, !1889, !22, !351, !35, !41}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4012, file: !228, line: 2082, baseType: !4076, size: 64, offset: 1344)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!2007, !1889, !22, !16, !35, !41}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4012, file: !228, line: 2083, baseType: !4080, size: 64, offset: 1408)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!4083, !1761}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !233, line: 296, size: 1664, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4111, !4112, !4113}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4085, file: !233, line: 297, baseType: !473, size: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4085, file: !233, line: 298, baseType: !97, size: 128, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4085, file: !233, line: 299, baseType: !97, size: 128, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4085, file: !233, line: 300, baseType: !97, size: 128, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4085, file: !233, line: 301, baseType: !359, size: 256, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4085, file: !233, line: 302, baseType: !59, size: 32, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4085, file: !233, line: 303, baseType: !49, size: 32, offset: 800)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4085, file: !233, line: 304, baseType: !1889, size: 64, offset: 832)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4085, file: !233, line: 305, baseType: !4096, size: 64, offset: 896)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !233, line: 68, size: 64, elements: !4097)
!4097 = !{!4098, !4110}
!4098 = !DIDerivedType(tag: DW_TAG_member, scope: !4096, file: !233, line: 69, baseType: !4099, size: 32)
!4099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4096, file: !233, line: 69, size: 32, elements: !4100)
!4100 = !{!4101, !4102, !4103}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4099, file: !233, line: 70, baseType: !1006, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4099, file: !233, line: 71, baseType: !1014, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4099, file: !233, line: 72, baseType: !4104, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4105, line: 24, baseType: !4106)
!4105 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4105, line: 22, size: 32, elements: !4107)
!4107 = !{!4108}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4106, file: !4105, line: 23, baseType: !4109, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4105, line: 20, baseType: !1012)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4096, file: !233, line: 74, baseType: !232, size: 32, offset: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4085, file: !233, line: 306, baseType: !41, size: 64, offset: 960)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4085, file: !233, line: 307, baseType: !39, size: 64, offset: 1024)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4085, file: !233, line: 308, baseType: !4114, size: 576, offset: 1088)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !233, line: 205, size: 576, elements: !4115)
!4115 = !{!4116, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4114, file: !233, line: 206, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !233, line: 66, baseType: !43)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4114, file: !233, line: 207, baseType: !4117, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4114, file: !233, line: 208, baseType: !4117, size: 64, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4114, file: !233, line: 209, baseType: !4117, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4114, file: !233, line: 210, baseType: !4117, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4114, file: !233, line: 211, baseType: !4117, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4114, file: !233, line: 212, baseType: !4117, size: 64, offset: 384)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4114, file: !233, line: 213, baseType: !1059, size: 64, offset: 448)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4114, file: !233, line: 214, baseType: !1059, size: 64, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4012, file: !228, line: 2085, baseType: !4127, size: 64, offset: 1472)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!951, !1889, !4130}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4132, line: 15, size: 256, elements: !4133)
!4132 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4133 = !{!4134, !4135, !4136, !4137, !4138}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4131, file: !4132, line: 16, baseType: !503, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4131, file: !4132, line: 19, baseType: !22, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4131, file: !4132, line: 26, baseType: !39, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4131, file: !4132, line: 33, baseType: !39, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4131, file: !4132, line: 36, baseType: !4139, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4132, line: 36, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4012, file: !228, line: 2087, baseType: !4127, size: 64, offset: 1536)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4012, file: !228, line: 2089, baseType: !1920, size: 64, offset: 1600)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1890, file: !228, line: 1198, baseType: !4144, size: 64, offset: 448)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !233, line: 324, size: 704, elements: !4147)
!4147 = !{!4148, !4152, !4156, !4160, !4161, !4162, !4163, !4164, !4169, !4174, !4178}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4146, file: !233, line: 325, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!22, !4084}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4146, file: !233, line: 326, baseType: !4153, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!4084, !1889, !22}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4146, file: !233, line: 327, baseType: !4157, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !4084}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4146, file: !233, line: 328, baseType: !4149, size: 64, offset: 192)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4146, file: !233, line: 329, baseType: !4149, size: 64, offset: 256)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4146, file: !233, line: 330, baseType: !4149, size: 64, offset: 320)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4146, file: !233, line: 331, baseType: !4040, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4146, file: !233, line: 334, baseType: !4165, size: 64, offset: 448)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!4168, !1761}
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4146, file: !233, line: 335, baseType: !4170, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!22, !1761, !4173}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4146, file: !233, line: 337, baseType: !4175, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!22, !1761, !4168}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4146, file: !233, line: 339, baseType: !4179, size: 64, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!22, !1889, !4182}
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1890, file: !228, line: 1199, baseType: !4184, size: 64, offset: 512)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4186)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !233, line: 430, size: 704, elements: !4187)
!4187 = !{!4188, !4199, !4200, !4204, !4205, !4206, !4221, !4244, !4248, !4249, !4272}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4186, file: !233, line: 431, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!22, !1889, !22, !22, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4194)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4195, line: 8, size: 128, elements: !4196)
!4195 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4194, file: !4195, line: 9, baseType: !1883, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4194, file: !4195, line: 10, baseType: !1783, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4186, file: !233, line: 432, baseType: !4040, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4186, file: !233, line: 433, baseType: !4201, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!22, !1889, !7}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4186, file: !233, line: 434, baseType: !4201, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4186, file: !233, line: 435, baseType: !4040, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4186, file: !233, line: 436, baseType: !4207, size: 64, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!22, !1889, !22, !4210}
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !233, line: 417, size: 256, elements: !4212)
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4211, file: !233, line: 418, baseType: !22, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4211, file: !233, line: 419, baseType: !7, size: 32, offset: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4211, file: !233, line: 420, baseType: !7, size: 32, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4211, file: !233, line: 422, baseType: !7, size: 32, offset: 96)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4211, file: !233, line: 423, baseType: !7, size: 32, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4211, file: !233, line: 424, baseType: !7, size: 32, offset: 160)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4211, file: !233, line: 425, baseType: !7, size: 32, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4211, file: !233, line: 426, baseType: !7, size: 32, offset: 224)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4186, file: !233, line: 437, baseType: !4222, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!22, !1889, !4096, !4225}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !233, line: 345, size: 960, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4226, file: !233, line: 346, baseType: !22, size: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4226, file: !233, line: 347, baseType: !569, size: 64, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4226, file: !233, line: 348, baseType: !569, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4226, file: !233, line: 349, baseType: !569, size: 64, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4226, file: !233, line: 350, baseType: !569, size: 64, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4226, file: !233, line: 351, baseType: !569, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4226, file: !233, line: 352, baseType: !569, size: 64, offset: 384)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4226, file: !233, line: 353, baseType: !369, size: 64, offset: 448)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4226, file: !233, line: 355, baseType: !369, size: 64, offset: 512)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4226, file: !233, line: 356, baseType: !22, size: 32, offset: 576)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4226, file: !233, line: 357, baseType: !22, size: 32, offset: 608)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4226, file: !233, line: 358, baseType: !569, size: 64, offset: 640)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4226, file: !233, line: 359, baseType: !569, size: 64, offset: 704)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4226, file: !233, line: 360, baseType: !569, size: 64, offset: 768)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4226, file: !233, line: 361, baseType: !369, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4226, file: !233, line: 362, baseType: !22, size: 32, offset: 896)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4186, file: !233, line: 438, baseType: !4245, size: 64, offset: 448)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!22, !1889, !4182, !4225}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4186, file: !233, line: 440, baseType: !4222, size: 64, offset: 512)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4186, file: !233, line: 441, baseType: !4250, size: 64, offset: 576)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!22, !1889, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !233, line: 411, size: 1408, elements: !4255)
!4255 = !{!4256, !4257}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4254, file: !233, line: 412, baseType: !7, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4254, file: !233, line: 413, baseType: !4258, size: 1344, offset: 64)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4259, size: 1344, elements: !452)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !233, line: 397, size: 448, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4271}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4259, file: !233, line: 398, baseType: !7, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4259, file: !233, line: 399, baseType: !7, size: 32, offset: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4259, file: !233, line: 401, baseType: !7, size: 32, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4259, file: !233, line: 402, baseType: !7, size: 32, offset: 96)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4259, file: !233, line: 403, baseType: !7, size: 32, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4259, file: !233, line: 404, baseType: !7, size: 32, offset: 160)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4259, file: !233, line: 405, baseType: !7, size: 32, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4259, file: !233, line: 406, baseType: !571, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4259, file: !233, line: 407, baseType: !4270, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !569)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4259, file: !233, line: 408, baseType: !4270, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4186, file: !233, line: 442, baseType: !4201, size: 64, offset: 640)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1890, file: !228, line: 1200, baseType: !4274, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !228, line: 54, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1890, file: !228, line: 1201, baseType: !39, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1890, file: !228, line: 1202, baseType: !39, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1890, file: !228, line: 1203, baseType: !39, size: 64, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1890, file: !228, line: 1204, baseType: !1783, size: 64, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1890, file: !228, line: 1205, baseType: !871, size: 320, offset: 896)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1890, file: !228, line: 1206, baseType: !22, size: 32, offset: 1216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1890, file: !228, line: 1207, baseType: !49, size: 32, offset: 1248)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1890, file: !228, line: 1209, baseType: !20, size: 64, offset: 1280)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1890, file: !228, line: 1211, baseType: !4286, size: 64, offset: 1344)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4289)
!4289 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !228, line: 1211, flags: DIFlagFwdDecl)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1890, file: !228, line: 1223, baseType: !4291, size: 64, offset: 1408)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1795, line: 34, size: 64, elements: !4292)
!4292 = !{!4293}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4291, file: !1795, line: 35, baseType: !1798, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1890, file: !228, line: 1224, baseType: !97, size: 128, offset: 1472)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1890, file: !228, line: 1225, baseType: !4296, size: 64, offset: 1600)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !228, line: 1225, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1890, file: !228, line: 1226, baseType: !4299, size: 64, offset: 1664)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !228, line: 1226, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1890, file: !228, line: 1227, baseType: !4302, size: 64, offset: 1728)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !228, line: 50, flags: DIFlagFwdDecl)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1890, file: !228, line: 1228, baseType: !4305, size: 64, offset: 1792)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !228, line: 1228, flags: DIFlagFwdDecl)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1890, file: !228, line: 1229, baseType: !473, size: 128, offset: 1856)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1890, file: !228, line: 1230, baseType: !7, size: 32, offset: 1984)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1890, file: !228, line: 1231, baseType: !4310, size: 2496, offset: 2048)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !233, line: 521, size: 2496, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4316, !4348}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4310, file: !233, line: 522, baseType: !7, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4310, file: !233, line: 523, baseType: !871, size: 320, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4310, file: !233, line: 524, baseType: !4315, size: 192, offset: 384)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 192, elements: !452)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4310, file: !233, line: 525, baseType: !4317, size: 1728, offset: 576)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4318, size: 1728, elements: !452)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !233, line: 222, size: 576, elements: !4319)
!4319 = !{!4320, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4318, file: !233, line: 223, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !233, line: 445, size: 256, elements: !4323)
!4323 = !{!4324, !4325, !4338, !4339}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4322, file: !233, line: 446, baseType: !22, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4322, file: !233, line: 447, baseType: !4326, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !233, line: 312, size: 512, elements: !4329)
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4328, file: !233, line: 313, baseType: !4040, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4328, file: !233, line: 314, baseType: !4040, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4328, file: !233, line: 315, baseType: !4040, size: 64, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4328, file: !233, line: 316, baseType: !4040, size: 64, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4328, file: !233, line: 317, baseType: !4149, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4328, file: !233, line: 318, baseType: !4149, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4328, file: !233, line: 319, baseType: !4149, size: 64, offset: 384)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4328, file: !233, line: 320, baseType: !4179, size: 64, offset: 448)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4322, file: !233, line: 448, baseType: !1924, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4322, file: !233, line: 449, baseType: !4321, size: 64, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4318, file: !233, line: 224, baseType: !22, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4318, file: !233, line: 226, baseType: !97, size: 128, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4318, file: !233, line: 227, baseType: !39, size: 64, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4318, file: !233, line: 228, baseType: !7, size: 32, offset: 320)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4318, file: !233, line: 229, baseType: !7, size: 32, offset: 352)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4318, file: !233, line: 230, baseType: !4117, size: 64, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4318, file: !233, line: 231, baseType: !4117, size: 64, offset: 448)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4318, file: !233, line: 232, baseType: !20, size: 64, offset: 512)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4310, file: !233, line: 526, baseType: !4349, size: 192, offset: 2304)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4326, size: 192, elements: !452)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1890, file: !228, line: 1233, baseType: !4351, size: 2368, offset: 4544)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !228, line: 1184, size: 2368, elements: !4352)
!4352 = !{!4353, !4354, !4355}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4351, file: !228, line: 1185, baseType: !26, size: 16)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4351, file: !228, line: 1186, baseType: !26, size: 16, offset: 16)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4351, file: !228, line: 1187, baseType: !4356, size: 2304, offset: 64)
!4356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4357, size: 2304, elements: !452)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4358, line: 12, size: 768, elements: !4359)
!4358 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4359 = !{!4360, !4368, !4369, !4370, !4371}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4357, file: !4358, line: 13, baseType: !4361, size: 384)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4362, line: 17, size: 384, elements: !4363)
!4362 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4363 = !{!4364, !4365, !4366, !4367}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4361, file: !4362, line: 18, baseType: !22, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4361, file: !4362, line: 19, baseType: !22, size: 32, offset: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4361, file: !4362, line: 20, baseType: !54, size: 192, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4361, file: !4362, line: 22, baseType: !413, size: 128, align: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4357, file: !4358, line: 14, baseType: !2201, size: 64, offset: 384)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4357, file: !4358, line: 15, baseType: !2602, size: 64, offset: 448)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4357, file: !4358, line: 16, baseType: !54, size: 192, offset: 512)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4357, file: !4358, line: 17, baseType: !49, size: 32, offset: 704)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1890, file: !228, line: 1240, baseType: !20, size: 64, offset: 6912)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1890, file: !228, line: 1243, baseType: !521, size: 32, offset: 6976)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1890, file: !228, line: 1245, baseType: !1059, size: 64, offset: 7040)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1890, file: !228, line: 1246, baseType: !1059, size: 64, offset: 7104)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1890, file: !228, line: 1248, baseType: !522, size: 32, offset: 7168)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1890, file: !228, line: 1249, baseType: !4378, size: 64, offset: 7232)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !228, line: 634, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1890, file: !228, line: 1252, baseType: !2972, size: 256, offset: 7296)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1890, file: !228, line: 1253, baseType: !4382, size: 128, offset: 7552)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4383, line: 21, baseType: !4384)
!4383 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4383, line: 19, size: 128, elements: !4385)
!4385 = !{!4386}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4384, file: !4383, line: 20, baseType: !2985, size: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1890, file: !228, line: 1255, baseType: !7, size: 32, offset: 7680)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1890, file: !228, line: 1261, baseType: !359, size: 256, offset: 7744)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1890, file: !228, line: 1267, baseType: !16, size: 64, offset: 8000)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1890, file: !228, line: 1269, baseType: !1836, size: 64, offset: 8064)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1890, file: !228, line: 1271, baseType: !4392, size: 448, offset: 8128)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4132, line: 63, size: 448, elements: !4393)
!4393 = !{!4394, !4399, !4400, !4401, !4402, !4403, !4404}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4392, file: !4132, line: 64, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!39, !4398, !4130}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4392, file: !4132, line: 66, baseType: !4395, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4392, file: !4132, line: 69, baseType: !951, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4392, file: !4132, line: 70, baseType: !22, size: 32, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4392, file: !4132, line: 71, baseType: !7, size: 32, offset: 224)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4392, file: !4132, line: 74, baseType: !97, size: 128, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4392, file: !4132, line: 85, baseType: !4405, size: 64, offset: 384)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1890, file: !228, line: 1274, baseType: !363, size: 64, offset: 8576)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1890, file: !228, line: 1280, baseType: !363, size: 64, offset: 8640)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1890, file: !228, line: 1283, baseType: !22, size: 32, offset: 8704)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1890, file: !228, line: 1286, baseType: !4410, size: 32, offset: 8736)
!4410 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4411, line: 8, baseType: !521)
!4411 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1890, file: !228, line: 1289, baseType: !2409, size: 64, offset: 8768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1890, file: !228, line: 1290, baseType: !469, size: 64, offset: 8832)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1890, file: !228, line: 1297, baseType: !975, size: 64, offset: 8896)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1890, file: !228, line: 1304, baseType: !4416, size: 64, offset: 8960)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4417, line: 49, size: 64, elements: !4418)
!4417 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4418 = !{!4419}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4416, file: !4417, line: 50, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4417, line: 41, size: 512, align: 512, elements: !4422)
!4422 = !{!4423, !4424, !4429}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4421, file: !4417, line: 43, baseType: !59, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4421, file: !4417, line: 45, baseType: !4425, size: 192, offset: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4417, line: 29, size: 192, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4425, file: !4417, line: 30, baseType: !97, size: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4425, file: !4417, line: 32, baseType: !951, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4421, file: !4417, line: 46, baseType: !951, size: 64, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1890, file: !228, line: 1305, baseType: !4416, size: 64, offset: 9024)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1890, file: !228, line: 1306, baseType: !413, size: 128, align: 64, offset: 9088)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1890, file: !228, line: 1307, baseType: !1148, size: 256, offset: 9216)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1890, file: !228, line: 1309, baseType: !359, size: 256, offset: 9472)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1890, file: !228, line: 1314, baseType: !22, size: 32, offset: 9728)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1890, file: !228, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1890, file: !228, line: 1318, baseType: !97, size: 128, offset: 10304)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1890, file: !228, line: 1320, baseType: !59, size: 32, offset: 10432)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1890, file: !228, line: 1321, baseType: !97, size: 128, offset: 10496)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1884, file: !1885, line: 73, baseType: !22, size: 32, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1884, file: !1885, line: 74, baseType: !4441, size: 64, offset: 192)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1423, line: 42, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1838, file: !1785, line: 141, baseType: !4445, size: 64, offset: 704)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!22, !4192, !1033}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1838, file: !1785, line: 142, baseType: !4449, size: 64, offset: 768)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!1783, !1783, !4452}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1784, file: !1785, line: 96, baseType: !1889, size: 64, offset: 832)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1784, file: !1785, line: 97, baseType: !39, size: 64, offset: 896)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1784, file: !1785, line: 98, baseType: !20, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !1785, line: 100, baseType: !4458, size: 128, offset: 1024)
!4458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !1785, line: 100, size: 128, elements: !4459)
!4459 = !{!4460, !4461}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4458, file: !1785, line: 101, baseType: !97, size: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4458, file: !1785, line: 102, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1784, file: !1785, line: 104, baseType: !97, size: 128, offset: 1152)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1784, file: !1785, line: 105, baseType: !97, size: 128, offset: 1280)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1784, file: !1785, line: 113, baseType: !4466, size: 128, offset: 1408)
!4466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !1785, line: 109, size: 128, elements: !4467)
!4467 = !{!4468, !4469, !4470}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4466, file: !1785, line: 110, baseType: !473, size: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4466, file: !1785, line: 111, baseType: !1794, size: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4466, file: !1785, line: 112, baseType: !413, size: 128, align: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1777, file: !228, line: 1968, baseType: !4472, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!16, !1783, !1761, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4477, line: 10, size: 128, elements: !4478)
!4477 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4478 = !{!4479, !4480}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4476, file: !4477, line: 11, baseType: !2085, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4476, file: !4477, line: 12, baseType: !20, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1777, file: !228, line: 1969, baseType: !4482, size: 64, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!22, !4441, !1761, !22}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1777, file: !228, line: 1970, baseType: !4486, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!1771, !1761, !22, !1033}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1777, file: !228, line: 1972, baseType: !4490, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!22, !1783, !351, !22}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1777, file: !228, line: 1974, baseType: !4494, size: 64, offset: 320)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!22, !4441, !1761, !1783, !24, !1033}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1777, file: !228, line: 1976, baseType: !4498, size: 64, offset: 384)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!22, !1783, !1761, !1783}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1777, file: !228, line: 1977, baseType: !4502, size: 64, offset: 448)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!22, !1761, !1783}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1777, file: !228, line: 1978, baseType: !4506, size: 64, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!22, !4441, !1761, !1783, !16}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1777, file: !228, line: 1980, baseType: !4510, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!22, !4441, !1761, !1783, !24}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1777, file: !228, line: 1982, baseType: !4502, size: 64, offset: 640)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1777, file: !228, line: 1983, baseType: !4515, size: 64, offset: 704)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!22, !4441, !1761, !1783, !24, !1894}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1777, file: !228, line: 1985, baseType: !4519, size: 64, offset: 768)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!22, !4441, !1761, !1783, !1761, !1783, !7}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1777, file: !228, line: 1987, baseType: !4523, size: 64, offset: 832)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!22, !4441, !1783, !4526}
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !228, line: 226, size: 640, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4541, !4550, !4551, !4556, !4557, !4558}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4527, file: !228, line: 227, baseType: !7, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4527, file: !228, line: 228, baseType: !24, size: 16, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, scope: !4527, file: !228, line: 241, baseType: !4532, size: 32, offset: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4527, file: !228, line: 241, size: 32, elements: !4533)
!4533 = !{!4534, !4535}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4532, file: !228, line: 242, baseType: !1006, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4532, file: !228, line: 243, baseType: !4536, size: 32)
!4536 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4537, line: 16, baseType: !4538)
!4537 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4537, line: 14, size: 32, elements: !4539)
!4539 = !{!4540}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4538, file: !4537, line: 15, baseType: !1011, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, scope: !4527, file: !228, line: 245, baseType: !4542, size: 32, offset: 96)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4527, file: !228, line: 245, size: 32, elements: !4543)
!4543 = !{!4544, !4545}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4542, file: !228, line: 246, baseType: !1014, size: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4542, file: !228, line: 247, baseType: !4546, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4537, line: 20, baseType: !4547)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4537, line: 18, size: 32, elements: !4548)
!4548 = !{!4549}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4547, file: !4537, line: 19, baseType: !1018, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4527, file: !228, line: 249, baseType: !41, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4527, file: !228, line: 250, baseType: !4552, size: 128, offset: 192)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1060, line: 13, size: 128, elements: !4553)
!4553 = !{!4554, !4555}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4552, file: !1060, line: 14, baseType: !1059, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4552, file: !1060, line: 15, baseType: !951, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4527, file: !228, line: 251, baseType: !4552, size: 128, offset: 320)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4527, file: !228, line: 252, baseType: !4552, size: 128, offset: 448)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4527, file: !228, line: 259, baseType: !843, size: 64, offset: 576)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1777, file: !228, line: 1988, baseType: !4560, size: 64, offset: 896)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!22, !4441, !4192, !4563, !521, !7}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4565, line: 22, size: 1280, elements: !4566)
!4565 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4566 = !{!4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4564, file: !4565, line: 23, baseType: !521, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4564, file: !4565, line: 24, baseType: !24, size: 16, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4564, file: !4565, line: 25, baseType: !7, size: 32, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4564, file: !4565, line: 26, baseType: !1067, size: 32, offset: 96)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4564, file: !4565, line: 27, baseType: !569, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4564, file: !4565, line: 28, baseType: !569, size: 64, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4564, file: !4565, line: 41, baseType: !569, size: 64, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4564, file: !4565, line: 42, baseType: !1894, size: 32, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4564, file: !4565, line: 43, baseType: !1894, size: 32, offset: 352)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4564, file: !4565, line: 44, baseType: !1006, size: 32, offset: 384)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4564, file: !4565, line: 45, baseType: !1014, size: 32, offset: 416)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4564, file: !4565, line: 46, baseType: !41, size: 64, offset: 448)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4564, file: !4565, line: 47, baseType: !4552, size: 128, offset: 512)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4564, file: !4565, line: 48, baseType: !4552, size: 128, offset: 640)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4564, file: !4565, line: 49, baseType: !4552, size: 128, offset: 768)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4564, file: !4565, line: 50, baseType: !4552, size: 128, offset: 896)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4564, file: !4565, line: 51, baseType: !569, size: 64, offset: 1024)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4564, file: !4565, line: 52, baseType: !569, size: 64, offset: 1088)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4564, file: !4565, line: 53, baseType: !521, size: 32, offset: 1152)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4564, file: !4565, line: 54, baseType: !521, size: 32, offset: 1184)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4564, file: !4565, line: 55, baseType: !569, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1777, file: !228, line: 1990, baseType: !4589, size: 64, offset: 960)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!2007, !1783, !351, !35}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1777, file: !228, line: 1991, baseType: !4593, size: 64, offset: 1024)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!22, !1761, !4596, !569, !569}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !228, line: 55, flags: DIFlagFwdDecl)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1777, file: !228, line: 1993, baseType: !4599, size: 64, offset: 1088)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!22, !1761, !22}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1777, file: !228, line: 1994, baseType: !4603, size: 64, offset: 1152)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!22, !1761, !1783, !843, !7, !24}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1777, file: !228, line: 1997, baseType: !4607, size: 64, offset: 1216)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!22, !4441, !1761, !843, !24}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1777, file: !228, line: 1999, baseType: !4611, size: 64, offset: 1280)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!1771, !4441, !1783, !22}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1777, file: !228, line: 2001, baseType: !4615, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!22, !4441, !1783, !1771, !22}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1777, file: !228, line: 2003, baseType: !4619, size: 64, offset: 1408)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!22, !4441, !1783, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !228, line: 76, flags: DIFlagFwdDecl)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1777, file: !228, line: 2005, baseType: !4625, size: 64, offset: 1472)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!22, !1783, !4622}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1777, file: !228, line: 2006, baseType: !4629, size: 64, offset: 1536)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!4632, !1761}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !228, line: 3192, size: 192, elements: !4634)
!4634 = !{!4635, !4636}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4633, file: !228, line: 3193, baseType: !498, size: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4633, file: !228, line: 3194, baseType: !521, size: 32, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1762, file: !228, line: 655, baseType: !1889, size: 64, offset: 448)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1762, file: !228, line: 656, baseType: !1757, size: 64, offset: 512)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1762, file: !228, line: 659, baseType: !20, size: 64, offset: 576)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1762, file: !228, line: 663, baseType: !39, size: 64, offset: 640)
!4641 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !228, line: 671, baseType: !4642, size: 32, offset: 704)
!4642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !228, line: 671, size: 32, elements: !4643)
!4643 = !{!4644, !4645}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4642, file: !228, line: 672, baseType: !2457, size: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4642, file: !228, line: 673, baseType: !7, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1762, file: !228, line: 675, baseType: !1894, size: 32, offset: 736)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1762, file: !228, line: 676, baseType: !41, size: 64, offset: 768)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1762, file: !228, line: 677, baseType: !4552, size: 128, offset: 832)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1762, file: !228, line: 678, baseType: !4552, size: 128, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1762, file: !228, line: 679, baseType: !4552, size: 128, offset: 1088)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1762, file: !228, line: 680, baseType: !59, size: 32, offset: 1216)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1762, file: !228, line: 681, baseType: !26, size: 16, offset: 1248)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1762, file: !228, line: 682, baseType: !83, size: 8, offset: 1264)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1762, file: !228, line: 683, baseType: !83, size: 8, offset: 1272)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1762, file: !228, line: 684, baseType: !4270, size: 64, offset: 1280)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1762, file: !228, line: 691, baseType: !39, size: 64, offset: 1344)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1762, file: !228, line: 692, baseType: !871, size: 320, offset: 1408)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1762, file: !228, line: 694, baseType: !39, size: 64, offset: 1728)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1762, file: !228, line: 695, baseType: !39, size: 64, offset: 1792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1762, file: !228, line: 697, baseType: !473, size: 128, offset: 1856)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1762, file: !228, line: 698, baseType: !97, size: 128, offset: 1984)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1762, file: !228, line: 707, baseType: !97, size: 128, offset: 2112)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1762, file: !228, line: 708, baseType: !97, size: 128, offset: 2240)
!4664 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !228, line: 709, baseType: !4665, size: 128, offset: 2368)
!4665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !228, line: 709, size: 128, elements: !4666)
!4666 = !{!4667, !4668}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4665, file: !228, line: 710, baseType: !469, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4665, file: !228, line: 711, baseType: !413, size: 128, align: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1762, file: !228, line: 713, baseType: !365, size: 64, offset: 2496)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1762, file: !228, line: 714, baseType: !365, size: 64, offset: 2560)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1762, file: !228, line: 715, baseType: !49, size: 32, offset: 2624)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1762, file: !228, line: 716, baseType: !49, size: 32, offset: 2656)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1762, file: !228, line: 717, baseType: !49, size: 32, offset: 2688)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1762, file: !228, line: 719, baseType: !49, size: 32, offset: 2720)
!4675 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !228, line: 721, baseType: !4676, size: 64, offset: 2752)
!4676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !228, line: 721, size: 64, elements: !4677)
!4677 = !{!4678, !4844}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4676, file: !228, line: 722, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4681)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !228, line: 1914, size: 2112, elements: !4682)
!4682 = !{!4683, !4684, !4688, !4692, !4696, !4724, !4725, !4731, !4744, !4760, !4764, !4765, !4769, !4770, !4774, !4779, !4780, !4784, !4788, !4794, !4795, !4799, !4800, !4804, !4808, !4812, !4817, !4821, !4825, !4829, !4833, !4834, !4840}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4681, file: !228, line: 1915, baseType: !1924, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4681, file: !228, line: 1916, baseType: !4685, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!41, !843, !41, !22}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4681, file: !228, line: 1917, baseType: !4689, size: 64, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!2007, !843, !351, !35, !40}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4681, file: !228, line: 1918, baseType: !4693, size: 64, offset: 192)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!2007, !843, !16, !35, !40}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4681, file: !228, line: 1919, baseType: !4697, size: 64, offset: 256)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!2007, !4700, !4722}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !228, line: 373, size: 384, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4709, !4710, !4711, !4712}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4701, file: !228, line: 374, baseType: !843, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4701, file: !228, line: 375, baseType: !41, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4701, file: !228, line: 376, baseType: !4706, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !4700, !951}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4701, file: !228, line: 377, baseType: !20, size: 64, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4701, file: !228, line: 378, baseType: !22, size: 32, offset: 256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4701, file: !228, line: 379, baseType: !93, size: 16, offset: 288)
!4712 = !DIDerivedType(tag: DW_TAG_member, scope: !4701, file: !228, line: 380, baseType: !4713, size: 64, offset: 320)
!4713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4701, file: !228, line: 380, size: 64, elements: !4714)
!4714 = !{!4715, !4718}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4713, file: !228, line: 386, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !228, line: 386, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4713, file: !228, line: 395, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!2007, !20}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !228, line: 69, flags: DIFlagFwdDecl)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4681, file: !228, line: 1920, baseType: !4697, size: 64, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4681, file: !228, line: 1921, baseType: !4726, size: 64, offset: 384)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!22, !4700, !4729, !7}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !228, line: 53, flags: DIFlagFwdDecl)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4681, file: !228, line: 1923, baseType: !4732, size: 64, offset: 448)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!22, !843, !4735}
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !228, line: 1858, size: 128, elements: !4737)
!4737 = !{!4738, !4743}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4736, file: !228, line: 1859, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !228, line: 1855, baseType: !4740)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!1033, !4735, !16, !22, !41, !569, !7}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4736, file: !228, line: 1860, baseType: !41, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4681, file: !228, line: 1924, baseType: !4745, size: 64, offset: 512)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!4748, !843, !4750}
!4748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4749, line: 59, baseType: !7)
!4749 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !4752, line: 37, size: 128, elements: !4753)
!4752 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!4753 = !{!4754, !4759}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !4751, file: !4752, line: 38, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !4752, line: 31, baseType: !4756)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{null, !843, !4462, !4750}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !4751, file: !4752, line: 39, baseType: !4748, size: 32, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4681, file: !228, line: 1925, baseType: !4761, size: 64, offset: 576)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!951, !843, !7, !39}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4681, file: !228, line: 1926, baseType: !4761, size: 64, offset: 640)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4681, file: !228, line: 1927, baseType: !4766, size: 64, offset: 704)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!22, !843, !1628}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4681, file: !228, line: 1928, baseType: !39, size: 64, offset: 768)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4681, file: !228, line: 1929, baseType: !4771, size: 64, offset: 832)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!22, !1761, !843}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4681, file: !228, line: 1930, baseType: !4775, size: 64, offset: 896)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!22, !843, !4778}
!4778 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !228, line: 1061, baseType: !20)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4681, file: !228, line: 1931, baseType: !4771, size: 64, offset: 960)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4681, file: !228, line: 1932, baseType: !4781, size: 64, offset: 1024)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!22, !843, !41, !41, !22}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4681, file: !228, line: 1933, baseType: !4785, size: 64, offset: 1088)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!22, !22, !843, !22}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4681, file: !228, line: 1934, baseType: !4789, size: 64, offset: 1152)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!22, !843, !22, !4792}
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !228, line: 1063, flags: DIFlagFwdDecl)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4681, file: !228, line: 1935, baseType: !840, size: 64, offset: 1216)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4681, file: !228, line: 1936, baseType: !4796, size: 64, offset: 1280)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!22, !22}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4681, file: !228, line: 1937, baseType: !4789, size: 64, offset: 1344)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4681, file: !228, line: 1938, baseType: !4801, size: 64, offset: 1408)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!2007, !2666, !843, !40, !35, !7}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4681, file: !228, line: 1939, baseType: !4805, size: 64, offset: 1472)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!2007, !843, !40, !2666, !35, !7}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4681, file: !228, line: 1940, baseType: !4809, size: 64, offset: 1536)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !843}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4681, file: !228, line: 1941, baseType: !4813, size: 64, offset: 1600)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!22, !843, !22, !4816, !3496}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4681, file: !228, line: 1942, baseType: !4818, size: 64, offset: 1664)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!951, !843, !22, !41, !41}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4681, file: !228, line: 1944, baseType: !4822, size: 64, offset: 1728)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{null, !346, !843}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4681, file: !228, line: 1948, baseType: !4826, size: 64, offset: 1792)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!2007, !843, !41, !843, !41, !35, !7}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4681, file: !228, line: 1950, baseType: !4830, size: 64, offset: 1856)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!41, !843, !41, !843, !41, !41, !7}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4681, file: !228, line: 1953, baseType: !4781, size: 64, offset: 1920)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4681, file: !228, line: 1954, baseType: !4835, size: 64, offset: 1984)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!22, !4838, !7}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !228, line: 1911, flags: DIFlagFwdDecl)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4681, file: !228, line: 1955, baseType: !4841, size: 64, offset: 2048)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!22, !4838, !4729, !7}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4676, file: !228, line: 723, baseType: !4019, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1762, file: !228, line: 725, baseType: !4846, size: 64, offset: 2816)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !228, line: 725, flags: DIFlagFwdDecl)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1762, file: !228, line: 726, baseType: !1758, size: 1536, align: 64, offset: 2880)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1762, file: !228, line: 727, baseType: !97, size: 128, offset: 4416)
!4850 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !228, line: 728, baseType: !4851, size: 64, offset: 4544)
!4851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !228, line: 728, size: 64, elements: !4852)
!4852 = !{!4853, !4854, !4857, !4858}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4851, file: !228, line: 729, baseType: !2666, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4851, file: !228, line: 730, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !228, line: 730, flags: DIFlagFwdDecl)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4851, file: !228, line: 731, baseType: !351, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4851, file: !228, line: 732, baseType: !7, size: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1762, file: !228, line: 735, baseType: !522, size: 32, offset: 4608)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1762, file: !228, line: 738, baseType: !522, size: 32, offset: 4640)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1762, file: !228, line: 739, baseType: !4378, size: 64, offset: 4672)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1762, file: !228, line: 750, baseType: !20, size: 64, offset: 4736)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1758, file: !228, line: 474, baseType: !498, size: 128, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1758, file: !228, line: 475, baseType: !871, size: 320, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1758, file: !228, line: 476, baseType: !503, size: 32, offset: 512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1758, file: !228, line: 477, baseType: !49, size: 32, offset: 544)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1758, file: !228, line: 482, baseType: !698, size: 128, offset: 576)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1758, file: !228, line: 483, baseType: !39, size: 64, offset: 704)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1758, file: !228, line: 484, baseType: !39, size: 64, offset: 768)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1758, file: !228, line: 485, baseType: !4871, size: 64, offset: 832)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4873)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !228, line: 404, size: 1280, elements: !4874)
!4874 = !{!4875, !4879, !4949, !4953, !4957, !4963, !4968, !4972, !4977, !4981, !4985, !4989, !4990, !4994, !4998, !5002, !5007, !5011, !5018, !5019}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4873, file: !228, line: 405, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!22, !1735, !4031}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4873, file: !228, line: 406, baseType: !4880, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!22, !843, !4883}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !114, line: 293, size: 1536, elements: !4885)
!4885 = !{!4886, !4916, !4930}
!4886 = !DIDerivedType(tag: DW_TAG_member, scope: !4884, file: !114, line: 295, baseType: !4887, size: 512)
!4887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4884, file: !114, line: 295, size: 512, elements: !4888)
!4888 = !{!4889, !4915}
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !114, line: 296, baseType: !4890, size: 448)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4887, file: !114, line: 296, size: 448, elements: !4891)
!4891 = !{!4892, !4893, !4902, !4903, !4904, !4913, !4914}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4890, file: !114, line: 298, baseType: !39, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, scope: !4890, file: !114, line: 299, baseType: !4894, size: 128, offset: 64)
!4894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4890, file: !114, line: 299, size: 128, elements: !4895)
!4895 = !{!4896, !4897}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4894, file: !114, line: 300, baseType: !97, size: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, scope: !4894, file: !114, line: 302, baseType: !4898, size: 128)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4894, file: !114, line: 302, size: 128, elements: !4899)
!4899 = !{!4900, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4898, file: !114, line: 303, baseType: !20, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4898, file: !114, line: 305, baseType: !7, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4890, file: !114, line: 310, baseType: !1757, size: 64, offset: 192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4890, file: !114, line: 311, baseType: !39, size: 64, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_member, scope: !4890, file: !114, line: 312, baseType: !4905, size: 64, offset: 320)
!4905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4890, file: !114, line: 312, size: 64, elements: !4906)
!4906 = !{!4907, !4908}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4905, file: !114, line: 313, baseType: !20, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4905, file: !114, line: 314, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !114, line: 257, baseType: !4910)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 255, size: 64, elements: !4911)
!4911 = !{!4912}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4910, file: !114, line: 256, baseType: !39, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4890, file: !114, line: 316, baseType: !49, size: 32, offset: 384)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4890, file: !114, line: 317, baseType: !49, size: 32, offset: 416)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4887, file: !114, line: 323, baseType: !1736, size: 512, align: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, scope: !4884, file: !114, line: 325, baseType: !4917, size: 512, offset: 512)
!4917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4884, file: !114, line: 325, size: 512, elements: !4918)
!4918 = !{!4919, !4929}
!4919 = !DIDerivedType(tag: DW_TAG_member, scope: !4917, file: !114, line: 326, baseType: !4920, size: 320)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4917, file: !114, line: 326, size: 320, elements: !4921)
!4921 = !{!4922, !4923, !4924, !4925, !4926, !4927, !4928}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4920, file: !114, line: 327, baseType: !39, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4920, file: !114, line: 328, baseType: !39, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4920, file: !114, line: 329, baseType: !39, size: 64, offset: 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4920, file: !114, line: 331, baseType: !49, size: 32, offset: 192)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4920, file: !114, line: 332, baseType: !49, size: 32, offset: 224)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4920, file: !114, line: 333, baseType: !49, size: 32, offset: 256)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4920, file: !114, line: 335, baseType: !7, size: 32, offset: 288)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4917, file: !114, line: 339, baseType: !1736, size: 512, align: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, scope: !4884, file: !114, line: 341, baseType: !4931, size: 512, offset: 1024)
!4931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4884, file: !114, line: 341, size: 512, elements: !4932)
!4932 = !{!4933, !4942, !4948}
!4933 = !DIDerivedType(tag: DW_TAG_member, scope: !4931, file: !114, line: 342, baseType: !4934, size: 384)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4931, file: !114, line: 342, size: 384, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4939, !4940, !4941}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4934, file: !114, line: 343, baseType: !39, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4934, file: !114, line: 344, baseType: !39, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4934, file: !114, line: 346, baseType: !20, size: 64, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4934, file: !114, line: 347, baseType: !20, size: 64, offset: 192)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4934, file: !114, line: 348, baseType: !20, size: 64, offset: 256)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4934, file: !114, line: 349, baseType: !20, size: 64, offset: 320)
!4942 = !DIDerivedType(tag: DW_TAG_member, scope: !4931, file: !114, line: 352, baseType: !4943, size: 256)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4931, file: !114, line: 352, size: 256, elements: !4944)
!4944 = !{!4945, !4946, !4947}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4943, file: !114, line: 353, baseType: !39, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4943, file: !114, line: 354, baseType: !39, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4943, file: !114, line: 356, baseType: !97, size: 128, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4931, file: !114, line: 359, baseType: !1736, size: 512, align: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4873, file: !228, line: 409, baseType: !4950, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!22, !1757, !4031}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4873, file: !228, line: 412, baseType: !4954, size: 64, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!1033, !1757, !4883}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4873, file: !228, line: 414, baseType: !4958, size: 64, offset: 256)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{null, !4961}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !228, line: 310, flags: DIFlagFwdDecl)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4873, file: !228, line: 416, baseType: !4964, size: 64, offset: 320)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!22, !843, !1757, !41, !7, !4967, !3496}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4873, file: !228, line: 419, baseType: !4969, size: 64, offset: 384)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!22, !843, !1757, !41, !7, !7, !1735, !20}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4873, file: !228, line: 424, baseType: !4973, size: 64, offset: 448)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!4976, !1757, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !569)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4873, file: !228, line: 425, baseType: !4978, size: 64, offset: 512)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !4883, !35, !35}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4873, file: !228, line: 426, baseType: !4982, size: 64, offset: 576)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!1033, !4883, !503}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4873, file: !228, line: 427, baseType: !4986, size: 64, offset: 640)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{null, !4883}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4873, file: !228, line: 428, baseType: !4697, size: 64, offset: 704)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4873, file: !228, line: 433, baseType: !4991, size: 64, offset: 768)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!22, !1757, !4883, !4883, !238}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4873, file: !228, line: 435, baseType: !4995, size: 64, offset: 832)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!22, !4883}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4873, file: !228, line: 436, baseType: !4999, size: 64, offset: 896)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!1033, !4883, !35, !35}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4873, file: !228, line: 438, baseType: !5003, size: 64, offset: 960)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{null, !4883, !5006, !5006}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4873, file: !228, line: 439, baseType: !5008, size: 64, offset: 1024)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!22, !1757, !1735}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4873, file: !228, line: 442, baseType: !5012, size: 64, offset: 1088)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!22, !5015, !843, !5017}
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !228, line: 66, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4873, file: !228, line: 444, baseType: !4809, size: 64, offset: 1152)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4873, file: !228, line: 445, baseType: !5020, size: 64, offset: 1216)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!22, !4700, !4722}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1758, file: !228, line: 486, baseType: !39, size: 64, offset: 896)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1758, file: !228, line: 487, baseType: !871, size: 320, offset: 960)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1758, file: !228, line: 488, baseType: !4410, size: 32, offset: 1280)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1758, file: !228, line: 489, baseType: !59, size: 32, offset: 1312)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1758, file: !228, line: 490, baseType: !97, size: 128, offset: 1344)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1758, file: !228, line: 491, baseType: !20, size: 64, offset: 1472)
!5029 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !114, line: 107, baseType: !5030, size: 64, offset: 192)
!5030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !114, line: 107, size: 64, elements: !5031)
!5031 = !{!5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5030, file: !114, line: 108, baseType: !39, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5030, file: !114, line: 109, baseType: !39, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1743, file: !114, line: 117, baseType: !39, size: 64, offset: 256)
!5035 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !114, line: 119, baseType: !5036, size: 320)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !114, line: 119, size: 320, elements: !5037)
!5037 = !{!5038, !5039, !5042, !5043, !5044}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5036, file: !114, line: 124, baseType: !39, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5036, file: !114, line: 125, baseType: !5040, size: 64, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !114, line: 125, flags: DIFlagFwdDecl)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5036, file: !114, line: 126, baseType: !39, size: 64, offset: 128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5036, file: !114, line: 127, baseType: !39, size: 64, offset: 192)
!5044 = !DIDerivedType(tag: DW_TAG_member, scope: !5036, file: !114, line: 128, baseType: !5045, size: 64, offset: 256)
!5045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5036, file: !114, line: 128, size: 64, elements: !5046)
!5046 = !{!5047, !5048}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5045, file: !114, line: 133, baseType: !39, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5045, file: !114, line: 138, baseType: !363, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !114, line: 141, baseType: !5050, size: 64)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !114, line: 141, size: 64, elements: !5051)
!5051 = !{!5052}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5050, file: !114, line: 142, baseType: !39, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !114, line: 144, baseType: !5054, size: 128)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !114, line: 144, size: 128, elements: !5055)
!5055 = !{!5056, !5127}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5054, file: !114, line: 146, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !246, line: 126, size: 1216, elements: !5059)
!5059 = !{!5060, !5070, !5091, !5092, !5093, !5094, !5095, !5109, !5110, !5111}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5058, file: !246, line: 127, baseType: !5061, size: 384)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !246, line: 21, size: 384, elements: !5062)
!5062 = !{!5063, !5064, !5066, !5067, !5068, !5069}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5061, file: !246, line: 22, baseType: !39, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5061, file: !246, line: 23, baseType: !5065, size: 64, offset: 64)
!5065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5061, file: !246, line: 24, baseType: !5065, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5061, file: !246, line: 25, baseType: !39, size: 64, offset: 192)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5061, file: !246, line: 26, baseType: !39, size: 64, offset: 256)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5061, file: !246, line: 27, baseType: !39, size: 64, offset: 320)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5058, file: !246, line: 128, baseType: !5071, size: 128, offset: 384)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !5072, line: 105, size: 128, elements: !5073)
!5072 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!5073 = !{!5074, !5075}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !5071, file: !5072, line: 110, baseType: !39, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5071, file: !5072, line: 118, baseType: !5076, size: 64, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !5072, line: 95, size: 448, elements: !5078)
!5078 = !{!5079, !5080, !5086, !5087, !5088, !5089, !5090}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5077, file: !5072, line: 96, baseType: !363, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5077, file: !5072, line: 97, baseType: !5081, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !5072, line: 60, baseType: !5083)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !5085}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !5077, file: !5072, line: 98, baseType: !5081, size: 64, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !5077, file: !5072, line: 99, baseType: !1033, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !5077, file: !5072, line: 100, baseType: !1033, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5077, file: !5072, line: 101, baseType: !413, size: 128, align: 64, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5077, file: !5072, line: 102, baseType: !5085, size: 64, offset: 384)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5058, file: !246, line: 129, baseType: !1187, size: 256, offset: 512)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5058, file: !246, line: 130, baseType: !245, size: 32, offset: 768)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5058, file: !246, line: 131, baseType: !7, size: 32, offset: 800)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5058, file: !246, line: 132, baseType: !39, size: 64, offset: 832)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5058, file: !246, line: 133, baseType: !5096, size: 64, offset: 896)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5098)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !246, line: 77, size: 192, elements: !5099)
!5099 = !{!5100, !5104, !5105}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5098, file: !246, line: 83, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !1735}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5098, file: !246, line: 89, baseType: !1694, size: 64, offset: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5098, file: !246, line: 100, baseType: !5106, size: 64, offset: 128)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!22, !5057, !39, !39, !22}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5058, file: !246, line: 134, baseType: !20, size: 64, offset: 960)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5058, file: !246, line: 135, baseType: !22, size: 32, offset: 1024)
!5111 = !DIDerivedType(tag: DW_TAG_member, scope: !5058, file: !246, line: 136, baseType: !5112, size: 128, offset: 1088)
!5112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5058, file: !246, line: 136, size: 128, elements: !5113)
!5113 = !{!5114, !5120}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5112, file: !246, line: 137, baseType: !5115, size: 128)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5116, line: 6, size: 128, elements: !5117)
!5116 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5117 = !{!5118, !5119}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5115, file: !5116, line: 7, baseType: !569, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5115, file: !5116, line: 8, baseType: !569, size: 64, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, scope: !5112, file: !246, line: 138, baseType: !5121)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5112, file: !246, line: 138, elements: !5122)
!5122 = !{!5123, !5125}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5121, file: !246, line: 138, baseType: !5124)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5121, file: !246, line: 138, elements: !836)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5121, file: !246, line: 138, baseType: !5126)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5115, elements: !1264)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5054, file: !114, line: 147, baseType: !20, size: 64, offset: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1740, file: !114, line: 161, baseType: !413, size: 128, align: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !114, line: 164, baseType: !5130, size: 32, offset: 384)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !114, line: 164, size: 32, elements: !5131)
!5131 = !{!5132, !5133}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5130, file: !114, line: 169, baseType: !49, size: 32)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5130, file: !114, line: 177, baseType: !7, size: 32)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1736, file: !114, line: 181, baseType: !49, size: 32, offset: 416)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1699, file: !1622, line: 535, baseType: !1735, size: 64, offset: 640)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1699, file: !1622, line: 541, baseType: !5137, size: 64, offset: 704)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1699, file: !1622, line: 545, baseType: !5139, size: 64, offset: 768)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1699, file: !1622, line: 549, baseType: !5141, size: 64, offset: 832)
!5141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !852, line: 520, baseType: !1735)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1621, file: !1622, line: 581, baseType: !5143, size: 64, offset: 384)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!1697, !1698, !7}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1621, file: !1622, line: 582, baseType: !5147, size: 64, offset: 448)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!1697, !1698, !39, !39}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1621, file: !1622, line: 584, baseType: !5151, size: 64, offset: 512)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!39, !1628}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1621, file: !1622, line: 588, baseType: !1694, size: 64, offset: 576)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1621, file: !1622, line: 591, baseType: !1694, size: 64, offset: 640)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1621, file: !1622, line: 597, baseType: !5157, size: 64, offset: 704)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!22, !1628, !39, !20, !22, !22}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1621, file: !1622, line: 603, baseType: !5161, size: 64, offset: 768)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!16, !1628}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1621, file: !1622, line: 613, baseType: !5165, size: 64, offset: 832)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!22, !1628, !1676}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1621, file: !1622, line: 625, baseType: !5169, size: 64, offset: 896)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!1676, !1628, !39}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1621, file: !1622, line: 633, baseType: !5173, size: 64, offset: 960)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!1735, !1628, !39}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1597, file: !1566, line: 277, baseType: !5177, size: 64, offset: 64)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{null, !1603}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1597, file: !1566, line: 290, baseType: !343, size: 64, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1597, file: !1566, line: 292, baseType: !385, size: 64, offset: 192)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1597, file: !1566, line: 293, baseType: !393, size: 64, offset: 256)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1597, file: !1566, line: 294, baseType: !389, size: 64, offset: 320)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1597, file: !1566, line: 296, baseType: !5185, size: 64, offset: 384)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!2007, !1603, !351, !35, !41}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1597, file: !1566, line: 306, baseType: !35, size: 64, offset: 448)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1597, file: !1566, line: 313, baseType: !1033, size: 8, offset: 512)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1597, file: !1566, line: 314, baseType: !5185, size: 64, offset: 576)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1597, file: !1566, line: 317, baseType: !5192, size: 64, offset: 640)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!4748, !1603, !4750}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1597, file: !1566, line: 320, baseType: !5196, size: 64, offset: 704)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!22, !1603, !1628}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1592, file: !1566, line: 176, baseType: !5200, size: 64, offset: 64)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1566, line: 35, flags: DIFlagFwdDecl)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1592, file: !1566, line: 177, baseType: !41, size: 64, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1592, file: !1566, line: 178, baseType: !1564, size: 64, offset: 192)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1565, file: !1566, line: 215, baseType: !20, size: 64, offset: 768)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1565, file: !1566, line: 221, baseType: !569, size: 64, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1566, line: 223, baseType: !26, size: 16, offset: 896)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1565, file: !1566, line: 224, baseType: !24, size: 16, offset: 912)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1565, file: !1566, line: 225, baseType: !5209, size: 64, offset: 960)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1566, line: 36, flags: DIFlagFwdDecl)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1565, file: !1566, line: 227, baseType: !413, size: 128, align: 64, offset: 1024)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1549, file: !1540, line: 442, baseType: !5213, size: 448, offset: 2048)
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1540, line: 138, size: 448, elements: !5214)
!5214 = !{!5215, !5216, !5217}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5213, file: !1540, line: 140, baseType: !1564, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !5213, file: !1540, line: 141, baseType: !39, size: 64, offset: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !5213, file: !1540, line: 142, baseType: !2347, size: 320, offset: 128)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1549, file: !1540, line: 443, baseType: !5213, size: 448, offset: 2496)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1549, file: !1540, line: 446, baseType: !5220, offset: 2944)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5213, elements: !5221)
!5221 = !{!5222}
!5222 = !DISubrange(count: 0)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1549, file: !1540, line: 455, baseType: !93, size: 16, offset: 2944)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1549, file: !1540, line: 456, baseType: !93, size: 16, offset: 2960)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1549, file: !1540, line: 457, baseType: !93, size: 16, offset: 2976)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1549, file: !1540, line: 458, baseType: !93, size: 16, offset: 2992)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1549, file: !1540, line: 461, baseType: !1543, size: 896, offset: 3008)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1549, file: !1540, line: 463, baseType: !5229, size: 64, offset: 3904)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1540, line: 537, size: 41664, elements: !5231)
!5231 = !{!5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !5230, file: !1540, line: 538, baseType: !1584, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !5230, file: !1540, line: 541, baseType: !7, size: 32, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !5230, file: !1540, line: 544, baseType: !22, size: 32, offset: 96)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !5230, file: !1540, line: 547, baseType: !97, size: 128, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5230, file: !1540, line: 548, baseType: !413, size: 128, align: 64, offset: 256)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !5230, file: !1540, line: 555, baseType: !1549, size: 7872, offset: 384)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !5230, file: !1540, line: 558, baseType: !1548, size: 64, offset: 8256)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !5230, file: !1540, line: 561, baseType: !49, size: 32, offset: 8320)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5230, file: !1540, line: 564, baseType: !7, size: 32, offset: 8352)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !5230, file: !1540, line: 567, baseType: !2803, size: 32768, offset: 8384)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5230, file: !1540, line: 570, baseType: !5243, size: 512, offset: 41152)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1980)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1549, file: !1540, line: 469, baseType: !97, size: 128, offset: 3968)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1549, file: !1540, line: 478, baseType: !5246, size: 1792, offset: 4096)
!5246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !5247)
!5247 = !{!5248}
!5248 = !DISubrange(count: 14)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1549, file: !1540, line: 487, baseType: !1548, size: 64, offset: 5888)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1549, file: !1540, line: 488, baseType: !1548, size: 64, offset: 5952)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1549, file: !1540, line: 491, baseType: !5252, size: 64, offset: 6016)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1540, line: 327, size: 896, elements: !5254)
!5254 = !{!5255, !5258, !5268, !5269, !5270, !5271, !5272}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !5253, file: !1540, line: 332, baseType: !5256)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !5257, line: 64, elements: !836)
!5257 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !5253, file: !1540, line: 333, baseType: !5259, size: 192)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1540, line: 299, size: 192, elements: !5260)
!5260 = !{!5261}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !5259, file: !1540, line: 300, baseType: !5262, size: 192)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !5263, line: 17, size: 192, elements: !5264)
!5263 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!5264 = !{!5265, !5266, !5267}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5262, file: !5263, line: 18, baseType: !569, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5262, file: !5263, line: 19, baseType: !569, size: 64, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5262, file: !5263, line: 20, baseType: !571, size: 64, offset: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !5253, file: !1540, line: 339, baseType: !5259, size: 192, offset: 192)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !5253, file: !1540, line: 347, baseType: !5259, size: 192, offset: 384)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !5253, file: !1540, line: 353, baseType: !5259, size: 192, offset: 576)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !5253, file: !1540, line: 366, baseType: !1548, size: 64, offset: 768)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !5253, file: !1540, line: 367, baseType: !1548, size: 64, offset: 832)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1549, file: !1540, line: 492, baseType: !97, size: 128, offset: 6080)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1549, file: !1540, line: 495, baseType: !5259, size: 192, offset: 6208)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1549, file: !1540, line: 496, baseType: !5259, size: 192, offset: 6400)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1549, file: !1540, line: 497, baseType: !1376, size: 192, offset: 6592)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1549, file: !1540, line: 503, baseType: !97, size: 128, offset: 6784)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1549, file: !1540, line: 504, baseType: !359, size: 256, offset: 6912)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1549, file: !1540, line: 507, baseType: !54, size: 192, offset: 7168)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1549, file: !1540, line: 510, baseType: !1148, size: 256, offset: 7360)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1549, file: !1540, line: 513, baseType: !5282, size: 64, offset: 7616)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !5284, line: 214, elements: !836)
!5284 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1549, file: !1540, line: 516, baseType: !5286, offset: 7680)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !5287, line: 76, elements: !836)
!5287 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1549, file: !1540, line: 519, baseType: !49, size: 32, offset: 7680)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1549, file: !1540, line: 522, baseType: !5290, size: 128, offset: 7712)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1540, line: 370, size: 128, elements: !5291)
!5291 = !{!5292, !5293, !5294, !5295}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5290, file: !1540, line: 372, baseType: !1033, size: 8)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !5290, file: !1540, line: 375, baseType: !22, size: 32, offset: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !5290, file: !1540, line: 380, baseType: !22, size: 32, offset: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !5290, file: !1540, line: 386, baseType: !22, size: 32, offset: 96)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1549, file: !1540, line: 529, baseType: !5297, offset: 7872)
!5297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1548, elements: !1264)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1545, file: !1540, line: 157, baseType: !5299, size: 64, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1540, line: 669, size: 1984, elements: !5301)
!5301 = !{!5302, !5306, !5310, !5314, !5315, !5316, !5317, !5321, !5325, !5326, !5332, !5336, !5337, !5338, !5342, !5346, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5399, !5400}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !5300, file: !1540, line: 670, baseType: !5303, size: 64)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!1544, !1544}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !5300, file: !1540, line: 671, baseType: !5307, size: 64, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!22, !1544}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !5300, file: !1540, line: 672, baseType: !5311, size: 64, offset: 128)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{null, !1544}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !5300, file: !1540, line: 673, baseType: !5311, size: 64, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !5300, file: !1540, line: 674, baseType: !5311, size: 64, offset: 256)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !5300, file: !1540, line: 675, baseType: !5311, size: 64, offset: 320)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !5300, file: !1540, line: 676, baseType: !5318, size: 64, offset: 384)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{null, !1544, !22}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !5300, file: !1540, line: 677, baseType: !5322, size: 64, offset: 448)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!22, !346, !1544}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !5300, file: !1540, line: 679, baseType: !5322, size: 64, offset: 512)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !5300, file: !1540, line: 682, baseType: !5327, size: 64, offset: 576)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!22, !5330}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1540, line: 30, flags: DIFlagFwdDecl)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !5300, file: !1540, line: 683, baseType: !5333, size: 64, offset: 640)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{null, !5330}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5300, file: !1540, line: 684, baseType: !5333, size: 64, offset: 704)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !5300, file: !1540, line: 685, baseType: !2521, size: 64, offset: 768)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !5300, file: !1540, line: 686, baseType: !5339, size: 64, offset: 832)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!22, !510, !1538}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !5300, file: !1540, line: 688, baseType: !5343, size: 64, offset: 896)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{null, !510, !1538}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !5300, file: !1540, line: 689, baseType: !5347, size: 64, offset: 960)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !510}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5300, file: !1540, line: 690, baseType: !5347, size: 64, offset: 1024)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5300, file: !1540, line: 691, baseType: !5347, size: 64, offset: 1088)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5300, file: !1540, line: 692, baseType: !5311, size: 64, offset: 1152)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5300, file: !1540, line: 694, baseType: !1033, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !5300, file: !1540, line: 707, baseType: !1033, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !5300, file: !1540, line: 719, baseType: !1033, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5300, file: !1540, line: 722, baseType: !22, size: 32, offset: 1248)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5300, file: !1540, line: 723, baseType: !16, size: 64, offset: 1280)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !5300, file: !1540, line: 726, baseType: !16, size: 64, offset: 1344)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5300, file: !1540, line: 729, baseType: !5229, size: 64, offset: 1408)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !5300, file: !1540, line: 732, baseType: !494, size: 192, offset: 1472)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !5300, file: !1540, line: 738, baseType: !97, size: 128, offset: 1664)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !5300, file: !1540, line: 744, baseType: !5363, size: 64, offset: 1792)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1540, line: 580, size: 1728, elements: !5365)
!5365 = !{!5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5375, !5376, !5377, !5381, !5385, !5386, !5387, !5388, !5389, !5393, !5397, !5398}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5364, file: !1540, line: 586, baseType: !5243, size: 512)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5364, file: !1540, line: 587, baseType: !39, size: 64, offset: 512)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5364, file: !1540, line: 593, baseType: !35, size: 64, offset: 576)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5364, file: !1540, line: 596, baseType: !7, size: 32, offset: 640)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !5364, file: !1540, line: 604, baseType: !7, size: 32, offset: 672)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5364, file: !1540, line: 610, baseType: !5299, size: 64, offset: 704)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5364, file: !1540, line: 611, baseType: !97, size: 128, offset: 768)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !5364, file: !1540, line: 612, baseType: !5374, size: 64, offset: 896)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5364, file: !1540, line: 614, baseType: !1600, size: 64, offset: 960)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5364, file: !1540, line: 615, baseType: !5177, size: 64, offset: 1024)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !5364, file: !1540, line: 621, baseType: !5378, size: 64, offset: 1088)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!569, !1544, !5363}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !5364, file: !1540, line: 625, baseType: !5382, size: 64, offset: 1152)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!369, !1544, !5363}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5364, file: !1540, line: 628, baseType: !343, size: 64, offset: 1216)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5364, file: !1540, line: 631, baseType: !385, size: 64, offset: 1280)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5364, file: !1540, line: 632, baseType: !393, size: 64, offset: 1344)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5364, file: !1540, line: 633, baseType: !389, size: 64, offset: 1408)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !5364, file: !1540, line: 640, baseType: !5390, size: 64, offset: 1472)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!22, !1544, !5363, !569}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !5364, file: !1540, line: 645, baseType: !5394, size: 64, offset: 1536)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!22, !1544, !5363, !369}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5364, file: !1540, line: 654, baseType: !5185, size: 64, offset: 1600)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5364, file: !1540, line: 657, baseType: !5192, size: 64, offset: 1664)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !5300, file: !1540, line: 745, baseType: !5363, size: 64, offset: 1856)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !5300, file: !1540, line: 754, baseType: !7, size: 32, offset: 1920)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1545, file: !1540, line: 160, baseType: !5071, size: 128, offset: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1545, file: !1540, line: 163, baseType: !97, size: 128, offset: 256)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1545, file: !1540, line: 164, baseType: !97, size: 128, offset: 384)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1545, file: !1540, line: 167, baseType: !97, size: 128, offset: 512)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1545, file: !1540, line: 173, baseType: !22, size: 32, offset: 640)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1540, line: 175, baseType: !7, size: 32, offset: 672)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1545, file: !1540, line: 183, baseType: !569, size: 64, offset: 704)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1545, file: !1540, line: 189, baseType: !49, size: 32, offset: 768)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1545, file: !1540, line: 192, baseType: !1148, size: 256, offset: 832)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1545, file: !1540, line: 193, baseType: !5411, size: 448, offset: 1088)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1149, line: 120, size: 448, elements: !5412)
!5412 = !{!5413, !5414, !5415}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5411, file: !1149, line: 121, baseType: !1148, size: 256)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5411, file: !1149, line: 122, baseType: !413, size: 128, align: 64, offset: 256)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5411, file: !1149, line: 125, baseType: !2409, size: 64, offset: 384)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1545, file: !1540, line: 199, baseType: !1544, size: 64, offset: 1536)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1539, file: !1540, line: 218, baseType: !460, size: 32, offset: 896)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1539, file: !1540, line: 226, baseType: !1538, size: 64, offset: 960)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1539, file: !1540, line: 229, baseType: !1548, size: 64, offset: 1024)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1539, file: !1540, line: 232, baseType: !22, size: 32, offset: 1088)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1539, file: !1540, line: 241, baseType: !97, size: 128, offset: 1152)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1539, file: !1540, line: 242, baseType: !97, size: 128, offset: 1280)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1539, file: !1540, line: 243, baseType: !97, size: 128, offset: 1408)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1539, file: !1540, line: 246, baseType: !97, size: 128, offset: 1536)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1539, file: !1540, line: 255, baseType: !5246, size: 1792, offset: 1664)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1539, file: !1540, line: 258, baseType: !97, size: 128, offset: 3456)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1539, file: !1540, line: 259, baseType: !97, size: 128, offset: 3584)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1539, file: !1540, line: 265, baseType: !473, size: 128, offset: 3712)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1539, file: !1540, line: 271, baseType: !97, size: 128, offset: 3840)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1539, file: !1540, line: 277, baseType: !97, size: 128, offset: 3968)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1539, file: !1540, line: 278, baseType: !97, size: 128, offset: 4096)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1539, file: !1540, line: 279, baseType: !97, size: 128, offset: 4224)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1539, file: !1540, line: 288, baseType: !1548, size: 64, offset: 4352)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1539, file: !1540, line: 289, baseType: !1548, size: 64, offset: 4416)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1539, file: !1540, line: 290, baseType: !1538, size: 64, offset: 4480)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1539, file: !1540, line: 293, baseType: !1033, size: 8, offset: 4544)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1539, file: !1540, line: 296, baseType: !413, size: 128, align: 64, offset: 4608)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !511, file: !512, line: 1110, baseType: !5439, size: 64, offset: 15360)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5441, line: 93, size: 8768, elements: !5442)
!5441 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5442 = !{!5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5491, !5500, !5501, !5503, !5504, !5505, !5508, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5546, !5547, !5554, !5564, !5626, !5627, !5630, !5631, !5632, !5633, !5634, !5635}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5440, file: !5441, line: 94, baseType: !460, size: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5440, file: !5441, line: 95, baseType: !49, size: 32, offset: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5440, file: !5441, line: 96, baseType: !22, size: 32, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5440, file: !5441, line: 97, baseType: !22, size: 32, offset: 96)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5440, file: !5441, line: 98, baseType: !97, size: 128, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5440, file: !5441, line: 100, baseType: !54, size: 192, offset: 256)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5440, file: !5441, line: 103, baseType: !510, size: 64, offset: 448)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5440, file: !5441, line: 106, baseType: !5451, size: 192, offset: 512)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5452, line: 32, size: 192, elements: !5453)
!5452 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5453 = !{!5454, !5455}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5451, file: !5452, line: 33, baseType: !97, size: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5451, file: !5452, line: 34, baseType: !5456, size: 64, offset: 128)
!5456 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5457, line: 25, baseType: !5458)
!5457 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5457, line: 23, size: 64, elements: !5459)
!5459 = !{!5460}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5458, file: !5457, line: 24, baseType: !766, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5440, file: !5441, line: 109, baseType: !469, size: 64, offset: 704)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5440, file: !5441, line: 112, baseType: !22, size: 32, offset: 768)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5440, file: !5441, line: 114, baseType: !22, size: 32, offset: 800)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5440, file: !5441, line: 115, baseType: !510, size: 64, offset: 832)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5440, file: !5441, line: 118, baseType: !22, size: 32, offset: 896)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5440, file: !5441, line: 119, baseType: !7, size: 32, offset: 928)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5440, file: !5441, line: 121, baseType: !5468, size: 64, offset: 960)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5441, line: 80, size: 448, elements: !5470)
!5470 = !{!5471, !5472, !5478}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5469, file: !5441, line: 81, baseType: !49, size: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5469, file: !5441, line: 82, baseType: !5473, size: 128, offset: 64)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5441, line: 75, size: 128, elements: !5474)
!5474 = !{!5475, !5476}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5473, file: !5441, line: 76, baseType: !510, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5473, file: !5441, line: 77, baseType: !5477, size: 64, offset: 64)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5469, file: !5441, line: 83, baseType: !1187, size: 256, offset: 192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5440, file: !5441, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5440, file: !5441, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5440, file: !5441, line: 138, baseType: !7, size: 32, offset: 1056)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5440, file: !5441, line: 139, baseType: !97, size: 128, offset: 1088)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5440, file: !5441, line: 142, baseType: !634, size: 512, offset: 1216)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5440, file: !5441, line: 143, baseType: !642, size: 64, offset: 1728)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5440, file: !5441, line: 150, baseType: !5486, size: 256, offset: 1792)
!5486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5487, size: 256, elements: !2239)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5441, line: 38, size: 128, elements: !5488)
!5488 = !{!5489, !5490}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5487, file: !5441, line: 39, baseType: !569, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5487, file: !5441, line: 40, baseType: !569, size: 64, offset: 64)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5440, file: !5441, line: 156, baseType: !5492, size: 192, offset: 2048)
!5492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5441, line: 66, size: 192, elements: !5493)
!5493 = !{!5494}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5492, file: !5441, line: 67, baseType: !5495, size: 192)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5441, line: 47, size: 192, elements: !5496)
!5496 = !{!5497, !5498, !5499}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5495, file: !5441, line: 48, baseType: !365, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5495, file: !5441, line: 49, baseType: !365, size: 64, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5495, file: !5441, line: 50, baseType: !365, size: 64, offset: 128)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5440, file: !5441, line: 160, baseType: !1388, size: 640, offset: 2240)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5440, file: !5441, line: 163, baseType: !5502, size: 256, offset: 2880)
!5502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 256, elements: !478)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5440, file: !5441, line: 169, baseType: !456, size: 64, offset: 3136)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5440, file: !5441, line: 172, baseType: !22, size: 32, offset: 3200)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5440, file: !5441, line: 174, baseType: !5506, size: 64, offset: 3264)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5441, line: 174, flags: DIFlagFwdDecl)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5440, file: !5441, line: 185, baseType: !5509, size: 64, offset: 3328)
!5509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !685, line: 860, baseType: !5510)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !685, line: 853, size: 64, elements: !5511)
!5511 = !{!5512, !5513}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5510, file: !685, line: 858, baseType: !1789, size: 32)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5510, file: !685, line: 859, baseType: !59, size: 32, offset: 32)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5440, file: !5441, line: 186, baseType: !569, size: 64, offset: 3392)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5440, file: !5441, line: 186, baseType: !569, size: 64, offset: 3456)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5440, file: !5441, line: 186, baseType: !569, size: 64, offset: 3520)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5440, file: !5441, line: 186, baseType: !569, size: 64, offset: 3584)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5440, file: !5441, line: 187, baseType: !569, size: 64, offset: 3648)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5440, file: !5441, line: 188, baseType: !569, size: 64, offset: 3712)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5440, file: !5441, line: 189, baseType: !1376, size: 192, offset: 3776)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5440, file: !5441, line: 190, baseType: !39, size: 64, offset: 3968)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5440, file: !5441, line: 190, baseType: !39, size: 64, offset: 4032)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5440, file: !5441, line: 190, baseType: !39, size: 64, offset: 4096)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5440, file: !5441, line: 190, baseType: !39, size: 64, offset: 4160)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5440, file: !5441, line: 191, baseType: !39, size: 64, offset: 4224)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5440, file: !5441, line: 191, baseType: !39, size: 64, offset: 4288)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5440, file: !5441, line: 191, baseType: !39, size: 64, offset: 4352)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5440, file: !5441, line: 191, baseType: !39, size: 64, offset: 4416)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5440, file: !5441, line: 192, baseType: !39, size: 64, offset: 4480)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5440, file: !5441, line: 192, baseType: !39, size: 64, offset: 4544)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5440, file: !5441, line: 192, baseType: !39, size: 64, offset: 4608)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5440, file: !5441, line: 192, baseType: !39, size: 64, offset: 4672)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5440, file: !5441, line: 193, baseType: !39, size: 64, offset: 4736)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5440, file: !5441, line: 193, baseType: !39, size: 64, offset: 4800)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5440, file: !5441, line: 194, baseType: !5536, size: 448, offset: 4864)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5537, line: 12, size: 448, elements: !5538)
!5537 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5538 = !{!5539, !5540, !5541, !5542, !5543, !5544, !5545}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5536, file: !5537, line: 15, baseType: !569, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5536, file: !5537, line: 17, baseType: !569, size: 64, offset: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5536, file: !5537, line: 19, baseType: !569, size: 64, offset: 128)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5536, file: !5537, line: 21, baseType: !569, size: 64, offset: 192)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5536, file: !5537, line: 29, baseType: !569, size: 64, offset: 256)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5536, file: !5537, line: 35, baseType: !569, size: 64, offset: 320)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5536, file: !5537, line: 44, baseType: !569, size: 64, offset: 384)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5440, file: !5441, line: 202, baseType: !571, size: 64, offset: 5312)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5440, file: !5441, line: 213, baseType: !5548, size: 2048, offset: 5376)
!5548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5549, size: 2048, elements: !1480)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5550, line: 43, size: 128, elements: !5551)
!5550 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5551 = !{!5552, !5553}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5549, file: !5550, line: 44, baseType: !38, size: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5549, file: !5550, line: 45, baseType: !38, size: 64, offset: 64)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5440, file: !5441, line: 216, baseType: !5555, size: 448, offset: 7424)
!5555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5441, line: 30, size: 448, elements: !5556)
!5556 = !{!5557, !5558, !5559, !5560, !5561, !5562, !5563}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5555, file: !5441, line: 31, baseType: !22, size: 32)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5555, file: !5441, line: 32, baseType: !951, size: 64, offset: 64)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5555, file: !5441, line: 33, baseType: !39, size: 64, offset: 128)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5555, file: !5441, line: 34, baseType: !569, size: 64, offset: 192)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5555, file: !5441, line: 34, baseType: !569, size: 64, offset: 256)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5555, file: !5441, line: 35, baseType: !39, size: 64, offset: 320)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5555, file: !5441, line: 35, baseType: !39, size: 64, offset: 384)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5440, file: !5441, line: 219, baseType: !5565, size: 64, offset: 7872)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5567, line: 41, size: 3456, elements: !5568)
!5567 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5568 = !{!5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5583, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5566, file: !5567, line: 47, baseType: !94, size: 16)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5566, file: !5567, line: 48, baseType: !522, size: 32, offset: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5566, file: !5567, line: 54, baseType: !85, size: 8, offset: 64)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5566, file: !5567, line: 55, baseType: !85, size: 8, offset: 72)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5566, file: !5567, line: 73, baseType: !570, size: 64, align: 64, offset: 128)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5566, file: !5567, line: 74, baseType: !570, size: 64, offset: 192)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5566, file: !5567, line: 81, baseType: !570, size: 64, offset: 256)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5566, file: !5567, line: 82, baseType: !570, size: 64, offset: 320)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5566, file: !5567, line: 85, baseType: !570, size: 64, offset: 384)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5566, file: !5567, line: 86, baseType: !570, size: 64, offset: 448)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5566, file: !5567, line: 94, baseType: !570, size: 64, offset: 512)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5566, file: !5567, line: 102, baseType: !570, size: 64, offset: 576)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5566, file: !5567, line: 107, baseType: !2972, size: 256, offset: 640)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5566, file: !5567, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5566, file: !5567, line: 110, baseType: !5584, size: 24, offset: 904)
!5584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !452)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5566, file: !5567, line: 111, baseType: !522, size: 32, align: 64, offset: 960)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5566, file: !5567, line: 113, baseType: !522, size: 32, offset: 992)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5566, file: !5567, line: 114, baseType: !522, size: 32, offset: 1024)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5566, file: !5567, line: 115, baseType: !522, size: 32, offset: 1056)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5566, file: !5567, line: 117, baseType: !522, size: 32, offset: 1088)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5566, file: !5567, line: 118, baseType: !570, size: 64, align: 64, offset: 1152)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5566, file: !5567, line: 120, baseType: !570, size: 64, offset: 1216)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5566, file: !5567, line: 121, baseType: !570, size: 64, offset: 1280)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5566, file: !5567, line: 122, baseType: !570, size: 64, offset: 1344)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5566, file: !5567, line: 123, baseType: !570, size: 64, offset: 1408)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5566, file: !5567, line: 133, baseType: !570, size: 64, offset: 1472)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5566, file: !5567, line: 137, baseType: !570, size: 64, offset: 1536)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5566, file: !5567, line: 142, baseType: !570, size: 64, offset: 1600)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5566, file: !5567, line: 143, baseType: !570, size: 64, offset: 1664)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5566, file: !5567, line: 146, baseType: !570, size: 64, offset: 1728)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5566, file: !5567, line: 147, baseType: !570, size: 64, offset: 1792)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5566, file: !5567, line: 148, baseType: !570, size: 64, offset: 1856)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5566, file: !5567, line: 149, baseType: !570, size: 64, offset: 1920)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5566, file: !5567, line: 154, baseType: !570, size: 64, offset: 1984)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5566, file: !5567, line: 155, baseType: !570, size: 64, offset: 2048)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5566, file: !5567, line: 156, baseType: !570, size: 64, offset: 2112)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5566, file: !5567, line: 158, baseType: !570, size: 64, offset: 2176)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5566, file: !5567, line: 159, baseType: !570, size: 64, offset: 2240)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5566, file: !5567, line: 162, baseType: !570, size: 64, offset: 2304)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5566, file: !5567, line: 163, baseType: !570, size: 64, offset: 2368)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5566, file: !5567, line: 164, baseType: !570, size: 64, offset: 2432)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5566, file: !5567, line: 167, baseType: !570, size: 64, offset: 2496)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5566, file: !5567, line: 168, baseType: !570, size: 64, offset: 2560)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5566, file: !5567, line: 171, baseType: !570, size: 64, offset: 2624)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5566, file: !5567, line: 172, baseType: !570, size: 64, offset: 2688)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5566, file: !5567, line: 175, baseType: !570, size: 64, offset: 2752)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5566, file: !5567, line: 178, baseType: !570, size: 64, offset: 2816)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5566, file: !5567, line: 179, baseType: !570, size: 64, offset: 2880)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5566, file: !5567, line: 182, baseType: !522, size: 32, offset: 2944)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5566, file: !5567, line: 186, baseType: !570, size: 64, align: 64, offset: 3008)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5566, file: !5567, line: 194, baseType: !570, size: 64, offset: 3072)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5566, file: !5567, line: 195, baseType: !570, size: 64, offset: 3136)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5566, file: !5567, line: 199, baseType: !570, size: 64, offset: 3200)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5566, file: !5567, line: 200, baseType: !570, size: 64, offset: 3264)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5566, file: !5567, line: 203, baseType: !570, size: 64, offset: 3328)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5566, file: !5567, line: 204, baseType: !570, size: 64, offset: 3392)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5440, file: !5441, line: 222, baseType: !7, size: 32, offset: 7936)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5440, file: !5441, line: 223, baseType: !5628, size: 64, offset: 8000)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5441, line: 223, flags: DIFlagFwdDecl)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5440, file: !5441, line: 230, baseType: !1033, size: 8, offset: 8064)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5440, file: !5441, line: 231, baseType: !968, size: 16, offset: 8080)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5440, file: !5441, line: 232, baseType: !968, size: 16, offset: 8096)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5440, file: !5441, line: 234, baseType: !815, size: 64, offset: 8128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5440, file: !5441, line: 237, baseType: !359, size: 256, offset: 8192)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5440, file: !5441, line: 243, baseType: !871, size: 320, offset: 8448)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !511, file: !512, line: 1111, baseType: !5637, size: 64, offset: 15424)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5441, line: 20, size: 16640, elements: !5639)
!5639 = !{!5640, !5641, !5642, !5643}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5638, file: !5441, line: 21, baseType: !59, size: 32)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5638, file: !5441, line: 22, baseType: !460, size: 32, offset: 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5638, file: !5441, line: 23, baseType: !54, size: 192, offset: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5638, file: !5441, line: 24, baseType: !5644, size: 16384, offset: 256)
!5644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5645, size: 16384, elements: !1980)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5452, line: 51, size: 256, elements: !5646)
!5646 = !{!5647}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5645, file: !5452, line: 52, baseType: !5648, size: 256)
!5648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5452, line: 37, size: 256, elements: !5649)
!5649 = !{!5650, !5657, !5658, !5662}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5648, file: !5452, line: 39, baseType: !5651, size: 64)
!5651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5652, line: 83, baseType: !5653)
!5652 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5652, line: 82, baseType: !5655)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{null, !22}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5648, file: !5452, line: 40, baseType: !39, size: 64, offset: 64)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5648, file: !5452, line: 46, baseType: !5659, size: 64, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5652, line: 86, baseType: !5660)
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5652, line: 85, baseType: !2522)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5648, file: !5452, line: 48, baseType: !5456, size: 64, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !511, file: !512, line: 1112, baseType: !5456, size: 64, offset: 15488)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !511, file: !512, line: 1113, baseType: !5456, size: 64, offset: 15552)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !511, file: !512, line: 1115, baseType: !5456, size: 64, offset: 15616)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !511, file: !512, line: 1116, baseType: !5451, size: 192, offset: 15680)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !511, file: !512, line: 1117, baseType: !39, size: 64, offset: 15872)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !511, file: !512, line: 1118, baseType: !35, size: 64, offset: 15936)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !511, file: !512, line: 1119, baseType: !7, size: 32, offset: 16000)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !511, file: !512, line: 1121, baseType: !416, size: 64, offset: 16064)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !511, file: !512, line: 1125, baseType: !5672, size: 64, offset: 16128)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !512, line: 43, flags: DIFlagFwdDecl)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !511, file: !512, line: 1127, baseType: !1006, size: 32, offset: 16192)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !511, file: !512, line: 1128, baseType: !7, size: 32, offset: 16224)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !511, file: !512, line: 1130, baseType: !5677, size: 128, offset: 16256)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5678, line: 37, size: 128, elements: !5679)
!5678 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5679 = !{!5680, !5681, !5682}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5677, file: !5678, line: 38, baseType: !22, size: 32)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5677, file: !5678, line: 39, baseType: !49, size: 32, offset: 32)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5677, file: !5678, line: 40, baseType: !5683, size: 64, offset: 64)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5678, line: 24, flags: DIFlagFwdDecl)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !511, file: !512, line: 1131, baseType: !5686, size: 256, offset: 16384)
!5686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5687, line: 12, size: 256, elements: !5688)
!5687 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5688 = !{!5689, !5690, !5691, !5692}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5686, file: !5687, line: 13, baseType: !351, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5686, file: !5687, line: 14, baseType: !39, size: 64, offset: 64)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5686, file: !5687, line: 15, baseType: !39, size: 64, offset: 128)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5686, file: !5687, line: 16, baseType: !1033, size: 8, offset: 192)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !511, file: !512, line: 1134, baseType: !569, size: 64, offset: 16640)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !511, file: !512, line: 1135, baseType: !569, size: 64, offset: 16704)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !511, file: !512, line: 1138, baseType: !59, size: 32, offset: 16768)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !511, file: !512, line: 1141, baseType: !372, size: 32, offset: 16800)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !511, file: !512, line: 1143, baseType: !5698, size: 64, offset: 16832)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !512, line: 735, size: 64, elements: !5699)
!5699 = !{!5700}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5698, file: !512, line: 736, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !511, file: !512, line: 1147, baseType: !698, size: 128, offset: 16896)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !511, file: !512, line: 1149, baseType: !510, size: 64, offset: 17024)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !511, file: !512, line: 1151, baseType: !5705, size: 64, offset: 17088)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !512, line: 1151, flags: DIFlagFwdDecl)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !511, file: !512, line: 1188, baseType: !20, size: 64, offset: 17152)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !511, file: !512, line: 1191, baseType: !5709, size: 64, offset: 17216)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5710, size: 64)
!5710 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !512, line: 44, flags: DIFlagFwdDecl)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !511, file: !512, line: 1194, baseType: !5712, size: 64, offset: 17280)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !512, line: 45, flags: DIFlagFwdDecl)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !511, file: !512, line: 1197, baseType: !5715, size: 64, offset: 17344)
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5716 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !512, line: 61, flags: DIFlagFwdDecl)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !511, file: !512, line: 1199, baseType: !5718, size: 64, offset: 17408)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5720, line: 99, size: 128, elements: !5721)
!5720 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5721 = !{!5722, !5723, !5724}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5719, file: !5720, line: 100, baseType: !363, size: 64)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5719, file: !5720, line: 101, baseType: !49, size: 32, offset: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5719, file: !5720, line: 103, baseType: !26, size: 16, offset: 96)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !511, file: !512, line: 1202, baseType: !5726, size: 64, offset: 17472)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5727, size: 64)
!5727 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !512, line: 48, flags: DIFlagFwdDecl)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !511, file: !512, line: 1205, baseType: !39, size: 64, offset: 17536)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !511, file: !512, line: 1206, baseType: !5730, size: 64, offset: 17600)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5452, line: 14, baseType: !5732)
!5732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5452, line: 12, size: 384, elements: !5733)
!5733 = !{!5734}
!5734 = !DIDerivedType(tag: DW_TAG_member, scope: !5732, file: !5452, line: 13, baseType: !5735, size: 384)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5732, file: !5452, line: 13, size: 384, elements: !5736)
!5736 = !{!5737, !5738, !5739, !5740}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5735, file: !5452, line: 13, baseType: !22, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5735, file: !5452, line: 13, baseType: !22, size: 32, offset: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5735, file: !5452, line: 13, baseType: !22, size: 32, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5735, file: !5452, line: 13, baseType: !5741, size: 256, offset: 128)
!5741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5742, line: 37, size: 256, elements: !5743)
!5742 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5743 = !{!5744, !5749, !5762, !5768, !5777, !5804, !5809}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5741, file: !5742, line: 42, baseType: !5745, size: 64)
!5745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 39, size: 64, elements: !5746)
!5746 = !{!5747, !5748}
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5745, file: !5742, line: 40, baseType: !1352, size: 32)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5745, file: !5742, line: 41, baseType: !1012, size: 32, offset: 32)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5741, file: !5742, line: 50, baseType: !5750, size: 192)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 45, size: 192, elements: !5751)
!5751 = !{!5752, !5754, !5755, !5761}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5750, file: !5742, line: 46, baseType: !5753, size: 32)
!5753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5750, file: !5742, line: 47, baseType: !22, size: 32, offset: 32)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5750, file: !5742, line: 48, baseType: !5756, size: 64, offset: 64)
!5756 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5742, line: 11, baseType: !5757)
!5757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5742, line: 8, size: 64, elements: !5758)
!5758 = !{!5759, !5760}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5757, file: !5742, line: 9, baseType: !22, size: 32)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5757, file: !5742, line: 10, baseType: !20, size: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5750, file: !5742, line: 49, baseType: !22, size: 32, offset: 128)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5741, file: !5742, line: 57, baseType: !5763, size: 128)
!5763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 53, size: 128, elements: !5764)
!5764 = !{!5765, !5766, !5767}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5763, file: !5742, line: 54, baseType: !1352, size: 32)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5763, file: !5742, line: 55, baseType: !1012, size: 32, offset: 32)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5763, file: !5742, line: 56, baseType: !5756, size: 64, offset: 64)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5741, file: !5742, line: 66, baseType: !5769, size: 256)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 60, size: 256, elements: !5770)
!5770 = !{!5771, !5772, !5773, !5774, !5776}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5769, file: !5742, line: 61, baseType: !1352, size: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5769, file: !5742, line: 62, baseType: !1012, size: 32, offset: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5769, file: !5742, line: 63, baseType: !22, size: 32, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5769, file: !5742, line: 64, baseType: !5775, size: 64, offset: 128)
!5775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !2009)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5769, file: !5742, line: 65, baseType: !5775, size: 64, offset: 192)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5741, file: !5742, line: 105, baseType: !5778, size: 256)
!5778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 69, size: 256, elements: !5779)
!5779 = !{!5780, !5781}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5778, file: !5742, line: 70, baseType: !20, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, scope: !5778, file: !5742, line: 79, baseType: !5782, size: 192, offset: 64)
!5782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5778, file: !5742, line: 79, size: 192, elements: !5783)
!5783 = !{!5784, !5785, !5786, !5793, !5798}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5782, file: !5742, line: 81, baseType: !22, size: 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5782, file: !5742, line: 86, baseType: !968, size: 16)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5782, file: !5742, line: 92, baseType: !5787, size: 192)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5782, file: !5742, line: 88, size: 192, elements: !5788)
!5788 = !{!5789, !5791, !5792}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5787, file: !5742, line: 89, baseType: !5790, size: 64)
!5790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !677)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5787, file: !5742, line: 90, baseType: !20, size: 64, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5787, file: !5742, line: 91, baseType: !20, size: 64, offset: 128)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5782, file: !5742, line: 97, baseType: !5794, size: 96)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5782, file: !5742, line: 94, size: 96, elements: !5795)
!5795 = !{!5796, !5797}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5794, file: !5742, line: 95, baseType: !5790, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5794, file: !5742, line: 96, baseType: !522, size: 32, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5782, file: !5742, line: 103, baseType: !5799, size: 128)
!5799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5782, file: !5742, line: 99, size: 128, elements: !5800)
!5800 = !{!5801, !5802, !5803}
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5799, file: !5742, line: 100, baseType: !39, size: 64)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5799, file: !5742, line: 101, baseType: !522, size: 32, offset: 64)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5799, file: !5742, line: 102, baseType: !522, size: 32, offset: 96)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5741, file: !5742, line: 111, baseType: !5805, size: 128)
!5805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 108, size: 128, elements: !5806)
!5806 = !{!5807, !5808}
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5805, file: !5742, line: 109, baseType: !951, size: 64)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5805, file: !5742, line: 110, baseType: !22, size: 32, offset: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5741, file: !5742, line: 118, baseType: !5810, size: 128)
!5810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5741, file: !5742, line: 114, size: 128, elements: !5811)
!5811 = !{!5812, !5813, !5814}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5810, file: !5742, line: 115, baseType: !20, size: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5810, file: !5742, line: 116, baseType: !22, size: 32, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5810, file: !5742, line: 117, baseType: !7, size: 32, offset: 96)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !511, file: !512, line: 1208, baseType: !5536, size: 448, offset: 17664)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !511, file: !512, line: 1215, baseType: !569, size: 64, offset: 18112)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !511, file: !512, line: 1217, baseType: !569, size: 64, offset: 18176)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !511, file: !512, line: 1219, baseType: !569, size: 64, offset: 18240)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !511, file: !512, line: 1223, baseType: !5820, size: 64, offset: 18304)
!5820 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5821, line: 99, baseType: !5822)
!5821 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5821, line: 99, size: 64, elements: !5823)
!5823 = !{!5824}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5822, file: !5821, line: 99, baseType: !766, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !511, file: !512, line: 1225, baseType: !1789, size: 32, offset: 18368)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !511, file: !512, line: 1226, baseType: !22, size: 32, offset: 18400)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !511, file: !512, line: 1227, baseType: !22, size: 32, offset: 18432)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !511, file: !512, line: 1231, baseType: !1538, size: 64, offset: 18496)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !511, file: !512, line: 1233, baseType: !97, size: 128, offset: 18560)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !511, file: !512, line: 1240, baseType: !5831, size: 64, offset: 18688)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !512, line: 62, flags: DIFlagFwdDecl)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !511, file: !512, line: 1242, baseType: !5834, size: 64, offset: 18752)
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !512, line: 1242, flags: DIFlagFwdDecl)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !511, file: !512, line: 1244, baseType: !97, size: 128, offset: 18816)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !511, file: !512, line: 1245, baseType: !5838, size: 64, offset: 18944)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !512, line: 51, flags: DIFlagFwdDecl)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !511, file: !512, line: 1246, baseType: !359, size: 256, offset: 19008)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !511, file: !512, line: 1247, baseType: !7, size: 32, offset: 19264)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !511, file: !512, line: 1250, baseType: !3381, size: 64, offset: 19328)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !511, file: !512, line: 1251, baseType: !359, size: 256, offset: 19392)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !511, file: !512, line: 1252, baseType: !97, size: 128, offset: 19648)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !511, file: !512, line: 1259, baseType: !1676, size: 64, offset: 19776)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !511, file: !512, line: 1260, baseType: !968, size: 16, offset: 19840)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !511, file: !512, line: 1261, baseType: !968, size: 16, offset: 19856)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !511, file: !512, line: 1314, baseType: !5849, size: 64, offset: 19904)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5851, line: 62, size: 256, align: 256, elements: !5852)
!5851 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5852 = !{!5853, !5854, !5855, !5856, !5857, !5858, !5859}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5850, file: !5851, line: 75, baseType: !522, size: 32)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5850, file: !5851, line: 90, baseType: !522, size: 32, offset: 32)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5850, file: !5851, line: 112, baseType: !570, size: 64, offset: 64)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5850, file: !5851, line: 132, baseType: !522, size: 32, offset: 128)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5850, file: !5851, line: 140, baseType: !522, size: 32, offset: 160)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5850, file: !5851, line: 149, baseType: !522, size: 32, offset: 192)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5850, file: !5851, line: 154, baseType: !5860, offset: 224)
!5860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1264)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !511, file: !512, line: 1315, baseType: !521, size: 32, offset: 19968)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !511, file: !512, line: 1316, baseType: !521, size: 32, offset: 20000)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !511, file: !512, line: 1321, baseType: !39, size: 64, offset: 20032)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !511, file: !512, line: 1325, baseType: !22, size: 32, offset: 20096)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !511, file: !512, line: 1326, baseType: !22, size: 32, offset: 20128)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !511, file: !512, line: 1327, baseType: !22, size: 32, offset: 20160)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !511, file: !512, line: 1328, baseType: !22, size: 32, offset: 20192)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !511, file: !512, line: 1329, baseType: !413, size: 128, align: 64, offset: 20224)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !511, file: !512, line: 1332, baseType: !5870, size: 128, offset: 20352)
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5871, line: 51, size: 128, elements: !5872)
!5871 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5872 = !{!5873, !5878, !5879}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5870, file: !5871, line: 60, baseType: !5874, size: 64)
!5874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5875, line: 7, size: 64, elements: !5876)
!5875 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5876 = !{!5877}
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5874, file: !5875, line: 12, baseType: !763, size: 64)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5870, file: !5871, line: 63, baseType: !1033, size: 8, offset: 64)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5870, file: !5871, line: 70, baseType: !1033, size: 8, offset: 72)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !511, file: !512, line: 1335, baseType: !2666, size: 64, offset: 20480)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !511, file: !512, line: 1337, baseType: !5882, size: 128, offset: 20544)
!5882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5871, line: 39, size: 128, elements: !5883)
!5883 = !{!5884, !5885, !5886}
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5882, file: !5871, line: 40, baseType: !1735, size: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5882, file: !5871, line: 42, baseType: !522, size: 32, offset: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5882, file: !5871, line: 43, baseType: !522, size: 32, offset: 96)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !511, file: !512, line: 1340, baseType: !5888, size: 64, offset: 20672)
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5889, size: 64)
!5889 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !512, line: 69, flags: DIFlagFwdDecl)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !511, file: !512, line: 1351, baseType: !22, size: 32, offset: 20736)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !511, file: !512, line: 1352, baseType: !22, size: 32, offset: 20768)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !511, file: !512, line: 1354, baseType: !39, size: 64, offset: 20800)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !511, file: !512, line: 1364, baseType: !569, size: 64, offset: 20864)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !511, file: !512, line: 1365, baseType: !569, size: 64, offset: 20928)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !511, file: !512, line: 1412, baseType: !39, size: 64, offset: 20992)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !511, file: !512, line: 1453, baseType: !5897, size: 64, offset: 21056)
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5898, size: 64)
!5898 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !512, line: 1453, flags: DIFlagFwdDecl)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !511, file: !512, line: 1457, baseType: !5900, size: 64, offset: 21120)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !254, line: 61, size: 576, elements: !5902)
!5902 = !{!5903, !5904, !5923, !5926, !5927, !5960, !5970}
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5901, file: !254, line: 62, baseType: !253, size: 32)
!5904 = !DIDerivedType(tag: DW_TAG_member, scope: !5901, file: !254, line: 64, baseType: !5905, size: 192, offset: 64)
!5905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5901, file: !254, line: 64, size: 192, elements: !5906)
!5906 = !{!5907, !5918}
!5907 = !DIDerivedType(tag: DW_TAG_member, scope: !5905, file: !254, line: 65, baseType: !5908, size: 192)
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5905, file: !254, line: 65, size: 192, elements: !5909)
!5909 = !{!5910, !5917}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5908, file: !254, line: 66, baseType: !5911, size: 128)
!5911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5912, line: 50, size: 128, elements: !5913)
!5912 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5913 = !{!5914, !5915, !5916}
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5911, file: !5912, line: 52, baseType: !39, size: 64)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5911, file: !5912, line: 54, baseType: !7, size: 32, offset: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5911, file: !5912, line: 55, baseType: !7, size: 32, offset: 96)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5908, file: !254, line: 67, baseType: !39, size: 64, offset: 128)
!5918 = !DIDerivedType(tag: DW_TAG_member, scope: !5905, file: !254, line: 70, baseType: !5919, size: 192)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5905, file: !254, line: 70, size: 192, elements: !5920)
!5920 = !{!5921, !5922}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5919, file: !254, line: 71, baseType: !413, size: 128, align: 64)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5919, file: !254, line: 72, baseType: !39, size: 64, offset: 128)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5901, file: !254, line: 76, baseType: !5924, size: 64, offset: 256)
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5925, size: 64)
!5925 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !254, line: 76, flags: DIFlagFwdDecl)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5901, file: !254, line: 77, baseType: !39, size: 64, offset: 320)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5901, file: !254, line: 79, baseType: !5928, size: 64, offset: 384)
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5912, line: 25, size: 256, elements: !5930)
!5930 = !{!5931, !5937, !5941}
!5931 = !DIDerivedType(tag: DW_TAG_member, scope: !5929, file: !5912, line: 26, baseType: !5932, size: 128)
!5932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5929, file: !5912, line: 26, size: 128, elements: !5933)
!5933 = !{!5934, !5936}
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5932, file: !5912, line: 27, baseType: !5935, size: 128)
!5935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !1480)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5932, file: !5912, line: 28, baseType: !5935, size: 128)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5929, file: !5912, line: 31, baseType: !5938, size: 64, offset: 128)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5940)
!5940 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5912, line: 23, flags: DIFlagFwdDecl)
!5941 = !DIDerivedType(tag: DW_TAG_member, scope: !5929, file: !5912, line: 33, baseType: !5942, size: 64, offset: 192)
!5942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5929, file: !5912, line: 33, size: 64, elements: !5943)
!5943 = !{!5944, !5950, !5955}
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5942, file: !5912, line: 38, baseType: !5945, size: 64)
!5945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5942, file: !5912, line: 34, size: 64, elements: !5946)
!5946 = !{!5947, !5948, !5949}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5945, file: !5912, line: 35, baseType: !917, size: 32)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5945, file: !5912, line: 36, baseType: !83, size: 8, offset: 32)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5945, file: !5912, line: 37, baseType: !83, size: 8, offset: 40)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5942, file: !5912, line: 42, baseType: !5951, size: 16)
!5951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5942, file: !5912, line: 39, size: 16, elements: !5952)
!5952 = !{!5953, !5954}
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5951, file: !5912, line: 40, baseType: !83, size: 8)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5951, file: !5912, line: 41, baseType: !83, size: 8, offset: 8)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5942, file: !5912, line: 46, baseType: !5956, size: 16)
!5956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5942, file: !5912, line: 43, size: 16, elements: !5957)
!5957 = !{!5958, !5959}
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5956, file: !5912, line: 44, baseType: !83, size: 8)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5956, file: !5912, line: 45, baseType: !83, size: 8, offset: 8)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5901, file: !254, line: 81, baseType: !5961, size: 64, offset: 448)
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !254, line: 85, size: 384, elements: !5963)
!5963 = !{!5964, !5965, !5966, !5967, !5968, !5969}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5962, file: !254, line: 86, baseType: !5924, size: 64)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5962, file: !254, line: 87, baseType: !39, size: 64, offset: 64)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5962, file: !254, line: 88, baseType: !39, size: 64, offset: 128)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5962, file: !254, line: 89, baseType: !39, size: 64, offset: 192)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5962, file: !254, line: 90, baseType: !1033, size: 8, offset: 256)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5962, file: !254, line: 92, baseType: !5961, size: 64, offset: 320)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5901, file: !254, line: 82, baseType: !7, size: 32, offset: 512)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !511, file: !512, line: 1463, baseType: !5972, offset: 21184)
!5972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !512, line: 739, elements: !836)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !511, file: !512, line: 1470, baseType: !413, size: 128, align: 64, offset: 21184)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !511, file: !512, line: 1471, baseType: !460, size: 32, offset: 21312)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !511, file: !512, line: 1472, baseType: !22, size: 32, offset: 21344)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !511, file: !512, line: 1474, baseType: !510, size: 64, offset: 21376)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !511, file: !512, line: 1475, baseType: !2347, size: 320, offset: 21440)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !511, file: !512, line: 1478, baseType: !5979, size: 64, offset: 21760)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5981, line: 49, size: 512, elements: !5982)
!5981 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5982 = !{!5983, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5992}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5980, file: !5981, line: 50, baseType: !5979, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5980, file: !5981, line: 51, baseType: !20, size: 64, offset: 64)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5980, file: !5981, line: 52, baseType: !39, size: 64, offset: 128)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5980, file: !5981, line: 53, baseType: !39, size: 64, offset: 192)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5980, file: !5981, line: 54, baseType: !4967, size: 64, offset: 256)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5980, file: !5981, line: 56, baseType: !7, size: 32, offset: 320)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5980, file: !5981, line: 58, baseType: !7, size: 32, offset: 352)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5980, file: !5981, line: 59, baseType: !5991, size: 64, offset: 384)
!5991 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !25, line: 159, baseType: !569)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5980, file: !5981, line: 60, baseType: !340, size: 64, offset: 448)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !511, file: !512, line: 1482, baseType: !460, size: 32, offset: 21824)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !511, file: !512, line: 1489, baseType: !20, size: 64, offset: 21888)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !511, file: !512, line: 1504, baseType: !20, size: 64, offset: 21952)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !511, file: !512, line: 1505, baseType: !570, size: 64, offset: 22016)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !511, file: !512, line: 1506, baseType: !569, size: 64, offset: 22080)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !511, file: !512, line: 1507, baseType: !570, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !511, file: !512, line: 1508, baseType: !570, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !511, file: !512, line: 1509, baseType: !570, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !511, file: !512, line: 1510, baseType: !413, size: 128, align: 64, offset: 22208)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !511, file: !512, line: 1511, baseType: !22, size: 32, offset: 22336)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !511, file: !512, line: 1515, baseType: !6004, size: 64, offset: 22400)
!6004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !408, line: 56, size: 64, elements: !6005)
!6005 = !{!6006}
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6004, file: !408, line: 57, baseType: !411, size: 64)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !511, file: !512, line: 1518, baseType: !6004, size: 64, offset: 22464)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !511, file: !512, line: 1528, baseType: !413, size: 128, align: 64, offset: 22528)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !511, file: !512, line: 1552, baseType: !6010, size: 35328, offset: 23040)
!6010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !6011, line: 430, size: 35328, elements: !6012)
!6011 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!6012 = !{!6013, !6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038, !6040, !6041, !6042, !6043, !6044, !6045, !6048, !6049, !6050, !6051}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !6010, file: !6011, line: 432, baseType: !6014, size: 192)
!6014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6015, size: 192, elements: !452)
!6015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !6016, line: 16, size: 64, elements: !6017)
!6016 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!6017 = !{!6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !6015, file: !6016, line: 17, baseType: !93, size: 16)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !6015, file: !6016, line: 18, baseType: !93, size: 16, offset: 16)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !6015, file: !6016, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6015, file: !6016, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !6015, file: !6016, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !6015, file: !6016, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !6015, file: !6016, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !6015, file: !6016, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !6015, file: !6016, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !6015, file: !6016, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6015, file: !6016, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !6015, file: !6016, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !6015, file: !6016, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !6010, file: !6011, line: 436, baseType: !39, size: 64, offset: 192)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !6010, file: !6011, line: 440, baseType: !26, size: 16, offset: 256)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !6010, file: !6011, line: 441, baseType: !26, size: 16, offset: 272)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !6010, file: !6011, line: 442, baseType: !26, size: 16, offset: 288)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !6010, file: !6011, line: 443, baseType: !26, size: 16, offset: 304)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !6010, file: !6011, line: 447, baseType: !39, size: 64, offset: 320)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !6010, file: !6011, line: 448, baseType: !39, size: 64, offset: 384)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !6010, file: !6011, line: 459, baseType: !6039, size: 256, offset: 448)
!6039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2856, size: 256, elements: !478)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !6010, file: !6011, line: 461, baseType: !39, size: 64, offset: 704)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !6010, file: !6011, line: 463, baseType: !39, size: 64, offset: 768)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !6010, file: !6011, line: 465, baseType: !39, size: 64, offset: 832)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !6010, file: !6011, line: 466, baseType: !39, size: 64, offset: 896)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !6010, file: !6011, line: 467, baseType: !39, size: 64, offset: 960)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !6010, file: !6011, line: 473, baseType: !6046, size: 64, offset: 1024)
!6046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6047, size: 64)
!6047 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !6011, line: 10, flags: DIFlagFwdDecl)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !6010, file: !6011, line: 480, baseType: !39, size: 64, offset: 1088)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !6010, file: !6011, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !6010, file: !6011, line: 491, baseType: !521, size: 32, offset: 1184)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !6010, file: !6011, line: 501, baseType: !6052, size: 33792, offset: 1536)
!6052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6053, line: 448, size: 33792, elements: !6054)
!6053 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6054 = !{!6055, !6056, !6057, !6165, !6166, !6172, !6173}
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6052, file: !6053, line: 461, baseType: !7, size: 32)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6052, file: !6053, line: 468, baseType: !39, size: 64, offset: 64)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6052, file: !6053, line: 476, baseType: !6058, size: 64, offset: 128)
!6058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6059, size: 64)
!6059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6053, line: 356, size: 33280, align: 512, elements: !6060)
!6060 = !{!6061, !6062, !6063, !6064, !6065, !6066, !6067, !6068, !6069, !6070}
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6059, file: !6053, line: 358, baseType: !7, size: 32)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6059, file: !6053, line: 361, baseType: !7, size: 32, offset: 32)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6059, file: !6053, line: 364, baseType: !569, size: 64, offset: 64)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6059, file: !6053, line: 367, baseType: !569, size: 64, offset: 128)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6059, file: !6053, line: 370, baseType: !569, size: 64, offset: 192)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6059, file: !6053, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6059, file: !6053, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6059, file: !6053, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6059, file: !6053, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6059, file: !6053, line: 397, baseType: !6071, size: 32768, offset: 512)
!6071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6053, line: 348, size: 32768, elements: !6072)
!6072 = !{!6073, !6088, !6125, !6150, !6163}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6071, file: !6053, line: 349, baseType: !6074, size: 896)
!6074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6053, line: 12, size: 896, elements: !6075)
!6075 = !{!6076, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6087}
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6074, file: !6053, line: 13, baseType: !521, size: 32)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6074, file: !6053, line: 14, baseType: !521, size: 32, offset: 32)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6074, file: !6053, line: 15, baseType: !521, size: 32, offset: 64)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6074, file: !6053, line: 16, baseType: !521, size: 32, offset: 96)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6074, file: !6053, line: 17, baseType: !521, size: 32, offset: 128)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6074, file: !6053, line: 18, baseType: !521, size: 32, offset: 160)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6074, file: !6053, line: 19, baseType: !521, size: 32, offset: 192)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6074, file: !6053, line: 22, baseType: !6084, size: 640, offset: 224)
!6084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 640, elements: !6085)
!6085 = !{!6086}
!6086 = !DISubrange(count: 20)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6074, file: !6053, line: 25, baseType: !521, size: 32, offset: 864)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6071, file: !6053, line: 350, baseType: !6089, size: 4096, align: 128)
!6089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6053, line: 34, size: 4096, align: 128, elements: !6090)
!6090 = !{!6091, !6092, !6093, !6094, !6095, !6110, !6111, !6112, !6114, !6116, !6120}
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6089, file: !6053, line: 35, baseType: !93, size: 16)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6089, file: !6053, line: 36, baseType: !93, size: 16, offset: 16)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6089, file: !6053, line: 37, baseType: !93, size: 16, offset: 32)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6089, file: !6053, line: 38, baseType: !93, size: 16, offset: 48)
!6095 = !DIDerivedType(tag: DW_TAG_member, scope: !6089, file: !6053, line: 39, baseType: !6096, size: 128, offset: 64)
!6096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6089, file: !6053, line: 39, size: 128, elements: !6097)
!6097 = !{!6098, !6103}
!6098 = !DIDerivedType(tag: DW_TAG_member, scope: !6096, file: !6053, line: 40, baseType: !6099, size: 128)
!6099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6096, file: !6053, line: 40, size: 128, elements: !6100)
!6100 = !{!6101, !6102}
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6099, file: !6053, line: 41, baseType: !569, size: 64)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6099, file: !6053, line: 42, baseType: !569, size: 64, offset: 64)
!6103 = !DIDerivedType(tag: DW_TAG_member, scope: !6096, file: !6053, line: 44, baseType: !6104, size: 128)
!6104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6096, file: !6053, line: 44, size: 128, elements: !6105)
!6105 = !{!6106, !6107, !6108, !6109}
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6104, file: !6053, line: 45, baseType: !521, size: 32)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6104, file: !6053, line: 46, baseType: !521, size: 32, offset: 32)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6104, file: !6053, line: 47, baseType: !521, size: 32, offset: 64)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6104, file: !6053, line: 48, baseType: !521, size: 32, offset: 96)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6089, file: !6053, line: 51, baseType: !521, size: 32, offset: 192)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6089, file: !6053, line: 52, baseType: !521, size: 32, offset: 224)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6089, file: !6053, line: 55, baseType: !6113, size: 1024, offset: 256)
!6113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 1024, elements: !1820)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6089, file: !6053, line: 58, baseType: !6115, size: 2048, offset: 1280)
!6115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 2048, elements: !1980)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6089, file: !6053, line: 60, baseType: !6117, size: 384, offset: 3328)
!6117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 384, elements: !6118)
!6118 = !{!6119}
!6119 = !DISubrange(count: 12)
!6120 = !DIDerivedType(tag: DW_TAG_member, scope: !6089, file: !6053, line: 62, baseType: !6121, size: 384, offset: 3712)
!6121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6089, file: !6053, line: 62, size: 384, elements: !6122)
!6122 = !{!6123, !6124}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6121, file: !6053, line: 63, baseType: !6117, size: 384)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6121, file: !6053, line: 64, baseType: !6117, size: 384)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6071, file: !6053, line: 351, baseType: !6126, size: 1088)
!6126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6053, line: 79, size: 1088, elements: !6127)
!6127 = !{!6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6141, !6142, !6149}
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6126, file: !6053, line: 80, baseType: !521, size: 32)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6126, file: !6053, line: 81, baseType: !521, size: 32, offset: 32)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6126, file: !6053, line: 82, baseType: !521, size: 32, offset: 64)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6126, file: !6053, line: 83, baseType: !521, size: 32, offset: 96)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6126, file: !6053, line: 84, baseType: !521, size: 32, offset: 128)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6126, file: !6053, line: 85, baseType: !521, size: 32, offset: 160)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6126, file: !6053, line: 86, baseType: !521, size: 32, offset: 192)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6126, file: !6053, line: 88, baseType: !6084, size: 640, offset: 224)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6126, file: !6053, line: 89, baseType: !83, size: 8, offset: 864)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6126, file: !6053, line: 90, baseType: !83, size: 8, offset: 872)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6126, file: !6053, line: 91, baseType: !83, size: 8, offset: 880)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6126, file: !6053, line: 92, baseType: !83, size: 8, offset: 888)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6126, file: !6053, line: 93, baseType: !83, size: 8, offset: 896)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6126, file: !6053, line: 94, baseType: !83, size: 8, offset: 904)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6126, file: !6053, line: 95, baseType: !6143, size: 64, offset: 960)
!6143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6144, size: 64)
!6144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6145, line: 11, size: 128, elements: !6146)
!6145 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6146 = !{!6147, !6148}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6144, file: !6145, line: 12, baseType: !951, size: 64)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6144, file: !6145, line: 13, baseType: !3895, size: 64, offset: 64)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6126, file: !6053, line: 96, baseType: !521, size: 32, offset: 1024)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6071, file: !6053, line: 352, baseType: !6151, size: 4608, align: 512)
!6151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6053, line: 333, size: 4608, align: 512, elements: !6152)
!6152 = !{!6153, !6154, !6161}
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6151, file: !6053, line: 334, baseType: !6089, size: 4096, align: 128)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6151, file: !6053, line: 335, baseType: !6155, size: 512, offset: 4096)
!6155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6053, line: 312, size: 512, elements: !6156)
!6156 = !{!6157, !6158, !6159}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6155, file: !6053, line: 313, baseType: !569, size: 64)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6155, file: !6053, line: 314, baseType: !569, size: 64, offset: 64)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6155, file: !6053, line: 315, baseType: !6160, size: 384, offset: 128)
!6160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 384, elements: !1088)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6151, file: !6053, line: 336, baseType: !6162, offset: 4608)
!6162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1264)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6071, file: !6053, line: 353, baseType: !6164, size: 32768)
!6164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !2804)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6052, file: !6053, line: 484, baseType: !6058, size: 64, offset: 192)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6052, file: !6053, line: 491, baseType: !6167, size: 128, offset: 256)
!6167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6053, line: 404, size: 128, elements: !6168)
!6168 = !{!6169, !6170, !6171}
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6167, file: !6053, line: 424, baseType: !569, size: 64)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6167, file: !6053, line: 432, baseType: !7, size: 32, offset: 64)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6167, file: !6053, line: 440, baseType: !7, size: 32, offset: 96)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6052, file: !6053, line: 498, baseType: !6167, size: 128, offset: 384)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6052, file: !6053, line: 508, baseType: !6059, size: 33280, align: 512, offset: 512)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !490, file: !491, line: 31, baseType: !3485, size: 64, offset: 448)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !490, file: !491, line: 32, baseType: !7, size: 32, offset: 512)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !490, file: !491, line: 33, baseType: !489, size: 64, offset: 576)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !490, file: !491, line: 35, baseType: !6178, size: 64, offset: 640)
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6179, size: 64)
!6179 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !491, line: 17, flags: DIFlagFwdDecl)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !490, file: !491, line: 37, baseType: !975, size: 64, offset: 704)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !490, file: !491, line: 38, baseType: !1231, size: 64, offset: 768)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !490, file: !491, line: 39, baseType: !22, size: 32, offset: 832)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !490, file: !491, line: 40, baseType: !1021, size: 192, offset: 896)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !490, file: !491, line: 42, baseType: !22, size: 32, offset: 1088)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !430, file: !228, line: 951, baseType: !260, size: 32, offset: 128)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !430, file: !228, line: 952, baseType: !1006, size: 32, offset: 160)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !430, file: !228, line: 952, baseType: !1006, size: 32, offset: 192)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !430, file: !228, line: 953, baseType: !22, size: 32, offset: 224)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !401, file: !228, line: 1012, baseType: !1406, size: 64, offset: 896)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !401, file: !228, line: 1013, baseType: !6191, size: 256, offset: 960)
!6191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !228, line: 970, size: 256, elements: !6192)
!6192 = !{!6193, !6194, !6195, !6196, !6197, !6198}
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6191, file: !228, line: 971, baseType: !39, size: 64)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6191, file: !228, line: 972, baseType: !7, size: 32, offset: 64)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !6191, file: !228, line: 973, baseType: !7, size: 32, offset: 96)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !6191, file: !228, line: 974, baseType: !7, size: 32, offset: 128)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !6191, file: !228, line: 975, baseType: !7, size: 32, offset: 160)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !6191, file: !228, line: 976, baseType: !41, size: 64, offset: 192)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !401, file: !228, line: 1014, baseType: !4194, size: 128, offset: 1216)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !401, file: !228, line: 1015, baseType: !1761, size: 64, offset: 1344)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !401, file: !228, line: 1016, baseType: !4679, size: 64, offset: 1408)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !401, file: !228, line: 1018, baseType: !569, size: 64, offset: 1472)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !401, file: !228, line: 1020, baseType: !20, size: 64, offset: 1536)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !401, file: !228, line: 1023, baseType: !20, size: 64, offset: 1600)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !401, file: !228, line: 1027, baseType: !2848, size: 64, offset: 1664)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !401, file: !228, line: 1029, baseType: !1757, size: 64, offset: 1728)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !401, file: !228, line: 1030, baseType: !4410, size: 32, offset: 1792)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !401, file: !228, line: 1031, baseType: !4410, size: 32, offset: 1824)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !347, file: !348, line: 29, baseType: !20, size: 64, offset: 896)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "stat_release", scope: !323, file: !324, line: 23, baseType: !2085, size: 64, offset: 320)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "stat_headers", scope: !323, file: !324, line: 25, baseType: !6212, size: 64, offset: 384)
!6212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6213, size: 64)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{!22, !346}
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "stat_root", scope: !318, file: !3, line: 35, baseType: !701, size: 64, offset: 192)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "stat_mutex", scope: !318, file: !3, line: 36, baseType: !359, size: 256, offset: 256)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !318, file: !3, line: 37, baseType: !1783, size: 64, offset: 512)
!6218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6219, size: 64)
!6219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!6220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6221, size: 64)
!6221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat_node", file: !3, line: 26, size: 256, elements: !6222)
!6222 = !{!6223, !6224}
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6221, file: !3, line: 27, baseType: !561, size: 192, align: 64)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !6221, file: !3, line: 28, baseType: !20, size: 64, offset: 192)
!6225 = !{!6226, !6243, !0, !6248, !6250, !6252, !6254, !6259, !6264, !6266}
!6226 = !DIGlobalVariableExpression(var: !6227, expr: !DIExpression())
!6227 = distinct !DIGlobalVariable(name: "__key", scope: !6228, file: !3, line: 334, type: !4000, isLocal: true, isDefinition: true)
!6228 = distinct !DISubprogram(name: "register_stat_tracer", scope: !3, file: !3, line: 308, type: !6229, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6231)
!6229 = !DISubroutineType(types: !6230)
!6230 = !{!22, !322}
!6231 = !{!6232, !6233, !6234, !6235, !6236, !6239, !6242}
!6232 = !DILocalVariable(name: "trace", arg: 1, scope: !6228, file: !3, line: 308, type: !322)
!6233 = !DILocalVariable(name: "session", scope: !6228, file: !3, line: 310, type: !317)
!6234 = !DILocalVariable(name: "node", scope: !6228, file: !3, line: 310, type: !317)
!6235 = !DILocalVariable(name: "ret", scope: !6228, file: !3, line: 311, type: !22)
!6236 = !DILocalVariable(name: "__mptr", scope: !6237, file: !3, line: 321, type: !20)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 321, column: 2)
!6238 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 321, column: 2)
!6239 = !DILocalVariable(name: "__mptr", scope: !6240, file: !3, line: 321, type: !20)
!6240 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 321, column: 2)
!6241 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 321, column: 2)
!6242 = !DILabel(scope: !6228, name: "out", file: !3, line: 345)
!6243 = !DIGlobalVariableExpression(var: !6244, expr: !DIExpression())
!6244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !6245, isLocal: true, isDefinition: true)
!6245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !6246)
!6246 = !{!6247}
!6247 = !DISubrange(count: 21)
!6248 = !DIGlobalVariableExpression(var: !6249, expr: !DIExpression())
!6249 = distinct !DIGlobalVariable(name: "all_stat_sessions", scope: !2, file: !3, line: 41, type: !97, isLocal: true, isDefinition: true)
!6250 = !DIGlobalVariableExpression(var: !6251, expr: !DIExpression())
!6251 = distinct !DIGlobalVariable(scope: null, file: !274, line: 480, type: !6245, isLocal: true, isDefinition: true)
!6252 = !DIGlobalVariableExpression(var: !6253, expr: !DIExpression())
!6253 = distinct !DIGlobalVariable(name: "stat_dir", scope: !2, file: !3, line: 45, type: !1783, isLocal: true, isDefinition: true)
!6254 = !DIGlobalVariableExpression(var: !6255, expr: !DIExpression())
!6255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !6256, isLocal: true, isDefinition: true)
!6256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 88, elements: !6257)
!6257 = !{!6258}
!6258 = !DISubrange(count: 11)
!6259 = !DIGlobalVariableExpression(var: !6260, expr: !DIExpression())
!6260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !6261, isLocal: true, isDefinition: true)
!6261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !6262)
!6262 = !{!6263}
!6263 = !DISubrange(count: 47)
!6264 = !DIGlobalVariableExpression(var: !6265, expr: !DIExpression())
!6265 = distinct !DIGlobalVariable(name: "tracing_stat_fops", scope: !2, file: !3, line: 270, type: !4680, isLocal: true, isDefinition: true)
!6266 = !DIGlobalVariableExpression(var: !6267, expr: !DIExpression())
!6267 = distinct !DIGlobalVariable(name: "trace_stat_seq_ops", scope: !2, file: !3, line: 225, type: !381, isLocal: true, isDefinition: true)
!6268 = !{i32 7, !"Dwarf Version", i32 5}
!6269 = !{i32 2, !"Debug Info Version", i32 3}
!6270 = !{i32 1, !"wchar_size", i32 2}
!6271 = !{i32 8, !"cf-protection-branch", i32 1}
!6272 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6273 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6274 = !{i32 1, !"Code Model", i32 2}
!6275 = !{i32 1, !"override-stack-alignment", i32 8}
!6276 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6277 = !DILocation(line: 308, column: 46, scope: !6228)
!6278 = !DILocation(line: 310, column: 2, scope: !6228)
!6279 = !DILocation(line: 310, column: 23, scope: !6228)
!6280 = !DILocation(line: 310, column: 33, scope: !6228)
!6281 = !DILocation(line: 311, column: 2, scope: !6228)
!6282 = !DILocation(line: 311, column: 6, scope: !6228)
!6283 = !DILocation(line: 313, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 313, column: 6)
!6285 = !DILocation(line: 313, column: 6, scope: !6228)
!6286 = !DILocation(line: 314, column: 3, scope: !6284)
!6287 = !DILocation(line: 316, column: 7, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 316, column: 6)
!6289 = !DILocation(line: 316, column: 14, scope: !6288)
!6290 = !DILocation(line: 316, column: 25, scope: !6288)
!6291 = !DILocation(line: 316, column: 29, scope: !6288)
!6292 = !DILocation(line: 316, column: 36, scope: !6288)
!6293 = !DILocation(line: 316, column: 46, scope: !6288)
!6294 = !DILocation(line: 316, column: 50, scope: !6288)
!6295 = !DILocation(line: 316, column: 57, scope: !6288)
!6296 = !DILocation(line: 316, column: 6, scope: !6228)
!6297 = !DILocation(line: 317, column: 3, scope: !6288)
!6298 = !DILocation(line: 320, column: 2, scope: !6228)
!6299 = !DILocation(line: 321, column: 2, scope: !6237)
!6300 = !DILocation(line: 321, column: 2, scope: !6238)
!6301 = !DILocation(line: 321, column: 2, scope: !6241)
!6302 = !DILocation(line: 322, column: 7, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6304, file: !3, line: 322, column: 7)
!6304 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 321, column: 62)
!6305 = !DILocation(line: 322, column: 13, scope: !6303)
!6306 = !DILocation(line: 322, column: 19, scope: !6303)
!6307 = !DILocation(line: 322, column: 16, scope: !6303)
!6308 = !DILocation(line: 322, column: 7, scope: !6304)
!6309 = !DILocation(line: 323, column: 4, scope: !6303)
!6310 = !DILocation(line: 324, column: 2, scope: !6304)
!6311 = !DILocation(line: 321, column: 2, scope: !6240)
!6312 = distinct !{!6312, !6300, !6313, !6314, !6315}
!6313 = !DILocation(line: 324, column: 2, scope: !6238)
!6314 = !{!"llvm.loop.mustprogress"}
!6315 = !{!"llvm.loop.unroll.disable"}
!6316 = !DILocation(line: 326, column: 6, scope: !6228)
!6317 = !DILocation(line: 328, column: 12, scope: !6228)
!6318 = !DILocation(line: 328, column: 10, scope: !6228)
!6319 = !DILocation(line: 329, column: 7, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 329, column: 6)
!6321 = !DILocation(line: 329, column: 6, scope: !6228)
!6322 = !DILocation(line: 330, column: 3, scope: !6320)
!6323 = !DILocation(line: 332, column: 16, scope: !6228)
!6324 = !DILocation(line: 332, column: 2, scope: !6228)
!6325 = !DILocation(line: 332, column: 11, scope: !6228)
!6326 = !DILocation(line: 332, column: 14, scope: !6228)
!6327 = !DILocation(line: 333, column: 18, scope: !6228)
!6328 = !DILocation(line: 333, column: 27, scope: !6228)
!6329 = !DILocation(line: 333, column: 2, scope: !6228)
!6330 = !DILocation(line: 334, column: 2, scope: !6228)
!6331 = !DILocation(line: 334, column: 2, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 334, column: 2)
!6333 = !DILocation(line: 336, column: 23, scope: !6228)
!6334 = !DILocation(line: 336, column: 8, scope: !6228)
!6335 = !DILocation(line: 336, column: 6, scope: !6228)
!6336 = !DILocation(line: 337, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 337, column: 6)
!6338 = !DILocation(line: 337, column: 6, scope: !6228)
!6339 = !DILocation(line: 338, column: 19, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 337, column: 11)
!6341 = !DILocation(line: 338, column: 3, scope: !6340)
!6342 = !DILocation(line: 339, column: 3, scope: !6340)
!6343 = !DILocation(line: 342, column: 6, scope: !6228)
!6344 = !DILocation(line: 344, column: 17, scope: !6228)
!6345 = !DILocation(line: 344, column: 26, scope: !6228)
!6346 = !DILocation(line: 344, column: 2, scope: !6228)
!6347 = !DILocation(line: 345, column: 2, scope: !6228)
!6348 = !DILocation(line: 346, column: 2, scope: !6228)
!6349 = !DILocation(line: 348, column: 9, scope: !6228)
!6350 = !DILocation(line: 348, column: 2, scope: !6228)
!6351 = !DILocation(line: 349, column: 1, scope: !6228)
!6352 = !DISubprogram(name: "mutex_lock", scope: !360, file: !360, line: 227, type: !6353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6353 = !DISubroutineType(types: !6354)
!6354 = !{null, !6355}
!6355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!6356 = distinct !DISubprogram(name: "kzalloc", scope: !274, file: !274, line: 719, type: !6357, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6359)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!20, !35, !503}
!6359 = !{!6360, !6361}
!6360 = !DILocalVariable(name: "size", arg: 1, scope: !6356, file: !274, line: 719, type: !35)
!6361 = !DILocalVariable(name: "flags", arg: 2, scope: !6356, file: !274, line: 719, type: !503)
!6362 = !DILocation(line: 719, column: 52, scope: !6356)
!6363 = !DILocation(line: 719, column: 64, scope: !6356)
!6364 = !DILocation(line: 721, column: 17, scope: !6356)
!6365 = !DILocation(line: 721, column: 23, scope: !6356)
!6366 = !DILocation(line: 721, column: 29, scope: !6356)
!6367 = !DILocation(line: 721, column: 9, scope: !6356)
!6368 = !DILocation(line: 721, column: 2, scope: !6356)
!6369 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6370, file: !6370, line: 35, type: !6371, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6373)
!6370 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6371 = !DISubroutineType(types: !6372)
!6372 = !{null, !100}
!6373 = !{!6374}
!6374 = !DILocalVariable(name: "list", arg: 1, scope: !6369, file: !6370, line: 35, type: !100)
!6375 = !DILocation(line: 35, column: 53, scope: !6369)
!6376 = !DILocation(line: 37, column: 2, scope: !6369)
!6377 = !DILocation(line: 37, column: 2, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6369, file: !6370, line: 37, column: 2)
!6379 = !DILocation(line: 37, column: 2, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6378, file: !6370, line: 37, column: 2)
!6381 = !DILocation(line: 37, column: 2, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6378, file: !6370, line: 37, column: 2)
!6383 = !DILocation(line: 38, column: 2, scope: !6369)
!6384 = !DILocation(line: 38, column: 2, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6369, file: !6370, line: 38, column: 2)
!6386 = !DILocation(line: 38, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6385, file: !6370, line: 38, column: 2)
!6388 = !DILocation(line: 38, column: 2, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6385, file: !6370, line: 38, column: 2)
!6390 = !DILocation(line: 39, column: 1, scope: !6369)
!6391 = !DISubprogram(name: "__mutex_init", scope: !360, file: !360, line: 121, type: !6392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6392 = !DISubroutineType(types: !6393)
!6393 = !{null, !6355, !16, !6394}
!6394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!6395 = distinct !DISubprogram(name: "init_stat_file", scope: !3, file: !3, line: 293, type: !6396, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6398)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{!22, !317}
!6398 = !{!6399, !6400}
!6399 = !DILocalVariable(name: "session", arg: 1, scope: !6395, file: !3, line: 293, type: !317)
!6400 = !DILocalVariable(name: "ret", scope: !6395, file: !3, line: 295, type: !22)
!6401 = !DILocation(line: 293, column: 48, scope: !6395)
!6402 = !DILocation(line: 295, column: 2, scope: !6395)
!6403 = !DILocation(line: 295, column: 6, scope: !6395)
!6404 = !DILocation(line: 297, column: 7, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 297, column: 6)
!6406 = !DILocation(line: 297, column: 16, scope: !6405)
!6407 = !DILocation(line: 297, column: 26, scope: !6405)
!6408 = !DILocation(line: 297, column: 24, scope: !6405)
!6409 = !DILocation(line: 297, column: 6, scope: !6395)
!6410 = !DILocation(line: 298, column: 10, scope: !6405)
!6411 = !DILocation(line: 298, column: 3, scope: !6405)
!6412 = !DILocation(line: 300, column: 38, scope: !6395)
!6413 = !DILocation(line: 300, column: 47, scope: !6395)
!6414 = !DILocation(line: 300, column: 51, scope: !6395)
!6415 = !DILocation(line: 301, column: 10, scope: !6395)
!6416 = !DILocation(line: 301, column: 20, scope: !6395)
!6417 = !DILocation(line: 300, column: 18, scope: !6395)
!6418 = !DILocation(line: 300, column: 2, scope: !6395)
!6419 = !DILocation(line: 300, column: 11, scope: !6395)
!6420 = !DILocation(line: 300, column: 16, scope: !6395)
!6421 = !DILocation(line: 303, column: 7, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 303, column: 6)
!6423 = !DILocation(line: 303, column: 16, scope: !6422)
!6424 = !DILocation(line: 303, column: 6, scope: !6395)
!6425 = !DILocation(line: 304, column: 3, scope: !6422)
!6426 = !DILocation(line: 305, column: 2, scope: !6395)
!6427 = !DILocation(line: 306, column: 1, scope: !6395)
!6428 = distinct !DISubprogram(name: "destroy_session", scope: !3, file: !3, line: 67, type: !6429, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6431)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{null, !317}
!6431 = !{!6432}
!6432 = !DILocalVariable(name: "session", arg: 1, scope: !6428, file: !3, line: 67, type: !317)
!6433 = !DILocation(line: 67, column: 50, scope: !6428)
!6434 = !DILocation(line: 69, column: 17, scope: !6428)
!6435 = !DILocation(line: 69, column: 26, scope: !6428)
!6436 = !DILocation(line: 69, column: 2, scope: !6428)
!6437 = !DILocation(line: 70, column: 23, scope: !6428)
!6438 = !DILocation(line: 70, column: 2, scope: !6428)
!6439 = !DILocation(line: 71, column: 17, scope: !6428)
!6440 = !DILocation(line: 71, column: 26, scope: !6428)
!6441 = !DILocation(line: 71, column: 2, scope: !6428)
!6442 = !DILocation(line: 72, column: 8, scope: !6428)
!6443 = !DILocation(line: 72, column: 2, scope: !6428)
!6444 = !DILocation(line: 73, column: 1, scope: !6428)
!6445 = distinct !DISubprogram(name: "list_add_tail", scope: !6370, file: !6370, line: 181, type: !6446, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6448)
!6446 = !DISubroutineType(types: !6447)
!6447 = !{null, !100, !100}
!6448 = !{!6449, !6450}
!6449 = !DILocalVariable(name: "new", arg: 1, scope: !6445, file: !6370, line: 181, type: !100)
!6450 = !DILocalVariable(name: "head", arg: 2, scope: !6445, file: !6370, line: 181, type: !100)
!6451 = !DILocation(line: 181, column: 52, scope: !6445)
!6452 = !DILocation(line: 181, column: 75, scope: !6445)
!6453 = !DILocation(line: 183, column: 13, scope: !6445)
!6454 = !DILocation(line: 183, column: 18, scope: !6445)
!6455 = !DILocation(line: 183, column: 24, scope: !6445)
!6456 = !DILocation(line: 183, column: 30, scope: !6445)
!6457 = !DILocation(line: 183, column: 2, scope: !6445)
!6458 = !DILocation(line: 184, column: 1, scope: !6445)
!6459 = !DISubprogram(name: "mutex_unlock", scope: !360, file: !360, line: 246, type: !6353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6460 = distinct !DISubprogram(name: "unregister_stat_tracer", scope: !3, file: !3, line: 351, type: !6461, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6463)
!6461 = !DISubroutineType(types: !6462)
!6462 = !{null, !322}
!6463 = !{!6464, !6465, !6466, !6467, !6470, !6472}
!6464 = !DILocalVariable(name: "trace", arg: 1, scope: !6460, file: !3, line: 351, type: !322)
!6465 = !DILocalVariable(name: "node", scope: !6460, file: !3, line: 353, type: !317)
!6466 = !DILocalVariable(name: "tmp", scope: !6460, file: !3, line: 353, type: !317)
!6467 = !DILocalVariable(name: "__mptr", scope: !6468, file: !3, line: 356, type: !20)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 356, column: 2)
!6469 = distinct !DILexicalBlock(scope: !6460, file: !3, line: 356, column: 2)
!6470 = !DILocalVariable(name: "__mptr", scope: !6471, file: !3, line: 356, type: !20)
!6471 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 356, column: 2)
!6472 = !DILocalVariable(name: "__mptr", scope: !6473, file: !3, line: 356, type: !20)
!6473 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 356, column: 2)
!6474 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 356, column: 2)
!6475 = !DILocation(line: 351, column: 49, scope: !6460)
!6476 = !DILocation(line: 353, column: 2, scope: !6460)
!6477 = !DILocation(line: 353, column: 23, scope: !6460)
!6478 = !DILocation(line: 353, column: 30, scope: !6460)
!6479 = !DILocation(line: 355, column: 2, scope: !6460)
!6480 = !DILocation(line: 356, column: 2, scope: !6468)
!6481 = !DILocation(line: 356, column: 2, scope: !6469)
!6482 = !DILocation(line: 356, column: 2, scope: !6471)
!6483 = !DILocation(line: 356, column: 2, scope: !6474)
!6484 = !DILocation(line: 357, column: 7, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 357, column: 7)
!6486 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 356, column: 72)
!6487 = !DILocation(line: 357, column: 13, scope: !6485)
!6488 = !DILocation(line: 357, column: 19, scope: !6485)
!6489 = !DILocation(line: 357, column: 16, scope: !6485)
!6490 = !DILocation(line: 357, column: 7, scope: !6486)
!6491 = !DILocation(line: 358, column: 14, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 357, column: 26)
!6493 = !DILocation(line: 358, column: 20, scope: !6492)
!6494 = !DILocation(line: 358, column: 4, scope: !6492)
!6495 = !DILocation(line: 359, column: 20, scope: !6492)
!6496 = !DILocation(line: 359, column: 4, scope: !6492)
!6497 = !DILocation(line: 360, column: 4, scope: !6492)
!6498 = !DILocation(line: 362, column: 2, scope: !6486)
!6499 = !DILocation(line: 356, column: 2, scope: !6473)
!6500 = distinct !{!6500, !6481, !6501, !6314, !6315}
!6501 = !DILocation(line: 362, column: 2, scope: !6469)
!6502 = !DILocation(line: 363, column: 2, scope: !6460)
!6503 = !DILocation(line: 364, column: 1, scope: !6460)
!6504 = distinct !DISubprogram(name: "list_del", scope: !6370, file: !6370, line: 227, type: !6371, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6505)
!6505 = !{!6506}
!6506 = !DILocalVariable(name: "entry", arg: 1, scope: !6504, file: !6370, line: 227, type: !100)
!6507 = !DILocation(line: 227, column: 47, scope: !6504)
!6508 = !DILocation(line: 229, column: 19, scope: !6504)
!6509 = !DILocation(line: 229, column: 2, scope: !6504)
!6510 = !DILocation(line: 230, column: 2, scope: !6504)
!6511 = !DILocation(line: 230, column: 9, scope: !6504)
!6512 = !DILocation(line: 230, column: 14, scope: !6504)
!6513 = !DILocation(line: 231, column: 2, scope: !6504)
!6514 = !DILocation(line: 231, column: 9, scope: !6504)
!6515 = !DILocation(line: 231, column: 14, scope: !6504)
!6516 = !DILocation(line: 232, column: 1, scope: !6504)
!6517 = distinct !DISubprogram(name: "kmalloc", scope: !274, file: !274, line: 591, type: !6357, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6518)
!6518 = !{!6519, !6520, !6521}
!6519 = !DILocalVariable(name: "size", arg: 1, scope: !6517, file: !274, line: 591, type: !35)
!6520 = !DILocalVariable(name: "flags", arg: 2, scope: !6517, file: !274, line: 591, type: !503)
!6521 = !DILocalVariable(name: "index", scope: !6522, file: !274, line: 594, type: !7)
!6522 = distinct !DILexicalBlock(scope: !6523, file: !274, line: 593, column: 42)
!6523 = distinct !DILexicalBlock(scope: !6517, file: !274, line: 593, column: 6)
!6524 = !DILocation(line: 591, column: 61, scope: !6517)
!6525 = !DILocation(line: 591, column: 73, scope: !6517)
!6526 = !DILocation(line: 593, column: 27, scope: !6523)
!6527 = !DILocation(line: 593, column: 6, scope: !6523)
!6528 = !DILocation(line: 593, column: 33, scope: !6523)
!6529 = !DILocation(line: 593, column: 36, scope: !6523)
!6530 = !DILocation(line: 593, column: 6, scope: !6517)
!6531 = !DILocation(line: 594, column: 3, scope: !6522)
!6532 = !DILocation(line: 594, column: 16, scope: !6522)
!6533 = !DILocation(line: 596, column: 7, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6522, file: !274, line: 596, column: 7)
!6535 = !DILocation(line: 596, column: 12, scope: !6534)
!6536 = !DILocation(line: 596, column: 7, scope: !6522)
!6537 = !DILocation(line: 597, column: 25, scope: !6534)
!6538 = !DILocation(line: 597, column: 31, scope: !6534)
!6539 = !DILocation(line: 597, column: 11, scope: !6534)
!6540 = !DILocation(line: 597, column: 4, scope: !6534)
!6541 = !DILocation(line: 599, column: 11, scope: !6522)
!6542 = !DILocation(line: 599, column: 9, scope: !6522)
!6543 = !DILocation(line: 601, column: 33, scope: !6522)
!6544 = !DILocation(line: 601, column: 40, scope: !6522)
!6545 = !DILocation(line: 601, column: 20, scope: !6522)
!6546 = !DILocation(line: 601, column: 5, scope: !6522)
!6547 = !DILocation(line: 601, column: 51, scope: !6522)
!6548 = !DILocation(line: 602, column: 5, scope: !6522)
!6549 = !DILocation(line: 602, column: 12, scope: !6522)
!6550 = !DILocation(line: 600, column: 10, scope: !6522)
!6551 = !DILocation(line: 600, column: 3, scope: !6522)
!6552 = !DILocation(line: 603, column: 2, scope: !6523)
!6553 = !DILocation(line: 604, column: 19, scope: !6517)
!6554 = !DILocation(line: 604, column: 25, scope: !6517)
!6555 = !DILocation(line: 604, column: 9, scope: !6517)
!6556 = !DILocation(line: 604, column: 2, scope: !6517)
!6557 = !DILocation(line: 605, column: 1, scope: !6517)
!6558 = !DISubprogram(name: "kmalloc_large", scope: !274, file: !274, line: 531, type: !6357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6559 = distinct !DISubprogram(name: "__kmalloc_index", scope: !274, file: !274, line: 444, type: !6560, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{!7, !35, !1033}
!6562 = !{!6563, !6564}
!6563 = !DILocalVariable(name: "size", arg: 1, scope: !6559, file: !274, line: 444, type: !35)
!6564 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6559, file: !274, line: 445, type: !1033)
!6565 = !DILocation(line: 444, column: 60, scope: !6559)
!6566 = !DILocation(line: 445, column: 16, scope: !6559)
!6567 = !DILocation(line: 447, column: 7, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 447, column: 6)
!6569 = !DILocation(line: 447, column: 6, scope: !6559)
!6570 = !DILocation(line: 448, column: 3, scope: !6568)
!6571 = !DILocation(line: 450, column: 6, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 450, column: 6)
!6573 = !DILocation(line: 450, column: 11, scope: !6572)
!6574 = !DILocation(line: 450, column: 6, scope: !6559)
!6575 = !DILocation(line: 451, column: 3, scope: !6572)
!6576 = !DILocation(line: 453, column: 32, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 453, column: 6)
!6578 = !DILocation(line: 453, column: 37, scope: !6577)
!6579 = !DILocation(line: 453, column: 42, scope: !6577)
!6580 = !DILocation(line: 453, column: 45, scope: !6577)
!6581 = !DILocation(line: 453, column: 50, scope: !6577)
!6582 = !DILocation(line: 453, column: 6, scope: !6559)
!6583 = !DILocation(line: 454, column: 3, scope: !6577)
!6584 = !DILocation(line: 455, column: 32, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 455, column: 6)
!6586 = !DILocation(line: 455, column: 37, scope: !6585)
!6587 = !DILocation(line: 455, column: 43, scope: !6585)
!6588 = !DILocation(line: 455, column: 46, scope: !6585)
!6589 = !DILocation(line: 455, column: 51, scope: !6585)
!6590 = !DILocation(line: 455, column: 6, scope: !6559)
!6591 = !DILocation(line: 456, column: 3, scope: !6585)
!6592 = !DILocation(line: 457, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 457, column: 6)
!6594 = !DILocation(line: 457, column: 11, scope: !6593)
!6595 = !DILocation(line: 457, column: 6, scope: !6559)
!6596 = !DILocation(line: 457, column: 26, scope: !6593)
!6597 = !DILocation(line: 458, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 458, column: 6)
!6599 = !DILocation(line: 458, column: 11, scope: !6598)
!6600 = !DILocation(line: 458, column: 6, scope: !6559)
!6601 = !DILocation(line: 458, column: 26, scope: !6598)
!6602 = !DILocation(line: 459, column: 6, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 459, column: 6)
!6604 = !DILocation(line: 459, column: 11, scope: !6603)
!6605 = !DILocation(line: 459, column: 6, scope: !6559)
!6606 = !DILocation(line: 459, column: 26, scope: !6603)
!6607 = !DILocation(line: 460, column: 6, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 460, column: 6)
!6609 = !DILocation(line: 460, column: 11, scope: !6608)
!6610 = !DILocation(line: 460, column: 6, scope: !6559)
!6611 = !DILocation(line: 460, column: 26, scope: !6608)
!6612 = !DILocation(line: 461, column: 6, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 461, column: 6)
!6614 = !DILocation(line: 461, column: 11, scope: !6613)
!6615 = !DILocation(line: 461, column: 6, scope: !6559)
!6616 = !DILocation(line: 461, column: 26, scope: !6613)
!6617 = !DILocation(line: 462, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 462, column: 6)
!6619 = !DILocation(line: 462, column: 11, scope: !6618)
!6620 = !DILocation(line: 462, column: 6, scope: !6559)
!6621 = !DILocation(line: 462, column: 26, scope: !6618)
!6622 = !DILocation(line: 463, column: 6, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 463, column: 6)
!6624 = !DILocation(line: 463, column: 11, scope: !6623)
!6625 = !DILocation(line: 463, column: 6, scope: !6559)
!6626 = !DILocation(line: 463, column: 26, scope: !6623)
!6627 = !DILocation(line: 464, column: 6, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 464, column: 6)
!6629 = !DILocation(line: 464, column: 11, scope: !6628)
!6630 = !DILocation(line: 464, column: 6, scope: !6559)
!6631 = !DILocation(line: 464, column: 26, scope: !6628)
!6632 = !DILocation(line: 465, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 465, column: 6)
!6634 = !DILocation(line: 465, column: 11, scope: !6633)
!6635 = !DILocation(line: 465, column: 6, scope: !6559)
!6636 = !DILocation(line: 465, column: 26, scope: !6633)
!6637 = !DILocation(line: 466, column: 6, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 466, column: 6)
!6639 = !DILocation(line: 466, column: 11, scope: !6638)
!6640 = !DILocation(line: 466, column: 6, scope: !6559)
!6641 = !DILocation(line: 466, column: 26, scope: !6638)
!6642 = !DILocation(line: 467, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 467, column: 6)
!6644 = !DILocation(line: 467, column: 11, scope: !6643)
!6645 = !DILocation(line: 467, column: 6, scope: !6559)
!6646 = !DILocation(line: 467, column: 26, scope: !6643)
!6647 = !DILocation(line: 468, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 468, column: 6)
!6649 = !DILocation(line: 468, column: 11, scope: !6648)
!6650 = !DILocation(line: 468, column: 6, scope: !6559)
!6651 = !DILocation(line: 468, column: 26, scope: !6648)
!6652 = !DILocation(line: 469, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 469, column: 6)
!6654 = !DILocation(line: 469, column: 11, scope: !6653)
!6655 = !DILocation(line: 469, column: 6, scope: !6559)
!6656 = !DILocation(line: 469, column: 26, scope: !6653)
!6657 = !DILocation(line: 470, column: 6, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 470, column: 6)
!6659 = !DILocation(line: 470, column: 11, scope: !6658)
!6660 = !DILocation(line: 470, column: 6, scope: !6559)
!6661 = !DILocation(line: 470, column: 26, scope: !6658)
!6662 = !DILocation(line: 471, column: 6, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 471, column: 6)
!6664 = !DILocation(line: 471, column: 11, scope: !6663)
!6665 = !DILocation(line: 471, column: 6, scope: !6559)
!6666 = !DILocation(line: 471, column: 26, scope: !6663)
!6667 = !DILocation(line: 472, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 472, column: 6)
!6669 = !DILocation(line: 472, column: 11, scope: !6668)
!6670 = !DILocation(line: 472, column: 6, scope: !6559)
!6671 = !DILocation(line: 472, column: 26, scope: !6668)
!6672 = !DILocation(line: 473, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 473, column: 6)
!6674 = !DILocation(line: 473, column: 11, scope: !6673)
!6675 = !DILocation(line: 473, column: 6, scope: !6559)
!6676 = !DILocation(line: 473, column: 26, scope: !6673)
!6677 = !DILocation(line: 474, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 474, column: 6)
!6679 = !DILocation(line: 474, column: 11, scope: !6678)
!6680 = !DILocation(line: 474, column: 6, scope: !6559)
!6681 = !DILocation(line: 474, column: 27, scope: !6678)
!6682 = !DILocation(line: 475, column: 6, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 475, column: 6)
!6684 = !DILocation(line: 475, column: 11, scope: !6683)
!6685 = !DILocation(line: 475, column: 6, scope: !6559)
!6686 = !DILocation(line: 475, column: 32, scope: !6683)
!6687 = !DILocation(line: 477, column: 50, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6559, file: !274, line: 477, column: 6)
!6689 = !{i8 0, i8 2}
!6690 = !DILocation(line: 477, column: 6, scope: !6559)
!6691 = !DILocation(line: 478, column: 3, scope: !6688)
!6692 = !DILocation(line: 478, column: 3, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6694, file: !274, line: 478, column: 3)
!6694 = distinct !DILexicalBlock(scope: !6688, file: !274, line: 478, column: 3)
!6695 = !{i32 -2141643203}
!6696 = !DILocation(line: 478, column: 3, scope: !6694)
!6697 = !DILocation(line: 480, column: 3, scope: !6688)
!6698 = !DILocation(line: 480, column: 3, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6688, file: !274, line: 480, column: 3)
!6700 = !DILocation(line: 480, column: 3, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6699, file: !274, line: 480, column: 3)
!6702 = !DILocation(line: 480, column: 3, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6699, file: !274, line: 480, column: 3)
!6704 = !{i64 2153324296, i64 2153324325, i64 2153324371, i64 2153324429, i64 2153324483, i64 2153324537, i64 2153324592, i64 2153324623}
!6705 = !DILocation(line: 483, column: 2, scope: !6559)
!6706 = !DILocation(line: 484, column: 1, scope: !6559)
!6707 = !DISubprogram(name: "kmalloc_trace", scope: !274, file: !274, line: 525, type: !6708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6708 = !DISubroutineType(types: !6709)
!6709 = !{!20, !3485, !503, !35}
!6710 = distinct !DISubprogram(name: "kmalloc_type", scope: !274, file: !274, line: 401, type: !6711, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6711 = !DISubroutineType(types: !6712)
!6712 = !{!273, !503, !39}
!6713 = !{!6714, !6715}
!6714 = !DILocalVariable(name: "flags", arg: 1, scope: !6710, file: !274, line: 401, type: !503)
!6715 = !DILocalVariable(name: "caller", arg: 2, scope: !6710, file: !274, line: 401, type: !39)
!6716 = !DILocation(line: 401, column: 67, scope: !6710)
!6717 = !DILocation(line: 401, column: 88, scope: !6710)
!6718 = !DILocation(line: 407, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6710, file: !274, line: 407, column: 6)
!6720 = !DILocation(line: 407, column: 6, scope: !6710)
!6721 = !DILocation(line: 413, column: 3, scope: !6719)
!6722 = !DILocation(line: 423, column: 38, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6710, file: !274, line: 423, column: 6)
!6724 = !DILocation(line: 423, column: 44, scope: !6723)
!6725 = !DILocation(line: 423, column: 6, scope: !6710)
!6726 = !DILocation(line: 424, column: 3, scope: !6723)
!6727 = !DILocation(line: 426, column: 3, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6710, file: !274, line: 425, column: 6)
!6729 = !DILocation(line: 429, column: 1, scope: !6710)
!6730 = !DISubprogram(name: "__kmalloc", scope: !274, file: !274, line: 488, type: !6357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6731 = !DISubprogram(name: "__compiletime_assert_245", scope: !274, file: !274, line: 478, type: !2522, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6732 = distinct !DISubprogram(name: "tracing_stat_init", scope: !3, file: !3, line: 277, type: !2221, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6733)
!6733 = !{!6734}
!6734 = !DILocalVariable(name: "ret", scope: !6732, file: !3, line: 279, type: !22)
!6735 = !DILocation(line: 279, column: 2, scope: !6732)
!6736 = !DILocation(line: 279, column: 6, scope: !6732)
!6737 = !DILocation(line: 281, column: 8, scope: !6732)
!6738 = !DILocation(line: 281, column: 6, scope: !6732)
!6739 = !DILocation(line: 282, column: 6, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6732, file: !3, line: 282, column: 6)
!6741 = !DILocation(line: 282, column: 6, scope: !6732)
!6742 = !DILocation(line: 283, column: 3, scope: !6740)
!6743 = !DILocation(line: 285, column: 13, scope: !6732)
!6744 = !DILocation(line: 285, column: 11, scope: !6732)
!6745 = !DILocation(line: 286, column: 7, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6732, file: !3, line: 286, column: 6)
!6747 = !DILocation(line: 286, column: 6, scope: !6732)
!6748 = !DILocation(line: 287, column: 3, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6750, file: !3, line: 287, column: 3)
!6750 = distinct !DILexicalBlock(scope: !6746, file: !3, line: 286, column: 17)
!6751 = !DILocation(line: 287, column: 3, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6749, file: !3, line: 287, column: 3)
!6753 = !DILocation(line: 288, column: 3, scope: !6750)
!6754 = !DILocation(line: 290, column: 2, scope: !6732)
!6755 = !DILocation(line: 291, column: 1, scope: !6732)
!6756 = !DISubprogram(name: "tracefs_create_file", scope: !2712, file: !2712, line: 93, type: !6757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{!1783, !16, !24, !1783, !20, !4679}
!6759 = !DISubprogram(name: "tracing_init_dentry", scope: !2551, file: !2551, line: 626, type: !2221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6760 = !DISubprogram(name: "tracefs_create_dir", scope: !2712, file: !2712, line: 97, type: !6761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6761 = !DISubroutineType(types: !6762)
!6762 = !{!1783, !16, !1783}
!6763 = !DISubprogram(name: "_printk", scope: !6764, file: !6764, line: 153, type: !6765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6764 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6765 = !DISubroutineType(types: !6766)
!6766 = !{!22, !16, null}
!6767 = distinct !DISubprogram(name: "tracing_stat_open", scope: !3, file: !3, line: 233, type: !4772, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6768)
!6768 = !{!6769, !6770, !6771, !6772, !6773}
!6769 = !DILocalVariable(name: "inode", arg: 1, scope: !6767, file: !3, line: 233, type: !1761)
!6770 = !DILocalVariable(name: "file", arg: 2, scope: !6767, file: !3, line: 233, type: !843)
!6771 = !DILocalVariable(name: "ret", scope: !6767, file: !3, line: 235, type: !22)
!6772 = !DILocalVariable(name: "m", scope: !6767, file: !3, line: 236, type: !346)
!6773 = !DILocalVariable(name: "session", scope: !6767, file: !3, line: 237, type: !317)
!6774 = !DILocation(line: 233, column: 44, scope: !6767)
!6775 = !DILocation(line: 233, column: 64, scope: !6767)
!6776 = !DILocation(line: 235, column: 2, scope: !6767)
!6777 = !DILocation(line: 235, column: 6, scope: !6767)
!6778 = !DILocation(line: 236, column: 2, scope: !6767)
!6779 = !DILocation(line: 236, column: 19, scope: !6767)
!6780 = !DILocation(line: 237, column: 2, scope: !6767)
!6781 = !DILocation(line: 237, column: 23, scope: !6767)
!6782 = !DILocation(line: 237, column: 33, scope: !6767)
!6783 = !DILocation(line: 237, column: 40, scope: !6767)
!6784 = !DILocation(line: 239, column: 8, scope: !6767)
!6785 = !DILocation(line: 239, column: 6, scope: !6767)
!6786 = !DILocation(line: 240, column: 6, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 240, column: 6)
!6788 = !DILocation(line: 240, column: 6, scope: !6767)
!6789 = !DILocation(line: 241, column: 10, scope: !6787)
!6790 = !DILocation(line: 241, column: 3, scope: !6787)
!6791 = !DILocation(line: 243, column: 22, scope: !6767)
!6792 = !DILocation(line: 243, column: 8, scope: !6767)
!6793 = !DILocation(line: 243, column: 6, scope: !6767)
!6794 = !DILocation(line: 244, column: 6, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 244, column: 6)
!6796 = !DILocation(line: 244, column: 6, scope: !6767)
!6797 = !DILocation(line: 245, column: 10, scope: !6795)
!6798 = !DILocation(line: 245, column: 3, scope: !6795)
!6799 = !DILocation(line: 247, column: 17, scope: !6767)
!6800 = !DILocation(line: 247, column: 8, scope: !6767)
!6801 = !DILocation(line: 247, column: 6, scope: !6767)
!6802 = !DILocation(line: 248, column: 6, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 248, column: 6)
!6804 = !DILocation(line: 248, column: 6, scope: !6767)
!6805 = !DILocation(line: 249, column: 22, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 248, column: 11)
!6807 = !DILocation(line: 249, column: 3, scope: !6806)
!6808 = !DILocation(line: 250, column: 10, scope: !6806)
!6809 = !DILocation(line: 250, column: 3, scope: !6806)
!6810 = !DILocation(line: 253, column: 6, scope: !6767)
!6811 = !DILocation(line: 253, column: 12, scope: !6767)
!6812 = !DILocation(line: 253, column: 4, scope: !6767)
!6813 = !DILocation(line: 254, column: 15, scope: !6767)
!6814 = !DILocation(line: 254, column: 2, scope: !6767)
!6815 = !DILocation(line: 254, column: 5, scope: !6767)
!6816 = !DILocation(line: 254, column: 13, scope: !6767)
!6817 = !DILocation(line: 255, column: 9, scope: !6767)
!6818 = !DILocation(line: 255, column: 2, scope: !6767)
!6819 = !DILocation(line: 256, column: 1, scope: !6767)
!6820 = distinct !DISubprogram(name: "tracing_stat_release", scope: !3, file: !3, line: 261, type: !4772, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6821)
!6821 = !{!6822, !6823, !6824}
!6822 = !DILocalVariable(name: "i", arg: 1, scope: !6820, file: !3, line: 261, type: !1761)
!6823 = !DILocalVariable(name: "f", arg: 2, scope: !6820, file: !3, line: 261, type: !843)
!6824 = !DILocalVariable(name: "session", scope: !6820, file: !3, line: 263, type: !317)
!6825 = !DILocation(line: 261, column: 47, scope: !6820)
!6826 = !DILocation(line: 261, column: 63, scope: !6820)
!6827 = !DILocation(line: 263, column: 2, scope: !6820)
!6828 = !DILocation(line: 263, column: 23, scope: !6820)
!6829 = !DILocation(line: 263, column: 33, scope: !6820)
!6830 = !DILocation(line: 263, column: 36, scope: !6820)
!6831 = !DILocation(line: 265, column: 21, scope: !6820)
!6832 = !DILocation(line: 265, column: 2, scope: !6820)
!6833 = !DILocation(line: 267, column: 21, scope: !6820)
!6834 = !DILocation(line: 267, column: 24, scope: !6820)
!6835 = !DILocation(line: 267, column: 9, scope: !6820)
!6836 = !DILocation(line: 268, column: 1, scope: !6820)
!6837 = !DILocation(line: 267, column: 2, scope: !6820)
!6838 = !DISubprogram(name: "security_locked_down", scope: !284, file: !284, line: 488, type: !6839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6839 = !DISubroutineType(types: !6840)
!6840 = !{!22, !283}
!6841 = distinct !DISubprogram(name: "stat_seq_init", scope: !3, file: !3, line: 123, type: !6396, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6842)
!6842 = !{!6843, !6844, !6845, !6847, !6848, !6849, !6850, !6851}
!6843 = !DILocalVariable(name: "session", arg: 1, scope: !6841, file: !3, line: 123, type: !317)
!6844 = !DILocalVariable(name: "ts", scope: !6841, file: !3, line: 125, type: !322)
!6845 = !DILocalVariable(name: "root", scope: !6841, file: !3, line: 126, type: !6846)
!6846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!6847 = !DILocalVariable(name: "stat", scope: !6841, file: !3, line: 127, type: !20)
!6848 = !DILocalVariable(name: "ret", scope: !6841, file: !3, line: 128, type: !22)
!6849 = !DILocalVariable(name: "i", scope: !6841, file: !3, line: 129, type: !22)
!6850 = !DILabel(scope: !6841, name: "exit", file: !3, line: 160)
!6851 = !DILabel(scope: !6841, name: "exit_free_rbtree", file: !3, line: 164)
!6852 = !DILocation(line: 123, column: 47, scope: !6841)
!6853 = !DILocation(line: 125, column: 2, scope: !6841)
!6854 = !DILocation(line: 125, column: 22, scope: !6841)
!6855 = !DILocation(line: 125, column: 27, scope: !6841)
!6856 = !DILocation(line: 125, column: 36, scope: !6841)
!6857 = !DILocation(line: 126, column: 2, scope: !6841)
!6858 = !DILocation(line: 126, column: 18, scope: !6841)
!6859 = !DILocation(line: 126, column: 26, scope: !6841)
!6860 = !DILocation(line: 126, column: 35, scope: !6841)
!6861 = !DILocation(line: 127, column: 2, scope: !6841)
!6862 = !DILocation(line: 127, column: 8, scope: !6841)
!6863 = !DILocation(line: 128, column: 2, scope: !6841)
!6864 = !DILocation(line: 128, column: 6, scope: !6841)
!6865 = !DILocation(line: 129, column: 2, scope: !6841)
!6866 = !DILocation(line: 129, column: 6, scope: !6841)
!6867 = !DILocation(line: 131, column: 14, scope: !6841)
!6868 = !DILocation(line: 131, column: 23, scope: !6841)
!6869 = !DILocation(line: 131, column: 2, scope: !6841)
!6870 = !DILocation(line: 132, column: 23, scope: !6841)
!6871 = !DILocation(line: 132, column: 2, scope: !6841)
!6872 = !DILocation(line: 134, column: 7, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 134, column: 6)
!6874 = !DILocation(line: 134, column: 11, scope: !6873)
!6875 = !DILocation(line: 134, column: 6, scope: !6841)
!6876 = !DILocation(line: 135, column: 3, scope: !6873)
!6877 = !DILocation(line: 135, column: 7, scope: !6873)
!6878 = !DILocation(line: 135, column: 16, scope: !6873)
!6879 = !DILocation(line: 137, column: 9, scope: !6841)
!6880 = !DILocation(line: 137, column: 13, scope: !6841)
!6881 = !DILocation(line: 137, column: 24, scope: !6841)
!6882 = !DILocation(line: 137, column: 7, scope: !6841)
!6883 = !DILocation(line: 138, column: 7, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 138, column: 6)
!6885 = !DILocation(line: 138, column: 6, scope: !6841)
!6886 = !DILocation(line: 139, column: 3, scope: !6884)
!6887 = !DILocation(line: 141, column: 20, scope: !6841)
!6888 = !DILocation(line: 141, column: 26, scope: !6841)
!6889 = !DILocation(line: 141, column: 32, scope: !6841)
!6890 = !DILocation(line: 141, column: 36, scope: !6841)
!6891 = !DILocation(line: 141, column: 8, scope: !6841)
!6892 = !DILocation(line: 141, column: 6, scope: !6841)
!6893 = !DILocation(line: 142, column: 6, scope: !6894)
!6894 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 142, column: 6)
!6895 = !DILocation(line: 142, column: 6, scope: !6841)
!6896 = !DILocation(line: 143, column: 3, scope: !6894)
!6897 = !DILocation(line: 148, column: 9, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 148, column: 2)
!6899 = !DILocation(line: 148, column: 7, scope: !6898)
!6900 = !DILocation(line: 149, column: 10, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6902, file: !3, line: 148, column: 21)
!6902 = distinct !DILexicalBlock(scope: !6898, file: !3, line: 148, column: 2)
!6903 = !DILocation(line: 149, column: 14, scope: !6901)
!6904 = !DILocation(line: 149, column: 24, scope: !6901)
!6905 = !DILocation(line: 149, column: 30, scope: !6901)
!6906 = !DILocation(line: 149, column: 8, scope: !6901)
!6907 = !DILocation(line: 152, column: 8, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6901, file: !3, line: 152, column: 7)
!6909 = !DILocation(line: 152, column: 7, scope: !6901)
!6910 = !DILocation(line: 153, column: 4, scope: !6908)
!6911 = !DILocation(line: 155, column: 21, scope: !6901)
!6912 = !DILocation(line: 155, column: 27, scope: !6901)
!6913 = !DILocation(line: 155, column: 33, scope: !6901)
!6914 = !DILocation(line: 155, column: 37, scope: !6901)
!6915 = !DILocation(line: 155, column: 9, scope: !6901)
!6916 = !DILocation(line: 155, column: 7, scope: !6901)
!6917 = !DILocation(line: 156, column: 7, scope: !6918)
!6918 = distinct !DILexicalBlock(scope: !6901, file: !3, line: 156, column: 7)
!6919 = !DILocation(line: 156, column: 7, scope: !6901)
!6920 = !DILocation(line: 157, column: 4, scope: !6918)
!6921 = !DILocation(line: 158, column: 2, scope: !6901)
!6922 = !DILocation(line: 148, column: 17, scope: !6902)
!6923 = !DILocation(line: 148, column: 2, scope: !6902)
!6924 = distinct !{!6924, !6925, !6926, !6315}
!6925 = !DILocation(line: 148, column: 2, scope: !6898)
!6926 = !DILocation(line: 158, column: 2, scope: !6898)
!6927 = !DILocation(line: 160, column: 1, scope: !6841)
!6928 = !DILocation(line: 161, column: 16, scope: !6841)
!6929 = !DILocation(line: 161, column: 25, scope: !6841)
!6930 = !DILocation(line: 161, column: 2, scope: !6841)
!6931 = !DILocation(line: 162, column: 9, scope: !6841)
!6932 = !DILocation(line: 162, column: 2, scope: !6841)
!6933 = !DILocation(line: 164, column: 1, scope: !6841)
!6934 = !DILocation(line: 165, column: 23, scope: !6841)
!6935 = !DILocation(line: 165, column: 2, scope: !6841)
!6936 = !DILocation(line: 166, column: 16, scope: !6841)
!6937 = !DILocation(line: 166, column: 25, scope: !6841)
!6938 = !DILocation(line: 166, column: 2, scope: !6841)
!6939 = !DILocation(line: 167, column: 9, scope: !6841)
!6940 = !DILocation(line: 167, column: 2, scope: !6841)
!6941 = !DILocation(line: 168, column: 1, scope: !6841)
!6942 = !DISubprogram(name: "seq_open", scope: !348, file: !348, line: 109, type: !6943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6943 = !DISubroutineType(types: !6944)
!6944 = !{!22, !843, !380}
!6945 = distinct !DISubprogram(name: "reset_stat_session", scope: !3, file: !3, line: 60, type: !6429, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6946)
!6946 = !{!6947}
!6947 = !DILocalVariable(name: "session", arg: 1, scope: !6945, file: !3, line: 60, type: !317)
!6948 = !DILocation(line: 60, column: 53, scope: !6945)
!6949 = !DILocation(line: 62, column: 14, scope: !6945)
!6950 = !DILocation(line: 62, column: 23, scope: !6945)
!6951 = !DILocation(line: 62, column: 2, scope: !6945)
!6952 = !DILocation(line: 63, column: 23, scope: !6945)
!6953 = !DILocation(line: 63, column: 2, scope: !6945)
!6954 = !DILocation(line: 64, column: 16, scope: !6945)
!6955 = !DILocation(line: 64, column: 25, scope: !6945)
!6956 = !DILocation(line: 64, column: 2, scope: !6945)
!6957 = !DILocation(line: 65, column: 1, scope: !6945)
!6958 = distinct !DISubprogram(name: "__reset_stat_session", scope: !3, file: !3, line: 47, type: !6429, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6959)
!6959 = !{!6960, !6961, !6962, !6963, !6966, !6968, !6972}
!6960 = !DILocalVariable(name: "session", arg: 1, scope: !6958, file: !3, line: 47, type: !317)
!6961 = !DILocalVariable(name: "snode", scope: !6958, file: !3, line: 49, type: !6220)
!6962 = !DILocalVariable(name: "n", scope: !6958, file: !3, line: 49, type: !6220)
!6963 = !DILocalVariable(name: "____ptr", scope: !6964, file: !3, line: 51, type: !566)
!6964 = distinct !DILexicalBlock(scope: !6965, file: !3, line: 51, column: 2)
!6965 = distinct !DILexicalBlock(scope: !6958, file: !3, line: 51, column: 2)
!6966 = !DILocalVariable(name: "__mptr", scope: !6967, file: !3, line: 51, type: !20)
!6967 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 51, column: 2)
!6968 = !DILocalVariable(name: "____ptr", scope: !6969, file: !3, line: 51, type: !566)
!6969 = distinct !DILexicalBlock(scope: !6970, file: !3, line: 51, column: 2)
!6970 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 51, column: 2)
!6971 = distinct !DILexicalBlock(scope: !6965, file: !3, line: 51, column: 2)
!6972 = !DILocalVariable(name: "__mptr", scope: !6973, file: !3, line: 51, type: !20)
!6973 = distinct !DILexicalBlock(scope: !6969, file: !3, line: 51, column: 2)
!6974 = !DILocation(line: 47, column: 55, scope: !6958)
!6975 = !DILocation(line: 49, column: 2, scope: !6958)
!6976 = !DILocation(line: 49, column: 20, scope: !6958)
!6977 = !DILocation(line: 49, column: 28, scope: !6958)
!6978 = !DILocation(line: 51, column: 2, scope: !6964)
!6979 = !DILocation(line: 51, column: 2, scope: !6967)
!6980 = !DILocation(line: 51, column: 2, scope: !6965)
!6981 = !DILocation(line: 51, column: 2, scope: !6971)
!6982 = !DILocation(line: 51, column: 2, scope: !6969)
!6983 = !DILocation(line: 51, column: 2, scope: !6973)
!6984 = !DILocation(line: 51, column: 2, scope: !6970)
!6985 = !DILocation(line: 0, scope: !6971)
!6986 = !DILocation(line: 52, column: 7, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6988, file: !3, line: 52, column: 7)
!6988 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 51, column: 76)
!6989 = !DILocation(line: 52, column: 16, scope: !6987)
!6990 = !DILocation(line: 52, column: 20, scope: !6987)
!6991 = !DILocation(line: 52, column: 7, scope: !6988)
!6992 = !DILocation(line: 53, column: 4, scope: !6987)
!6993 = !DILocation(line: 53, column: 13, scope: !6987)
!6994 = !DILocation(line: 53, column: 17, scope: !6987)
!6995 = !DILocation(line: 53, column: 30, scope: !6987)
!6996 = !DILocation(line: 53, column: 37, scope: !6987)
!6997 = !DILocation(line: 54, column: 9, scope: !6988)
!6998 = !DILocation(line: 54, column: 3, scope: !6988)
!6999 = !DILocation(line: 55, column: 2, scope: !6988)
!7000 = distinct !{!7000, !6980, !7001, !6314, !6315}
!7001 = !DILocation(line: 55, column: 2, scope: !6965)
!7002 = !DILocation(line: 57, column: 2, scope: !6958)
!7003 = !DILocation(line: 57, column: 11, scope: !6958)
!7004 = !DILocation(line: 57, column: 23, scope: !6958)
!7005 = !DILocation(line: 58, column: 1, scope: !6958)
!7006 = distinct !DISubprogram(name: "dummy_cmp", scope: !3, file: !3, line: 113, type: !338, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7007)
!7007 = !{!7008, !7009}
!7008 = !DILocalVariable(name: "p1", arg: 1, scope: !7006, file: !3, line: 113, type: !340)
!7009 = !DILocalVariable(name: "p2", arg: 2, scope: !7006, file: !3, line: 113, type: !340)
!7010 = !DILocation(line: 113, column: 34, scope: !7006)
!7011 = !DILocation(line: 113, column: 50, scope: !7006)
!7012 = !DILocation(line: 115, column: 2, scope: !7006)
!7013 = distinct !DISubprogram(name: "insert_stat", scope: !3, file: !3, line: 75, type: !7014, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7016)
!7014 = !DISubroutineType(types: !7015)
!7015 = !{!22, !6846, !20, !336}
!7016 = !{!7017, !7018, !7019, !7020, !7022, !7023, !7024, !7026, !7027}
!7017 = !DILocalVariable(name: "root", arg: 1, scope: !7013, file: !3, line: 75, type: !6846)
!7018 = !DILocalVariable(name: "stat", arg: 2, scope: !7013, file: !3, line: 75, type: !20)
!7019 = !DILocalVariable(name: "cmp", arg: 3, scope: !7013, file: !3, line: 75, type: !336)
!7020 = !DILocalVariable(name: "new", scope: !7013, file: !3, line: 77, type: !7021)
!7021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!7022 = !DILocalVariable(name: "parent", scope: !7013, file: !3, line: 77, type: !566)
!7023 = !DILocalVariable(name: "data", scope: !7013, file: !3, line: 78, type: !6220)
!7024 = !DILocalVariable(name: "this", scope: !7025, file: !3, line: 90, type: !6220)
!7025 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 89, column: 15)
!7026 = !DILocalVariable(name: "result", scope: !7025, file: !3, line: 91, type: !22)
!7027 = !DILocalVariable(name: "__mptr", scope: !7028, file: !3, line: 93, type: !20)
!7028 = distinct !DILexicalBlock(scope: !7025, file: !3, line: 93, column: 10)
!7029 = !DILocation(line: 75, column: 40, scope: !7013)
!7030 = !DILocation(line: 75, column: 52, scope: !7013)
!7031 = !DILocation(line: 75, column: 69, scope: !7013)
!7032 = !DILocation(line: 77, column: 2, scope: !7013)
!7033 = !DILocation(line: 77, column: 19, scope: !7013)
!7034 = !DILocation(line: 77, column: 27, scope: !7013)
!7035 = !DILocation(line: 77, column: 33, scope: !7013)
!7036 = !DILocation(line: 77, column: 44, scope: !7013)
!7037 = !DILocation(line: 78, column: 2, scope: !7013)
!7038 = !DILocation(line: 78, column: 20, scope: !7013)
!7039 = !DILocation(line: 80, column: 9, scope: !7013)
!7040 = !DILocation(line: 80, column: 7, scope: !7013)
!7041 = !DILocation(line: 81, column: 7, scope: !7042)
!7042 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 81, column: 6)
!7043 = !DILocation(line: 81, column: 6, scope: !7013)
!7044 = !DILocation(line: 82, column: 3, scope: !7042)
!7045 = !DILocation(line: 83, column: 15, scope: !7013)
!7046 = !DILocation(line: 83, column: 2, scope: !7013)
!7047 = !DILocation(line: 83, column: 8, scope: !7013)
!7048 = !DILocation(line: 83, column: 13, scope: !7013)
!7049 = !DILocation(line: 89, column: 2, scope: !7013)
!7050 = !DILocation(line: 89, column: 10, scope: !7013)
!7051 = !DILocation(line: 89, column: 9, scope: !7013)
!7052 = !DILocation(line: 90, column: 3, scope: !7025)
!7053 = !DILocation(line: 90, column: 21, scope: !7025)
!7054 = !DILocation(line: 91, column: 3, scope: !7025)
!7055 = !DILocation(line: 91, column: 7, scope: !7025)
!7056 = !DILocation(line: 93, column: 10, scope: !7028)
!7057 = !DILocation(line: 93, column: 10, scope: !7025)
!7058 = !DILocation(line: 93, column: 8, scope: !7025)
!7059 = !DILocation(line: 94, column: 12, scope: !7025)
!7060 = !DILocation(line: 94, column: 16, scope: !7025)
!7061 = !DILocation(line: 94, column: 22, scope: !7025)
!7062 = !DILocation(line: 94, column: 28, scope: !7025)
!7063 = !DILocation(line: 94, column: 34, scope: !7025)
!7064 = !DILocation(line: 94, column: 10, scope: !7025)
!7065 = !DILocation(line: 96, column: 13, scope: !7025)
!7066 = !DILocation(line: 96, column: 12, scope: !7025)
!7067 = !DILocation(line: 96, column: 10, scope: !7025)
!7068 = !DILocation(line: 97, column: 7, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7025, file: !3, line: 97, column: 7)
!7070 = !DILocation(line: 97, column: 14, scope: !7069)
!7071 = !DILocation(line: 97, column: 7, scope: !7025)
!7072 = !DILocation(line: 98, column: 14, scope: !7069)
!7073 = !DILocation(line: 98, column: 13, scope: !7069)
!7074 = !DILocation(line: 98, column: 20, scope: !7069)
!7075 = !DILocation(line: 98, column: 8, scope: !7069)
!7076 = !DILocation(line: 98, column: 4, scope: !7069)
!7077 = !DILocation(line: 100, column: 14, scope: !7069)
!7078 = !DILocation(line: 100, column: 13, scope: !7069)
!7079 = !DILocation(line: 100, column: 20, scope: !7069)
!7080 = !DILocation(line: 100, column: 8, scope: !7069)
!7081 = !DILocation(line: 101, column: 2, scope: !7013)
!7082 = distinct !{!7082, !7049, !7081, !6314, !6315}
!7083 = !DILocation(line: 103, column: 16, scope: !7013)
!7084 = !DILocation(line: 103, column: 22, scope: !7013)
!7085 = !DILocation(line: 103, column: 28, scope: !7013)
!7086 = !DILocation(line: 103, column: 36, scope: !7013)
!7087 = !DILocation(line: 103, column: 2, scope: !7013)
!7088 = !DILocation(line: 104, column: 19, scope: !7013)
!7089 = !DILocation(line: 104, column: 25, scope: !7013)
!7090 = !DILocation(line: 104, column: 31, scope: !7013)
!7091 = !DILocation(line: 104, column: 2, scope: !7013)
!7092 = !DILocation(line: 105, column: 2, scope: !7013)
!7093 = !DILocation(line: 106, column: 1, scope: !7013)
!7094 = !DISubprogram(name: "rb_first_postorder", scope: !7095, file: !7095, line: 50, type: !7096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7095 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!7096 = !DISubroutineType(types: !7097)
!7097 = !{!566, !7098}
!7098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7099, size: 64)
!7099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!7100 = !DISubprogram(name: "rb_next_postorder", scope: !7095, file: !7095, line: 51, type: !7101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7101 = !DISubroutineType(types: !7102)
!7102 = !{!566, !7103}
!7103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7104, size: 64)
!7104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!7105 = !DISubprogram(name: "kfree", scope: !274, file: !274, line: 227, type: !7106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7106 = !DISubroutineType(types: !7107)
!7107 = !{null, !340}
!7108 = distinct !DISubprogram(name: "rb_link_node", scope: !7095, file: !7095, line: 59, type: !7109, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7111)
!7109 = !DISubroutineType(types: !7110)
!7110 = !{null, !566, !566, !7021}
!7111 = !{!7112, !7113, !7114}
!7112 = !DILocalVariable(name: "node", arg: 1, scope: !7108, file: !7095, line: 59, type: !566)
!7113 = !DILocalVariable(name: "parent", arg: 2, scope: !7108, file: !7095, line: 59, type: !566)
!7114 = !DILocalVariable(name: "rb_link", arg: 3, scope: !7108, file: !7095, line: 60, type: !7021)
!7115 = !DILocation(line: 59, column: 49, scope: !7108)
!7116 = !DILocation(line: 59, column: 71, scope: !7108)
!7117 = !DILocation(line: 60, column: 22, scope: !7108)
!7118 = !DILocation(line: 62, column: 43, scope: !7108)
!7119 = !DILocation(line: 62, column: 28, scope: !7108)
!7120 = !DILocation(line: 62, column: 2, scope: !7108)
!7121 = !DILocation(line: 62, column: 8, scope: !7108)
!7122 = !DILocation(line: 62, column: 26, scope: !7108)
!7123 = !DILocation(line: 63, column: 18, scope: !7108)
!7124 = !DILocation(line: 63, column: 24, scope: !7108)
!7125 = !DILocation(line: 63, column: 33, scope: !7108)
!7126 = !DILocation(line: 63, column: 2, scope: !7108)
!7127 = !DILocation(line: 63, column: 8, scope: !7108)
!7128 = !DILocation(line: 63, column: 16, scope: !7108)
!7129 = !DILocation(line: 65, column: 13, scope: !7108)
!7130 = !DILocation(line: 65, column: 3, scope: !7108)
!7131 = !DILocation(line: 65, column: 11, scope: !7108)
!7132 = !DILocation(line: 66, column: 1, scope: !7108)
!7133 = !DISubprogram(name: "rb_insert_color", scope: !7095, file: !7095, line: 39, type: !7134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7134 = !DISubroutineType(types: !7135)
!7135 = !{null, !566, !6846}
!7136 = distinct !DISubprogram(name: "stat_seq_start", scope: !3, file: !3, line: 171, type: !386, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7137)
!7137 = !{!7138, !7139, !7140, !7141, !7142, !7143}
!7138 = !DILocalVariable(name: "s", arg: 1, scope: !7136, file: !3, line: 171, type: !346)
!7139 = !DILocalVariable(name: "pos", arg: 2, scope: !7136, file: !3, line: 171, type: !40)
!7140 = !DILocalVariable(name: "session", scope: !7136, file: !3, line: 173, type: !317)
!7141 = !DILocalVariable(name: "node", scope: !7136, file: !3, line: 174, type: !566)
!7142 = !DILocalVariable(name: "n", scope: !7136, file: !3, line: 175, type: !22)
!7143 = !DILocalVariable(name: "i", scope: !7136, file: !3, line: 176, type: !22)
!7144 = !DILocation(line: 171, column: 46, scope: !7136)
!7145 = !DILocation(line: 171, column: 57, scope: !7136)
!7146 = !DILocation(line: 173, column: 2, scope: !7136)
!7147 = !DILocation(line: 173, column: 23, scope: !7136)
!7148 = !DILocation(line: 173, column: 33, scope: !7136)
!7149 = !DILocation(line: 173, column: 36, scope: !7136)
!7150 = !DILocation(line: 174, column: 2, scope: !7136)
!7151 = !DILocation(line: 174, column: 18, scope: !7136)
!7152 = !DILocation(line: 175, column: 2, scope: !7136)
!7153 = !DILocation(line: 175, column: 6, scope: !7136)
!7154 = !DILocation(line: 175, column: 11, scope: !7136)
!7155 = !DILocation(line: 175, column: 10, scope: !7136)
!7156 = !DILocation(line: 176, column: 2, scope: !7136)
!7157 = !DILocation(line: 176, column: 6, scope: !7136)
!7158 = !DILocation(line: 179, column: 14, scope: !7136)
!7159 = !DILocation(line: 179, column: 23, scope: !7136)
!7160 = !DILocation(line: 179, column: 2, scope: !7136)
!7161 = !DILocation(line: 182, column: 6, scope: !7162)
!7162 = distinct !DILexicalBlock(scope: !7136, file: !3, line: 182, column: 6)
!7163 = !DILocation(line: 182, column: 15, scope: !7162)
!7164 = !DILocation(line: 182, column: 19, scope: !7162)
!7165 = !DILocation(line: 182, column: 6, scope: !7136)
!7166 = !DILocation(line: 183, column: 7, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7168, file: !3, line: 183, column: 7)
!7168 = distinct !DILexicalBlock(scope: !7162, file: !3, line: 182, column: 33)
!7169 = !DILocation(line: 183, column: 9, scope: !7167)
!7170 = !DILocation(line: 183, column: 7, scope: !7168)
!7171 = !DILocation(line: 184, column: 4, scope: !7167)
!7172 = !DILocation(line: 185, column: 4, scope: !7168)
!7173 = !DILocation(line: 186, column: 2, scope: !7168)
!7174 = !DILocation(line: 188, column: 19, scope: !7136)
!7175 = !DILocation(line: 188, column: 28, scope: !7136)
!7176 = !DILocation(line: 188, column: 9, scope: !7136)
!7177 = !DILocation(line: 188, column: 7, scope: !7136)
!7178 = !DILocation(line: 189, column: 9, scope: !7179)
!7179 = distinct !DILexicalBlock(scope: !7136, file: !3, line: 189, column: 2)
!7180 = !DILocation(line: 189, column: 7, scope: !7179)
!7181 = !DILocation(line: 189, column: 14, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7179, file: !3, line: 189, column: 2)
!7183 = !DILocation(line: 189, column: 19, scope: !7182)
!7184 = !DILocation(line: 189, column: 22, scope: !7182)
!7185 = !DILocation(line: 189, column: 26, scope: !7182)
!7186 = !DILocation(line: 189, column: 24, scope: !7182)
!7187 = !DILocation(line: 0, scope: !7182)
!7188 = !DILocation(line: 189, column: 2, scope: !7179)
!7189 = !DILocation(line: 190, column: 18, scope: !7182)
!7190 = !DILocation(line: 190, column: 10, scope: !7182)
!7191 = !DILocation(line: 190, column: 8, scope: !7182)
!7192 = !DILocation(line: 190, column: 3, scope: !7182)
!7193 = !DILocation(line: 189, column: 30, scope: !7182)
!7194 = !DILocation(line: 189, column: 2, scope: !7182)
!7195 = distinct !{!7195, !7188, !7196, !6314, !6315}
!7196 = !DILocation(line: 190, column: 22, scope: !7179)
!7197 = !DILocation(line: 192, column: 9, scope: !7136)
!7198 = !DILocation(line: 192, column: 2, scope: !7136)
!7199 = !DILocation(line: 193, column: 1, scope: !7136)
!7200 = distinct !DISubprogram(name: "stat_seq_stop", scope: !3, file: !3, line: 208, type: !390, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7201)
!7201 = !{!7202, !7203, !7204}
!7202 = !DILocalVariable(name: "s", arg: 1, scope: !7200, file: !3, line: 208, type: !346)
!7203 = !DILocalVariable(name: "p", arg: 2, scope: !7200, file: !3, line: 208, type: !20)
!7204 = !DILocalVariable(name: "session", scope: !7200, file: !3, line: 210, type: !317)
!7205 = !DILocation(line: 208, column: 44, scope: !7200)
!7206 = !DILocation(line: 208, column: 53, scope: !7200)
!7207 = !DILocation(line: 210, column: 2, scope: !7200)
!7208 = !DILocation(line: 210, column: 23, scope: !7200)
!7209 = !DILocation(line: 210, column: 33, scope: !7200)
!7210 = !DILocation(line: 210, column: 36, scope: !7200)
!7211 = !DILocation(line: 211, column: 16, scope: !7200)
!7212 = !DILocation(line: 211, column: 25, scope: !7200)
!7213 = !DILocation(line: 211, column: 2, scope: !7200)
!7214 = !DILocation(line: 212, column: 1, scope: !7200)
!7215 = distinct !DISubprogram(name: "stat_seq_next", scope: !3, file: !3, line: 195, type: !394, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7216)
!7216 = !{!7217, !7218, !7219, !7220, !7221}
!7217 = !DILocalVariable(name: "s", arg: 1, scope: !7215, file: !3, line: 195, type: !346)
!7218 = !DILocalVariable(name: "p", arg: 2, scope: !7215, file: !3, line: 195, type: !20)
!7219 = !DILocalVariable(name: "pos", arg: 3, scope: !7215, file: !3, line: 195, type: !40)
!7220 = !DILocalVariable(name: "session", scope: !7215, file: !3, line: 197, type: !317)
!7221 = !DILocalVariable(name: "node", scope: !7215, file: !3, line: 198, type: !566)
!7222 = !DILocation(line: 195, column: 45, scope: !7215)
!7223 = !DILocation(line: 195, column: 54, scope: !7215)
!7224 = !DILocation(line: 195, column: 65, scope: !7215)
!7225 = !DILocation(line: 197, column: 2, scope: !7215)
!7226 = !DILocation(line: 197, column: 23, scope: !7215)
!7227 = !DILocation(line: 197, column: 33, scope: !7215)
!7228 = !DILocation(line: 197, column: 36, scope: !7215)
!7229 = !DILocation(line: 198, column: 2, scope: !7215)
!7230 = !DILocation(line: 198, column: 18, scope: !7215)
!7231 = !DILocation(line: 198, column: 25, scope: !7215)
!7232 = !DILocation(line: 200, column: 4, scope: !7215)
!7233 = !DILocation(line: 200, column: 8, scope: !7215)
!7234 = !DILocation(line: 202, column: 6, scope: !7235)
!7235 = distinct !DILexicalBlock(scope: !7215, file: !3, line: 202, column: 6)
!7236 = !DILocation(line: 202, column: 8, scope: !7235)
!7237 = !DILocation(line: 202, column: 6, scope: !7215)
!7238 = !DILocation(line: 203, column: 20, scope: !7235)
!7239 = !DILocation(line: 203, column: 29, scope: !7235)
!7240 = !DILocation(line: 203, column: 10, scope: !7235)
!7241 = !DILocation(line: 203, column: 3, scope: !7235)
!7242 = !DILocation(line: 205, column: 17, scope: !7215)
!7243 = !DILocation(line: 205, column: 9, scope: !7215)
!7244 = !DILocation(line: 205, column: 2, scope: !7215)
!7245 = !DILocation(line: 206, column: 1, scope: !7215)
!7246 = distinct !DISubprogram(name: "stat_seq_show", scope: !3, file: !3, line: 214, type: !344, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7247)
!7247 = !{!7248, !7249, !7250, !7251, !7252}
!7248 = !DILocalVariable(name: "s", arg: 1, scope: !7246, file: !3, line: 214, type: !346)
!7249 = !DILocalVariable(name: "v", arg: 2, scope: !7246, file: !3, line: 214, type: !20)
!7250 = !DILocalVariable(name: "session", scope: !7246, file: !3, line: 216, type: !317)
!7251 = !DILocalVariable(name: "l", scope: !7246, file: !3, line: 217, type: !6220)
!7252 = !DILocalVariable(name: "__mptr", scope: !7253, file: !3, line: 217, type: !20)
!7253 = distinct !DILexicalBlock(scope: !7246, file: !3, line: 217, column: 24)
!7254 = !DILocation(line: 214, column: 43, scope: !7246)
!7255 = !DILocation(line: 214, column: 52, scope: !7246)
!7256 = !DILocation(line: 216, column: 2, scope: !7246)
!7257 = !DILocation(line: 216, column: 23, scope: !7246)
!7258 = !DILocation(line: 216, column: 33, scope: !7246)
!7259 = !DILocation(line: 216, column: 36, scope: !7246)
!7260 = !DILocation(line: 217, column: 2, scope: !7246)
!7261 = !DILocation(line: 217, column: 20, scope: !7246)
!7262 = !DILocation(line: 217, column: 24, scope: !7253)
!7263 = !DILocation(line: 217, column: 24, scope: !7246)
!7264 = !DILocation(line: 219, column: 6, scope: !7265)
!7265 = distinct !DILexicalBlock(scope: !7246, file: !3, line: 219, column: 6)
!7266 = !DILocation(line: 219, column: 8, scope: !7265)
!7267 = !DILocation(line: 219, column: 6, scope: !7246)
!7268 = !DILocation(line: 220, column: 10, scope: !7265)
!7269 = !DILocation(line: 220, column: 19, scope: !7265)
!7270 = !DILocation(line: 220, column: 23, scope: !7265)
!7271 = !DILocation(line: 220, column: 36, scope: !7265)
!7272 = !DILocation(line: 220, column: 3, scope: !7265)
!7273 = !DILocation(line: 222, column: 9, scope: !7246)
!7274 = !DILocation(line: 222, column: 18, scope: !7246)
!7275 = !DILocation(line: 222, column: 22, scope: !7246)
!7276 = !DILocation(line: 222, column: 32, scope: !7246)
!7277 = !DILocation(line: 222, column: 35, scope: !7246)
!7278 = !DILocation(line: 222, column: 38, scope: !7246)
!7279 = !DILocation(line: 222, column: 2, scope: !7246)
!7280 = !DILocation(line: 223, column: 1, scope: !7246)
!7281 = !DISubprogram(name: "rb_first", scope: !7095, file: !7095, line: 46, type: !7096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7282 = !DISubprogram(name: "rb_next", scope: !7095, file: !7095, line: 44, type: !7101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7283 = !DISubprogram(name: "seq_release", scope: !348, file: !348, line: 113, type: !4772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7284 = !DISubprogram(name: "tracefs_remove", scope: !2712, file: !2712, line: 99, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7285 = distinct !DISubprogram(name: "mutex_destroy", scope: !360, file: !360, line: 92, type: !6353, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7286)
!7286 = !{!7287}
!7287 = !DILocalVariable(name: "lock", arg: 1, scope: !7285, file: !360, line: 92, type: !6355)
!7288 = !DILocation(line: 92, column: 48, scope: !7285)
!7289 = !DILocation(line: 92, column: 55, scope: !7285)
!7290 = distinct !DISubprogram(name: "__list_add", scope: !6370, file: !6370, line: 146, type: !7291, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7293)
!7291 = !DISubroutineType(types: !7292)
!7292 = !{null, !100, !100, !100}
!7293 = !{!7294, !7295, !7296}
!7294 = !DILocalVariable(name: "new", arg: 1, scope: !7290, file: !6370, line: 146, type: !100)
!7295 = !DILocalVariable(name: "prev", arg: 2, scope: !7290, file: !6370, line: 147, type: !100)
!7296 = !DILocalVariable(name: "next", arg: 3, scope: !7290, file: !6370, line: 148, type: !100)
!7297 = !DILocation(line: 146, column: 49, scope: !7290)
!7298 = !DILocation(line: 147, column: 28, scope: !7290)
!7299 = !DILocation(line: 148, column: 28, scope: !7290)
!7300 = !DILocation(line: 150, column: 24, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7290, file: !6370, line: 150, column: 6)
!7302 = !DILocation(line: 150, column: 29, scope: !7301)
!7303 = !DILocation(line: 150, column: 35, scope: !7301)
!7304 = !DILocation(line: 150, column: 7, scope: !7301)
!7305 = !DILocation(line: 150, column: 6, scope: !7290)
!7306 = !DILocation(line: 151, column: 3, scope: !7301)
!7307 = !DILocation(line: 153, column: 15, scope: !7290)
!7308 = !DILocation(line: 153, column: 2, scope: !7290)
!7309 = !DILocation(line: 153, column: 8, scope: !7290)
!7310 = !DILocation(line: 153, column: 13, scope: !7290)
!7311 = !DILocation(line: 154, column: 14, scope: !7290)
!7312 = !DILocation(line: 154, column: 2, scope: !7290)
!7313 = !DILocation(line: 154, column: 7, scope: !7290)
!7314 = !DILocation(line: 154, column: 12, scope: !7290)
!7315 = !DILocation(line: 155, column: 14, scope: !7290)
!7316 = !DILocation(line: 155, column: 2, scope: !7290)
!7317 = !DILocation(line: 155, column: 7, scope: !7290)
!7318 = !DILocation(line: 155, column: 12, scope: !7290)
!7319 = !DILocation(line: 156, column: 2, scope: !7290)
!7320 = !DILocation(line: 156, column: 2, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7290, file: !6370, line: 156, column: 2)
!7322 = !DILocation(line: 156, column: 2, scope: !7323)
!7323 = distinct !DILexicalBlock(scope: !7321, file: !6370, line: 156, column: 2)
!7324 = !DILocation(line: 156, column: 2, scope: !7325)
!7325 = distinct !DILexicalBlock(scope: !7321, file: !6370, line: 156, column: 2)
!7326 = !DILocation(line: 157, column: 1, scope: !7290)
!7327 = distinct !DISubprogram(name: "__list_add_valid", scope: !6370, file: !6370, line: 128, type: !7328, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7330)
!7328 = !DISubroutineType(types: !7329)
!7329 = !{!1033, !100, !100, !100}
!7330 = !{!7331, !7332, !7333}
!7331 = !DILocalVariable(name: "new", arg: 1, scope: !7327, file: !6370, line: 128, type: !100)
!7332 = !DILocalVariable(name: "prev", arg: 2, scope: !7327, file: !6370, line: 129, type: !100)
!7333 = !DILocalVariable(name: "next", arg: 3, scope: !7327, file: !6370, line: 130, type: !100)
!7334 = !DILocation(line: 128, column: 55, scope: !7327)
!7335 = !DILocation(line: 129, column: 23, scope: !7327)
!7336 = !DILocation(line: 130, column: 23, scope: !7327)
!7337 = !DILocation(line: 132, column: 2, scope: !7327)
!7338 = distinct !DISubprogram(name: "__list_del_entry", scope: !6370, file: !6370, line: 213, type: !6371, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7339)
!7339 = !{!7340}
!7340 = !DILocalVariable(name: "entry", arg: 1, scope: !7338, file: !6370, line: 213, type: !100)
!7341 = !DILocation(line: 213, column: 55, scope: !7338)
!7342 = !DILocation(line: 215, column: 30, scope: !7343)
!7343 = distinct !DILexicalBlock(scope: !7338, file: !6370, line: 215, column: 6)
!7344 = !DILocation(line: 215, column: 7, scope: !7343)
!7345 = !DILocation(line: 215, column: 6, scope: !7338)
!7346 = !DILocation(line: 216, column: 3, scope: !7343)
!7347 = !DILocation(line: 218, column: 13, scope: !7338)
!7348 = !DILocation(line: 218, column: 20, scope: !7338)
!7349 = !DILocation(line: 218, column: 26, scope: !7338)
!7350 = !DILocation(line: 218, column: 33, scope: !7338)
!7351 = !DILocation(line: 218, column: 2, scope: !7338)
!7352 = !DILocation(line: 219, column: 1, scope: !7338)
!7353 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6370, file: !6370, line: 134, type: !7354, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7356)
!7354 = !DISubroutineType(types: !7355)
!7355 = !{!1033, !100}
!7356 = !{!7357}
!7357 = !DILocalVariable(name: "entry", arg: 1, scope: !7353, file: !6370, line: 134, type: !100)
!7358 = !DILocation(line: 134, column: 61, scope: !7353)
!7359 = !DILocation(line: 136, column: 2, scope: !7353)
!7360 = distinct !DISubprogram(name: "__list_del", scope: !6370, file: !6370, line: 193, type: !6446, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7361)
!7361 = !{!7362, !7363}
!7362 = !DILocalVariable(name: "prev", arg: 1, scope: !7360, file: !6370, line: 193, type: !100)
!7363 = !DILocalVariable(name: "next", arg: 2, scope: !7360, file: !6370, line: 193, type: !100)
!7364 = !DILocation(line: 193, column: 50, scope: !7360)
!7365 = !DILocation(line: 193, column: 75, scope: !7360)
!7366 = !DILocation(line: 195, column: 15, scope: !7360)
!7367 = !DILocation(line: 195, column: 2, scope: !7360)
!7368 = !DILocation(line: 195, column: 8, scope: !7360)
!7369 = !DILocation(line: 195, column: 13, scope: !7360)
!7370 = !DILocation(line: 196, column: 2, scope: !7360)
!7371 = !DILocation(line: 196, column: 2, scope: !7372)
!7372 = distinct !DILexicalBlock(scope: !7360, file: !6370, line: 196, column: 2)
!7373 = !DILocation(line: 196, column: 2, scope: !7374)
!7374 = distinct !DILexicalBlock(scope: !7372, file: !6370, line: 196, column: 2)
!7375 = !DILocation(line: 196, column: 2, scope: !7376)
!7376 = distinct !DILexicalBlock(scope: !7372, file: !6370, line: 196, column: 2)
!7377 = !DILocation(line: 197, column: 1, scope: !7360)
