; ModuleID = 'drivers/tty/vt/vc_screen.c'
source_filename = "drivers/tty/vt/vc_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.vcs_poll_data = type { %struct.notifier_block, i32, i32, %struct.wait_queue_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, ptr, %struct.anon.14, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.13, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%union.anon.13 = type { ptr }
%struct.llist_head = type { ptr }
%struct.anon.14 = type { %union.anon.15, [0 x i8] }
%union.anon.15 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.22 = type { ptr }
%struct.anon.23 = type { i16 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.vt_notifier_param = type { ptr, i32 }

@vc_class = internal global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"vcs%u\00", align 1, !dbg !5251
@.str.1 = private unnamed_addr constant [7 x i8] c"vcsu%u\00", align 1, !dbg !5253
@.str.2 = private unnamed_addr constant [7 x i8] c"vcsa%u\00", align 1, !dbg !5256
@.str.3 = private unnamed_addr constant [4 x i8] c"vcs\00", align 1, !dbg !5258
@vcs_fops = internal constant %struct.file_operations { ptr null, ptr @vcs_lseek, ptr @vcs_read, ptr @vcs_write, ptr null, ptr null, ptr null, ptr null, ptr @vcs_poll, ptr null, ptr null, ptr null, i64 0, ptr @vcs_open, ptr null, ptr @vcs_release, ptr null, ptr @vcs_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5275
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to get major %d for vcs device\00", align 1, !dbg !5260
@.str.5 = private unnamed_addr constant [3 x i8] c"vc\00", align 1, !dbg !5265
@.str.6 = private unnamed_addr constant [5 x i8] c"vcsu\00", align 1, !dbg !5268
@.str.7 = private unnamed_addr constant [5 x i8] c"vcsa\00", align 1, !dbg !5273
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"drivers/tty/vt/vc_screen.c\00", align 1, !dbg !5277
@fg_console = external dso_local global i32, align 4
@vc_cons = external dso_local global [63 x %struct.vc], align 16
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5282
@vcs_poll_data_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5288
@.str.10 = private unnamed_addr constant [13 x i8] c"&poll->waitq\00", align 1, !dbg !5297
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5302

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vcs_make_sysfs(i32 noundef %index) #0 align 16 !dbg !5317 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  %0 = load ptr, ptr @vc_class, align 8, !dbg !5321
  %1 = load i32, ptr %index.addr, align 4, !dbg !5322
  %add = add i32 %1, 1, !dbg !5322
  %or = or i32 7340032, %add, !dbg !5322
  %2 = load i32, ptr %index.addr, align 4, !dbg !5323
  %add1 = add i32 %2, 1, !dbg !5324
  %call = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %0, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef @.str, i32 noundef %add1) #17, !dbg !5325
  %3 = load ptr, ptr @vc_class, align 8, !dbg !5326
  %4 = load i32, ptr %index.addr, align 4, !dbg !5327
  %add2 = add i32 %4, 65, !dbg !5327
  %or3 = or i32 7340032, %add2, !dbg !5327
  %5 = load i32, ptr %index.addr, align 4, !dbg !5328
  %add4 = add i32 %5, 1, !dbg !5329
  %call5 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %3, ptr noundef null, i32 noundef %or3, ptr noundef null, ptr noundef @.str.1, i32 noundef %add4) #17, !dbg !5330
  %6 = load ptr, ptr @vc_class, align 8, !dbg !5331
  %7 = load i32, ptr %index.addr, align 4, !dbg !5332
  %add6 = add i32 %7, 129, !dbg !5332
  %or7 = or i32 7340032, %add6, !dbg !5332
  %8 = load i32, ptr %index.addr, align 4, !dbg !5333
  %add8 = add i32 %8, 1, !dbg !5334
  %call9 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %6, ptr noundef null, i32 noundef %or7, ptr noundef null, ptr noundef @.str.2, i32 noundef %add8) #17, !dbg !5335
  ret void, !dbg !5336
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5337 dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vcs_remove_sysfs(i32 noundef %index) #0 align 16 !dbg !5340 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load ptr, ptr @vc_class, align 8, !dbg !5344
  %1 = load i32, ptr %index.addr, align 4, !dbg !5345
  %add = add i32 %1, 1, !dbg !5345
  %or = or i32 7340032, %add, !dbg !5345
  call void @device_destroy(ptr noundef %0, i32 noundef %or) #17, !dbg !5346
  %2 = load ptr, ptr @vc_class, align 8, !dbg !5347
  %3 = load i32, ptr %index.addr, align 4, !dbg !5348
  %add1 = add i32 %3, 65, !dbg !5348
  %or2 = or i32 7340032, %add1, !dbg !5348
  call void @device_destroy(ptr noundef %2, i32 noundef %or2) #17, !dbg !5349
  %4 = load ptr, ptr @vc_class, align 8, !dbg !5350
  %5 = load i32, ptr %index.addr, align 4, !dbg !5351
  %add3 = add i32 %5, 129, !dbg !5351
  %or4 = or i32 7340032, %add3, !dbg !5351
  call void @device_destroy(ptr noundef %4, i32 noundef %or4) #17, !dbg !5352
  ret void, !dbg !5353
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5354 dso_local void @device_destroy(ptr noundef, i32 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @vcs_init() #3 section ".init.text" align 16 !dbg !5357 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5359, metadata !DIExpression()), !dbg !5361
  %call = call i32 @register_chrdev(i32 noundef 7, ptr noundef @.str.3, ptr noundef @vcs_fops) #17, !dbg !5362
  %tobool = icmp ne i32 %call, 0, !dbg !5362
  br i1 %tobool, label %if.then, label %if.end, !dbg !5364

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.4, i32 noundef 7) #19, !dbg !5365
  unreachable, !dbg !5365

if.end:                                           ; preds = %entry
  %call1 = call ptr @class_create(ptr noundef @.str.5) #17, !dbg !5366
  store ptr %call1, ptr @vc_class, align 8, !dbg !5367
  %0 = load ptr, ptr @vc_class, align 8, !dbg !5368
  %call2 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %0, ptr noundef null, i32 noundef 7340032, ptr noundef null, ptr noundef @.str.3) #17, !dbg !5369
  %1 = load ptr, ptr @vc_class, align 8, !dbg !5370
  %call3 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %1, ptr noundef null, i32 noundef 7340096, ptr noundef null, ptr noundef @.str.6) #17, !dbg !5371
  %2 = load ptr, ptr @vc_class, align 8, !dbg !5372
  %call4 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %2, ptr noundef null, i32 noundef 7340160, ptr noundef null, ptr noundef @.str.7) #17, !dbg !5373
  store i32 0, ptr %i, align 4, !dbg !5374
  br label %for.cond, !dbg !5376

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !5377
  %cmp = icmp ult i32 %3, 1, !dbg !5379
  br i1 %cmp, label %for.body, label %for.end, !dbg !5380

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !5381
  call void @vcs_make_sysfs(i32 noundef %4) #17, !dbg !5382
  br label %for.inc, !dbg !5382

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !5383
  %inc = add i32 %5, 1, !dbg !5383
  store i32 %inc, ptr %i, align 4, !dbg !5383
  br label %for.cond, !dbg !5384, !llvm.loop !5385

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5389
  ret i32 0, !dbg !5390
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @register_chrdev(i32 noundef %major, ptr noundef %name, ptr noundef %fops) #5 align 16 !dbg !5391 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5395, metadata !DIExpression()), !dbg !5398
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5396, metadata !DIExpression()), !dbg !5399
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !5397, metadata !DIExpression()), !dbg !5400
  %0 = load i32, ptr %major.addr, align 4, !dbg !5401
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5402
  %2 = load ptr, ptr %fops.addr, align 8, !dbg !5403
  %call = call i32 @__register_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef %1, ptr noundef %2) #17, !dbg !5404
  ret i32 %call, !dbg !5405
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !5406 dso_local void @panic(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5410 dso_local ptr @class_create(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5413 dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vcs_lseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 16 !dbg !5416 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %orig.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5418, metadata !DIExpression()), !dbg !5424
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5419, metadata !DIExpression()), !dbg !5425
  store i32 %orig, ptr %orig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !5420, metadata !DIExpression()), !dbg !5426
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5421, metadata !DIExpression()), !dbg !5428
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5429
  %call = call ptr @file_inode(ptr noundef %0) #17, !dbg !5430
  store ptr %call, ptr %inode, align 8, !dbg !5428
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #18, !dbg !5431
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5422, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #18, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5423, metadata !DIExpression()), !dbg !5434
  call void @console_lock() #17, !dbg !5435
  %1 = load ptr, ptr %inode, align 8, !dbg !5436
  %call1 = call ptr @vcs_vc(ptr noundef %1, ptr noundef null) #17, !dbg !5437
  store ptr %call1, ptr %vc, align 8, !dbg !5438
  %2 = load ptr, ptr %vc, align 8, !dbg !5439
  %tobool = icmp ne ptr %2, null, !dbg !5439
  br i1 %tobool, label %if.end, label %if.then, !dbg !5441

if.then:                                          ; preds = %entry
  call void @console_unlock() #17, !dbg !5442
  store i64 -6, ptr %retval, align 8, !dbg !5444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5444

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vc, align 8, !dbg !5445
  %4 = load ptr, ptr %inode, align 8, !dbg !5446
  %call2 = call i32 @iminor(ptr noundef %4) #17, !dbg !5446
  %and = and i32 %call2, 128, !dbg !5446
  %tobool3 = icmp ne i32 %and, 0, !dbg !5446
  %5 = load ptr, ptr %inode, align 8, !dbg !5447
  %call4 = call i32 @iminor(ptr noundef %5) #17, !dbg !5447
  %and5 = and i32 %call4, 64, !dbg !5447
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5447
  %call7 = call i32 @vcs_size(ptr noundef %3, i1 noundef zeroext %tobool3, i1 noundef zeroext %tobool6) #17, !dbg !5448
  store i32 %call7, ptr %size, align 4, !dbg !5449
  call void @console_unlock() #17, !dbg !5450
  %6 = load i32, ptr %size, align 4, !dbg !5451
  %cmp = icmp slt i32 %6, 0, !dbg !5453
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5454

if.then8:                                         ; preds = %if.end
  %7 = load i32, ptr %size, align 4, !dbg !5455
  %conv = sext i32 %7 to i64, !dbg !5455
  store i64 %conv, ptr %retval, align 8, !dbg !5456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5456

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %file.addr, align 8, !dbg !5457
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5458
  %10 = load i32, ptr %orig.addr, align 4, !dbg !5459
  %11 = load i32, ptr %size, align 4, !dbg !5460
  %conv10 = sext i32 %11 to i64, !dbg !5460
  %call11 = call i64 @fixed_size_llseek(ptr noundef %8, i64 noundef %9, i32 noundef %10, i64 noundef %conv10) #17, !dbg !5461
  store i64 %call11, ptr %retval, align 8, !dbg !5462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5462

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #18, !dbg !5463
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #18, !dbg !5463
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !5463
  %12 = load i64, ptr %retval, align 8, !dbg !5463
  ret i64 %12, !dbg !5463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vcs_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5464 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %poll = alloca ptr, align 8
  %read = alloca i32, align 4
  %ret = alloca i64, align 8
  %con_buf = alloca ptr, align 8
  %pos = alloca i64, align 8
  %viewed = alloca i8, align 1
  %attr = alloca i8, align 1
  %uni_mode = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %this_round = alloca i32, align 4
  %skip = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5466, metadata !DIExpression()), !dbg !5485
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5467, metadata !DIExpression()), !dbg !5486
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5468, metadata !DIExpression()), !dbg !5487
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5469, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5470, metadata !DIExpression()), !dbg !5490
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5491
  %call = call ptr @file_inode(ptr noundef %0) #17, !dbg !5492
  store ptr %call, ptr %inode, align 8, !dbg !5490
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #18, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5471, metadata !DIExpression()), !dbg !5494
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #18, !dbg !5495
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !5472, metadata !DIExpression()), !dbg !5496
  call void @llvm.lifetime.start.p0(i64 4, ptr %read) #18, !dbg !5497
  call void @llvm.dbg.declare(metadata ptr %read, metadata !5473, metadata !DIExpression()), !dbg !5498
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5474, metadata !DIExpression()), !dbg !5500
  call void @llvm.lifetime.start.p0(i64 8, ptr %con_buf) #18, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %con_buf, metadata !5475, metadata !DIExpression()), !dbg !5502
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #18, !dbg !5503
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5476, metadata !DIExpression()), !dbg !5504
  call void @llvm.lifetime.start.p0(i64 1, ptr %viewed) #18, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %viewed, metadata !5477, metadata !DIExpression()), !dbg !5506
  call void @llvm.lifetime.start.p0(i64 1, ptr %attr) #18, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5478, metadata !DIExpression()), !dbg !5507
  call void @llvm.lifetime.start.p0(i64 1, ptr %uni_mode) #18, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %uni_mode, metadata !5479, metadata !DIExpression()), !dbg !5508
  %call1 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #17, !dbg !5509
  %1 = inttoptr i64 %call1 to ptr, !dbg !5510
  store ptr %1, ptr %con_buf, align 8, !dbg !5511
  %2 = load ptr, ptr %con_buf, align 8, !dbg !5512
  %tobool = icmp ne ptr %2, null, !dbg !5512
  br i1 %tobool, label %if.end, label %if.then, !dbg !5514

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !5515

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ppos.addr, align 8, !dbg !5516
  %4 = load i64, ptr %3, align 8, !dbg !5517
  store i64 %4, ptr %pos, align 8, !dbg !5518
  call void @console_lock() #17, !dbg !5519
  %5 = load ptr, ptr %inode, align 8, !dbg !5520
  %call2 = call i32 @iminor(ptr noundef %5) #17, !dbg !5520
  %and = and i32 %call2, 64, !dbg !5520
  %tobool3 = icmp ne i32 %and, 0, !dbg !5520
  %frombool = zext i1 %tobool3 to i8, !dbg !5521
  store i8 %frombool, ptr %uni_mode, align 1, !dbg !5521
  %6 = load ptr, ptr %inode, align 8, !dbg !5522
  %call4 = call i32 @iminor(ptr noundef %6) #17, !dbg !5522
  %and5 = and i32 %call4, 128, !dbg !5522
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5522
  %frombool7 = zext i1 %tobool6 to i8, !dbg !5523
  store i8 %frombool7, ptr %attr, align 1, !dbg !5523
  store i64 -22, ptr %ret, align 8, !dbg !5524
  %7 = load i64, ptr %pos, align 8, !dbg !5525
  %cmp = icmp slt i64 %7, 0, !dbg !5527
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5528

if.then8:                                         ; preds = %if.end
  br label %unlock_out, !dbg !5529

if.end9:                                          ; preds = %if.end
  %8 = load i8, ptr %uni_mode, align 1, !dbg !5530, !range !5532, !noundef !969
  %tobool10 = trunc i8 %8 to i1, !dbg !5530
  br i1 %tobool10, label %land.lhs.true, label %if.end14, !dbg !5533

land.lhs.true:                                    ; preds = %if.end9
  %9 = load i64, ptr %pos, align 8, !dbg !5534
  %10 = load i64, ptr %count.addr, align 8, !dbg !5535
  %or = or i64 %9, %10, !dbg !5536
  %and11 = and i64 %or, 3, !dbg !5537
  %tobool12 = icmp ne i64 %and11, 0, !dbg !5537
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5538

if.then13:                                        ; preds = %land.lhs.true
  br label %unlock_out, !dbg !5539

if.end14:                                         ; preds = %land.lhs.true, %if.end9
  %11 = load ptr, ptr %file.addr, align 8, !dbg !5540
  %private_data = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 15, !dbg !5541
  %12 = load ptr, ptr %private_data, align 8, !dbg !5541
  store ptr %12, ptr %poll, align 8, !dbg !5542
  %13 = load i64, ptr %count.addr, align 8, !dbg !5543
  %tobool15 = icmp ne i64 %13, 0, !dbg !5543
  br i1 %tobool15, label %land.lhs.true16, label %if.end19, !dbg !5545

land.lhs.true16:                                  ; preds = %if.end14
  %14 = load ptr, ptr %poll, align 8, !dbg !5546
  %tobool17 = icmp ne ptr %14, null, !dbg !5546
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5547

if.then18:                                        ; preds = %land.lhs.true16
  %15 = load ptr, ptr %poll, align 8, !dbg !5548
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %15, i32 0, i32 2, !dbg !5549
  store i32 0, ptr %event, align 4, !dbg !5550
  br label %if.end19, !dbg !5548

if.end19:                                         ; preds = %if.then18, %land.lhs.true16, %if.end14
  store i32 0, ptr %read, align 4, !dbg !5551
  store i64 0, ptr %ret, align 8, !dbg !5552
  br label %while.cond, !dbg !5553

while.cond:                                       ; preds = %cleanup.cont, %if.end19
  %16 = load i64, ptr %count.addr, align 8, !dbg !5554
  %tobool20 = icmp ne i64 %16, 0, !dbg !5553
  br i1 %tobool20, label %while.body, label %while.end, !dbg !5553

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_round) #18, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %this_round, metadata !5480, metadata !DIExpression()), !dbg !5556
  call void @llvm.lifetime.start.p0(i64 4, ptr %skip) #18, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %skip, metadata !5482, metadata !DIExpression()), !dbg !5557
  store i32 0, ptr %skip, align 4, !dbg !5557
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #18, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5483, metadata !DIExpression()), !dbg !5559
  %17 = load ptr, ptr %inode, align 8, !dbg !5560
  %call21 = call ptr @vcs_vc(ptr noundef %17, ptr noundef %viewed) #17, !dbg !5561
  store ptr %call21, ptr %vc, align 8, !dbg !5562
  %18 = load ptr, ptr %vc, align 8, !dbg !5563
  %tobool22 = icmp ne ptr %18, null, !dbg !5563
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !5565

if.then23:                                        ; preds = %while.body
  store i64 -6, ptr %ret, align 8, !dbg !5566
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5568

if.end24:                                         ; preds = %while.body
  %19 = load ptr, ptr %vc, align 8, !dbg !5569
  %20 = load i8, ptr %attr, align 1, !dbg !5570, !range !5532, !noundef !969
  %tobool25 = trunc i8 %20 to i1, !dbg !5570
  %21 = load i8, ptr %uni_mode, align 1, !dbg !5571, !range !5532, !noundef !969
  %tobool26 = trunc i8 %21 to i1, !dbg !5571
  %call27 = call i32 @vcs_size(ptr noundef %19, i1 noundef zeroext %tobool25, i1 noundef zeroext %tobool26) #17, !dbg !5572
  store i32 %call27, ptr %size, align 4, !dbg !5573
  %22 = load i32, ptr %size, align 4, !dbg !5574
  %cmp28 = icmp slt i32 %22, 0, !dbg !5576
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !5577

if.then29:                                        ; preds = %if.end24
  %23 = load i32, ptr %size, align 4, !dbg !5578
  %conv = sext i32 %23 to i64, !dbg !5578
  store i64 %conv, ptr %ret, align 8, !dbg !5580
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

if.end30:                                         ; preds = %if.end24
  %24 = load i64, ptr %pos, align 8, !dbg !5582
  %25 = load i32, ptr %size, align 4, !dbg !5584
  %conv31 = sext i32 %25 to i64, !dbg !5584
  %cmp32 = icmp sge i64 %24, %conv31, !dbg !5585
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5586

if.then34:                                        ; preds = %if.end30
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5587

if.end35:                                         ; preds = %if.end30
  %26 = load i64, ptr %count.addr, align 8, !dbg !5588
  %27 = load i32, ptr %size, align 4, !dbg !5590
  %conv36 = sext i32 %27 to i64, !dbg !5590
  %28 = load i64, ptr %pos, align 8, !dbg !5591
  %sub = sub i64 %conv36, %28, !dbg !5592
  %cmp37 = icmp ugt i64 %26, %sub, !dbg !5593
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !5594

if.then39:                                        ; preds = %if.end35
  %29 = load i32, ptr %size, align 4, !dbg !5595
  %conv40 = sext i32 %29 to i64, !dbg !5595
  %30 = load i64, ptr %pos, align 8, !dbg !5596
  %sub41 = sub i64 %conv40, %30, !dbg !5597
  store i64 %sub41, ptr %count.addr, align 8, !dbg !5598
  br label %if.end42, !dbg !5599

if.end42:                                         ; preds = %if.then39, %if.end35
  %31 = load i64, ptr %count.addr, align 8, !dbg !5600
  %conv43 = trunc i64 %31 to i32, !dbg !5600
  store i32 %conv43, ptr %this_round, align 4, !dbg !5601
  %32 = load i32, ptr %this_round, align 4, !dbg !5602
  %conv44 = zext i32 %32 to i64, !dbg !5602
  %cmp45 = icmp ugt i64 %conv44, 4096, !dbg !5604
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !5605

if.then47:                                        ; preds = %if.end42
  store i32 4096, ptr %this_round, align 4, !dbg !5606
  br label %if.end48, !dbg !5607

if.end48:                                         ; preds = %if.then47, %if.end42
  %33 = load i8, ptr %uni_mode, align 1, !dbg !5608, !range !5532, !noundef !969
  %tobool49 = trunc i8 %33 to i1, !dbg !5608
  br i1 %tobool49, label %if.then50, label %if.else, !dbg !5610

if.then50:                                        ; preds = %if.end48
  %34 = load ptr, ptr %vc, align 8, !dbg !5611
  %35 = load ptr, ptr %con_buf, align 8, !dbg !5613
  %36 = load i64, ptr %pos, align 8, !dbg !5614
  %conv51 = trunc i64 %36 to i32, !dbg !5614
  %37 = load i32, ptr %this_round, align 4, !dbg !5615
  %38 = load i8, ptr %viewed, align 1, !dbg !5616, !range !5532, !noundef !969
  %tobool52 = trunc i8 %38 to i1, !dbg !5616
  %call53 = call i32 @vcs_read_buf_uni(ptr noundef %34, ptr noundef %35, i32 noundef %conv51, i32 noundef %37, i1 noundef zeroext %tobool52) #17, !dbg !5617
  %conv54 = sext i32 %call53 to i64, !dbg !5617
  store i64 %conv54, ptr %ret, align 8, !dbg !5618
  %39 = load i64, ptr %ret, align 8, !dbg !5619
  %tobool55 = icmp ne i64 %39, 0, !dbg !5619
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5621

if.then56:                                        ; preds = %if.then50
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

if.end57:                                         ; preds = %if.then50
  br label %if.end67, !dbg !5623

if.else:                                          ; preds = %if.end48
  %40 = load i8, ptr %attr, align 1, !dbg !5624, !range !5532, !noundef !969
  %tobool58 = trunc i8 %40 to i1, !dbg !5624
  br i1 %tobool58, label %if.else62, label %if.then59, !dbg !5626

if.then59:                                        ; preds = %if.else
  %41 = load ptr, ptr %vc, align 8, !dbg !5627
  %42 = load ptr, ptr %con_buf, align 8, !dbg !5629
  %43 = load i64, ptr %pos, align 8, !dbg !5630
  %conv60 = trunc i64 %43 to i32, !dbg !5630
  %44 = load i32, ptr %this_round, align 4, !dbg !5631
  %45 = load i8, ptr %viewed, align 1, !dbg !5632, !range !5532, !noundef !969
  %tobool61 = trunc i8 %45 to i1, !dbg !5632
  call void @vcs_read_buf_noattr(ptr noundef %41, ptr noundef %42, i32 noundef %conv60, i32 noundef %44, i1 noundef zeroext %tobool61) #17, !dbg !5633
  br label %if.end66, !dbg !5634

if.else62:                                        ; preds = %if.else
  %46 = load ptr, ptr %vc, align 8, !dbg !5635
  %47 = load ptr, ptr %con_buf, align 8, !dbg !5637
  %48 = load i64, ptr %pos, align 8, !dbg !5638
  %conv63 = trunc i64 %48 to i32, !dbg !5638
  %49 = load i32, ptr %this_round, align 4, !dbg !5639
  %50 = load i8, ptr %viewed, align 1, !dbg !5640, !range !5532, !noundef !969
  %tobool64 = trunc i8 %50 to i1, !dbg !5640
  %call65 = call i32 @vcs_read_buf(ptr noundef %46, ptr noundef %47, i32 noundef %conv63, i32 noundef %49, i1 noundef zeroext %tobool64, ptr noundef %skip) #17, !dbg !5641
  store i32 %call65, ptr %this_round, align 4, !dbg !5642
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then59
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end57
  call void @console_unlock() #17, !dbg !5643
  %51 = load ptr, ptr %buf.addr, align 8, !dbg !5644
  %52 = load ptr, ptr %con_buf, align 8, !dbg !5645
  %53 = load i32, ptr %skip, align 4, !dbg !5646
  %idx.ext = zext i32 %53 to i64, !dbg !5647
  %add.ptr = getelementptr i8, ptr %52, i64 %idx.ext, !dbg !5647
  %54 = load i32, ptr %this_round, align 4, !dbg !5648
  %conv68 = zext i32 %54 to i64, !dbg !5648
  %call69 = call i64 @copy_to_user(ptr noundef %51, ptr noundef %add.ptr, i64 noundef %conv68) #17, !dbg !5649
  store i64 %call69, ptr %ret, align 8, !dbg !5650
  call void @console_lock() #17, !dbg !5651
  %55 = load i64, ptr %ret, align 8, !dbg !5652
  %tobool70 = icmp ne i64 %55, 0, !dbg !5652
  br i1 %tobool70, label %if.then71, label %if.end76, !dbg !5654

if.then71:                                        ; preds = %if.end67
  %56 = load i32, ptr %this_round, align 4, !dbg !5655
  %conv72 = zext i32 %56 to i64, !dbg !5655
  %57 = load i64, ptr %ret, align 8, !dbg !5657
  %sub73 = sub i64 %conv72, %57, !dbg !5658
  %58 = load i32, ptr %read, align 4, !dbg !5659
  %conv74 = zext i32 %58 to i64, !dbg !5659
  %add = add i64 %conv74, %sub73, !dbg !5659
  %conv75 = trunc i64 %add to i32, !dbg !5659
  store i32 %conv75, ptr %read, align 4, !dbg !5659
  store i64 -14, ptr %ret, align 8, !dbg !5660
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5661

if.end76:                                         ; preds = %if.end67
  %59 = load i32, ptr %this_round, align 4, !dbg !5662
  %60 = load ptr, ptr %buf.addr, align 8, !dbg !5663
  %idx.ext77 = zext i32 %59 to i64, !dbg !5663
  %add.ptr78 = getelementptr i8, ptr %60, i64 %idx.ext77, !dbg !5663
  store ptr %add.ptr78, ptr %buf.addr, align 8, !dbg !5663
  %61 = load i32, ptr %this_round, align 4, !dbg !5664
  %conv79 = zext i32 %61 to i64, !dbg !5664
  %62 = load i64, ptr %pos, align 8, !dbg !5665
  %add80 = add i64 %62, %conv79, !dbg !5665
  store i64 %add80, ptr %pos, align 8, !dbg !5665
  %63 = load i32, ptr %this_round, align 4, !dbg !5666
  %64 = load i32, ptr %read, align 4, !dbg !5667
  %add81 = add i32 %64, %63, !dbg !5667
  store i32 %add81, ptr %read, align 4, !dbg !5667
  %65 = load i32, ptr %this_round, align 4, !dbg !5668
  %conv82 = zext i32 %65 to i64, !dbg !5668
  %66 = load i64, ptr %count.addr, align 8, !dbg !5669
  %sub83 = sub i64 %66, %conv82, !dbg !5669
  store i64 %sub83, ptr %count.addr, align 8, !dbg !5669
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5670
  br label %cleanup, !dbg !5670

cleanup:                                          ; preds = %if.end76, %if.then71, %if.then56, %if.then34, %if.then29, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #18, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 4, ptr %skip) #18, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_round) #18, !dbg !5670
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5553, !llvm.loop !5671

while.end:                                        ; preds = %cleanup, %while.cond
  %67 = load i32, ptr %read, align 4, !dbg !5672
  %conv86 = zext i32 %67 to i64, !dbg !5672
  %68 = load ptr, ptr %ppos.addr, align 8, !dbg !5673
  %69 = load i64, ptr %68, align 8, !dbg !5674
  %add87 = add i64 %69, %conv86, !dbg !5674
  store i64 %add87, ptr %68, align 8, !dbg !5674
  %70 = load i32, ptr %read, align 4, !dbg !5675
  %tobool88 = icmp ne i32 %70, 0, !dbg !5675
  br i1 %tobool88, label %if.then89, label %if.end91, !dbg !5677

if.then89:                                        ; preds = %while.end
  %71 = load i32, ptr %read, align 4, !dbg !5678
  %conv90 = zext i32 %71 to i64, !dbg !5678
  store i64 %conv90, ptr %ret, align 8, !dbg !5679
  br label %if.end91, !dbg !5680

if.end91:                                         ; preds = %if.then89, %while.end
  br label %unlock_out, !dbg !5675

unlock_out:                                       ; preds = %if.end91, %if.then13, %if.then8
  call void @llvm.dbg.label(metadata !5484), !dbg !5681
  call void @console_unlock() #17, !dbg !5682
  %72 = load ptr, ptr %con_buf, align 8, !dbg !5683
  %73 = ptrtoint ptr %72 to i64, !dbg !5683
  call void @free_pages(i64 noundef %73, i32 noundef 0) #17, !dbg !5683
  %74 = load i64, ptr %ret, align 8, !dbg !5684
  store i64 %74, ptr %retval, align 8, !dbg !5685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !5685

cleanup92:                                        ; preds = %unlock_out, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %uni_mode) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 1, ptr %attr) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 1, ptr %viewed) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %con_buf) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 4, ptr %read) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !5686
  %75 = load i64, ptr %retval, align 8, !dbg !5686
  ret i64 %75, !dbg !5686

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vcs_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5687 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %con_buf = alloca ptr, align 8
  %org0 = alloca ptr, align 8
  %org = alloca ptr, align 8
  %written = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca i64, align 8
  %pos = alloca i64, align 8
  %viewed = alloca i8, align 1
  %attr = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %this_round = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5689, metadata !DIExpression()), !dbg !5707
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5690, metadata !DIExpression()), !dbg !5708
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5691, metadata !DIExpression()), !dbg !5709
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5692, metadata !DIExpression()), !dbg !5710
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5693, metadata !DIExpression()), !dbg !5712
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5713
  %call = call ptr @file_inode(ptr noundef %0) #17, !dbg !5714
  store ptr %call, ptr %inode, align 8, !dbg !5712
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #18, !dbg !5715
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5694, metadata !DIExpression()), !dbg !5716
  call void @llvm.lifetime.start.p0(i64 8, ptr %con_buf) #18, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %con_buf, metadata !5695, metadata !DIExpression()), !dbg !5718
  call void @llvm.lifetime.start.p0(i64 8, ptr %org0) #18, !dbg !5719
  call void @llvm.dbg.declare(metadata ptr %org0, metadata !5696, metadata !DIExpression()), !dbg !5720
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #18, !dbg !5719
  call void @llvm.dbg.declare(metadata ptr %org, metadata !5697, metadata !DIExpression()), !dbg !5721
  call void @llvm.lifetime.start.p0(i64 4, ptr %written) #18, !dbg !5722
  call void @llvm.dbg.declare(metadata ptr %written, metadata !5698, metadata !DIExpression()), !dbg !5723
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #18, !dbg !5724
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5699, metadata !DIExpression()), !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !5726
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5700, metadata !DIExpression()), !dbg !5727
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #18, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5701, metadata !DIExpression()), !dbg !5729
  call void @llvm.lifetime.start.p0(i64 1, ptr %viewed) #18, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %viewed, metadata !5702, metadata !DIExpression()), !dbg !5731
  call void @llvm.lifetime.start.p0(i64 1, ptr %attr) #18, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5703, metadata !DIExpression()), !dbg !5732
  %1 = load ptr, ptr %inode, align 8, !dbg !5733
  %call1 = call i32 @iminor(ptr noundef %1) #17, !dbg !5733
  %and = and i32 %call1, 64, !dbg !5733
  %tobool = icmp ne i32 %and, 0, !dbg !5733
  br i1 %tobool, label %if.then, label %if.end, !dbg !5735

if.then:                                          ; preds = %entry
  store i64 -95, ptr %retval, align 8, !dbg !5736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107, !dbg !5736

if.end:                                           ; preds = %entry
  %call2 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #17, !dbg !5737
  %2 = inttoptr i64 %call2 to ptr, !dbg !5738
  store ptr %2, ptr %con_buf, align 8, !dbg !5739
  %3 = load ptr, ptr %con_buf, align 8, !dbg !5740
  %tobool3 = icmp ne ptr %3, null, !dbg !5740
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5742

if.then4:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !5743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107, !dbg !5743

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %ppos.addr, align 8, !dbg !5744
  %5 = load i64, ptr %4, align 8, !dbg !5745
  store i64 %5, ptr %pos, align 8, !dbg !5746
  call void @console_lock() #17, !dbg !5747
  %6 = load ptr, ptr %inode, align 8, !dbg !5748
  %call6 = call i32 @iminor(ptr noundef %6) #17, !dbg !5748
  %and7 = and i32 %call6, 128, !dbg !5748
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5748
  %frombool = zext i1 %tobool8 to i8, !dbg !5749
  store i8 %frombool, ptr %attr, align 1, !dbg !5749
  store i64 -6, ptr %ret, align 8, !dbg !5750
  %7 = load ptr, ptr %inode, align 8, !dbg !5751
  %call9 = call ptr @vcs_vc(ptr noundef %7, ptr noundef %viewed) #17, !dbg !5752
  store ptr %call9, ptr %vc, align 8, !dbg !5753
  %8 = load ptr, ptr %vc, align 8, !dbg !5754
  %tobool10 = icmp ne ptr %8, null, !dbg !5754
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5756

if.then11:                                        ; preds = %if.end5
  br label %unlock_out, !dbg !5757

if.end12:                                         ; preds = %if.end5
  %9 = load ptr, ptr %vc, align 8, !dbg !5758
  %10 = load i8, ptr %attr, align 1, !dbg !5759, !range !5532, !noundef !969
  %tobool13 = trunc i8 %10 to i1, !dbg !5759
  %call14 = call i32 @vcs_size(ptr noundef %9, i1 noundef zeroext %tobool13, i1 noundef zeroext false) #17, !dbg !5760
  store i32 %call14, ptr %size, align 4, !dbg !5761
  %11 = load i32, ptr %size, align 4, !dbg !5762
  %cmp = icmp slt i32 %11, 0, !dbg !5764
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !5765

if.then15:                                        ; preds = %if.end12
  %12 = load i32, ptr %size, align 4, !dbg !5766
  %conv = sext i32 %12 to i64, !dbg !5766
  store i64 %conv, ptr %ret, align 8, !dbg !5768
  br label %unlock_out, !dbg !5769

if.end16:                                         ; preds = %if.end12
  store i64 -22, ptr %ret, align 8, !dbg !5770
  %13 = load i64, ptr %pos, align 8, !dbg !5771
  %cmp17 = icmp slt i64 %13, 0, !dbg !5773
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !5774

lor.lhs.false:                                    ; preds = %if.end16
  %14 = load i64, ptr %pos, align 8, !dbg !5775
  %15 = load i32, ptr %size, align 4, !dbg !5776
  %conv19 = sext i32 %15 to i64, !dbg !5776
  %cmp20 = icmp sgt i64 %14, %conv19, !dbg !5777
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5778

if.then22:                                        ; preds = %lor.lhs.false, %if.end16
  br label %unlock_out, !dbg !5779

if.end23:                                         ; preds = %lor.lhs.false
  %16 = load i64, ptr %count.addr, align 8, !dbg !5780
  %17 = load i32, ptr %size, align 4, !dbg !5782
  %conv24 = sext i32 %17 to i64, !dbg !5782
  %18 = load i64, ptr %pos, align 8, !dbg !5783
  %sub = sub i64 %conv24, %18, !dbg !5784
  %cmp25 = icmp ugt i64 %16, %sub, !dbg !5785
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !5786

if.then27:                                        ; preds = %if.end23
  %19 = load i32, ptr %size, align 4, !dbg !5787
  %conv28 = sext i32 %19 to i64, !dbg !5787
  %20 = load i64, ptr %pos, align 8, !dbg !5788
  %sub29 = sub i64 %conv28, %20, !dbg !5789
  store i64 %sub29, ptr %count.addr, align 8, !dbg !5790
  br label %if.end30, !dbg !5791

if.end30:                                         ; preds = %if.then27, %if.end23
  store i32 0, ptr %written, align 4, !dbg !5792
  br label %while.cond, !dbg !5793

while.cond:                                       ; preds = %cleanup.cont, %if.end30
  %21 = load i64, ptr %count.addr, align 8, !dbg !5794
  %tobool31 = icmp ne i64 %21, 0, !dbg !5793
  br i1 %tobool31, label %while.body, label %while.end, !dbg !5793

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_round) #18, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %this_round, metadata !5704, metadata !DIExpression()), !dbg !5796
  %22 = load i64, ptr %count.addr, align 8, !dbg !5797
  %conv32 = trunc i64 %22 to i32, !dbg !5797
  store i32 %conv32, ptr %this_round, align 4, !dbg !5796
  %23 = load i32, ptr %this_round, align 4, !dbg !5798
  %conv33 = zext i32 %23 to i64, !dbg !5798
  %cmp34 = icmp ugt i64 %conv33, 4096, !dbg !5800
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5801

if.then36:                                        ; preds = %while.body
  store i32 4096, ptr %this_round, align 4, !dbg !5802
  br label %if.end37, !dbg !5803

if.end37:                                         ; preds = %if.then36, %while.body
  call void @console_unlock() #17, !dbg !5804
  %24 = load ptr, ptr %con_buf, align 8, !dbg !5805
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !5806
  %26 = load i32, ptr %this_round, align 4, !dbg !5807
  %conv38 = zext i32 %26 to i64, !dbg !5807
  %call39 = call i64 @copy_from_user(ptr noundef %24, ptr noundef %25, i64 noundef %conv38) #17, !dbg !5808
  store i64 %call39, ptr %ret, align 8, !dbg !5809
  call void @console_lock() #17, !dbg !5810
  %27 = load i64, ptr %ret, align 8, !dbg !5811
  %tobool40 = icmp ne i64 %27, 0, !dbg !5811
  br i1 %tobool40, label %if.then41, label %if.end51, !dbg !5813

if.then41:                                        ; preds = %if.end37
  %28 = load i64, ptr %ret, align 8, !dbg !5814
  %29 = load i32, ptr %this_round, align 4, !dbg !5816
  %conv42 = zext i32 %29 to i64, !dbg !5816
  %sub43 = sub i64 %conv42, %28, !dbg !5816
  %conv44 = trunc i64 %sub43 to i32, !dbg !5816
  store i32 %conv44, ptr %this_round, align 4, !dbg !5816
  %30 = load i32, ptr %this_round, align 4, !dbg !5817
  %tobool45 = icmp ne i32 %30, 0, !dbg !5817
  br i1 %tobool45, label %if.end50, label %if.then46, !dbg !5819

if.then46:                                        ; preds = %if.then41
  %31 = load i32, ptr %written, align 4, !dbg !5820
  %tobool47 = icmp ne i32 %31, 0, !dbg !5820
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !5823

if.then48:                                        ; preds = %if.then46
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5824

if.end49:                                         ; preds = %if.then46
  store i64 -14, ptr %ret, align 8, !dbg !5825
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5826

if.end50:                                         ; preds = %if.then41
  br label %if.end51, !dbg !5827

if.end51:                                         ; preds = %if.end50, %if.end37
  %32 = load ptr, ptr %inode, align 8, !dbg !5828
  %call52 = call ptr @vcs_vc(ptr noundef %32, ptr noundef %viewed) #17, !dbg !5829
  store ptr %call52, ptr %vc, align 8, !dbg !5830
  %33 = load ptr, ptr %vc, align 8, !dbg !5831
  %tobool53 = icmp ne ptr %33, null, !dbg !5831
  br i1 %tobool53, label %if.end58, label %if.then54, !dbg !5833

if.then54:                                        ; preds = %if.end51
  %34 = load i32, ptr %written, align 4, !dbg !5834
  %tobool55 = icmp ne i32 %34, 0, !dbg !5834
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5837

if.then56:                                        ; preds = %if.then54
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end57:                                         ; preds = %if.then54
  store i64 -6, ptr %ret, align 8, !dbg !5839
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5840

if.end58:                                         ; preds = %if.end51
  %35 = load ptr, ptr %vc, align 8, !dbg !5841
  %36 = load i8, ptr %attr, align 1, !dbg !5842, !range !5532, !noundef !969
  %tobool59 = trunc i8 %36 to i1, !dbg !5842
  %call60 = call i32 @vcs_size(ptr noundef %35, i1 noundef zeroext %tobool59, i1 noundef zeroext false) #17, !dbg !5843
  store i32 %call60, ptr %size, align 4, !dbg !5844
  %37 = load i32, ptr %size, align 4, !dbg !5845
  %cmp61 = icmp slt i32 %37, 0, !dbg !5847
  br i1 %cmp61, label %if.then63, label %if.end68, !dbg !5848

if.then63:                                        ; preds = %if.end58
  %38 = load i32, ptr %written, align 4, !dbg !5849
  %tobool64 = icmp ne i32 %38, 0, !dbg !5849
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !5852

if.then65:                                        ; preds = %if.then63
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5853

if.end66:                                         ; preds = %if.then63
  %39 = load i32, ptr %size, align 4, !dbg !5854
  %conv67 = sext i32 %39 to i64, !dbg !5854
  store i64 %conv67, ptr %ret, align 8, !dbg !5855
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5856

if.end68:                                         ; preds = %if.end58
  %40 = load i64, ptr %pos, align 8, !dbg !5857
  %41 = load i32, ptr %size, align 4, !dbg !5859
  %conv69 = sext i32 %41 to i64, !dbg !5859
  %cmp70 = icmp sge i64 %40, %conv69, !dbg !5860
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !5861

if.then72:                                        ; preds = %if.end68
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5862

if.end73:                                         ; preds = %if.end68
  %42 = load i32, ptr %this_round, align 4, !dbg !5863
  %conv74 = zext i32 %42 to i64, !dbg !5863
  %43 = load i32, ptr %size, align 4, !dbg !5865
  %conv75 = sext i32 %43 to i64, !dbg !5865
  %44 = load i64, ptr %pos, align 8, !dbg !5866
  %sub76 = sub i64 %conv75, %44, !dbg !5867
  %cmp77 = icmp sgt i64 %conv74, %sub76, !dbg !5868
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !5869

if.then79:                                        ; preds = %if.end73
  %45 = load i32, ptr %size, align 4, !dbg !5870
  %conv80 = sext i32 %45 to i64, !dbg !5870
  %46 = load i64, ptr %pos, align 8, !dbg !5871
  %sub81 = sub i64 %conv80, %46, !dbg !5872
  %conv82 = trunc i64 %sub81 to i32, !dbg !5870
  store i32 %conv82, ptr %this_round, align 4, !dbg !5873
  br label %if.end83, !dbg !5874

if.end83:                                         ; preds = %if.then79, %if.end73
  %47 = load i8, ptr %attr, align 1, !dbg !5875, !range !5532, !noundef !969
  %tobool84 = trunc i8 %47 to i1, !dbg !5875
  br i1 %tobool84, label %if.then85, label %if.else, !dbg !5877

if.then85:                                        ; preds = %if.end83
  %48 = load ptr, ptr %vc, align 8, !dbg !5878
  %49 = load ptr, ptr %con_buf, align 8, !dbg !5879
  %50 = load i64, ptr %pos, align 8, !dbg !5880
  %conv86 = trunc i64 %50 to i32, !dbg !5880
  %51 = load i32, ptr %this_round, align 4, !dbg !5881
  %52 = load i8, ptr %viewed, align 1, !dbg !5882, !range !5532, !noundef !969
  %tobool87 = trunc i8 %52 to i1, !dbg !5882
  %call88 = call ptr @vcs_write_buf(ptr noundef %48, ptr noundef %49, i32 noundef %conv86, i32 noundef %51, i1 noundef zeroext %tobool87, ptr noundef %org0) #17, !dbg !5883
  store ptr %call88, ptr %org, align 8, !dbg !5884
  br label %if.end92, !dbg !5885

if.else:                                          ; preds = %if.end83
  %53 = load ptr, ptr %vc, align 8, !dbg !5886
  %54 = load ptr, ptr %con_buf, align 8, !dbg !5887
  %55 = load i64, ptr %pos, align 8, !dbg !5888
  %conv89 = trunc i64 %55 to i32, !dbg !5888
  %56 = load i32, ptr %this_round, align 4, !dbg !5889
  %57 = load i8, ptr %viewed, align 1, !dbg !5890, !range !5532, !noundef !969
  %tobool90 = trunc i8 %57 to i1, !dbg !5890
  %call91 = call ptr @vcs_write_buf_noattr(ptr noundef %53, ptr noundef %54, i32 noundef %conv89, i32 noundef %56, i1 noundef zeroext %tobool90, ptr noundef %org0) #17, !dbg !5891
  store ptr %call91, ptr %org, align 8, !dbg !5892
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then85
  %58 = load i32, ptr %this_round, align 4, !dbg !5893
  %conv93 = zext i32 %58 to i64, !dbg !5893
  %59 = load i64, ptr %count.addr, align 8, !dbg !5894
  %sub94 = sub i64 %59, %conv93, !dbg !5894
  store i64 %sub94, ptr %count.addr, align 8, !dbg !5894
  %60 = load i32, ptr %this_round, align 4, !dbg !5895
  %61 = load i32, ptr %written, align 4, !dbg !5896
  %add = add i32 %61, %60, !dbg !5896
  store i32 %add, ptr %written, align 4, !dbg !5896
  %62 = load i32, ptr %this_round, align 4, !dbg !5897
  %63 = load ptr, ptr %buf.addr, align 8, !dbg !5898
  %idx.ext = zext i32 %62 to i64, !dbg !5898
  %add.ptr = getelementptr i8, ptr %63, i64 %idx.ext, !dbg !5898
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !5898
  %64 = load i32, ptr %this_round, align 4, !dbg !5899
  %conv95 = zext i32 %64 to i64, !dbg !5899
  %65 = load i64, ptr %pos, align 8, !dbg !5900
  %add96 = add i64 %65, %conv95, !dbg !5900
  store i64 %add96, ptr %pos, align 8, !dbg !5900
  %66 = load ptr, ptr %org, align 8, !dbg !5901
  %tobool97 = icmp ne ptr %66, null, !dbg !5901
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !5903

if.then98:                                        ; preds = %if.end92
  %67 = load ptr, ptr %vc, align 8, !dbg !5904
  %68 = load ptr, ptr %org0, align 8, !dbg !5905
  %69 = ptrtoint ptr %68 to i64, !dbg !5906
  %70 = load ptr, ptr %org, align 8, !dbg !5907
  %71 = load ptr, ptr %org0, align 8, !dbg !5908
  %sub.ptr.lhs.cast = ptrtoint ptr %70 to i64, !dbg !5909
  %sub.ptr.rhs.cast = ptrtoint ptr %71 to i64, !dbg !5909
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5909
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2, !dbg !5909
  %conv99 = trunc i64 %sub.ptr.div to i32, !dbg !5907
  call void @update_region(ptr noundef %67, i64 noundef %69, i32 noundef %conv99) #17, !dbg !5910
  br label %if.end100, !dbg !5910

if.end100:                                        ; preds = %if.then98, %if.end92
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5911
  br label %cleanup, !dbg !5911

cleanup:                                          ; preds = %if.end66, %if.end57, %if.end49, %if.end100, %if.then72, %if.then65, %if.then56, %if.then48
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_round) #18, !dbg !5911
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup107 [
    i32 0, label %cleanup.cont
    i32 4, label %while.end
    i32 2, label %unlock_out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5793, !llvm.loop !5912

while.end:                                        ; preds = %cleanup, %while.cond
  %72 = load i32, ptr %written, align 4, !dbg !5913
  %conv101 = zext i32 %72 to i64, !dbg !5913
  %73 = load ptr, ptr %ppos.addr, align 8, !dbg !5914
  %74 = load i64, ptr %73, align 8, !dbg !5915
  %add102 = add i64 %74, %conv101, !dbg !5915
  store i64 %add102, ptr %73, align 8, !dbg !5915
  %75 = load i32, ptr %written, align 4, !dbg !5916
  %conv103 = zext i32 %75 to i64, !dbg !5916
  store i64 %conv103, ptr %ret, align 8, !dbg !5917
  %76 = load i32, ptr %written, align 4, !dbg !5918
  %tobool104 = icmp ne i32 %76, 0, !dbg !5918
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !5920

if.then105:                                       ; preds = %while.end
  %77 = load ptr, ptr %vc, align 8, !dbg !5921
  call void @vcs_scr_updated(ptr noundef %77) #17, !dbg !5922
  br label %if.end106, !dbg !5922

if.end106:                                        ; preds = %if.then105, %while.end
  br label %unlock_out, !dbg !5918

unlock_out:                                       ; preds = %if.end106, %cleanup, %if.then22, %if.then15, %if.then11
  call void @llvm.dbg.label(metadata !5706), !dbg !5923
  call void @console_unlock() #17, !dbg !5924
  %78 = load ptr, ptr %con_buf, align 8, !dbg !5925
  %79 = ptrtoint ptr %78 to i64, !dbg !5925
  call void @free_pages(i64 noundef %79, i32 noundef 0) #17, !dbg !5925
  %80 = load i64, ptr %ret, align 8, !dbg !5926
  store i64 %80, ptr %retval, align 8, !dbg !5927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107, !dbg !5927

cleanup107:                                       ; preds = %unlock_out, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %attr) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 1, ptr %viewed) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 4, ptr %written) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %org0) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %con_buf) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #18, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !5928
  %81 = load i64, ptr %retval, align 8, !dbg !5928
  ret i64 %81, !dbg !5928
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !5929 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %poll = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5935, metadata !DIExpression()), !dbg !5939
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !5936, metadata !DIExpression()), !dbg !5940
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #18, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !5937, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5943
  %call = call ptr @vcs_poll_data_get(ptr noundef %0) #17, !dbg !5944
  store ptr %call, ptr %poll, align 8, !dbg !5942
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5945
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5938, metadata !DIExpression()), !dbg !5946
  store i32 333, ptr %ret, align 4, !dbg !5946
  %1 = load ptr, ptr %poll, align 8, !dbg !5947
  %tobool = icmp ne ptr %1, null, !dbg !5947
  br i1 %tobool, label %if.then, label %if.end, !dbg !5949

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5950
  %3 = load ptr, ptr %poll, align 8, !dbg !5952
  %waitq = getelementptr inbounds %struct.vcs_poll_data, ptr %3, i32 0, i32 3, !dbg !5953
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !5954
  call void @poll_wait(ptr noundef %2, ptr noundef %waitq, ptr noundef %4) #17, !dbg !5955
  %5 = load ptr, ptr %poll, align 8, !dbg !5956
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %5, i32 0, i32 2, !dbg !5957
  %6 = load i32, ptr %event, align 4, !dbg !5957
  switch i32 %6, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
  ], !dbg !5958

sw.bb:                                            ; preds = %if.then
  store i32 327, ptr %ret, align 4, !dbg !5959
  br label %sw.epilog, !dbg !5961

sw.bb1:                                           ; preds = %if.then
  store i32 349, ptr %ret, align 4, !dbg !5962
  br label %sw.epilog, !dbg !5963

sw.bb2:                                           ; preds = %if.then
  store i32 325, ptr %ret, align 4, !dbg !5964
  br label %sw.epilog, !dbg !5965

sw.epilog:                                        ; preds = %if.then, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end, !dbg !5966

if.end:                                           ; preds = %sw.epilog, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5968
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #18, !dbg !5968
  ret i32 %7, !dbg !5969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_open(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !5970 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %currcons = alloca i32, align 4
  %attr = alloca i8, align 1
  %uni_mode = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5972, metadata !DIExpression()), !dbg !5978
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5973, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 4, ptr %currcons) #18, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %currcons, metadata !5974, metadata !DIExpression()), !dbg !5981
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5982
  %call = call i32 @iminor(ptr noundef %0) #17, !dbg !5982
  %and = and i32 %call, 63, !dbg !5982
  store i32 %and, ptr %currcons, align 4, !dbg !5981
  call void @llvm.lifetime.start.p0(i64 1, ptr %attr) #18, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5975, metadata !DIExpression()), !dbg !5984
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5985
  %call1 = call i32 @iminor(ptr noundef %1) #17, !dbg !5985
  %and2 = and i32 %call1, 128, !dbg !5985
  %tobool = icmp ne i32 %and2, 0, !dbg !5985
  %frombool = zext i1 %tobool to i8, !dbg !5984
  store i8 %frombool, ptr %attr, align 1, !dbg !5984
  call void @llvm.lifetime.start.p0(i64 1, ptr %uni_mode) #18, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %uni_mode, metadata !5976, metadata !DIExpression()), !dbg !5987
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5988
  %call3 = call i32 @iminor(ptr noundef %2) #17, !dbg !5988
  %and4 = and i32 %call3, 64, !dbg !5988
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5988
  %frombool6 = zext i1 %tobool5 to i8, !dbg !5987
  store i8 %frombool6, ptr %uni_mode, align 1, !dbg !5987
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5989
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5977, metadata !DIExpression()), !dbg !5990
  store i32 0, ptr %ret, align 4, !dbg !5990
  %3 = load i8, ptr %attr, align 1, !dbg !5991, !range !5532, !noundef !969
  %tobool7 = trunc i8 %3 to i1, !dbg !5991
  br i1 %tobool7, label %land.lhs.true, label %if.end, !dbg !5993

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, ptr %uni_mode, align 1, !dbg !5994, !range !5532, !noundef !969
  %tobool8 = trunc i8 %4 to i1, !dbg !5994
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5995

if.then:                                          ; preds = %land.lhs.true
  store i32 -95, ptr %retval, align 4, !dbg !5996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5996

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @console_lock() #17, !dbg !5997
  %5 = load i32, ptr %currcons, align 4, !dbg !5998
  %tobool9 = icmp ne i32 %5, 0, !dbg !5998
  br i1 %tobool9, label %land.lhs.true10, label %if.end14, !dbg !6000

land.lhs.true10:                                  ; preds = %if.end
  %6 = load i32, ptr %currcons, align 4, !dbg !6001
  %sub = sub i32 %6, 1, !dbg !6002
  %call11 = call i32 @vc_cons_allocated(i32 noundef %sub) #17, !dbg !6003
  %tobool12 = icmp ne i32 %call11, 0, !dbg !6003
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6004

if.then13:                                        ; preds = %land.lhs.true10
  store i32 -6, ptr %ret, align 4, !dbg !6005
  br label %if.end14, !dbg !6006

if.end14:                                         ; preds = %if.then13, %land.lhs.true10, %if.end
  call void @console_unlock() #17, !dbg !6007
  %7 = load i32, ptr %ret, align 4, !dbg !6008
  store i32 %7, ptr %retval, align 4, !dbg !6009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6009

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 1, ptr %uni_mode) #18, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 1, ptr %attr) #18, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 4, ptr %currcons) #18, !dbg !6010
  %8 = load i32, ptr %retval, align 4, !dbg !6010
  ret i32 %8, !dbg !6010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6011 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %poll = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6013, metadata !DIExpression()), !dbg !6016
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6014, metadata !DIExpression()), !dbg !6017
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #18, !dbg !6018
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !6015, metadata !DIExpression()), !dbg !6019
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6020
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6021
  %1 = load ptr, ptr %private_data, align 8, !dbg !6021
  store ptr %1, ptr %poll, align 8, !dbg !6019
  %2 = load ptr, ptr %poll, align 8, !dbg !6022
  %tobool = icmp ne ptr %2, null, !dbg !6022
  br i1 %tobool, label %if.then, label %if.end, !dbg !6024

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %poll, align 8, !dbg !6025
  call void @vcs_poll_data_free(ptr noundef %3) #17, !dbg !6026
  br label %if.end, !dbg !6026

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #18, !dbg !6027
  ret i32 0, !dbg !6028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 16 !dbg !6029 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %on.addr = alloca i32, align 4
  %poll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6031, metadata !DIExpression()), !dbg !6035
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6032, metadata !DIExpression()), !dbg !6036
  store i32 %on, ptr %on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !6033, metadata !DIExpression()), !dbg !6037
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #18, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !6034, metadata !DIExpression()), !dbg !6039
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6040
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6041
  %1 = load ptr, ptr %private_data, align 8, !dbg !6041
  store ptr %1, ptr %poll, align 8, !dbg !6039
  %2 = load ptr, ptr %poll, align 8, !dbg !6042
  %tobool = icmp ne ptr %2, null, !dbg !6042
  br i1 %tobool, label %if.end6, label %if.then, !dbg !6044

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %on.addr, align 4, !dbg !6045
  %tobool1 = icmp ne i32 %3, 0, !dbg !6045
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !6048

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !6049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6049

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6050
  %call = call ptr @vcs_poll_data_get(ptr noundef %4) #17, !dbg !6051
  store ptr %call, ptr %poll, align 8, !dbg !6052
  %5 = load ptr, ptr %poll, align 8, !dbg !6053
  %tobool3 = icmp ne ptr %5, null, !dbg !6053
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6055

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6056

if.end5:                                          ; preds = %if.end
  br label %if.end6, !dbg !6057

if.end6:                                          ; preds = %if.end5, %entry
  %6 = load i32, ptr %fd.addr, align 4, !dbg !6058
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6059
  %8 = load i32, ptr %on.addr, align 4, !dbg !6060
  %9 = load ptr, ptr %poll, align 8, !dbg !6061
  %fasync = getelementptr inbounds %struct.vcs_poll_data, ptr %9, i32 0, i32 4, !dbg !6062
  %call7 = call i32 @fasync_helper(i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %fasync) #17, !dbg !6063
  store i32 %call7, ptr %retval, align 4, !dbg !6064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6064

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #18, !dbg !6065
  %10 = load i32, ptr %retval, align 4, !dbg !6065
  ret i32 %10, !dbg !6065
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !6066 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6072
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6073
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6073
  ret ptr %1, !dbg !6074
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6075 dso_local void @console_lock() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vcs_vc(ptr noundef %inode, ptr noundef %viewed) #0 align 16 !dbg !6076 {
entry:
  %inode.addr = alloca ptr, align 8
  %viewed.addr = alloca ptr, align 8
  %currcons = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6080, metadata !DIExpression()), !dbg !6088
  store ptr %viewed, ptr %viewed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %viewed.addr, metadata !6081, metadata !DIExpression()), !dbg !6089
  call void @llvm.lifetime.start.p0(i64 4, ptr %currcons) #18, !dbg !6090
  call void @llvm.dbg.declare(metadata ptr %currcons, metadata !6082, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6092
  %call = call i32 @iminor(ptr noundef %0) #17, !dbg !6092
  %and = and i32 %call, 63, !dbg !6092
  store i32 %and, ptr %currcons, align 4, !dbg !6091
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6093
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6083, metadata !DIExpression()), !dbg !6093
  %call1 = call i32 @atomic_read(ptr noundef @ignore_console_lock_warning) #17, !dbg !6093
  %tobool = icmp ne i32 %call1, 0, !dbg !6093
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !6093

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @is_console_locked() #17, !dbg !6093
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6093
  br i1 %tobool3, label %land.end, label %land.rhs, !dbg !6093

land.rhs:                                         ; preds = %land.lhs.true
  %1 = load i32, ptr @oops_in_progress, align 4, !dbg !6093
  %tobool4 = icmp ne i32 %1, 0, !dbg !6093
  %lnot = xor i1 %tobool4, true, !dbg !6093
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %2 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6094
  %lnot5 = xor i1 %2, true, !dbg !6093
  %lnot6 = xor i1 %lnot5, true, !dbg !6093
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6093
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6093
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6095
  %tobool7 = icmp ne i32 %3, 0, !dbg !6095
  %lnot8 = xor i1 %tobool7, true, !dbg !6095
  %lnot10 = xor i1 %lnot8, true, !dbg !6095
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !6095
  %conv = sext i32 %lnot.ext11 to i64, !dbg !6095
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6095
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6095
  br i1 %tobool12, label %if.then, label %if.end, !dbg !6093

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !6095

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6096
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6085, metadata !DIExpression()), !dbg !6096
  store i32 2305, ptr %__flags, align 4, !dbg !6096
  br label %do.body13, !dbg !6096

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !6097

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !6097

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !6096

do.body14:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6099
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 187, i32 %4, i64 12) #18, !dbg !6099, !srcloc !6101
  br label %do.cond15, !dbg !6099

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6099

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6096

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6102

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6102

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6095
  br label %do.cond20, !dbg !6096

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6096

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !6096

if.end:                                           ; preds = %do.end21, %land.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6093
  %tobool22 = icmp ne i32 %5, 0, !dbg !6093
  %lnot23 = xor i1 %tobool22, true, !dbg !6093
  %lnot25 = xor i1 %lnot23, true, !dbg !6093
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !6093
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !6093
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !6093
  store i64 %expval28, ptr %tmp, align 8, !dbg !6095
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6104
  %6 = load i64, ptr %tmp, align 8, !dbg !6093
  %7 = load i32, ptr %currcons, align 4, !dbg !6105
  %cmp = icmp eq i32 %7, 0, !dbg !6107
  br i1 %cmp, label %if.then30, label %if.else, !dbg !6108

if.then30:                                        ; preds = %if.end
  %8 = load i32, ptr @fg_console, align 4, !dbg !6109
  store i32 %8, ptr %currcons, align 4, !dbg !6111
  %9 = load ptr, ptr %viewed.addr, align 8, !dbg !6112
  %tobool31 = icmp ne ptr %9, null, !dbg !6112
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6114

if.then32:                                        ; preds = %if.then30
  %10 = load ptr, ptr %viewed.addr, align 8, !dbg !6115
  store i8 1, ptr %10, align 1, !dbg !6116
  br label %if.end33, !dbg !6117

if.end33:                                         ; preds = %if.then32, %if.then30
  br label %if.end37, !dbg !6118

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %currcons, align 4, !dbg !6119
  %dec = add i32 %11, -1, !dbg !6119
  store i32 %dec, ptr %currcons, align 4, !dbg !6119
  %12 = load ptr, ptr %viewed.addr, align 8, !dbg !6121
  %tobool34 = icmp ne ptr %12, null, !dbg !6121
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !6123

if.then35:                                        ; preds = %if.else
  %13 = load ptr, ptr %viewed.addr, align 8, !dbg !6124
  store i8 0, ptr %13, align 1, !dbg !6125
  br label %if.end36, !dbg !6126

if.end36:                                         ; preds = %if.then35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end33
  %14 = load i32, ptr %currcons, align 4, !dbg !6127
  %idxprom = zext i32 %14 to i64, !dbg !6128
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i64 0, i64 %idxprom, !dbg !6128
  %d = getelementptr inbounds %struct.vc, ptr %arrayidx, i32 0, i32 0, !dbg !6129
  %15 = load ptr, ptr %d, align 8, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %currcons) #18, !dbg !6130
  ret ptr %15, !dbg !6131
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6132 dso_local void @console_unlock() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_size(ptr noundef %vc, i1 noundef zeroext %attr, i1 noundef zeroext %unicode) #0 align 16 !dbg !6133 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %attr.addr = alloca i8, align 1
  %unicode.addr = alloca i8, align 1
  %size = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6137, metadata !DIExpression()), !dbg !6146
  %frombool = zext i1 %attr to i8
  store i8 %frombool, ptr %attr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6138, metadata !DIExpression()), !dbg !6147
  %frombool1 = zext i1 %unicode to i8
  store i8 %frombool1, ptr %unicode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %unicode.addr, metadata !6139, metadata !DIExpression()), !dbg !6148
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #18, !dbg !6149
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6140, metadata !DIExpression()), !dbg !6150
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6141, metadata !DIExpression()), !dbg !6151
  %call = call i32 @atomic_read(ptr noundef @ignore_console_lock_warning) #17, !dbg !6151
  %tobool = icmp ne i32 %call, 0, !dbg !6151
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !6151

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @is_console_locked() #17, !dbg !6151
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6151
  br i1 %tobool3, label %land.end, label %land.rhs, !dbg !6151

land.rhs:                                         ; preds = %land.lhs.true
  %0 = load i32, ptr @oops_in_progress, align 4, !dbg !6151
  %tobool4 = icmp ne i32 %0, 0, !dbg !6151
  %lnot = xor i1 %tobool4, true, !dbg !6151
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %1 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6152
  %lnot5 = xor i1 %1, true, !dbg !6151
  %lnot6 = xor i1 %lnot5, true, !dbg !6151
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6151
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6151
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6153
  %tobool7 = icmp ne i32 %2, 0, !dbg !6153
  %lnot8 = xor i1 %tobool7, true, !dbg !6153
  %lnot10 = xor i1 %lnot8, true, !dbg !6153
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !6153
  %conv = sext i32 %lnot.ext11 to i64, !dbg !6153
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6153
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6153
  br i1 %tobool12, label %if.then, label %if.end, !dbg !6151

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !6153

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6154
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6143, metadata !DIExpression()), !dbg !6154
  store i32 2305, ptr %__flags, align 4, !dbg !6154
  br label %do.body13, !dbg !6154

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !6155

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !6155

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !6154

do.body14:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6157
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 213, i32 %3, i64 12) #18, !dbg !6157, !srcloc !6159
  br label %do.cond15, !dbg !6157

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6157

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6154

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6160

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6160

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6153
  br label %do.cond20, !dbg !6154

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6154

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !6154

if.end:                                           ; preds = %do.end21, %land.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6151
  %tobool22 = icmp ne i32 %4, 0, !dbg !6151
  %lnot23 = xor i1 %tobool22, true, !dbg !6151
  %lnot25 = xor i1 %lnot23, true, !dbg !6151
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !6151
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !6151
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !6151
  store i64 %expval28, ptr %tmp, align 8, !dbg !6153
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6162
  %5 = load i64, ptr %tmp, align 8, !dbg !6151
  %6 = load ptr, ptr %vc.addr, align 8, !dbg !6163
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %6, i32 0, i32 5, !dbg !6164
  %7 = load i32, ptr %vc_rows, align 8, !dbg !6164
  %8 = load ptr, ptr %vc.addr, align 8, !dbg !6165
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %8, i32 0, i32 4, !dbg !6166
  %9 = load i32, ptr %vc_cols, align 4, !dbg !6166
  %mul = mul i32 %7, %9, !dbg !6167
  store i32 %mul, ptr %size, align 4, !dbg !6168
  %10 = load i8, ptr %attr.addr, align 1, !dbg !6169, !range !5532, !noundef !969
  %tobool29 = trunc i8 %10 to i1, !dbg !6169
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !6171

if.then30:                                        ; preds = %if.end
  %11 = load i8, ptr %unicode.addr, align 1, !dbg !6172, !range !5532, !noundef !969
  %tobool31 = trunc i8 %11 to i1, !dbg !6172
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6175

if.then32:                                        ; preds = %if.then30
  store i32 -95, ptr %retval, align 4, !dbg !6176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

if.end33:                                         ; preds = %if.then30
  %12 = load i32, ptr %size, align 4, !dbg !6177
  %mul34 = mul i32 2, %12, !dbg !6178
  %add = add i32 %mul34, 4, !dbg !6179
  store i32 %add, ptr %size, align 4, !dbg !6180
  br label %if.end39, !dbg !6181

if.else:                                          ; preds = %if.end
  %13 = load i8, ptr %unicode.addr, align 1, !dbg !6182, !range !5532, !noundef !969
  %tobool35 = trunc i8 %13 to i1, !dbg !6182
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !6184

if.then36:                                        ; preds = %if.else
  %14 = load i32, ptr %size, align 4, !dbg !6185
  %mul37 = mul i32 %14, 4, !dbg !6185
  store i32 %mul37, ptr %size, align 4, !dbg !6185
  br label %if.end38, !dbg !6186

if.end38:                                         ; preds = %if.then36, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end33
  %15 = load i32, ptr %size, align 4, !dbg !6187
  store i32 %15, ptr %retval, align 4, !dbg !6188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6188

cleanup:                                          ; preds = %if.end39, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #18, !dbg !6189
  %16 = load i32, ptr %retval, align 4, !dbg !6189
  ret i32 %16, !dbg !6189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #5 align 16 !dbg !6190 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6196
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !6196
  %1 = load i32, ptr %i_rdev, align 4, !dbg !6196
  %and = and i32 %1, 1048575, !dbg !6196
  ret i32 %and, !dbg !6197
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6198 dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #7 align 16 !dbg !6201 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6210
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !6211
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6212
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !6213
  ret i32 %call, !dbg !6214
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6215 dso_local i32 @is_console_locked() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6216 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6224, metadata !DIExpression()), !dbg !6226
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6225, metadata !DIExpression()), !dbg !6227
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6228
  %1 = load i64, ptr %size.addr, align 8, !dbg !6229
  %conv = trunc i64 %1 to i32, !dbg !6229
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6230
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6231
  %3 = load i64, ptr %size.addr, align 8, !dbg !6231
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6231
  ret void, !dbg !6232
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #7 align 16 !dbg !6233 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6236, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6238
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !6239
  ret i32 %call, !dbg !6240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6241 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6247, metadata !DIExpression()), !dbg !6249
  ret i1 true, !dbg !6250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6251 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6256, metadata !DIExpression()), !dbg !6259
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6257, metadata !DIExpression()), !dbg !6260
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6258, metadata !DIExpression()), !dbg !6261
  ret void, !dbg !6262
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #7 align 16 !dbg !6263 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6268
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6268
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6268
  ret i32 %1, !dbg !6269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6270 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_read_buf_uni(ptr noundef %vc, ptr noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef zeroext %viewed) #0 align 16 !dbg !6274 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %con_buf.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %nr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6278, metadata !DIExpression()), !dbg !6288
  store ptr %con_buf, ptr %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_buf.addr, metadata !6279, metadata !DIExpression()), !dbg !6289
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6280, metadata !DIExpression()), !dbg !6290
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6281, metadata !DIExpression()), !dbg !6291
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, ptr %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %viewed.addr, metadata !6282, metadata !DIExpression()), !dbg !6292
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #18, !dbg !6293
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6283, metadata !DIExpression()), !dbg !6294
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #18, !dbg !6293
  call void @llvm.dbg.declare(metadata ptr %row, metadata !6284, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #18, !dbg !6293
  call void @llvm.dbg.declare(metadata ptr %col, metadata !6285, metadata !DIExpression()), !dbg !6296
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcol) #18, !dbg !6293
  call void @llvm.dbg.declare(metadata ptr %maxcol, metadata !6286, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6298
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4, !dbg !6299
  %1 = load i32, ptr %vc_cols, align 4, !dbg !6299
  store i32 %1, ptr %maxcol, align 4, !dbg !6297
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6287, metadata !DIExpression()), !dbg !6301
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !6302
  %call = call i32 @vc_uniscr_check(ptr noundef %2) #17, !dbg !6303
  store i32 %call, ptr %ret, align 4, !dbg !6304
  %3 = load i32, ptr %ret, align 4, !dbg !6305
  %tobool = icmp ne i32 %3, 0, !dbg !6305
  br i1 %tobool, label %if.then, label %if.end, !dbg !6307

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !6308
  store i32 %4, ptr %retval, align 4, !dbg !6309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6309

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %pos.addr, align 4, !dbg !6310
  %div = udiv i32 %5, 4, !dbg !6310
  store i32 %div, ptr %pos.addr, align 4, !dbg !6310
  %6 = load i32, ptr %pos.addr, align 4, !dbg !6311
  %7 = load i32, ptr %maxcol, align 4, !dbg !6312
  %div1 = udiv i32 %6, %7, !dbg !6313
  store i32 %div1, ptr %row, align 4, !dbg !6314
  %8 = load i32, ptr %pos.addr, align 4, !dbg !6315
  %9 = load i32, ptr %maxcol, align 4, !dbg !6316
  %rem = urem i32 %8, %9, !dbg !6317
  store i32 %rem, ptr %col, align 4, !dbg !6318
  %10 = load i32, ptr %maxcol, align 4, !dbg !6319
  %11 = load i32, ptr %col, align 4, !dbg !6320
  %sub = sub i32 %10, %11, !dbg !6321
  store i32 %sub, ptr %nr, align 4, !dbg !6322
  br label %do.body, !dbg !6323

do.body:                                          ; preds = %do.cond, %if.end
  %12 = load i32, ptr %nr, align 4, !dbg !6324
  %13 = load i32, ptr %count.addr, align 4, !dbg !6327
  %div2 = udiv i32 %13, 4, !dbg !6328
  %cmp = icmp ugt i32 %12, %div2, !dbg !6329
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !6330

if.then3:                                         ; preds = %do.body
  %14 = load i32, ptr %count.addr, align 4, !dbg !6331
  %div4 = udiv i32 %14, 4, !dbg !6332
  store i32 %div4, ptr %nr, align 4, !dbg !6333
  br label %if.end5, !dbg !6334

if.end5:                                          ; preds = %if.then3, %do.body
  %15 = load ptr, ptr %vc.addr, align 8, !dbg !6335
  %16 = load ptr, ptr %con_buf.addr, align 8, !dbg !6336
  %17 = load i8, ptr %viewed.addr, align 1, !dbg !6337, !range !5532, !noundef !969
  %tobool6 = trunc i8 %17 to i1, !dbg !6337
  %18 = load i32, ptr %row, align 4, !dbg !6338
  %19 = load i32, ptr %col, align 4, !dbg !6339
  %20 = load i32, ptr %nr, align 4, !dbg !6340
  call void @vc_uniscr_copy_line(ptr noundef %15, ptr noundef %16, i1 noundef zeroext %tobool6, i32 noundef %18, i32 noundef %19, i32 noundef %20) #17, !dbg !6341
  %21 = load i32, ptr %nr, align 4, !dbg !6342
  %mul = mul i32 %21, 4, !dbg !6343
  %22 = load ptr, ptr %con_buf.addr, align 8, !dbg !6344
  %idx.ext = zext i32 %mul to i64, !dbg !6344
  %add.ptr = getelementptr i8, ptr %22, i64 %idx.ext, !dbg !6344
  store ptr %add.ptr, ptr %con_buf.addr, align 8, !dbg !6344
  %23 = load i32, ptr %nr, align 4, !dbg !6345
  %mul7 = mul i32 %23, 4, !dbg !6346
  %24 = load i32, ptr %count.addr, align 4, !dbg !6347
  %sub8 = sub i32 %24, %mul7, !dbg !6347
  store i32 %sub8, ptr %count.addr, align 4, !dbg !6347
  %25 = load i32, ptr %row, align 4, !dbg !6348
  %inc = add i32 %25, 1, !dbg !6348
  store i32 %inc, ptr %row, align 4, !dbg !6348
  store i32 0, ptr %col, align 4, !dbg !6349
  %26 = load i32, ptr %maxcol, align 4, !dbg !6350
  store i32 %26, ptr %nr, align 4, !dbg !6351
  br label %do.cond, !dbg !6352

do.cond:                                          ; preds = %if.end5
  %27 = load i32, ptr %count.addr, align 4, !dbg !6353
  %tobool9 = icmp ne i32 %27, 0, !dbg !6352
  br i1 %tobool9, label %do.body, label %do.end, !dbg !6352, !llvm.loop !6354

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !6356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6356

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcol) #18, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #18, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #18, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #18, !dbg !6357
  %28 = load i32, ptr %retval, align 4, !dbg !6357
  ret i32 %28, !dbg !6357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vcs_read_buf_noattr(ptr noundef %vc, ptr noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef zeroext %viewed) #0 align 16 !dbg !6358 {
entry:
  %vc.addr = alloca ptr, align 8
  %con_buf.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %org = alloca ptr, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6362, metadata !DIExpression()), !dbg !6370
  store ptr %con_buf, ptr %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_buf.addr, metadata !6363, metadata !DIExpression()), !dbg !6371
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6364, metadata !DIExpression()), !dbg !6372
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6365, metadata !DIExpression()), !dbg !6373
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, ptr %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %viewed.addr, metadata !6366, metadata !DIExpression()), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #18, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %org, metadata !6367, metadata !DIExpression()), !dbg !6376
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #18, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %col, metadata !6368, metadata !DIExpression()), !dbg !6378
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcol) #18, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %maxcol, metadata !6369, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6380
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4, !dbg !6381
  %1 = load i32, ptr %vc_cols, align 4, !dbg !6381
  store i32 %1, ptr %maxcol, align 4, !dbg !6379
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !6382
  %3 = load i32, ptr %pos.addr, align 4, !dbg !6383
  %4 = load i8, ptr %viewed.addr, align 1, !dbg !6384, !range !5532, !noundef !969
  %tobool = trunc i8 %4 to i1, !dbg !6384
  %call = call ptr @screen_pos(ptr noundef %2, i32 noundef %3, i1 noundef zeroext %tobool) #17, !dbg !6385
  store ptr %call, ptr %org, align 8, !dbg !6386
  %5 = load i32, ptr %pos.addr, align 4, !dbg !6387
  %6 = load i32, ptr %maxcol, align 4, !dbg !6388
  %rem = urem i32 %5, %6, !dbg !6389
  store i32 %rem, ptr %col, align 4, !dbg !6390
  %7 = load i32, ptr %maxcol, align 4, !dbg !6391
  %8 = load i32, ptr %col, align 4, !dbg !6392
  %sub = sub i32 %7, %8, !dbg !6393
  %9 = load i32, ptr %pos.addr, align 4, !dbg !6394
  %add = add i32 %9, %sub, !dbg !6394
  store i32 %add, ptr %pos.addr, align 4, !dbg !6394
  br label %while.cond, !dbg !6395

while.cond:                                       ; preds = %if.end, %entry
  %10 = load i32, ptr %count.addr, align 4, !dbg !6396
  %dec = add i32 %10, -1, !dbg !6396
  store i32 %dec, ptr %count.addr, align 4, !dbg !6396
  %cmp = icmp ugt i32 %10, 0, !dbg !6397
  br i1 %cmp, label %while.body, label %while.end, !dbg !6395

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %vc.addr, align 8, !dbg !6398
  %12 = load ptr, ptr %org, align 8, !dbg !6400
  %incdec.ptr = getelementptr i16, ptr %12, i32 1, !dbg !6400
  store ptr %incdec.ptr, ptr %org, align 8, !dbg !6400
  %call1 = call zeroext i16 @vcs_scr_readw(ptr noundef %11, ptr noundef %12) #17, !dbg !6401
  %conv = zext i16 %call1 to i32, !dbg !6401
  %and = and i32 %conv, 255, !dbg !6402
  %conv2 = trunc i32 %and to i8, !dbg !6403
  %13 = load ptr, ptr %con_buf.addr, align 8, !dbg !6404
  %incdec.ptr3 = getelementptr i8, ptr %13, i32 1, !dbg !6404
  store ptr %incdec.ptr3, ptr %con_buf.addr, align 8, !dbg !6404
  store i8 %conv2, ptr %13, align 1, !dbg !6405
  %14 = load i32, ptr %col, align 4, !dbg !6406
  %inc = add i32 %14, 1, !dbg !6406
  store i32 %inc, ptr %col, align 4, !dbg !6406
  %15 = load i32, ptr %maxcol, align 4, !dbg !6408
  %cmp4 = icmp eq i32 %inc, %15, !dbg !6409
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6410

if.then:                                          ; preds = %while.body
  %16 = load ptr, ptr %vc.addr, align 8, !dbg !6411
  %17 = load i32, ptr %pos.addr, align 4, !dbg !6413
  %18 = load i8, ptr %viewed.addr, align 1, !dbg !6414, !range !5532, !noundef !969
  %tobool6 = trunc i8 %18 to i1, !dbg !6414
  %call7 = call ptr @screen_pos(ptr noundef %16, i32 noundef %17, i1 noundef zeroext %tobool6) #17, !dbg !6415
  store ptr %call7, ptr %org, align 8, !dbg !6416
  store i32 0, ptr %col, align 4, !dbg !6417
  %19 = load i32, ptr %maxcol, align 4, !dbg !6418
  %20 = load i32, ptr %pos.addr, align 4, !dbg !6419
  %add8 = add i32 %20, %19, !dbg !6419
  store i32 %add8, ptr %pos.addr, align 4, !dbg !6419
  br label %if.end, !dbg !6420

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !6395, !llvm.loop !6421

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcol) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #18, !dbg !6423
  ret void, !dbg !6423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_read_buf(ptr noundef %vc, ptr noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef zeroext %viewed, ptr noundef %skip) #0 align 16 !dbg !6424 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %con_buf.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %skip.addr = alloca ptr, align 8
  %org = alloca ptr, align 8
  %con_buf16 = alloca ptr, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %filled = alloca i32, align 4
  %__UNIQUE_ID___x289 = alloca i32, align 4
  %__UNIQUE_ID___y290 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x291 = alloca i32, align 4
  %__UNIQUE_ID___y292 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__UNIQUE_ID___x293 = alloca i32, align 4
  %__UNIQUE_ID___y294 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6428, metadata !DIExpression()), !dbg !6450
  store ptr %con_buf, ptr %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_buf.addr, metadata !6429, metadata !DIExpression()), !dbg !6451
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6430, metadata !DIExpression()), !dbg !6452
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6431, metadata !DIExpression()), !dbg !6453
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, ptr %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %viewed.addr, metadata !6432, metadata !DIExpression()), !dbg !6454
  store ptr %skip, ptr %skip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skip.addr, metadata !6433, metadata !DIExpression()), !dbg !6455
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #18, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %org, metadata !6434, metadata !DIExpression()), !dbg !6457
  call void @llvm.lifetime.start.p0(i64 8, ptr %con_buf16) #18, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %con_buf16, metadata !6435, metadata !DIExpression()), !dbg !6458
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #18, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %col, metadata !6436, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcol) #18, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %maxcol, metadata !6437, metadata !DIExpression()), !dbg !6461
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6462
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4, !dbg !6463
  %1 = load i32, ptr %vc_cols, align 4, !dbg !6463
  store i32 %1, ptr %maxcol, align 4, !dbg !6461
  call void @llvm.lifetime.start.p0(i64 4, ptr %filled) #18, !dbg !6464
  call void @llvm.dbg.declare(metadata ptr %filled, metadata !6438, metadata !DIExpression()), !dbg !6465
  %2 = load i32, ptr %count.addr, align 4, !dbg !6466
  store i32 %2, ptr %filled, align 4, !dbg !6465
  %3 = load i32, ptr %pos.addr, align 4, !dbg !6467
  %cmp = icmp ult i32 %3, 4, !dbg !6468
  br i1 %cmp, label %if.then, label %if.else, !dbg !6469

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x289) #18, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x289, metadata !6439, metadata !DIExpression()), !dbg !6470
  %4 = load ptr, ptr %vc.addr, align 8, !dbg !6470
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 5, !dbg !6470
  %5 = load i32, ptr %vc_rows, align 8, !dbg !6470
  store i32 %5, ptr %__UNIQUE_ID___x289, align 4, !dbg !6470
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y290) #18, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y290, metadata !6443, metadata !DIExpression()), !dbg !6470
  store i32 255, ptr %__UNIQUE_ID___y290, align 4, !dbg !6470
  %6 = load i32, ptr %__UNIQUE_ID___x289, align 4, !dbg !6470
  %7 = load i32, ptr %__UNIQUE_ID___y290, align 4, !dbg !6470
  %cmp1 = icmp ult i32 %6, %7, !dbg !6470
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6470

cond.true:                                        ; preds = %if.then
  %8 = load i32, ptr %__UNIQUE_ID___x289, align 4, !dbg !6470
  br label %cond.end, !dbg !6470

cond.false:                                       ; preds = %if.then
  %9 = load i32, ptr %__UNIQUE_ID___y290, align 4, !dbg !6470
  br label %cond.end, !dbg !6470

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !6470
  store i32 %cond, ptr %tmp, align 4, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y290) #18, !dbg !6471
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x289) #18, !dbg !6471
  %10 = load i32, ptr %tmp, align 4, !dbg !6470
  %conv = trunc i32 %10 to i8, !dbg !6471
  %11 = load ptr, ptr %con_buf.addr, align 8, !dbg !6472
  %arrayidx = getelementptr i8, ptr %11, i64 0, !dbg !6472
  store i8 %conv, ptr %arrayidx, align 1, !dbg !6473
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x291) #18, !dbg !6474
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x291, metadata !6444, metadata !DIExpression()), !dbg !6474
  %12 = load ptr, ptr %vc.addr, align 8, !dbg !6474
  %vc_cols2 = getelementptr inbounds %struct.vc_data, ptr %12, i32 0, i32 4, !dbg !6474
  %13 = load i32, ptr %vc_cols2, align 4, !dbg !6474
  store i32 %13, ptr %__UNIQUE_ID___x291, align 4, !dbg !6474
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y292) #18, !dbg !6474
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y292, metadata !6446, metadata !DIExpression()), !dbg !6474
  store i32 255, ptr %__UNIQUE_ID___y292, align 4, !dbg !6474
  %14 = load i32, ptr %__UNIQUE_ID___x291, align 4, !dbg !6474
  %15 = load i32, ptr %__UNIQUE_ID___y292, align 4, !dbg !6474
  %cmp4 = icmp ult i32 %14, %15, !dbg !6474
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6474

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, ptr %__UNIQUE_ID___x291, align 4, !dbg !6474
  br label %cond.end8, !dbg !6474

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, ptr %__UNIQUE_ID___y292, align 4, !dbg !6474
  br label %cond.end8, !dbg !6474

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ], !dbg !6474
  store i32 %cond9, ptr %tmp3, align 4, !dbg !6474
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y292) #18, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x291) #18, !dbg !6475
  %18 = load i32, ptr %tmp3, align 4, !dbg !6474
  %conv10 = trunc i32 %18 to i8, !dbg !6475
  %19 = load ptr, ptr %con_buf.addr, align 8, !dbg !6476
  %arrayidx11 = getelementptr i8, ptr %19, i64 1, !dbg !6476
  store i8 %conv10, ptr %arrayidx11, align 1, !dbg !6477
  %20 = load ptr, ptr %vc.addr, align 8, !dbg !6478
  %21 = load ptr, ptr %con_buf.addr, align 8, !dbg !6479
  %add.ptr = getelementptr i8, ptr %21, i64 2, !dbg !6480
  call void @getconsxy(ptr noundef %20, ptr noundef %add.ptr) #17, !dbg !6481
  %22 = load i32, ptr %pos.addr, align 4, !dbg !6482
  %23 = load ptr, ptr %skip.addr, align 8, !dbg !6483
  %24 = load i32, ptr %23, align 4, !dbg !6484
  %add = add i32 %24, %22, !dbg !6484
  store i32 %add, ptr %23, align 4, !dbg !6484
  %25 = load i32, ptr %pos.addr, align 4, !dbg !6485
  %26 = load i32, ptr %count.addr, align 4, !dbg !6486
  %add12 = add i32 %26, %25, !dbg !6486
  store i32 %add12, ptr %count.addr, align 4, !dbg !6486
  %27 = load i32, ptr %count.addr, align 4, !dbg !6487
  %conv13 = zext i32 %27 to i64, !dbg !6487
  %cmp14 = icmp ugt i64 %conv13, 4096, !dbg !6489
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !6490

if.then16:                                        ; preds = %cond.end8
  store i32 4096, ptr %count.addr, align 4, !dbg !6491
  %28 = load i32, ptr %count.addr, align 4, !dbg !6493
  %29 = load i32, ptr %pos.addr, align 4, !dbg !6494
  %sub = sub i32 %28, %29, !dbg !6495
  store i32 %sub, ptr %filled, align 4, !dbg !6496
  br label %if.end, !dbg !6497

if.end:                                           ; preds = %if.then16, %cond.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x293) #18, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x293, metadata !6447, metadata !DIExpression()), !dbg !6498
  store i32 4, ptr %__UNIQUE_ID___x293, align 4, !dbg !6498
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y294) #18, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y294, metadata !6449, metadata !DIExpression()), !dbg !6498
  %30 = load i32, ptr %count.addr, align 4, !dbg !6498
  store i32 %30, ptr %__UNIQUE_ID___y294, align 4, !dbg !6498
  %31 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !6498
  %32 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !6498
  %cmp18 = icmp ult i32 %31, %32, !dbg !6498
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !6498

cond.true20:                                      ; preds = %if.end
  %33 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !6498
  br label %cond.end22, !dbg !6498

cond.false21:                                     ; preds = %if.end
  %34 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !6498
  br label %cond.end22, !dbg !6498

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ %33, %cond.true20 ], [ %34, %cond.false21 ], !dbg !6498
  store i32 %cond23, ptr %tmp17, align 4, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y294) #18, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x293) #18, !dbg !6499
  %35 = load i32, ptr %tmp17, align 4, !dbg !6498
  %36 = load i32, ptr %count.addr, align 4, !dbg !6500
  %sub24 = sub i32 %36, %35, !dbg !6500
  store i32 %sub24, ptr %count.addr, align 4, !dbg !6500
  store i32 4, ptr %pos.addr, align 4, !dbg !6501
  %37 = load ptr, ptr %con_buf.addr, align 8, !dbg !6502
  %add.ptr25 = getelementptr i8, ptr %37, i64 4, !dbg !6502
  store ptr %add.ptr25, ptr %con_buf.addr, align 8, !dbg !6502
  br label %if.end35, !dbg !6503

if.else:                                          ; preds = %entry
  %38 = load i32, ptr %pos.addr, align 4, !dbg !6504
  %and = and i32 %38, 1, !dbg !6506
  %tobool = icmp ne i32 %and, 0, !dbg !6506
  br i1 %tobool, label %if.then26, label %if.end34, !dbg !6507

if.then26:                                        ; preds = %if.else
  %39 = load ptr, ptr %skip.addr, align 8, !dbg !6508
  %40 = load i32, ptr %39, align 4, !dbg !6510
  %inc = add i32 %40, 1, !dbg !6510
  store i32 %inc, ptr %39, align 4, !dbg !6510
  %41 = load i32, ptr %count.addr, align 4, !dbg !6511
  %conv27 = zext i32 %41 to i64, !dbg !6511
  %cmp28 = icmp ult i64 %conv27, 4096, !dbg !6513
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !6514

if.then30:                                        ; preds = %if.then26
  %42 = load i32, ptr %count.addr, align 4, !dbg !6515
  %inc31 = add i32 %42, 1, !dbg !6515
  store i32 %inc31, ptr %count.addr, align 4, !dbg !6515
  br label %if.end33, !dbg !6516

if.else32:                                        ; preds = %if.then26
  %43 = load i32, ptr %filled, align 4, !dbg !6517
  %dec = add i32 %43, -1, !dbg !6517
  store i32 %dec, ptr %filled, align 4, !dbg !6517
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then30
  br label %if.end34, !dbg !6518

if.end34:                                         ; preds = %if.end33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %cond.end22
  %44 = load i32, ptr %count.addr, align 4, !dbg !6519
  %tobool36 = icmp ne i32 %44, 0, !dbg !6519
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !6521

if.then37:                                        ; preds = %if.end35
  %45 = load i32, ptr %filled, align 4, !dbg !6522
  store i32 %45, ptr %retval, align 4, !dbg !6523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6523

if.end38:                                         ; preds = %if.end35
  %46 = load i32, ptr %pos.addr, align 4, !dbg !6524
  %sub39 = sub i32 %46, 4, !dbg !6524
  store i32 %sub39, ptr %pos.addr, align 4, !dbg !6524
  %47 = load i32, ptr %pos.addr, align 4, !dbg !6525
  %div = udiv i32 %47, 2, !dbg !6525
  store i32 %div, ptr %pos.addr, align 4, !dbg !6525
  %48 = load i32, ptr %pos.addr, align 4, !dbg !6526
  %49 = load i32, ptr %maxcol, align 4, !dbg !6527
  %rem = urem i32 %48, %49, !dbg !6528
  store i32 %rem, ptr %col, align 4, !dbg !6529
  %50 = load ptr, ptr %vc.addr, align 8, !dbg !6530
  %51 = load i32, ptr %pos.addr, align 4, !dbg !6531
  %52 = load i8, ptr %viewed.addr, align 1, !dbg !6532, !range !5532, !noundef !969
  %tobool40 = trunc i8 %52 to i1, !dbg !6532
  %call = call ptr @screen_pos(ptr noundef %50, i32 noundef %51, i1 noundef zeroext %tobool40) #17, !dbg !6533
  store ptr %call, ptr %org, align 8, !dbg !6534
  %53 = load i32, ptr %maxcol, align 4, !dbg !6535
  %54 = load i32, ptr %col, align 4, !dbg !6536
  %sub41 = sub i32 %53, %54, !dbg !6537
  %55 = load i32, ptr %pos.addr, align 4, !dbg !6538
  %add42 = add i32 %55, %sub41, !dbg !6538
  store i32 %add42, ptr %pos.addr, align 4, !dbg !6538
  %56 = load i32, ptr %count.addr, align 4, !dbg !6539
  %add43 = add i32 %56, 1, !dbg !6540
  %div44 = udiv i32 %add43, 2, !dbg !6541
  store i32 %div44, ptr %count.addr, align 4, !dbg !6542
  %57 = load ptr, ptr %con_buf.addr, align 8, !dbg !6543
  store ptr %57, ptr %con_buf16, align 8, !dbg !6544
  br label %while.cond, !dbg !6545

while.cond:                                       ; preds = %if.end56, %if.end38
  %58 = load i32, ptr %count.addr, align 4, !dbg !6546
  %tobool45 = icmp ne i32 %58, 0, !dbg !6545
  br i1 %tobool45, label %while.body, label %while.end, !dbg !6545

while.body:                                       ; preds = %while.cond
  %59 = load ptr, ptr %vc.addr, align 8, !dbg !6547
  %60 = load ptr, ptr %org, align 8, !dbg !6549
  %incdec.ptr = getelementptr i16, ptr %60, i32 1, !dbg !6549
  store ptr %incdec.ptr, ptr %org, align 8, !dbg !6549
  %call46 = call zeroext i16 @vcs_scr_readw(ptr noundef %59, ptr noundef %60) #17, !dbg !6550
  %61 = load ptr, ptr %con_buf16, align 8, !dbg !6551
  %incdec.ptr47 = getelementptr i16, ptr %61, i32 1, !dbg !6551
  store ptr %incdec.ptr47, ptr %con_buf16, align 8, !dbg !6551
  store i16 %call46, ptr %61, align 2, !dbg !6552
  %62 = load i32, ptr %count.addr, align 4, !dbg !6553
  %dec48 = add i32 %62, -1, !dbg !6553
  store i32 %dec48, ptr %count.addr, align 4, !dbg !6553
  %63 = load i32, ptr %col, align 4, !dbg !6554
  %inc49 = add i32 %63, 1, !dbg !6554
  store i32 %inc49, ptr %col, align 4, !dbg !6554
  %64 = load i32, ptr %maxcol, align 4, !dbg !6556
  %cmp50 = icmp eq i32 %inc49, %64, !dbg !6557
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !6558

if.then52:                                        ; preds = %while.body
  %65 = load ptr, ptr %vc.addr, align 8, !dbg !6559
  %66 = load i32, ptr %pos.addr, align 4, !dbg !6561
  %67 = load i8, ptr %viewed.addr, align 1, !dbg !6562, !range !5532, !noundef !969
  %tobool53 = trunc i8 %67 to i1, !dbg !6562
  %call54 = call ptr @screen_pos(ptr noundef %65, i32 noundef %66, i1 noundef zeroext %tobool53) #17, !dbg !6563
  store ptr %call54, ptr %org, align 8, !dbg !6564
  store i32 0, ptr %col, align 4, !dbg !6565
  %68 = load i32, ptr %maxcol, align 4, !dbg !6566
  %69 = load i32, ptr %pos.addr, align 4, !dbg !6567
  %add55 = add i32 %69, %68, !dbg !6567
  store i32 %add55, ptr %pos.addr, align 4, !dbg !6567
  br label %if.end56, !dbg !6568

if.end56:                                         ; preds = %if.then52, %while.body
  br label %while.cond, !dbg !6545, !llvm.loop !6569

while.end:                                        ; preds = %while.cond
  %70 = load i32, ptr %filled, align 4, !dbg !6571
  store i32 %70, ptr %retval, align 4, !dbg !6572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6572

cleanup:                                          ; preds = %while.end, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %filled) #18, !dbg !6573
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcol) #18, !dbg !6573
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #18, !dbg !6573
  call void @llvm.lifetime.end.p0(i64 8, ptr %con_buf16) #18, !dbg !6573
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #18, !dbg !6573
  %71 = load i32, ptr %retval, align 4, !dbg !6573
  ret i32 %71, !dbg !6573
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !6574 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6579, metadata !DIExpression()), !dbg !6582
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6580, metadata !DIExpression()), !dbg !6583
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6581, metadata !DIExpression()), !dbg !6584
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6585
  %1 = load i64, ptr %n.addr, align 8, !dbg !6587
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !6588
  br i1 %call, label %if.then, label %if.end, !dbg !6589

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6590
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6591
  %4 = load i64, ptr %n.addr, align 8, !dbg !6592
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !6593
  store i64 %call1, ptr %n.addr, align 8, !dbg !6594
  br label %if.end, !dbg !6595

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6596
  ret i64 %5, !dbg !6597
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6598 dso_local void @free_pages(i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6601 dso_local i32 @vc_uniscr_check(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6603 dso_local void @vc_uniscr_copy_line(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6606 dso_local ptr @screen_pos(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6609 dso_local zeroext i16 @vcs_scr_readw(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6613 dso_local void @getconsxy(ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #7 align 16 !dbg !6616 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6620, metadata !DIExpression()), !dbg !6630
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6621, metadata !DIExpression()), !dbg !6631
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6622, metadata !DIExpression()), !dbg !6632
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #18, !dbg !6633
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6623, metadata !DIExpression()), !dbg !6634
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6635
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6636
  %conv = trunc i64 %1 to i32, !dbg !6636
  store i32 %conv, ptr %sz, align 4, !dbg !6634
  %2 = load i32, ptr %sz, align 4, !dbg !6637
  %cmp = icmp sge i32 %2, 0, !dbg !6637
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6637

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6637
  %conv2 = sext i32 %3 to i64, !dbg !6637
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6637
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6637
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6639
  %lnot = xor i1 %5, true, !dbg !6637
  %lnot5 = xor i1 %lnot, true, !dbg !6637
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6637
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6637
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6637
  %tobool = icmp ne i64 %expval, 0, !dbg !6637
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6640

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6641
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6644
  br i1 %7, label %if.else, label %if.then7, !dbg !6645

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6646
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6647
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !6648
  br label %if.end11, !dbg !6648

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6649, !range !5532, !noundef !969
  %tobool8 = trunc i8 %10 to i1, !dbg !6649
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6651

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !6652, !srcloc !6653
  br label %if.end, !dbg !6652

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !6654, !srcloc !6655
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6656

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6624, metadata !DIExpression()), !dbg !6657
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6657
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6657
  %lnot15 = xor i1 %cmp13, true, !dbg !6657
  %lnot17 = xor i1 %lnot15, true, !dbg !6657
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6657
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6657
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6658
  %tobool19 = icmp ne i32 %12, 0, !dbg !6658
  %lnot20 = xor i1 %tobool19, true, !dbg !6658
  %lnot22 = xor i1 %lnot20, true, !dbg !6658
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6658
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6658
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6658
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6658
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6657

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6658

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6627, metadata !DIExpression()), !dbg !6659
  store i32 2307, ptr %__flags, align 4, !dbg !6659
  br label %do.body28, !dbg !6659

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6660

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6660

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6659

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6662
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 249, i32 %13, i64 12) #18, !dbg !6662, !srcloc !6664
  br label %do.cond30, !dbg !6662

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6662

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6659

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6665

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6665

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6658
  br label %do.cond35, !dbg !6659

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6659

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6659

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6657
  %tobool38 = icmp ne i32 %14, 0, !dbg !6657
  %lnot39 = xor i1 %tobool38, true, !dbg !6657
  %lnot41 = xor i1 %lnot39, true, !dbg !6657
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6657
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6657
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6657
  store i64 %expval44, ptr %tmp, align 8, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6667
  %15 = load i64, ptr %tmp, align 8, !dbg !6657
  %tobool45 = icmp ne i64 %15, 0, !dbg !6667
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6668

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6669

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6670
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6671
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6672, !range !5532, !noundef !969
  %tobool48 = trunc i8 %18 to i1, !dbg !6672
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !6673
  store i1 true, ptr %retval, align 1, !dbg !6674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6674

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #18, !dbg !6675
  %19 = load i1, ptr %retval, align 1, !dbg !6675
  ret i1 %19, !dbg !6675
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6676 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6677 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6682, metadata !DIExpression()), !dbg !6684
  %0 = load i32, ptr %size.addr, align 4, !dbg !6685
  %1 = load i64, ptr %count.addr, align 8, !dbg !6687
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !6688
  ret void, !dbg !6689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6690 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6691 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6692 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6696, metadata !DIExpression()), !dbg !6699
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6697, metadata !DIExpression()), !dbg !6700
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6698, metadata !DIExpression()), !dbg !6701
  ret void, !dbg !6702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6703 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !6704 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6706, metadata !DIExpression()), !dbg !6709
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6707, metadata !DIExpression()), !dbg !6710
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6708, metadata !DIExpression()), !dbg !6711
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6712
  %1 = load i64, ptr %n.addr, align 8, !dbg !6714
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #17, !dbg !6715
  br i1 %call, label %if.then, label %if.end, !dbg !6716

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6717
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6718
  %4 = load i64, ptr %n.addr, align 8, !dbg !6719
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !6720
  store i64 %call1, ptr %n.addr, align 8, !dbg !6721
  br label %if.end, !dbg !6722

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6723
  ret i64 %5, !dbg !6724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vcs_write_buf(ptr noundef %vc, ptr noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef zeroext %viewed, ptr noundef %org0) #0 align 16 !dbg !187 {
entry:
  %retval = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %con_buf.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %org0.addr = alloca ptr, align 8
  %org = alloca ptr, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %c = alloca i8, align 1
  %header = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %w = alloca i16, align 2
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5211, metadata !DIExpression()), !dbg !6725
  store ptr %con_buf, ptr %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_buf.addr, metadata !5212, metadata !DIExpression()), !dbg !6726
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5213, metadata !DIExpression()), !dbg !6727
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5214, metadata !DIExpression()), !dbg !6728
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, ptr %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %viewed.addr, metadata !5215, metadata !DIExpression()), !dbg !6729
  store ptr %org0, ptr %org0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %org0.addr, metadata !5216, metadata !DIExpression()), !dbg !6730
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #18, !dbg !6731
  call void @llvm.dbg.declare(metadata ptr %org, metadata !5217, metadata !DIExpression()), !dbg !6732
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #18, !dbg !6733
  call void @llvm.dbg.declare(metadata ptr %col, metadata !5218, metadata !DIExpression()), !dbg !6734
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcol) #18, !dbg !6733
  call void @llvm.dbg.declare(metadata ptr %maxcol, metadata !5219, metadata !DIExpression()), !dbg !6735
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6736
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4, !dbg !6737
  %1 = load i32, ptr %vc_cols, align 4, !dbg !6737
  store i32 %1, ptr %maxcol, align 4, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5220, metadata !DIExpression()), !dbg !6739
  %2 = load i32, ptr %pos.addr, align 4, !dbg !6740
  %cmp = icmp ult i32 %2, 4, !dbg !6741
  br i1 %cmp, label %if.then, label %if.end6, !dbg !6742

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %header) #18, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %header, metadata !5221, metadata !DIExpression()), !dbg !6744
  %3 = load ptr, ptr %vc.addr, align 8, !dbg !6745
  %arraydecay = getelementptr inbounds [4 x i8], ptr %header, i64 0, i64 0, !dbg !6746
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 2, !dbg !6747
  call void @getconsxy(ptr noundef %3, ptr noundef %add.ptr) #17, !dbg !6748
  br label %while.cond, !dbg !6749

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, ptr %pos.addr, align 4, !dbg !6750
  %cmp1 = icmp ult i32 %4, 4, !dbg !6751
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !6752

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %count.addr, align 4, !dbg !6753
  %cmp2 = icmp ugt i32 %5, 0, !dbg !6754
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !6755
  br i1 %6, label %while.body, label %while.end, !dbg !6749

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %count.addr, align 4, !dbg !6756
  %dec = add i32 %7, -1, !dbg !6756
  store i32 %dec, ptr %count.addr, align 4, !dbg !6756
  %8 = load ptr, ptr %con_buf.addr, align 8, !dbg !6758
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !6758
  store ptr %incdec.ptr, ptr %con_buf.addr, align 8, !dbg !6758
  %9 = load i8, ptr %8, align 1, !dbg !6759
  %10 = load i32, ptr %pos.addr, align 4, !dbg !6760
  %inc = add i32 %10, 1, !dbg !6760
  store i32 %inc, ptr %pos.addr, align 4, !dbg !6760
  %idxprom = zext i32 %10 to i64, !dbg !6761
  %arrayidx = getelementptr [4 x i8], ptr %header, i64 0, i64 %idxprom, !dbg !6761
  store i8 %9, ptr %arrayidx, align 1, !dbg !6762
  br label %while.cond, !dbg !6749, !llvm.loop !6763

while.end:                                        ; preds = %land.end
  %11 = load i8, ptr %viewed.addr, align 1, !dbg !6765, !range !5532, !noundef !969
  %tobool = trunc i8 %11 to i1, !dbg !6765
  br i1 %tobool, label %if.end, label %if.then3, !dbg !6767

if.then3:                                         ; preds = %while.end
  %12 = load ptr, ptr %vc.addr, align 8, !dbg !6768
  %arraydecay4 = getelementptr inbounds [4 x i8], ptr %header, i64 0, i64 0, !dbg !6769
  %add.ptr5 = getelementptr i8, ptr %arraydecay4, i64 2, !dbg !6770
  call void @putconsxy(ptr noundef %12, ptr noundef %add.ptr5) #17, !dbg !6771
  br label %if.end, !dbg !6771

if.end:                                           ; preds = %if.then3, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %header) #18, !dbg !6772
  br label %if.end6, !dbg !6773

if.end6:                                          ; preds = %if.end, %entry
  %13 = load i32, ptr %count.addr, align 4, !dbg !6774
  %tobool7 = icmp ne i32 %13, 0, !dbg !6774
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6776

if.then8:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8, !dbg !6777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6777

if.end9:                                          ; preds = %if.end6
  %14 = load i32, ptr %pos.addr, align 4, !dbg !6778
  %sub = sub i32 %14, 4, !dbg !6778
  store i32 %sub, ptr %pos.addr, align 4, !dbg !6778
  %15 = load i32, ptr %pos.addr, align 4, !dbg !6779
  %div = udiv i32 %15, 2, !dbg !6780
  %16 = load i32, ptr %maxcol, align 4, !dbg !6781
  %rem = urem i32 %div, %16, !dbg !6782
  store i32 %rem, ptr %col, align 4, !dbg !6783
  %17 = load ptr, ptr %vc.addr, align 8, !dbg !6784
  %18 = load i32, ptr %pos.addr, align 4, !dbg !6785
  %div10 = udiv i32 %18, 2, !dbg !6786
  %19 = load i8, ptr %viewed.addr, align 1, !dbg !6787, !range !5532, !noundef !969
  %tobool11 = trunc i8 %19 to i1, !dbg !6787
  %call = call ptr @screen_pos(ptr noundef %17, i32 noundef %div10, i1 noundef zeroext %tobool11) #17, !dbg !6788
  store ptr %call, ptr %org, align 8, !dbg !6789
  %20 = load ptr, ptr %org0.addr, align 8, !dbg !6790
  store ptr %call, ptr %20, align 8, !dbg !6791
  %21 = load i32, ptr %pos.addr, align 4, !dbg !6792
  %and = and i32 %21, 1, !dbg !6794
  %tobool12 = icmp ne i32 %and, 0, !dbg !6794
  br i1 %tobool12, label %if.then13, label %if.end28, !dbg !6795

if.then13:                                        ; preds = %if.end9
  %22 = load i32, ptr %count.addr, align 4, !dbg !6796
  %dec14 = add i32 %22, -1, !dbg !6796
  store i32 %dec14, ptr %count.addr, align 4, !dbg !6796
  %23 = load ptr, ptr %con_buf.addr, align 8, !dbg !6798
  %incdec.ptr15 = getelementptr i8, ptr %23, i32 1, !dbg !6798
  store ptr %incdec.ptr15, ptr %con_buf.addr, align 8, !dbg !6798
  %24 = load i8, ptr %23, align 1, !dbg !6799
  store i8 %24, ptr %c, align 1, !dbg !6800
  %25 = load ptr, ptr %vc.addr, align 8, !dbg !6801
  %26 = load i8, ptr %c, align 1, !dbg !6802
  %27 = load ptr, ptr %vc.addr, align 8, !dbg !6803
  %28 = load ptr, ptr %org, align 8, !dbg !6804
  %call16 = call zeroext i16 @vcs_scr_readw(ptr noundef %27, ptr noundef %28) #17, !dbg !6805
  %conv = trunc i16 %call16 to i8, !dbg !6805
  %call17 = call zeroext i16 @vc_compile_le16(i8 noundef zeroext %26, i8 noundef zeroext %conv) #17, !dbg !6806
  %29 = load ptr, ptr %org, align 8, !dbg !6807
  call void @vcs_scr_writew(ptr noundef %25, i16 noundef zeroext %call17, ptr noundef %29) #17, !dbg !6808
  %30 = load ptr, ptr %org, align 8, !dbg !6809
  %incdec.ptr18 = getelementptr i16, ptr %30, i32 1, !dbg !6809
  store ptr %incdec.ptr18, ptr %org, align 8, !dbg !6809
  %31 = load i32, ptr %pos.addr, align 4, !dbg !6810
  %inc19 = add i32 %31, 1, !dbg !6810
  store i32 %inc19, ptr %pos.addr, align 4, !dbg !6810
  %32 = load i32, ptr %col, align 4, !dbg !6811
  %inc20 = add i32 %32, 1, !dbg !6811
  store i32 %inc20, ptr %col, align 4, !dbg !6811
  %33 = load i32, ptr %maxcol, align 4, !dbg !6813
  %cmp21 = icmp eq i32 %inc20, %33, !dbg !6814
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !6815

if.then23:                                        ; preds = %if.then13
  %34 = load ptr, ptr %vc.addr, align 8, !dbg !6816
  %35 = load i32, ptr %pos.addr, align 4, !dbg !6818
  %div24 = udiv i32 %35, 2, !dbg !6819
  %36 = load i8, ptr %viewed.addr, align 1, !dbg !6820, !range !5532, !noundef !969
  %tobool25 = trunc i8 %36 to i1, !dbg !6820
  %call26 = call ptr @screen_pos(ptr noundef %34, i32 noundef %div24, i1 noundef zeroext %tobool25) #17, !dbg !6821
  store ptr %call26, ptr %org, align 8, !dbg !6822
  store i32 0, ptr %col, align 4, !dbg !6823
  br label %if.end27, !dbg !6824

if.end27:                                         ; preds = %if.then23, %if.then13
  br label %if.end28, !dbg !6825

if.end28:                                         ; preds = %if.end27, %if.end9
  %37 = load i32, ptr %pos.addr, align 4, !dbg !6826
  %div29 = udiv i32 %37, 2, !dbg !6826
  store i32 %div29, ptr %pos.addr, align 4, !dbg !6826
  %38 = load i32, ptr %maxcol, align 4, !dbg !6827
  %39 = load i32, ptr %col, align 4, !dbg !6828
  %sub30 = sub i32 %38, %39, !dbg !6829
  %40 = load i32, ptr %pos.addr, align 4, !dbg !6830
  %add = add i32 %40, %sub30, !dbg !6830
  store i32 %add, ptr %pos.addr, align 4, !dbg !6830
  br label %while.cond31, !dbg !6831

while.cond31:                                     ; preds = %if.end45, %if.end28
  %41 = load i32, ptr %count.addr, align 4, !dbg !6832
  %cmp32 = icmp ugt i32 %41, 1, !dbg !6833
  br i1 %cmp32, label %while.body34, label %while.end46, !dbg !6831

while.body34:                                     ; preds = %while.cond31
  call void @llvm.lifetime.start.p0(i64 2, ptr %w) #18, !dbg !6834
  call void @llvm.dbg.declare(metadata ptr %w, metadata !5225, metadata !DIExpression()), !dbg !6835
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #18, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !5227, metadata !DIExpression()), !dbg !6836
  %42 = load ptr, ptr %con_buf.addr, align 8, !dbg !6836
  store ptr %42, ptr %__pptr, align 8, !dbg !6836
  %43 = load ptr, ptr %__pptr, align 8, !dbg !6836
  %x = getelementptr inbounds %struct.anon.23, ptr %43, i32 0, i32 0, !dbg !6836
  %44 = load i16, ptr %x, align 1, !dbg !6836
  store i16 %44, ptr %tmp, align 2, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #18, !dbg !6837
  %45 = load i16, ptr %tmp, align 2, !dbg !6836
  store i16 %45, ptr %w, align 2, !dbg !6838
  %46 = load ptr, ptr %vc.addr, align 8, !dbg !6839
  %47 = load i16, ptr %w, align 2, !dbg !6840
  %48 = load ptr, ptr %org, align 8, !dbg !6841
  %incdec.ptr35 = getelementptr i16, ptr %48, i32 1, !dbg !6841
  store ptr %incdec.ptr35, ptr %org, align 8, !dbg !6841
  call void @vcs_scr_writew(ptr noundef %46, i16 noundef zeroext %47, ptr noundef %48) #17, !dbg !6842
  %49 = load ptr, ptr %con_buf.addr, align 8, !dbg !6843
  %add.ptr36 = getelementptr i8, ptr %49, i64 2, !dbg !6843
  store ptr %add.ptr36, ptr %con_buf.addr, align 8, !dbg !6843
  %50 = load i32, ptr %count.addr, align 4, !dbg !6844
  %sub37 = sub i32 %50, 2, !dbg !6844
  store i32 %sub37, ptr %count.addr, align 4, !dbg !6844
  %51 = load i32, ptr %col, align 4, !dbg !6845
  %inc38 = add i32 %51, 1, !dbg !6845
  store i32 %inc38, ptr %col, align 4, !dbg !6845
  %52 = load i32, ptr %maxcol, align 4, !dbg !6847
  %cmp39 = icmp eq i32 %inc38, %52, !dbg !6848
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !6849

if.then41:                                        ; preds = %while.body34
  %53 = load ptr, ptr %vc.addr, align 8, !dbg !6850
  %54 = load i32, ptr %pos.addr, align 4, !dbg !6852
  %55 = load i8, ptr %viewed.addr, align 1, !dbg !6853, !range !5532, !noundef !969
  %tobool42 = trunc i8 %55 to i1, !dbg !6853
  %call43 = call ptr @screen_pos(ptr noundef %53, i32 noundef %54, i1 noundef zeroext %tobool42) #17, !dbg !6854
  store ptr %call43, ptr %org, align 8, !dbg !6855
  store i32 0, ptr %col, align 4, !dbg !6856
  %56 = load i32, ptr %maxcol, align 4, !dbg !6857
  %57 = load i32, ptr %pos.addr, align 4, !dbg !6858
  %add44 = add i32 %57, %56, !dbg !6858
  store i32 %add44, ptr %pos.addr, align 4, !dbg !6858
  br label %if.end45, !dbg !6859

if.end45:                                         ; preds = %if.then41, %while.body34
  call void @llvm.lifetime.end.p0(i64 2, ptr %w) #18, !dbg !6860
  br label %while.cond31, !dbg !6831, !llvm.loop !6861

while.end46:                                      ; preds = %while.cond31
  %58 = load i32, ptr %count.addr, align 4, !dbg !6862
  %tobool47 = icmp ne i32 %58, 0, !dbg !6862
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !6864

if.then48:                                        ; preds = %while.end46
  %59 = load ptr, ptr %org, align 8, !dbg !6865
  store ptr %59, ptr %retval, align 8, !dbg !6866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6866

if.end49:                                         ; preds = %while.end46
  %60 = load ptr, ptr %con_buf.addr, align 8, !dbg !6867
  %incdec.ptr50 = getelementptr i8, ptr %60, i32 1, !dbg !6867
  store ptr %incdec.ptr50, ptr %con_buf.addr, align 8, !dbg !6867
  %61 = load i8, ptr %60, align 1, !dbg !6868
  store i8 %61, ptr %c, align 1, !dbg !6869
  %62 = load ptr, ptr %vc.addr, align 8, !dbg !6870
  %63 = load ptr, ptr %vc.addr, align 8, !dbg !6871
  %64 = load ptr, ptr %org, align 8, !dbg !6872
  %call51 = call zeroext i16 @vcs_scr_readw(ptr noundef %63, ptr noundef %64) #17, !dbg !6873
  %conv52 = zext i16 %call51 to i32, !dbg !6873
  %shr = ashr i32 %conv52, 8, !dbg !6874
  %conv53 = trunc i32 %shr to i8, !dbg !6873
  %65 = load i8, ptr %c, align 1, !dbg !6875
  %call54 = call zeroext i16 @vc_compile_le16(i8 noundef zeroext %conv53, i8 noundef zeroext %65) #17, !dbg !6876
  %66 = load ptr, ptr %org, align 8, !dbg !6877
  call void @vcs_scr_writew(ptr noundef %62, i16 noundef zeroext %call54, ptr noundef %66) #17, !dbg !6878
  %67 = load ptr, ptr %org, align 8, !dbg !6879
  store ptr %67, ptr %retval, align 8, !dbg !6880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6880

cleanup:                                          ; preds = %if.end49, %if.then48, %if.then8
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !6881
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcol) #18, !dbg !6881
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #18, !dbg !6881
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #18, !dbg !6881
  %68 = load ptr, ptr %retval, align 8, !dbg !6881
  ret ptr %68, !dbg !6881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vcs_write_buf_noattr(ptr noundef %vc, ptr noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef zeroext %viewed, ptr noundef %org0) #0 align 16 !dbg !6882 {
entry:
  %vc.addr = alloca ptr, align 8
  %con_buf.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %org0.addr = alloca ptr, align 8
  %org = alloca ptr, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6884, metadata !DIExpression()), !dbg !6895
  store ptr %con_buf, ptr %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_buf.addr, metadata !6885, metadata !DIExpression()), !dbg !6896
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6886, metadata !DIExpression()), !dbg !6897
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6887, metadata !DIExpression()), !dbg !6898
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, ptr %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %viewed.addr, metadata !6888, metadata !DIExpression()), !dbg !6899
  store ptr %org0, ptr %org0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %org0.addr, metadata !6889, metadata !DIExpression()), !dbg !6900
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #18, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %org, metadata !6890, metadata !DIExpression()), !dbg !6902
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #18, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %col, metadata !6891, metadata !DIExpression()), !dbg !6904
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcol) #18, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %maxcol, metadata !6892, metadata !DIExpression()), !dbg !6905
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6906
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4, !dbg !6907
  %1 = load i32, ptr %vc_cols, align 4, !dbg !6907
  store i32 %1, ptr %maxcol, align 4, !dbg !6905
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !6908
  %3 = load i32, ptr %pos.addr, align 4, !dbg !6909
  %4 = load i8, ptr %viewed.addr, align 1, !dbg !6910, !range !5532, !noundef !969
  %tobool = trunc i8 %4 to i1, !dbg !6910
  %call = call ptr @screen_pos(ptr noundef %2, i32 noundef %3, i1 noundef zeroext %tobool) #17, !dbg !6911
  store ptr %call, ptr %org, align 8, !dbg !6912
  %5 = load ptr, ptr %org0.addr, align 8, !dbg !6913
  store ptr %call, ptr %5, align 8, !dbg !6914
  %6 = load i32, ptr %pos.addr, align 4, !dbg !6915
  %7 = load i32, ptr %maxcol, align 4, !dbg !6916
  %rem = urem i32 %6, %7, !dbg !6917
  store i32 %rem, ptr %col, align 4, !dbg !6918
  %8 = load i32, ptr %maxcol, align 4, !dbg !6919
  %9 = load i32, ptr %col, align 4, !dbg !6920
  %sub = sub i32 %8, %9, !dbg !6921
  %10 = load i32, ptr %pos.addr, align 4, !dbg !6922
  %add = add i32 %10, %sub, !dbg !6922
  store i32 %add, ptr %pos.addr, align 4, !dbg !6922
  br label %while.cond, !dbg !6923

while.cond:                                       ; preds = %if.end, %entry
  %11 = load i32, ptr %count.addr, align 4, !dbg !6924
  %cmp = icmp ugt i32 %11, 0, !dbg !6925
  br i1 %cmp, label %while.body, label %while.end, !dbg !6923

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !6926
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6893, metadata !DIExpression()), !dbg !6927
  %12 = load ptr, ptr %con_buf.addr, align 8, !dbg !6928
  %incdec.ptr = getelementptr i8, ptr %12, i32 1, !dbg !6928
  store ptr %incdec.ptr, ptr %con_buf.addr, align 8, !dbg !6928
  %13 = load i8, ptr %12, align 1, !dbg !6929
  store i8 %13, ptr %c, align 1, !dbg !6927
  %14 = load i32, ptr %count.addr, align 4, !dbg !6930
  %dec = add i32 %14, -1, !dbg !6930
  store i32 %dec, ptr %count.addr, align 4, !dbg !6930
  %15 = load ptr, ptr %vc.addr, align 8, !dbg !6931
  %16 = load ptr, ptr %vc.addr, align 8, !dbg !6932
  %17 = load ptr, ptr %org, align 8, !dbg !6933
  %call1 = call zeroext i16 @vcs_scr_readw(ptr noundef %16, ptr noundef %17) #17, !dbg !6934
  %conv = zext i16 %call1 to i32, !dbg !6934
  %and = and i32 %conv, 65280, !dbg !6935
  %18 = load i8, ptr %c, align 1, !dbg !6936
  %conv2 = zext i8 %18 to i32, !dbg !6936
  %or = or i32 %and, %conv2, !dbg !6937
  %conv3 = trunc i32 %or to i16, !dbg !6938
  %19 = load ptr, ptr %org, align 8, !dbg !6939
  call void @vcs_scr_writew(ptr noundef %15, i16 noundef zeroext %conv3, ptr noundef %19) #17, !dbg !6940
  %20 = load ptr, ptr %org, align 8, !dbg !6941
  %incdec.ptr4 = getelementptr i16, ptr %20, i32 1, !dbg !6941
  store ptr %incdec.ptr4, ptr %org, align 8, !dbg !6941
  %21 = load i32, ptr %col, align 4, !dbg !6942
  %inc = add i32 %21, 1, !dbg !6942
  store i32 %inc, ptr %col, align 4, !dbg !6942
  %22 = load i32, ptr %maxcol, align 4, !dbg !6944
  %cmp5 = icmp eq i32 %inc, %22, !dbg !6945
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6946

if.then:                                          ; preds = %while.body
  %23 = load ptr, ptr %vc.addr, align 8, !dbg !6947
  %24 = load i32, ptr %pos.addr, align 4, !dbg !6949
  %25 = load i8, ptr %viewed.addr, align 1, !dbg !6950, !range !5532, !noundef !969
  %tobool7 = trunc i8 %25 to i1, !dbg !6950
  %call8 = call ptr @screen_pos(ptr noundef %23, i32 noundef %24, i1 noundef zeroext %tobool7) #17, !dbg !6951
  store ptr %call8, ptr %org, align 8, !dbg !6952
  store i32 0, ptr %col, align 4, !dbg !6953
  %26 = load i32, ptr %maxcol, align 4, !dbg !6954
  %27 = load i32, ptr %pos.addr, align 4, !dbg !6955
  %add9 = add i32 %27, %26, !dbg !6955
  store i32 %add9, ptr %pos.addr, align 4, !dbg !6955
  br label %if.end, !dbg !6956

if.end:                                           ; preds = %if.then, %while.body
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !6957
  br label %while.cond, !dbg !6923, !llvm.loop !6958

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %org, align 8, !dbg !6959
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcol) #18, !dbg !6960
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #18, !dbg !6960
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #18, !dbg !6960
  ret ptr %28, !dbg !6961
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6962 dso_local void @update_region(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6966 dso_local void @vcs_scr_updated(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6967 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6968 dso_local void @putconsxy(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6972 dso_local void @vcs_scr_writew(ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @vc_compile_le16(i8 noundef zeroext %hi, i8 noundef zeroext %lo) #5 align 16 !dbg !6975 {
entry:
  %hi.addr = alloca i8, align 1
  %lo.addr = alloca i8, align 1
  store i8 %hi, ptr %hi.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !6979, metadata !DIExpression()), !dbg !6981
  store i8 %lo, ptr %lo.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %lo.addr, metadata !6980, metadata !DIExpression()), !dbg !6982
  %0 = load i8, ptr %hi.addr, align 1, !dbg !6983
  %conv = zext i8 %0 to i32, !dbg !6983
  %shl = shl i32 %conv, 8, !dbg !6984
  %1 = load i8, ptr %lo.addr, align 1, !dbg !6985
  %conv1 = zext i8 %1 to i32, !dbg !6985
  %or = or i32 %shl, %conv1, !dbg !6986
  %conv2 = trunc i32 %or to i16, !dbg !6987
  ret i16 %conv2, !dbg !6988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vcs_poll_data_get(ptr noundef %file) #0 align 16 !dbg !5290 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %poll = alloca ptr, align 8
  %kill = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5294, metadata !DIExpression()), !dbg !6989
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #18, !dbg !6990
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !5295, metadata !DIExpression()), !dbg !6991
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6992
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6993
  %1 = load ptr, ptr %private_data, align 8, !dbg !6993
  store ptr %1, ptr %poll, align 8, !dbg !6991
  call void @llvm.lifetime.start.p0(i64 8, ptr %kill) #18, !dbg !6990
  call void @llvm.dbg.declare(metadata ptr %kill, metadata !5296, metadata !DIExpression()), !dbg !6994
  store ptr null, ptr %kill, align 8, !dbg !6994
  %2 = load ptr, ptr %poll, align 8, !dbg !6995
  %tobool = icmp ne ptr %2, null, !dbg !6995
  br i1 %tobool, label %if.then, label %if.end, !dbg !6997

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %poll, align 8, !dbg !6998
  store ptr %3, ptr %retval, align 8, !dbg !6999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6999

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 3264) #20, !dbg !7000
  store ptr %call, ptr %poll, align 8, !dbg !7001
  %4 = load ptr, ptr %poll, align 8, !dbg !7002
  %tobool1 = icmp ne ptr %4, null, !dbg !7002
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !7004

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !7005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7005

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %file.addr, align 8, !dbg !7006
  %call4 = call ptr @file_inode(ptr noundef %5) #17, !dbg !7006
  %call5 = call i32 @iminor(ptr noundef %call4) #17, !dbg !7006
  %and = and i32 %call5, 63, !dbg !7006
  %6 = load ptr, ptr %poll, align 8, !dbg !7007
  %cons_num = getelementptr inbounds %struct.vcs_poll_data, ptr %6, i32 0, i32 1, !dbg !7008
  store i32 %and, ptr %cons_num, align 8, !dbg !7009
  br label %do.body, !dbg !7010

do.body:                                          ; preds = %if.end3
  %7 = load ptr, ptr %poll, align 8, !dbg !7011
  %waitq = getelementptr inbounds %struct.vcs_poll_data, ptr %7, i32 0, i32 3, !dbg !7011
  call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef @.str.10, ptr noundef @vcs_poll_data_get.__key) #17, !dbg !7011
  br label %do.cond, !dbg !7011

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7011

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %poll, align 8, !dbg !7013
  %notifier = getelementptr inbounds %struct.vcs_poll_data, ptr %8, i32 0, i32 0, !dbg !7014
  %notifier_call = getelementptr inbounds %struct.notifier_block, ptr %notifier, i32 0, i32 0, !dbg !7015
  store ptr @vcs_notifier, ptr %notifier_call, align 8, !dbg !7016
  %9 = load ptr, ptr %poll, align 8, !dbg !7017
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %9, i32 0, i32 2, !dbg !7018
  store i32 4, ptr %event, align 4, !dbg !7019
  %10 = load ptr, ptr %poll, align 8, !dbg !7020
  %notifier6 = getelementptr inbounds %struct.vcs_poll_data, ptr %10, i32 0, i32 0, !dbg !7022
  %call7 = call i32 @register_vt_notifier(ptr noundef %notifier6) #17, !dbg !7023
  %cmp = icmp ne i32 %call7, 0, !dbg !7024
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !7025

if.then8:                                         ; preds = %do.end
  %11 = load ptr, ptr %poll, align 8, !dbg !7026
  call void @kfree(ptr noundef %11) #17, !dbg !7028
  store ptr null, ptr %retval, align 8, !dbg !7029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7029

if.end9:                                          ; preds = %do.end
  %12 = load ptr, ptr %file.addr, align 8, !dbg !7030
  %f_lock = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 1, !dbg !7031
  call void @spin_lock(ptr noundef %f_lock) #17, !dbg !7032
  %13 = load ptr, ptr %file.addr, align 8, !dbg !7033
  %private_data10 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 15, !dbg !7035
  %14 = load ptr, ptr %private_data10, align 8, !dbg !7035
  %tobool11 = icmp ne ptr %14, null, !dbg !7033
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !7036

if.then12:                                        ; preds = %if.end9
  %15 = load ptr, ptr %poll, align 8, !dbg !7037
  %16 = load ptr, ptr %file.addr, align 8, !dbg !7039
  %private_data13 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 15, !dbg !7040
  store ptr %15, ptr %private_data13, align 8, !dbg !7041
  br label %if.end15, !dbg !7042

if.else:                                          ; preds = %if.end9
  %17 = load ptr, ptr %poll, align 8, !dbg !7043
  store ptr %17, ptr %kill, align 8, !dbg !7045
  %18 = load ptr, ptr %file.addr, align 8, !dbg !7046
  %private_data14 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 15, !dbg !7047
  %19 = load ptr, ptr %private_data14, align 8, !dbg !7047
  store ptr %19, ptr %poll, align 8, !dbg !7048
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %20 = load ptr, ptr %file.addr, align 8, !dbg !7049
  %f_lock16 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 1, !dbg !7050
  call void @spin_unlock(ptr noundef %f_lock16) #17, !dbg !7051
  %21 = load ptr, ptr %kill, align 8, !dbg !7052
  %tobool17 = icmp ne ptr %21, null, !dbg !7052
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !7054

if.then18:                                        ; preds = %if.end15
  %22 = load ptr, ptr %kill, align 8, !dbg !7055
  call void @vcs_poll_data_free(ptr noundef %22) #17, !dbg !7056
  br label %if.end19, !dbg !7056

if.end19:                                         ; preds = %if.then18, %if.end15
  %23 = load ptr, ptr %poll, align 8, !dbg !7057
  store ptr %23, ptr %retval, align 8, !dbg !7058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7058

cleanup:                                          ; preds = %if.end19, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kill) #18, !dbg !7059
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #18, !dbg !7059
  %24 = load ptr, ptr %retval, align 8, !dbg !7059
  ret ptr %24, !dbg !7059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #5 align 16 !dbg !7060 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !7064, metadata !DIExpression()), !dbg !7067
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !7065, metadata !DIExpression()), !dbg !7068
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7066, metadata !DIExpression()), !dbg !7069
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7070
  %tobool = icmp ne ptr %0, null, !dbg !7070
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7072

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !7073
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !7074
  %2 = load ptr, ptr %_qproc, align 8, !dbg !7074
  %tobool1 = icmp ne ptr %2, null, !dbg !7073
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !7075

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !7076
  %tobool3 = icmp ne ptr %3, null, !dbg !7076
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7077

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7078
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !7080
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !7080
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !7081
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !7082
  %8 = load ptr, ptr %p.addr, align 8, !dbg !7083
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !7078
  br label %do.body, !dbg !7084

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !7085

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !7087

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !7085, !srcloc !7089
  br label %do.end6, !dbg !7085

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !7090

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !7091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !7092 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7096, metadata !DIExpression()), !dbg !7098
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7097, metadata !DIExpression()), !dbg !7099
  %0 = load i64, ptr %size.addr, align 8, !dbg !7100
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7101
  %or = or i32 %1, 256, !dbg !7102
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !7103
  ret ptr %call, !dbg !7104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7105 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vcs_notifier(ptr noundef %nb, i64 noundef %code, ptr noundef %_param) #0 align 16 !dbg !7110 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca ptr, align 8
  %code.addr = alloca i64, align 8
  %_param.addr = alloca ptr, align 8
  %param = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %poll = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %currcons = alloca i32, align 4
  %fa_band = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !7112, metadata !DIExpression()), !dbg !7127
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !7113, metadata !DIExpression()), !dbg !7128
  store ptr %_param, ptr %_param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_param.addr, metadata !7114, metadata !DIExpression()), !dbg !7129
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #18, !dbg !7130
  call void @llvm.dbg.declare(metadata ptr %param, metadata !7115, metadata !DIExpression()), !dbg !7131
  %0 = load ptr, ptr %_param.addr, align 8, !dbg !7132
  store ptr %0, ptr %param, align 8, !dbg !7131
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #18, !dbg !7133
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !7121, metadata !DIExpression()), !dbg !7134
  %1 = load ptr, ptr %param, align 8, !dbg !7135
  %vc1 = getelementptr inbounds %struct.vt_notifier_param, ptr %1, i32 0, i32 0, !dbg !7136
  %2 = load ptr, ptr %vc1, align 8, !dbg !7136
  store ptr %2, ptr %vc, align 8, !dbg !7134
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #18, !dbg !7137
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !7122, metadata !DIExpression()), !dbg !7138
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !7139
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7123, metadata !DIExpression()), !dbg !7139
  %3 = load ptr, ptr %nb.addr, align 8, !dbg !7139
  store ptr %3, ptr %__mptr, align 8, !dbg !7139
  %4 = load ptr, ptr %__mptr, align 8, !dbg !7139
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !7139
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7139
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !7140
  %5 = load ptr, ptr %tmp, align 8, !dbg !7139
  store ptr %5, ptr %poll, align 8, !dbg !7138
  call void @llvm.lifetime.start.p0(i64 4, ptr %currcons) #18, !dbg !7141
  call void @llvm.dbg.declare(metadata ptr %currcons, metadata !7125, metadata !DIExpression()), !dbg !7142
  %6 = load ptr, ptr %poll, align 8, !dbg !7143
  %cons_num = getelementptr inbounds %struct.vcs_poll_data, ptr %6, i32 0, i32 1, !dbg !7144
  %7 = load i32, ptr %cons_num, align 8, !dbg !7144
  store i32 %7, ptr %currcons, align 4, !dbg !7142
  call void @llvm.lifetime.start.p0(i64 4, ptr %fa_band) #18, !dbg !7145
  call void @llvm.dbg.declare(metadata ptr %fa_band, metadata !7126, metadata !DIExpression()), !dbg !7146
  %8 = load i64, ptr %code.addr, align 8, !dbg !7147
  switch i64 %8, label %sw.default [
    i64 4, label %sw.bb
    i64 2, label %sw.bb2
  ], !dbg !7148

sw.bb:                                            ; preds = %entry
  store i32 5, ptr %fa_band, align 4, !dbg !7149
  br label %sw.epilog, !dbg !7151

sw.bb2:                                           ; preds = %entry
  store i32 6, ptr %fa_band, align 4, !dbg !7152
  br label %sw.epilog, !dbg !7153

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7154

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %9 = load i32, ptr %currcons, align 4, !dbg !7155
  %cmp = icmp eq i32 %9, 0, !dbg !7157
  br i1 %cmp, label %if.then, label %if.else, !dbg !7158

if.then:                                          ; preds = %sw.epilog
  %10 = load i32, ptr @fg_console, align 4, !dbg !7159
  store i32 %10, ptr %currcons, align 4, !dbg !7160
  br label %if.end, !dbg !7161

if.else:                                          ; preds = %sw.epilog
  %11 = load i32, ptr %currcons, align 4, !dbg !7162
  %dec = add i32 %11, -1, !dbg !7162
  store i32 %dec, ptr %currcons, align 4, !dbg !7162
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr %currcons, align 4, !dbg !7163
  %13 = load ptr, ptr %vc, align 8, !dbg !7165
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %13, i32 0, i32 3, !dbg !7166
  %14 = load i16, ptr %vc_num, align 8, !dbg !7166
  %conv = zext i16 %14 to i32, !dbg !7165
  %cmp3 = icmp ne i32 %12, %conv, !dbg !7167
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !7168

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7169

if.end6:                                          ; preds = %if.end
  %15 = load i64, ptr %code.addr, align 8, !dbg !7170
  %conv7 = trunc i64 %15 to i32, !dbg !7170
  %16 = load ptr, ptr %poll, align 8, !dbg !7171
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %16, i32 0, i32 2, !dbg !7172
  store i32 %conv7, ptr %event, align 4, !dbg !7173
  %17 = load ptr, ptr %poll, align 8, !dbg !7174
  %waitq = getelementptr inbounds %struct.vcs_poll_data, ptr %17, i32 0, i32 3, !dbg !7174
  %call = call i32 @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #17, !dbg !7174
  %18 = load ptr, ptr %poll, align 8, !dbg !7175
  %fasync = getelementptr inbounds %struct.vcs_poll_data, ptr %18, i32 0, i32 4, !dbg !7176
  %19 = load i32, ptr %fa_band, align 4, !dbg !7177
  call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef %19) #17, !dbg !7178
  store i32 1, ptr %retval, align 4, !dbg !7179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7179

cleanup:                                          ; preds = %if.end6, %if.then5, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %fa_band) #18, !dbg !7180
  call void @llvm.lifetime.end.p0(i64 4, ptr %currcons) #18, !dbg !7180
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #18, !dbg !7180
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #18, !dbg !7180
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #18, !dbg !7180
  %20 = load i32, ptr %retval, align 4, !dbg !7180
  ret i32 %20, !dbg !7180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7181 dso_local i32 @register_vt_notifier(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7184 dso_local void @kfree(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !7187 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7192, metadata !DIExpression()), !dbg !7193
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7194
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7194
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !7194
  ret void, !dbg !7195
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !7196 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7198, metadata !DIExpression()), !dbg !7199
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7200
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7200
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !7200
  ret void, !dbg !7201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vcs_poll_data_free(ptr noundef %poll) #0 align 16 !dbg !7202 {
entry:
  %poll.addr = alloca ptr, align 8
  store ptr %poll, ptr %poll.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %poll.addr, metadata !7206, metadata !DIExpression()), !dbg !7207
  %0 = load ptr, ptr %poll.addr, align 8, !dbg !7208
  %notifier = getelementptr inbounds %struct.vcs_poll_data, ptr %0, i32 0, i32 0, !dbg !7209
  %call = call i32 @unregister_vt_notifier(ptr noundef %notifier) #17, !dbg !7210
  %1 = load ptr, ptr %poll.addr, align 8, !dbg !7211
  call void @kfree(ptr noundef %1) #17, !dbg !7212
  ret void, !dbg !7213
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !7214 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7216, metadata !DIExpression()), !dbg !7221
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7217, metadata !DIExpression()), !dbg !7222
  %0 = load i64, ptr %size.addr, align 8, !dbg !7223
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7224
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7225

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7226
  %tobool = icmp ne i64 %2, 0, !dbg !7226
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7227

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !7228
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7218, metadata !DIExpression()), !dbg !7229
  %3 = load i64, ptr %size.addr, align 8, !dbg !7230
  %cmp = icmp ugt i64 %3, 8192, !dbg !7232
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7233

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7234
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7235
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !7236
  store ptr %call, ptr %retval, align 8, !dbg !7237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7237

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7238
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !7238
  store i32 %call2, ptr %index, align 4, !dbg !7239
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7240
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7241
  %9 = ptrtoint ptr %8 to i64, !dbg !7241
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !7242
  %idxprom = zext i32 %call3 to i64, !dbg !7243
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7243
  %10 = load i32, ptr %index, align 4, !dbg !7244
  %idxprom4 = zext i32 %10 to i64, !dbg !7243
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7243
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7243
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7245
  %13 = load i64, ptr %size.addr, align 8, !dbg !7246
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !7247
  store ptr %call6, ptr %retval, align 8, !dbg !7248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7248

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !7249
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7250
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7251
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !7252
  store ptr %call8, ptr %retval, align 8, !dbg !7253
  br label %return, !dbg !7253

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7254
  ret ptr %16, !dbg !7254
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7255 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !7256 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7260, metadata !DIExpression()), !dbg !7262
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7261, metadata !DIExpression()), !dbg !7263
  %0 = load i64, ptr %size.addr, align 8, !dbg !7264
  %tobool = icmp ne i64 %0, 0, !dbg !7264
  br i1 %tobool, label %if.end, label %if.then, !dbg !7266

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7267
  br label %return, !dbg !7267

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7268
  %cmp = icmp ule i64 %1, 8, !dbg !7270
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7271

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7272
  br label %return, !dbg !7272

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7273
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7275
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7276

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7277
  %cmp4 = icmp ule i64 %3, 96, !dbg !7278
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7279

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7280
  br label %return, !dbg !7280

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7281
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7283
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7284

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7285
  %cmp9 = icmp ule i64 %5, 192, !dbg !7286
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7287

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7288
  br label %return, !dbg !7288

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7289
  %cmp12 = icmp ule i64 %6, 8, !dbg !7291
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7292

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7293
  br label %return, !dbg !7293

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7294
  %cmp15 = icmp ule i64 %7, 16, !dbg !7296
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7297

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7298
  br label %return, !dbg !7298

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7299
  %cmp18 = icmp ule i64 %8, 32, !dbg !7301
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7302

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7303
  br label %return, !dbg !7303

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7304
  %cmp21 = icmp ule i64 %9, 64, !dbg !7306
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7307

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7308
  br label %return, !dbg !7308

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7309
  %cmp24 = icmp ule i64 %10, 128, !dbg !7311
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7312

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7313
  br label %return, !dbg !7313

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7314
  %cmp27 = icmp ule i64 %11, 256, !dbg !7316
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7317

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7318
  br label %return, !dbg !7318

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7319
  %cmp30 = icmp ule i64 %12, 512, !dbg !7321
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7322

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7323
  br label %return, !dbg !7323

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7324
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7326
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7327

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7328
  br label %return, !dbg !7328

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7329
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7331
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7332

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7333
  br label %return, !dbg !7333

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7334
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7336
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7337

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7338
  br label %return, !dbg !7338

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7339
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7341
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7342

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7343
  br label %return, !dbg !7343

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7344
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7346
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7347

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7348
  br label %return, !dbg !7348

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7349
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7351
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7352

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7353
  br label %return, !dbg !7353

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7354
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7356
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7357

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7358
  br label %return, !dbg !7358

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7359
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7361
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7362

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7363
  br label %return, !dbg !7363

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7364
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7366
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7367

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7368
  br label %return, !dbg !7368

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7369
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7371
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7372

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7373
  br label %return, !dbg !7373

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7374
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7376
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7377

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7378
  br label %return, !dbg !7378

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7379
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7381
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7382

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7383
  br label %return, !dbg !7383

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7384, !range !5532, !noundef !969
  %tobool69 = trunc i8 %25 to i1, !dbg !7384
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7386

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7387

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #22, !dbg !7388, !srcloc !7391
  unreachable, !dbg !7388

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7392

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7393

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7394

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7396

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7394

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #18, !dbg !7398, !srcloc !7400
  br label %do.end75, !dbg !7398

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7394

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7401
  br label %return, !dbg !7401

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7402
  ret i32 %26, !dbg !7402
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7403 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !7409 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7413, metadata !DIExpression()), !dbg !7415
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7414, metadata !DIExpression()), !dbg !7416
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7417
  %and = and i32 %0, 17, !dbg !7417
  %cmp = icmp eq i32 %and, 0, !dbg !7417
  %lnot = xor i1 %cmp, true, !dbg !7417
  %lnot1 = xor i1 %lnot, true, !dbg !7417
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7417
  %conv = sext i32 %lnot.ext to i64, !dbg !7417
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7417
  %tobool = icmp ne i64 %expval, 0, !dbg !7417
  br i1 %tobool, label %if.then, label %if.end, !dbg !7419

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7420
  br label %return, !dbg !7420

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7421
  %and2 = and i32 %1, 1, !dbg !7423
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7423
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7424

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7425
  br label %return, !dbg !7425

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7426
  br label %return, !dbg !7426

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7428
  ret i32 %2, !dbg !7428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7429 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7430 dso_local void @__compiletime_assert_245() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7431 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7434 dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7438 dso_local void @_raw_spin_lock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7443 dso_local void @_raw_spin_unlock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7444 dso_local i32 @unregister_vt_notifier(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7445 dso_local i32 @vc_cons_allocated(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7448 dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { cold noredzone noreturn }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315}
!llvm.ident = !{!5316}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vc_class", scope: !2, file: !3, line: 789, type: !5307, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/vt/.vc_screen.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/vt/vc_screen\22 -D KBUILD_BASENAME=\22vc_screen\22 -D KBUILD_MODNAME=\22vc_screen\22 -D __KBUILD_MODNAME=kmod_vc_screen -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/vt/vc_screen.ll drivers/tty/vt/vc_screen.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !168, globals: !5250, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/vt/vc_screen.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "23bdcc435157109b8d09cb78be171c9d")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !148, !153, !158}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vc_intensity", file: !142, line: 25, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/console_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc5d6fd39238769b6b364c58144bb535")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "VCI_HALF_BRIGHT", value: 0)
!145 = !DIEnumerator(name: "VCI_NORMAL", value: 1)
!146 = !DIEnumerator(name: "VCI_BOLD", value: 2)
!147 = !DIEnumerator(name: "VCI_MASK", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "con_scroll", file: !149, line: 29, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "SM_UP", value: 0)
!152 = !DIEnumerator(name: "SM_DOWN", value: 1)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 10, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "false", value: 0)
!157 = !DIEnumerator(name: "true", value: 1)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !159, line: 364, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!162 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!163 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!164 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!165 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!166 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!167 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!168 = !{!169, !170, !7, !173, !175, !177, !178, !109, !184, !5145, !1516, !5231}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !176, line: 154, baseType: !7)
!176 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!177 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !180, line: 19, baseType: !181)
!180 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !182, line: 24, baseType: !183)
!182 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !187, file: !3, line: 567, size: 16, elements: !5229)
!187 = distinct !DISubprogram(name: "vcs_write_buf", scope: !3, file: !3, line: 518, type: !188, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!188 = !DISubroutineType(types: !189)
!189 = !{!178, !190, !329, !7, !7, !221, !5209}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_data", file: !142, line: 93, size: 6592, elements: !192)
!192 = !{!193, !5021, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5144, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5164, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5195, !5196, !5197, !5198, !5199, !5200, !5202, !5205, !5207}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !191, file: !142, line: 94, baseType: !194, size: 3008)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !195, line: 101, size: 3008, elements: !196)
!195 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!196 = !{!197, !304, !4944, !4945, !4967, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !5016, !5017, !5018, !5019, !5020}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !194, file: !195, line: 102, baseType: !198, size: 1088)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !199, line: 35, size: 1088, elements: !200)
!199 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!200 = !{!201, !230, !256, !295, !296, !297, !301, !302, !303}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !198, file: !199, line: 36, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !199, line: 10, size: 256, elements: !204)
!204 = !{!205, !215, !216, !217, !218, !219, !220, !223}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !199, line: 11, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !199, line: 11, size: 64, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !199, line: 12, baseType: !202, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !206, file: !199, line: 13, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !211, line: 60, size: 64, elements: !212)
!211 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !211, line: 61, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !203, file: !199, line: 15, baseType: !7, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !199, line: 16, baseType: !7, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !203, file: !199, line: 17, baseType: !7, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !203, file: !199, line: 18, baseType: !7, size: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !203, file: !199, line: 19, baseType: !7, size: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !199, line: 20, baseType: !221, size: 8, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !176, line: 35, baseType: !222)
!222 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !199, line: 22, baseType: !224, align: 64, offset: 256)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !228)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !180, line: 17, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !182, line: 21, baseType: !227)
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !{!229}
!229 = !DISubrange(count: -1)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !198, file: !199, line: 37, baseType: !231, size: 256, offset: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !232, line: 98, size: 256, elements: !233)
!232 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!233 = !{!234, !244, !250}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !232, line: 99, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !236, line: 13, baseType: !237)
!236 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !176, line: 181, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 179, size: 64, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !238, file: !176, line: 180, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !180, line: 22, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !182, line: 30, baseType: !243)
!243 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !231, file: !232, line: 100, baseType: !245, size: 128, offset: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !176, line: 190, size: 128, elements: !246)
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !176, line: 191, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !176, line: 191, baseType: !248, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !231, file: !232, line: 101, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !232, line: 21, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !199, line: 38, baseType: !257, size: 256, offset: 320)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !258, line: 66, size: 256, elements: !259)
!258 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!259 = !{!260, !261, !289, !294}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !257, file: !258, line: 67, baseType: !235, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !257, file: !258, line: 68, baseType: !262, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !263, line: 23, baseType: !264)
!263 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !263, line: 14, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !264, file: !263, line: 15, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !268, line: 44, baseType: !269)
!268 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !268, line: 14, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 15, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 15, size: 32, elements: !273)
!273 = !{!274, !279, !284}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !272, file: !268, line: 16, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !176, line: 174, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 172, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !276, file: !176, line: 173, baseType: !109, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !268, line: 24, baseType: !280, size: 16)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !268, line: 24, size: 16, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !280, file: !268, line: 25, baseType: !225, size: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !280, file: !268, line: 26, baseType: !225, size: 8, offset: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !268, line: 28, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !268, line: 28, size: 32, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !285, file: !268, line: 29, baseType: !179, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !285, file: !268, line: 30, baseType: !179, size: 16, offset: 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !257, file: !258, line: 70, baseType: !290, size: 32, offset: 96)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !291, line: 15, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !290, file: !291, line: 20, baseType: !275, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !257, file: !258, line: 72, baseType: !245, size: 128, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !198, file: !199, line: 39, baseType: !275, size: 32, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !198, file: !199, line: 40, baseType: !203, size: 256, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !198, file: !199, line: 41, baseType: !298, size: 64, offset: 896)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !211, line: 56, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !298, file: !211, line: 57, baseType: !214, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !198, file: !199, line: 42, baseType: !275, size: 32, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !198, file: !199, line: 43, baseType: !109, size: 32, offset: 992)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !198, file: !199, line: 44, baseType: !202, size: 64, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !194, file: !195, line: 103, baseType: !305, size: 64, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !307, line: 193, size: 5248, elements: !308)
!307 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!308 = !{!309, !319, !320, !4661, !4830, !4831, !4832, !4879, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4896, !4897, !4898, !4899, !4900, !4910, !4919, !4920, !4921, !4922, !4923, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4942, !4943}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !306, file: !307, line: 194, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !311, line: 19, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !310, file: !311, line: 20, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !315, line: 113, baseType: !316)
!315 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !315, line: 111, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !316, file: !315, line: 112, baseType: !275, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !306, file: !307, line: 195, baseType: !109, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !306, file: !307, line: 196, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !323)
!323 = !{!324, !4215, !4216, !4219, !4220, !4273, !4343, !4344, !4345, !4346, !4347, !4354, !4446, !4459, !4469, !4473, !4475, !4476, !4477, !4481, !4488, !4489, !4492, !4495, !4499, !4603, !4604, !4605, !4606, !4607, !4608, !4638, !4639, !4640, !4643, !4646, !4655, !4656, !4657, !4658, !4659, !4660}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !322, file: !94, line: 706, baseType: !325, size: 512)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !326, line: 64, size: 512, elements: !327)
!326 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!327 = !{!328, !331, !332, !334, !388, !4117, !4209, !4210, !4211, !4212, !4213, !4214}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !326, line: 65, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !325, file: !326, line: 66, baseType: !245, size: 128, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !325, file: !326, line: 67, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !325, file: !326, line: 68, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !326, line: 168, size: 768, elements: !337)
!337 = !{!338, !339, !348, !349}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !336, file: !326, line: 169, baseType: !245, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !336, file: !326, line: 170, baseType: !340, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !341, line: 29, baseType: !342)
!341 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !341, line: 17, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !341, line: 18, baseType: !345, size: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !341, line: 18, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !345, file: !341, line: 19, baseType: !264, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !336, file: !326, line: 171, baseType: !325, size: 512, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !336, file: !326, line: 172, baseType: !350, size: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !326, line: 133, size: 192, elements: !353)
!353 = !{!354, !361, !366}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !352, file: !326, line: 134, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!109, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !326, line: 135, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!329, !359}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !352, file: !326, line: 136, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!109, !359, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !326, line: 125, size: 20736, elements: !373)
!373 = !{!374, !378, !382, !383, !387}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !372, file: !326, line: 126, baseType: !375, size: 192)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 3)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !372, file: !326, line: 127, baseType: !379, size: 4096, offset: 192)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 4096, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !372, file: !326, line: 128, baseType: !109, size: 32, offset: 4288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !372, file: !326, line: 129, baseType: !384, size: 16384, offset: 4320)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 16384, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 2048)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !372, file: !326, line: 130, baseType: !109, size: 32, offset: 20704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !325, file: !326, line: 69, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !326, line: 116, size: 384, elements: !392)
!392 = !{!393, !397, !425, !4079, !4107, !4111}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !391, file: !326, line: 117, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !333}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !391, file: !326, line: 118, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !401, line: 254, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!402 = !{!403, !418}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !400, file: !401, line: 255, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !333, !412, !173}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !176, line: 66, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !409, line: 73, baseType: !410)
!409 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !409, line: 15, baseType: !411)
!411 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !401, line: 30, size: 128, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !413, file: !401, line: 31, baseType: !329, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !413, file: !401, line: 32, baseType: !417, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !176, line: 24, baseType: !183)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !400, file: !401, line: 256, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!407, !333, !412, !329, !422}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 61, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !409, line: 72, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !409, line: 16, baseType: !177)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !391, file: !326, line: 119, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !401, line: 84, size: 320, elements: !430)
!430 = !{!431, !432, !436, !4075, !4077}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !429, file: !401, line: 85, baseType: !329, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !429, file: !401, line: 86, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!417, !333, !412, !109}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !429, file: !401, line: 88, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!417, !333, !440, !109}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !401, line: 175, size: 512, elements: !442)
!442 = !{!443, !444, !445, !446, !4066, !4070, !4071}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !441, file: !401, line: 176, baseType: !413, size: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !441, file: !401, line: 177, baseType: !422, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !441, file: !401, line: 178, baseType: !169, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !441, file: !401, line: 179, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !452)
!452 = !{!453, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !4060, !4061, !4062, !4063, !4064, !4065}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !451, file: !14, line: 473, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !456)
!456 = !{!457, !458, !459, !467, !468, !475, !476, !479, !480, !3831, !3832, !3833, !3834, !3835, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3875, !3878, !3879, !3880, !3897, !3898, !3899, !3900}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !455, file: !14, line: 642, baseType: !417, size: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !455, file: !14, line: 643, baseType: !183, size: 16, offset: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !455, file: !14, line: 644, baseType: !460, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !461, line: 23, baseType: !462)
!461 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 21, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !462, file: !461, line: 22, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !176, line: 37, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !409, line: 49, baseType: !7)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !455, file: !14, line: 645, baseType: !245, size: 128, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !455, file: !14, line: 646, baseType: !469, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !461, line: 28, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 26, size: 32, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !470, file: !461, line: 27, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !176, line: 38, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !409, line: 50, baseType: !7)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !455, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !455, file: !14, line: 650, baseType: !477, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !455, file: !14, line: 651, baseType: !477, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !455, file: !14, line: 654, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !484)
!484 = !{!485, !3659, !3669, !3673, !3677, !3681, !3685, !3689, !3693, !3697, !3701, !3702, !3706, !3710, !3747, !3776, !3780, !3786, !3790, !3794, !3798, !3802, !3806, !3812, !3816}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !483, file: !14, line: 1967, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !454, !489, !7}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !491, line: 82, size: 1536, elements: !492)
!491 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!492 = !{!493, !494, !504, !512, !513, !533, !534, !538, !551, !3643, !3644, !3645, !3646, !3651, !3652, !3653}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !490, file: !491, line: 84, baseType: !7, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !490, file: !491, line: 85, baseType: !495, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !496, line: 275, baseType: !497)
!496 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !496, line: 275, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !497, file: !496, line: 275, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !496, line: 69, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !496, line: 64, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !501, file: !496, line: 65, baseType: !7, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !490, file: !491, line: 86, baseType: !505, size: 128, offset: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !506, line: 38, size: 128, elements: !507)
!506 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!507 = !{!508, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !506, line: 39, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !505, file: !506, line: 39, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !490, file: !491, line: 87, baseType: !489, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !490, file: !491, line: 88, baseType: !514, size: 128, offset: 256)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !491, line: 49, size: 128, elements: !515)
!515 = !{!516, !530}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !491, line: 50, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !491, line: 50, size: 64, elements: !518)
!518 = !{!519, !526}
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !491, line: 51, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !517, file: !491, line: 51, size: 64, elements: !521)
!521 = !{!522, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !520, file: !491, line: 52, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !180, line: 21, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !182, line: 27, baseType: !7)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !520, file: !491, line: 52, baseType: !523, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !517, file: !491, line: 54, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !180, line: 23, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !182, line: 31, baseType: !529)
!529 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !491, line: 56, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !490, file: !491, line: 89, baseType: !454, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !490, file: !491, line: 91, baseType: !535, size: 256, offset: 448)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !490, file: !491, line: 94, baseType: !539, size: 64, offset: 704)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !540, line: 25, size: 64, elements: !541)
!540 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !540, line: 26, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 26, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !543, file: !540, line: 28, baseType: !528, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !540, line: 30, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !540, line: 30, size: 64, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !547, file: !540, line: 31, baseType: !340, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !540, line: 32, baseType: !109, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !490, file: !491, line: 95, baseType: !552, size: 64, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !491, line: 128, size: 1024, align: 512, elements: !555)
!555 = !{!556, !560, !561, !568, !574, !578, !582, !586, !587, !591, !595, !3633, !3637}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !554, file: !491, line: 129, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!109, !489, !7}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !554, file: !491, line: 130, baseType: !557, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !554, file: !491, line: 131, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!109, !565, !567}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !554, file: !491, line: 132, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!109, !565, !7, !329, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !554, file: !491, line: 134, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!109, !565}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !554, file: !491, line: 135, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!109, !489}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !554, file: !491, line: 136, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !489}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !554, file: !491, line: 137, baseType: !583, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !554, file: !491, line: 138, baseType: !588, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !489, !454}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !554, file: !491, line: 139, baseType: !592, size: 64, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!173, !489, !173, !109}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !554, file: !491, line: 140, baseType: !596, size: 64, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !3632}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !601, line: 70, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!602 = !{!603, !604, !3628, !3629}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !600, file: !601, line: 71, baseType: !489, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !600, file: !601, line: 72, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !607)
!607 = !{!608, !609, !612, !613, !614, !617, !1063, !2142, !2182, !2267, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2284, !2288, !2289, !2292, !2295, !2298, !2301, !2302, !2303, !2344, !3561, !3562, !3563, !3564, !3565, !3566, !3569, !3571, !3578, !3579, !3580, !3581, !3582, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !606, file: !14, line: 1191, baseType: !245, size: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !606, file: !14, line: 1192, baseType: !610, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !176, line: 21, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !176, line: 18, baseType: !523)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !606, file: !14, line: 1193, baseType: !227, size: 8, offset: 160)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !606, file: !14, line: 1194, baseType: !177, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !606, file: !14, line: 1195, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !176, line: 52, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !409, line: 88, baseType: !243)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !606, file: !14, line: 1196, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !620)
!620 = !{!621, !622, !623, !629, !633, !637, !641, !1048, !1049, !1053, !1055, !1056, !1057, !1059, !1060, !1061, !1062}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !14, line: 2367, baseType: !329, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !619, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !619, file: !14, line: 2376, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!109, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !601, line: 21, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !619, file: !14, line: 2377, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !619, file: !14, line: 2378, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!489, !618, !109, !329, !169}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !619, file: !14, line: 2380, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !605}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !14, line: 2381, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !644)
!644 = !{!645, !646, !647, !651, !672, !698, !699, !700, !701, !705, !710, !711, !712, !768, !769, !770, !771, !772, !773, !774, !775, !783, !787, !814, !835, !836, !837, !838, !847, !870, !871, !874, !877, !878, !879, !880, !881, !882, !883, !888, !889, !1006, !1014, !1015, !1016, !1018, !1022, !1023, !1027, !1028, !1029, !1030, !1032, !1033, !1034, !1041, !1042, !1043, !1047}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !643, file: !6, line: 403, baseType: !5, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !643, file: !6, line: 406, baseType: !245, size: 128, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !6, line: 409, baseType: !648, size: 448, offset: 192)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 448, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 56)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !643, file: !6, line: 417, baseType: !652, size: 768, offset: 640)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !653)
!653 = !{!654, !655, !656, !657, !660}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !652, file: !6, line: 46, baseType: !325, size: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !652, file: !6, line: 47, baseType: !642, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !652, file: !6, line: 48, baseType: !333, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !652, file: !6, line: 49, baseType: !658, size: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !652, file: !6, line: 50, baseType: !661, size: 64, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !663, line: 26, size: 256, elements: !664)
!663 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !662, file: !663, line: 27, baseType: !7, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !662, file: !663, line: 28, baseType: !667, size: 192, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !668, line: 43, size: 192, elements: !669)
!668 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !668, line: 44, baseType: !262, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !667, file: !668, line: 45, baseType: !245, size: 128, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !643, file: !6, line: 418, baseType: !673, size: 64, offset: 1408)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !675)
!675 = !{!676, !677, !682, !686, !690, !694}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !674, file: !6, line: 54, baseType: !413, size: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !674, file: !6, line: 55, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!407, !673, !681, !173}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !674, file: !6, line: 57, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!407, !673, !681, !329, !422}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !674, file: !6, line: 59, baseType: !687, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !642, !329}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !674, file: !6, line: 60, baseType: !691, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!109, !642}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !674, file: !6, line: 61, baseType: !695, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !642}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !643, file: !6, line: 419, baseType: !329, size: 64, offset: 1472)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !643, file: !6, line: 420, baseType: !329, size: 64, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !643, file: !6, line: 421, baseType: !333, size: 64, offset: 1600)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !643, file: !6, line: 424, baseType: !702, size: 64, offset: 1664)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !643, file: !6, line: 425, baseType: !706, size: 64, offset: 1728)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !180, line: 20, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !182, line: 26, baseType: !109)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !643, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !643, file: !6, line: 435, baseType: !257, size: 256, offset: 1856)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !643, file: !6, line: 437, baseType: !713, size: 64, offset: 2112)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !715, line: 69, size: 320, elements: !716)
!715 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!716 = !{!717, !718, !719, !739, !741, !745, !746}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !714, file: !715, line: 70, baseType: !329, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !714, file: !715, line: 71, baseType: !642, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !714, file: !715, line: 72, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !715, line: 47, size: 256, elements: !723)
!723 = !{!724, !725, !731, !735}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !715, line: 49, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !722, file: !715, line: 51, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!109, !329, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !722, file: !715, line: 53, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!109, !173, !729}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !722, file: !715, line: 55, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !169}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !714, file: !715, line: 73, baseType: !740, size: 16, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !714, file: !715, line: 74, baseType: !742, size: 8, offset: 208)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !180, line: 16, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !182, line: 20, baseType: !744)
!744 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !715, line: 75, baseType: !225, size: 8, offset: 216)
!746 = !DIDerivedType(tag: DW_TAG_member, scope: !714, file: !715, line: 76, baseType: !747, size: 64, offset: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !715, line: 76, size: 64, elements: !748)
!748 = !{!749, !750, !757}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !747, file: !715, line: 77, baseType: !169, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !747, file: !715, line: 78, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !715, line: 86, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !753, file: !715, line: 87, baseType: !7, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !753, file: !715, line: 88, baseType: !173, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !747, file: !715, line: 79, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !715, line: 92, size: 256, elements: !761)
!761 = !{!762, !763, !764, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !760, file: !715, line: 94, baseType: !7, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !760, file: !715, line: 95, baseType: !7, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !760, file: !715, line: 96, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !760, file: !715, line: 97, baseType: !720, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !760, file: !715, line: 98, baseType: !169, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !643, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !643, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !643, file: !6, line: 442, baseType: !702, size: 64, offset: 2240)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !643, file: !6, line: 443, baseType: !706, size: 64, offset: 2304)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !643, file: !6, line: 444, baseType: !221, size: 8, offset: 2368)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !643, file: !6, line: 451, baseType: !221, size: 8, offset: 2376)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !643, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !643, file: !6, line: 455, baseType: !776, size: 64, offset: 2432)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !778, line: 23, size: 96, elements: !779)
!778 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !777, file: !778, line: 24, baseType: !109, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !777, file: !778, line: 24, baseType: !109, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !777, file: !778, line: 24, baseType: !109, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !643, file: !6, line: 458, baseType: !784, size: 64, offset: 2496)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!109}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !643, file: !6, line: 460, baseType: !788, size: 4032, align: 512, offset: 2560)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 4032, elements: !812)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !790)
!790 = !{!791, !792, !793}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !789, file: !6, line: 363, baseType: !169, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !789, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !789, file: !6, line: 367, baseType: !794, size: 448, offset: 128)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !794, file: !6, line: 320, baseType: !642, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !794, file: !6, line: 321, baseType: !798, size: 384, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !799, line: 40, size: 384, elements: !800)
!799 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !798, file: !799, line: 41, baseType: !802, size: 384, align: 64)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 384, align: 64, elements: !810)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !804, line: 5, size: 192, align: 64, elements: !805)
!804 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!805 = !{!806, !807, !809}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !803, file: !804, line: 6, baseType: !177, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !803, file: !804, line: 7, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !803, file: !804, line: 8, baseType: !808, size: 64, offset: 128)
!810 = !{!811}
!811 = !DISubrange(count: 2)
!812 = !{!813}
!813 = !DISubrange(count: 7)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !643, file: !6, line: 463, baseType: !815, size: 192, offset: 6592)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !816, line: 8, size: 192, elements: !817)
!816 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!817 = !{!818, !819, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !815, file: !816, line: 10, baseType: !7, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !815, file: !816, line: 11, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !815, file: !816, line: 12, baseType: !822, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !824, line: 59, size: 48, elements: !825)
!824 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!825 = !{!826, !830, !831, !832, !833, !834}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !823, file: !824, line: 60, baseType: !827, size: 16)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !180, line: 18, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !182, line: 23, baseType: !829)
!829 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !823, file: !824, line: 61, baseType: !827, size: 16, offset: 16)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !823, file: !824, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !823, file: !824, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !823, file: !824, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !823, file: !824, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !643, file: !6, line: 465, baseType: !177, size: 64, offset: 6784)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !643, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !643, file: !6, line: 470, baseType: !245, size: 128, offset: 6912)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !643, file: !6, line: 471, baseType: !839, size: 64, offset: 7040)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !841, line: 33, size: 96, elements: !842)
!841 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!842 = !{!843, !844, !845, !846}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !840, file: !841, line: 37, baseType: !109, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !840, file: !841, line: 43, baseType: !109, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !840, file: !841, line: 45, baseType: !183, size: 16, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !841, line: 47, baseType: !183, size: 16, offset: 80)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !643, file: !6, line: 476, baseType: !848, size: 64, offset: 7104)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !850)
!850 = !{!851, !867, !868, !869}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !849, file: !6, line: 379, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !854, line: 204, baseType: !855)
!854 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !854, line: 197, size: 192, elements: !856)
!856 = !{!857, !859, !860, !861, !863, !865}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !855, file: !854, line: 198, baseType: !858, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !854, line: 21, baseType: !524)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !855, file: !854, line: 199, baseType: !227, size: 8, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !855, file: !854, line: 200, baseType: !227, size: 8, offset: 40)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !855, file: !854, line: 201, baseType: !862, size: 16, offset: 48)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !854, line: 17, baseType: !181)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !855, file: !854, line: 202, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !854, line: 16, baseType: !528)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !855, file: !854, line: 203, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !854, line: 22, baseType: !528)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !849, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !849, file: !6, line: 381, baseType: !173, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !849, file: !6, line: 382, baseType: !173, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !643, file: !6, line: 477, baseType: !849, size: 256, offset: 7168)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !643, file: !6, line: 480, baseType: !872, size: 64, offset: 7424)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !643, file: !6, line: 483, baseType: !875, size: 64, offset: 7488)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !643, file: !6, line: 488, baseType: !173, size: 64, offset: 7552)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !643, file: !6, line: 492, baseType: !169, size: 64, offset: 7616)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !643, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !643, file: !6, line: 495, baseType: !169, size: 64, offset: 7744)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !643, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !643, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !643, file: !6, line: 500, baseType: !884, size: 64, offset: 7872)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !886, line: 45, baseType: !887)
!886 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !643, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !643, file: !6, line: 504, baseType: !890, size: 64, offset: 8000)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !893, line: 96, size: 192, elements: !894)
!893 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!894 = !{!895, !896, !966, !970}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !892, file: !893, line: 97, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !892, file: !893, line: 98, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !893, line: 24, size: 3072, elements: !899)
!899 = !{!900, !902, !903, !904, !905, !929, !930, !931, !932, !950, !951, !952, !963, !964, !965}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !898, file: !893, line: 26, baseType: !901, size: 128)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !810)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !898, file: !893, line: 27, baseType: !901, size: 128, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !898, file: !893, line: 28, baseType: !109, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !893, line: 31, baseType: !340, size: 32, align: 512, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !898, file: !893, line: 32, baseType: !906, size: 960, offset: 576)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !907, line: 206, size: 960, elements: !908)
!907 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!908 = !{!909, !918, !923, !925, !926, !928}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !906, file: !907, line: 207, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !176, line: 232, size: 128, align: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !911, file: !176, line: 233, baseType: !910, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !911, file: !176, line: 234, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !910}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !906, file: !907, line: 208, baseType: !919, size: 256, offset: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 256, elements: !921)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!921 = !{!922}
!922 = !DISubrange(count: 4)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !906, file: !907, line: 209, baseType: !924, size: 256, offset: 320)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !921)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !906, file: !907, line: 213, baseType: !411, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !906, file: !907, line: 215, baseType: !927, size: 256, offset: 640)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !921)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !906, file: !907, line: 216, baseType: !225, size: 8, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !898, file: !893, line: 33, baseType: !177, size: 64, offset: 1536)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !898, file: !893, line: 34, baseType: !177, size: 64, offset: 1600)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !898, file: !893, line: 35, baseType: !221, size: 8, offset: 1664)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !898, file: !893, line: 36, baseType: !933, size: 320, offset: 1728)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !934, line: 11, size: 320, elements: !935)
!934 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!935 = !{!936, !943, !944, !949}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !933, file: !934, line: 16, baseType: !937, size: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !176, line: 198, size: 128, elements: !938)
!938 = !{!939, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !937, file: !176, line: 199, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !937, file: !176, line: 199, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !933, file: !934, line: 17, baseType: !177, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !933, file: !934, line: 18, baseType: !945, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 19, baseType: !523, size: 32, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !898, file: !893, line: 37, baseType: !231, size: 256, offset: 2048)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !898, file: !893, line: 38, baseType: !911, size: 128, align: 64, offset: 2304)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !898, file: !893, line: 39, baseType: !953, size: 64, offset: 2432)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !893, line: 49, size: 768, elements: !955)
!955 = !{!956, !957, !958, !959, !960, !961, !962}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !954, file: !893, line: 50, baseType: !340, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !954, file: !893, line: 51, baseType: !924, size: 256, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !954, file: !893, line: 53, baseType: !924, size: 256, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !954, file: !893, line: 54, baseType: !177, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !954, file: !893, line: 55, baseType: !953, size: 64, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !954, file: !893, line: 56, baseType: !109, size: 32, offset: 704)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !954, file: !893, line: 57, baseType: !109, size: 32, offset: 736)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !898, file: !893, line: 40, baseType: !177, size: 64, offset: 2496)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !898, file: !893, line: 42, baseType: !109, size: 32, offset: 2560)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !898, file: !893, line: 43, baseType: !891, size: 64, offset: 2624)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !892, file: !893, line: 99, baseType: !967, offset: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !968, line: 211, elements: !969)
!968 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!969 = !{}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !892, file: !893, line: 100, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !893, line: 63, size: 3008, elements: !973)
!973 = !{!974, !975, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !1005}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !972, file: !893, line: 64, baseType: !953, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !972, file: !893, line: 65, baseType: !976, size: 192, offset: 64)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 192, elements: !376)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !972, file: !893, line: 67, baseType: !109, size: 32, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !972, file: !893, line: 68, baseType: !257, size: 256, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !972, file: !893, line: 69, baseType: !340, size: 32, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !972, file: !893, line: 70, baseType: !257, size: 256, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !972, file: !893, line: 71, baseType: !177, size: 64, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !972, file: !893, line: 72, baseType: !177, size: 64, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !972, file: !893, line: 73, baseType: !177, size: 64, offset: 1024)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !972, file: !893, line: 74, baseType: !177, size: 64, offset: 1088)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !972, file: !893, line: 75, baseType: !177, size: 64, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !972, file: !893, line: 76, baseType: !177, size: 64, offset: 1216)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !972, file: !893, line: 77, baseType: !177, size: 64, offset: 1280)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !972, file: !893, line: 78, baseType: !177, size: 64, offset: 1344)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !972, file: !893, line: 79, baseType: !221, size: 8, offset: 1408)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !972, file: !893, line: 80, baseType: !177, size: 64, offset: 1472)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !972, file: !893, line: 81, baseType: !257, size: 256, offset: 1536)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !972, file: !893, line: 82, baseType: !662, size: 256, offset: 1792)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !972, file: !893, line: 84, baseType: !275, size: 32, offset: 2048)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !972, file: !893, line: 87, baseType: !177, size: 64, offset: 2112)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !972, file: !893, line: 88, baseType: !177, size: 64, offset: 2176)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !972, file: !893, line: 89, baseType: !997, size: 704, offset: 2240)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !232, line: 111, size: 704, elements: !998)
!998 = !{!999, !1000, !1001, !1004}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !997, file: !232, line: 112, baseType: !231, size: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !997, file: !232, line: 113, baseType: !933, size: 320, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !997, file: !232, line: 116, baseType: !1002, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !232, line: 18, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !997, file: !232, line: 117, baseType: !109, size: 32, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !972, file: !893, line: 90, baseType: !891, size: 64, offset: 2944)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !643, file: !6, line: 515, baseType: !1007, size: 64, offset: 8064)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1009, line: 117, size: 128, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1008, file: !1009, line: 118, baseType: !708, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1008, file: !1009, line: 119, baseType: !708, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1008, file: !1009, line: 120, baseType: !411, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !643, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !643, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !643, file: !6, line: 520, baseType: !1017, size: 64, offset: 8192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !643, file: !6, line: 523, baseType: !1019, size: 64, offset: 8256)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !643, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !643, file: !6, line: 525, baseType: !1024, size: 64, offset: 8384)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !643, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !643, file: !6, line: 533, baseType: !169, size: 64, offset: 8512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !643, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !643, file: !6, line: 535, baseType: !1031, size: 64, offset: 8640)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !643, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !643, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !643, file: !6, line: 540, baseType: !1035, size: 64, offset: 8768)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1037, line: 32, size: 64, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1036, file: !1037, line: 33, baseType: !708, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1036, file: !1037, line: 34, baseType: !708, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !643, file: !6, line: 563, baseType: !245, size: 128, offset: 8832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !643, file: !6, line: 565, baseType: !245, size: 128, offset: 8960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !643, file: !6, line: 568, baseType: !1044, size: 64, offset: 9088)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !643, file: !6, line: 570, baseType: !275, size: 32, offset: 9152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !14, line: 2382, baseType: !618, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !619, file: !14, line: 2383, baseType: !1050, size: 64, offset: 512)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !176, line: 194, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1050, file: !176, line: 195, baseType: !940, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !619, file: !14, line: 2385, baseType: !1054, offset: 576)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !968, line: 206, elements: !969)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !619, file: !14, line: 2386, baseType: !1054, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !619, file: !14, line: 2387, baseType: !1054, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !619, file: !14, line: 2388, baseType: !1058, offset: 576)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1054, elements: !376)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !619, file: !14, line: 2390, baseType: !1054, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !619, file: !14, line: 2391, baseType: !1054, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !619, file: !14, line: 2392, baseType: !1054, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !619, file: !14, line: 2393, baseType: !1054, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !606, file: !14, line: 1197, baseType: !1064, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1067)
!1067 = !{!1068, !1072, !1076, !1077, !1081, !1087, !1091, !1092, !1093, !1097, !1101, !1105, !1106, !1107, !1113, !1117, !1118, !2067, !2068, !2069, !2070, !2074, !2078, !2125, !2140, !2141}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1066, file: !14, line: 2058, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!454, !605}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1066, file: !14, line: 2059, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !454}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1066, file: !14, line: 2060, baseType: !1073, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1066, file: !14, line: 2062, baseType: !1078, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !454, !109}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1066, file: !14, line: 2063, baseType: !1082, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!109, !454, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1066, file: !14, line: 2064, baseType: !1088, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!109, !454}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1066, file: !14, line: 2065, baseType: !1073, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1066, file: !14, line: 2066, baseType: !638, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1066, file: !14, line: 2067, baseType: !1094, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!109, !605, !109}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1066, file: !14, line: 2068, baseType: !1098, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!109, !605, !13}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1066, file: !14, line: 2069, baseType: !1102, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!109, !605}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1066, file: !14, line: 2070, baseType: !1098, size: 64, offset: 704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1066, file: !14, line: 2071, baseType: !1102, size: 64, offset: 768)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1066, file: !14, line: 2072, baseType: !1108, size: 64, offset: 832)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!109, !489, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1066, file: !14, line: 2073, baseType: !1114, size: 64, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!109, !605, !820, !173}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1066, file: !14, line: 2074, baseType: !638, size: 64, offset: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1066, file: !14, line: 2076, baseType: !1119, size: 64, offset: 1024)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!109, !1122, !489}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1124, line: 17, size: 960, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1156, !1157, !2066}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1123, file: !1124, line: 18, baseType: !173, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1123, file: !1124, line: 19, baseType: !422, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1123, file: !1124, line: 20, baseType: !422, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1123, file: !1124, line: 21, baseType: !422, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1123, file: !1124, line: 22, baseType: !422, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1123, file: !1124, line: 23, baseType: !615, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1123, file: !1124, line: 24, baseType: !615, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1123, file: !1124, line: 25, baseType: !257, size: 256, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1123, file: !1124, line: 26, baseType: !1135, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1124, line: 32, size: 256, elements: !1138)
!1138 = !{!1139, !1144, !1148, !1152}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1137, file: !1124, line: 33, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!169, !1122, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1137, file: !1124, line: 34, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1122, !169}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1137, file: !1124, line: 35, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!169, !1122, !169, !1143}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1137, file: !1124, line: 36, baseType: !1153, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!109, !1122, !169}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1123, file: !1124, line: 27, baseType: !109, size: 32, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1123, file: !1124, line: 28, baseType: !1158, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1161)
!1161 = !{!1162, !1168, !1169, !1171, !1172, !1173, !1174, !1175, !1229, !1429, !1438, !1444, !1445, !2056, !2057, !2058, !2059, !2061, !2062, !2065}
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !14, line: 995, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !14, line: 995, size: 128, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1163, file: !14, line: 996, baseType: !210, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1163, file: !14, line: 997, baseType: !911, size: 128, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1163, file: !14, line: 998, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1160, file: !14, line: 1005, baseType: !340, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1160, file: !14, line: 1006, baseType: !1170, size: 32, offset: 160)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !176, line: 156, baseType: !7)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1160, file: !14, line: 1007, baseType: !235, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1160, file: !14, line: 1008, baseType: !257, size: 256, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1160, file: !14, line: 1009, baseType: !615, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1160, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1160, file: !14, line: 1011, baseType: !1176, size: 256, offset: 640)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1177)
!1177 = !{!1178, !1199, !1225, !1226, !1227, !1228}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !14, line: 949, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1180, line: 34, baseType: !1181)
!1180 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 25, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1181, file: !1180, line: 26, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1185, line: 27, baseType: !1186)
!1185 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1185, line: 13, size: 64, elements: !1187)
!1187 = !{!1188, !1198}
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1185, line: 14, baseType: !1189, size: 32)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1185, line: 14, size: 32, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1189, file: !1185, line: 15, baseType: !275, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1185, line: 16, baseType: !1193, size: 32)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !1185, line: 16, size: 32, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1193, file: !1185, line: 18, baseType: !225, size: 8)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1193, file: !1185, line: 19, baseType: !1197, size: 24, offset: 8)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 24, elements: !376)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1186, file: !1185, line: 26, baseType: !267, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1176, file: !14, line: 950, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1208, !1209, !1216, !1217}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1201, file: !19, line: 61, baseType: !314, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1201, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !19, line: 63, baseType: !340, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1201, file: !19, line: 65, baseType: !1207, size: 256, offset: 128)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 256, elements: !921)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1201, file: !19, line: 66, baseType: !1050, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1201, file: !19, line: 68, baseType: !1210, size: 192, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1211, line: 41, baseType: !1212)
!1211 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1211, line: 37, size: 192, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1212, file: !1211, line: 38, baseType: !340, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1212, file: !1211, line: 39, baseType: !245, size: 128, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1201, file: !19, line: 69, baseType: !911, size: 128, align: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1201, file: !19, line: 70, baseType: !1218, offset: 768)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, elements: !228)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1219, file: !19, line: 55, baseType: !109, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1219, file: !19, line: 56, baseType: !1223, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1176, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1176, file: !14, line: 952, baseType: !460, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1176, file: !14, line: 952, baseType: !460, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1176, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1160, file: !14, line: 1012, baseType: !1230, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1233, line: 110, size: 1472, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1251, !1252, !1253, !1254, !1255, !1256, !1374, !1375, !1376, !1377, !1378, !1409, !1412, !1416, !1424}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1232, file: !1233, line: 111, baseType: !235, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1232, file: !1233, line: 112, baseType: !460, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1232, file: !1233, line: 113, baseType: !469, size: 32, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1232, file: !1233, line: 114, baseType: !460, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1232, file: !1233, line: 115, baseType: !469, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1232, file: !1233, line: 116, baseType: !460, size: 32, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1232, file: !1233, line: 117, baseType: !469, size: 32, offset: 224)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1232, file: !1233, line: 118, baseType: !460, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1232, file: !1233, line: 119, baseType: !469, size: 32, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1232, file: !1233, line: 120, baseType: !7, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1232, file: !1233, line: 121, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1247, line: 24, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 24, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1248, file: !1247, line: 24, baseType: !527, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1232, file: !1233, line: 122, baseType: !1246, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1232, file: !1233, line: 123, baseType: !1246, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1232, file: !1233, line: 124, baseType: !1246, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1232, file: !1233, line: 125, baseType: !1246, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1232, file: !1233, line: 127, baseType: !227, size: 8, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1232, file: !1233, line: 129, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1259, line: 195, size: 1728, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1260 = !{!1261, !1262, !1265, !1270, !1279, !1282, !1283, !1290, !1291, !1292, !1293, !1296, !1297, !1298, !1299, !1300, !1338, !1359}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1258, file: !1259, line: 196, baseType: !314, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1258, file: !1259, line: 197, baseType: !1263, size: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1259, line: 28, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !176, line: 104, baseType: !708)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 198, baseType: !1266, size: 192, offset: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 198, size: 192, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1266, file: !1259, line: 199, baseType: !245, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1266, file: !1259, line: 200, baseType: !803, size: 192, align: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1258, file: !1259, line: 205, baseType: !1271, size: 320, offset: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1272, line: 48, size: 320, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1273 = !{!1274, !1275, !1276, !1277, !1278}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1271, file: !1272, line: 49, baseType: !235, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1271, file: !1272, line: 55, baseType: !235, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1271, file: !1272, line: 57, baseType: !290, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1271, file: !1272, line: 59, baseType: !262, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1271, file: !1272, line: 60, baseType: !245, size: 128, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1258, file: !1259, line: 206, baseType: !1280, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1259, line: 206, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1258, file: !1259, line: 207, baseType: !169, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 208, baseType: !1284, size: 64, offset: 704)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 208, size: 64, elements: !1285)
!1285 = !{!1286, !1289}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1284, file: !1259, line: 209, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1288, line: 8, baseType: !242)
!1288 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1284, file: !1259, line: 210, baseType: !1287, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1258, file: !1259, line: 212, baseType: !1287, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1258, file: !1259, line: 213, baseType: !460, size: 32, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1258, file: !1259, line: 214, baseType: !469, size: 32, offset: 864)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1258, file: !1259, line: 215, baseType: !1294, size: 32, offset: 896)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1259, line: 31, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !176, line: 110, baseType: !523)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1258, file: !1259, line: 216, baseType: !183, size: 16, offset: 928)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1258, file: !1259, line: 217, baseType: !183, size: 16, offset: 944)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1258, file: !1259, line: 221, baseType: !829, size: 16, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1258, file: !1259, line: 228, baseType: !177, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 245, baseType: !1301, size: 320, offset: 1088)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 245, size: 320, elements: !1302)
!1302 = !{!1303, !1330}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1301, file: !1259, line: 246, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1259, line: 114, size: 320, elements: !1305)
!1305 = !{!1306, !1307, !1319, !1322, !1329}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1304, file: !1259, line: 116, baseType: !177, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1259, line: 117, baseType: !1308, size: 64, offset: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !1259, line: 117, size: 64, elements: !1309)
!1309 = !{!1310, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1259, line: 118, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1259, line: 118, size: 64, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1311, file: !1259, line: 120, baseType: !179, size: 16)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1311, file: !1259, line: 121, baseType: !1315, size: 48, offset: 16)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 48, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 6)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1308, file: !1259, line: 127, baseType: !177, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1304, file: !1259, line: 129, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1259, line: 102, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1304, file: !1259, line: 130, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1259, line: 108, size: 192, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1324, file: !1259, line: 109, baseType: !911, size: 128, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1324, file: !1259, line: 110, baseType: !314, size: 32, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1324, file: !1259, line: 111, baseType: !221, size: 8, offset: 160)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1304, file: !1259, line: 131, baseType: !329, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1259, line: 247, baseType: !1331, size: 320)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1259, line: 247, size: 320, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1331, file: !1259, line: 248, baseType: !177, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1331, file: !1259, line: 249, baseType: !177, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1259, line: 250, baseType: !1320, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1331, file: !1259, line: 251, baseType: !1323, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1331, file: !1259, line: 252, baseType: !173, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 260, baseType: !1339, size: 256, offset: 1408)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 260, size: 256, elements: !1340)
!1340 = !{!1341, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1339, file: !1259, line: 261, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1259, line: 134, size: 256, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1342, file: !1259, line: 135, baseType: !169, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1342, file: !1259, line: 136, baseType: !1346, size: 256)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !921)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1259, line: 262, baseType: !1348, size: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !1259, line: 262, size: 256, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1348, file: !1259, line: 264, baseType: !245, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1348, file: !1259, line: 265, baseType: !1352, size: 128, offset: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1353, line: 22, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1354 = !{!1355, !1358}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1352, file: !1353, line: 23, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1353, line: 23, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1352, file: !1353, line: 24, baseType: !177, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1258, file: !1259, line: 280, baseType: !1360, size: 64, offset: 1664)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1259, line: 176, size: 192, elements: !1362)
!1362 = !{!1363, !1372, !1373}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1361, file: !1259, line: 177, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1259, line: 171, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!109, !1257, !1368, !1370, !1257}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1361, file: !1259, line: 178, baseType: !1257, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1361, file: !1259, line: 179, baseType: !1320, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1232, file: !1233, line: 130, baseType: !1257, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1232, file: !1233, line: 131, baseType: !1257, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1232, file: !1233, line: 132, baseType: !1257, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1232, file: !1233, line: 135, baseType: !169, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1232, file: !1233, line: 137, baseType: !1379, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1381, line: 14, size: 1088, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1382 = !{!1383, !1384, !1393, !1394, !1395, !1396, !1397, !1398}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1380, file: !1381, line: 15, baseType: !314, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1380, file: !1381, line: 17, baseType: !1385, size: 320, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1386, line: 22, size: 320, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 23, baseType: !262, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1385, file: !1386, line: 24, baseType: !241, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1385, file: !1386, line: 26, baseType: !245, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1385, file: !1386, line: 28, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1380, file: !1381, line: 19, baseType: !177, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1380, file: !1381, line: 20, baseType: !235, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1380, file: !1381, line: 23, baseType: !937, size: 128, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1380, file: !1381, line: 24, baseType: !460, size: 32, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1380, file: !1381, line: 29, baseType: !235, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1380, file: !1381, line: 36, baseType: !1399, size: 320, offset: 768)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1400, line: 15, size: 320, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !1400, line: 16, baseType: !262, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1399, file: !1400, line: 18, baseType: !109, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1399, file: !1400, line: 19, baseType: !109, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1399, file: !1400, line: 20, baseType: !109, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1399, file: !1400, line: 21, baseType: !109, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1399, file: !1400, line: 22, baseType: !177, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !1400, line: 23, baseType: !177, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1232, file: !1233, line: 138, baseType: !1410, size: 64, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !461, line: 18, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1232, file: !1233, line: 139, baseType: !1413, size: 64, offset: 1216)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1415, line: 16, flags: DIFlagFwdDecl)
!1415 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1232, file: !1233, line: 140, baseType: !1417, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1233, line: 25, size: 64, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1418, file: !1233, line: 26, baseType: !275, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1418, file: !1233, line: 27, baseType: !109, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1418, file: !1233, line: 28, baseType: !1423, offset: 64)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, elements: !228)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1233, line: 142, baseType: !1425, size: 128, offset: 1344)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !1233, line: 142, size: 128, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1425, file: !1233, line: 143, baseType: !109, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1425, file: !1233, line: 144, baseType: !911, size: 128, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1160, file: !14, line: 1013, baseType: !1430, size: 256, offset: 960)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1430, file: !14, line: 971, baseType: !177, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1430, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1430, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1430, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1430, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1430, file: !14, line: 976, baseType: !615, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1160, file: !14, line: 1014, baseType: !1439, size: 128, offset: 1216)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1440, line: 8, size: 128, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1439, file: !1440, line: 9, baseType: !599, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1439, file: !1440, line: 10, baseType: !489, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1160, file: !14, line: 1015, baseType: !454, size: 64, offset: 1344)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1160, file: !14, line: 1016, baseType: !1446, size: 64, offset: 1408)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1449)
!1449 = !{!1450, !1451, !1456, !1460, !1464, !1492, !1493, !1499, !1512, !1529, !1533, !1534, !1977, !1978, !1982, !1987, !1988, !1992, !1996, !2002, !2003, !2007, !2008, !2015, !2019, !2023, !2029, !2033, !2037, !2041, !2045, !2046, !2052}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1448, file: !14, line: 1915, baseType: !642, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1448, file: !14, line: 1916, baseType: !1452, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!615, !1455, !615, !109}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1448, file: !14, line: 1917, baseType: !1457, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!407, !1455, !173, !422, !1143}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1448, file: !14, line: 1918, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!407, !1455, !329, !422, !1143}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1448, file: !14, line: 1919, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!407, !1468, !1490}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1477, !1478, !1479, !1480}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1469, file: !14, line: 374, baseType: !1455, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1469, file: !14, line: 375, baseType: !615, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1469, file: !14, line: 376, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !1468, !411}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1469, file: !14, line: 377, baseType: !169, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1469, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1469, file: !14, line: 379, baseType: !179, size: 16, offset: 288)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !14, line: 380, baseType: !1481, size: 64, offset: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !14, line: 380, size: 64, elements: !1482)
!1482 = !{!1483, !1486}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1481, file: !14, line: 386, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1481, file: !14, line: 395, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!407, !169}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1448, file: !14, line: 1920, baseType: !1465, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1448, file: !14, line: 1921, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!109, !1468, !1497, !7}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1448, file: !14, line: 1923, baseType: !1500, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!109, !1455, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1505)
!1505 = !{!1506, !1511}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1504, file: !14, line: 1859, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!221, !1503, !329, !109, !615, !527, !7}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1504, file: !14, line: 1860, baseType: !615, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1448, file: !14, line: 1924, baseType: !1513, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1516, !1455, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1517, line: 59, baseType: !7)
!1517 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1520, line: 37, size: 128, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1521 = !{!1522, !1528}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1519, file: !1520, line: 38, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1520, line: 31, baseType: !1524)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1455, !1527, !1518}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1519, file: !1520, line: 39, baseType: !1516, size: 32, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1448, file: !14, line: 1925, baseType: !1530, size: 64, offset: 576)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!411, !1455, !7, !177}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1448, file: !14, line: 1926, baseType: !1530, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1448, file: !14, line: 1927, baseType: !1535, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!109, !1455, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1540)
!1540 = !{!1541, !1550, !1705, !1711, !1718, !1719, !1724, !1725, !1730, !1731, !1734, !1970, !1971, !1972, !1973, !1974, !1975}
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !27, line: 628, baseType: !1542, size: 128)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !27, line: 628, size: 128, elements: !1543)
!1543 = !{!1544, !1549}
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !27, line: 629, baseType: !1545, size: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !27, line: 629, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1545, file: !27, line: 631, baseType: !177, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1545, file: !27, line: 632, baseType: !177, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1542, file: !27, line: 635, baseType: !911, size: 128, align: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1539, file: !27, line: 639, baseType: !1551, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1553)
!1553 = !{!1554, !1703}
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !27, line: 734, baseType: !1555, size: 10240)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !27, line: 734, size: 10240, elements: !1556)
!1556 = !{!1557, !1561, !1574, !1578, !1579, !1580, !1581, !1582, !1583, !1592, !1593, !1594, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1633, !1635, !1638, !1683, !1684, !1685, !1688, !1689, !1690, !1693, !1694, !1695, !1701, !1702}
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !27, line: 739, baseType: !1558, size: 512, align: 512)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !27, line: 739, size: 512, align: 512, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1558, file: !27, line: 747, baseType: !275, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1555, file: !27, line: 750, baseType: !1562, size: 128, offset: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1563, line: 218, size: 128, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1564 = !{!1565, !1572, !1573}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1563, line: 219, baseType: !1566, size: 32)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !1563, line: 219, size: 32, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1566, file: !1563, line: 220, baseType: !340, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1566, file: !1563, line: 221, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1563, line: 197, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1563, line: 197, elements: !969)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1562, file: !1563, line: 223, baseType: !7, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1562, file: !1563, line: 224, baseType: !169, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1555, file: !27, line: 752, baseType: !1575, size: 64, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!177, !1455, !177, !177, !177, !177}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1555, file: !27, line: 756, baseType: !177, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1555, file: !27, line: 757, baseType: !177, size: 64, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1555, file: !27, line: 760, baseType: !177, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1555, file: !27, line: 761, baseType: !177, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1555, file: !27, line: 763, baseType: !177, size: 64, offset: 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1555, file: !27, line: 764, baseType: !1584, size: 64, offset: 1024)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1586, line: 299, baseType: !1587)
!1586 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1586, line: 299, size: 64, elements: !1588)
!1588 = !{!1589}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1587, file: !1586, line: 299, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1591, line: 18, baseType: !177)
!1591 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1555, file: !27, line: 773, baseType: !275, size: 32, offset: 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1555, file: !27, line: 785, baseType: !275, size: 32, offset: 1120)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1555, file: !27, line: 795, baseType: !1595, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1596, file: !27, line: 727, baseType: !527, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1596, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1555, file: !27, line: 801, baseType: !177, size: 64, offset: 1216)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1555, file: !27, line: 804, baseType: !235, size: 64, offset: 1280)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1555, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1555, file: !27, line: 808, baseType: !340, size: 32, offset: 1376)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1555, file: !27, line: 823, baseType: !1271, size: 320, offset: 1408)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1555, file: !27, line: 825, baseType: !245, size: 128, offset: 1728)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1555, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1555, file: !27, line: 849, baseType: !177, size: 64, offset: 1920)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1555, file: !27, line: 850, baseType: !177, size: 64, offset: 1984)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1555, file: !27, line: 852, baseType: !177, size: 64, offset: 2048)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1555, file: !27, line: 853, baseType: !177, size: 64, offset: 2112)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1555, file: !27, line: 854, baseType: !237, size: 64, offset: 2176)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1555, file: !27, line: 855, baseType: !177, size: 64, offset: 2240)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1555, file: !27, line: 856, baseType: !177, size: 64, offset: 2304)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1555, file: !27, line: 857, baseType: !177, size: 64, offset: 2368)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1555, file: !27, line: 858, baseType: !177, size: 64, offset: 2432)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1555, file: !27, line: 865, baseType: !500, size: 32, offset: 2496)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1555, file: !27, line: 867, baseType: !340, size: 32, offset: 2528)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1555, file: !27, line: 869, baseType: !177, size: 64, offset: 2560)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1555, file: !27, line: 869, baseType: !177, size: 64, offset: 2624)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1555, file: !27, line: 869, baseType: !177, size: 64, offset: 2688)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1555, file: !27, line: 869, baseType: !177, size: 64, offset: 2752)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1555, file: !27, line: 870, baseType: !177, size: 64, offset: 2816)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1555, file: !27, line: 870, baseType: !177, size: 64, offset: 2880)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1555, file: !27, line: 870, baseType: !177, size: 64, offset: 2944)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1555, file: !27, line: 871, baseType: !177, size: 64, offset: 3008)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1555, file: !27, line: 871, baseType: !177, size: 64, offset: 3072)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1555, file: !27, line: 871, baseType: !177, size: 64, offset: 3136)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1555, file: !27, line: 871, baseType: !177, size: 64, offset: 3200)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1555, file: !27, line: 873, baseType: !1630, size: 3328, offset: 3264)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 3328, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 52)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1555, file: !27, line: 875, baseType: !1634, size: 1280, offset: 6592)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 1280, elements: !921)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1555, file: !27, line: 877, baseType: !1636, size: 64, offset: 7872)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1555, file: !27, line: 880, baseType: !1639, size: 1088, offset: 7936)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1640, line: 72, baseType: !1641)
!1640 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 23, size: 1088, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1650, !1651, !1652, !1653, !1680, !1681, !1682}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1641, file: !1640, line: 28, baseType: !527, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1641, file: !1640, line: 38, baseType: !237, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1641, file: !1640, line: 40, baseType: !177, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1641, file: !1640, line: 43, baseType: !1271, size: 320, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1641, file: !1640, line: 44, baseType: !1648, size: 64, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1640, line: 44, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !1640, line: 48, baseType: !177, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1641, file: !1640, line: 59, baseType: !257, size: 256, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1641, file: !1640, line: 60, baseType: !169, size: 64, offset: 896)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1641, file: !1640, line: 61, baseType: !1654, size: 64, offset: 960)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1657, line: 13, size: 1216, elements: !1658)
!1657 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1656, file: !1657, line: 14, baseType: !169, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1656, file: !1657, line: 15, baseType: !177, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1656, file: !1657, line: 17, baseType: !177, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1656, file: !1657, line: 17, baseType: !177, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1656, file: !1657, line: 18, baseType: !177, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1656, file: !1657, line: 18, baseType: !177, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1656, file: !1657, line: 19, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1656, file: !1657, line: 21, baseType: !411, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1656, file: !1657, line: 23, baseType: !411, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1656, file: !1657, line: 24, baseType: !411, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1656, file: !1657, line: 25, baseType: !411, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1656, file: !1657, line: 26, baseType: !411, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1656, file: !1657, line: 27, baseType: !411, size: 64, offset: 768)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1656, file: !1657, line: 28, baseType: !411, size: 64, offset: 832)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1656, file: !1657, line: 29, baseType: !411, size: 64, offset: 896)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1656, file: !1657, line: 30, baseType: !411, size: 64, offset: 960)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1656, file: !1657, line: 31, baseType: !411, size: 64, offset: 1024)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1656, file: !1657, line: 32, baseType: !411, size: 64, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1656, file: !1657, line: 33, baseType: !411, size: 64, offset: 1152)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1641, file: !1640, line: 63, baseType: !275, size: 32, offset: 1024)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1641, file: !1640, line: 69, baseType: !179, size: 16, offset: 1056)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1641, file: !1640, line: 70, baseType: !827, size: 16, offset: 1072)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !27, line: 882, baseType: !177, size: 64, offset: 9024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1555, file: !27, line: 885, baseType: !340, size: 32, offset: 9088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1555, file: !27, line: 886, baseType: !1686, size: 64, offset: 9152)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1555, file: !27, line: 901, baseType: !1410, size: 64, offset: 9216)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1555, file: !27, line: 904, baseType: !1455, size: 64, offset: 9280)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1555, file: !27, line: 906, baseType: !1691, size: 64, offset: 9344)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1555, file: !27, line: 930, baseType: !275, size: 32, offset: 9408)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1555, file: !27, line: 933, baseType: !275, size: 32, offset: 9440)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1555, file: !27, line: 935, baseType: !1696, size: 64, offset: 9472)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1696, file: !68, line: 104, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1555, file: !27, line: 940, baseType: !235, size: 64, offset: 9536)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1555, file: !27, line: 942, baseType: !231, size: 256, offset: 9600)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1552, file: !27, line: 986, baseType: !1704, offset: 10240)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !228)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1539, file: !27, line: 640, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1586, line: 297, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1586, line: 297, size: 64, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1707, file: !1586, line: 297, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1591, line: 19, baseType: !177)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !27, line: 646, baseType: !1712, size: 64, offset: 256)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !27, line: 646, size: 64, elements: !1713)
!1713 = !{!1714, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1712, file: !27, line: 647, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !177)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1712, file: !27, line: 648, baseType: !1716, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1539, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1539, file: !27, line: 667, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !27, line: 580, baseType: !1271, size: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1539, file: !27, line: 670, baseType: !221, size: 8, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1539, file: !27, line: 681, baseType: !1726, size: 256, offset: 512)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !27, line: 678, size: 256, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1726, file: !27, line: 679, baseType: !803, size: 192, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1726, file: !27, line: 680, baseType: !177, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1539, file: !27, line: 689, baseType: !245, size: 128, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1539, file: !27, line: 691, baseType: !1732, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1539, file: !27, line: 694, baseType: !1735, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1738, line: 563, size: 1024, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1739 = !{!1740, !1744, !1745, !1749, !1753, !1757, !1934, !1938, !1942, !1946, !1947, !1948, !1952, !1956, !1962, !1966}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1737, file: !1738, line: 564, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1538}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1737, file: !1738, line: 569, baseType: !1741, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1737, file: !1738, line: 571, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!109, !1538, !177}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1737, file: !1738, line: 572, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!109, !1538}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1737, file: !1738, line: 578, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!109, !1538, !177, !177, !177}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1737, file: !1738, line: 580, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1738, line: 512, size: 896, elements: !1764)
!1764 = !{!1765, !1773, !1774, !1781, !1788, !1798, !1927, !1928, !1930, !1932}
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1738, line: 513, baseType: !1766, size: 320)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !1738, line: 513, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1766, file: !1738, line: 514, baseType: !1538, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1766, file: !1738, line: 515, baseType: !175, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1766, file: !1738, line: 516, baseType: !177, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1766, file: !1738, line: 517, baseType: !177, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1766, file: !1738, line: 518, baseType: !177, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1738, line: 520, baseType: !26, size: 32, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1763, file: !1738, line: 522, baseType: !1775, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1591, line: 22, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1591, line: 22, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1777, file: !1591, line: 22, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1591, line: 15, baseType: !177)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1763, file: !1738, line: 524, baseType: !1782, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1586, line: 372, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1586, line: 372, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1784, file: !1586, line: 372, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1591, line: 16, baseType: !177)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1738, line: 527, baseType: !1789, size: 64, offset: 512)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !1738, line: 527, size: 64, elements: !1790)
!1790 = !{!1791, !1797}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1789, file: !1738, line: 528, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1591, line: 21, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1591, line: 21, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1793, file: !1591, line: 21, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1591, line: 14, baseType: !177)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1789, file: !1738, line: 529, baseType: !1776, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1763, file: !1738, line: 534, baseType: !1799, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1801)
!1801 = !{!1802, !1803, !1921, !1926}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1800, file: !27, line: 75, baseType: !177, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !27, line: 83, baseType: !1804, size: 320, offset: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !27, line: 83, size: 320, elements: !1805)
!1805 = !{!1806, !1827, !1841, !1845, !1920}
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !27, line: 84, baseType: !1807, size: 320)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !27, line: 84, size: 320, elements: !1808)
!1808 = !{!1809, !1820, !1821, !1826}
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !27, line: 90, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !27, line: 90, size: 128, elements: !1811)
!1811 = !{!1812, !1813, !1818, !1819}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1810, file: !27, line: 91, baseType: !245, size: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !27, line: 94, baseType: !1814, size: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !27, line: 94, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1814, file: !27, line: 96, baseType: !169, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1814, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1810, file: !27, line: 102, baseType: !245, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1810, file: !27, line: 103, baseType: !245, size: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1807, file: !27, line: 106, baseType: !450, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !27, line: 107, baseType: !1822, size: 64, offset: 192)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !27, line: 107, size: 64, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1822, file: !27, line: 108, baseType: !177, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1822, file: !27, line: 109, baseType: !177, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1807, file: !27, line: 117, baseType: !177, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !27, line: 119, baseType: !1828, size: 320)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !27, line: 119, size: 320, elements: !1829)
!1829 = !{!1830, !1831, !1834, !1835, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1828, file: !27, line: 124, baseType: !177, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1828, file: !27, line: 125, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1828, file: !27, line: 126, baseType: !177, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1828, file: !27, line: 127, baseType: !177, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !27, line: 128, baseType: !1837, size: 64, offset: 256)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !27, line: 128, size: 64, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1837, file: !27, line: 133, baseType: !177, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1837, file: !27, line: 138, baseType: !235, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !27, line: 141, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !27, line: 141, size: 64, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1842, file: !27, line: 142, baseType: !177, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !27, line: 144, baseType: !1846, size: 128)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !27, line: 144, size: 128, elements: !1847)
!1847 = !{!1848, !1919}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1846, file: !27, line: 146, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1851)
!1851 = !{!1852, !1862, !1883, !1884, !1885, !1886, !1887, !1901, !1902, !1903}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1850, file: !43, line: 127, baseType: !1853, size: 384)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1858, !1859, !1860, !1861}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1853, file: !43, line: 22, baseType: !177, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1853, file: !43, line: 23, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1853, file: !43, line: 24, baseType: !1857, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1853, file: !43, line: 25, baseType: !177, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1853, file: !43, line: 26, baseType: !177, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1853, file: !43, line: 27, baseType: !177, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1850, file: !43, line: 128, baseType: !1863, size: 128, offset: 384)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1864, line: 105, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1863, file: !1864, line: 110, baseType: !177, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1863, file: !1864, line: 118, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1864, line: 95, size: 448, elements: !1870)
!1870 = !{!1871, !1872, !1878, !1879, !1880, !1881, !1882}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1869, file: !1864, line: 96, baseType: !235, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1869, file: !1864, line: 97, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1864, line: 60, baseType: !1875)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1869, file: !1864, line: 98, baseType: !1873, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1869, file: !1864, line: 99, baseType: !221, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1869, file: !1864, line: 100, baseType: !221, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1869, file: !1864, line: 101, baseType: !911, size: 128, align: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1869, file: !1864, line: 102, baseType: !1877, size: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1850, file: !43, line: 129, baseType: !662, size: 256, offset: 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1850, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1850, file: !43, line: 132, baseType: !177, size: 64, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1850, file: !43, line: 133, baseType: !1888, size: 64, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1891)
!1891 = !{!1892, !1896, !1897}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1890, file: !43, line: 83, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !1799}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1890, file: !43, line: 89, baseType: !1758, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1890, file: !43, line: 100, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!109, !1849, !177, !177, !109}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1850, file: !43, line: 134, baseType: !169, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1850, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !43, line: 136, baseType: !1904, size: 128, offset: 1088)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !43, line: 136, size: 128, elements: !1905)
!1905 = !{!1906, !1912}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1904, file: !43, line: 137, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1908, line: 6, size: 128, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1907, file: !1908, line: 7, baseType: !527, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1907, file: !1908, line: 8, baseType: !527, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !43, line: 138, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !43, line: 138, elements: !1914)
!1914 = !{!1915, !1917}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1913, file: !43, line: 138, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !43, line: 138, elements: !969)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1913, file: !43, line: 138, baseType: !1918)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1907, elements: !228)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1846, file: !27, line: 147, baseType: !169, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1804, file: !27, line: 161, baseType: !911, size: 128, align: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !27, line: 164, baseType: !1922, size: 32, offset: 384)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !27, line: 164, size: 32, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1922, file: !27, line: 169, baseType: !275, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1922, file: !27, line: 177, baseType: !7, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1800, file: !27, line: 181, baseType: !275, size: 32, offset: 416)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1763, file: !1738, line: 535, baseType: !1799, size: 64, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1763, file: !1738, line: 541, baseType: !1929, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1763, file: !1738, line: 545, baseType: !1931, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1763, file: !1738, line: 549, baseType: !1933, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1586, line: 520, baseType: !1799)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1737, file: !1738, line: 581, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1761, !1762, !7}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1737, file: !1738, line: 582, baseType: !1939, size: 64, offset: 448)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1761, !1762, !177, !177}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1737, file: !1738, line: 584, baseType: !1943, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!177, !1538}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1737, file: !1738, line: 588, baseType: !1758, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1737, file: !1738, line: 591, baseType: !1758, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1737, file: !1738, line: 597, baseType: !1949, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!109, !1538, !177, !169, !109, !109}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !1738, line: 603, baseType: !1953, size: 64, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!329, !1538}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1737, file: !1738, line: 613, baseType: !1957, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!109, !1538, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1737, file: !1738, line: 625, baseType: !1963, size: 64, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1960, !1538, !177}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1737, file: !1738, line: 633, baseType: !1967, size: 64, offset: 960)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1799, !1538, !177}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1539, file: !27, line: 697, baseType: !177, size: 64, offset: 1024)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1539, file: !27, line: 699, baseType: !1455, size: 64, offset: 1088)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1539, file: !27, line: 700, baseType: !169, size: 64, offset: 1152)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1539, file: !27, line: 711, baseType: !235, size: 64, offset: 1216)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1539, file: !27, line: 717, baseType: !1960, size: 64, offset: 1280)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1539, file: !27, line: 722, baseType: !1976, offset: 1344)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !969)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1448, file: !14, line: 1928, baseType: !177, size: 64, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1448, file: !14, line: 1929, baseType: !1979, size: 64, offset: 832)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!109, !454, !1455}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1448, file: !14, line: 1930, baseType: !1983, size: 64, offset: 896)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!109, !1455, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !169)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1448, file: !14, line: 1931, baseType: !1979, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1448, file: !14, line: 1932, baseType: !1989, size: 64, offset: 1024)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!109, !1455, !615, !615, !109}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1448, file: !14, line: 1933, baseType: !1993, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!109, !109, !1455, !109}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1448, file: !14, line: 1934, baseType: !1997, size: 64, offset: 1152)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!109, !1455, !109, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1448, file: !14, line: 1935, baseType: !1575, size: 64, offset: 1216)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1448, file: !14, line: 1936, baseType: !2004, size: 64, offset: 1280)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!109, !109}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1448, file: !14, line: 1937, baseType: !1997, size: 64, offset: 1344)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1448, file: !14, line: 1938, baseType: !2009, size: 64, offset: 1408)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!407, !2012, !1455, !1143, !422, !7}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2014, line: 59, flags: DIFlagFwdDecl)
!2014 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1448, file: !14, line: 1939, baseType: !2016, size: 64, offset: 1472)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!407, !1455, !1143, !2012, !422, !7}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1448, file: !14, line: 1940, baseType: !2020, size: 64, offset: 1536)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !1455}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1448, file: !14, line: 1941, baseType: !2024, size: 64, offset: 1600)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!109, !1455, !109, !2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1448, file: !14, line: 1942, baseType: !2030, size: 64, offset: 1664)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!411, !1455, !109, !615, !615}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1448, file: !14, line: 1944, baseType: !2034, size: 64, offset: 1728)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !1122, !1455}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1448, file: !14, line: 1948, baseType: !2038, size: 64, offset: 1792)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!407, !1455, !615, !1455, !615, !422, !7}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1448, file: !14, line: 1950, baseType: !2042, size: 64, offset: 1856)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!615, !1455, !615, !1455, !615, !615, !7}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1448, file: !14, line: 1953, baseType: !1989, size: 64, offset: 1920)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1448, file: !14, line: 1954, baseType: !2047, size: 64, offset: 1984)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!109, !2050, !7}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1448, file: !14, line: 1955, baseType: !2053, size: 64, offset: 2048)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!109, !2050, !1497, !7}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1160, file: !14, line: 1018, baseType: !527, size: 64, offset: 1472)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1160, file: !14, line: 1020, baseType: !169, size: 64, offset: 1536)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1160, file: !14, line: 1023, baseType: !169, size: 64, offset: 1600)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1160, file: !14, line: 1027, baseType: !2060, size: 64, offset: 1664)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1160, file: !14, line: 1029, baseType: !450, size: 64, offset: 1728)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1160, file: !14, line: 1030, baseType: !2063, size: 32, offset: 1792)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2064, line: 8, baseType: !523)
!2064 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1160, file: !14, line: 1031, baseType: !2063, size: 32, offset: 1824)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1123, file: !1124, line: 29, baseType: !169, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1066, file: !14, line: 2077, baseType: !1119, size: 64, offset: 1088)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1066, file: !14, line: 2078, baseType: !1119, size: 64, offset: 1152)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1066, file: !14, line: 2079, baseType: !1119, size: 64, offset: 1216)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1066, file: !14, line: 2081, baseType: !2071, size: 64, offset: 1280)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!407, !605, !109, !173, !422, !615}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1066, file: !14, line: 2082, baseType: !2075, size: 64, offset: 1344)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!407, !605, !109, !329, !422, !615}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1066, file: !14, line: 2083, baseType: !2079, size: 64, offset: 1408)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2082, !454}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2110, !2111, !2112}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2084, file: !51, line: 297, baseType: !937, size: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2084, file: !51, line: 298, baseType: !245, size: 128, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2084, file: !51, line: 299, baseType: !245, size: 128, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2084, file: !51, line: 300, baseType: !245, size: 128, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2084, file: !51, line: 301, baseType: !257, size: 256, offset: 512)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2084, file: !51, line: 302, baseType: !340, size: 32, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2084, file: !51, line: 303, baseType: !275, size: 32, offset: 800)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2084, file: !51, line: 304, baseType: !605, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2084, file: !51, line: 305, baseType: !2095, size: 64, offset: 896)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2096)
!2096 = !{!2097, !2109}
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !51, line: 69, baseType: !2098, size: 32)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !51, line: 69, size: 32, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2098, file: !51, line: 70, baseType: !460, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2098, file: !51, line: 71, baseType: !469, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2098, file: !51, line: 72, baseType: !2103, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2104, line: 24, baseType: !2105)
!2104 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2104, line: 22, size: 32, elements: !2106)
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2105, file: !2104, line: 23, baseType: !2108, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2104, line: 20, baseType: !466)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2095, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2084, file: !51, line: 306, baseType: !615, size: 64, offset: 960)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2084, file: !51, line: 307, baseType: !177, size: 64, offset: 1024)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2084, file: !51, line: 308, baseType: !2113, size: 576, offset: 1088)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2114)
!2114 = !{!2115, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2113, file: !51, line: 206, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !243)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2113, file: !51, line: 207, baseType: !2116, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2113, file: !51, line: 208, baseType: !2116, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2113, file: !51, line: 209, baseType: !2116, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2113, file: !51, line: 210, baseType: !2116, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2113, file: !51, line: 211, baseType: !2116, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2113, file: !51, line: 212, baseType: !2116, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2113, file: !51, line: 213, baseType: !1287, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2113, file: !51, line: 214, baseType: !1287, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1066, file: !14, line: 2085, baseType: !2126, size: 64, offset: 1472)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!411, !605, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2131, line: 15, size: 256, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2132 = !{!2133, !2134, !2135, !2136, !2137}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2130, file: !2131, line: 16, baseType: !175, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2130, file: !2131, line: 19, baseType: !109, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2130, file: !2131, line: 26, baseType: !177, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2130, file: !2131, line: 33, baseType: !177, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2130, file: !2131, line: 36, baseType: !2138, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2131, line: 36, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1066, file: !14, line: 2087, baseType: !2126, size: 64, offset: 1536)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1066, file: !14, line: 2089, baseType: !638, size: 64, offset: 1600)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !606, file: !14, line: 1198, baseType: !2143, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2146)
!2146 = !{!2147, !2151, !2155, !2159, !2160, !2161, !2162, !2163, !2168, !2173, !2177}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2145, file: !51, line: 325, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!109, !2083}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2145, file: !51, line: 326, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2083, !605, !109}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2145, file: !51, line: 327, baseType: !2156, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2083}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2145, file: !51, line: 328, baseType: !2148, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2145, file: !51, line: 329, baseType: !2148, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2145, file: !51, line: 330, baseType: !2148, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2145, file: !51, line: 331, baseType: !1094, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2145, file: !51, line: 334, baseType: !2164, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!2167, !454}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2145, file: !51, line: 335, baseType: !2169, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!109, !454, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2145, file: !51, line: 337, baseType: !2174, size: 64, offset: 576)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!109, !454, !2167}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2145, file: !51, line: 339, baseType: !2178, size: 64, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!109, !605, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !606, file: !14, line: 1199, baseType: !2183, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2186)
!2186 = !{!2187, !2193, !2194, !2198, !2199, !2200, !2215, !2238, !2242, !2243, !2266}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2185, file: !51, line: 431, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!109, !605, !109, !109, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2185, file: !51, line: 432, baseType: !1094, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2185, file: !51, line: 433, baseType: !2195, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!109, !605, !7}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2185, file: !51, line: 434, baseType: !2195, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2185, file: !51, line: 435, baseType: !1094, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2185, file: !51, line: 436, baseType: !2201, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!109, !605, !109, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2205, file: !51, line: 418, baseType: !109, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2205, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2205, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2205, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2205, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2205, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2205, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2205, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2185, file: !51, line: 437, baseType: !2216, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!109, !605, !2095, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2220, file: !51, line: 346, baseType: !109, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2220, file: !51, line: 347, baseType: !527, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2220, file: !51, line: 348, baseType: !527, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2220, file: !51, line: 349, baseType: !527, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2220, file: !51, line: 350, baseType: !527, size: 64, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2220, file: !51, line: 351, baseType: !527, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2220, file: !51, line: 352, baseType: !527, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2220, file: !51, line: 353, baseType: !241, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2220, file: !51, line: 355, baseType: !241, size: 64, offset: 512)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2220, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2220, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2220, file: !51, line: 358, baseType: !527, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2220, file: !51, line: 359, baseType: !527, size: 64, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2220, file: !51, line: 360, baseType: !527, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2220, file: !51, line: 361, baseType: !241, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2220, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2185, file: !51, line: 438, baseType: !2239, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!109, !605, !2181, !2219}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2185, file: !51, line: 440, baseType: !2216, size: 64, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2185, file: !51, line: 441, baseType: !2244, size: 64, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!109, !605, !2247}
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2248, file: !51, line: 412, baseType: !7, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2248, file: !51, line: 413, baseType: !2252, size: 1344, offset: 64)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, size: 1344, elements: !376)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2265}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2253, file: !51, line: 398, baseType: !7, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2253, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2253, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2253, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2253, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2253, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2253, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2253, file: !51, line: 406, baseType: !529, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2253, file: !51, line: 407, baseType: !2264, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !176, line: 132, baseType: !527)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2253, file: !51, line: 408, baseType: !2264, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2185, file: !51, line: 442, baseType: !2195, size: 64, offset: 640)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !606, file: !14, line: 1200, baseType: !2268, size: 64, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !606, file: !14, line: 1201, baseType: !177, size: 64, offset: 640)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !606, file: !14, line: 1202, baseType: !177, size: 64, offset: 704)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !606, file: !14, line: 1203, baseType: !177, size: 64, offset: 768)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !606, file: !14, line: 1204, baseType: !489, size: 64, offset: 832)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !606, file: !14, line: 1205, baseType: !1271, size: 320, offset: 896)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !606, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !606, file: !14, line: 1207, baseType: !275, size: 32, offset: 1248)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !606, file: !14, line: 1209, baseType: !169, size: 64, offset: 1280)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !606, file: !14, line: 1211, baseType: !2280, size: 64, offset: 1344)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !606, file: !14, line: 1223, baseType: !2285, size: 64, offset: 1408)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !506, line: 34, size: 64, elements: !2286)
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2285, file: !506, line: 35, baseType: !509, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !606, file: !14, line: 1224, baseType: !245, size: 128, offset: 1472)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !606, file: !14, line: 1225, baseType: !2290, size: 64, offset: 1600)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !606, file: !14, line: 1226, baseType: !2293, size: 64, offset: 1664)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !606, file: !14, line: 1227, baseType: !2296, size: 64, offset: 1728)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !606, file: !14, line: 1228, baseType: !2299, size: 64, offset: 1792)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !606, file: !14, line: 1229, baseType: !937, size: 128, offset: 1856)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !606, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !606, file: !14, line: 1231, baseType: !2304, size: 2496, offset: 2048)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2310, !2342}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2304, file: !51, line: 522, baseType: !7, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2304, file: !51, line: 523, baseType: !1271, size: 320, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2304, file: !51, line: 524, baseType: !2309, size: 192, offset: 384)
!2309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 192, elements: !376)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2304, file: !51, line: 525, baseType: !2311, size: 1728, offset: 576)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 1728, elements: !376)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2313)
!2313 = !{!2314, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2312, file: !51, line: 223, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2317)
!2317 = !{!2318, !2319, !2332, !2333}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2316, file: !51, line: 446, baseType: !109, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2316, file: !51, line: 447, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2322, file: !51, line: 313, baseType: !1094, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2322, file: !51, line: 314, baseType: !1094, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2322, file: !51, line: 315, baseType: !1094, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2322, file: !51, line: 316, baseType: !1094, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2322, file: !51, line: 317, baseType: !2148, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2322, file: !51, line: 318, baseType: !2148, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2322, file: !51, line: 319, baseType: !2148, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2322, file: !51, line: 320, baseType: !2178, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2316, file: !51, line: 448, baseType: !642, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2316, file: !51, line: 449, baseType: !2315, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2312, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2312, file: !51, line: 226, baseType: !245, size: 128, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2312, file: !51, line: 227, baseType: !177, size: 64, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2312, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2312, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2312, file: !51, line: 230, baseType: !2116, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2312, file: !51, line: 231, baseType: !2116, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2312, file: !51, line: 232, baseType: !169, size: 64, offset: 512)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2304, file: !51, line: 526, baseType: !2343, size: 192, offset: 2304)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 192, elements: !376)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !606, file: !14, line: 1233, baseType: !2345, size: 2368, offset: 4544)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2345, file: !14, line: 1185, baseType: !183, size: 16)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2345, file: !14, line: 1186, baseType: !183, size: 16, offset: 16)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2345, file: !14, line: 1187, baseType: !2350, size: 2304, offset: 64)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, size: 2304, elements: !376)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2352, line: 12, size: 768, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2353 = !{!2354, !2362, !2363, !3559, !3560}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2351, file: !2352, line: 13, baseType: !2355, size: 384)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2356, line: 17, size: 384, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2355, file: !2356, line: 18, baseType: !109, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2355, file: !2356, line: 19, baseType: !109, size: 32, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2355, file: !2356, line: 20, baseType: !1210, size: 192, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2355, file: !2356, line: 22, baseType: !911, size: 128, align: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2351, file: !2352, line: 14, baseType: !765, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2351, file: !2352, line: 15, baseType: !2364, size: 64, offset: 448)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2365, line: 16, size: 64, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2366 = !{!2367}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2364, file: !2365, line: 17, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2014, line: 746, size: 58368, elements: !2370)
!2370 = !{!2371, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2451, !2462, !2557, !2561, !2564, !2595, !2596, !2597, !2598, !2609, !2611, !2612, !2613, !2614, !2615, !2616, !2627, !2628, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2645, !2646, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2739, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2787, !2793, !2794, !2795, !2796, !2797, !2801, !2804, !2811, !2816, !2819, !2822, !2825, !2828, !2964, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3002, !3003, !3004, !3013, !3021, !3022, !3023, !3024, !3025, !3030, !3031, !3032, !3035, !3036, !3039, !3042, !3045, !3053, !3056, !3057, !3143, !3144, !3145, !3146, !3147, !3153, !3154, !3155, !3156, !3159, !3160, !3163, !3166, !3167, !3170, !3171, !3172, !3175, !3176, !3177, !3178, !3179, !3180, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3212, !3213, !3219, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3231, !3303, !3305, !3306, !3307, !3308, !3309, !3310, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2369, file: !2014, line: 752, baseType: !2372, size: 192)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2373, line: 56, size: 192, elements: !2374)
!2373 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2372, file: !2373, line: 57, baseType: !177, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2372, file: !2373, line: 58, baseType: !177, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2372, file: !2373, line: 59, baseType: !523, size: 32, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2372, file: !2373, line: 61, baseType: !523, size: 32, offset: 160)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2369, file: !2014, line: 754, baseType: !7, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2369, file: !2014, line: 767, baseType: !169, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2369, file: !2014, line: 768, baseType: !314, size: 32, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2369, file: !2014, line: 770, baseType: !7, size: 32, offset: 352)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2369, file: !2014, line: 771, baseType: !7, size: 32, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2369, file: !2014, line: 774, baseType: !109, size: 32, offset: 416)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2369, file: !2014, line: 775, baseType: !2386, size: 128, offset: 448)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2387, line: 58, size: 128, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2388 = !{!2389, !2390, !2395, !2396}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2386, file: !2387, line: 59, baseType: !210, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !2387, line: 60, baseType: !2391, size: 32, offset: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2386, file: !2387, line: 60, size: 32, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2391, file: !2387, line: 61, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2391, file: !2387, line: 62, baseType: !275, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2386, file: !2387, line: 65, baseType: !179, size: 16, offset: 96)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2386, file: !2387, line: 65, baseType: !179, size: 16, offset: 112)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2369, file: !2014, line: 776, baseType: !7, size: 32, offset: 576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2369, file: !2014, line: 777, baseType: !177, size: 64, offset: 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2369, file: !2014, line: 778, baseType: !2368, size: 64, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2369, file: !2014, line: 787, baseType: !109, size: 32, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2369, file: !2014, line: 788, baseType: !109, size: 32, offset: 800)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2369, file: !2014, line: 790, baseType: !109, size: 32, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2369, file: !2014, line: 792, baseType: !109, size: 32, offset: 864)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2369, file: !2014, line: 793, baseType: !109, size: 32, offset: 896)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2369, file: !2014, line: 794, baseType: !109, size: 32, offset: 928)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2369, file: !2014, line: 795, baseType: !7, size: 32, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2369, file: !2014, line: 797, baseType: !2408, size: 2048, offset: 1024)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2014, line: 551, size: 2048, elements: !2409)
!2409 = !{!2410, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2430, !2433, !2434, !2435}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2408, file: !2014, line: 553, baseType: !2411, size: 128)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2014, line: 411, size: 128, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2411, file: !2014, line: 412, baseType: !177, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2411, file: !2014, line: 413, baseType: !523, size: 32, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2408, file: !2014, line: 554, baseType: !803, size: 192, align: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2408, file: !2014, line: 555, baseType: !527, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2408, file: !2014, line: 556, baseType: !527, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2408, file: !2014, line: 558, baseType: !245, size: 128, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2408, file: !2014, line: 559, baseType: !7, size: 32, offset: 576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2408, file: !2014, line: 561, baseType: !527, size: 64, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2408, file: !2014, line: 562, baseType: !527, size: 64, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2408, file: !2014, line: 563, baseType: !527, size: 64, offset: 768)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2408, file: !2014, line: 564, baseType: !527, size: 64, offset: 832)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2408, file: !2014, line: 565, baseType: !241, size: 64, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2408, file: !2014, line: 566, baseType: !527, size: 64, offset: 960)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2408, file: !2014, line: 568, baseType: !527, size: 64, offset: 1024)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2408, file: !2014, line: 571, baseType: !109, size: 32, offset: 1088)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2408, file: !2014, line: 572, baseType: !2429, size: 64, offset: 1152)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2408, file: !2014, line: 574, baseType: !2431, size: 64, offset: 1216)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2014, line: 49, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2408, file: !2014, line: 576, baseType: !2431, size: 64, offset: 1280)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2408, file: !2014, line: 578, baseType: !177, size: 64, offset: 1344)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2408, file: !2014, line: 588, baseType: !2436, size: 512, align: 512, offset: 1536)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2014, line: 497, size: 512, align: 512, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2436, file: !2014, line: 498, baseType: !527, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2436, file: !2014, line: 499, baseType: !527, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2436, file: !2014, line: 500, baseType: !527, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2436, file: !2014, line: 501, baseType: !523, size: 32, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2436, file: !2014, line: 502, baseType: !523, size: 32, offset: 224)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2436, file: !2014, line: 503, baseType: !177, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2436, file: !2014, line: 504, baseType: !177, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2436, file: !2014, line: 505, baseType: !177, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2436, file: !2014, line: 506, baseType: !2447, size: 64, align: 64, offset: 448)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2014, line: 445, size: 64, align: 64, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2447, file: !2014, line: 446, baseType: !7, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2447, file: !2014, line: 447, baseType: !7, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2369, file: !2014, line: 798, baseType: !2452, size: 384, offset: 3072)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2014, line: 592, size: 384, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2452, file: !2014, line: 593, baseType: !245, size: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2452, file: !2014, line: 594, baseType: !177, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2452, file: !2014, line: 595, baseType: !177, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2452, file: !2014, line: 596, baseType: !7, size: 32, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2452, file: !2014, line: 597, baseType: !183, size: 16, offset: 288)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2452, file: !2014, line: 598, baseType: !183, size: 16, offset: 304)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2452, file: !2014, line: 600, baseType: !2461, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2369, file: !2014, line: 799, baseType: !2463, size: 1792, offset: 3456)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2014, line: 610, size: 1792, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2554, !2555}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2463, file: !2014, line: 611, baseType: !803, size: 192, align: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2463, file: !2014, line: 618, baseType: !527, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2463, file: !2014, line: 619, baseType: !527, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2463, file: !2014, line: 620, baseType: !527, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2463, file: !2014, line: 621, baseType: !527, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2463, file: !2014, line: 622, baseType: !527, size: 64, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2463, file: !2014, line: 629, baseType: !241, size: 64, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2463, file: !2014, line: 630, baseType: !527, size: 64, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2014, line: 631, baseType: !7, size: 32, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2463, file: !2014, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2463, file: !2014, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2463, file: !2014, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2463, file: !2014, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2463, file: !2014, line: 662, baseType: !2479, size: 512, offset: 704)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2480)
!2480 = !{!2481, !2489, !2490, !2495, !2550, !2551, !2552, !2553}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2479, file: !57, line: 119, baseType: !2482, size: 256)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2483, line: 9, size: 256, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2482, file: !2483, line: 10, baseType: !803, size: 192, align: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2482, file: !2483, line: 11, baseType: !2487, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2488, line: 29, baseType: !241)
!2488 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2479, file: !57, line: 120, baseType: !2487, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2479, file: !57, line: 121, baseType: !2491, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!56, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2479, file: !57, line: 122, baseType: !2496, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2498)
!2498 = !{!2499, !2524, !2525, !2528, !2533, !2534, !2545, !2549}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2497, file: !57, line: 160, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2501, file: !57, line: 216, baseType: !262, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2501, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2501, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2501, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2501, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2501, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2501, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2501, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2501, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2501, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2501, file: !57, line: 227, baseType: !183, size: 16, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2501, file: !57, line: 228, baseType: !183, size: 16, offset: 208)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2501, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2501, file: !57, line: 235, baseType: !2487, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2501, file: !57, line: 236, baseType: !2494, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2501, file: !57, line: 237, baseType: !2487, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2501, file: !57, line: 238, baseType: !2494, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2501, file: !57, line: 239, baseType: !2521, size: 4096, align: 512, offset: 512)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2497, size: 4096, align: 512, elements: !2522)
!2522 = !{!2523}
!2523 = !DISubrange(count: 8)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2497, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2497, file: !57, line: 162, baseType: !2526, size: 32, offset: 96)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !176, line: 32, baseType: !2527)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !409, line: 96, baseType: !109)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2497, file: !57, line: 163, baseType: !2529, size: 32, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !496, line: 274, baseType: !2530)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !496, line: 274, size: 32, elements: !2531)
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2530, file: !496, line: 274, baseType: !500, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2497, file: !57, line: 164, baseType: !2494, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2497, file: !57, line: 165, baseType: !2535, size: 128, offset: 256)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2483, line: 14, size: 128, elements: !2536)
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2535, file: !2483, line: 15, baseType: !2538, size: 128)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !804, line: 26, size: 128, elements: !2539)
!2539 = !{!2540, !2544}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2538, file: !804, line: 27, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !804, line: 12, size: 64, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2541, file: !804, line: 13, baseType: !808, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2538, file: !804, line: 28, baseType: !808, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2497, file: !57, line: 166, baseType: !2546, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!2487}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2497, file: !57, line: 167, baseType: !2487, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2479, file: !57, line: 123, baseType: !225, size: 8, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2479, file: !57, line: 124, baseType: !225, size: 8, offset: 456)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2479, file: !57, line: 125, baseType: !225, size: 8, offset: 464)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2479, file: !57, line: 126, baseType: !225, size: 8, offset: 472)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2463, file: !2014, line: 671, baseType: !2479, size: 512, offset: 1216)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2463, file: !2014, line: 679, baseType: !2556, size: 64, offset: 1728)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2369, file: !2014, line: 800, baseType: !2558, size: 64, offset: 5248)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2560)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2014, line: 800, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2369, file: !2014, line: 809, baseType: !2562, size: 64, offset: 5312)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2014, line: 70, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2369, file: !2014, line: 825, baseType: !2565, size: 2048, align: 512, offset: 5632)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2014, line: 509, size: 2048, align: 512, elements: !2566)
!2566 = !{!2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2565, file: !2014, line: 511, baseType: !527, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2565, file: !2014, line: 512, baseType: !527, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2565, file: !2014, line: 513, baseType: !527, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2565, file: !2014, line: 514, baseType: !527, size: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2565, file: !2014, line: 515, baseType: !527, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2565, file: !2014, line: 516, baseType: !527, size: 64, offset: 320)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2565, file: !2014, line: 518, baseType: !527, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2565, file: !2014, line: 519, baseType: !527, size: 64, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2565, file: !2014, line: 520, baseType: !241, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2565, file: !2014, line: 522, baseType: !527, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2565, file: !2014, line: 523, baseType: !527, size: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2565, file: !2014, line: 524, baseType: !241, size: 64, offset: 704)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2565, file: !2014, line: 526, baseType: !241, size: 64, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2565, file: !2014, line: 527, baseType: !527, size: 64, offset: 832)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2565, file: !2014, line: 529, baseType: !527, size: 64, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2565, file: !2014, line: 530, baseType: !527, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2565, file: !2014, line: 531, baseType: !527, size: 64, offset: 1024)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2565, file: !2014, line: 532, baseType: !527, size: 64, offset: 1088)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2565, file: !2014, line: 533, baseType: !527, size: 64, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2565, file: !2014, line: 535, baseType: !527, size: 64, offset: 1216)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2565, file: !2014, line: 536, baseType: !527, size: 64, offset: 1280)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2565, file: !2014, line: 537, baseType: !527, size: 64, offset: 1344)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2565, file: !2014, line: 538, baseType: !527, size: 64, offset: 1408)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2565, file: !2014, line: 539, baseType: !527, size: 64, offset: 1472)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2565, file: !2014, line: 540, baseType: !527, size: 64, offset: 1536)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2565, file: !2014, line: 541, baseType: !527, size: 64, offset: 1600)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2565, file: !2014, line: 542, baseType: !527, size: 64, offset: 1664)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2565, file: !2014, line: 543, baseType: !527, size: 64, offset: 1728)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2369, file: !2014, line: 833, baseType: !7, size: 32, offset: 7680)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2369, file: !2014, line: 836, baseType: !7, size: 32, offset: 7712)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2369, file: !2014, line: 837, baseType: !109, size: 32, offset: 7744)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2369, file: !2014, line: 838, baseType: !2599, size: 64, offset: 7808)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2602, line: 19, baseType: !2603)
!2602 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2602, line: 19, size: 64, elements: !2604)
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2603, file: !2602, line: 19, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 64, elements: !2607)
!2607 = !{!2608}
!2608 = !DISubrange(count: 1)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2369, file: !2014, line: 839, baseType: !2610, size: 64, offset: 7872)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2369, file: !2014, line: 840, baseType: !2601, size: 64, offset: 7936)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2369, file: !2014, line: 841, baseType: !169, size: 64, offset: 8000)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2369, file: !2014, line: 843, baseType: !183, size: 16, offset: 8064)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2369, file: !2014, line: 845, baseType: !183, size: 16, offset: 8080)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2369, file: !2014, line: 848, baseType: !109, size: 32, offset: 8096)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2369, file: !2014, line: 849, baseType: !2617, size: 32, offset: 8128)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2014, line: 718, size: 32, elements: !2618)
!2618 = !{!2619, !2626}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2617, file: !2014, line: 724, baseType: !2620, size: 32)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2617, file: !2014, line: 719, size: 32, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2620, file: !2014, line: 720, baseType: !225, size: 8)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2620, file: !2014, line: 721, baseType: !225, size: 8, offset: 8)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2620, file: !2014, line: 722, baseType: !225, size: 8, offset: 16)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2620, file: !2014, line: 723, baseType: !225, size: 8, offset: 24)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2617, file: !2014, line: 725, baseType: !523, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2369, file: !2014, line: 850, baseType: !245, size: 128, offset: 8192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2369, file: !2014, line: 851, baseType: !2629, size: 64, offset: 8320)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2014, line: 60, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2369, file: !2014, line: 855, baseType: !177, size: 64, offset: 8384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2369, file: !2014, line: 856, baseType: !225, size: 8, offset: 8448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2369, file: !2014, line: 857, baseType: !225, size: 8, offset: 8456)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2369, file: !2014, line: 858, baseType: !109, size: 32, offset: 8480)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2369, file: !2014, line: 859, baseType: !245, size: 128, offset: 8512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2369, file: !2014, line: 860, baseType: !109, size: 32, offset: 8640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2369, file: !2014, line: 861, baseType: !245, size: 128, offset: 8704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2369, file: !2014, line: 873, baseType: !2639, size: 256, offset: 8832)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2014, line: 376, size: 256, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2639, file: !2014, line: 381, baseType: !177, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2639, file: !2014, line: 384, baseType: !529, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2639, file: !2014, line: 389, baseType: !529, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2639, file: !2014, line: 392, baseType: !529, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2369, file: !2014, line: 875, baseType: !245, size: 128, offset: 9088)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2369, file: !2014, line: 877, baseType: !2647, size: 320, offset: 9216)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2648, line: 86, size: 320, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2647, file: !2648, line: 87, baseType: !109, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2647, file: !2648, line: 88, baseType: !245, size: 128, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2647, file: !2648, line: 89, baseType: !245, size: 128, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2369, file: !2014, line: 878, baseType: !803, size: 192, align: 64, offset: 9536)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2369, file: !2014, line: 881, baseType: !1551, size: 64, offset: 9728)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2369, file: !2014, line: 882, baseType: !1551, size: 64, offset: 9792)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2369, file: !2014, line: 884, baseType: !109, size: 32, offset: 9856)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2369, file: !2014, line: 885, baseType: !109, size: 32, offset: 9888)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2369, file: !2014, line: 886, baseType: !109, size: 32, offset: 9920)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2369, file: !2014, line: 888, baseType: !109, size: 32, offset: 9952)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2369, file: !2014, line: 890, baseType: !177, size: 64, offset: 9984)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2369, file: !2014, line: 893, baseType: !7, size: 32, offset: 10048)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2369, file: !2014, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2369, file: !2014, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2369, file: !2014, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2369, file: !2014, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2369, file: !2014, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2369, file: !2014, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2369, file: !2014, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2369, file: !2014, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2369, file: !2014, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2369, file: !2014, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2369, file: !2014, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2369, file: !2014, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2369, file: !2014, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2369, file: !2014, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2369, file: !2014, line: 969, baseType: !177, size: 64, offset: 10176)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2369, file: !2014, line: 971, baseType: !2678, size: 448, offset: 10240)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2679)
!2679 = !{!2680, !2681, !2686}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2678, file: !62, line: 26, baseType: !177, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2678, file: !62, line: 27, baseType: !2682, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!411, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2678, file: !62, line: 28, baseType: !2687, size: 320, offset: 128)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2678, file: !62, line: 28, size: 320, elements: !2688)
!2688 = !{!2689, !2699, !2724}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2687, file: !62, line: 37, baseType: !2690, size: 320)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !62, line: 30, size: 320, elements: !2691)
!2691 = !{!2692, !2694, !2695, !2696, !2697, !2698}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2690, file: !62, line: 31, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2690, file: !62, line: 32, baseType: !523, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !62, line: 33, baseType: !523, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2690, file: !62, line: 34, baseType: !523, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2690, file: !62, line: 35, baseType: !527, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2690, file: !62, line: 36, baseType: !2693, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2687, file: !62, line: 47, baseType: !2700, size: 192)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !62, line: 39, size: 192, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2723}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2700, file: !62, line: 40, baseType: !2526, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2700, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !62, line: 42, baseType: !2705, size: 64, offset: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !62, line: 42, size: 64, elements: !2706)
!2706 = !{!2707, !2715}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2705, file: !62, line: 43, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2710, line: 7, size: 128, elements: !2711)
!2710 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2711 = !{!2712, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2709, file: !2710, line: 8, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !409, line: 93, baseType: !243)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2709, file: !2710, line: 9, baseType: !243, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2705, file: !62, line: 44, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2718, line: 7, size: 64, elements: !2719)
!2718 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2719 = !{!2720, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2717, file: !2718, line: 8, baseType: !2721, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2718, line: 5, baseType: !708)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2717, file: !2718, line: 9, baseType: !708, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2700, file: !62, line: 46, baseType: !527, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2687, file: !62, line: 55, baseType: !2725, size: 256)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !62, line: 49, size: 256, elements: !2726)
!2726 = !{!2727, !2735, !2736, !2737, !2738}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2725, file: !62, line: 50, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2730, line: 36, size: 64, elements: !2731)
!2730 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2731 = !{!2732, !2733, !2734}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2729, file: !2730, line: 37, baseType: !109, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2729, file: !2730, line: 38, baseType: !829, size: 16, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2729, file: !2730, line: 39, baseType: !829, size: 16, offset: 48)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2725, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2725, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2725, file: !62, line: 53, baseType: !177, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2725, file: !62, line: 54, baseType: !177, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2369, file: !2014, line: 973, baseType: !2740, size: 32, offset: 10688)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !176, line: 27, baseType: !2741)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !409, line: 28, baseType: !109)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2369, file: !2014, line: 974, baseType: !2740, size: 32, offset: 10720)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2369, file: !2014, line: 978, baseType: !177, size: 64, offset: 10752)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2369, file: !2014, line: 987, baseType: !2368, size: 64, offset: 10816)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2369, file: !2014, line: 990, baseType: !2368, size: 64, offset: 10880)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2369, file: !2014, line: 995, baseType: !245, size: 128, offset: 10944)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2369, file: !2014, line: 996, baseType: !245, size: 128, offset: 11072)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2369, file: !2014, line: 997, baseType: !2368, size: 64, offset: 11200)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2369, file: !2014, line: 1005, baseType: !245, size: 128, offset: 11264)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2369, file: !2014, line: 1006, baseType: !245, size: 128, offset: 11392)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2369, file: !2014, line: 1009, baseType: !1200, size: 64, offset: 11520)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2369, file: !2014, line: 1010, baseType: !2753, size: 512, offset: 11584)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 512, elements: !921)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2369, file: !2014, line: 1011, baseType: !245, size: 128, offset: 12096)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2369, file: !2014, line: 1012, baseType: !245, size: 128, offset: 12224)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2369, file: !2014, line: 1014, baseType: !661, size: 64, offset: 12352)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2369, file: !2014, line: 1017, baseType: !820, size: 64, offset: 12416)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2369, file: !2014, line: 1020, baseType: !820, size: 64, offset: 12480)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2369, file: !2014, line: 1023, baseType: !169, size: 64, offset: 12544)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2369, file: !2014, line: 1025, baseType: !527, size: 64, offset: 12608)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2369, file: !2014, line: 1026, baseType: !527, size: 64, offset: 12672)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2369, file: !2014, line: 1031, baseType: !527, size: 64, offset: 12736)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2369, file: !2014, line: 1032, baseType: !2764, size: 192, offset: 12800)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2014, line: 324, size: 192, elements: !2765)
!2765 = !{!2766, !2767, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2764, file: !2014, line: 326, baseType: !527, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2764, file: !2014, line: 327, baseType: !527, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2764, file: !2014, line: 328, baseType: !262, size: 32, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2369, file: !2014, line: 1041, baseType: !177, size: 64, offset: 12992)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2369, file: !2014, line: 1042, baseType: !177, size: 64, offset: 13056)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2369, file: !2014, line: 1045, baseType: !527, size: 64, offset: 13120)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2369, file: !2014, line: 1048, baseType: !527, size: 64, offset: 13184)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2369, file: !2014, line: 1051, baseType: !177, size: 64, offset: 13248)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2369, file: !2014, line: 1052, baseType: !177, size: 64, offset: 13312)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2369, file: !2014, line: 1055, baseType: !2776, size: 640, offset: 13376)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2777, line: 132, size: 640, elements: !2778)
!2777 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2778 = !{!2779, !2785, !2786}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2776, file: !2777, line: 133, baseType: !2780, size: 576)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2781, size: 576, elements: !376)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2777, line: 117, size: 192, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2781, file: !2777, line: 118, baseType: !527, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2781, file: !2777, line: 119, baseType: !2535, size: 128, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2776, file: !2777, line: 134, baseType: !7, size: 32, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2776, file: !2777, line: 135, baseType: !7, size: 32, offset: 608)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2369, file: !2014, line: 1058, baseType: !2788, size: 448, offset: 14016)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2777, line: 144, size: 448, elements: !2789)
!2789 = !{!2790, !2791, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2788, file: !2777, line: 145, baseType: !911, size: 128, align: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2788, file: !2777, line: 146, baseType: !257, size: 256, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2788, file: !2777, line: 147, baseType: !7, size: 32, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2369, file: !2014, line: 1064, baseType: !1230, size: 64, offset: 14464)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2369, file: !2014, line: 1067, baseType: !1230, size: 64, offset: 14528)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2369, file: !2014, line: 1070, baseType: !1230, size: 64, offset: 14592)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2369, file: !2014, line: 1074, baseType: !1257, size: 64, offset: 14656)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2369, file: !2014, line: 1084, baseType: !2798, size: 128, offset: 14720)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, elements: !2799)
!2799 = !{!2800}
!2800 = !DISubrange(count: 16)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2369, file: !2014, line: 1086, baseType: !2802, size: 64, offset: 14848)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2014, line: 55, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2369, file: !2014, line: 1089, baseType: !2805, size: 64, offset: 14912)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2806, line: 12, size: 64, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2805, file: !2806, line: 13, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2806, line: 8, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2369, file: !2014, line: 1090, baseType: !2812, size: 128, offset: 14976)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2813, line: 13, size: 128, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2814 = !{!2815}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2812, file: !2813, line: 14, baseType: !245, size: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2369, file: !2014, line: 1097, baseType: !2817, size: 64, offset: 15104)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2014, line: 50, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2369, file: !2014, line: 1100, baseType: !2820, size: 64, offset: 15168)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2014, line: 1100, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2369, file: !2014, line: 1103, baseType: !2823, size: 64, offset: 15232)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2014, line: 53, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2369, file: !2014, line: 1107, baseType: !2826, size: 64, offset: 15296)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2014, line: 56, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2369, file: !2014, line: 1110, baseType: !2829, size: 64, offset: 15360)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2831, line: 93, size: 8768, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2880, !2889, !2890, !2892, !2893, !2894, !2895, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2933, !2934, !2941, !2951, !2954, !2955, !2958, !2959, !2960, !2961, !2962, !2963}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2830, file: !2831, line: 94, baseType: !314, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2830, file: !2831, line: 95, baseType: !275, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2830, file: !2831, line: 96, baseType: !109, size: 32, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2830, file: !2831, line: 97, baseType: !109, size: 32, offset: 96)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2830, file: !2831, line: 98, baseType: !245, size: 128, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2830, file: !2831, line: 100, baseType: !1210, size: 192, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2830, file: !2831, line: 103, baseType: !2368, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2830, file: !2831, line: 106, baseType: !2841, size: 192, offset: 512)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1415, line: 32, size: 192, elements: !2842)
!2842 = !{!2843, !2844}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2841, file: !1415, line: 33, baseType: !245, size: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2841, file: !1415, line: 34, baseType: !2845, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2846, line: 25, baseType: !2847)
!2846 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2846, line: 23, size: 64, elements: !2848)
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2847, file: !2846, line: 24, baseType: !2606, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2830, file: !2831, line: 109, baseType: !1050, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2830, file: !2831, line: 112, baseType: !109, size: 32, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2830, file: !2831, line: 114, baseType: !109, size: 32, offset: 800)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2830, file: !2831, line: 115, baseType: !2368, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2830, file: !2831, line: 118, baseType: !109, size: 32, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !2831, line: 119, baseType: !7, size: 32, offset: 928)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2830, file: !2831, line: 121, baseType: !2857, size: 64, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2831, line: 80, size: 448, elements: !2859)
!2859 = !{!2860, !2861, !2867}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2858, file: !2831, line: 81, baseType: !275, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2858, file: !2831, line: 82, baseType: !2862, size: 128, offset: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2831, line: 75, size: 128, elements: !2863)
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2862, file: !2831, line: 76, baseType: !2368, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2862, file: !2831, line: 77, baseType: !2866, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2858, file: !2831, line: 83, baseType: !662, size: 256, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2830, file: !2831, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2830, file: !2831, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2830, file: !2831, line: 138, baseType: !7, size: 32, offset: 1056)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2830, file: !2831, line: 139, baseType: !245, size: 128, offset: 1088)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2830, file: !2831, line: 142, baseType: !2479, size: 512, offset: 1216)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2830, file: !2831, line: 143, baseType: !2487, size: 64, offset: 1728)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2830, file: !2831, line: 150, baseType: !2875, size: 256, offset: 1792)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2876, size: 256, elements: !810)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2831, line: 38, size: 128, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2876, file: !2831, line: 39, baseType: !527, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2876, file: !2831, line: 40, baseType: !527, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2830, file: !2831, line: 156, baseType: !2881, size: 192, offset: 2048)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2831, line: 66, size: 192, elements: !2882)
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2881, file: !2831, line: 67, baseType: !2884, size: 192)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2831, line: 47, size: 192, elements: !2885)
!2885 = !{!2886, !2887, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2884, file: !2831, line: 48, baseType: !237, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2884, file: !2831, line: 49, baseType: !237, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2884, file: !2831, line: 50, baseType: !237, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2830, file: !2831, line: 160, baseType: !2776, size: 640, offset: 2240)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2830, file: !2831, line: 163, baseType: !2891, size: 256, offset: 2880)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 256, elements: !921)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2830, file: !2831, line: 169, baseType: !1200, size: 64, offset: 3136)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2830, file: !2831, line: 172, baseType: !109, size: 32, offset: 3200)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2830, file: !2831, line: 174, baseType: !305, size: 64, offset: 3264)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2830, file: !2831, line: 185, baseType: !2896, size: 64, offset: 3328)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !496, line: 860, baseType: !2897)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 853, size: 64, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2897, file: !496, line: 858, baseType: !495, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !496, line: 859, baseType: !340, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2830, file: !2831, line: 186, baseType: !527, size: 64, offset: 3392)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2830, file: !2831, line: 186, baseType: !527, size: 64, offset: 3456)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2830, file: !2831, line: 186, baseType: !527, size: 64, offset: 3520)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2830, file: !2831, line: 186, baseType: !527, size: 64, offset: 3584)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2830, file: !2831, line: 187, baseType: !527, size: 64, offset: 3648)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2830, file: !2831, line: 188, baseType: !527, size: 64, offset: 3712)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2830, file: !2831, line: 189, baseType: !2764, size: 192, offset: 3776)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2830, file: !2831, line: 190, baseType: !177, size: 64, offset: 3968)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2830, file: !2831, line: 190, baseType: !177, size: 64, offset: 4032)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2830, file: !2831, line: 190, baseType: !177, size: 64, offset: 4096)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2830, file: !2831, line: 190, baseType: !177, size: 64, offset: 4160)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2830, file: !2831, line: 191, baseType: !177, size: 64, offset: 4224)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2830, file: !2831, line: 191, baseType: !177, size: 64, offset: 4288)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2830, file: !2831, line: 191, baseType: !177, size: 64, offset: 4352)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2830, file: !2831, line: 191, baseType: !177, size: 64, offset: 4416)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2830, file: !2831, line: 192, baseType: !177, size: 64, offset: 4480)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2830, file: !2831, line: 192, baseType: !177, size: 64, offset: 4544)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2830, file: !2831, line: 192, baseType: !177, size: 64, offset: 4608)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2830, file: !2831, line: 192, baseType: !177, size: 64, offset: 4672)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2830, file: !2831, line: 193, baseType: !177, size: 64, offset: 4736)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2830, file: !2831, line: 193, baseType: !177, size: 64, offset: 4800)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2830, file: !2831, line: 194, baseType: !2923, size: 448, offset: 4864)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2924, line: 12, size: 448, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2923, file: !2924, line: 15, baseType: !527, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2923, file: !2924, line: 17, baseType: !527, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2923, file: !2924, line: 19, baseType: !527, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2923, file: !2924, line: 21, baseType: !527, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2923, file: !2924, line: 29, baseType: !527, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2923, file: !2924, line: 35, baseType: !527, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2923, file: !2924, line: 44, baseType: !527, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2830, file: !2831, line: 202, baseType: !529, size: 64, offset: 5312)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2830, file: !2831, line: 213, baseType: !2935, size: 2048, offset: 5376)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 2048, elements: !2799)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2937, line: 43, size: 128, elements: !2938)
!2937 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2936, file: !2937, line: 44, baseType: !424, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2936, file: !2937, line: 45, baseType: !424, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2830, file: !2831, line: 216, baseType: !2942, size: 448, offset: 7424)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2831, line: 30, size: 448, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2942, file: !2831, line: 31, baseType: !109, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2942, file: !2831, line: 32, baseType: !411, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2942, file: !2831, line: 33, baseType: !177, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2942, file: !2831, line: 34, baseType: !527, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2942, file: !2831, line: 34, baseType: !527, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2942, file: !2831, line: 35, baseType: !177, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2942, file: !2831, line: 35, baseType: !177, size: 64, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2830, file: !2831, line: 219, baseType: !2952, size: 64, offset: 7872)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2831, line: 219, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2830, file: !2831, line: 222, baseType: !7, size: 32, offset: 7936)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2830, file: !2831, line: 223, baseType: !2956, size: 64, offset: 8000)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2831, line: 223, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2830, file: !2831, line: 230, baseType: !221, size: 8, offset: 8064)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2830, file: !2831, line: 231, baseType: !829, size: 16, offset: 8080)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2830, file: !2831, line: 232, baseType: !829, size: 16, offset: 8096)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2830, file: !2831, line: 234, baseType: !1551, size: 64, offset: 8128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2830, file: !2831, line: 237, baseType: !257, size: 256, offset: 8192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2830, file: !2831, line: 243, baseType: !1271, size: 320, offset: 8448)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2369, file: !2014, line: 1111, baseType: !2965, size: 64, offset: 15424)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2831, line: 20, size: 16640, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2966, file: !2831, line: 21, baseType: !340, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2966, file: !2831, line: 22, baseType: !314, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2966, file: !2831, line: 23, baseType: !1210, size: 192, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2966, file: !2831, line: 24, baseType: !2972, size: 16384, offset: 256)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2973, size: 16384, elements: !380)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1415, line: 51, size: 256, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2973, file: !1415, line: 52, baseType: !2976, size: 256)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1415, line: 37, size: 256, elements: !2977)
!2977 = !{!2978, !2985, !2986, !2990}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2976, file: !1415, line: 39, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2980, line: 83, baseType: !2981)
!2980 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2980, line: 82, baseType: !2983)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !109}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2976, file: !1415, line: 40, baseType: !177, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2976, file: !1415, line: 46, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2980, line: 86, baseType: !2988)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2980, line: 85, baseType: !1045)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2976, file: !1415, line: 48, baseType: !2845, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2369, file: !2014, line: 1112, baseType: !2845, size: 64, offset: 15488)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2369, file: !2014, line: 1113, baseType: !2845, size: 64, offset: 15552)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2369, file: !2014, line: 1115, baseType: !2845, size: 64, offset: 15616)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2369, file: !2014, line: 1116, baseType: !2841, size: 192, offset: 15680)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2369, file: !2014, line: 1117, baseType: !177, size: 64, offset: 15872)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2369, file: !2014, line: 1118, baseType: !422, size: 64, offset: 15936)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2369, file: !2014, line: 1119, baseType: !7, size: 32, offset: 16000)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2369, file: !2014, line: 1121, baseType: !910, size: 64, offset: 16064)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2369, file: !2014, line: 1125, baseType: !3000, size: 64, offset: 16128)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2014, line: 43, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2369, file: !2014, line: 1127, baseType: !460, size: 32, offset: 16192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2369, file: !2014, line: 1128, baseType: !7, size: 32, offset: 16224)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2369, file: !2014, line: 1130, baseType: !3005, size: 128, offset: 16256)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3006, line: 37, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3007 = !{!3008, !3009, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3005, file: !3006, line: 38, baseType: !109, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3005, file: !3006, line: 39, baseType: !275, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3005, file: !3006, line: 40, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3006, line: 24, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2369, file: !2014, line: 1131, baseType: !3014, size: 256, offset: 16384)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3015, line: 12, size: 256, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3014, file: !3015, line: 13, baseType: !173, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3014, file: !3015, line: 14, baseType: !177, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3014, file: !3015, line: 15, baseType: !177, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3014, file: !3015, line: 16, baseType: !221, size: 8, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2369, file: !2014, line: 1134, baseType: !527, size: 64, offset: 16640)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2369, file: !2014, line: 1135, baseType: !527, size: 64, offset: 16704)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2369, file: !2014, line: 1138, baseType: !340, size: 32, offset: 16768)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2369, file: !2014, line: 1141, baseType: !262, size: 32, offset: 16800)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2369, file: !2014, line: 1143, baseType: !3026, size: 64, offset: 16832)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2014, line: 735, size: 64, elements: !3027)
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3026, file: !2014, line: 736, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2369, file: !2014, line: 1147, baseType: !2538, size: 128, offset: 16896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2369, file: !2014, line: 1149, baseType: !2368, size: 64, offset: 17024)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2369, file: !2014, line: 1151, baseType: !3033, size: 64, offset: 17088)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2014, line: 1151, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2369, file: !2014, line: 1188, baseType: !169, size: 64, offset: 17152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2369, file: !2014, line: 1191, baseType: !3037, size: 64, offset: 17216)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2014, line: 44, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2369, file: !2014, line: 1194, baseType: !3040, size: 64, offset: 17280)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2014, line: 45, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2369, file: !2014, line: 1197, baseType: !3043, size: 64, offset: 17344)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2014, line: 61, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2369, file: !2014, line: 1199, baseType: !3046, size: 64, offset: 17408)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3048, line: 99, size: 128, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3047, file: !3048, line: 100, baseType: !235, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3047, file: !3048, line: 101, baseType: !275, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3047, file: !3048, line: 103, baseType: !183, size: 16, offset: 96)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2369, file: !2014, line: 1202, baseType: !3054, size: 64, offset: 17472)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2014, line: 48, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2369, file: !2014, line: 1205, baseType: !177, size: 64, offset: 17536)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2369, file: !2014, line: 1206, baseType: !3058, size: 64, offset: 17600)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1415, line: 14, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1415, line: 12, size: 384, elements: !3061)
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !3060, file: !1415, line: 13, baseType: !3063, size: 384)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !1415, line: 13, size: 384, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3063, file: !1415, line: 13, baseType: !109, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3063, file: !1415, line: 13, baseType: !109, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3063, file: !1415, line: 13, baseType: !109, size: 32, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3063, file: !1415, line: 13, baseType: !3069, size: 256, offset: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3070, line: 37, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3071 = !{!3072, !3077, !3090, !3096, !3105, !3132, !3137}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3069, file: !3070, line: 42, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 39, size: 64, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3073, file: !3070, line: 40, baseType: !2741, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3073, file: !3070, line: 41, baseType: !466, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3069, file: !3070, line: 50, baseType: !3078, size: 192)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 45, size: 192, elements: !3079)
!3079 = !{!3080, !3082, !3083, !3089}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3078, file: !3070, line: 46, baseType: !3081, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !409, line: 95, baseType: !109)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3078, file: !3070, line: 47, baseType: !109, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3078, file: !3070, line: 48, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3070, line: 11, baseType: !3085)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3070, line: 8, size: 64, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3085, file: !3070, line: 9, baseType: !109, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3085, file: !3070, line: 10, baseType: !169, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3078, file: !3070, line: 49, baseType: !109, size: 32, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3069, file: !3070, line: 57, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 53, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3091, file: !3070, line: 54, baseType: !2741, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3091, file: !3070, line: 55, baseType: !466, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3091, file: !3070, line: 56, baseType: !3084, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3069, file: !3070, line: 66, baseType: !3097, size: 256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 60, size: 256, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3102, !3104}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3097, file: !3070, line: 61, baseType: !2741, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3097, file: !3070, line: 62, baseType: !466, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3097, file: !3070, line: 63, baseType: !109, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3097, file: !3070, line: 64, baseType: !3103, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !409, line: 94, baseType: !410)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3097, file: !3070, line: 65, baseType: !3103, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3069, file: !3070, line: 105, baseType: !3106, size: 256)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 69, size: 256, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3106, file: !3070, line: 70, baseType: !169, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !3070, line: 79, baseType: !3110, size: 192, offset: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3106, file: !3070, line: 79, size: 192, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3121, !3126}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3110, file: !3070, line: 81, baseType: !109, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3110, file: !3070, line: 86, baseType: !829, size: 16)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3110, file: !3070, line: 92, baseType: !3115, size: 192)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3070, line: 88, size: 192, elements: !3116)
!3116 = !{!3117, !3119, !3120}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3115, file: !3070, line: 89, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !2522)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3115, file: !3070, line: 90, baseType: !169, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3115, file: !3070, line: 91, baseType: !169, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3110, file: !3070, line: 97, baseType: !3122, size: 96)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3070, line: 94, size: 96, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3122, file: !3070, line: 95, baseType: !3118, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3122, file: !3070, line: 96, baseType: !524, size: 32, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3110, file: !3070, line: 103, baseType: !3127, size: 128)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3070, line: 99, size: 128, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3127, file: !3070, line: 100, baseType: !177, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3127, file: !3070, line: 101, baseType: !524, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3127, file: !3070, line: 102, baseType: !524, size: 32, offset: 96)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3069, file: !3070, line: 111, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 108, size: 128, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3133, file: !3070, line: 109, baseType: !411, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3133, file: !3070, line: 110, baseType: !109, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3069, file: !3070, line: 118, baseType: !3138, size: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 114, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3138, file: !3070, line: 115, baseType: !169, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3138, file: !3070, line: 116, baseType: !109, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3138, file: !3070, line: 117, baseType: !7, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2369, file: !2014, line: 1208, baseType: !2923, size: 448, offset: 17664)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2369, file: !2014, line: 1215, baseType: !527, size: 64, offset: 18112)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2369, file: !2014, line: 1217, baseType: !527, size: 64, offset: 18176)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2369, file: !2014, line: 1219, baseType: !527, size: 64, offset: 18240)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2369, file: !2014, line: 1223, baseType: !3148, size: 64, offset: 18304)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3149, line: 99, baseType: !3150)
!3149 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3149, line: 99, size: 64, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3150, file: !3149, line: 99, baseType: !2606, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2369, file: !2014, line: 1225, baseType: !495, size: 32, offset: 18368)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2369, file: !2014, line: 1226, baseType: !109, size: 32, offset: 18400)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2369, file: !2014, line: 1227, baseType: !109, size: 32, offset: 18432)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2369, file: !2014, line: 1231, baseType: !3157, size: 64, offset: 18496)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2014, line: 1231, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2369, file: !2014, line: 1233, baseType: !245, size: 128, offset: 18560)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2369, file: !2014, line: 1240, baseType: !3161, size: 64, offset: 18688)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2014, line: 62, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2369, file: !2014, line: 1242, baseType: !3164, size: 64, offset: 18752)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2014, line: 1242, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2369, file: !2014, line: 1244, baseType: !245, size: 128, offset: 18816)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2369, file: !2014, line: 1245, baseType: !3168, size: 64, offset: 18944)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2014, line: 51, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2369, file: !2014, line: 1246, baseType: !257, size: 256, offset: 19008)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2369, file: !2014, line: 1247, baseType: !7, size: 32, offset: 19264)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2369, file: !2014, line: 1250, baseType: !3173, size: 64, offset: 19328)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2014, line: 57, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2369, file: !2014, line: 1251, baseType: !257, size: 256, offset: 19392)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2369, file: !2014, line: 1252, baseType: !245, size: 128, offset: 19648)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2369, file: !2014, line: 1259, baseType: !1960, size: 64, offset: 19776)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2369, file: !2014, line: 1260, baseType: !829, size: 16, offset: 19840)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2369, file: !2014, line: 1261, baseType: !829, size: 16, offset: 19856)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2369, file: !2014, line: 1314, baseType: !3181, size: 64, offset: 19904)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3183, line: 62, size: 256, align: 256, elements: !3184)
!3183 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3182, file: !3183, line: 75, baseType: !524, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3182, file: !3183, line: 90, baseType: !524, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3182, file: !3183, line: 112, baseType: !528, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3182, file: !3183, line: 132, baseType: !524, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3182, file: !3183, line: 140, baseType: !524, size: 32, offset: 160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3182, file: !3183, line: 149, baseType: !524, size: 32, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3182, file: !3183, line: 154, baseType: !3192, offset: 224)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !228)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2369, file: !2014, line: 1315, baseType: !523, size: 32, offset: 19968)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2369, file: !2014, line: 1316, baseType: !523, size: 32, offset: 20000)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2369, file: !2014, line: 1321, baseType: !177, size: 64, offset: 20032)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2369, file: !2014, line: 1325, baseType: !109, size: 32, offset: 20096)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2369, file: !2014, line: 1326, baseType: !109, size: 32, offset: 20128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2369, file: !2014, line: 1327, baseType: !109, size: 32, offset: 20160)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2369, file: !2014, line: 1328, baseType: !109, size: 32, offset: 20192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2369, file: !2014, line: 1329, baseType: !911, size: 128, align: 64, offset: 20224)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2369, file: !2014, line: 1332, baseType: !3202, size: 128, offset: 20352)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3203, line: 51, size: 128, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3204 = !{!3205, !3210, !3211}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3202, file: !3203, line: 60, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3207, line: 7, size: 64, elements: !3208)
!3207 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3208 = !{!3209}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3206, file: !3207, line: 12, baseType: !2603, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3202, file: !3203, line: 63, baseType: !221, size: 8, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3202, file: !3203, line: 70, baseType: !221, size: 8, offset: 72)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2369, file: !2014, line: 1335, baseType: !2012, size: 64, offset: 20480)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2369, file: !2014, line: 1337, baseType: !3214, size: 128, offset: 20544)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3203, line: 39, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3214, file: !3203, line: 40, baseType: !1799, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3214, file: !3203, line: 42, baseType: !524, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3214, file: !3203, line: 43, baseType: !524, size: 32, offset: 96)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2369, file: !2014, line: 1340, baseType: !3220, size: 64, offset: 20672)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2014, line: 69, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2369, file: !2014, line: 1351, baseType: !109, size: 32, offset: 20736)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2369, file: !2014, line: 1352, baseType: !109, size: 32, offset: 20768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2369, file: !2014, line: 1354, baseType: !177, size: 64, offset: 20800)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2369, file: !2014, line: 1364, baseType: !527, size: 64, offset: 20864)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2369, file: !2014, line: 1365, baseType: !527, size: 64, offset: 20928)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2369, file: !2014, line: 1412, baseType: !177, size: 64, offset: 20992)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2369, file: !2014, line: 1453, baseType: !3229, size: 64, offset: 21056)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2014, line: 1453, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2369, file: !2014, line: 1457, baseType: !3232, size: 64, offset: 21120)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3234)
!3234 = !{!3235, !3236, !3255, !3258, !3259, !3292, !3302}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3233, file: !68, line: 62, baseType: !67, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !68, line: 64, baseType: !3237, size: 192, offset: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3233, file: !68, line: 64, size: 192, elements: !3238)
!3238 = !{!3239, !3250}
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3237, file: !68, line: 65, baseType: !3240, size: 192)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3237, file: !68, line: 65, size: 192, elements: !3241)
!3241 = !{!3242, !3249}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3240, file: !68, line: 66, baseType: !3243, size: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3244, line: 50, size: 128, elements: !3245)
!3244 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3243, file: !3244, line: 52, baseType: !177, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3243, file: !3244, line: 54, baseType: !7, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3243, file: !3244, line: 55, baseType: !7, size: 32, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3240, file: !68, line: 67, baseType: !177, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3237, file: !68, line: 70, baseType: !3251, size: 192)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3237, file: !68, line: 70, size: 192, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3251, file: !68, line: 71, baseType: !911, size: 128, align: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3251, file: !68, line: 72, baseType: !177, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3233, file: !68, line: 76, baseType: !3256, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3233, file: !68, line: 77, baseType: !177, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3233, file: !68, line: 79, baseType: !3260, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3244, line: 25, size: 256, elements: !3262)
!3262 = !{!3263, !3269, !3273}
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3244, line: 26, baseType: !3264, size: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3244, line: 26, size: 128, elements: !3265)
!3265 = !{!3266, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3264, file: !3244, line: 27, baseType: !3267, size: 128)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !2799)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3264, file: !3244, line: 28, baseType: !3267, size: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3261, file: !3244, line: 31, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3272)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3244, line: 23, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3244, line: 33, baseType: !3274, size: 64, offset: 192)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3244, line: 33, size: 64, elements: !3275)
!3275 = !{!3276, !3282, !3287}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3274, file: !3244, line: 38, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3244, line: 34, size: 64, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3277, file: !3244, line: 35, baseType: !708, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3277, file: !3244, line: 36, baseType: !225, size: 8, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3277, file: !3244, line: 37, baseType: !225, size: 8, offset: 40)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3274, file: !3244, line: 42, baseType: !3283, size: 16)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3244, line: 39, size: 16, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3283, file: !3244, line: 40, baseType: !225, size: 8)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3283, file: !3244, line: 41, baseType: !225, size: 8, offset: 8)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3274, file: !3244, line: 46, baseType: !3288, size: 16)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3244, line: 43, size: 16, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3288, file: !3244, line: 44, baseType: !225, size: 8)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3288, file: !3244, line: 45, baseType: !225, size: 8, offset: 8)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3233, file: !68, line: 81, baseType: !3293, size: 64, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3294, file: !68, line: 86, baseType: !3256, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3294, file: !68, line: 87, baseType: !177, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3294, file: !68, line: 88, baseType: !177, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3294, file: !68, line: 89, baseType: !177, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3294, file: !68, line: 90, baseType: !221, size: 8, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3294, file: !68, line: 92, baseType: !3293, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3233, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2369, file: !2014, line: 1463, baseType: !3304, offset: 21184)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2014, line: 739, elements: !969)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2369, file: !2014, line: 1470, baseType: !911, size: 128, align: 64, offset: 21184)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2369, file: !2014, line: 1471, baseType: !314, size: 32, offset: 21312)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2369, file: !2014, line: 1472, baseType: !109, size: 32, offset: 21344)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2369, file: !2014, line: 1474, baseType: !2368, size: 64, offset: 21376)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2369, file: !2014, line: 1475, baseType: !933, size: 320, offset: 21440)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2369, file: !2014, line: 1478, baseType: !3311, size: 64, offset: 21760)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3313, line: 49, size: 512, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3321, !3322, !3323, !3325}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3312, file: !3313, line: 50, baseType: !3311, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3312, file: !3313, line: 51, baseType: !169, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3312, file: !3313, line: 52, baseType: !177, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3312, file: !3313, line: 53, baseType: !177, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3312, file: !3313, line: 54, baseType: !3320, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3312, file: !3313, line: 56, baseType: !7, size: 32, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3312, file: !3313, line: 58, baseType: !7, size: 32, offset: 352)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3312, file: !3313, line: 59, baseType: !3324, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !176, line: 159, baseType: !527)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3312, file: !3313, line: 60, baseType: !1666, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2369, file: !2014, line: 1482, baseType: !314, size: 32, offset: 21824)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2369, file: !2014, line: 1489, baseType: !169, size: 64, offset: 21888)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2369, file: !2014, line: 1504, baseType: !169, size: 64, offset: 21952)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2369, file: !2014, line: 1505, baseType: !528, size: 64, offset: 22016)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2369, file: !2014, line: 1506, baseType: !527, size: 64, offset: 22080)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2369, file: !2014, line: 1507, baseType: !528, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2369, file: !2014, line: 1508, baseType: !528, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2369, file: !2014, line: 1509, baseType: !528, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2369, file: !2014, line: 1510, baseType: !911, size: 128, align: 64, offset: 22208)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2369, file: !2014, line: 1511, baseType: !109, size: 32, offset: 22336)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2369, file: !2014, line: 1515, baseType: !298, size: 64, offset: 22400)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2369, file: !2014, line: 1518, baseType: !298, size: 64, offset: 22464)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2369, file: !2014, line: 1528, baseType: !911, size: 128, align: 64, offset: 22528)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2369, file: !2014, line: 1552, baseType: !3340, size: 35328, offset: 23040)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3341, line: 430, size: 35328, elements: !3342)
!3341 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3342 = !{!3343, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3372, !3373, !3374, !3375, !3376, !3377, !3380, !3381, !3382, !3383}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3340, file: !3341, line: 432, baseType: !3344, size: 192)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3345, size: 192, elements: !376)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3346, line: 16, size: 64, elements: !3347)
!3346 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3345, file: !3346, line: 17, baseType: !179, size: 16)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3345, file: !3346, line: 18, baseType: !179, size: 16, offset: 16)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3345, file: !3346, line: 19, baseType: !179, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3345, file: !3346, line: 19, baseType: !179, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3345, file: !3346, line: 19, baseType: !179, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3345, file: !3346, line: 19, baseType: !179, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3345, file: !3346, line: 19, baseType: !179, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3345, file: !3346, line: 20, baseType: !179, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3345, file: !3346, line: 20, baseType: !179, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3345, file: !3346, line: 20, baseType: !179, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3345, file: !3346, line: 20, baseType: !179, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3345, file: !3346, line: 20, baseType: !179, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3345, file: !3346, line: 20, baseType: !179, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3340, file: !3341, line: 436, baseType: !177, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3340, file: !3341, line: 440, baseType: !183, size: 16, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3340, file: !3341, line: 441, baseType: !183, size: 16, offset: 272)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3340, file: !3341, line: 442, baseType: !183, size: 16, offset: 288)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3340, file: !3341, line: 443, baseType: !183, size: 16, offset: 304)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3340, file: !3341, line: 447, baseType: !177, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3340, file: !3341, line: 448, baseType: !177, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3340, file: !3341, line: 459, baseType: !3369, size: 256, offset: 448)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3370, size: 256, elements: !921)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3341, line: 428, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3340, file: !3341, line: 461, baseType: !177, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3340, file: !3341, line: 463, baseType: !177, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3340, file: !3341, line: 465, baseType: !177, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3340, file: !3341, line: 466, baseType: !177, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3340, file: !3341, line: 467, baseType: !177, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3340, file: !3341, line: 473, baseType: !3378, size: 64, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3341, line: 10, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3340, file: !3341, line: 480, baseType: !177, size: 64, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3340, file: !3341, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3340, file: !3341, line: 491, baseType: !523, size: 32, offset: 1184)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3340, file: !3341, line: 501, baseType: !3384, size: 33792, offset: 1536)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3385, line: 448, size: 33792, elements: !3386)
!3385 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3386 = !{!3387, !3388, !3389, !3550, !3551, !3557, !3558}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3384, file: !3385, line: 461, baseType: !7, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3384, file: !3385, line: 468, baseType: !177, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3384, file: !3385, line: 476, baseType: !3390, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3385, line: 356, size: 33280, align: 512, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3391, file: !3385, line: 358, baseType: !7, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3391, file: !3385, line: 361, baseType: !7, size: 32, offset: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3391, file: !3385, line: 364, baseType: !527, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3391, file: !3385, line: 367, baseType: !527, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3391, file: !3385, line: 370, baseType: !527, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3391, file: !3385, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3391, file: !3385, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3391, file: !3385, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3391, file: !3385, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3391, file: !3385, line: 397, baseType: !3403, size: 32768, offset: 512)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3385, line: 348, size: 32768, elements: !3404)
!3404 = !{!3405, !3420, !3457, !3534, !3546}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3403, file: !3385, line: 349, baseType: !3406, size: 896)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3385, line: 12, size: 896, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3419}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3406, file: !3385, line: 13, baseType: !523, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3406, file: !3385, line: 14, baseType: !523, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3406, file: !3385, line: 15, baseType: !523, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3406, file: !3385, line: 16, baseType: !523, size: 32, offset: 96)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3406, file: !3385, line: 17, baseType: !523, size: 32, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3406, file: !3385, line: 18, baseType: !523, size: 32, offset: 160)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3406, file: !3385, line: 19, baseType: !523, size: 32, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3406, file: !3385, line: 22, baseType: !3416, size: 640, offset: 224)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 640, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 20)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3406, file: !3385, line: 25, baseType: !523, size: 32, offset: 864)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3403, file: !3385, line: 350, baseType: !3421, size: 4096, align: 128)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3385, line: 34, size: 4096, align: 128, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3442, !3443, !3444, !3446, !3448, !3452}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3421, file: !3385, line: 35, baseType: !179, size: 16)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3421, file: !3385, line: 36, baseType: !179, size: 16, offset: 16)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3421, file: !3385, line: 37, baseType: !179, size: 16, offset: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3421, file: !3385, line: 38, baseType: !179, size: 16, offset: 48)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !3385, line: 39, baseType: !3428, size: 128, offset: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3421, file: !3385, line: 39, size: 128, elements: !3429)
!3429 = !{!3430, !3435}
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3385, line: 40, baseType: !3431, size: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3428, file: !3385, line: 40, size: 128, elements: !3432)
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3431, file: !3385, line: 41, baseType: !527, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3431, file: !3385, line: 42, baseType: !527, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3385, line: 44, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3428, file: !3385, line: 44, size: 128, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3436, file: !3385, line: 45, baseType: !523, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3436, file: !3385, line: 46, baseType: !523, size: 32, offset: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3436, file: !3385, line: 47, baseType: !523, size: 32, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3436, file: !3385, line: 48, baseType: !523, size: 32, offset: 96)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3421, file: !3385, line: 51, baseType: !523, size: 32, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3421, file: !3385, line: 52, baseType: !523, size: 32, offset: 224)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3421, file: !3385, line: 55, baseType: !3445, size: 1024, offset: 256)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 1024, elements: !536)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3421, file: !3385, line: 58, baseType: !3447, size: 2048, offset: 1280)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 2048, elements: !380)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3421, file: !3385, line: 60, baseType: !3449, size: 384, offset: 3328)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 384, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 12)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !3385, line: 62, baseType: !3453, size: 384, offset: 3712)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3421, file: !3385, line: 62, size: 384, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3453, file: !3385, line: 63, baseType: !3449, size: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3453, file: !3385, line: 64, baseType: !3449, size: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3403, file: !3385, line: 351, baseType: !3458, size: 1088)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3385, line: 79, size: 1088, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3533}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3458, file: !3385, line: 80, baseType: !523, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3458, file: !3385, line: 81, baseType: !523, size: 32, offset: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3458, file: !3385, line: 82, baseType: !523, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3458, file: !3385, line: 83, baseType: !523, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3458, file: !3385, line: 84, baseType: !523, size: 32, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3458, file: !3385, line: 85, baseType: !523, size: 32, offset: 160)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3458, file: !3385, line: 86, baseType: !523, size: 32, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3458, file: !3385, line: 88, baseType: !3416, size: 640, offset: 224)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3458, file: !3385, line: 89, baseType: !225, size: 8, offset: 864)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3458, file: !3385, line: 90, baseType: !225, size: 8, offset: 872)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3458, file: !3385, line: 91, baseType: !225, size: 8, offset: 880)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3458, file: !3385, line: 92, baseType: !225, size: 8, offset: 888)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3458, file: !3385, line: 93, baseType: !225, size: 8, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3458, file: !3385, line: 94, baseType: !225, size: 8, offset: 904)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3458, file: !3385, line: 95, baseType: !3475, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3477, line: 11, size: 128, elements: !3478)
!3477 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3476, file: !3477, line: 12, baseType: !411, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3476, file: !3477, line: 13, baseType: !3481, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3483, line: 103, size: 1344, elements: !3484)
!3483 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3513, !3514, !3515}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3482, file: !3483, line: 109, baseType: !177, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3482, file: !3483, line: 110, baseType: !177, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3482, file: !3483, line: 111, baseType: !177, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3482, file: !3483, line: 112, baseType: !177, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3482, file: !3483, line: 113, baseType: !177, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3482, file: !3483, line: 114, baseType: !177, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3482, file: !3483, line: 117, baseType: !177, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3482, file: !3483, line: 118, baseType: !177, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3482, file: !3483, line: 119, baseType: !177, size: 64, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3482, file: !3483, line: 120, baseType: !177, size: 64, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3482, file: !3483, line: 121, baseType: !177, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3482, file: !3483, line: 122, baseType: !177, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3482, file: !3483, line: 123, baseType: !177, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3482, file: !3483, line: 124, baseType: !177, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3482, file: !3483, line: 125, baseType: !177, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3482, file: !3483, line: 139, baseType: !177, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3482, file: !3483, line: 142, baseType: !177, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !3483, line: 144, baseType: !3503, size: 64, offset: 1088)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3482, file: !3483, line: 144, size: 64, elements: !3504)
!3504 = !{!3505, !3506, !3507}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3503, file: !3483, line: 146, baseType: !179, size: 16)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3503, file: !3483, line: 148, baseType: !527, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3503, file: !3483, line: 150, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3483, line: 59, size: 64, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3508, file: !3483, line: 61, baseType: !527, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3508, file: !3483, line: 63, baseType: !527, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3508, file: !3483, line: 65, baseType: !527, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3482, file: !3483, line: 153, baseType: !177, size: 64, offset: 1152)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3482, file: !3483, line: 154, baseType: !177, size: 64, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !3483, line: 156, baseType: !3516, size: 64, offset: 1280)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3482, file: !3483, line: 156, size: 64, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3516, file: !3483, line: 158, baseType: !179, size: 16)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3516, file: !3483, line: 160, baseType: !527, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3516, file: !3483, line: 162, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3483, line: 69, size: 64, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3521, file: !3483, line: 71, baseType: !527, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3521, file: !3483, line: 73, baseType: !527, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3521, file: !3483, line: 75, baseType: !527, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3521, file: !3483, line: 77, baseType: !527, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3521, file: !3483, line: 80, baseType: !527, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3521, file: !3483, line: 83, baseType: !527, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3521, file: !3483, line: 86, baseType: !527, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3521, file: !3483, line: 88, baseType: !527, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3521, file: !3483, line: 93, baseType: !527, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3521, file: !3483, line: 100, baseType: !527, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3458, file: !3385, line: 96, baseType: !523, size: 32, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3403, file: !3385, line: 352, baseType: !3535, size: 4608, align: 512)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3385, line: 333, size: 4608, align: 512, elements: !3536)
!3536 = !{!3537, !3538, !3545}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3535, file: !3385, line: 334, baseType: !3421, size: 4096, align: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3535, file: !3385, line: 335, baseType: !3539, size: 512, offset: 4096)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3385, line: 312, size: 512, elements: !3540)
!3540 = !{!3541, !3542, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3539, file: !3385, line: 313, baseType: !527, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3539, file: !3385, line: 314, baseType: !527, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3539, file: !3385, line: 315, baseType: !3544, size: 384, offset: 128)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 384, elements: !1316)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3535, file: !3385, line: 336, baseType: !224, offset: 4608)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3403, file: !3385, line: 353, baseType: !3547, size: 32768)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 32768, elements: !3548)
!3548 = !{!3549}
!3549 = !DISubrange(count: 4096)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3384, file: !3385, line: 484, baseType: !3390, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3384, file: !3385, line: 491, baseType: !3552, size: 128, offset: 256)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3385, line: 404, size: 128, elements: !3553)
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3552, file: !3385, line: 424, baseType: !527, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3552, file: !3385, line: 432, baseType: !7, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3552, file: !3385, line: 440, baseType: !7, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3384, file: !3385, line: 498, baseType: !3552, size: 128, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3384, file: !3385, line: 508, baseType: !3391, size: 33280, align: 512, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2351, file: !2352, line: 16, baseType: !1210, size: 192, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2351, file: !2352, line: 17, baseType: !275, size: 32, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !606, file: !14, line: 1240, baseType: !169, size: 64, offset: 6912)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !606, file: !14, line: 1243, baseType: !523, size: 32, offset: 6976)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !606, file: !14, line: 1245, baseType: !1287, size: 64, offset: 7040)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !606, file: !14, line: 1246, baseType: !1287, size: 64, offset: 7104)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !606, file: !14, line: 1248, baseType: !524, size: 32, offset: 7168)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !606, file: !14, line: 1249, baseType: !3567, size: 64, offset: 7232)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !606, file: !14, line: 1252, baseType: !3570, size: 256, offset: 7296)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !536)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !606, file: !14, line: 1253, baseType: !3572, size: 128, offset: 7552)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3573, line: 21, baseType: !3574)
!3573 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3573, line: 19, size: 128, elements: !3575)
!3575 = !{!3576}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3574, file: !3573, line: 20, baseType: !3577, size: 128)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !2799)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !606, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !606, file: !14, line: 1261, baseType: !257, size: 256, offset: 7744)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !606, file: !14, line: 1267, baseType: !329, size: 64, offset: 8000)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !606, file: !14, line: 1269, baseType: !552, size: 64, offset: 8064)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !606, file: !14, line: 1271, baseType: !3583, size: 448, offset: 8128)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2131, line: 63, size: 448, elements: !3584)
!3584 = !{!3585, !3590, !3591, !3592, !3593, !3594, !3595}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3583, file: !2131, line: 64, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!177, !3589, !2129}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3583, file: !2131, line: 66, baseType: !3586, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3583, file: !2131, line: 69, baseType: !411, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3583, file: !2131, line: 70, baseType: !109, size: 32, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3583, file: !2131, line: 71, baseType: !7, size: 32, offset: 224)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3583, file: !2131, line: 74, baseType: !245, size: 128, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3583, file: !2131, line: 85, baseType: !3596, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !606, file: !14, line: 1274, baseType: !235, size: 64, offset: 8576)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !606, file: !14, line: 1280, baseType: !235, size: 64, offset: 8640)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !606, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !606, file: !14, line: 1286, baseType: !2063, size: 32, offset: 8736)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !606, file: !14, line: 1289, baseType: !1002, size: 64, offset: 8768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !606, file: !14, line: 1290, baseType: !1050, size: 64, offset: 8832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !606, file: !14, line: 1297, baseType: !1410, size: 64, offset: 8896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !606, file: !14, line: 1304, baseType: !3605, size: 64, offset: 8960)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3606, line: 49, size: 64, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3607 = !{!3608}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3605, file: !3606, line: 50, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3606, line: 41, size: 512, align: 512, elements: !3611)
!3611 = !{!3612, !3613, !3618}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3610, file: !3606, line: 43, baseType: !340, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3610, file: !3606, line: 45, baseType: !3614, size: 192, offset: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3606, line: 29, size: 192, elements: !3615)
!3615 = !{!3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3614, file: !3606, line: 30, baseType: !245, size: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3614, file: !3606, line: 32, baseType: !411, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3610, file: !3606, line: 46, baseType: !411, size: 64, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !606, file: !14, line: 1305, baseType: !3605, size: 64, offset: 9024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !606, file: !14, line: 1306, baseType: !911, size: 128, align: 64, offset: 9088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !606, file: !14, line: 1307, baseType: !231, size: 256, offset: 9216)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !606, file: !14, line: 1309, baseType: !257, size: 256, offset: 9472)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !606, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !606, file: !14, line: 1317, baseType: !340, size: 32, align: 512, offset: 10240)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !606, file: !14, line: 1318, baseType: !245, size: 128, offset: 10304)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !606, file: !14, line: 1320, baseType: !340, size: 32, offset: 10432)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !606, file: !14, line: 1321, baseType: !245, size: 128, offset: 10496)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !600, file: !601, line: 73, baseType: !109, size: 32, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !600, file: !601, line: 74, baseType: !3630, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1247, line: 42, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !554, file: !491, line: 141, baseType: !3634, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!109, !2191, !221}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !554, file: !491, line: 142, baseType: !3638, size: 64, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!489, !489, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !490, file: !491, line: 96, baseType: !605, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !490, file: !491, line: 97, baseType: !177, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !490, file: !491, line: 98, baseType: !169, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !491, line: 100, baseType: !3647, size: 128, offset: 1024)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !491, line: 100, size: 128, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3647, file: !491, line: 101, baseType: !245, size: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3647, file: !491, line: 102, baseType: !1527, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !490, file: !491, line: 104, baseType: !245, size: 128, offset: 1152)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !490, file: !491, line: 105, baseType: !245, size: 128, offset: 1280)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !490, file: !491, line: 113, baseType: !3654, size: 128, offset: 1408)
!3654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !491, line: 109, size: 128, elements: !3655)
!3655 = !{!3656, !3657, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3654, file: !491, line: 110, baseType: !937, size: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3654, file: !491, line: 111, baseType: !505, size: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3654, file: !491, line: 112, baseType: !911, size: 128, align: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !483, file: !14, line: 1968, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!329, !489, !454, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3665, line: 10, size: 128, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3664, file: !3665, line: 11, baseType: !736, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3664, file: !3665, line: 12, baseType: !169, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !483, file: !14, line: 1969, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!109, !3630, !454, !109}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !483, file: !14, line: 1970, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!477, !454, !109, !221}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !483, file: !14, line: 1972, baseType: !3678, size: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !489, !173, !109}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !483, file: !14, line: 1974, baseType: !3682, size: 64, offset: 320)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !3630, !454, !489, !417, !221}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !483, file: !14, line: 1976, baseType: !3686, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !489, !454, !489}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !483, file: !14, line: 1977, baseType: !3690, size: 64, offset: 448)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!109, !454, !489}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !483, file: !14, line: 1978, baseType: !3694, size: 64, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !3630, !454, !489, !329}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !483, file: !14, line: 1980, baseType: !3698, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !3630, !454, !489, !417}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !483, file: !14, line: 1982, baseType: !3690, size: 64, offset: 640)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !483, file: !14, line: 1983, baseType: !3703, size: 64, offset: 704)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!109, !3630, !454, !489, !417, !610}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !483, file: !14, line: 1985, baseType: !3707, size: 64, offset: 768)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!109, !3630, !454, !489, !454, !489, !7}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !483, file: !14, line: 1987, baseType: !3711, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!109, !3630, !489, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3729, !3738, !3739, !3744, !3745, !3746}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3715, file: !14, line: 227, baseType: !7, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3715, file: !14, line: 228, baseType: !417, size: 16, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !14, line: 241, baseType: !3720, size: 32, offset: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3715, file: !14, line: 241, size: 32, elements: !3721)
!3721 = !{!3722, !3723}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3720, file: !14, line: 242, baseType: !460, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3720, file: !14, line: 243, baseType: !3724, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3725, line: 16, baseType: !3726)
!3725 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3725, line: 14, size: 32, elements: !3727)
!3727 = !{!3728}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3726, file: !3725, line: 15, baseType: !465, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !14, line: 245, baseType: !3730, size: 32, offset: 96)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3715, file: !14, line: 245, size: 32, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3730, file: !14, line: 246, baseType: !469, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3730, file: !14, line: 247, baseType: !3734, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3725, line: 20, baseType: !3735)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3725, line: 18, size: 32, elements: !3736)
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3735, file: !3725, line: 19, baseType: !473, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3715, file: !14, line: 249, baseType: !615, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3715, file: !14, line: 250, baseType: !3740, size: 128, offset: 192)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1288, line: 13, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3740, file: !1288, line: 14, baseType: !1287, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3740, file: !1288, line: 15, baseType: !411, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3715, file: !14, line: 251, baseType: !3740, size: 128, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3715, file: !14, line: 252, baseType: !3740, size: 128, offset: 448)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3715, file: !14, line: 259, baseType: !1455, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !483, file: !14, line: 1988, baseType: !3748, size: 64, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!109, !3630, !2191, !3751, !523, !7}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3753, line: 22, size: 1280, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3752, file: !3753, line: 23, baseType: !523, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3752, file: !3753, line: 24, baseType: !417, size: 16, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3752, file: !3753, line: 25, baseType: !7, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3752, file: !3753, line: 26, baseType: !1295, size: 32, offset: 96)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3752, file: !3753, line: 27, baseType: !527, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3752, file: !3753, line: 28, baseType: !527, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3752, file: !3753, line: 41, baseType: !527, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3752, file: !3753, line: 42, baseType: !610, size: 32, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3752, file: !3753, line: 43, baseType: !610, size: 32, offset: 352)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3752, file: !3753, line: 44, baseType: !460, size: 32, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3752, file: !3753, line: 45, baseType: !469, size: 32, offset: 416)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3752, file: !3753, line: 46, baseType: !615, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3752, file: !3753, line: 47, baseType: !3740, size: 128, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3752, file: !3753, line: 48, baseType: !3740, size: 128, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3752, file: !3753, line: 49, baseType: !3740, size: 128, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3752, file: !3753, line: 50, baseType: !3740, size: 128, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3752, file: !3753, line: 51, baseType: !527, size: 64, offset: 1024)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3752, file: !3753, line: 52, baseType: !527, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3752, file: !3753, line: 53, baseType: !523, size: 32, offset: 1152)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3752, file: !3753, line: 54, baseType: !523, size: 32, offset: 1184)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3752, file: !3753, line: 55, baseType: !527, size: 64, offset: 1216)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !483, file: !14, line: 1990, baseType: !3777, size: 64, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!407, !489, !173, !422}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !483, file: !14, line: 1991, baseType: !3781, size: 64, offset: 1024)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!109, !454, !3784, !527, !527}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !483, file: !14, line: 1993, baseType: !3787, size: 64, offset: 1088)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!109, !454, !109}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !483, file: !14, line: 1994, baseType: !3791, size: 64, offset: 1152)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!109, !454, !489, !1455, !7, !417}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !483, file: !14, line: 1997, baseType: !3795, size: 64, offset: 1216)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!109, !3630, !454, !1455, !417}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !483, file: !14, line: 1999, baseType: !3799, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!477, !3630, !489, !109}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !483, file: !14, line: 2001, baseType: !3803, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!109, !3630, !489, !477, !109}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !483, file: !14, line: 2003, baseType: !3807, size: 64, offset: 1408)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!109, !3630, !489, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !483, file: !14, line: 2005, baseType: !3813, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!109, !489, !3810}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !483, file: !14, line: 2006, baseType: !3817, size: 64, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!3820, !454}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3822)
!3822 = !{!3823, !3830}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3821, file: !14, line: 3193, baseType: !3824, size: 128)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3825, line: 296, size: 128, elements: !3826)
!3825 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3826 = !{!3827, !3828, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3824, file: !3825, line: 297, baseType: !340, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3824, file: !3825, line: 299, baseType: !175, size: 32, offset: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3824, file: !3825, line: 300, baseType: !169, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3821, file: !14, line: 3194, baseType: !523, size: 32, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !455, file: !14, line: 655, baseType: !605, size: 64, offset: 448)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !455, file: !14, line: 656, baseType: !450, size: 64, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !455, file: !14, line: 659, baseType: !169, size: 64, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !455, file: !14, line: 663, baseType: !177, size: 64, offset: 640)
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !14, line: 671, baseType: !3836, size: 32, offset: 704)
!3836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !14, line: 671, size: 32, elements: !3837)
!3837 = !{!3838, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3836, file: !14, line: 672, baseType: !3839, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3836, file: !14, line: 673, baseType: !7, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !455, file: !14, line: 675, baseType: !610, size: 32, offset: 736)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !455, file: !14, line: 676, baseType: !615, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !455, file: !14, line: 677, baseType: !3740, size: 128, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !455, file: !14, line: 678, baseType: !3740, size: 128, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !455, file: !14, line: 679, baseType: !3740, size: 128, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !455, file: !14, line: 680, baseType: !340, size: 32, offset: 1216)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !455, file: !14, line: 681, baseType: !183, size: 16, offset: 1248)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !455, file: !14, line: 682, baseType: !225, size: 8, offset: 1264)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !455, file: !14, line: 683, baseType: !225, size: 8, offset: 1272)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !455, file: !14, line: 684, baseType: !2264, size: 64, offset: 1280)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !455, file: !14, line: 691, baseType: !177, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !455, file: !14, line: 692, baseType: !1271, size: 320, offset: 1408)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !455, file: !14, line: 694, baseType: !177, size: 64, offset: 1728)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !455, file: !14, line: 695, baseType: !177, size: 64, offset: 1792)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !455, file: !14, line: 697, baseType: !937, size: 128, offset: 1856)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !455, file: !14, line: 698, baseType: !245, size: 128, offset: 1984)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !455, file: !14, line: 707, baseType: !245, size: 128, offset: 2112)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !455, file: !14, line: 708, baseType: !245, size: 128, offset: 2240)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !14, line: 709, baseType: !3860, size: 128, offset: 2368)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !14, line: 709, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3860, file: !14, line: 710, baseType: !1050, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3860, file: !14, line: 711, baseType: !911, size: 128, align: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !455, file: !14, line: 713, baseType: !237, size: 64, offset: 2496)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !455, file: !14, line: 714, baseType: !237, size: 64, offset: 2560)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !455, file: !14, line: 715, baseType: !275, size: 32, offset: 2624)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !455, file: !14, line: 716, baseType: !275, size: 32, offset: 2656)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !455, file: !14, line: 717, baseType: !275, size: 32, offset: 2688)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !455, file: !14, line: 719, baseType: !275, size: 32, offset: 2720)
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !14, line: 721, baseType: !3871, size: 64, offset: 2752)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !14, line: 721, size: 64, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3871, file: !14, line: 722, baseType: !1446, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3871, file: !14, line: 723, baseType: !1073, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !455, file: !14, line: 725, baseType: !3876, size: 64, offset: 2816)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !455, file: !14, line: 726, baseType: !451, size: 1536, align: 64, offset: 2880)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !455, file: !14, line: 727, baseType: !245, size: 128, offset: 4416)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !14, line: 728, baseType: !3881, size: 64, offset: 4544)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !14, line: 728, size: 64, elements: !3882)
!3882 = !{!3883, !3884, !3895, !3896}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3881, file: !14, line: 729, baseType: !2012, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3881, file: !14, line: 730, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3887, line: 14, size: 832, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3886, file: !3887, line: 15, baseType: !325, size: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3886, file: !3887, line: 16, baseType: !642, size: 64, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3886, file: !3887, line: 17, baseType: !1446, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3886, file: !3887, line: 18, baseType: !245, size: 128, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3886, file: !3887, line: 19, baseType: !610, size: 32, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3886, file: !3887, line: 20, baseType: !7, size: 32, offset: 800)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3881, file: !14, line: 731, baseType: !173, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3881, file: !14, line: 732, baseType: !7, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !455, file: !14, line: 735, baseType: !524, size: 32, offset: 4608)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !455, file: !14, line: 738, baseType: !524, size: 32, offset: 4640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !455, file: !14, line: 739, baseType: !3567, size: 64, offset: 4672)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !455, file: !14, line: 750, baseType: !169, size: 64, offset: 4736)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !451, file: !14, line: 474, baseType: !3824, size: 128, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !451, file: !14, line: 475, baseType: !1271, size: 320, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !451, file: !14, line: 476, baseType: !175, size: 32, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !451, file: !14, line: 477, baseType: !275, size: 32, offset: 544)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !451, file: !14, line: 482, baseType: !2538, size: 128, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !451, file: !14, line: 483, baseType: !177, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !451, file: !14, line: 484, baseType: !177, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !451, file: !14, line: 485, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3911)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3912)
!3912 = !{!3913, !3917, !3987, !3991, !3995, !4001, !4005, !4009, !4014, !4018, !4022, !4026, !4027, !4031, !4035, !4039, !4044, !4048, !4055, !4056}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3911, file: !14, line: 405, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!109, !1799, !1085}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3911, file: !14, line: 406, baseType: !3918, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!109, !1455, !3921}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !3923)
!3923 = !{!3924, !3954, !3968}
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !27, line: 295, baseType: !3925, size: 512)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !27, line: 295, size: 512, elements: !3926)
!3926 = !{!3927, !3953}
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !27, line: 296, baseType: !3928, size: 448)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !27, line: 296, size: 448, elements: !3929)
!3929 = !{!3930, !3931, !3940, !3941, !3942, !3951, !3952}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3928, file: !27, line: 298, baseType: !177, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !27, line: 299, baseType: !3932, size: 128, offset: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !27, line: 299, size: 128, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3932, file: !27, line: 300, baseType: !245, size: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !27, line: 302, baseType: !3936, size: 128)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !27, line: 302, size: 128, elements: !3937)
!3937 = !{!3938, !3939}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3936, file: !27, line: 303, baseType: !169, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3936, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3928, file: !27, line: 310, baseType: !450, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3928, file: !27, line: 311, baseType: !177, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !27, line: 312, baseType: !3943, size: 64, offset: 320)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !27, line: 312, size: 64, elements: !3944)
!3944 = !{!3945, !3946}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3943, file: !27, line: 313, baseType: !169, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3943, file: !27, line: 314, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !3948)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !3949)
!3949 = !{!3950}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3948, file: !27, line: 256, baseType: !177, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3928, file: !27, line: 316, baseType: !275, size: 32, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3928, file: !27, line: 317, baseType: !275, size: 32, offset: 416)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3925, file: !27, line: 323, baseType: !1800, size: 512, align: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !27, line: 325, baseType: !3955, size: 512, offset: 512)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !27, line: 325, size: 512, elements: !3956)
!3956 = !{!3957, !3967}
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3955, file: !27, line: 326, baseType: !3958, size: 320)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !27, line: 326, size: 320, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3958, file: !27, line: 327, baseType: !177, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3958, file: !27, line: 328, baseType: !177, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3958, file: !27, line: 329, baseType: !177, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3958, file: !27, line: 331, baseType: !275, size: 32, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3958, file: !27, line: 332, baseType: !275, size: 32, offset: 224)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3958, file: !27, line: 333, baseType: !275, size: 32, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3958, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3955, file: !27, line: 339, baseType: !1800, size: 512, align: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !27, line: 341, baseType: !3969, size: 512, offset: 1024)
!3969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !27, line: 341, size: 512, elements: !3970)
!3970 = !{!3971, !3980, !3986}
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !27, line: 342, baseType: !3972, size: 384)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !27, line: 342, size: 384, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3972, file: !27, line: 343, baseType: !177, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3972, file: !27, line: 344, baseType: !177, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3972, file: !27, line: 346, baseType: !169, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3972, file: !27, line: 347, baseType: !169, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3972, file: !27, line: 348, baseType: !169, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3972, file: !27, line: 349, baseType: !169, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !27, line: 352, baseType: !3981, size: 256)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !27, line: 352, size: 256, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3981, file: !27, line: 353, baseType: !177, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3981, file: !27, line: 354, baseType: !177, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3981, file: !27, line: 356, baseType: !245, size: 128, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3969, file: !27, line: 359, baseType: !1800, size: 512, align: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3911, file: !14, line: 409, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !450, !1085}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3911, file: !14, line: 412, baseType: !3992, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!221, !450, !3921}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3911, file: !14, line: 414, baseType: !3996, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3911, file: !14, line: 416, baseType: !4002, size: 64, offset: 320)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109, !1455, !450, !615, !7, !3320, !2028}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3911, file: !14, line: 419, baseType: !4006, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !1455, !450, !615, !7, !7, !1799, !169}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3911, file: !14, line: 424, baseType: !4010, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!4013, !450, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !176, line: 131, baseType: !527)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3911, file: !14, line: 425, baseType: !4015, size: 64, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !3921, !422, !422}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3911, file: !14, line: 426, baseType: !4019, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!221, !3921, !175}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3911, file: !14, line: 427, baseType: !4023, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !3921}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3911, file: !14, line: 428, baseType: !1465, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3911, file: !14, line: 433, baseType: !4028, size: 64, offset: 768)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !450, !3921, !3921, !74}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3911, file: !14, line: 435, baseType: !4032, size: 64, offset: 832)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!109, !3921}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3911, file: !14, line: 436, baseType: !4036, size: 64, offset: 896)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!221, !3921, !422, !422}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3911, file: !14, line: 438, baseType: !4040, size: 64, offset: 960)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{null, !3921, !4043, !4043}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3911, file: !14, line: 439, baseType: !4045, size: 64, offset: 1024)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!109, !450, !1799}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3911, file: !14, line: 442, baseType: !4049, size: 64, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!109, !4052, !1455, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3911, file: !14, line: 444, baseType: !2020, size: 64, offset: 1152)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3911, file: !14, line: 445, baseType: !4057, size: 64, offset: 1216)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!109, !1468, !1490}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !14, line: 486, baseType: !177, size: 64, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !451, file: !14, line: 487, baseType: !1271, size: 320, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !451, file: !14, line: 488, baseType: !2063, size: 32, offset: 1280)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !451, file: !14, line: 489, baseType: !340, size: 32, offset: 1312)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !451, file: !14, line: 490, baseType: !245, size: 128, offset: 1344)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !451, file: !14, line: 491, baseType: !169, size: 64, offset: 1472)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !441, file: !401, line: 180, baseType: !4067, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!407, !1455, !333, !440, !173, !615, !422}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !441, file: !401, line: 182, baseType: !4067, size: 64, offset: 384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !441, file: !401, line: 184, baseType: !4072, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!109, !1455, !333, !440, !1538}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !429, file: !401, line: 90, baseType: !4076, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !429, file: !401, line: 91, baseType: !4078, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !391, file: !326, line: 120, baseType: !4080, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!4083, !359}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4086)
!4086 = !{!4087, !4088, !4092, !4096, !4102, !4106}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4085, file: !82, line: 40, baseType: !81, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4085, file: !82, line: 41, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!221}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4085, file: !82, line: 42, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!169}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4085, file: !82, line: 43, baseType: !4097, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!1666, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4085, file: !82, line: 44, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!1666}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4085, file: !82, line: 45, baseType: !736, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !391, file: !326, line: 121, baseType: !4108, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!1666, !359}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !391, file: !326, line: 122, baseType: !4112, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !359, !4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !325, file: !326, line: 70, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4120, line: 190, size: 1152, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4201, !4202, !4203, !4204, !4205, !4208}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4119, file: !4120, line: 191, baseType: !275, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4119, file: !4120, line: 192, baseType: !275, size: 32, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4119, file: !4120, line: 202, baseType: !4118, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4119, file: !4120, line: 203, baseType: !329, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4119, file: !4120, line: 205, baseType: !803, size: 192, align: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4119, file: !4120, line: 207, baseType: !1666, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4119, file: !4120, line: 208, baseType: !7, size: 32, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4119, file: !4120, line: 209, baseType: !4130, size: 256, offset: 512)
!4130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4119, file: !4120, line: 209, size: 256, elements: !4131)
!4131 = !{!4132, !4141, !4145}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4130, file: !4120, line: 210, baseType: !4133, size: 256)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4120, line: 153, size: 256, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4140}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4133, file: !4120, line: 154, baseType: !177, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4133, file: !4120, line: 156, baseType: !2541, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4133, file: !4120, line: 162, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4120, line: 162, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4133, file: !4120, line: 167, baseType: !177, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4130, file: !4120, line: 211, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4120, line: 170, size: 64, elements: !4143)
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4142, file: !4120, line: 171, baseType: !4118, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4130, file: !4120, line: 212, baseType: !4146, size: 256)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4120, line: 174, size: 256, elements: !4147)
!4147 = !{!4148, !4196, !4199, !4200}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4146, file: !4120, line: 175, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4120, line: 271, size: 768, elements: !4152)
!4152 = !{!4153, !4173, !4177, !4178, !4179, !4180, !4181, !4185, !4186, !4187, !4188, !4192}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4151, file: !4120, line: 276, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!109, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4120, line: 251, size: 1216, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4158, file: !4120, line: 253, baseType: !4118, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4158, file: !4120, line: 254, baseType: !1455, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4158, file: !4120, line: 255, baseType: !1122, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4158, file: !4120, line: 256, baseType: !169, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4158, file: !4120, line: 259, baseType: !257, size: 256, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4158, file: !4120, line: 260, baseType: !257, size: 256, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4158, file: !4120, line: 261, baseType: !109, size: 32, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4158, file: !4120, line: 262, baseType: !245, size: 128, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4158, file: !4120, line: 263, baseType: !173, size: 64, offset: 960)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4158, file: !4120, line: 265, baseType: !422, size: 64, offset: 1024)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4158, file: !4120, line: 266, baseType: !221, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4158, file: !4120, line: 267, baseType: !221, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4158, file: !4120, line: 268, baseType: !1735, size: 64, offset: 1152)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4151, file: !4120, line: 277, baseType: !4174, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4157}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4151, file: !4120, line: 290, baseType: !1153, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4151, file: !4120, line: 292, baseType: !1140, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4151, file: !4120, line: 293, baseType: !1149, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4151, file: !4120, line: 294, baseType: !1145, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4151, file: !4120, line: 296, baseType: !4182, size: 64, offset: 384)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!407, !4157, !173, !422, !615}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4151, file: !4120, line: 306, baseType: !422, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4151, file: !4120, line: 313, baseType: !221, size: 8, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4151, file: !4120, line: 314, baseType: !4182, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4151, file: !4120, line: 317, baseType: !4189, size: 64, offset: 640)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!1516, !4157, !1518}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4151, file: !4120, line: 320, baseType: !4193, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!109, !4157, !1538}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4146, file: !4120, line: 176, baseType: !4197, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4120, line: 35, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4146, file: !4120, line: 177, baseType: !615, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4146, file: !4120, line: 178, baseType: !4118, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4119, file: !4120, line: 215, baseType: !169, size: 64, offset: 768)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4119, file: !4120, line: 221, baseType: !527, size: 64, offset: 832)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4119, file: !4120, line: 223, baseType: !183, size: 16, offset: 896)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4119, file: !4120, line: 224, baseType: !417, size: 16, offset: 912)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4119, file: !4120, line: 225, baseType: !4206, size: 64, offset: 960)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4120, line: 36, flags: DIFlagFwdDecl)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4119, file: !4120, line: 227, baseType: !911, size: 128, align: 64, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !325, file: !326, line: 71, baseType: !310, size: 32, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !325, file: !326, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !325, file: !326, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !325, file: !326, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !325, file: !326, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !325, file: !326, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !322, file: !94, line: 707, baseType: !321, size: 64, offset: 512)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !322, file: !94, line: 709, baseType: !4217, size: 64, offset: 576)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !322, file: !94, line: 711, baseType: !329, size: 64, offset: 640)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !322, file: !94, line: 712, baseType: !4221, size: 64, offset: 704)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4233, !4238, !4242}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4223, file: !94, line: 90, baseType: !329, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4223, file: !94, line: 91, baseType: !426, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4223, file: !94, line: 92, baseType: !4228, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!109, !4231, !371}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4223, file: !94, line: 93, baseType: !4234, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!173, !4231, !4237, !4115, !4116}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4223, file: !94, line: 95, baseType: !4239, size: 64, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !321}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4223, file: !94, line: 97, baseType: !4243, size: 64, offset: 320)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4246)
!4246 = !{!4247, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4245, file: !101, line: 287, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!109, !321}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4245, file: !101, line: 288, baseType: !4239, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4245, file: !101, line: 289, baseType: !4248, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4245, file: !101, line: 290, baseType: !4248, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4245, file: !101, line: 291, baseType: !4248, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4245, file: !101, line: 292, baseType: !4248, size: 64, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4245, file: !101, line: 293, baseType: !4248, size: 64, offset: 384)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4245, file: !101, line: 294, baseType: !4248, size: 64, offset: 448)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4245, file: !101, line: 295, baseType: !4248, size: 64, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4245, file: !101, line: 296, baseType: !4248, size: 64, offset: 576)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4245, file: !101, line: 297, baseType: !4248, size: 64, offset: 640)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4245, file: !101, line: 298, baseType: !4248, size: 64, offset: 704)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4245, file: !101, line: 299, baseType: !4248, size: 64, offset: 768)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4245, file: !101, line: 300, baseType: !4248, size: 64, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4245, file: !101, line: 301, baseType: !4248, size: 64, offset: 896)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4245, file: !101, line: 302, baseType: !4248, size: 64, offset: 960)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4245, file: !101, line: 303, baseType: !4248, size: 64, offset: 1024)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4245, file: !101, line: 304, baseType: !4248, size: 64, offset: 1088)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4245, file: !101, line: 305, baseType: !4248, size: 64, offset: 1152)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4245, file: !101, line: 306, baseType: !4248, size: 64, offset: 1216)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4245, file: !101, line: 307, baseType: !4248, size: 64, offset: 1280)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4245, file: !101, line: 308, baseType: !4248, size: 64, offset: 1344)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4245, file: !101, line: 309, baseType: !4248, size: 64, offset: 1408)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !322, file: !94, line: 714, baseType: !4274, size: 64, offset: 768)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4277, line: 80, size: 1344, elements: !4278)
!4277 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4342}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4276, file: !4277, line: 81, baseType: !329, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4276, file: !4277, line: 82, baseType: !329, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4276, file: !4277, line: 83, baseType: !426, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4276, file: !4277, line: 84, baseType: !426, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4276, file: !4277, line: 85, baseType: !426, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4276, file: !4277, line: 87, baseType: !4285, size: 64, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!109, !321, !4288}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4290)
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4296, !4297, !4301, !4305, !4306, !4307, !4308, !4309, !4317, !4318, !4319, !4320, !4321, !4322}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4289, file: !88, line: 97, baseType: !329, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4289, file: !88, line: 98, baseType: !4274, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4289, file: !88, line: 100, baseType: !642, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4289, file: !88, line: 101, baseType: !329, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4289, file: !88, line: 103, baseType: !221, size: 8, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4289, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4289, file: !88, line: 106, baseType: !4298, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4300)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4289, file: !88, line: 107, baseType: !4302, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4289, file: !88, line: 109, baseType: !4248, size: 64, offset: 448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4289, file: !88, line: 110, baseType: !4239, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4289, file: !88, line: 111, baseType: !4248, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4289, file: !88, line: 112, baseType: !4239, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4289, file: !88, line: 113, baseType: !4310, size: 64, offset: 704)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!109, !321, !4313}
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4315)
!4315 = !{!4316}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4314, file: !101, line: 59, baseType: !109, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4289, file: !88, line: 114, baseType: !4248, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4289, file: !88, line: 115, baseType: !426, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4289, file: !88, line: 116, baseType: !426, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4289, file: !88, line: 118, baseType: !4243, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4289, file: !88, line: 119, baseType: !4239, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4289, file: !88, line: 121, baseType: !4323, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4276, file: !4277, line: 88, baseType: !4228, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4276, file: !4277, line: 89, baseType: !4248, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4276, file: !4277, line: 90, baseType: !4239, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4276, file: !4277, line: 91, baseType: !4239, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4276, file: !4277, line: 92, baseType: !4239, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4276, file: !4277, line: 94, baseType: !4248, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4276, file: !4277, line: 95, baseType: !4248, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4276, file: !4277, line: 97, baseType: !4310, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4276, file: !4277, line: 98, baseType: !4248, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4276, file: !4277, line: 100, baseType: !4248, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4276, file: !4277, line: 102, baseType: !4248, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4276, file: !4277, line: 103, baseType: !4239, size: 64, offset: 1088)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4276, file: !4277, line: 105, baseType: !4243, size: 64, offset: 1152)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4276, file: !4277, line: 107, baseType: !4339, size: 64, offset: 1216)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4341)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4277, line: 107, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4276, file: !4277, line: 109, baseType: !221, size: 8, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !322, file: !94, line: 715, baseType: !4288, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !322, file: !94, line: 717, baseType: !169, size: 64, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !322, file: !94, line: 719, baseType: !169, size: 64, offset: 960)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !322, file: !94, line: 721, baseType: !257, size: 256, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !322, file: !94, line: 725, baseType: !4348, size: 448, offset: 1280)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4348, file: !94, line: 518, baseType: !245, size: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4348, file: !94, line: 519, baseType: !245, size: 128, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4348, file: !94, line: 520, baseType: !245, size: 128, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4348, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !322, file: !94, line: 726, baseType: !4355, size: 2496, offset: 1728)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4439, !4443}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4355, file: !101, line: 664, baseType: !4313, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4355, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4355, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4355, file: !101, line: 667, baseType: !221, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4355, file: !101, line: 668, baseType: !221, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4355, file: !101, line: 669, baseType: !221, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4355, file: !101, line: 670, baseType: !221, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4355, file: !101, line: 671, baseType: !221, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4355, file: !101, line: 672, baseType: !221, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4355, file: !101, line: 673, baseType: !221, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4355, file: !101, line: 674, baseType: !221, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4355, file: !101, line: 675, baseType: !523, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4355, file: !101, line: 676, baseType: !340, size: 32, offset: 96)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4355, file: !101, line: 678, baseType: !245, size: 128, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4355, file: !101, line: 679, baseType: !662, size: 256, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4355, file: !101, line: 680, baseType: !4373, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4375, line: 43, size: 1536, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4376 = !{!4377, !4378, !4379, !4380, !4381, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4374, file: !4375, line: 44, baseType: !329, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4374, file: !4375, line: 45, baseType: !109, size: 32, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4374, file: !4375, line: 46, baseType: !245, size: 128, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4374, file: !4375, line: 47, baseType: !340, size: 32, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4374, file: !4375, line: 48, baseType: !4382, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4374, file: !4375, line: 49, baseType: !933, size: 320, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4374, file: !4375, line: 50, baseType: !177, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4374, file: !4375, line: 51, baseType: !2487, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4374, file: !4375, line: 52, baseType: !2487, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4374, file: !4375, line: 53, baseType: !2487, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4374, file: !4375, line: 54, baseType: !2487, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4374, file: !4375, line: 55, baseType: !2487, size: 64, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4374, file: !4375, line: 56, baseType: !177, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4374, file: !4375, line: 57, baseType: !177, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4374, file: !4375, line: 58, baseType: !177, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4374, file: !4375, line: 59, baseType: !177, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4374, file: !4375, line: 60, baseType: !177, size: 64, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4374, file: !4375, line: 61, baseType: !321, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4374, file: !4375, line: 62, baseType: !221, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4374, file: !4375, line: 63, baseType: !221, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4355, file: !101, line: 681, baseType: !221, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4355, file: !101, line: 682, baseType: !221, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4355, file: !101, line: 683, baseType: !221, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4355, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4355, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4355, file: !101, line: 690, baseType: !2479, size: 512, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4355, file: !101, line: 691, baseType: !527, size: 64, offset: 1152)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4355, file: !101, line: 692, baseType: !231, size: 256, offset: 1216)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4355, file: !101, line: 693, baseType: !1210, size: 192, offset: 1472)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4355, file: !101, line: 694, baseType: !4382, size: 64, offset: 1664)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4355, file: !101, line: 695, baseType: !275, size: 32, offset: 1728)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4355, file: !101, line: 696, baseType: !275, size: 32, offset: 1760)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4355, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4355, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4355, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4355, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4355, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4355, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4355, file: !101, line: 703, baseType: !221, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4355, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4355, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4355, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4355, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4355, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4355, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4355, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4355, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4355, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4355, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4355, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4355, file: !101, line: 715, baseType: !527, size: 64, offset: 2048)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4355, file: !101, line: 716, baseType: !527, size: 64, offset: 2112)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4355, file: !101, line: 717, baseType: !527, size: 64, offset: 2176)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4355, file: !101, line: 718, baseType: !527, size: 64, offset: 2240)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4355, file: !101, line: 720, baseType: !4434, size: 64, offset: 2304)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4436)
!4436 = !{!4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4435, file: !101, line: 633, baseType: !340, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4435, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4355, file: !101, line: 721, baseType: !4440, size: 64, offset: 2368)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !321, !708}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4355, file: !101, line: 722, baseType: !4444, size: 64, offset: 2432)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !322, file: !94, line: 727, baseType: !4447, size: 64, offset: 4224)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4449)
!4449 = !{!4450, !4451, !4452, !4456, !4457, !4458}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4448, file: !101, line: 743, baseType: !4245, size: 1472)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4448, file: !101, line: 744, baseType: !4248, size: 64, offset: 1472)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4448, file: !101, line: 745, baseType: !4453, size: 64, offset: 1536)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !321, !221}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4448, file: !101, line: 746, baseType: !4248, size: 64, offset: 1600)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4448, file: !101, line: 747, baseType: !4239, size: 64, offset: 1664)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4448, file: !101, line: 748, baseType: !4239, size: 64, offset: 1728)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !322, file: !94, line: 736, baseType: !4460, size: 128, offset: 4288)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4461)
!4461 = !{!4462, !4466}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4460, file: !94, line: 531, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4465, line: 13, flags: DIFlagFwdDecl)
!4465 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4460, file: !94, line: 532, baseType: !4467, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !322, file: !94, line: 738, baseType: !4470, size: 64, offset: 4416)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4472)
!4472 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !322, file: !94, line: 740, baseType: !4474, size: 64, offset: 4480)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !322, file: !94, line: 741, baseType: !527, size: 64, offset: 4544)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !322, file: !94, line: 746, baseType: !527, size: 64, offset: 4608)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !322, file: !94, line: 747, baseType: !4478, size: 64, offset: 4672)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !322, file: !94, line: 749, baseType: !4482, size: 64, offset: 4736)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4484)
!4484 = !{!4485, !4486, !4487}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4483, file: !94, line: 433, baseType: !7, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4483, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4483, file: !94, line: 435, baseType: !177, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !322, file: !94, line: 751, baseType: !245, size: 128, offset: 4800)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !322, file: !94, line: 762, baseType: !4490, size: 64, offset: 4928)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !322, file: !94, line: 770, baseType: !4493, offset: 4992)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4494, line: 5, elements: !969)
!4494 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !322, file: !94, line: 772, baseType: !4496, size: 64, offset: 4992)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4498, line: 18, flags: DIFlagFwdDecl)
!4498 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !322, file: !94, line: 773, baseType: !4500, size: 64, offset: 5056)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4502, line: 41, size: 512, elements: !4503)
!4502 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4503 = !{!4504, !4505, !4599, !4600, !4601, !4602}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4501, file: !4502, line: 42, baseType: !4500, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4501, file: !4502, line: 43, baseType: !4506, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4508)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4502, line: 125, size: 1408, elements: !4509)
!4509 = !{!4510, !4514, !4518, !4524, !4528, !4529, !4534, !4538, !4542, !4546, !4550, !4551, !4555, !4559, !4563, !4574, !4575, !4576, !4577, !4587, !4591, !4595}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4508, file: !4502, line: 126, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!4500, !4500}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4508, file: !4502, line: 127, baseType: !4515, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{null, !4500}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4508, file: !4502, line: 128, baseType: !4519, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!221, !4522}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4508, file: !4502, line: 129, baseType: !4525, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!1666, !4522, !4231}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4508, file: !4502, line: 131, baseType: !4519, size: 64, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4508, file: !4502, line: 133, baseType: !4530, size: 64, offset: 320)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!4533, !4522}
!4533 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4502, line: 132, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4508, file: !4502, line: 134, baseType: !4535, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!221, !4522, !329}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4508, file: !4502, line: 136, baseType: !4539, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!109, !4522, !329, !7, !169, !422}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4508, file: !4502, line: 141, baseType: !4543, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!109, !4522, !329, !1017, !422}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4508, file: !4502, line: 144, baseType: !4547, size: 64, offset: 576)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!329, !4522}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4508, file: !4502, line: 145, baseType: !4547, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4508, file: !4502, line: 146, baseType: !4552, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!4500, !4522}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4508, file: !4502, line: 148, baseType: !4556, size: 64, offset: 768)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4500, !4522, !4500}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4508, file: !4502, line: 151, baseType: !4560, size: 64, offset: 832)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!4500, !4522, !329}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4508, file: !4502, line: 153, baseType: !4564, size: 64, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!109, !4522, !329, !329, !7, !7, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4502, line: 94, size: 640, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4568, file: !4502, line: 95, baseType: !4500, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4568, file: !4502, line: 96, baseType: !7, size: 32, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4568, file: !4502, line: 97, baseType: !4573, size: 512, offset: 128)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 512, elements: !2522)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4508, file: !4502, line: 158, baseType: !4556, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4508, file: !4502, line: 161, baseType: !4552, size: 64, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4508, file: !4502, line: 163, baseType: !4511, size: 64, offset: 1088)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4508, file: !4502, line: 164, baseType: !4578, size: 64, offset: 1152)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!109, !4522, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4502, line: 73, size: 128, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4582, file: !4502, line: 74, baseType: !7, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4582, file: !4502, line: 75, baseType: !7, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4582, file: !4502, line: 76, baseType: !4522, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4508, file: !4502, line: 166, baseType: !4588, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!169, !4500, !109}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4508, file: !4502, line: 167, baseType: !4592, size: 64, offset: 1280)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !4522, !7}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4508, file: !4502, line: 168, baseType: !4596, size: 64, offset: 1344)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!109, !4500}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4501, file: !4502, line: 44, baseType: !321, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4501, file: !4502, line: 45, baseType: !245, size: 128, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4501, file: !4502, line: 46, baseType: !245, size: 128, offset: 320)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4501, file: !4502, line: 47, baseType: !225, size: 8, offset: 448)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !322, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !322, file: !94, line: 778, baseType: !610, size: 32, offset: 5152)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !322, file: !94, line: 779, baseType: !523, size: 32, offset: 5184)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !322, file: !94, line: 781, baseType: !340, size: 32, offset: 5216)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !322, file: !94, line: 782, baseType: !245, size: 128, offset: 5248)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !322, file: !94, line: 784, baseType: !4609, size: 64, offset: 5376)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4611)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4612, line: 52, size: 768, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4622, !4626, !4627, !4628, !4629, !4633, !4637}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4611, file: !4612, line: 53, baseType: !329, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4611, file: !4612, line: 55, baseType: !426, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4611, file: !4612, line: 56, baseType: !426, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4611, file: !4612, line: 58, baseType: !4228, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4611, file: !4612, line: 59, baseType: !4619, size: 64, offset: 256)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!173, !4231, !4237}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4611, file: !4612, line: 61, baseType: !4623, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4609}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4611, file: !4612, line: 62, baseType: !4239, size: 64, offset: 384)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4611, file: !4612, line: 64, baseType: !4248, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4611, file: !4612, line: 66, baseType: !4083, size: 64, offset: 512)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4611, file: !4612, line: 67, baseType: !4630, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!1666, !4231}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4611, file: !4612, line: 69, baseType: !4634, size: 64, offset: 640)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !4231, !4115, !4116}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4611, file: !4612, line: 71, baseType: !4243, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !322, file: !94, line: 785, baseType: !426, size: 64, offset: 5440)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !322, file: !94, line: 787, baseType: !4239, size: 64, offset: 5504)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !322, file: !94, line: 788, baseType: !4641, size: 64, offset: 5568)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !322, file: !94, line: 789, baseType: !4644, size: 64, offset: 5632)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !322, file: !94, line: 791, baseType: !4647, size: 64, offset: 5696)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4648, file: !94, line: 598, baseType: !116, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4648, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4648, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4648, file: !94, line: 601, baseType: !221, size: 8, offset: 96)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4648, file: !94, line: 602, baseType: !221, size: 8, offset: 104)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !322, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !322, file: !94, line: 795, baseType: !221, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !322, file: !94, line: 796, baseType: !221, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !322, file: !94, line: 797, baseType: !221, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !322, file: !94, line: 798, baseType: !221, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !322, file: !94, line: 799, baseType: !221, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !306, file: !307, line: 197, baseType: !4662, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !4664, line: 441, size: 1472, elements: !4665)
!4664 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!4665 = !{!4666, !4667, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4697, !4698, !4701, !4702, !4704, !4707, !4710, !4711, !4829}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4663, file: !4664, line: 442, baseType: !310, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !4663, file: !4664, line: 443, baseType: !4668, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4663, file: !4664, line: 444, baseType: !642, size: 64, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4663, file: !4664, line: 445, baseType: !329, size: 64, offset: 192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4663, file: !4664, line: 446, baseType: !329, size: 64, offset: 256)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !4663, file: !4664, line: 447, baseType: !109, size: 32, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4663, file: !4664, line: 448, baseType: !109, size: 32, offset: 352)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !4663, file: !4664, line: 449, baseType: !109, size: 32, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4663, file: !4664, line: 450, baseType: !7, size: 32, offset: 416)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4663, file: !4664, line: 451, baseType: !829, size: 16, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !4663, file: !4664, line: 452, baseType: !829, size: 16, offset: 464)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !4663, file: !4664, line: 453, baseType: !4679, size: 352, offset: 480)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !4680, line: 30, size: 352, elements: !4681)
!4680 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!4681 = !{!4682, !4684, !4685, !4686, !4687, !4690, !4694, !4696}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4679, file: !4680, line: 31, baseType: !4683, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !4680, line: 7, baseType: !7)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4679, file: !4680, line: 32, baseType: !4683, size: 32, offset: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4679, file: !4680, line: 33, baseType: !4683, size: 32, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4679, file: !4680, line: 34, baseType: !4683, size: 32, offset: 96)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4679, file: !4680, line: 35, baseType: !4688, size: 8, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !4689, line: 5, baseType: !227)
!4689 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4679, file: !4680, line: 36, baseType: !4691, size: 152, offset: 136)
!4691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4688, size: 152, elements: !4692)
!4692 = !{!4693}
!4693 = !DISubrange(count: 19)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4679, file: !4680, line: 37, baseType: !4695, size: 32, offset: 288)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !4689, line: 6, baseType: !7)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4679, file: !4680, line: 38, baseType: !4695, size: 32, offset: 320)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4663, file: !4664, line: 454, baseType: !177, size: 64, offset: 832)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !4663, file: !4664, line: 455, baseType: !4699, size: 64, offset: 896)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4664, line: 455, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !4663, file: !4664, line: 456, baseType: !4662, size: 64, offset: 960)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !4663, file: !4664, line: 461, baseType: !4703, size: 64, offset: 1024)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4663, file: !4664, line: 462, baseType: !4705, size: 64, offset: 1088)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !4663, file: !4664, line: 463, baseType: !4708, size: 64, offset: 1152)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !4663, file: !4664, line: 464, baseType: !169, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4663, file: !4664, line: 470, baseType: !4712, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4714)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !4664, line: 357, size: 2176, elements: !4715)
!4715 = !{!4716, !4720, !4724, !4728, !4732, !4736, !4740, !4741, !4747, !4751, !4752, !4756, !4757, !4761, !4765, !4771, !4772, !4773, !4774, !4775, !4776, !4780, !4781, !4782, !4783, !4787, !4791, !4795, !4799, !4811, !4817, !4823, !4824, !4828}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4714, file: !4664, line: 358, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!305, !4662, !1455, !109}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4714, file: !4664, line: 360, baseType: !4721, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!109, !4662, !305}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4714, file: !4664, line: 361, baseType: !4725, size: 64, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !4662, !305}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4714, file: !4664, line: 362, baseType: !4729, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!109, !305, !1455}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4714, file: !4664, line: 363, baseType: !4733, size: 64, offset: 256)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !305, !1455}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4714, file: !4664, line: 364, baseType: !4737, size: 64, offset: 320)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !305}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4714, file: !4664, line: 365, baseType: !4737, size: 64, offset: 384)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4714, file: !4664, line: 366, baseType: !4742, size: 64, offset: 448)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!407, !305, !4745, !422}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4714, file: !4664, line: 367, baseType: !4748, size: 64, offset: 512)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!109, !305, !225}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4714, file: !4664, line: 368, baseType: !4737, size: 64, offset: 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4714, file: !4664, line: 369, baseType: !4753, size: 64, offset: 640)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!7, !305}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4714, file: !4664, line: 370, baseType: !4753, size: 64, offset: 704)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4714, file: !4664, line: 371, baseType: !4758, size: 64, offset: 768)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!109, !305, !7, !177}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4714, file: !4664, line: 373, baseType: !4762, size: 64, offset: 832)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!411, !305, !7, !177}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4714, file: !4664, line: 375, baseType: !4766, size: 64, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{null, !305, !4769}
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4679)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4714, file: !4664, line: 376, baseType: !4737, size: 64, offset: 960)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4714, file: !4664, line: 377, baseType: !4737, size: 64, offset: 1024)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4714, file: !4664, line: 378, baseType: !4737, size: 64, offset: 1088)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4714, file: !4664, line: 379, baseType: !4737, size: 64, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4714, file: !4664, line: 380, baseType: !4737, size: 64, offset: 1216)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4714, file: !4664, line: 381, baseType: !4777, size: 64, offset: 1280)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!109, !305, !109}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4714, file: !4664, line: 382, baseType: !4737, size: 64, offset: 1344)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4714, file: !4664, line: 383, baseType: !4777, size: 64, offset: 1408)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4714, file: !4664, line: 384, baseType: !4737, size: 64, offset: 1472)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4714, file: !4664, line: 385, baseType: !4784, size: 64, offset: 1536)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{null, !305, !109}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4714, file: !4664, line: 386, baseType: !4788, size: 64, offset: 1600)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{null, !305, !174}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4714, file: !4664, line: 387, baseType: !4792, size: 64, offset: 1664)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!109, !305}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4714, file: !4664, line: 388, baseType: !4796, size: 64, offset: 1728)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!109, !305, !7, !7}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4714, file: !4664, line: 390, baseType: !4800, size: 64, offset: 1792)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!109, !305, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4805, line: 15, size: 64, elements: !4806)
!4805 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4806 = !{!4807, !4808, !4809, !4810}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4804, file: !4805, line: 16, baseType: !183, size: 16)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4804, file: !4805, line: 17, baseType: !183, size: 16, offset: 16)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4804, file: !4805, line: 18, baseType: !183, size: 16, offset: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4804, file: !4805, line: 19, baseType: !183, size: 16, offset: 48)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4714, file: !4664, line: 391, baseType: !4812, size: 64, offset: 1856)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!109, !305, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !4664, line: 16, flags: DIFlagFwdDecl)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4714, file: !4664, line: 393, baseType: !4818, size: 64, offset: 1920)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!109, !305, !4821}
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !4664, line: 17, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4714, file: !4664, line: 394, baseType: !4818, size: 64, offset: 1984)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4714, file: !4664, line: 395, baseType: !4825, size: 64, offset: 2048)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !305, !1122}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4714, file: !4664, line: 401, baseType: !1153, size: 64, offset: 2112)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !4663, file: !4664, line: 471, baseType: !245, size: 128, offset: 1344)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !306, file: !307, line: 198, baseType: !4706, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !306, file: !307, line: 199, baseType: !4712, size: 64, offset: 256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !306, file: !307, line: 201, baseType: !4833, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4835, line: 269, size: 128, elements: !4836)
!4835 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4836 = !{!4837, !4878}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4834, file: !4835, line: 270, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4835, line: 231, size: 1152, elements: !4840)
!4840 = !{!4841, !4842, !4843, !4844, !4845, !4846, !4851, !4855, !4856, !4857, !4858, !4862, !4863, !4867, !4868, !4872, !4876, !4877}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4839, file: !4835, line: 232, baseType: !173, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4839, file: !4835, line: 233, baseType: !109, size: 32, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4839, file: !4835, line: 238, baseType: !4792, size: 64, offset: 128)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4839, file: !4835, line: 239, baseType: !4737, size: 64, offset: 192)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4839, file: !4835, line: 240, baseType: !4737, size: 64, offset: 256)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4839, file: !4835, line: 241, baseType: !4847, size: 64, offset: 320)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!407, !305, !1455, !4850, !422, !2028, !177}
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4839, file: !4835, line: 243, baseType: !4852, size: 64, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!407, !305, !1455, !4745, !422}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4839, file: !4835, line: 245, baseType: !4758, size: 64, offset: 448)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4839, file: !4835, line: 247, baseType: !4758, size: 64, offset: 512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4839, file: !4835, line: 249, baseType: !4766, size: 64, offset: 576)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4839, file: !4835, line: 250, baseType: !4859, size: 64, offset: 640)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!1516, !305, !1455, !1518}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4839, file: !4835, line: 252, baseType: !4737, size: 64, offset: 704)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4839, file: !4835, line: 257, baseType: !4864, size: 64, offset: 768)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !305, !4745, !4745, !422}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4839, file: !4835, line: 259, baseType: !4737, size: 64, offset: 832)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4839, file: !4835, line: 260, baseType: !4869, size: 64, offset: 896)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{null, !305, !221}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4839, file: !4835, line: 261, baseType: !4873, size: 64, offset: 960)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!422, !305, !4745, !4745, !422}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4839, file: !4835, line: 263, baseType: !4864, size: 64, offset: 1024)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4839, file: !4835, line: 266, baseType: !642, size: 64, offset: 1088)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4834, file: !4835, line: 271, baseType: !305, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !306, file: !307, line: 202, baseType: !4880, size: 384, offset: 384)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4835, line: 17, size: 384, elements: !4881)
!4881 = !{!4882, !4883, !4884, !4885, !4886}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4880, file: !4835, line: 18, baseType: !235, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4880, file: !4835, line: 19, baseType: !262, size: 32, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4880, file: !4835, line: 20, baseType: !7, size: 32, offset: 96)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4880, file: !4835, line: 21, baseType: !245, size: 128, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4880, file: !4835, line: 22, baseType: !245, size: 128, offset: 256)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !306, file: !307, line: 204, baseType: !257, size: 256, offset: 768)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !306, file: !307, line: 205, baseType: !257, size: 256, offset: 1024)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !306, file: !307, line: 206, baseType: !257, size: 256, offset: 1280)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !306, file: !307, line: 207, baseType: !1271, size: 320, offset: 1536)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !306, file: !307, line: 208, baseType: !257, size: 256, offset: 1856)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !306, file: !307, line: 209, baseType: !4679, size: 352, offset: 2112)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !306, file: !307, line: 209, baseType: !4679, size: 352, offset: 2464)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 210, baseType: !4895, size: 512, offset: 2816)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 512, elements: !380)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !307, line: 211, baseType: !177, size: 64, offset: 3328)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !306, file: !307, line: 212, baseType: !109, size: 32, offset: 3392)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !306, file: !307, line: 213, baseType: !7, size: 32, offset: 3424)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !306, file: !307, line: 214, baseType: !4804, size: 64, offset: 3456)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !306, file: !307, line: 221, baseType: !4901, size: 64, align: 64, offset: 3520)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !307, line: 216, size: 64, align: 64, elements: !4902)
!4902 = !{!4903, !4904, !4905, !4906}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4901, file: !307, line: 217, baseType: !340, size: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4901, file: !307, line: 218, baseType: !221, size: 8, offset: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4901, file: !307, line: 219, baseType: !221, size: 8, offset: 40)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4901, file: !307, line: 220, baseType: !4907, offset: 64)
!4907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !4908)
!4908 = !{!4909}
!4909 = !DISubrange(count: 0)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !306, file: !307, line: 230, baseType: !4911, size: 192, align: 64, offset: 3584)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !307, line: 223, size: 192, align: 64, elements: !4912)
!4912 = !{!4913, !4914, !4915, !4916, !4917, !4918}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4911, file: !307, line: 224, baseType: !1200, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4911, file: !307, line: 225, baseType: !1200, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4911, file: !307, line: 226, baseType: !340, size: 32, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4911, file: !307, line: 227, baseType: !227, size: 8, offset: 160)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4911, file: !307, line: 228, baseType: !221, size: 8, offset: 168)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4911, file: !307, line: 229, baseType: !4907, offset: 192)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !306, file: !307, line: 232, baseType: !221, size: 8, offset: 3776)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !306, file: !307, line: 233, baseType: !221, size: 8, offset: 3784)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !306, file: !307, line: 234, baseType: !109, size: 32, offset: 3808)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !306, file: !307, line: 236, baseType: !305, size: 64, offset: 3840)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !306, file: !307, line: 237, baseType: !4924, size: 64, offset: 3904)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4930, !4931, !4932}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4925, file: !14, line: 1084, baseType: !1179, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4925, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4925, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4925, file: !14, line: 1087, baseType: !4924, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4925, file: !14, line: 1088, baseType: !1455, size: 64, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4925, file: !14, line: 1089, baseType: !911, size: 128, align: 64, offset: 256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !306, file: !307, line: 238, baseType: !1210, size: 192, offset: 3968)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !306, file: !307, line: 239, baseType: !1210, size: 192, offset: 4160)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !306, file: !307, line: 240, baseType: !231, size: 256, offset: 4352)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !306, file: !307, line: 241, baseType: !169, size: 64, offset: 4608)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !306, file: !307, line: 242, baseType: !169, size: 64, offset: 4672)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !306, file: !307, line: 243, baseType: !340, size: 32, offset: 4736)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !306, file: !307, line: 244, baseType: !109, size: 32, offset: 4768)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !306, file: !307, line: 245, baseType: !4941, size: 64, offset: 4800)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !306, file: !307, line: 247, baseType: !245, size: 128, offset: 4864)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !306, file: !307, line: 250, baseType: !231, size: 256, offset: 4992)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !194, file: !195, line: 104, baseType: !305, size: 64, offset: 1152)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !194, file: !195, line: 105, baseType: !4946, size: 64, offset: 1216)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4948)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !195, line: 33, size: 320, elements: !4949)
!4949 = !{!4950, !4954, !4958, !4962, !4966}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4948, file: !195, line: 34, baseType: !4951, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!221, !4706}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4948, file: !195, line: 35, baseType: !4955, size: 64, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{null, !4706, !221}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4948, file: !195, line: 36, baseType: !4959, size: 64, offset: 128)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !4706}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4948, file: !195, line: 37, baseType: !4963, size: 64, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!109, !4706, !305}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4948, file: !195, line: 38, baseType: !4959, size: 64, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !194, file: !195, line: 106, baseType: !4968, size: 64, offset: 1280)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4970)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !195, line: 41, size: 192, elements: !4971)
!4971 = !{!4972, !4976, !4980}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4970, file: !195, line: 42, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!422, !4706, !4745, !4745, !422}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4970, file: !195, line: 44, baseType: !4977, size: 64, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !4706, !4745, !4745, !422}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4970, file: !195, line: 46, baseType: !4959, size: 64, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !194, file: !195, line: 107, baseType: !340, size: 32, offset: 1344)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !194, file: !195, line: 108, baseType: !109, size: 32, offset: 1376)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !194, file: !195, line: 109, baseType: !109, size: 32, offset: 1408)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !194, file: !195, line: 110, baseType: !1210, size: 192, offset: 1472)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !194, file: !195, line: 111, baseType: !1210, size: 192, offset: 1664)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !195, line: 112, baseType: !177, size: 64, offset: 1856)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !194, file: !195, line: 113, baseType: !177, size: 64, offset: 1920)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !194, file: !195, line: 114, baseType: !227, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !194, file: !195, line: 115, baseType: !257, size: 256, offset: 2048)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !194, file: !195, line: 116, baseType: !257, size: 256, offset: 2304)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !194, file: !195, line: 117, baseType: !4941, size: 64, offset: 2560)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !194, file: !195, line: 118, baseType: !4993, size: 192, offset: 2624)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !195, line: 118, size: 192, elements: !4994)
!4994 = !{!4995, !5014}
!4995 = !DIDerivedType(tag: DW_TAG_member, scope: !4993, file: !195, line: 118, baseType: !4996, size: 192)
!4996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4993, file: !195, line: 118, size: 192, elements: !4997)
!4997 = !{!4998, !5007, !5008, !5009, !5012, !5013}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4996, file: !195, line: 118, baseType: !4999, size: 192)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !5000, line: 44, size: 192, elements: !5001)
!5000 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!5001 = !{!5002, !5003, !5004, !5005, !5006}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4999, file: !5000, line: 45, baseType: !7, size: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4999, file: !5000, line: 46, baseType: !7, size: 32, offset: 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4999, file: !5000, line: 47, baseType: !7, size: 32, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4999, file: !5000, line: 48, baseType: !7, size: 32, offset: 96)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4999, file: !5000, line: 49, baseType: !169, size: 64, offset: 128)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4996, file: !195, line: 118, baseType: !4941, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4996, file: !195, line: 118, baseType: !531, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4996, file: !195, line: 118, baseType: !5010, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !4908)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4996, file: !195, line: 118, baseType: !4941, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4996, file: !195, line: 118, baseType: !531, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4993, file: !195, line: 118, baseType: !5015, offset: 192)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !4908)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !194, file: !195, line: 119, baseType: !7, size: 32, offset: 2816)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !194, file: !195, line: 120, baseType: !7, size: 32, offset: 2848)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !194, file: !195, line: 121, baseType: !109, size: 32, offset: 2880)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !194, file: !195, line: 122, baseType: !310, size: 32, offset: 2912)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !194, file: !195, line: 123, baseType: !169, size: 64, offset: 2944)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !191, file: !142, line: 96, baseType: !5022, size: 160, offset: 3008)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_state", file: !142, line: 45, size: 160, elements: !5023)
!5023 = !{!5024, !5025, !5026, !5027, !5029, !5030, !5031, !5032, !5033, !5034}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5022, file: !142, line: 46, baseType: !7, size: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5022, file: !142, line: 46, baseType: !7, size: 32, offset: 32)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5022, file: !142, line: 48, baseType: !227, size: 8, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "Gx_charset", scope: !5022, file: !142, line: 50, baseType: !5028, size: 16, offset: 72)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 16, elements: !810)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !5022, file: !142, line: 51, baseType: !7, size: 1, offset: 88, flags: DIFlagBitField, extraData: i64 88)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !5022, file: !142, line: 54, baseType: !141, size: 32, offset: 96)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "italic", scope: !5022, file: !142, line: 55, baseType: !221, size: 8, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "underline", scope: !5022, file: !142, line: 56, baseType: !221, size: 8, offset: 136)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "blink", scope: !5022, file: !142, line: 57, baseType: !221, size: 8, offset: 144)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !5022, file: !142, line: 58, baseType: !221, size: 8, offset: 152)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "saved_state", scope: !191, file: !142, line: 96, baseType: !5022, size: 160, offset: 3168)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "vc_num", scope: !191, file: !142, line: 98, baseType: !183, size: 16, offset: 3328)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cols", scope: !191, file: !142, line: 99, baseType: !7, size: 32, offset: 3360)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "vc_rows", scope: !191, file: !142, line: 100, baseType: !7, size: 32, offset: 3392)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "vc_size_row", scope: !191, file: !142, line: 101, baseType: !7, size: 32, offset: 3424)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scan_lines", scope: !191, file: !142, line: 102, baseType: !7, size: 32, offset: 3456)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cell_height", scope: !191, file: !142, line: 103, baseType: !7, size: 32, offset: 3488)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "vc_origin", scope: !191, file: !142, line: 104, baseType: !177, size: 64, offset: 3520)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scr_end", scope: !191, file: !142, line: 105, baseType: !177, size: 64, offset: 3584)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "vc_visible_origin", scope: !191, file: !142, line: 106, baseType: !177, size: 64, offset: 3648)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "vc_top", scope: !191, file: !142, line: 107, baseType: !7, size: 32, offset: 3712)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bottom", scope: !191, file: !142, line: 107, baseType: !7, size: 32, offset: 3744)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "vc_sw", scope: !191, file: !142, line: 108, baseType: !5048, size: 64, offset: 3776)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5050)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "consw", file: !149, line: 46, size: 1664, elements: !5051)
!5051 = !{!5052, !5053, !5057, !5061, !5065, !5069, !5073, !5079, !5080, !5084, !5088, !5092, !5104, !5108, !5112, !5116, !5120, !5121, !5122, !5123, !5127, !5131, !5137, !5141, !5142, !5143}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5050, file: !149, line: 47, baseType: !642, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "con_startup", scope: !5050, file: !149, line: 48, baseType: !5054, size: 64, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!329}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "con_init", scope: !5050, file: !149, line: 49, baseType: !5058, size: 64, offset: 128)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{null, !190, !109}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "con_deinit", scope: !5050, file: !149, line: 50, baseType: !5062, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{null, !190}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "con_clear", scope: !5050, file: !149, line: 51, baseType: !5066, size: 64, offset: 256)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{null, !190, !109, !109, !109, !109}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "con_putc", scope: !5050, file: !149, line: 53, baseType: !5070, size: 64, offset: 320)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{null, !190, !109, !109, !109}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "con_putcs", scope: !5050, file: !149, line: 54, baseType: !5074, size: 64, offset: 384)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !190, !5077, !109, !109, !109}
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "con_cursor", scope: !5050, file: !149, line: 56, baseType: !5058, size: 64, offset: 448)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "con_scroll", scope: !5050, file: !149, line: 57, baseType: !5081, size: 64, offset: 512)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!221, !190, !7, !7, !148, !7}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "con_switch", scope: !5050, file: !149, line: 60, baseType: !5085, size: 64, offset: 576)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!109, !190}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "con_blank", scope: !5050, file: !149, line: 61, baseType: !5089, size: 64, offset: 640)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!109, !190, !109, !109}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_set", scope: !5050, file: !149, line: 62, baseType: !5093, size: 64, offset: 704)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!109, !190, !5096, !7, !7}
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console_font", file: !5098, line: 169, size: 192, elements: !5099)
!5098 = !DIFile(filename: "./include/uapi/linux/kd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "935a4835df836685dd96475b03a1f9f1")
!5099 = !{!5100, !5101, !5102, !5103}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5097, file: !5098, line: 170, baseType: !7, size: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5097, file: !5098, line: 170, baseType: !7, size: 32, offset: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "charcount", scope: !5097, file: !5098, line: 171, baseType: !7, size: 32, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5097, file: !5098, line: 172, baseType: !4941, size: 64, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_get", scope: !5050, file: !149, line: 64, baseType: !5105, size: 64, offset: 768)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!109, !190, !5096, !7}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_default", scope: !5050, file: !149, line: 66, baseType: !5109, size: 64, offset: 832)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!109, !190, !5096, !173}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "con_resize", scope: !5050, file: !149, line: 68, baseType: !5113, size: 64, offset: 896)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!109, !190, !7, !7, !7}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_palette", scope: !5050, file: !149, line: 70, baseType: !5117, size: 64, offset: 960)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !190, !531}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "con_scrolldelta", scope: !5050, file: !149, line: 72, baseType: !5058, size: 64, offset: 1024)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_origin", scope: !5050, file: !149, line: 73, baseType: !5085, size: 64, offset: 1088)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "con_save_screen", scope: !5050, file: !149, line: 74, baseType: !5062, size: 64, offset: 1152)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "con_build_attr", scope: !5050, file: !149, line: 75, baseType: !5124, size: 64, offset: 1216)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!225, !190, !225, !141, !221, !221, !221, !221}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "con_invert_region", scope: !5050, file: !149, line: 78, baseType: !5128, size: 64, offset: 1280)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{null, !190, !178, !109}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "con_screen_pos", scope: !5050, file: !149, line: 79, baseType: !5132, size: 64, offset: 1344)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!178, !5135, !109}
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "con_getxy", scope: !5050, file: !149, line: 80, baseType: !5138, size: 64, offset: 1408)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!177, !190, !177, !820, !820}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "con_flush_scrollback", scope: !5050, file: !149, line: 85, baseType: !5062, size: 64, offset: 1472)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_enter", scope: !5050, file: !149, line: 91, baseType: !5085, size: 64, offset: 1536)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_leave", scope: !5050, file: !149, line: 95, baseType: !5085, size: 64, offset: 1600)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf", scope: !191, file: !142, line: 109, baseType: !5145, size: 64, offset: 3840)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf_size", scope: !191, file: !142, line: 110, baseType: !7, size: 32, offset: 3904)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "vc_mode", scope: !191, file: !142, line: 111, baseType: !227, size: 8, offset: 3936)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "vc_attr", scope: !191, file: !142, line: 113, baseType: !227, size: 8, offset: 3944)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "vc_def_color", scope: !191, file: !142, line: 114, baseType: !227, size: 8, offset: 3952)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "vc_ulcolor", scope: !191, file: !142, line: 115, baseType: !227, size: 8, offset: 3960)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "vc_itcolor", scope: !191, file: !142, line: 116, baseType: !227, size: 8, offset: 3968)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "vc_halfcolor", scope: !191, file: !142, line: 117, baseType: !227, size: 8, offset: 3976)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cursor_type", scope: !191, file: !142, line: 119, baseType: !7, size: 32, offset: 4000)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "vc_complement_mask", scope: !191, file: !142, line: 120, baseType: !183, size: 16, offset: 4032)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "vc_s_complement_mask", scope: !191, file: !142, line: 121, baseType: !183, size: 16, offset: 4048)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "vc_pos", scope: !191, file: !142, line: 122, baseType: !177, size: 64, offset: 4096)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "vc_hi_font_mask", scope: !191, file: !142, line: 124, baseType: !183, size: 16, offset: 4160)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "vc_font", scope: !191, file: !142, line: 125, baseType: !5097, size: 192, offset: 4224)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "vc_video_erase_char", scope: !191, file: !142, line: 126, baseType: !183, size: 16, offset: 4416)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "vc_state", scope: !191, file: !142, line: 128, baseType: !7, size: 32, offset: 4448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "vc_npar", scope: !191, file: !142, line: 129, baseType: !7, size: 32, offset: 4480)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "vc_par", scope: !191, file: !142, line: 129, baseType: !5163, size: 512, offset: 4512)
!5163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !2799)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "vt_mode", scope: !191, file: !142, line: 131, baseType: !5165, size: 64, offset: 5024)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_mode", file: !5166, line: 19, size: 64, elements: !5167)
!5166 = !DIFile(filename: "./include/uapi/linux/vt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e1a50369aa89014c0868246d1a3fec5")
!5167 = !{!5168, !5169, !5170, !5171, !5172}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5165, file: !5166, line: 20, baseType: !174, size: 8)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "waitv", scope: !5165, file: !5166, line: 21, baseType: !174, size: 8, offset: 8)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "relsig", scope: !5165, file: !5166, line: 22, baseType: !829, size: 16, offset: 16)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "acqsig", scope: !5165, file: !5166, line: 23, baseType: !829, size: 16, offset: 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "frsig", scope: !5165, file: !5166, line: 24, baseType: !829, size: 16, offset: 48)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "vt_pid", scope: !191, file: !142, line: 132, baseType: !1200, size: 64, offset: 5120)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "vt_newvt", scope: !191, file: !142, line: 133, baseType: !109, size: 32, offset: 5184)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "paste_wait", scope: !191, file: !142, line: 134, baseType: !1210, size: 192, offset: 5248)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "vc_disp_ctrl", scope: !191, file: !142, line: 136, baseType: !7, size: 1, offset: 5440, flags: DIFlagBitField, extraData: i64 5440)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "vc_toggle_meta", scope: !191, file: !142, line: 137, baseType: !7, size: 1, offset: 5441, flags: DIFlagBitField, extraData: i64 5440)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decscnm", scope: !191, file: !142, line: 138, baseType: !7, size: 1, offset: 5442, flags: DIFlagBitField, extraData: i64 5440)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decom", scope: !191, file: !142, line: 139, baseType: !7, size: 1, offset: 5443, flags: DIFlagBitField, extraData: i64 5440)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decawm", scope: !191, file: !142, line: 140, baseType: !7, size: 1, offset: 5444, flags: DIFlagBitField, extraData: i64 5440)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "vc_deccm", scope: !191, file: !142, line: 141, baseType: !7, size: 1, offset: 5445, flags: DIFlagBitField, extraData: i64 5440)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decim", scope: !191, file: !142, line: 142, baseType: !7, size: 1, offset: 5446, flags: DIFlagBitField, extraData: i64 5440)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "vc_priv", scope: !191, file: !142, line: 144, baseType: !7, size: 3, offset: 5447, flags: DIFlagBitField, extraData: i64 5440)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "vc_need_wrap", scope: !191, file: !142, line: 145, baseType: !7, size: 1, offset: 5450, flags: DIFlagBitField, extraData: i64 5440)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "vc_can_do_color", scope: !191, file: !142, line: 146, baseType: !7, size: 1, offset: 5451, flags: DIFlagBitField, extraData: i64 5440)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "vc_report_mouse", scope: !191, file: !142, line: 147, baseType: !7, size: 2, offset: 5452, flags: DIFlagBitField, extraData: i64 5440)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf", scope: !191, file: !142, line: 148, baseType: !227, size: 1, offset: 5454, flags: DIFlagBitField, extraData: i64 5440)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_count", scope: !191, file: !142, line: 149, baseType: !227, size: 8, offset: 5456)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_char", scope: !191, file: !142, line: 150, baseType: !109, size: 32, offset: 5472)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "vc_tab_stop", scope: !191, file: !142, line: 151, baseType: !924, size: 256, offset: 5504)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "vc_palette", scope: !191, file: !142, line: 152, baseType: !5192, size: 384, offset: 5760)
!5192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 384, elements: !5193)
!5193 = !{!5194}
!5194 = !DISubrange(count: 48)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "vc_translate", scope: !191, file: !142, line: 153, baseType: !5145, size: 64, offset: 6144)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "vc_resize_user", scope: !191, file: !142, line: 154, baseType: !7, size: 32, offset: 6208)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_pitch", scope: !191, file: !142, line: 155, baseType: !7, size: 32, offset: 6240)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_duration", scope: !191, file: !142, line: 156, baseType: !7, size: 32, offset: 6272)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cur_blink_ms", scope: !191, file: !142, line: 157, baseType: !183, size: 16, offset: 6304)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "vc_display_fg", scope: !191, file: !142, line: 158, baseType: !5201, size: 64, offset: 6336)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "uni_pagedict", scope: !191, file: !142, line: 159, baseType: !5203, size: 64, offset: 6400)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_pagedict", file: !142, line: 20, flags: DIFlagFwdDecl)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "uni_pagedict_loc", scope: !191, file: !142, line: 160, baseType: !5206, size: 64, offset: 6464)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_lines", scope: !191, file: !142, line: 161, baseType: !5208, size: 64, offset: 6528)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!5210 = !{!5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5225, !5227}
!5211 = !DILocalVariable(name: "vc", arg: 1, scope: !187, file: !3, line: 518, type: !190)
!5212 = !DILocalVariable(name: "con_buf", arg: 2, scope: !187, file: !3, line: 518, type: !329)
!5213 = !DILocalVariable(name: "pos", arg: 3, scope: !187, file: !3, line: 519, type: !7)
!5214 = !DILocalVariable(name: "count", arg: 4, scope: !187, file: !3, line: 519, type: !7)
!5215 = !DILocalVariable(name: "viewed", arg: 5, scope: !187, file: !3, line: 519, type: !221)
!5216 = !DILocalVariable(name: "org0", arg: 6, scope: !187, file: !3, line: 519, type: !5209)
!5217 = !DILocalVariable(name: "org", scope: !187, file: !3, line: 521, type: !178)
!5218 = !DILocalVariable(name: "col", scope: !187, file: !3, line: 522, type: !7)
!5219 = !DILocalVariable(name: "maxcol", scope: !187, file: !3, line: 522, type: !7)
!5220 = !DILocalVariable(name: "c", scope: !187, file: !3, line: 523, type: !227)
!5221 = !DILocalVariable(name: "header", scope: !5222, file: !3, line: 527, type: !5224)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 526, column: 25)
!5223 = distinct !DILexicalBlock(scope: !187, file: !3, line: 526, column: 6)
!5224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 32, elements: !921)
!5225 = !DILocalVariable(name: "w", scope: !5226, file: !3, line: 565, type: !183)
!5226 = distinct !DILexicalBlock(scope: !187, file: !3, line: 564, column: 20)
!5227 = !DILocalVariable(name: "__pptr", scope: !5228, file: !3, line: 567, type: !184)
!5228 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 567, column: 7)
!5229 = !{!5230}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !186, file: !3, line: 567, baseType: !183, size: 16)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vcs_poll_data", file: !3, line: 76, size: 512, elements: !5233)
!5233 = !{!5234, !5246, !5247, !5248, !5249}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !5232, file: !3, line: 77, baseType: !5235, size: 192)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5236, line: 54, size: 192, elements: !5237)
!5236 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5237 = !{!5238, !5244, !5245}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5235, file: !5236, line: 55, baseType: !5239, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5236, line: 51, baseType: !5240)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!109, !5243, !177, !169}
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5235, file: !5236, line: 56, baseType: !5243, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5235, file: !5236, line: 57, baseType: !109, size: 32, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cons_num", scope: !5232, file: !3, line: 78, baseType: !7, size: 32, offset: 192)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5232, file: !3, line: 79, baseType: !109, size: 32, offset: 224)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !5232, file: !3, line: 80, baseType: !1210, size: 192, offset: 256)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5232, file: !3, line: 81, baseType: !4924, size: 64, offset: 448)
!5250 = !{!5251, !5253, !5256, !5258, !5260, !5265, !5268, !5273, !0, !5275, !5277, !5282, !5288, !5297, !5302}
!5251 = !DIGlobalVariableExpression(var: !5252, expr: !DIExpression())
!5252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 794, type: !1315, isLocal: true, isDefinition: true)
!5253 = !DIGlobalVariableExpression(var: !5254, expr: !DIExpression())
!5254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 796, type: !5255, isLocal: true, isDefinition: true)
!5255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 56, elements: !812)
!5256 = !DIGlobalVariableExpression(var: !5257, expr: !DIExpression())
!5257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 798, type: !5255, isLocal: true, isDefinition: true)
!5258 = !DIGlobalVariableExpression(var: !5259, expr: !DIExpression())
!5259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 812, type: !5224, isLocal: true, isDefinition: true)
!5260 = !DIGlobalVariableExpression(var: !5261, expr: !DIExpression())
!5261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 813, type: !5262, isLocal: true, isDefinition: true)
!5262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 304, elements: !5263)
!5263 = !{!5264}
!5264 = !DISubrange(count: 38)
!5265 = !DIGlobalVariableExpression(var: !5266, expr: !DIExpression())
!5266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 814, type: !5267, isLocal: true, isDefinition: true)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 24, elements: !376)
!5268 = !DIGlobalVariableExpression(var: !5269, expr: !DIExpression())
!5269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 817, type: !5270, isLocal: true, isDefinition: true)
!5270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 40, elements: !5271)
!5271 = !{!5272}
!5272 = !DISubrange(count: 5)
!5273 = !DIGlobalVariableExpression(var: !5274, expr: !DIExpression())
!5274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 818, type: !5270, isLocal: true, isDefinition: true)
!5275 = !DIGlobalVariableExpression(var: !5276, expr: !DIExpression())
!5276 = distinct !DIGlobalVariable(name: "vcs_fops", scope: !2, file: !3, line: 779, type: !1447, isLocal: true, isDefinition: true)
!5277 = !DIGlobalVariableExpression(var: !5278, expr: !DIExpression())
!5278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !5279, isLocal: true, isDefinition: true)
!5279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 216, elements: !5280)
!5280 = !{!5281}
!5281 = !DISubrange(count: 27)
!5282 = !DIGlobalVariableExpression(var: !5283, expr: !DIExpression())
!5283 = distinct !DIGlobalVariable(scope: null, file: !5284, line: 249, type: !5285, isLocal: true, isDefinition: true)
!5284 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 224, elements: !5286)
!5286 = !{!5287}
!5287 = !DISubrange(count: 28)
!5288 = !DIGlobalVariableExpression(var: !5289, expr: !DIExpression())
!5289 = distinct !DIGlobalVariable(name: "__key", scope: !5290, file: !3, line: 137, type: !1054, isLocal: true, isDefinition: true)
!5290 = distinct !DISubprogram(name: "vcs_poll_data_get", scope: !3, file: !3, line: 126, type: !5291, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5293)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!5231, !1455}
!5293 = !{!5294, !5295, !5296}
!5294 = !DILocalVariable(name: "file", arg: 1, scope: !5290, file: !3, line: 126, type: !1455)
!5295 = !DILocalVariable(name: "poll", scope: !5290, file: !3, line: 128, type: !5231)
!5296 = !DILocalVariable(name: "kill", scope: !5290, file: !3, line: 128, type: !5231)
!5297 = !DIGlobalVariableExpression(var: !5298, expr: !DIExpression())
!5298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !5299, isLocal: true, isDefinition: true)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 104, elements: !5300)
!5300 = !{!5301}
!5301 = !DISubrange(count: 13)
!5302 = !DIGlobalVariableExpression(var: !5303, expr: !DIExpression())
!5303 = distinct !DIGlobalVariable(scope: null, file: !159, line: 480, type: !5304, isLocal: true, isDefinition: true)
!5304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 168, elements: !5305)
!5305 = !{!5306}
!5306 = !DISubrange(count: 21)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!5308 = !{i32 7, !"Dwarf Version", i32 5}
!5309 = !{i32 2, !"Debug Info Version", i32 3}
!5310 = !{i32 1, !"wchar_size", i32 2}
!5311 = !{i32 8, !"cf-protection-branch", i32 1}
!5312 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5313 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5314 = !{i32 1, !"Code Model", i32 2}
!5315 = !{i32 1, !"override-stack-alignment", i32 8}
!5316 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5317 = distinct !DISubprogram(name: "vcs_make_sysfs", scope: !3, file: !3, line: 791, type: !2983, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5318)
!5318 = !{!5319}
!5319 = !DILocalVariable(name: "index", arg: 1, scope: !5317, file: !3, line: 791, type: !109)
!5320 = !DILocation(line: 791, column: 25, scope: !5317)
!5321 = !DILocation(line: 793, column: 16, scope: !5317)
!5322 = !DILocation(line: 793, column: 32, scope: !5317)
!5323 = !DILocation(line: 794, column: 18, scope: !5317)
!5324 = !DILocation(line: 794, column: 24, scope: !5317)
!5325 = !DILocation(line: 793, column: 2, scope: !5317)
!5326 = !DILocation(line: 795, column: 16, scope: !5317)
!5327 = !DILocation(line: 795, column: 32, scope: !5317)
!5328 = !DILocation(line: 796, column: 19, scope: !5317)
!5329 = !DILocation(line: 796, column: 25, scope: !5317)
!5330 = !DILocation(line: 795, column: 2, scope: !5317)
!5331 = !DILocation(line: 797, column: 16, scope: !5317)
!5332 = !DILocation(line: 797, column: 32, scope: !5317)
!5333 = !DILocation(line: 798, column: 19, scope: !5317)
!5334 = !DILocation(line: 798, column: 25, scope: !5317)
!5335 = !DILocation(line: 797, column: 2, scope: !5317)
!5336 = !DILocation(line: 799, column: 1, scope: !5317)
!5337 = !DISubprogram(name: "device_create", scope: !94, file: !94, line: 1181, type: !5338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!321, !4609, !321, !610, !169, !329, null}
!5340 = distinct !DISubprogram(name: "vcs_remove_sysfs", scope: !3, file: !3, line: 801, type: !2983, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5341 = !{!5342}
!5342 = !DILocalVariable(name: "index", arg: 1, scope: !5340, file: !3, line: 801, type: !109)
!5343 = !DILocation(line: 801, column: 27, scope: !5340)
!5344 = !DILocation(line: 803, column: 17, scope: !5340)
!5345 = !DILocation(line: 803, column: 27, scope: !5340)
!5346 = !DILocation(line: 803, column: 2, scope: !5340)
!5347 = !DILocation(line: 804, column: 17, scope: !5340)
!5348 = !DILocation(line: 804, column: 27, scope: !5340)
!5349 = !DILocation(line: 804, column: 2, scope: !5340)
!5350 = !DILocation(line: 805, column: 17, scope: !5340)
!5351 = !DILocation(line: 805, column: 27, scope: !5340)
!5352 = !DILocation(line: 805, column: 2, scope: !5340)
!5353 = !DILocation(line: 806, column: 1, scope: !5340)
!5354 = !DISubprogram(name: "device_destroy", scope: !94, file: !94, line: 1187, type: !5355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !4609, !610}
!5357 = distinct !DISubprogram(name: "vcs_init", scope: !3, file: !3, line: 808, type: !785, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5358)
!5358 = !{!5359}
!5359 = !DILocalVariable(name: "i", scope: !5357, file: !3, line: 810, type: !7)
!5360 = !DILocation(line: 810, column: 2, scope: !5357)
!5361 = !DILocation(line: 810, column: 15, scope: !5357)
!5362 = !DILocation(line: 812, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 812, column: 6)
!5364 = !DILocation(line: 812, column: 6, scope: !5357)
!5365 = !DILocation(line: 813, column: 3, scope: !5363)
!5366 = !DILocation(line: 814, column: 13, scope: !5357)
!5367 = !DILocation(line: 814, column: 11, scope: !5357)
!5368 = !DILocation(line: 816, column: 16, scope: !5357)
!5369 = !DILocation(line: 816, column: 2, scope: !5357)
!5370 = !DILocation(line: 817, column: 16, scope: !5357)
!5371 = !DILocation(line: 817, column: 2, scope: !5357)
!5372 = !DILocation(line: 818, column: 16, scope: !5357)
!5373 = !DILocation(line: 818, column: 2, scope: !5357)
!5374 = !DILocation(line: 819, column: 9, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 819, column: 2)
!5376 = !DILocation(line: 819, column: 7, scope: !5375)
!5377 = !DILocation(line: 819, column: 14, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 819, column: 2)
!5379 = !DILocation(line: 819, column: 16, scope: !5378)
!5380 = !DILocation(line: 819, column: 2, scope: !5375)
!5381 = !DILocation(line: 820, column: 18, scope: !5378)
!5382 = !DILocation(line: 820, column: 3, scope: !5378)
!5383 = !DILocation(line: 819, column: 36, scope: !5378)
!5384 = !DILocation(line: 819, column: 2, scope: !5378)
!5385 = distinct !{!5385, !5380, !5386, !5387, !5388}
!5386 = !DILocation(line: 820, column: 19, scope: !5375)
!5387 = !{!"llvm.loop.mustprogress"}
!5388 = !{!"llvm.loop.unroll.disable"}
!5389 = !DILocation(line: 822, column: 1, scope: !5357)
!5390 = !DILocation(line: 821, column: 2, scope: !5357)
!5391 = distinct !DISubprogram(name: "register_chrdev", scope: !14, file: !14, line: 2602, type: !5392, scopeLine: 2604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5394)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!109, !7, !329, !1446}
!5394 = !{!5395, !5396, !5397}
!5395 = !DILocalVariable(name: "major", arg: 1, scope: !5391, file: !14, line: 2602, type: !7)
!5396 = !DILocalVariable(name: "name", arg: 2, scope: !5391, file: !14, line: 2602, type: !329)
!5397 = !DILocalVariable(name: "fops", arg: 3, scope: !5391, file: !14, line: 2603, type: !1446)
!5398 = !DILocation(line: 2602, column: 48, scope: !5391)
!5399 = !DILocation(line: 2602, column: 67, scope: !5391)
!5400 = !DILocation(line: 2603, column: 37, scope: !5391)
!5401 = !DILocation(line: 2605, column: 27, scope: !5391)
!5402 = !DILocation(line: 2605, column: 42, scope: !5391)
!5403 = !DILocation(line: 2605, column: 48, scope: !5391)
!5404 = !DILocation(line: 2605, column: 9, scope: !5391)
!5405 = !DILocation(line: 2605, column: 2, scope: !5391)
!5406 = !DISubprogram(name: "panic", scope: !5407, file: !5407, line: 12, type: !5408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5407 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!5408 = !DISubroutineType(types: !5409)
!5409 = !{null, !329, null}
!5410 = !DISubprogram(name: "class_create", scope: !4612, file: !4612, line: 230, type: !5411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!5307, !329}
!5413 = !DISubprogram(name: "__register_chrdev", scope: !14, file: !14, line: 2594, type: !5414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!109, !7, !7, !7, !329, !1446}
!5416 = distinct !DISubprogram(name: "vcs_lseek", scope: !3, file: !3, line: 228, type: !1453, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5417)
!5417 = !{!5418, !5419, !5420, !5421, !5422, !5423}
!5418 = !DILocalVariable(name: "file", arg: 1, scope: !5416, file: !3, line: 228, type: !1455)
!5419 = !DILocalVariable(name: "offset", arg: 2, scope: !5416, file: !3, line: 228, type: !615)
!5420 = !DILocalVariable(name: "orig", arg: 3, scope: !5416, file: !3, line: 228, type: !109)
!5421 = !DILocalVariable(name: "inode", scope: !5416, file: !3, line: 230, type: !454)
!5422 = !DILocalVariable(name: "vc", scope: !5416, file: !3, line: 231, type: !190)
!5423 = !DILocalVariable(name: "size", scope: !5416, file: !3, line: 232, type: !109)
!5424 = !DILocation(line: 228, column: 38, scope: !5416)
!5425 = !DILocation(line: 228, column: 51, scope: !5416)
!5426 = !DILocation(line: 228, column: 63, scope: !5416)
!5427 = !DILocation(line: 230, column: 2, scope: !5416)
!5428 = !DILocation(line: 230, column: 16, scope: !5416)
!5429 = !DILocation(line: 230, column: 35, scope: !5416)
!5430 = !DILocation(line: 230, column: 24, scope: !5416)
!5431 = !DILocation(line: 231, column: 2, scope: !5416)
!5432 = !DILocation(line: 231, column: 18, scope: !5416)
!5433 = !DILocation(line: 232, column: 2, scope: !5416)
!5434 = !DILocation(line: 232, column: 6, scope: !5416)
!5435 = !DILocation(line: 234, column: 2, scope: !5416)
!5436 = !DILocation(line: 235, column: 14, scope: !5416)
!5437 = !DILocation(line: 235, column: 7, scope: !5416)
!5438 = !DILocation(line: 235, column: 5, scope: !5416)
!5439 = !DILocation(line: 236, column: 7, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 236, column: 6)
!5441 = !DILocation(line: 236, column: 6, scope: !5416)
!5442 = !DILocation(line: 237, column: 3, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 236, column: 11)
!5444 = !DILocation(line: 238, column: 3, scope: !5443)
!5445 = !DILocation(line: 241, column: 18, scope: !5416)
!5446 = !DILocation(line: 241, column: 22, scope: !5416)
!5447 = !DILocation(line: 241, column: 45, scope: !5416)
!5448 = !DILocation(line: 241, column: 9, scope: !5416)
!5449 = !DILocation(line: 241, column: 7, scope: !5416)
!5450 = !DILocation(line: 242, column: 2, scope: !5416)
!5451 = !DILocation(line: 243, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 243, column: 6)
!5453 = !DILocation(line: 243, column: 11, scope: !5452)
!5454 = !DILocation(line: 243, column: 6, scope: !5416)
!5455 = !DILocation(line: 244, column: 10, scope: !5452)
!5456 = !DILocation(line: 244, column: 3, scope: !5452)
!5457 = !DILocation(line: 245, column: 27, scope: !5416)
!5458 = !DILocation(line: 245, column: 33, scope: !5416)
!5459 = !DILocation(line: 245, column: 41, scope: !5416)
!5460 = !DILocation(line: 245, column: 47, scope: !5416)
!5461 = !DILocation(line: 245, column: 9, scope: !5416)
!5462 = !DILocation(line: 245, column: 2, scope: !5416)
!5463 = !DILocation(line: 246, column: 1, scope: !5416)
!5464 = distinct !DISubprogram(name: "vcs_read", scope: !3, file: !3, line: 365, type: !1458, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5465 = !{!5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5482, !5483, !5484}
!5466 = !DILocalVariable(name: "file", arg: 1, scope: !5464, file: !3, line: 365, type: !1455)
!5467 = !DILocalVariable(name: "buf", arg: 2, scope: !5464, file: !3, line: 365, type: !173)
!5468 = !DILocalVariable(name: "count", arg: 3, scope: !5464, file: !3, line: 365, type: !422)
!5469 = !DILocalVariable(name: "ppos", arg: 4, scope: !5464, file: !3, line: 365, type: !1143)
!5470 = !DILocalVariable(name: "inode", scope: !5464, file: !3, line: 367, type: !454)
!5471 = !DILocalVariable(name: "vc", scope: !5464, file: !3, line: 368, type: !190)
!5472 = !DILocalVariable(name: "poll", scope: !5464, file: !3, line: 369, type: !5231)
!5473 = !DILocalVariable(name: "read", scope: !5464, file: !3, line: 370, type: !7)
!5474 = !DILocalVariable(name: "ret", scope: !5464, file: !3, line: 371, type: !407)
!5475 = !DILocalVariable(name: "con_buf", scope: !5464, file: !3, line: 372, type: !173)
!5476 = !DILocalVariable(name: "pos", scope: !5464, file: !3, line: 373, type: !615)
!5477 = !DILocalVariable(name: "viewed", scope: !5464, file: !3, line: 374, type: !221)
!5478 = !DILocalVariable(name: "attr", scope: !5464, file: !3, line: 374, type: !221)
!5479 = !DILocalVariable(name: "uni_mode", scope: !5464, file: !3, line: 374, type: !221)
!5480 = !DILocalVariable(name: "this_round", scope: !5481, file: !3, line: 403, type: !7)
!5481 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 402, column: 16)
!5482 = !DILocalVariable(name: "skip", scope: !5481, file: !3, line: 403, type: !7)
!5483 = !DILocalVariable(name: "size", scope: !5481, file: !3, line: 404, type: !109)
!5484 = !DILabel(scope: !5464, name: "unlock_out", file: !3, line: 472)
!5485 = !DILocation(line: 365, column: 23, scope: !5464)
!5486 = !DILocation(line: 365, column: 42, scope: !5464)
!5487 = !DILocation(line: 365, column: 54, scope: !5464)
!5488 = !DILocation(line: 365, column: 69, scope: !5464)
!5489 = !DILocation(line: 367, column: 2, scope: !5464)
!5490 = !DILocation(line: 367, column: 16, scope: !5464)
!5491 = !DILocation(line: 367, column: 35, scope: !5464)
!5492 = !DILocation(line: 367, column: 24, scope: !5464)
!5493 = !DILocation(line: 368, column: 2, scope: !5464)
!5494 = !DILocation(line: 368, column: 18, scope: !5464)
!5495 = !DILocation(line: 369, column: 2, scope: !5464)
!5496 = !DILocation(line: 369, column: 24, scope: !5464)
!5497 = !DILocation(line: 370, column: 2, scope: !5464)
!5498 = !DILocation(line: 370, column: 15, scope: !5464)
!5499 = !DILocation(line: 371, column: 2, scope: !5464)
!5500 = !DILocation(line: 371, column: 10, scope: !5464)
!5501 = !DILocation(line: 372, column: 2, scope: !5464)
!5502 = !DILocation(line: 372, column: 8, scope: !5464)
!5503 = !DILocation(line: 373, column: 2, scope: !5464)
!5504 = !DILocation(line: 373, column: 9, scope: !5464)
!5505 = !DILocation(line: 374, column: 2, scope: !5464)
!5506 = !DILocation(line: 374, column: 7, scope: !5464)
!5507 = !DILocation(line: 374, column: 15, scope: !5464)
!5508 = !DILocation(line: 374, column: 21, scope: !5464)
!5509 = !DILocation(line: 376, column: 21, scope: !5464)
!5510 = !DILocation(line: 376, column: 12, scope: !5464)
!5511 = !DILocation(line: 376, column: 10, scope: !5464)
!5512 = !DILocation(line: 377, column: 7, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 377, column: 6)
!5514 = !DILocation(line: 377, column: 6, scope: !5464)
!5515 = !DILocation(line: 378, column: 3, scope: !5513)
!5516 = !DILocation(line: 380, column: 9, scope: !5464)
!5517 = !DILocation(line: 380, column: 8, scope: !5464)
!5518 = !DILocation(line: 380, column: 6, scope: !5464)
!5519 = !DILocation(line: 385, column: 2, scope: !5464)
!5520 = !DILocation(line: 387, column: 13, scope: !5464)
!5521 = !DILocation(line: 387, column: 11, scope: !5464)
!5522 = !DILocation(line: 388, column: 9, scope: !5464)
!5523 = !DILocation(line: 388, column: 7, scope: !5464)
!5524 = !DILocation(line: 390, column: 6, scope: !5464)
!5525 = !DILocation(line: 391, column: 6, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 391, column: 6)
!5527 = !DILocation(line: 391, column: 10, scope: !5526)
!5528 = !DILocation(line: 391, column: 6, scope: !5464)
!5529 = !DILocation(line: 392, column: 3, scope: !5526)
!5530 = !DILocation(line: 394, column: 6, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 394, column: 6)
!5532 = !{i8 0, i8 2}
!5533 = !DILocation(line: 394, column: 15, scope: !5531)
!5534 = !DILocation(line: 394, column: 19, scope: !5531)
!5535 = !DILocation(line: 394, column: 25, scope: !5531)
!5536 = !DILocation(line: 394, column: 23, scope: !5531)
!5537 = !DILocation(line: 394, column: 32, scope: !5531)
!5538 = !DILocation(line: 394, column: 6, scope: !5464)
!5539 = !DILocation(line: 395, column: 3, scope: !5531)
!5540 = !DILocation(line: 397, column: 9, scope: !5464)
!5541 = !DILocation(line: 397, column: 15, scope: !5464)
!5542 = !DILocation(line: 397, column: 7, scope: !5464)
!5543 = !DILocation(line: 398, column: 6, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 398, column: 6)
!5545 = !DILocation(line: 398, column: 12, scope: !5544)
!5546 = !DILocation(line: 398, column: 15, scope: !5544)
!5547 = !DILocation(line: 398, column: 6, scope: !5464)
!5548 = !DILocation(line: 399, column: 3, scope: !5544)
!5549 = !DILocation(line: 399, column: 9, scope: !5544)
!5550 = !DILocation(line: 399, column: 15, scope: !5544)
!5551 = !DILocation(line: 400, column: 7, scope: !5464)
!5552 = !DILocation(line: 401, column: 6, scope: !5464)
!5553 = !DILocation(line: 402, column: 2, scope: !5464)
!5554 = !DILocation(line: 402, column: 9, scope: !5464)
!5555 = !DILocation(line: 403, column: 3, scope: !5481)
!5556 = !DILocation(line: 403, column: 16, scope: !5481)
!5557 = !DILocation(line: 403, column: 28, scope: !5481)
!5558 = !DILocation(line: 404, column: 3, scope: !5481)
!5559 = !DILocation(line: 404, column: 7, scope: !5481)
!5560 = !DILocation(line: 406, column: 15, scope: !5481)
!5561 = !DILocation(line: 406, column: 8, scope: !5481)
!5562 = !DILocation(line: 406, column: 6, scope: !5481)
!5563 = !DILocation(line: 407, column: 8, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 407, column: 7)
!5565 = !DILocation(line: 407, column: 7, scope: !5481)
!5566 = !DILocation(line: 408, column: 8, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 407, column: 12)
!5568 = !DILocation(line: 409, column: 4, scope: !5567)
!5569 = !DILocation(line: 416, column: 19, scope: !5481)
!5570 = !DILocation(line: 416, column: 23, scope: !5481)
!5571 = !DILocation(line: 416, column: 29, scope: !5481)
!5572 = !DILocation(line: 416, column: 10, scope: !5481)
!5573 = !DILocation(line: 416, column: 8, scope: !5481)
!5574 = !DILocation(line: 417, column: 7, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 417, column: 7)
!5576 = !DILocation(line: 417, column: 12, scope: !5575)
!5577 = !DILocation(line: 417, column: 7, scope: !5481)
!5578 = !DILocation(line: 418, column: 10, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 417, column: 17)
!5580 = !DILocation(line: 418, column: 8, scope: !5579)
!5581 = !DILocation(line: 419, column: 4, scope: !5579)
!5582 = !DILocation(line: 421, column: 7, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 421, column: 7)
!5584 = !DILocation(line: 421, column: 14, scope: !5583)
!5585 = !DILocation(line: 421, column: 11, scope: !5583)
!5586 = !DILocation(line: 421, column: 7, scope: !5481)
!5587 = !DILocation(line: 422, column: 4, scope: !5583)
!5588 = !DILocation(line: 423, column: 7, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 423, column: 7)
!5590 = !DILocation(line: 423, column: 15, scope: !5589)
!5591 = !DILocation(line: 423, column: 22, scope: !5589)
!5592 = !DILocation(line: 423, column: 20, scope: !5589)
!5593 = !DILocation(line: 423, column: 13, scope: !5589)
!5594 = !DILocation(line: 423, column: 7, scope: !5481)
!5595 = !DILocation(line: 424, column: 12, scope: !5589)
!5596 = !DILocation(line: 424, column: 19, scope: !5589)
!5597 = !DILocation(line: 424, column: 17, scope: !5589)
!5598 = !DILocation(line: 424, column: 10, scope: !5589)
!5599 = !DILocation(line: 424, column: 4, scope: !5589)
!5600 = !DILocation(line: 426, column: 16, scope: !5481)
!5601 = !DILocation(line: 426, column: 14, scope: !5481)
!5602 = !DILocation(line: 427, column: 7, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 427, column: 7)
!5604 = !DILocation(line: 427, column: 18, scope: !5603)
!5605 = !DILocation(line: 427, column: 7, scope: !5481)
!5606 = !DILocation(line: 428, column: 15, scope: !5603)
!5607 = !DILocation(line: 428, column: 4, scope: !5603)
!5608 = !DILocation(line: 435, column: 7, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 435, column: 7)
!5610 = !DILocation(line: 435, column: 7, scope: !5481)
!5611 = !DILocation(line: 436, column: 27, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 435, column: 17)
!5613 = !DILocation(line: 436, column: 31, scope: !5612)
!5614 = !DILocation(line: 436, column: 40, scope: !5612)
!5615 = !DILocation(line: 436, column: 45, scope: !5612)
!5616 = !DILocation(line: 437, column: 6, scope: !5612)
!5617 = !DILocation(line: 436, column: 10, scope: !5612)
!5618 = !DILocation(line: 436, column: 8, scope: !5612)
!5619 = !DILocation(line: 438, column: 8, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 438, column: 8)
!5621 = !DILocation(line: 438, column: 8, scope: !5612)
!5622 = !DILocation(line: 439, column: 5, scope: !5620)
!5623 = !DILocation(line: 440, column: 3, scope: !5612)
!5624 = !DILocation(line: 440, column: 15, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 440, column: 14)
!5626 = !DILocation(line: 440, column: 14, scope: !5609)
!5627 = !DILocation(line: 441, column: 24, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 440, column: 21)
!5629 = !DILocation(line: 441, column: 28, scope: !5628)
!5630 = !DILocation(line: 441, column: 37, scope: !5628)
!5631 = !DILocation(line: 441, column: 42, scope: !5628)
!5632 = !DILocation(line: 442, column: 6, scope: !5628)
!5633 = !DILocation(line: 441, column: 4, scope: !5628)
!5634 = !DILocation(line: 443, column: 3, scope: !5628)
!5635 = !DILocation(line: 444, column: 30, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 443, column: 10)
!5637 = !DILocation(line: 444, column: 34, scope: !5636)
!5638 = !DILocation(line: 444, column: 43, scope: !5636)
!5639 = !DILocation(line: 444, column: 48, scope: !5636)
!5640 = !DILocation(line: 445, column: 6, scope: !5636)
!5641 = !DILocation(line: 444, column: 17, scope: !5636)
!5642 = !DILocation(line: 444, column: 15, scope: !5636)
!5643 = !DILocation(line: 455, column: 3, scope: !5481)
!5644 = !DILocation(line: 456, column: 22, scope: !5481)
!5645 = !DILocation(line: 456, column: 27, scope: !5481)
!5646 = !DILocation(line: 456, column: 37, scope: !5481)
!5647 = !DILocation(line: 456, column: 35, scope: !5481)
!5648 = !DILocation(line: 456, column: 43, scope: !5481)
!5649 = !DILocation(line: 456, column: 9, scope: !5481)
!5650 = !DILocation(line: 456, column: 7, scope: !5481)
!5651 = !DILocation(line: 457, column: 3, scope: !5481)
!5652 = !DILocation(line: 459, column: 7, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 459, column: 7)
!5654 = !DILocation(line: 459, column: 7, scope: !5481)
!5655 = !DILocation(line: 460, column: 12, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 459, column: 12)
!5657 = !DILocation(line: 460, column: 25, scope: !5656)
!5658 = !DILocation(line: 460, column: 23, scope: !5656)
!5659 = !DILocation(line: 460, column: 9, scope: !5656)
!5660 = !DILocation(line: 461, column: 8, scope: !5656)
!5661 = !DILocation(line: 462, column: 4, scope: !5656)
!5662 = !DILocation(line: 464, column: 10, scope: !5481)
!5663 = !DILocation(line: 464, column: 7, scope: !5481)
!5664 = !DILocation(line: 465, column: 10, scope: !5481)
!5665 = !DILocation(line: 465, column: 7, scope: !5481)
!5666 = !DILocation(line: 466, column: 11, scope: !5481)
!5667 = !DILocation(line: 466, column: 8, scope: !5481)
!5668 = !DILocation(line: 467, column: 12, scope: !5481)
!5669 = !DILocation(line: 467, column: 9, scope: !5481)
!5670 = !DILocation(line: 468, column: 2, scope: !5464)
!5671 = distinct !{!5671, !5553, !5670, !5387, !5388}
!5672 = !DILocation(line: 469, column: 11, scope: !5464)
!5673 = !DILocation(line: 469, column: 3, scope: !5464)
!5674 = !DILocation(line: 469, column: 8, scope: !5464)
!5675 = !DILocation(line: 470, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 470, column: 6)
!5677 = !DILocation(line: 470, column: 6, scope: !5464)
!5678 = !DILocation(line: 471, column: 9, scope: !5676)
!5679 = !DILocation(line: 471, column: 7, scope: !5676)
!5680 = !DILocation(line: 471, column: 3, scope: !5676)
!5681 = !DILocation(line: 472, column: 1, scope: !5464)
!5682 = !DILocation(line: 473, column: 2, scope: !5464)
!5683 = !DILocation(line: 474, column: 2, scope: !5464)
!5684 = !DILocation(line: 475, column: 9, scope: !5464)
!5685 = !DILocation(line: 475, column: 2, scope: !5464)
!5686 = !DILocation(line: 476, column: 1, scope: !5464)
!5687 = distinct !DISubprogram(name: "vcs_write", scope: !3, file: !3, line: 590, type: !1462, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5688)
!5688 = !{!5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5706}
!5689 = !DILocalVariable(name: "file", arg: 1, scope: !5687, file: !3, line: 590, type: !1455)
!5690 = !DILocalVariable(name: "buf", arg: 2, scope: !5687, file: !3, line: 590, type: !329)
!5691 = !DILocalVariable(name: "count", arg: 3, scope: !5687, file: !3, line: 590, type: !422)
!5692 = !DILocalVariable(name: "ppos", arg: 4, scope: !5687, file: !3, line: 590, type: !1143)
!5693 = !DILocalVariable(name: "inode", scope: !5687, file: !3, line: 592, type: !454)
!5694 = !DILocalVariable(name: "vc", scope: !5687, file: !3, line: 593, type: !190)
!5695 = !DILocalVariable(name: "con_buf", scope: !5687, file: !3, line: 594, type: !173)
!5696 = !DILocalVariable(name: "org0", scope: !5687, file: !3, line: 595, type: !178)
!5697 = !DILocalVariable(name: "org", scope: !5687, file: !3, line: 595, type: !178)
!5698 = !DILocalVariable(name: "written", scope: !5687, file: !3, line: 596, type: !7)
!5699 = !DILocalVariable(name: "size", scope: !5687, file: !3, line: 597, type: !109)
!5700 = !DILocalVariable(name: "ret", scope: !5687, file: !3, line: 598, type: !407)
!5701 = !DILocalVariable(name: "pos", scope: !5687, file: !3, line: 599, type: !615)
!5702 = !DILocalVariable(name: "viewed", scope: !5687, file: !3, line: 600, type: !221)
!5703 = !DILocalVariable(name: "attr", scope: !5687, file: !3, line: 600, type: !221)
!5704 = !DILocalVariable(name: "this_round", scope: !5705, file: !3, line: 634, type: !7)
!5705 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 633, column: 16)
!5706 = !DILabel(scope: !5687, name: "unlock_out", file: !3, line: 705)
!5707 = !DILocation(line: 590, column: 24, scope: !5687)
!5708 = !DILocation(line: 590, column: 49, scope: !5687)
!5709 = !DILocation(line: 590, column: 61, scope: !5687)
!5710 = !DILocation(line: 590, column: 76, scope: !5687)
!5711 = !DILocation(line: 592, column: 2, scope: !5687)
!5712 = !DILocation(line: 592, column: 16, scope: !5687)
!5713 = !DILocation(line: 592, column: 35, scope: !5687)
!5714 = !DILocation(line: 592, column: 24, scope: !5687)
!5715 = !DILocation(line: 593, column: 2, scope: !5687)
!5716 = !DILocation(line: 593, column: 18, scope: !5687)
!5717 = !DILocation(line: 594, column: 2, scope: !5687)
!5718 = !DILocation(line: 594, column: 8, scope: !5687)
!5719 = !DILocation(line: 595, column: 2, scope: !5687)
!5720 = !DILocation(line: 595, column: 7, scope: !5687)
!5721 = !DILocation(line: 595, column: 14, scope: !5687)
!5722 = !DILocation(line: 596, column: 2, scope: !5687)
!5723 = !DILocation(line: 596, column: 15, scope: !5687)
!5724 = !DILocation(line: 597, column: 2, scope: !5687)
!5725 = !DILocation(line: 597, column: 6, scope: !5687)
!5726 = !DILocation(line: 598, column: 2, scope: !5687)
!5727 = !DILocation(line: 598, column: 10, scope: !5687)
!5728 = !DILocation(line: 599, column: 2, scope: !5687)
!5729 = !DILocation(line: 599, column: 9, scope: !5687)
!5730 = !DILocation(line: 600, column: 2, scope: !5687)
!5731 = !DILocation(line: 600, column: 7, scope: !5687)
!5732 = !DILocation(line: 600, column: 15, scope: !5687)
!5733 = !DILocation(line: 602, column: 6, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 602, column: 6)
!5735 = !DILocation(line: 602, column: 6, scope: !5687)
!5736 = !DILocation(line: 603, column: 3, scope: !5734)
!5737 = !DILocation(line: 605, column: 21, scope: !5687)
!5738 = !DILocation(line: 605, column: 12, scope: !5687)
!5739 = !DILocation(line: 605, column: 10, scope: !5687)
!5740 = !DILocation(line: 606, column: 7, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 606, column: 6)
!5742 = !DILocation(line: 606, column: 6, scope: !5687)
!5743 = !DILocation(line: 607, column: 3, scope: !5741)
!5744 = !DILocation(line: 609, column: 9, scope: !5687)
!5745 = !DILocation(line: 609, column: 8, scope: !5687)
!5746 = !DILocation(line: 609, column: 6, scope: !5687)
!5747 = !DILocation(line: 614, column: 2, scope: !5687)
!5748 = !DILocation(line: 616, column: 9, scope: !5687)
!5749 = !DILocation(line: 616, column: 7, scope: !5687)
!5750 = !DILocation(line: 617, column: 6, scope: !5687)
!5751 = !DILocation(line: 618, column: 14, scope: !5687)
!5752 = !DILocation(line: 618, column: 7, scope: !5687)
!5753 = !DILocation(line: 618, column: 5, scope: !5687)
!5754 = !DILocation(line: 619, column: 7, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 619, column: 6)
!5756 = !DILocation(line: 619, column: 6, scope: !5687)
!5757 = !DILocation(line: 620, column: 3, scope: !5755)
!5758 = !DILocation(line: 622, column: 18, scope: !5687)
!5759 = !DILocation(line: 622, column: 22, scope: !5687)
!5760 = !DILocation(line: 622, column: 9, scope: !5687)
!5761 = !DILocation(line: 622, column: 7, scope: !5687)
!5762 = !DILocation(line: 623, column: 6, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 623, column: 6)
!5764 = !DILocation(line: 623, column: 11, scope: !5763)
!5765 = !DILocation(line: 623, column: 6, scope: !5687)
!5766 = !DILocation(line: 624, column: 9, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 623, column: 16)
!5768 = !DILocation(line: 624, column: 7, scope: !5767)
!5769 = !DILocation(line: 625, column: 3, scope: !5767)
!5770 = !DILocation(line: 627, column: 6, scope: !5687)
!5771 = !DILocation(line: 628, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 628, column: 6)
!5773 = !DILocation(line: 628, column: 10, scope: !5772)
!5774 = !DILocation(line: 628, column: 14, scope: !5772)
!5775 = !DILocation(line: 628, column: 17, scope: !5772)
!5776 = !DILocation(line: 628, column: 23, scope: !5772)
!5777 = !DILocation(line: 628, column: 21, scope: !5772)
!5778 = !DILocation(line: 628, column: 6, scope: !5687)
!5779 = !DILocation(line: 629, column: 3, scope: !5772)
!5780 = !DILocation(line: 630, column: 6, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 630, column: 6)
!5782 = !DILocation(line: 630, column: 14, scope: !5781)
!5783 = !DILocation(line: 630, column: 21, scope: !5781)
!5784 = !DILocation(line: 630, column: 19, scope: !5781)
!5785 = !DILocation(line: 630, column: 12, scope: !5781)
!5786 = !DILocation(line: 630, column: 6, scope: !5687)
!5787 = !DILocation(line: 631, column: 11, scope: !5781)
!5788 = !DILocation(line: 631, column: 18, scope: !5781)
!5789 = !DILocation(line: 631, column: 16, scope: !5781)
!5790 = !DILocation(line: 631, column: 9, scope: !5781)
!5791 = !DILocation(line: 631, column: 3, scope: !5781)
!5792 = !DILocation(line: 632, column: 10, scope: !5687)
!5793 = !DILocation(line: 633, column: 2, scope: !5687)
!5794 = !DILocation(line: 633, column: 9, scope: !5687)
!5795 = !DILocation(line: 634, column: 3, scope: !5705)
!5796 = !DILocation(line: 634, column: 16, scope: !5705)
!5797 = !DILocation(line: 634, column: 29, scope: !5705)
!5798 = !DILocation(line: 636, column: 7, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 636, column: 7)
!5800 = !DILocation(line: 636, column: 18, scope: !5799)
!5801 = !DILocation(line: 636, column: 7, scope: !5705)
!5802 = !DILocation(line: 637, column: 15, scope: !5799)
!5803 = !DILocation(line: 637, column: 4, scope: !5799)
!5804 = !DILocation(line: 642, column: 3, scope: !5705)
!5805 = !DILocation(line: 643, column: 24, scope: !5705)
!5806 = !DILocation(line: 643, column: 33, scope: !5705)
!5807 = !DILocation(line: 643, column: 38, scope: !5705)
!5808 = !DILocation(line: 643, column: 9, scope: !5705)
!5809 = !DILocation(line: 643, column: 7, scope: !5705)
!5810 = !DILocation(line: 644, column: 3, scope: !5705)
!5811 = !DILocation(line: 646, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 646, column: 7)
!5813 = !DILocation(line: 646, column: 7, scope: !5705)
!5814 = !DILocation(line: 647, column: 18, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 646, column: 12)
!5816 = !DILocation(line: 647, column: 15, scope: !5815)
!5817 = !DILocation(line: 648, column: 9, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 648, column: 8)
!5819 = !DILocation(line: 648, column: 8, scope: !5815)
!5820 = !DILocation(line: 652, column: 9, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 652, column: 9)
!5822 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 648, column: 21)
!5823 = !DILocation(line: 652, column: 9, scope: !5822)
!5824 = !DILocation(line: 653, column: 6, scope: !5821)
!5825 = !DILocation(line: 654, column: 9, scope: !5822)
!5826 = !DILocation(line: 655, column: 5, scope: !5822)
!5827 = !DILocation(line: 657, column: 3, scope: !5815)
!5828 = !DILocation(line: 663, column: 15, scope: !5705)
!5829 = !DILocation(line: 663, column: 8, scope: !5705)
!5830 = !DILocation(line: 663, column: 6, scope: !5705)
!5831 = !DILocation(line: 664, column: 8, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 664, column: 7)
!5833 = !DILocation(line: 664, column: 7, scope: !5705)
!5834 = !DILocation(line: 665, column: 8, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 665, column: 8)
!5836 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 664, column: 12)
!5837 = !DILocation(line: 665, column: 8, scope: !5836)
!5838 = !DILocation(line: 666, column: 5, scope: !5835)
!5839 = !DILocation(line: 667, column: 8, scope: !5836)
!5840 = !DILocation(line: 668, column: 4, scope: !5836)
!5841 = !DILocation(line: 670, column: 19, scope: !5705)
!5842 = !DILocation(line: 670, column: 23, scope: !5705)
!5843 = !DILocation(line: 670, column: 10, scope: !5705)
!5844 = !DILocation(line: 670, column: 8, scope: !5705)
!5845 = !DILocation(line: 671, column: 7, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 671, column: 7)
!5847 = !DILocation(line: 671, column: 12, scope: !5846)
!5848 = !DILocation(line: 671, column: 7, scope: !5705)
!5849 = !DILocation(line: 672, column: 8, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 672, column: 8)
!5851 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 671, column: 17)
!5852 = !DILocation(line: 672, column: 8, scope: !5851)
!5853 = !DILocation(line: 673, column: 5, scope: !5850)
!5854 = !DILocation(line: 674, column: 10, scope: !5851)
!5855 = !DILocation(line: 674, column: 8, scope: !5851)
!5856 = !DILocation(line: 675, column: 4, scope: !5851)
!5857 = !DILocation(line: 677, column: 7, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 677, column: 7)
!5859 = !DILocation(line: 677, column: 14, scope: !5858)
!5860 = !DILocation(line: 677, column: 11, scope: !5858)
!5861 = !DILocation(line: 677, column: 7, scope: !5705)
!5862 = !DILocation(line: 678, column: 4, scope: !5858)
!5863 = !DILocation(line: 679, column: 7, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 679, column: 7)
!5865 = !DILocation(line: 679, column: 20, scope: !5864)
!5866 = !DILocation(line: 679, column: 27, scope: !5864)
!5867 = !DILocation(line: 679, column: 25, scope: !5864)
!5868 = !DILocation(line: 679, column: 18, scope: !5864)
!5869 = !DILocation(line: 679, column: 7, scope: !5705)
!5870 = !DILocation(line: 680, column: 17, scope: !5864)
!5871 = !DILocation(line: 680, column: 24, scope: !5864)
!5872 = !DILocation(line: 680, column: 22, scope: !5864)
!5873 = !DILocation(line: 680, column: 15, scope: !5864)
!5874 = !DILocation(line: 680, column: 4, scope: !5864)
!5875 = !DILocation(line: 686, column: 7, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 686, column: 7)
!5877 = !DILocation(line: 686, column: 7, scope: !5705)
!5878 = !DILocation(line: 687, column: 24, scope: !5876)
!5879 = !DILocation(line: 687, column: 28, scope: !5876)
!5880 = !DILocation(line: 687, column: 37, scope: !5876)
!5881 = !DILocation(line: 687, column: 42, scope: !5876)
!5882 = !DILocation(line: 688, column: 6, scope: !5876)
!5883 = !DILocation(line: 687, column: 10, scope: !5876)
!5884 = !DILocation(line: 687, column: 8, scope: !5876)
!5885 = !DILocation(line: 687, column: 4, scope: !5876)
!5886 = !DILocation(line: 690, column: 31, scope: !5876)
!5887 = !DILocation(line: 690, column: 35, scope: !5876)
!5888 = !DILocation(line: 690, column: 44, scope: !5876)
!5889 = !DILocation(line: 690, column: 49, scope: !5876)
!5890 = !DILocation(line: 691, column: 6, scope: !5876)
!5891 = !DILocation(line: 690, column: 10, scope: !5876)
!5892 = !DILocation(line: 690, column: 8, scope: !5876)
!5893 = !DILocation(line: 693, column: 12, scope: !5705)
!5894 = !DILocation(line: 693, column: 9, scope: !5705)
!5895 = !DILocation(line: 694, column: 14, scope: !5705)
!5896 = !DILocation(line: 694, column: 11, scope: !5705)
!5897 = !DILocation(line: 695, column: 10, scope: !5705)
!5898 = !DILocation(line: 695, column: 7, scope: !5705)
!5899 = !DILocation(line: 696, column: 10, scope: !5705)
!5900 = !DILocation(line: 696, column: 7, scope: !5705)
!5901 = !DILocation(line: 697, column: 7, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 697, column: 7)
!5903 = !DILocation(line: 697, column: 7, scope: !5705)
!5904 = !DILocation(line: 698, column: 18, scope: !5902)
!5905 = !DILocation(line: 698, column: 38, scope: !5902)
!5906 = !DILocation(line: 698, column: 22, scope: !5902)
!5907 = !DILocation(line: 698, column: 45, scope: !5902)
!5908 = !DILocation(line: 698, column: 51, scope: !5902)
!5909 = !DILocation(line: 698, column: 49, scope: !5902)
!5910 = !DILocation(line: 698, column: 4, scope: !5902)
!5911 = !DILocation(line: 699, column: 2, scope: !5687)
!5912 = distinct !{!5912, !5793, !5911, !5387, !5388}
!5913 = !DILocation(line: 700, column: 11, scope: !5687)
!5914 = !DILocation(line: 700, column: 3, scope: !5687)
!5915 = !DILocation(line: 700, column: 8, scope: !5687)
!5916 = !DILocation(line: 701, column: 8, scope: !5687)
!5917 = !DILocation(line: 701, column: 6, scope: !5687)
!5918 = !DILocation(line: 702, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 702, column: 6)
!5920 = !DILocation(line: 702, column: 6, scope: !5687)
!5921 = !DILocation(line: 703, column: 19, scope: !5919)
!5922 = !DILocation(line: 703, column: 3, scope: !5919)
!5923 = !DILocation(line: 705, column: 1, scope: !5687)
!5924 = !DILocation(line: 706, column: 2, scope: !5687)
!5925 = !DILocation(line: 707, column: 2, scope: !5687)
!5926 = !DILocation(line: 708, column: 9, scope: !5687)
!5927 = !DILocation(line: 708, column: 2, scope: !5687)
!5928 = !DILocation(line: 709, column: 1, scope: !5687)
!5929 = distinct !DISubprogram(name: "vcs_poll", scope: !3, file: !3, line: 712, type: !5930, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5934)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!1516, !1455, !5932}
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1520, line: 40, baseType: !1519)
!5934 = !{!5935, !5936, !5937, !5938}
!5935 = !DILocalVariable(name: "file", arg: 1, scope: !5929, file: !3, line: 712, type: !1455)
!5936 = !DILocalVariable(name: "wait", arg: 2, scope: !5929, file: !3, line: 712, type: !5932)
!5937 = !DILocalVariable(name: "poll", scope: !5929, file: !3, line: 714, type: !5231)
!5938 = !DILocalVariable(name: "ret", scope: !5929, file: !3, line: 715, type: !1516)
!5939 = !DILocation(line: 712, column: 23, scope: !5929)
!5940 = !DILocation(line: 712, column: 41, scope: !5929)
!5941 = !DILocation(line: 714, column: 2, scope: !5929)
!5942 = !DILocation(line: 714, column: 24, scope: !5929)
!5943 = !DILocation(line: 714, column: 49, scope: !5929)
!5944 = !DILocation(line: 714, column: 31, scope: !5929)
!5945 = !DILocation(line: 715, column: 2, scope: !5929)
!5946 = !DILocation(line: 715, column: 11, scope: !5929)
!5947 = !DILocation(line: 717, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 717, column: 6)
!5949 = !DILocation(line: 717, column: 6, scope: !5929)
!5950 = !DILocation(line: 718, column: 13, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 717, column: 12)
!5952 = !DILocation(line: 718, column: 20, scope: !5951)
!5953 = !DILocation(line: 718, column: 26, scope: !5951)
!5954 = !DILocation(line: 718, column: 33, scope: !5951)
!5955 = !DILocation(line: 718, column: 3, scope: !5951)
!5956 = !DILocation(line: 719, column: 11, scope: !5951)
!5957 = !DILocation(line: 719, column: 17, scope: !5951)
!5958 = !DILocation(line: 719, column: 3, scope: !5951)
!5959 = !DILocation(line: 721, column: 8, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 719, column: 24)
!5961 = !DILocation(line: 722, column: 4, scope: !5960)
!5962 = !DILocation(line: 724, column: 8, scope: !5960)
!5963 = !DILocation(line: 725, column: 4, scope: !5960)
!5964 = !DILocation(line: 727, column: 8, scope: !5960)
!5965 = !DILocation(line: 728, column: 4, scope: !5960)
!5966 = !DILocation(line: 730, column: 2, scope: !5951)
!5967 = !DILocation(line: 731, column: 9, scope: !5929)
!5968 = !DILocation(line: 732, column: 1, scope: !5929)
!5969 = !DILocation(line: 731, column: 2, scope: !5929)
!5970 = distinct !DISubprogram(name: "vcs_open", scope: !3, file: !3, line: 752, type: !1980, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5971)
!5971 = !{!5972, !5973, !5974, !5975, !5976, !5977}
!5972 = !DILocalVariable(name: "inode", arg: 1, scope: !5970, file: !3, line: 752, type: !454)
!5973 = !DILocalVariable(name: "filp", arg: 2, scope: !5970, file: !3, line: 752, type: !1455)
!5974 = !DILocalVariable(name: "currcons", scope: !5970, file: !3, line: 754, type: !7)
!5975 = !DILocalVariable(name: "attr", scope: !5970, file: !3, line: 755, type: !221)
!5976 = !DILocalVariable(name: "uni_mode", scope: !5970, file: !3, line: 756, type: !221)
!5977 = !DILocalVariable(name: "ret", scope: !5970, file: !3, line: 757, type: !109)
!5978 = !DILocation(line: 752, column: 24, scope: !5970)
!5979 = !DILocation(line: 752, column: 44, scope: !5970)
!5980 = !DILocation(line: 754, column: 2, scope: !5970)
!5981 = !DILocation(line: 754, column: 15, scope: !5970)
!5982 = !DILocation(line: 754, column: 26, scope: !5970)
!5983 = !DILocation(line: 755, column: 2, scope: !5970)
!5984 = !DILocation(line: 755, column: 7, scope: !5970)
!5985 = !DILocation(line: 755, column: 14, scope: !5970)
!5986 = !DILocation(line: 756, column: 2, scope: !5970)
!5987 = !DILocation(line: 756, column: 7, scope: !5970)
!5988 = !DILocation(line: 756, column: 18, scope: !5970)
!5989 = !DILocation(line: 757, column: 2, scope: !5970)
!5990 = !DILocation(line: 757, column: 6, scope: !5970)
!5991 = !DILocation(line: 760, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 760, column: 6)
!5993 = !DILocation(line: 760, column: 11, scope: !5992)
!5994 = !DILocation(line: 760, column: 14, scope: !5992)
!5995 = !DILocation(line: 760, column: 6, scope: !5970)
!5996 = !DILocation(line: 761, column: 3, scope: !5992)
!5997 = !DILocation(line: 763, column: 2, scope: !5970)
!5998 = !DILocation(line: 764, column: 5, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 764, column: 5)
!6000 = !DILocation(line: 764, column: 14, scope: !5999)
!6001 = !DILocation(line: 764, column: 36, scope: !5999)
!6002 = !DILocation(line: 764, column: 44, scope: !5999)
!6003 = !DILocation(line: 764, column: 18, scope: !5999)
!6004 = !DILocation(line: 764, column: 5, scope: !5970)
!6005 = !DILocation(line: 765, column: 7, scope: !5999)
!6006 = !DILocation(line: 765, column: 3, scope: !5999)
!6007 = !DILocation(line: 766, column: 2, scope: !5970)
!6008 = !DILocation(line: 767, column: 9, scope: !5970)
!6009 = !DILocation(line: 767, column: 2, scope: !5970)
!6010 = !DILocation(line: 768, column: 1, scope: !5970)
!6011 = distinct !DISubprogram(name: "vcs_release", scope: !3, file: !3, line: 770, type: !1980, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6012 = !{!6013, !6014, !6015}
!6013 = !DILocalVariable(name: "inode", arg: 1, scope: !6011, file: !3, line: 770, type: !454)
!6014 = !DILocalVariable(name: "file", arg: 2, scope: !6011, file: !3, line: 770, type: !1455)
!6015 = !DILocalVariable(name: "poll", scope: !6011, file: !3, line: 772, type: !5231)
!6016 = !DILocation(line: 770, column: 38, scope: !6011)
!6017 = !DILocation(line: 770, column: 58, scope: !6011)
!6018 = !DILocation(line: 772, column: 2, scope: !6011)
!6019 = !DILocation(line: 772, column: 24, scope: !6011)
!6020 = !DILocation(line: 772, column: 31, scope: !6011)
!6021 = !DILocation(line: 772, column: 37, scope: !6011)
!6022 = !DILocation(line: 774, column: 6, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 774, column: 6)
!6024 = !DILocation(line: 774, column: 6, scope: !6011)
!6025 = !DILocation(line: 775, column: 22, scope: !6023)
!6026 = !DILocation(line: 775, column: 3, scope: !6023)
!6027 = !DILocation(line: 777, column: 1, scope: !6011)
!6028 = !DILocation(line: 776, column: 2, scope: !6011)
!6029 = distinct !DISubprogram(name: "vcs_fasync", scope: !3, file: !3, line: 735, type: !1994, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6030)
!6030 = !{!6031, !6032, !6033, !6034}
!6031 = !DILocalVariable(name: "fd", arg: 1, scope: !6029, file: !3, line: 735, type: !109)
!6032 = !DILocalVariable(name: "file", arg: 2, scope: !6029, file: !3, line: 735, type: !1455)
!6033 = !DILocalVariable(name: "on", arg: 3, scope: !6029, file: !3, line: 735, type: !109)
!6034 = !DILocalVariable(name: "poll", scope: !6029, file: !3, line: 737, type: !5231)
!6035 = !DILocation(line: 735, column: 16, scope: !6029)
!6036 = !DILocation(line: 735, column: 33, scope: !6029)
!6037 = !DILocation(line: 735, column: 43, scope: !6029)
!6038 = !DILocation(line: 737, column: 2, scope: !6029)
!6039 = !DILocation(line: 737, column: 24, scope: !6029)
!6040 = !DILocation(line: 737, column: 31, scope: !6029)
!6041 = !DILocation(line: 737, column: 37, scope: !6029)
!6042 = !DILocation(line: 739, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 739, column: 6)
!6044 = !DILocation(line: 739, column: 6, scope: !6029)
!6045 = !DILocation(line: 741, column: 8, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 741, column: 7)
!6047 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 739, column: 13)
!6048 = !DILocation(line: 741, column: 7, scope: !6047)
!6049 = !DILocation(line: 742, column: 4, scope: !6046)
!6050 = !DILocation(line: 743, column: 28, scope: !6047)
!6051 = !DILocation(line: 743, column: 10, scope: !6047)
!6052 = !DILocation(line: 743, column: 8, scope: !6047)
!6053 = !DILocation(line: 744, column: 8, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 744, column: 7)
!6055 = !DILocation(line: 744, column: 7, scope: !6047)
!6056 = !DILocation(line: 745, column: 4, scope: !6054)
!6057 = !DILocation(line: 746, column: 2, scope: !6047)
!6058 = !DILocation(line: 748, column: 23, scope: !6029)
!6059 = !DILocation(line: 748, column: 27, scope: !6029)
!6060 = !DILocation(line: 748, column: 33, scope: !6029)
!6061 = !DILocation(line: 748, column: 38, scope: !6029)
!6062 = !DILocation(line: 748, column: 44, scope: !6029)
!6063 = !DILocation(line: 748, column: 9, scope: !6029)
!6064 = !DILocation(line: 748, column: 2, scope: !6029)
!6065 = !DILocation(line: 749, column: 1, scope: !6029)
!6066 = distinct !DISubprogram(name: "file_inode", scope: !14, file: !14, line: 1073, type: !6067, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6069)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{!454, !1158}
!6069 = !{!6070}
!6070 = !DILocalVariable(name: "f", arg: 1, scope: !6066, file: !14, line: 1073, type: !1158)
!6071 = !DILocation(line: 1073, column: 59, scope: !6066)
!6072 = !DILocation(line: 1075, column: 9, scope: !6066)
!6073 = !DILocation(line: 1075, column: 12, scope: !6066)
!6074 = !DILocation(line: 1075, column: 2, scope: !6066)
!6075 = !DISubprogram(name: "console_lock", scope: !149, file: !149, line: 347, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6076 = distinct !DISubprogram(name: "vcs_vc", scope: !3, file: !3, line: 183, type: !6077, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6079)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!190, !454, !4043}
!6079 = !{!6080, !6081, !6082, !6083, !6085}
!6080 = !DILocalVariable(name: "inode", arg: 1, scope: !6076, file: !3, line: 183, type: !454)
!6081 = !DILocalVariable(name: "viewed", arg: 2, scope: !6076, file: !3, line: 183, type: !4043)
!6082 = !DILocalVariable(name: "currcons", scope: !6076, file: !3, line: 185, type: !7)
!6083 = !DILocalVariable(name: "__ret_warn_on", scope: !6084, file: !3, line: 187, type: !109)
!6084 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 187, column: 2)
!6085 = !DILocalVariable(name: "__flags", scope: !6086, file: !3, line: 187, type: !109)
!6086 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 187, column: 2)
!6087 = distinct !DILexicalBlock(scope: !6084, file: !3, line: 187, column: 2)
!6088 = !DILocation(line: 183, column: 45, scope: !6076)
!6089 = !DILocation(line: 183, column: 58, scope: !6076)
!6090 = !DILocation(line: 185, column: 2, scope: !6076)
!6091 = !DILocation(line: 185, column: 15, scope: !6076)
!6092 = !DILocation(line: 185, column: 26, scope: !6076)
!6093 = !DILocation(line: 187, column: 2, scope: !6084)
!6094 = !DILocation(line: 0, scope: !6084)
!6095 = !DILocation(line: 187, column: 2, scope: !6087)
!6096 = !DILocation(line: 187, column: 2, scope: !6086)
!6097 = !DILocation(line: 187, column: 2, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 187, column: 2)
!6099 = !DILocation(line: 187, column: 2, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 187, column: 2)
!6101 = !{i64 2154852232, i64 2154852261, i64 2154852307, i64 2154852365, i64 2154852419, i64 2154852473, i64 2154852528, i64 2154852559, i64 2154852867, i64 2154852873, i64 2154852920, i64 2154852943, i64 2154852969}
!6102 = !DILocation(line: 187, column: 2, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 187, column: 2)
!6104 = !DILocation(line: 187, column: 2, scope: !6076)
!6105 = !DILocation(line: 189, column: 6, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 189, column: 6)
!6107 = !DILocation(line: 189, column: 15, scope: !6106)
!6108 = !DILocation(line: 189, column: 6, scope: !6076)
!6109 = !DILocation(line: 190, column: 14, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 189, column: 21)
!6111 = !DILocation(line: 190, column: 12, scope: !6110)
!6112 = !DILocation(line: 191, column: 7, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 191, column: 7)
!6114 = !DILocation(line: 191, column: 7, scope: !6110)
!6115 = !DILocation(line: 192, column: 5, scope: !6113)
!6116 = !DILocation(line: 192, column: 12, scope: !6113)
!6117 = !DILocation(line: 192, column: 4, scope: !6113)
!6118 = !DILocation(line: 193, column: 2, scope: !6110)
!6119 = !DILocation(line: 194, column: 11, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 193, column: 9)
!6121 = !DILocation(line: 195, column: 7, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 195, column: 7)
!6123 = !DILocation(line: 195, column: 7, scope: !6120)
!6124 = !DILocation(line: 196, column: 5, scope: !6122)
!6125 = !DILocation(line: 196, column: 12, scope: !6122)
!6126 = !DILocation(line: 196, column: 4, scope: !6122)
!6127 = !DILocation(line: 198, column: 17, scope: !6076)
!6128 = !DILocation(line: 198, column: 9, scope: !6076)
!6129 = !DILocation(line: 198, column: 27, scope: !6076)
!6130 = !DILocation(line: 199, column: 1, scope: !6076)
!6131 = !DILocation(line: 198, column: 2, scope: !6076)
!6132 = !DISubprogram(name: "console_unlock", scope: !149, file: !149, line: 349, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6133 = distinct !DISubprogram(name: "vcs_size", scope: !3, file: !3, line: 209, type: !6134, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!109, !5135, !221, !221}
!6136 = !{!6137, !6138, !6139, !6140, !6141, !6143}
!6137 = !DILocalVariable(name: "vc", arg: 1, scope: !6133, file: !3, line: 209, type: !5135)
!6138 = !DILocalVariable(name: "attr", arg: 2, scope: !6133, file: !3, line: 209, type: !221)
!6139 = !DILocalVariable(name: "unicode", arg: 3, scope: !6133, file: !3, line: 209, type: !221)
!6140 = !DILocalVariable(name: "size", scope: !6133, file: !3, line: 211, type: !109)
!6141 = !DILocalVariable(name: "__ret_warn_on", scope: !6142, file: !3, line: 213, type: !109)
!6142 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 213, column: 2)
!6143 = !DILocalVariable(name: "__flags", scope: !6144, file: !3, line: 213, type: !109)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 213, column: 2)
!6145 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 213, column: 2)
!6146 = !DILocation(line: 209, column: 43, scope: !6133)
!6147 = !DILocation(line: 209, column: 52, scope: !6133)
!6148 = !DILocation(line: 209, column: 63, scope: !6133)
!6149 = !DILocation(line: 211, column: 2, scope: !6133)
!6150 = !DILocation(line: 211, column: 6, scope: !6133)
!6151 = !DILocation(line: 213, column: 2, scope: !6142)
!6152 = !DILocation(line: 0, scope: !6142)
!6153 = !DILocation(line: 213, column: 2, scope: !6145)
!6154 = !DILocation(line: 213, column: 2, scope: !6144)
!6155 = !DILocation(line: 213, column: 2, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 213, column: 2)
!6157 = !DILocation(line: 213, column: 2, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 213, column: 2)
!6159 = !{i64 2154857977, i64 2154858006, i64 2154858052, i64 2154858110, i64 2154858164, i64 2154858218, i64 2154858273, i64 2154858304, i64 2154858612, i64 2154858618, i64 2154858665, i64 2154858688, i64 2154858714}
!6160 = !DILocation(line: 213, column: 2, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 213, column: 2)
!6162 = !DILocation(line: 213, column: 2, scope: !6133)
!6163 = !DILocation(line: 215, column: 9, scope: !6133)
!6164 = !DILocation(line: 215, column: 13, scope: !6133)
!6165 = !DILocation(line: 215, column: 23, scope: !6133)
!6166 = !DILocation(line: 215, column: 27, scope: !6133)
!6167 = !DILocation(line: 215, column: 21, scope: !6133)
!6168 = !DILocation(line: 215, column: 7, scope: !6133)
!6169 = !DILocation(line: 217, column: 6, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 217, column: 6)
!6171 = !DILocation(line: 217, column: 6, scope: !6133)
!6172 = !DILocation(line: 218, column: 7, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 218, column: 7)
!6174 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 217, column: 12)
!6175 = !DILocation(line: 218, column: 7, scope: !6174)
!6176 = !DILocation(line: 219, column: 4, scope: !6173)
!6177 = !DILocation(line: 221, column: 14, scope: !6174)
!6178 = !DILocation(line: 221, column: 12, scope: !6174)
!6179 = !DILocation(line: 221, column: 19, scope: !6174)
!6180 = !DILocation(line: 221, column: 8, scope: !6174)
!6181 = !DILocation(line: 222, column: 2, scope: !6174)
!6182 = !DILocation(line: 222, column: 13, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 222, column: 13)
!6184 = !DILocation(line: 222, column: 13, scope: !6170)
!6185 = !DILocation(line: 223, column: 8, scope: !6183)
!6186 = !DILocation(line: 223, column: 3, scope: !6183)
!6187 = !DILocation(line: 225, column: 9, scope: !6133)
!6188 = !DILocation(line: 225, column: 2, scope: !6133)
!6189 = !DILocation(line: 226, column: 1, scope: !6133)
!6190 = distinct !DISubprogram(name: "iminor", scope: !14, file: !14, line: 938, type: !6191, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!7, !3641}
!6193 = !{!6194}
!6194 = !DILocalVariable(name: "inode", arg: 1, scope: !6190, file: !14, line: 938, type: !3641)
!6195 = !DILocation(line: 938, column: 51, scope: !6190)
!6196 = !DILocation(line: 940, column: 9, scope: !6190)
!6197 = !DILocation(line: 940, column: 2, scope: !6190)
!6198 = !DISubprogram(name: "fixed_size_llseek", scope: !14, file: !14, line: 3015, type: !6199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!615, !1455, !615, !109, !615}
!6201 = distinct !DISubprogram(name: "atomic_read", scope: !6202, file: !6202, line: 30, type: !6203, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6202 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!109, !6205}
!6205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6206, size: 64)
!6206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!6207 = !{!6208}
!6208 = !DILocalVariable(name: "v", arg: 1, scope: !6201, file: !6202, line: 30, type: !6205)
!6209 = !DILocation(line: 30, column: 29, scope: !6201)
!6210 = !DILocation(line: 32, column: 25, scope: !6201)
!6211 = !DILocation(line: 32, column: 2, scope: !6201)
!6212 = !DILocation(line: 33, column: 25, scope: !6201)
!6213 = !DILocation(line: 33, column: 9, scope: !6201)
!6214 = !DILocation(line: 33, column: 2, scope: !6201)
!6215 = !DISubprogram(name: "is_console_locked", scope: !149, file: !149, line: 356, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6216 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6217, file: !6217, line: 66, type: !6218, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6223)
!6217 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6218 = !DISubroutineType(types: !6219)
!6219 = !{null, !6220, !422}
!6220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6221, size: 64)
!6221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6222)
!6222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6223 = !{!6224, !6225}
!6224 = !DILocalVariable(name: "v", arg: 1, scope: !6216, file: !6217, line: 66, type: !6220)
!6225 = !DILocalVariable(name: "size", arg: 2, scope: !6216, file: !6217, line: 66, type: !422)
!6226 = !DILocation(line: 66, column: 73, scope: !6216)
!6227 = !DILocation(line: 66, column: 83, scope: !6216)
!6228 = !DILocation(line: 68, column: 19, scope: !6216)
!6229 = !DILocation(line: 68, column: 22, scope: !6216)
!6230 = !DILocation(line: 68, column: 2, scope: !6216)
!6231 = !DILocation(line: 69, column: 2, scope: !6216)
!6232 = !DILocation(line: 70, column: 1, scope: !6216)
!6233 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6234, file: !6234, line: 442, type: !6203, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6235)
!6234 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6235 = !{!6236}
!6236 = !DILocalVariable(name: "v", arg: 1, scope: !6233, file: !6234, line: 442, type: !6205)
!6237 = !DILocation(line: 442, column: 33, scope: !6233)
!6238 = !DILocation(line: 444, column: 26, scope: !6233)
!6239 = !DILocation(line: 444, column: 9, scope: !6233)
!6240 = !DILocation(line: 444, column: 2, scope: !6233)
!6241 = distinct !DISubprogram(name: "kasan_check_read", scope: !6242, file: !6242, line: 40, type: !6243, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6242 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!221, !6220, !7}
!6245 = !{!6246, !6247}
!6246 = !DILocalVariable(name: "p", arg: 1, scope: !6241, file: !6242, line: 40, type: !6220)
!6247 = !DILocalVariable(name: "size", arg: 2, scope: !6241, file: !6242, line: 40, type: !7)
!6248 = !DILocation(line: 40, column: 58, scope: !6241)
!6249 = !DILocation(line: 40, column: 74, scope: !6241)
!6250 = !DILocation(line: 42, column: 2, scope: !6241)
!6251 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6252, file: !6252, line: 229, type: !6253, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6255)
!6252 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6253 = !DISubroutineType(types: !6254)
!6254 = !{null, !6220, !422, !109}
!6255 = !{!6256, !6257, !6258}
!6256 = !DILocalVariable(name: "ptr", arg: 1, scope: !6251, file: !6252, line: 229, type: !6220)
!6257 = !DILocalVariable(name: "size", arg: 2, scope: !6251, file: !6252, line: 229, type: !422)
!6258 = !DILocalVariable(name: "type", arg: 3, scope: !6251, file: !6252, line: 230, type: !109)
!6259 = !DILocation(line: 229, column: 60, scope: !6251)
!6260 = !DILocation(line: 229, column: 72, scope: !6251)
!6261 = !DILocation(line: 230, column: 15, scope: !6251)
!6262 = !DILocation(line: 230, column: 23, scope: !6251)
!6263 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6264, file: !6264, line: 17, type: !6203, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6265)
!6264 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6265 = !{!6266}
!6266 = !DILocalVariable(name: "v", arg: 1, scope: !6263, file: !6264, line: 17, type: !6205)
!6267 = !DILocation(line: 17, column: 61, scope: !6263)
!6268 = !DILocation(line: 23, column: 9, scope: !6263)
!6269 = !DILocation(line: 23, column: 2, scope: !6263)
!6270 = !DISubprogram(name: "__get_free_pages", scope: !6271, file: !6271, line: 289, type: !6272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6271 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!177, !175, !7}
!6274 = distinct !DISubprogram(name: "vcs_read_buf_uni", scope: !3, file: !3, line: 248, type: !6275, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!109, !190, !173, !7, !7, !221}
!6277 = !{!6278, !6279, !6280, !6281, !6282, !6283, !6284, !6285, !6286, !6287}
!6278 = !DILocalVariable(name: "vc", arg: 1, scope: !6274, file: !3, line: 248, type: !190)
!6279 = !DILocalVariable(name: "con_buf", arg: 2, scope: !6274, file: !3, line: 248, type: !173)
!6280 = !DILocalVariable(name: "pos", arg: 3, scope: !6274, file: !3, line: 249, type: !7)
!6281 = !DILocalVariable(name: "count", arg: 4, scope: !6274, file: !3, line: 249, type: !7)
!6282 = !DILocalVariable(name: "viewed", arg: 5, scope: !6274, file: !3, line: 249, type: !221)
!6283 = !DILocalVariable(name: "nr", scope: !6274, file: !3, line: 251, type: !7)
!6284 = !DILocalVariable(name: "row", scope: !6274, file: !3, line: 251, type: !7)
!6285 = !DILocalVariable(name: "col", scope: !6274, file: !3, line: 251, type: !7)
!6286 = !DILocalVariable(name: "maxcol", scope: !6274, file: !3, line: 251, type: !7)
!6287 = !DILocalVariable(name: "ret", scope: !6274, file: !3, line: 252, type: !109)
!6288 = !DILocation(line: 248, column: 45, scope: !6274)
!6289 = !DILocation(line: 248, column: 55, scope: !6274)
!6290 = !DILocation(line: 249, column: 16, scope: !6274)
!6291 = !DILocation(line: 249, column: 34, scope: !6274)
!6292 = !DILocation(line: 249, column: 46, scope: !6274)
!6293 = !DILocation(line: 251, column: 2, scope: !6274)
!6294 = !DILocation(line: 251, column: 15, scope: !6274)
!6295 = !DILocation(line: 251, column: 19, scope: !6274)
!6296 = !DILocation(line: 251, column: 24, scope: !6274)
!6297 = !DILocation(line: 251, column: 29, scope: !6274)
!6298 = !DILocation(line: 251, column: 38, scope: !6274)
!6299 = !DILocation(line: 251, column: 42, scope: !6274)
!6300 = !DILocation(line: 252, column: 2, scope: !6274)
!6301 = !DILocation(line: 252, column: 6, scope: !6274)
!6302 = !DILocation(line: 254, column: 24, scope: !6274)
!6303 = !DILocation(line: 254, column: 8, scope: !6274)
!6304 = !DILocation(line: 254, column: 6, scope: !6274)
!6305 = !DILocation(line: 255, column: 6, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 255, column: 6)
!6307 = !DILocation(line: 255, column: 6, scope: !6274)
!6308 = !DILocation(line: 256, column: 10, scope: !6306)
!6309 = !DILocation(line: 256, column: 3, scope: !6306)
!6310 = !DILocation(line: 258, column: 6, scope: !6274)
!6311 = !DILocation(line: 259, column: 8, scope: !6274)
!6312 = !DILocation(line: 259, column: 14, scope: !6274)
!6313 = !DILocation(line: 259, column: 12, scope: !6274)
!6314 = !DILocation(line: 259, column: 6, scope: !6274)
!6315 = !DILocation(line: 260, column: 8, scope: !6274)
!6316 = !DILocation(line: 260, column: 14, scope: !6274)
!6317 = !DILocation(line: 260, column: 12, scope: !6274)
!6318 = !DILocation(line: 260, column: 6, scope: !6274)
!6319 = !DILocation(line: 261, column: 7, scope: !6274)
!6320 = !DILocation(line: 261, column: 16, scope: !6274)
!6321 = !DILocation(line: 261, column: 14, scope: !6274)
!6322 = !DILocation(line: 261, column: 5, scope: !6274)
!6323 = !DILocation(line: 262, column: 2, scope: !6274)
!6324 = !DILocation(line: 263, column: 7, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 263, column: 7)
!6326 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 262, column: 5)
!6327 = !DILocation(line: 263, column: 12, scope: !6325)
!6328 = !DILocation(line: 263, column: 18, scope: !6325)
!6329 = !DILocation(line: 263, column: 10, scope: !6325)
!6330 = !DILocation(line: 263, column: 7, scope: !6326)
!6331 = !DILocation(line: 264, column: 9, scope: !6325)
!6332 = !DILocation(line: 264, column: 15, scope: !6325)
!6333 = !DILocation(line: 264, column: 7, scope: !6325)
!6334 = !DILocation(line: 264, column: 4, scope: !6325)
!6335 = !DILocation(line: 265, column: 23, scope: !6326)
!6336 = !DILocation(line: 265, column: 27, scope: !6326)
!6337 = !DILocation(line: 265, column: 36, scope: !6326)
!6338 = !DILocation(line: 265, column: 44, scope: !6326)
!6339 = !DILocation(line: 265, column: 49, scope: !6326)
!6340 = !DILocation(line: 265, column: 54, scope: !6326)
!6341 = !DILocation(line: 265, column: 3, scope: !6326)
!6342 = !DILocation(line: 266, column: 14, scope: !6326)
!6343 = !DILocation(line: 266, column: 17, scope: !6326)
!6344 = !DILocation(line: 266, column: 11, scope: !6326)
!6345 = !DILocation(line: 267, column: 12, scope: !6326)
!6346 = !DILocation(line: 267, column: 15, scope: !6326)
!6347 = !DILocation(line: 267, column: 9, scope: !6326)
!6348 = !DILocation(line: 268, column: 6, scope: !6326)
!6349 = !DILocation(line: 269, column: 7, scope: !6326)
!6350 = !DILocation(line: 270, column: 8, scope: !6326)
!6351 = !DILocation(line: 270, column: 6, scope: !6326)
!6352 = !DILocation(line: 271, column: 2, scope: !6326)
!6353 = !DILocation(line: 271, column: 11, scope: !6274)
!6354 = distinct !{!6354, !6323, !6355, !5387, !5388}
!6355 = !DILocation(line: 271, column: 16, scope: !6274)
!6356 = !DILocation(line: 273, column: 2, scope: !6274)
!6357 = !DILocation(line: 274, column: 1, scope: !6274)
!6358 = distinct !DISubprogram(name: "vcs_read_buf_noattr", scope: !3, file: !3, line: 276, type: !6359, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6361)
!6359 = !DISubroutineType(types: !6360)
!6360 = !{null, !5135, !173, !7, !7, !221}
!6361 = !{!6362, !6363, !6364, !6365, !6366, !6367, !6368, !6369}
!6362 = !DILocalVariable(name: "vc", arg: 1, scope: !6358, file: !3, line: 276, type: !5135)
!6363 = !DILocalVariable(name: "con_buf", arg: 2, scope: !6358, file: !3, line: 276, type: !173)
!6364 = !DILocalVariable(name: "pos", arg: 3, scope: !6358, file: !3, line: 277, type: !7)
!6365 = !DILocalVariable(name: "count", arg: 4, scope: !6358, file: !3, line: 277, type: !7)
!6366 = !DILocalVariable(name: "viewed", arg: 5, scope: !6358, file: !3, line: 277, type: !221)
!6367 = !DILocalVariable(name: "org", scope: !6358, file: !3, line: 279, type: !178)
!6368 = !DILocalVariable(name: "col", scope: !6358, file: !3, line: 280, type: !7)
!6369 = !DILocalVariable(name: "maxcol", scope: !6358, file: !3, line: 280, type: !7)
!6370 = !DILocation(line: 276, column: 55, scope: !6358)
!6371 = !DILocation(line: 276, column: 65, scope: !6358)
!6372 = !DILocation(line: 277, column: 16, scope: !6358)
!6373 = !DILocation(line: 277, column: 34, scope: !6358)
!6374 = !DILocation(line: 277, column: 46, scope: !6358)
!6375 = !DILocation(line: 279, column: 2, scope: !6358)
!6376 = !DILocation(line: 279, column: 7, scope: !6358)
!6377 = !DILocation(line: 280, column: 2, scope: !6358)
!6378 = !DILocation(line: 280, column: 15, scope: !6358)
!6379 = !DILocation(line: 280, column: 20, scope: !6358)
!6380 = !DILocation(line: 280, column: 29, scope: !6358)
!6381 = !DILocation(line: 280, column: 33, scope: !6358)
!6382 = !DILocation(line: 282, column: 19, scope: !6358)
!6383 = !DILocation(line: 282, column: 23, scope: !6358)
!6384 = !DILocation(line: 282, column: 28, scope: !6358)
!6385 = !DILocation(line: 282, column: 8, scope: !6358)
!6386 = !DILocation(line: 282, column: 6, scope: !6358)
!6387 = !DILocation(line: 283, column: 8, scope: !6358)
!6388 = !DILocation(line: 283, column: 14, scope: !6358)
!6389 = !DILocation(line: 283, column: 12, scope: !6358)
!6390 = !DILocation(line: 283, column: 6, scope: !6358)
!6391 = !DILocation(line: 284, column: 9, scope: !6358)
!6392 = !DILocation(line: 284, column: 18, scope: !6358)
!6393 = !DILocation(line: 284, column: 16, scope: !6358)
!6394 = !DILocation(line: 284, column: 6, scope: !6358)
!6395 = !DILocation(line: 286, column: 2, scope: !6358)
!6396 = !DILocation(line: 286, column: 14, scope: !6358)
!6397 = !DILocation(line: 286, column: 17, scope: !6358)
!6398 = !DILocation(line: 287, column: 31, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 286, column: 22)
!6400 = !DILocation(line: 287, column: 38, scope: !6399)
!6401 = !DILocation(line: 287, column: 17, scope: !6399)
!6402 = !DILocation(line: 287, column: 42, scope: !6399)
!6403 = !DILocation(line: 287, column: 16, scope: !6399)
!6404 = !DILocation(line: 287, column: 11, scope: !6399)
!6405 = !DILocation(line: 287, column: 14, scope: !6399)
!6406 = !DILocation(line: 288, column: 7, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 288, column: 7)
!6408 = !DILocation(line: 288, column: 16, scope: !6407)
!6409 = !DILocation(line: 288, column: 13, scope: !6407)
!6410 = !DILocation(line: 288, column: 7, scope: !6399)
!6411 = !DILocation(line: 289, column: 21, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6407, file: !3, line: 288, column: 24)
!6413 = !DILocation(line: 289, column: 25, scope: !6412)
!6414 = !DILocation(line: 289, column: 30, scope: !6412)
!6415 = !DILocation(line: 289, column: 10, scope: !6412)
!6416 = !DILocation(line: 289, column: 8, scope: !6412)
!6417 = !DILocation(line: 290, column: 8, scope: !6412)
!6418 = !DILocation(line: 291, column: 11, scope: !6412)
!6419 = !DILocation(line: 291, column: 8, scope: !6412)
!6420 = !DILocation(line: 292, column: 3, scope: !6412)
!6421 = distinct !{!6421, !6395, !6422, !5387, !5388}
!6422 = !DILocation(line: 293, column: 2, scope: !6358)
!6423 = !DILocation(line: 294, column: 1, scope: !6358)
!6424 = distinct !DISubprogram(name: "vcs_read_buf", scope: !3, file: !3, line: 296, type: !6425, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!7, !5135, !173, !7, !7, !221, !765}
!6427 = !{!6428, !6429, !6430, !6431, !6432, !6433, !6434, !6435, !6436, !6437, !6438, !6439, !6443, !6444, !6446, !6447, !6449}
!6428 = !DILocalVariable(name: "vc", arg: 1, scope: !6424, file: !3, line: 296, type: !5135)
!6429 = !DILocalVariable(name: "con_buf", arg: 2, scope: !6424, file: !3, line: 296, type: !173)
!6430 = !DILocalVariable(name: "pos", arg: 3, scope: !6424, file: !3, line: 297, type: !7)
!6431 = !DILocalVariable(name: "count", arg: 4, scope: !6424, file: !3, line: 297, type: !7)
!6432 = !DILocalVariable(name: "viewed", arg: 5, scope: !6424, file: !3, line: 297, type: !221)
!6433 = !DILocalVariable(name: "skip", arg: 6, scope: !6424, file: !3, line: 298, type: !765)
!6434 = !DILocalVariable(name: "org", scope: !6424, file: !3, line: 300, type: !178)
!6435 = !DILocalVariable(name: "con_buf16", scope: !6424, file: !3, line: 300, type: !178)
!6436 = !DILocalVariable(name: "col", scope: !6424, file: !3, line: 301, type: !7)
!6437 = !DILocalVariable(name: "maxcol", scope: !6424, file: !3, line: 301, type: !7)
!6438 = !DILocalVariable(name: "filled", scope: !6424, file: !3, line: 302, type: !7)
!6439 = !DILocalVariable(name: "__UNIQUE_ID___x289", scope: !6440, file: !3, line: 306, type: !3839)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 306, column: 16)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 304, column: 25)
!6442 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 304, column: 6)
!6443 = !DILocalVariable(name: "__UNIQUE_ID___y290", scope: !6440, file: !3, line: 306, type: !7)
!6444 = !DILocalVariable(name: "__UNIQUE_ID___x291", scope: !6445, file: !3, line: 307, type: !3839)
!6445 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 307, column: 16)
!6446 = !DILocalVariable(name: "__UNIQUE_ID___y292", scope: !6445, file: !3, line: 307, type: !7)
!6447 = !DILocalVariable(name: "__UNIQUE_ID___x293", scope: !6448, file: !3, line: 318, type: !7)
!6448 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 318, column: 12)
!6449 = !DILocalVariable(name: "__UNIQUE_ID___y294", scope: !6448, file: !3, line: 318, type: !7)
!6450 = !DILocation(line: 296, column: 56, scope: !6424)
!6451 = !DILocation(line: 296, column: 66, scope: !6424)
!6452 = !DILocation(line: 297, column: 16, scope: !6424)
!6453 = !DILocation(line: 297, column: 34, scope: !6424)
!6454 = !DILocation(line: 297, column: 46, scope: !6424)
!6455 = !DILocation(line: 298, column: 17, scope: !6424)
!6456 = !DILocation(line: 300, column: 2, scope: !6424)
!6457 = !DILocation(line: 300, column: 7, scope: !6424)
!6458 = !DILocation(line: 300, column: 13, scope: !6424)
!6459 = !DILocation(line: 301, column: 2, scope: !6424)
!6460 = !DILocation(line: 301, column: 15, scope: !6424)
!6461 = !DILocation(line: 301, column: 20, scope: !6424)
!6462 = !DILocation(line: 301, column: 29, scope: !6424)
!6463 = !DILocation(line: 301, column: 33, scope: !6424)
!6464 = !DILocation(line: 302, column: 2, scope: !6424)
!6465 = !DILocation(line: 302, column: 15, scope: !6424)
!6466 = !DILocation(line: 302, column: 24, scope: !6424)
!6467 = !DILocation(line: 304, column: 6, scope: !6442)
!6468 = !DILocation(line: 304, column: 10, scope: !6442)
!6469 = !DILocation(line: 304, column: 6, scope: !6424)
!6470 = !DILocation(line: 306, column: 16, scope: !6440)
!6471 = !DILocation(line: 306, column: 16, scope: !6441)
!6472 = !DILocation(line: 306, column: 3, scope: !6441)
!6473 = !DILocation(line: 306, column: 14, scope: !6441)
!6474 = !DILocation(line: 307, column: 16, scope: !6445)
!6475 = !DILocation(line: 307, column: 16, scope: !6441)
!6476 = !DILocation(line: 307, column: 3, scope: !6441)
!6477 = !DILocation(line: 307, column: 14, scope: !6441)
!6478 = !DILocation(line: 308, column: 13, scope: !6441)
!6479 = !DILocation(line: 308, column: 17, scope: !6441)
!6480 = !DILocation(line: 308, column: 25, scope: !6441)
!6481 = !DILocation(line: 308, column: 3, scope: !6441)
!6482 = !DILocation(line: 310, column: 12, scope: !6441)
!6483 = !DILocation(line: 310, column: 4, scope: !6441)
!6484 = !DILocation(line: 310, column: 9, scope: !6441)
!6485 = !DILocation(line: 311, column: 12, scope: !6441)
!6486 = !DILocation(line: 311, column: 9, scope: !6441)
!6487 = !DILocation(line: 312, column: 7, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 312, column: 7)
!6489 = !DILocation(line: 312, column: 13, scope: !6488)
!6490 = !DILocation(line: 312, column: 7, scope: !6441)
!6491 = !DILocation(line: 313, column: 10, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 312, column: 29)
!6493 = !DILocation(line: 314, column: 13, scope: !6492)
!6494 = !DILocation(line: 314, column: 21, scope: !6492)
!6495 = !DILocation(line: 314, column: 19, scope: !6492)
!6496 = !DILocation(line: 314, column: 11, scope: !6492)
!6497 = !DILocation(line: 315, column: 3, scope: !6492)
!6498 = !DILocation(line: 318, column: 12, scope: !6448)
!6499 = !DILocation(line: 318, column: 12, scope: !6441)
!6500 = !DILocation(line: 318, column: 9, scope: !6441)
!6501 = !DILocation(line: 319, column: 7, scope: !6441)
!6502 = !DILocation(line: 320, column: 11, scope: !6441)
!6503 = !DILocation(line: 322, column: 2, scope: !6441)
!6504 = !DILocation(line: 322, column: 13, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 322, column: 13)
!6506 = !DILocation(line: 322, column: 17, scope: !6505)
!6507 = !DILocation(line: 322, column: 13, scope: !6442)
!6508 = !DILocation(line: 327, column: 5, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 322, column: 22)
!6510 = !DILocation(line: 327, column: 10, scope: !6509)
!6511 = !DILocation(line: 328, column: 7, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 328, column: 7)
!6513 = !DILocation(line: 328, column: 13, scope: !6512)
!6514 = !DILocation(line: 328, column: 7, scope: !6509)
!6515 = !DILocation(line: 329, column: 9, scope: !6512)
!6516 = !DILocation(line: 329, column: 4, scope: !6512)
!6517 = !DILocation(line: 331, column: 10, scope: !6512)
!6518 = !DILocation(line: 332, column: 2, scope: !6509)
!6519 = !DILocation(line: 334, column: 7, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 334, column: 6)
!6521 = !DILocation(line: 334, column: 6, scope: !6424)
!6522 = !DILocation(line: 335, column: 10, scope: !6520)
!6523 = !DILocation(line: 335, column: 3, scope: !6520)
!6524 = !DILocation(line: 337, column: 6, scope: !6424)
!6525 = !DILocation(line: 338, column: 6, scope: !6424)
!6526 = !DILocation(line: 339, column: 8, scope: !6424)
!6527 = !DILocation(line: 339, column: 14, scope: !6424)
!6528 = !DILocation(line: 339, column: 12, scope: !6424)
!6529 = !DILocation(line: 339, column: 6, scope: !6424)
!6530 = !DILocation(line: 341, column: 19, scope: !6424)
!6531 = !DILocation(line: 341, column: 23, scope: !6424)
!6532 = !DILocation(line: 341, column: 28, scope: !6424)
!6533 = !DILocation(line: 341, column: 8, scope: !6424)
!6534 = !DILocation(line: 341, column: 6, scope: !6424)
!6535 = !DILocation(line: 342, column: 9, scope: !6424)
!6536 = !DILocation(line: 342, column: 18, scope: !6424)
!6537 = !DILocation(line: 342, column: 16, scope: !6424)
!6538 = !DILocation(line: 342, column: 6, scope: !6424)
!6539 = !DILocation(line: 348, column: 11, scope: !6424)
!6540 = !DILocation(line: 348, column: 17, scope: !6424)
!6541 = !DILocation(line: 348, column: 22, scope: !6424)
!6542 = !DILocation(line: 348, column: 8, scope: !6424)
!6543 = !DILocation(line: 349, column: 21, scope: !6424)
!6544 = !DILocation(line: 349, column: 12, scope: !6424)
!6545 = !DILocation(line: 351, column: 2, scope: !6424)
!6546 = !DILocation(line: 351, column: 9, scope: !6424)
!6547 = !DILocation(line: 352, column: 32, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 351, column: 16)
!6549 = !DILocation(line: 352, column: 39, scope: !6548)
!6550 = !DILocation(line: 352, column: 18, scope: !6548)
!6551 = !DILocation(line: 352, column: 13, scope: !6548)
!6552 = !DILocation(line: 352, column: 16, scope: !6548)
!6553 = !DILocation(line: 353, column: 8, scope: !6548)
!6554 = !DILocation(line: 354, column: 7, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6548, file: !3, line: 354, column: 7)
!6556 = !DILocation(line: 354, column: 16, scope: !6555)
!6557 = !DILocation(line: 354, column: 13, scope: !6555)
!6558 = !DILocation(line: 354, column: 7, scope: !6548)
!6559 = !DILocation(line: 355, column: 21, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 354, column: 24)
!6561 = !DILocation(line: 355, column: 25, scope: !6560)
!6562 = !DILocation(line: 355, column: 30, scope: !6560)
!6563 = !DILocation(line: 355, column: 10, scope: !6560)
!6564 = !DILocation(line: 355, column: 8, scope: !6560)
!6565 = !DILocation(line: 356, column: 8, scope: !6560)
!6566 = !DILocation(line: 357, column: 11, scope: !6560)
!6567 = !DILocation(line: 357, column: 8, scope: !6560)
!6568 = !DILocation(line: 358, column: 3, scope: !6560)
!6569 = distinct !{!6569, !6545, !6570, !5387, !5388}
!6570 = !DILocation(line: 359, column: 2, scope: !6424)
!6571 = !DILocation(line: 361, column: 9, scope: !6424)
!6572 = !DILocation(line: 361, column: 2, scope: !6424)
!6573 = !DILocation(line: 362, column: 1, scope: !6424)
!6574 = distinct !DISubprogram(name: "copy_to_user", scope: !6575, file: !6575, line: 188, type: !6576, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6578)
!6575 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6576 = !DISubroutineType(types: !6577)
!6577 = !{!177, !169, !1666, !177}
!6578 = !{!6579, !6580, !6581}
!6579 = !DILocalVariable(name: "to", arg: 1, scope: !6574, file: !6575, line: 188, type: !169)
!6580 = !DILocalVariable(name: "from", arg: 2, scope: !6574, file: !6575, line: 188, type: !1666)
!6581 = !DILocalVariable(name: "n", arg: 3, scope: !6574, file: !6575, line: 188, type: !177)
!6582 = !DILocation(line: 188, column: 27, scope: !6574)
!6583 = !DILocation(line: 188, column: 43, scope: !6574)
!6584 = !DILocation(line: 188, column: 63, scope: !6574)
!6585 = !DILocation(line: 190, column: 22, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6574, file: !6575, line: 190, column: 6)
!6587 = !DILocation(line: 190, column: 28, scope: !6586)
!6588 = !DILocation(line: 190, column: 6, scope: !6586)
!6589 = !DILocation(line: 190, column: 6, scope: !6574)
!6590 = !DILocation(line: 191, column: 21, scope: !6586)
!6591 = !DILocation(line: 191, column: 25, scope: !6586)
!6592 = !DILocation(line: 191, column: 31, scope: !6586)
!6593 = !DILocation(line: 191, column: 7, scope: !6586)
!6594 = !DILocation(line: 191, column: 5, scope: !6586)
!6595 = !DILocation(line: 191, column: 3, scope: !6586)
!6596 = !DILocation(line: 192, column: 9, scope: !6574)
!6597 = !DILocation(line: 192, column: 2, scope: !6574)
!6598 = !DISubprogram(name: "free_pages", scope: !6271, file: !6271, line: 303, type: !6599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6599 = !DISubroutineType(types: !6600)
!6600 = !{null, !177, !7}
!6601 = !DISubprogram(name: "vc_uniscr_check", scope: !6602, file: !6602, line: 50, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6602 = !DIFile(filename: "./include/linux/selection.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f24566a625a35aa34ca21fa0e23556ce")
!6603 = !DISubprogram(name: "vc_uniscr_copy_line", scope: !6602, file: !6602, line: 51, type: !6604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6604 = !DISubroutineType(types: !6605)
!6605 = !{null, !5135, !169, !221, !7, !7, !7}
!6606 = !DISubprogram(name: "screen_pos", scope: !6602, file: !6602, line: 36, type: !6607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6607 = !DISubroutineType(types: !6608)
!6608 = !{!5145, !5135, !109, !221}
!6609 = !DISubprogram(name: "vcs_scr_readw", scope: !6602, file: !6602, line: 46, type: !6610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{!179, !5135, !6612}
!6612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!6613 = !DISubprogram(name: "getconsxy", scope: !6602, file: !6602, line: 43, type: !6614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6614 = !DISubroutineType(types: !6615)
!6615 = !{null, !5135, !4941}
!6616 = distinct !DISubprogram(name: "check_copy_size", scope: !5284, file: !5284, line: 237, type: !6617, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6619)
!6617 = !DISubroutineType(types: !6618)
!6618 = !{!221, !1666, !422, !221}
!6619 = !{!6620, !6621, !6622, !6623, !6624, !6627}
!6620 = !DILocalVariable(name: "addr", arg: 1, scope: !6616, file: !5284, line: 237, type: !1666)
!6621 = !DILocalVariable(name: "bytes", arg: 2, scope: !6616, file: !5284, line: 237, type: !422)
!6622 = !DILocalVariable(name: "is_source", arg: 3, scope: !6616, file: !5284, line: 237, type: !221)
!6623 = !DILocalVariable(name: "sz", scope: !6616, file: !5284, line: 239, type: !109)
!6624 = !DILocalVariable(name: "__ret_warn_on", scope: !6625, file: !5284, line: 249, type: !109)
!6625 = distinct !DILexicalBlock(scope: !6626, file: !5284, line: 249, column: 6)
!6626 = distinct !DILexicalBlock(scope: !6616, file: !5284, line: 249, column: 6)
!6627 = !DILocalVariable(name: "__flags", scope: !6628, file: !5284, line: 249, type: !109)
!6628 = distinct !DILexicalBlock(scope: !6629, file: !5284, line: 249, column: 6)
!6629 = distinct !DILexicalBlock(scope: !6625, file: !5284, line: 249, column: 6)
!6630 = !DILocation(line: 237, column: 29, scope: !6616)
!6631 = !DILocation(line: 237, column: 42, scope: !6616)
!6632 = !DILocation(line: 237, column: 54, scope: !6616)
!6633 = !DILocation(line: 239, column: 2, scope: !6616)
!6634 = !DILocation(line: 239, column: 6, scope: !6616)
!6635 = !DILocation(line: 239, column: 33, scope: !6616)
!6636 = !DILocation(line: 239, column: 11, scope: !6616)
!6637 = !DILocation(line: 240, column: 6, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6616, file: !5284, line: 240, column: 6)
!6639 = !DILocation(line: 0, scope: !6638)
!6640 = !DILocation(line: 240, column: 6, scope: !6616)
!6641 = !DILocation(line: 241, column: 29, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6643, file: !5284, line: 241, column: 7)
!6643 = distinct !DILexicalBlock(scope: !6638, file: !5284, line: 240, column: 39)
!6644 = !DILocation(line: 241, column: 8, scope: !6642)
!6645 = !DILocation(line: 241, column: 7, scope: !6643)
!6646 = !DILocation(line: 242, column: 18, scope: !6642)
!6647 = !DILocation(line: 242, column: 22, scope: !6642)
!6648 = !DILocation(line: 242, column: 4, scope: !6642)
!6649 = !DILocation(line: 243, column: 12, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6642, file: !5284, line: 243, column: 12)
!6651 = !DILocation(line: 243, column: 12, scope: !6642)
!6652 = !DILocation(line: 244, column: 4, scope: !6650)
!6653 = !{i32 1006810}
!6654 = !DILocation(line: 246, column: 4, scope: !6650)
!6655 = !{i32 1006839}
!6656 = !DILocation(line: 247, column: 3, scope: !6643)
!6657 = !DILocation(line: 249, column: 6, scope: !6625)
!6658 = !DILocation(line: 249, column: 6, scope: !6629)
!6659 = !DILocation(line: 249, column: 6, scope: !6628)
!6660 = !DILocation(line: 249, column: 6, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6628, file: !5284, line: 249, column: 6)
!6662 = !DILocation(line: 249, column: 6, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6628, file: !5284, line: 249, column: 6)
!6664 = !{i64 2149650281, i64 2149650310, i64 2149650356, i64 2149650414, i64 2149650468, i64 2149650522, i64 2149650577, i64 2149650608, i64 2149650916, i64 2149650922, i64 2149650969, i64 2149650992, i64 2149651018}
!6665 = !DILocation(line: 249, column: 6, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6628, file: !5284, line: 249, column: 6)
!6667 = !DILocation(line: 249, column: 6, scope: !6626)
!6668 = !DILocation(line: 249, column: 6, scope: !6616)
!6669 = !DILocation(line: 250, column: 3, scope: !6626)
!6670 = !DILocation(line: 251, column: 20, scope: !6616)
!6671 = !DILocation(line: 251, column: 26, scope: !6616)
!6672 = !DILocation(line: 251, column: 33, scope: !6616)
!6673 = !DILocation(line: 251, column: 2, scope: !6616)
!6674 = !DILocation(line: 252, column: 2, scope: !6616)
!6675 = !DILocation(line: 253, column: 1, scope: !6616)
!6676 = !DISubprogram(name: "_copy_to_user", scope: !6575, file: !6575, line: 176, type: !6576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6677 = distinct !DISubprogram(name: "copy_overflow", scope: !5284, file: !5284, line: 230, type: !6678, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6680)
!6678 = !DISubroutineType(types: !6679)
!6679 = !{null, !109, !177}
!6680 = !{!6681, !6682}
!6681 = !DILocalVariable(name: "size", arg: 1, scope: !6677, file: !5284, line: 230, type: !109)
!6682 = !DILocalVariable(name: "count", arg: 2, scope: !6677, file: !5284, line: 230, type: !177)
!6683 = !DILocation(line: 230, column: 38, scope: !6677)
!6684 = !DILocation(line: 230, column: 58, scope: !6677)
!6685 = !DILocation(line: 233, column: 19, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6677, file: !5284, line: 232, column: 6)
!6687 = !DILocation(line: 233, column: 25, scope: !6686)
!6688 = !DILocation(line: 233, column: 3, scope: !6686)
!6689 = !DILocation(line: 234, column: 1, scope: !6677)
!6690 = !DISubprogram(name: "__bad_copy_from", scope: !5284, file: !5284, line: 224, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6691 = !DISubprogram(name: "__bad_copy_to", scope: !5284, file: !5284, line: 226, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6692 = distinct !DISubprogram(name: "check_object_size", scope: !5284, file: !5284, line: 218, type: !6693, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6695)
!6693 = !DISubroutineType(types: !6694)
!6694 = !{null, !1666, !177, !221}
!6695 = !{!6696, !6697, !6698}
!6696 = !DILocalVariable(name: "ptr", arg: 1, scope: !6692, file: !5284, line: 218, type: !1666)
!6697 = !DILocalVariable(name: "n", arg: 2, scope: !6692, file: !5284, line: 218, type: !177)
!6698 = !DILocalVariable(name: "to_user", arg: 3, scope: !6692, file: !5284, line: 219, type: !221)
!6699 = !DILocation(line: 218, column: 50, scope: !6692)
!6700 = !DILocation(line: 218, column: 69, scope: !6692)
!6701 = !DILocation(line: 219, column: 15, scope: !6692)
!6702 = !DILocation(line: 220, column: 3, scope: !6692)
!6703 = !DISubprogram(name: "__copy_overflow", scope: !5284, file: !5284, line: 228, type: !6678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6704 = distinct !DISubprogram(name: "copy_from_user", scope: !6575, file: !6575, line: 180, type: !6576, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6705)
!6705 = !{!6706, !6707, !6708}
!6706 = !DILocalVariable(name: "to", arg: 1, scope: !6704, file: !6575, line: 180, type: !169)
!6707 = !DILocalVariable(name: "from", arg: 2, scope: !6704, file: !6575, line: 180, type: !1666)
!6708 = !DILocalVariable(name: "n", arg: 3, scope: !6704, file: !6575, line: 180, type: !177)
!6709 = !DILocation(line: 180, column: 22, scope: !6704)
!6710 = !DILocation(line: 180, column: 45, scope: !6704)
!6711 = !DILocation(line: 180, column: 65, scope: !6704)
!6712 = !DILocation(line: 182, column: 22, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6704, file: !6575, line: 182, column: 6)
!6714 = !DILocation(line: 182, column: 26, scope: !6713)
!6715 = !DILocation(line: 182, column: 6, scope: !6713)
!6716 = !DILocation(line: 182, column: 6, scope: !6704)
!6717 = !DILocation(line: 183, column: 23, scope: !6713)
!6718 = !DILocation(line: 183, column: 27, scope: !6713)
!6719 = !DILocation(line: 183, column: 33, scope: !6713)
!6720 = !DILocation(line: 183, column: 7, scope: !6713)
!6721 = !DILocation(line: 183, column: 5, scope: !6713)
!6722 = !DILocation(line: 183, column: 3, scope: !6713)
!6723 = !DILocation(line: 184, column: 9, scope: !6704)
!6724 = !DILocation(line: 184, column: 2, scope: !6704)
!6725 = !DILocation(line: 518, column: 43, scope: !187)
!6726 = !DILocation(line: 518, column: 59, scope: !187)
!6727 = !DILocation(line: 519, column: 16, scope: !187)
!6728 = !DILocation(line: 519, column: 34, scope: !187)
!6729 = !DILocation(line: 519, column: 46, scope: !187)
!6730 = !DILocation(line: 519, column: 60, scope: !187)
!6731 = !DILocation(line: 521, column: 2, scope: !187)
!6732 = !DILocation(line: 521, column: 7, scope: !187)
!6733 = !DILocation(line: 522, column: 2, scope: !187)
!6734 = !DILocation(line: 522, column: 15, scope: !187)
!6735 = !DILocation(line: 522, column: 20, scope: !187)
!6736 = !DILocation(line: 522, column: 29, scope: !187)
!6737 = !DILocation(line: 522, column: 33, scope: !187)
!6738 = !DILocation(line: 523, column: 2, scope: !187)
!6739 = !DILocation(line: 523, column: 16, scope: !187)
!6740 = !DILocation(line: 526, column: 6, scope: !5223)
!6741 = !DILocation(line: 526, column: 10, scope: !5223)
!6742 = !DILocation(line: 526, column: 6, scope: !187)
!6743 = !DILocation(line: 527, column: 3, scope: !5222)
!6744 = !DILocation(line: 527, column: 8, scope: !5222)
!6745 = !DILocation(line: 529, column: 13, scope: !5222)
!6746 = !DILocation(line: 529, column: 17, scope: !5222)
!6747 = !DILocation(line: 529, column: 24, scope: !5222)
!6748 = !DILocation(line: 529, column: 3, scope: !5222)
!6749 = !DILocation(line: 530, column: 3, scope: !5222)
!6750 = !DILocation(line: 530, column: 10, scope: !5222)
!6751 = !DILocation(line: 530, column: 14, scope: !5222)
!6752 = !DILocation(line: 530, column: 28, scope: !5222)
!6753 = !DILocation(line: 530, column: 31, scope: !5222)
!6754 = !DILocation(line: 530, column: 37, scope: !5222)
!6755 = !DILocation(line: 0, scope: !5222)
!6756 = !DILocation(line: 531, column: 9, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 530, column: 42)
!6758 = !DILocation(line: 532, column: 28, scope: !6757)
!6759 = !DILocation(line: 532, column: 20, scope: !6757)
!6760 = !DILocation(line: 532, column: 14, scope: !6757)
!6761 = !DILocation(line: 532, column: 4, scope: !6757)
!6762 = !DILocation(line: 532, column: 18, scope: !6757)
!6763 = distinct !{!6763, !6749, !6764, !5387, !5388}
!6764 = !DILocation(line: 533, column: 3, scope: !5222)
!6765 = !DILocation(line: 534, column: 8, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 534, column: 7)
!6767 = !DILocation(line: 534, column: 7, scope: !5222)
!6768 = !DILocation(line: 535, column: 14, scope: !6766)
!6769 = !DILocation(line: 535, column: 18, scope: !6766)
!6770 = !DILocation(line: 535, column: 25, scope: !6766)
!6771 = !DILocation(line: 535, column: 4, scope: !6766)
!6772 = !DILocation(line: 536, column: 2, scope: !5223)
!6773 = !DILocation(line: 536, column: 2, scope: !5222)
!6774 = !DILocation(line: 538, column: 7, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !187, file: !3, line: 538, column: 6)
!6776 = !DILocation(line: 538, column: 6, scope: !187)
!6777 = !DILocation(line: 539, column: 3, scope: !6775)
!6778 = !DILocation(line: 541, column: 6, scope: !187)
!6779 = !DILocation(line: 542, column: 9, scope: !187)
!6780 = !DILocation(line: 542, column: 12, scope: !187)
!6781 = !DILocation(line: 542, column: 18, scope: !187)
!6782 = !DILocation(line: 542, column: 16, scope: !187)
!6783 = !DILocation(line: 542, column: 6, scope: !187)
!6784 = !DILocation(line: 544, column: 27, scope: !187)
!6785 = !DILocation(line: 544, column: 31, scope: !187)
!6786 = !DILocation(line: 544, column: 34, scope: !187)
!6787 = !DILocation(line: 544, column: 38, scope: !187)
!6788 = !DILocation(line: 544, column: 16, scope: !187)
!6789 = !DILocation(line: 544, column: 14, scope: !187)
!6790 = !DILocation(line: 544, column: 3, scope: !187)
!6791 = !DILocation(line: 544, column: 8, scope: !187)
!6792 = !DILocation(line: 547, column: 6, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !187, file: !3, line: 547, column: 6)
!6794 = !DILocation(line: 547, column: 10, scope: !6793)
!6795 = !DILocation(line: 547, column: 6, scope: !187)
!6796 = !DILocation(line: 548, column: 8, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6793, file: !3, line: 547, column: 15)
!6798 = !DILocation(line: 549, column: 15, scope: !6797)
!6799 = !DILocation(line: 549, column: 7, scope: !6797)
!6800 = !DILocation(line: 549, column: 5, scope: !6797)
!6801 = !DILocation(line: 550, column: 18, scope: !6797)
!6802 = !DILocation(line: 550, column: 38, scope: !6797)
!6803 = !DILocation(line: 550, column: 55, scope: !6797)
!6804 = !DILocation(line: 550, column: 59, scope: !6797)
!6805 = !DILocation(line: 550, column: 41, scope: !6797)
!6806 = !DILocation(line: 550, column: 22, scope: !6797)
!6807 = !DILocation(line: 551, column: 5, scope: !6797)
!6808 = !DILocation(line: 550, column: 3, scope: !6797)
!6809 = !DILocation(line: 552, column: 6, scope: !6797)
!6810 = !DILocation(line: 553, column: 6, scope: !6797)
!6811 = !DILocation(line: 554, column: 7, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6797, file: !3, line: 554, column: 7)
!6813 = !DILocation(line: 554, column: 16, scope: !6812)
!6814 = !DILocation(line: 554, column: 13, scope: !6812)
!6815 = !DILocation(line: 554, column: 7, scope: !6797)
!6816 = !DILocation(line: 555, column: 21, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6812, file: !3, line: 554, column: 24)
!6818 = !DILocation(line: 555, column: 25, scope: !6817)
!6819 = !DILocation(line: 555, column: 28, scope: !6817)
!6820 = !DILocation(line: 555, column: 32, scope: !6817)
!6821 = !DILocation(line: 555, column: 10, scope: !6817)
!6822 = !DILocation(line: 555, column: 8, scope: !6817)
!6823 = !DILocation(line: 556, column: 8, scope: !6817)
!6824 = !DILocation(line: 557, column: 3, scope: !6817)
!6825 = !DILocation(line: 558, column: 2, scope: !6797)
!6826 = !DILocation(line: 560, column: 6, scope: !187)
!6827 = !DILocation(line: 561, column: 9, scope: !187)
!6828 = !DILocation(line: 561, column: 18, scope: !187)
!6829 = !DILocation(line: 561, column: 16, scope: !187)
!6830 = !DILocation(line: 561, column: 6, scope: !187)
!6831 = !DILocation(line: 564, column: 2, scope: !187)
!6832 = !DILocation(line: 564, column: 9, scope: !187)
!6833 = !DILocation(line: 564, column: 15, scope: !187)
!6834 = !DILocation(line: 565, column: 3, scope: !5226)
!6835 = !DILocation(line: 565, column: 18, scope: !5226)
!6836 = !DILocation(line: 567, column: 7, scope: !5228)
!6837 = !DILocation(line: 567, column: 7, scope: !5226)
!6838 = !DILocation(line: 567, column: 5, scope: !5226)
!6839 = !DILocation(line: 568, column: 18, scope: !5226)
!6840 = !DILocation(line: 568, column: 22, scope: !5226)
!6841 = !DILocation(line: 568, column: 28, scope: !5226)
!6842 = !DILocation(line: 568, column: 3, scope: !5226)
!6843 = !DILocation(line: 569, column: 11, scope: !5226)
!6844 = !DILocation(line: 570, column: 9, scope: !5226)
!6845 = !DILocation(line: 571, column: 7, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 571, column: 7)
!6847 = !DILocation(line: 571, column: 16, scope: !6846)
!6848 = !DILocation(line: 571, column: 13, scope: !6846)
!6849 = !DILocation(line: 571, column: 7, scope: !5226)
!6850 = !DILocation(line: 572, column: 21, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6846, file: !3, line: 571, column: 24)
!6852 = !DILocation(line: 572, column: 25, scope: !6851)
!6853 = !DILocation(line: 572, column: 30, scope: !6851)
!6854 = !DILocation(line: 572, column: 10, scope: !6851)
!6855 = !DILocation(line: 572, column: 8, scope: !6851)
!6856 = !DILocation(line: 573, column: 8, scope: !6851)
!6857 = !DILocation(line: 574, column: 11, scope: !6851)
!6858 = !DILocation(line: 574, column: 8, scope: !6851)
!6859 = !DILocation(line: 575, column: 3, scope: !6851)
!6860 = !DILocation(line: 576, column: 2, scope: !187)
!6861 = distinct !{!6861, !6831, !6860, !5387, !5388}
!6862 = !DILocation(line: 578, column: 7, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !187, file: !3, line: 578, column: 6)
!6864 = !DILocation(line: 578, column: 6, scope: !187)
!6865 = !DILocation(line: 579, column: 10, scope: !6863)
!6866 = !DILocation(line: 579, column: 3, scope: !6863)
!6867 = !DILocation(line: 582, column: 14, scope: !187)
!6868 = !DILocation(line: 582, column: 6, scope: !187)
!6869 = !DILocation(line: 582, column: 4, scope: !187)
!6870 = !DILocation(line: 583, column: 17, scope: !187)
!6871 = !DILocation(line: 583, column: 51, scope: !187)
!6872 = !DILocation(line: 583, column: 55, scope: !187)
!6873 = !DILocation(line: 583, column: 37, scope: !187)
!6874 = !DILocation(line: 583, column: 60, scope: !187)
!6875 = !DILocation(line: 583, column: 66, scope: !187)
!6876 = !DILocation(line: 583, column: 21, scope: !187)
!6877 = !DILocation(line: 584, column: 5, scope: !187)
!6878 = !DILocation(line: 583, column: 2, scope: !187)
!6879 = !DILocation(line: 586, column: 9, scope: !187)
!6880 = !DILocation(line: 586, column: 2, scope: !187)
!6881 = !DILocation(line: 587, column: 1, scope: !187)
!6882 = distinct !DISubprogram(name: "vcs_write_buf_noattr", scope: !3, file: !3, line: 478, type: !188, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6883 = !{!6884, !6885, !6886, !6887, !6888, !6889, !6890, !6891, !6892, !6893}
!6884 = !DILocalVariable(name: "vc", arg: 1, scope: !6882, file: !3, line: 478, type: !190)
!6885 = !DILocalVariable(name: "con_buf", arg: 2, scope: !6882, file: !3, line: 478, type: !329)
!6886 = !DILocalVariable(name: "pos", arg: 3, scope: !6882, file: !3, line: 479, type: !7)
!6887 = !DILocalVariable(name: "count", arg: 4, scope: !6882, file: !3, line: 479, type: !7)
!6888 = !DILocalVariable(name: "viewed", arg: 5, scope: !6882, file: !3, line: 479, type: !221)
!6889 = !DILocalVariable(name: "org0", arg: 6, scope: !6882, file: !3, line: 479, type: !5209)
!6890 = !DILocalVariable(name: "org", scope: !6882, file: !3, line: 481, type: !178)
!6891 = !DILocalVariable(name: "col", scope: !6882, file: !3, line: 482, type: !7)
!6892 = !DILocalVariable(name: "maxcol", scope: !6882, file: !3, line: 482, type: !7)
!6893 = !DILocalVariable(name: "c", scope: !6894, file: !3, line: 489, type: !227)
!6894 = distinct !DILexicalBlock(scope: !6882, file: !3, line: 488, column: 20)
!6895 = !DILocation(line: 478, column: 50, scope: !6882)
!6896 = !DILocation(line: 478, column: 66, scope: !6882)
!6897 = !DILocation(line: 479, column: 16, scope: !6882)
!6898 = !DILocation(line: 479, column: 34, scope: !6882)
!6899 = !DILocation(line: 479, column: 46, scope: !6882)
!6900 = !DILocation(line: 479, column: 60, scope: !6882)
!6901 = !DILocation(line: 481, column: 2, scope: !6882)
!6902 = !DILocation(line: 481, column: 7, scope: !6882)
!6903 = !DILocation(line: 482, column: 2, scope: !6882)
!6904 = !DILocation(line: 482, column: 15, scope: !6882)
!6905 = !DILocation(line: 482, column: 20, scope: !6882)
!6906 = !DILocation(line: 482, column: 29, scope: !6882)
!6907 = !DILocation(line: 482, column: 33, scope: !6882)
!6908 = !DILocation(line: 484, column: 27, scope: !6882)
!6909 = !DILocation(line: 484, column: 31, scope: !6882)
!6910 = !DILocation(line: 484, column: 36, scope: !6882)
!6911 = !DILocation(line: 484, column: 16, scope: !6882)
!6912 = !DILocation(line: 484, column: 14, scope: !6882)
!6913 = !DILocation(line: 484, column: 3, scope: !6882)
!6914 = !DILocation(line: 484, column: 8, scope: !6882)
!6915 = !DILocation(line: 485, column: 8, scope: !6882)
!6916 = !DILocation(line: 485, column: 14, scope: !6882)
!6917 = !DILocation(line: 485, column: 12, scope: !6882)
!6918 = !DILocation(line: 485, column: 6, scope: !6882)
!6919 = !DILocation(line: 486, column: 9, scope: !6882)
!6920 = !DILocation(line: 486, column: 18, scope: !6882)
!6921 = !DILocation(line: 486, column: 16, scope: !6882)
!6922 = !DILocation(line: 486, column: 6, scope: !6882)
!6923 = !DILocation(line: 488, column: 2, scope: !6882)
!6924 = !DILocation(line: 488, column: 9, scope: !6882)
!6925 = !DILocation(line: 488, column: 15, scope: !6882)
!6926 = !DILocation(line: 489, column: 3, scope: !6894)
!6927 = !DILocation(line: 489, column: 17, scope: !6894)
!6928 = !DILocation(line: 489, column: 29, scope: !6894)
!6929 = !DILocation(line: 489, column: 21, scope: !6894)
!6930 = !DILocation(line: 491, column: 8, scope: !6894)
!6931 = !DILocation(line: 492, column: 18, scope: !6894)
!6932 = !DILocation(line: 493, column: 26, scope: !6894)
!6933 = !DILocation(line: 493, column: 30, scope: !6894)
!6934 = !DILocation(line: 493, column: 12, scope: !6894)
!6935 = !DILocation(line: 493, column: 35, scope: !6894)
!6936 = !DILocation(line: 493, column: 47, scope: !6894)
!6937 = !DILocation(line: 493, column: 45, scope: !6894)
!6938 = !DILocation(line: 493, column: 11, scope: !6894)
!6939 = !DILocation(line: 493, column: 50, scope: !6894)
!6940 = !DILocation(line: 492, column: 3, scope: !6894)
!6941 = !DILocation(line: 494, column: 6, scope: !6894)
!6942 = !DILocation(line: 495, column: 7, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6894, file: !3, line: 495, column: 7)
!6944 = !DILocation(line: 495, column: 16, scope: !6943)
!6945 = !DILocation(line: 495, column: 13, scope: !6943)
!6946 = !DILocation(line: 495, column: 7, scope: !6894)
!6947 = !DILocation(line: 496, column: 21, scope: !6948)
!6948 = distinct !DILexicalBlock(scope: !6943, file: !3, line: 495, column: 24)
!6949 = !DILocation(line: 496, column: 25, scope: !6948)
!6950 = !DILocation(line: 496, column: 30, scope: !6948)
!6951 = !DILocation(line: 496, column: 10, scope: !6948)
!6952 = !DILocation(line: 496, column: 8, scope: !6948)
!6953 = !DILocation(line: 497, column: 8, scope: !6948)
!6954 = !DILocation(line: 498, column: 11, scope: !6948)
!6955 = !DILocation(line: 498, column: 8, scope: !6948)
!6956 = !DILocation(line: 499, column: 3, scope: !6948)
!6957 = !DILocation(line: 500, column: 2, scope: !6882)
!6958 = distinct !{!6958, !6923, !6957, !5387, !5388}
!6959 = !DILocation(line: 502, column: 9, scope: !6882)
!6960 = !DILocation(line: 503, column: 1, scope: !6882)
!6961 = !DILocation(line: 502, column: 2, scope: !6882)
!6962 = !DISubprogram(name: "update_region", scope: !6963, file: !6963, line: 40, type: !6964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6963 = !DIFile(filename: "./include/linux/vt_kern.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83e57bc81c61ff5fee07ce676ec7836f")
!6964 = !DISubroutineType(types: !6965)
!6965 = !{null, !190, !177, !109}
!6966 = !DISubprogram(name: "vcs_scr_updated", scope: !6602, file: !6602, line: 48, type: !5063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6967 = !DISubprogram(name: "_copy_from_user", scope: !6575, file: !6575, line: 158, type: !6576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6968 = !DISubprogram(name: "putconsxy", scope: !6602, file: !6602, line: 44, type: !6969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6969 = !DISubroutineType(types: !6970)
!6970 = !{null, !190, !6971}
!6971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4941)
!6972 = !DISubprogram(name: "vcs_scr_writew", scope: !6602, file: !6602, line: 47, type: !6973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6973 = !DISubroutineType(types: !6974)
!6974 = !{null, !190, !179, !178}
!6975 = distinct !DISubprogram(name: "vc_compile_le16", scope: !3, file: !3, line: 509, type: !6976, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6978)
!6976 = !DISubroutineType(types: !6977)
!6977 = !{!179, !225, !225}
!6978 = !{!6979, !6980}
!6979 = !DILocalVariable(name: "hi", arg: 1, scope: !6975, file: !3, line: 509, type: !225)
!6980 = !DILocalVariable(name: "lo", arg: 2, scope: !6975, file: !3, line: 509, type: !225)
!6981 = !DILocation(line: 509, column: 38, scope: !6975)
!6982 = !DILocation(line: 509, column: 45, scope: !6975)
!6983 = !DILocation(line: 514, column: 10, scope: !6975)
!6984 = !DILocation(line: 514, column: 13, scope: !6975)
!6985 = !DILocation(line: 514, column: 22, scope: !6975)
!6986 = !DILocation(line: 514, column: 20, scope: !6975)
!6987 = !DILocation(line: 514, column: 9, scope: !6975)
!6988 = !DILocation(line: 514, column: 2, scope: !6975)
!6989 = !DILocation(line: 126, column: 32, scope: !5290)
!6990 = !DILocation(line: 128, column: 2, scope: !5290)
!6991 = !DILocation(line: 128, column: 24, scope: !5290)
!6992 = !DILocation(line: 128, column: 31, scope: !5290)
!6993 = !DILocation(line: 128, column: 37, scope: !5290)
!6994 = !DILocation(line: 128, column: 52, scope: !5290)
!6995 = !DILocation(line: 130, column: 6, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 130, column: 6)
!6997 = !DILocation(line: 130, column: 6, scope: !5290)
!6998 = !DILocation(line: 131, column: 10, scope: !6996)
!6999 = !DILocation(line: 131, column: 3, scope: !6996)
!7000 = !DILocation(line: 133, column: 9, scope: !5290)
!7001 = !DILocation(line: 133, column: 7, scope: !5290)
!7002 = !DILocation(line: 134, column: 7, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 134, column: 6)
!7004 = !DILocation(line: 134, column: 6, scope: !5290)
!7005 = !DILocation(line: 135, column: 3, scope: !7003)
!7006 = !DILocation(line: 136, column: 19, scope: !5290)
!7007 = !DILocation(line: 136, column: 2, scope: !5290)
!7008 = !DILocation(line: 136, column: 8, scope: !5290)
!7009 = !DILocation(line: 136, column: 17, scope: !5290)
!7010 = !DILocation(line: 137, column: 2, scope: !5290)
!7011 = !DILocation(line: 137, column: 2, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 137, column: 2)
!7013 = !DILocation(line: 138, column: 2, scope: !5290)
!7014 = !DILocation(line: 138, column: 8, scope: !5290)
!7015 = !DILocation(line: 138, column: 17, scope: !5290)
!7016 = !DILocation(line: 138, column: 31, scope: !5290)
!7017 = !DILocation(line: 146, column: 2, scope: !5290)
!7018 = !DILocation(line: 146, column: 8, scope: !5290)
!7019 = !DILocation(line: 146, column: 14, scope: !5290)
!7020 = !DILocation(line: 148, column: 28, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 148, column: 6)
!7022 = !DILocation(line: 148, column: 34, scope: !7021)
!7023 = !DILocation(line: 148, column: 6, scope: !7021)
!7024 = !DILocation(line: 148, column: 44, scope: !7021)
!7025 = !DILocation(line: 148, column: 6, scope: !5290)
!7026 = !DILocation(line: 149, column: 9, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 148, column: 50)
!7028 = !DILocation(line: 149, column: 3, scope: !7027)
!7029 = !DILocation(line: 150, column: 3, scope: !7027)
!7030 = !DILocation(line: 161, column: 13, scope: !5290)
!7031 = !DILocation(line: 161, column: 19, scope: !5290)
!7032 = !DILocation(line: 161, column: 2, scope: !5290)
!7033 = !DILocation(line: 162, column: 7, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 162, column: 6)
!7035 = !DILocation(line: 162, column: 13, scope: !7034)
!7036 = !DILocation(line: 162, column: 6, scope: !5290)
!7037 = !DILocation(line: 163, column: 24, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !7034, file: !3, line: 162, column: 27)
!7039 = !DILocation(line: 163, column: 3, scope: !7038)
!7040 = !DILocation(line: 163, column: 9, scope: !7038)
!7041 = !DILocation(line: 163, column: 22, scope: !7038)
!7042 = !DILocation(line: 164, column: 2, scope: !7038)
!7043 = !DILocation(line: 166, column: 10, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7034, file: !3, line: 164, column: 9)
!7045 = !DILocation(line: 166, column: 8, scope: !7044)
!7046 = !DILocation(line: 167, column: 10, scope: !7044)
!7047 = !DILocation(line: 167, column: 16, scope: !7044)
!7048 = !DILocation(line: 167, column: 8, scope: !7044)
!7049 = !DILocation(line: 169, column: 15, scope: !5290)
!7050 = !DILocation(line: 169, column: 21, scope: !5290)
!7051 = !DILocation(line: 169, column: 2, scope: !5290)
!7052 = !DILocation(line: 170, column: 6, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 170, column: 6)
!7054 = !DILocation(line: 170, column: 6, scope: !5290)
!7055 = !DILocation(line: 171, column: 22, scope: !7053)
!7056 = !DILocation(line: 171, column: 3, scope: !7053)
!7057 = !DILocation(line: 173, column: 9, scope: !5290)
!7058 = !DILocation(line: 173, column: 2, scope: !5290)
!7059 = !DILocation(line: 174, column: 1, scope: !5290)
!7060 = distinct !DISubprogram(name: "poll_wait", scope: !1520, file: !1520, line: 42, type: !7061, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7063)
!7061 = !DISubroutineType(types: !7062)
!7062 = !{null, !1455, !1527, !5932}
!7063 = !{!7064, !7065, !7066}
!7064 = !DILocalVariable(name: "filp", arg: 1, scope: !7060, file: !1520, line: 42, type: !1455)
!7065 = !DILocalVariable(name: "wait_address", arg: 2, scope: !7060, file: !1520, line: 42, type: !1527)
!7066 = !DILocalVariable(name: "p", arg: 3, scope: !7060, file: !1520, line: 42, type: !5932)
!7067 = !DILocation(line: 42, column: 44, scope: !7060)
!7068 = !DILocation(line: 42, column: 70, scope: !7060)
!7069 = !DILocation(line: 42, column: 96, scope: !7060)
!7070 = !DILocation(line: 44, column: 6, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !7060, file: !1520, line: 44, column: 6)
!7072 = !DILocation(line: 44, column: 8, scope: !7071)
!7073 = !DILocation(line: 44, column: 11, scope: !7071)
!7074 = !DILocation(line: 44, column: 14, scope: !7071)
!7075 = !DILocation(line: 44, column: 21, scope: !7071)
!7076 = !DILocation(line: 44, column: 24, scope: !7071)
!7077 = !DILocation(line: 44, column: 6, scope: !7060)
!7078 = !DILocation(line: 45, column: 3, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !7071, file: !1520, line: 44, column: 38)
!7080 = !DILocation(line: 45, column: 6, scope: !7079)
!7081 = !DILocation(line: 45, column: 13, scope: !7079)
!7082 = !DILocation(line: 45, column: 19, scope: !7079)
!7083 = !DILocation(line: 45, column: 33, scope: !7079)
!7084 = !DILocation(line: 52, column: 3, scope: !7079)
!7085 = !DILocation(line: 52, column: 3, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7079, file: !1520, line: 52, column: 3)
!7087 = !DILocation(line: 52, column: 3, scope: !7088)
!7088 = distinct !DILexicalBlock(scope: !7086, file: !1520, line: 52, column: 3)
!7089 = !{i64 2154824877}
!7090 = !DILocation(line: 53, column: 2, scope: !7079)
!7091 = !DILocation(line: 54, column: 1, scope: !7060)
!7092 = distinct !DISubprogram(name: "kzalloc", scope: !159, file: !159, line: 719, type: !7093, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7095)
!7093 = !DISubroutineType(types: !7094)
!7094 = !{!169, !422, !175}
!7095 = !{!7096, !7097}
!7096 = !DILocalVariable(name: "size", arg: 1, scope: !7092, file: !159, line: 719, type: !422)
!7097 = !DILocalVariable(name: "flags", arg: 2, scope: !7092, file: !159, line: 719, type: !175)
!7098 = !DILocation(line: 719, column: 52, scope: !7092)
!7099 = !DILocation(line: 719, column: 64, scope: !7092)
!7100 = !DILocation(line: 721, column: 17, scope: !7092)
!7101 = !DILocation(line: 721, column: 23, scope: !7092)
!7102 = !DILocation(line: 721, column: 29, scope: !7092)
!7103 = !DILocation(line: 721, column: 9, scope: !7092)
!7104 = !DILocation(line: 721, column: 2, scope: !7092)
!7105 = !DISubprogram(name: "__init_waitqueue_head", scope: !1211, file: !1211, line: 64, type: !7106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7106 = !DISubroutineType(types: !7107)
!7107 = !{null, !7108, !329, !7109}
!7108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!7109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!7110 = distinct !DISubprogram(name: "vcs_notifier", scope: !3, file: !3, line: 85, type: !5241, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7111)
!7111 = !{!7112, !7113, !7114, !7115, !7121, !7122, !7123, !7125, !7126}
!7112 = !DILocalVariable(name: "nb", arg: 1, scope: !7110, file: !3, line: 85, type: !5243)
!7113 = !DILocalVariable(name: "code", arg: 2, scope: !7110, file: !3, line: 85, type: !177)
!7114 = !DILocalVariable(name: "_param", arg: 3, scope: !7110, file: !3, line: 85, type: !169)
!7115 = !DILocalVariable(name: "param", scope: !7110, file: !3, line: 87, type: !7116)
!7116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7117, size: 64)
!7117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_notifier_param", file: !6963, line: 138, size: 128, elements: !7118)
!7118 = !{!7119, !7120}
!7119 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !7117, file: !6963, line: 139, baseType: !190, size: 64)
!7120 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !7117, file: !6963, line: 140, baseType: !7, size: 32, offset: 64)
!7121 = !DILocalVariable(name: "vc", scope: !7110, file: !3, line: 88, type: !190)
!7122 = !DILocalVariable(name: "poll", scope: !7110, file: !3, line: 89, type: !5231)
!7123 = !DILocalVariable(name: "__mptr", scope: !7124, file: !3, line: 90, type: !169)
!7124 = distinct !DILexicalBlock(scope: !7110, file: !3, line: 90, column: 3)
!7125 = !DILocalVariable(name: "currcons", scope: !7110, file: !3, line: 91, type: !109)
!7126 = !DILocalVariable(name: "fa_band", scope: !7110, file: !3, line: 92, type: !109)
!7127 = !DILocation(line: 85, column: 37, scope: !7110)
!7128 = !DILocation(line: 85, column: 55, scope: !7110)
!7129 = !DILocation(line: 85, column: 67, scope: !7110)
!7130 = !DILocation(line: 87, column: 2, scope: !7110)
!7131 = !DILocation(line: 87, column: 28, scope: !7110)
!7132 = !DILocation(line: 87, column: 36, scope: !7110)
!7133 = !DILocation(line: 88, column: 2, scope: !7110)
!7134 = !DILocation(line: 88, column: 18, scope: !7110)
!7135 = !DILocation(line: 88, column: 23, scope: !7110)
!7136 = !DILocation(line: 88, column: 30, scope: !7110)
!7137 = !DILocation(line: 89, column: 2, scope: !7110)
!7138 = !DILocation(line: 89, column: 24, scope: !7110)
!7139 = !DILocation(line: 90, column: 3, scope: !7124)
!7140 = !DILocation(line: 90, column: 3, scope: !7110)
!7141 = !DILocation(line: 91, column: 2, scope: !7110)
!7142 = !DILocation(line: 91, column: 6, scope: !7110)
!7143 = !DILocation(line: 91, column: 17, scope: !7110)
!7144 = !DILocation(line: 91, column: 23, scope: !7110)
!7145 = !DILocation(line: 92, column: 2, scope: !7110)
!7146 = !DILocation(line: 92, column: 6, scope: !7110)
!7147 = !DILocation(line: 94, column: 10, scope: !7110)
!7148 = !DILocation(line: 94, column: 2, scope: !7110)
!7149 = !DILocation(line: 96, column: 11, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7110, file: !3, line: 94, column: 16)
!7151 = !DILocation(line: 97, column: 3, scope: !7150)
!7152 = !DILocation(line: 99, column: 11, scope: !7150)
!7153 = !DILocation(line: 100, column: 3, scope: !7150)
!7154 = !DILocation(line: 102, column: 3, scope: !7150)
!7155 = !DILocation(line: 105, column: 6, scope: !7156)
!7156 = distinct !DILexicalBlock(scope: !7110, file: !3, line: 105, column: 6)
!7157 = !DILocation(line: 105, column: 15, scope: !7156)
!7158 = !DILocation(line: 105, column: 6, scope: !7110)
!7159 = !DILocation(line: 106, column: 14, scope: !7156)
!7160 = !DILocation(line: 106, column: 12, scope: !7156)
!7161 = !DILocation(line: 106, column: 3, scope: !7156)
!7162 = !DILocation(line: 108, column: 11, scope: !7156)
!7163 = !DILocation(line: 109, column: 6, scope: !7164)
!7164 = distinct !DILexicalBlock(scope: !7110, file: !3, line: 109, column: 6)
!7165 = !DILocation(line: 109, column: 18, scope: !7164)
!7166 = !DILocation(line: 109, column: 22, scope: !7164)
!7167 = !DILocation(line: 109, column: 15, scope: !7164)
!7168 = !DILocation(line: 109, column: 6, scope: !7110)
!7169 = !DILocation(line: 110, column: 3, scope: !7164)
!7170 = !DILocation(line: 112, column: 16, scope: !7110)
!7171 = !DILocation(line: 112, column: 2, scope: !7110)
!7172 = !DILocation(line: 112, column: 8, scope: !7110)
!7173 = !DILocation(line: 112, column: 14, scope: !7110)
!7174 = !DILocation(line: 113, column: 2, scope: !7110)
!7175 = !DILocation(line: 114, column: 15, scope: !7110)
!7176 = !DILocation(line: 114, column: 21, scope: !7110)
!7177 = !DILocation(line: 114, column: 36, scope: !7110)
!7178 = !DILocation(line: 114, column: 2, scope: !7110)
!7179 = !DILocation(line: 115, column: 2, scope: !7110)
!7180 = !DILocation(line: 116, column: 1, scope: !7110)
!7181 = !DISubprogram(name: "register_vt_notifier", scope: !6963, file: !6963, line: 143, type: !7182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7182 = !DISubroutineType(types: !7183)
!7183 = !{!109, !5243}
!7184 = !DISubprogram(name: "kfree", scope: !159, file: !159, line: 227, type: !7185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7185 = !DISubroutineType(types: !7186)
!7186 = !{null, !1666}
!7187 = distinct !DISubprogram(name: "spin_lock", scope: !7188, file: !7188, line: 349, type: !7189, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7191)
!7188 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7189 = !DISubroutineType(types: !7190)
!7190 = !{null, !1931}
!7191 = !{!7192}
!7192 = !DILocalVariable(name: "lock", arg: 1, scope: !7187, file: !7188, line: 349, type: !1931)
!7193 = !DILocation(line: 349, column: 51, scope: !7187)
!7194 = !DILocation(line: 351, column: 2, scope: !7187)
!7195 = !DILocation(line: 352, column: 1, scope: !7187)
!7196 = distinct !DISubprogram(name: "spin_unlock", scope: !7188, file: !7188, line: 389, type: !7189, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7197)
!7197 = !{!7198}
!7198 = !DILocalVariable(name: "lock", arg: 1, scope: !7196, file: !7188, line: 389, type: !1931)
!7199 = !DILocation(line: 389, column: 53, scope: !7196)
!7200 = !DILocation(line: 391, column: 2, scope: !7196)
!7201 = !DILocation(line: 392, column: 1, scope: !7196)
!7202 = distinct !DISubprogram(name: "vcs_poll_data_free", scope: !3, file: !3, line: 119, type: !7203, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7205)
!7203 = !DISubroutineType(types: !7204)
!7204 = !{null, !5231}
!7205 = !{!7206}
!7206 = !DILocalVariable(name: "poll", arg: 1, scope: !7202, file: !3, line: 119, type: !5231)
!7207 = !DILocation(line: 119, column: 42, scope: !7202)
!7208 = !DILocation(line: 121, column: 26, scope: !7202)
!7209 = !DILocation(line: 121, column: 32, scope: !7202)
!7210 = !DILocation(line: 121, column: 2, scope: !7202)
!7211 = !DILocation(line: 122, column: 8, scope: !7202)
!7212 = !DILocation(line: 122, column: 2, scope: !7202)
!7213 = !DILocation(line: 123, column: 1, scope: !7202)
!7214 = distinct !DISubprogram(name: "kmalloc", scope: !159, file: !159, line: 591, type: !7093, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7215)
!7215 = !{!7216, !7217, !7218}
!7216 = !DILocalVariable(name: "size", arg: 1, scope: !7214, file: !159, line: 591, type: !422)
!7217 = !DILocalVariable(name: "flags", arg: 2, scope: !7214, file: !159, line: 591, type: !175)
!7218 = !DILocalVariable(name: "index", scope: !7219, file: !159, line: 594, type: !7)
!7219 = distinct !DILexicalBlock(scope: !7220, file: !159, line: 593, column: 42)
!7220 = distinct !DILexicalBlock(scope: !7214, file: !159, line: 593, column: 6)
!7221 = !DILocation(line: 591, column: 61, scope: !7214)
!7222 = !DILocation(line: 591, column: 73, scope: !7214)
!7223 = !DILocation(line: 593, column: 27, scope: !7220)
!7224 = !DILocation(line: 593, column: 6, scope: !7220)
!7225 = !DILocation(line: 593, column: 33, scope: !7220)
!7226 = !DILocation(line: 593, column: 36, scope: !7220)
!7227 = !DILocation(line: 593, column: 6, scope: !7214)
!7228 = !DILocation(line: 594, column: 3, scope: !7219)
!7229 = !DILocation(line: 594, column: 16, scope: !7219)
!7230 = !DILocation(line: 596, column: 7, scope: !7231)
!7231 = distinct !DILexicalBlock(scope: !7219, file: !159, line: 596, column: 7)
!7232 = !DILocation(line: 596, column: 12, scope: !7231)
!7233 = !DILocation(line: 596, column: 7, scope: !7219)
!7234 = !DILocation(line: 597, column: 25, scope: !7231)
!7235 = !DILocation(line: 597, column: 31, scope: !7231)
!7236 = !DILocation(line: 597, column: 11, scope: !7231)
!7237 = !DILocation(line: 597, column: 4, scope: !7231)
!7238 = !DILocation(line: 599, column: 11, scope: !7219)
!7239 = !DILocation(line: 599, column: 9, scope: !7219)
!7240 = !DILocation(line: 601, column: 33, scope: !7219)
!7241 = !DILocation(line: 601, column: 40, scope: !7219)
!7242 = !DILocation(line: 601, column: 20, scope: !7219)
!7243 = !DILocation(line: 601, column: 5, scope: !7219)
!7244 = !DILocation(line: 601, column: 51, scope: !7219)
!7245 = !DILocation(line: 602, column: 5, scope: !7219)
!7246 = !DILocation(line: 602, column: 12, scope: !7219)
!7247 = !DILocation(line: 600, column: 10, scope: !7219)
!7248 = !DILocation(line: 600, column: 3, scope: !7219)
!7249 = !DILocation(line: 603, column: 2, scope: !7220)
!7250 = !DILocation(line: 604, column: 19, scope: !7214)
!7251 = !DILocation(line: 604, column: 25, scope: !7214)
!7252 = !DILocation(line: 604, column: 9, scope: !7214)
!7253 = !DILocation(line: 604, column: 2, scope: !7214)
!7254 = !DILocation(line: 605, column: 1, scope: !7214)
!7255 = !DISubprogram(name: "kmalloc_large", scope: !159, file: !159, line: 531, type: !7093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7256 = distinct !DISubprogram(name: "__kmalloc_index", scope: !159, file: !159, line: 444, type: !7257, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7259)
!7257 = !DISubroutineType(types: !7258)
!7258 = !{!7, !422, !221}
!7259 = !{!7260, !7261}
!7260 = !DILocalVariable(name: "size", arg: 1, scope: !7256, file: !159, line: 444, type: !422)
!7261 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7256, file: !159, line: 445, type: !221)
!7262 = !DILocation(line: 444, column: 60, scope: !7256)
!7263 = !DILocation(line: 445, column: 16, scope: !7256)
!7264 = !DILocation(line: 447, column: 7, scope: !7265)
!7265 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 447, column: 6)
!7266 = !DILocation(line: 447, column: 6, scope: !7256)
!7267 = !DILocation(line: 448, column: 3, scope: !7265)
!7268 = !DILocation(line: 450, column: 6, scope: !7269)
!7269 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 450, column: 6)
!7270 = !DILocation(line: 450, column: 11, scope: !7269)
!7271 = !DILocation(line: 450, column: 6, scope: !7256)
!7272 = !DILocation(line: 451, column: 3, scope: !7269)
!7273 = !DILocation(line: 453, column: 32, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 453, column: 6)
!7275 = !DILocation(line: 453, column: 37, scope: !7274)
!7276 = !DILocation(line: 453, column: 42, scope: !7274)
!7277 = !DILocation(line: 453, column: 45, scope: !7274)
!7278 = !DILocation(line: 453, column: 50, scope: !7274)
!7279 = !DILocation(line: 453, column: 6, scope: !7256)
!7280 = !DILocation(line: 454, column: 3, scope: !7274)
!7281 = !DILocation(line: 455, column: 32, scope: !7282)
!7282 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 455, column: 6)
!7283 = !DILocation(line: 455, column: 37, scope: !7282)
!7284 = !DILocation(line: 455, column: 43, scope: !7282)
!7285 = !DILocation(line: 455, column: 46, scope: !7282)
!7286 = !DILocation(line: 455, column: 51, scope: !7282)
!7287 = !DILocation(line: 455, column: 6, scope: !7256)
!7288 = !DILocation(line: 456, column: 3, scope: !7282)
!7289 = !DILocation(line: 457, column: 6, scope: !7290)
!7290 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 457, column: 6)
!7291 = !DILocation(line: 457, column: 11, scope: !7290)
!7292 = !DILocation(line: 457, column: 6, scope: !7256)
!7293 = !DILocation(line: 457, column: 26, scope: !7290)
!7294 = !DILocation(line: 458, column: 6, scope: !7295)
!7295 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 458, column: 6)
!7296 = !DILocation(line: 458, column: 11, scope: !7295)
!7297 = !DILocation(line: 458, column: 6, scope: !7256)
!7298 = !DILocation(line: 458, column: 26, scope: !7295)
!7299 = !DILocation(line: 459, column: 6, scope: !7300)
!7300 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 459, column: 6)
!7301 = !DILocation(line: 459, column: 11, scope: !7300)
!7302 = !DILocation(line: 459, column: 6, scope: !7256)
!7303 = !DILocation(line: 459, column: 26, scope: !7300)
!7304 = !DILocation(line: 460, column: 6, scope: !7305)
!7305 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 460, column: 6)
!7306 = !DILocation(line: 460, column: 11, scope: !7305)
!7307 = !DILocation(line: 460, column: 6, scope: !7256)
!7308 = !DILocation(line: 460, column: 26, scope: !7305)
!7309 = !DILocation(line: 461, column: 6, scope: !7310)
!7310 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 461, column: 6)
!7311 = !DILocation(line: 461, column: 11, scope: !7310)
!7312 = !DILocation(line: 461, column: 6, scope: !7256)
!7313 = !DILocation(line: 461, column: 26, scope: !7310)
!7314 = !DILocation(line: 462, column: 6, scope: !7315)
!7315 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 462, column: 6)
!7316 = !DILocation(line: 462, column: 11, scope: !7315)
!7317 = !DILocation(line: 462, column: 6, scope: !7256)
!7318 = !DILocation(line: 462, column: 26, scope: !7315)
!7319 = !DILocation(line: 463, column: 6, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 463, column: 6)
!7321 = !DILocation(line: 463, column: 11, scope: !7320)
!7322 = !DILocation(line: 463, column: 6, scope: !7256)
!7323 = !DILocation(line: 463, column: 26, scope: !7320)
!7324 = !DILocation(line: 464, column: 6, scope: !7325)
!7325 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 464, column: 6)
!7326 = !DILocation(line: 464, column: 11, scope: !7325)
!7327 = !DILocation(line: 464, column: 6, scope: !7256)
!7328 = !DILocation(line: 464, column: 26, scope: !7325)
!7329 = !DILocation(line: 465, column: 6, scope: !7330)
!7330 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 465, column: 6)
!7331 = !DILocation(line: 465, column: 11, scope: !7330)
!7332 = !DILocation(line: 465, column: 6, scope: !7256)
!7333 = !DILocation(line: 465, column: 26, scope: !7330)
!7334 = !DILocation(line: 466, column: 6, scope: !7335)
!7335 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 466, column: 6)
!7336 = !DILocation(line: 466, column: 11, scope: !7335)
!7337 = !DILocation(line: 466, column: 6, scope: !7256)
!7338 = !DILocation(line: 466, column: 26, scope: !7335)
!7339 = !DILocation(line: 467, column: 6, scope: !7340)
!7340 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 467, column: 6)
!7341 = !DILocation(line: 467, column: 11, scope: !7340)
!7342 = !DILocation(line: 467, column: 6, scope: !7256)
!7343 = !DILocation(line: 467, column: 26, scope: !7340)
!7344 = !DILocation(line: 468, column: 6, scope: !7345)
!7345 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 468, column: 6)
!7346 = !DILocation(line: 468, column: 11, scope: !7345)
!7347 = !DILocation(line: 468, column: 6, scope: !7256)
!7348 = !DILocation(line: 468, column: 26, scope: !7345)
!7349 = !DILocation(line: 469, column: 6, scope: !7350)
!7350 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 469, column: 6)
!7351 = !DILocation(line: 469, column: 11, scope: !7350)
!7352 = !DILocation(line: 469, column: 6, scope: !7256)
!7353 = !DILocation(line: 469, column: 26, scope: !7350)
!7354 = !DILocation(line: 470, column: 6, scope: !7355)
!7355 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 470, column: 6)
!7356 = !DILocation(line: 470, column: 11, scope: !7355)
!7357 = !DILocation(line: 470, column: 6, scope: !7256)
!7358 = !DILocation(line: 470, column: 26, scope: !7355)
!7359 = !DILocation(line: 471, column: 6, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 471, column: 6)
!7361 = !DILocation(line: 471, column: 11, scope: !7360)
!7362 = !DILocation(line: 471, column: 6, scope: !7256)
!7363 = !DILocation(line: 471, column: 26, scope: !7360)
!7364 = !DILocation(line: 472, column: 6, scope: !7365)
!7365 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 472, column: 6)
!7366 = !DILocation(line: 472, column: 11, scope: !7365)
!7367 = !DILocation(line: 472, column: 6, scope: !7256)
!7368 = !DILocation(line: 472, column: 26, scope: !7365)
!7369 = !DILocation(line: 473, column: 6, scope: !7370)
!7370 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 473, column: 6)
!7371 = !DILocation(line: 473, column: 11, scope: !7370)
!7372 = !DILocation(line: 473, column: 6, scope: !7256)
!7373 = !DILocation(line: 473, column: 26, scope: !7370)
!7374 = !DILocation(line: 474, column: 6, scope: !7375)
!7375 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 474, column: 6)
!7376 = !DILocation(line: 474, column: 11, scope: !7375)
!7377 = !DILocation(line: 474, column: 6, scope: !7256)
!7378 = !DILocation(line: 474, column: 27, scope: !7375)
!7379 = !DILocation(line: 475, column: 6, scope: !7380)
!7380 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 475, column: 6)
!7381 = !DILocation(line: 475, column: 11, scope: !7380)
!7382 = !DILocation(line: 475, column: 6, scope: !7256)
!7383 = !DILocation(line: 475, column: 32, scope: !7380)
!7384 = !DILocation(line: 477, column: 50, scope: !7385)
!7385 = distinct !DILexicalBlock(scope: !7256, file: !159, line: 477, column: 6)
!7386 = !DILocation(line: 477, column: 6, scope: !7256)
!7387 = !DILocation(line: 478, column: 3, scope: !7385)
!7388 = !DILocation(line: 478, column: 3, scope: !7389)
!7389 = distinct !DILexicalBlock(scope: !7390, file: !159, line: 478, column: 3)
!7390 = distinct !DILexicalBlock(scope: !7385, file: !159, line: 478, column: 3)
!7391 = !{i32 -2141684111}
!7392 = !DILocation(line: 478, column: 3, scope: !7390)
!7393 = !DILocation(line: 480, column: 3, scope: !7385)
!7394 = !DILocation(line: 480, column: 3, scope: !7395)
!7395 = distinct !DILexicalBlock(scope: !7385, file: !159, line: 480, column: 3)
!7396 = !DILocation(line: 480, column: 3, scope: !7397)
!7397 = distinct !DILexicalBlock(scope: !7395, file: !159, line: 480, column: 3)
!7398 = !DILocation(line: 480, column: 3, scope: !7399)
!7399 = distinct !DILexicalBlock(scope: !7395, file: !159, line: 480, column: 3)
!7400 = !{i64 2153283388, i64 2153283417, i64 2153283463, i64 2153283521, i64 2153283575, i64 2153283629, i64 2153283684, i64 2153283715}
!7401 = !DILocation(line: 483, column: 2, scope: !7256)
!7402 = !DILocation(line: 484, column: 1, scope: !7256)
!7403 = !DISubprogram(name: "kmalloc_trace", scope: !159, file: !159, line: 525, type: !7404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7404 = !DISubroutineType(types: !7405)
!7405 = !{!169, !7406, !175, !422}
!7406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7407, size: 64)
!7407 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7408, line: 325, flags: DIFlagFwdDecl)
!7408 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!7409 = distinct !DISubprogram(name: "kmalloc_type", scope: !159, file: !159, line: 401, type: !7410, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7412)
!7410 = !DISubroutineType(types: !7411)
!7411 = !{!158, !175, !177}
!7412 = !{!7413, !7414}
!7413 = !DILocalVariable(name: "flags", arg: 1, scope: !7409, file: !159, line: 401, type: !175)
!7414 = !DILocalVariable(name: "caller", arg: 2, scope: !7409, file: !159, line: 401, type: !177)
!7415 = !DILocation(line: 401, column: 67, scope: !7409)
!7416 = !DILocation(line: 401, column: 88, scope: !7409)
!7417 = !DILocation(line: 407, column: 6, scope: !7418)
!7418 = distinct !DILexicalBlock(scope: !7409, file: !159, line: 407, column: 6)
!7419 = !DILocation(line: 407, column: 6, scope: !7409)
!7420 = !DILocation(line: 413, column: 3, scope: !7418)
!7421 = !DILocation(line: 423, column: 38, scope: !7422)
!7422 = distinct !DILexicalBlock(scope: !7409, file: !159, line: 423, column: 6)
!7423 = !DILocation(line: 423, column: 44, scope: !7422)
!7424 = !DILocation(line: 423, column: 6, scope: !7409)
!7425 = !DILocation(line: 424, column: 3, scope: !7422)
!7426 = !DILocation(line: 426, column: 3, scope: !7427)
!7427 = distinct !DILexicalBlock(scope: !7409, file: !159, line: 425, column: 6)
!7428 = !DILocation(line: 429, column: 1, scope: !7409)
!7429 = !DISubprogram(name: "__kmalloc", scope: !159, file: !159, line: 488, type: !7093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7430 = !DISubprogram(name: "__compiletime_assert_245", scope: !159, file: !159, line: 478, type: !1045, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7431 = !DISubprogram(name: "__wake_up", scope: !1211, file: !1211, line: 212, type: !7432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7432 = !DISubroutineType(types: !7433)
!7433 = !{!109, !7108, !7, !109, !169}
!7434 = !DISubprogram(name: "kill_fasync", scope: !14, file: !14, line: 1102, type: !7435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7435 = !DISubroutineType(types: !7436)
!7436 = !{null, !7437, !109, !109}
!7437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!7438 = !DISubprogram(name: "_raw_spin_lock", scope: !7439, file: !7439, line: 22, type: !7440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7439 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7440 = !DISubroutineType(types: !7441)
!7441 = !{null, !7442}
!7442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!7443 = !DISubprogram(name: "_raw_spin_unlock", scope: !7439, file: !7439, line: 39, type: !7440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7444 = !DISubprogram(name: "unregister_vt_notifier", scope: !6963, file: !6963, line: 144, type: !7182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7445 = !DISubprogram(name: "vc_cons_allocated", scope: !6963, file: !6963, line: 27, type: !7446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7446 = !DISubroutineType(types: !7447)
!7447 = !{!109, !7}
!7448 = !DISubprogram(name: "fasync_helper", scope: !14, file: !14, line: 1095, type: !7449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7449 = !DISubroutineType(types: !7450)
!7450 = !{!109, !109, !1455, !109, !7437}
