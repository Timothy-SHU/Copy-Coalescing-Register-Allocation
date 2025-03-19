; ModuleID = 'kernel/irq/proc.c'
source_filename = "kernel/irq/proc.c"
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
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, ptr, ptr, [32 x i8] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !0
@register_irq_proc.register_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_irq_proc.register_lock, i64 16), ptr getelementptr (i8, ptr @register_irq_proc.register_lock, i64 16) } }, align 8, !dbg !7
@root_irq_dir = internal global ptr null, align 8, !dbg !4240
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !4130
@.str.2 = private unnamed_addr constant [13 x i8] c"smp_affinity\00", align 1, !dbg !4132
@irq_affinity_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @irq_affinity_proc_open, ptr @seq_read, ptr null, ptr @irq_affinity_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4244
@.str.3 = private unnamed_addr constant [14 x i8] c"affinity_hint\00", align 1, !dbg !4137
@.str.4 = private unnamed_addr constant [18 x i8] c"smp_affinity_list\00", align 1, !dbg !4142
@irq_affinity_list_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @irq_affinity_list_proc_open, ptr @seq_read, ptr null, ptr @irq_affinity_list_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4267
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1, !dbg !4147
@.str.6 = private unnamed_addr constant [19 x i8] c"effective_affinity\00", align 1, !dbg !4152
@.str.7 = private unnamed_addr constant [24 x i8] c"effective_affinity_list\00", align 1, !dbg !4157
@.str.8 = private unnamed_addr constant [9 x i8] c"spurious\00", align 1, !dbg !4162
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !4167
@.str.10 = private unnamed_addr constant [4 x i8] c"irq\00", align 1, !dbg !4169
@nr_irqs = external dso_local global i32, align 4
@show_interrupts.prec = internal global i32 0, align 4, !dbg !4172
@.str.11 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1, !dbg !4212
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4214
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"CPU%-8d\00", align 1, !dbg !4217
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"%*d: \00", align 1, !dbg !4219
@.str.15 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1, !dbg !4221
@.str.16 = private unnamed_addr constant [5 x i8] c" %8s\00", align 1, !dbg !4223
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !4225
@.str.18 = private unnamed_addr constant [5 x i8] c"None\00", align 1, !dbg !4228
@.str.19 = private unnamed_addr constant [6 x i8] c" %*lu\00", align 1, !dbg !4230
@.str.20 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1, !dbg !4232
@.str.21 = private unnamed_addr constant [6 x i8] c"-%-8s\00", align 1, !dbg !4234
@.str.22 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1, !dbg !4236
@.str.23 = private unnamed_addr constant [5 x i8] c", %s\00", align 1, !dbg !4238
@no_irq_affinity = hidden global i32 0, align 4, !dbg !4242
@.str.24 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1, !dbg !4262
@nr_cpu_ids = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1, !dbg !4265
@.str.26 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !4269
@.str.27 = private unnamed_addr constant [44 x i8] c"count %u\0Aunhandled %u\0Alast_unhandled %u ms\0A\00", align 1, !dbg !4271
@.str.28 = private unnamed_addr constant [25 x i8] c"irq/default_smp_affinity\00", align 1, !dbg !4276
@default_affinity_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @default_affinity_open, ptr @seq_read, ptr null, ptr @default_affinity_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4281
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 8
@chained_action = external dso_local global %struct.irqaction, align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @register_handler_proc(i32 noundef %irq, ptr noundef %action) #0 align 16 !dbg !4301 {
entry:
  %irq.addr = alloca i32, align 4
  %action.addr = alloca ptr, align 8
  %name = alloca [128 x i8], align 16
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4305, metadata !DIExpression()), !dbg !4312
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !4306, metadata !DIExpression()), !dbg !4313
  call void @llvm.lifetime.start.p0(i64 128, ptr %name) #10, !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4307, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4311, metadata !DIExpression()), !dbg !4317
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4318
  %call = call ptr @irq_to_desc(i32 noundef %0) #11, !dbg !4319
  store ptr %call, ptr %desc, align 8, !dbg !4317
  %1 = load ptr, ptr %desc, align 8, !dbg !4320
  %dir = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 28, !dbg !4322
  %2 = load ptr, ptr %dir, align 8, !dbg !4322
  %tobool = icmp ne ptr %2, null, !dbg !4320
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4323

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %action.addr, align 8, !dbg !4324
  %dir1 = getelementptr inbounds %struct.irqaction, ptr %3, i32 0, i32 12, !dbg !4325
  %4 = load ptr, ptr %dir1, align 8, !dbg !4325
  %tobool2 = icmp ne ptr %4, null, !dbg !4324
  br i1 %tobool2, label %if.then, label %lor.lhs.false3, !dbg !4326

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %action.addr, align 8, !dbg !4327
  %name4 = getelementptr inbounds %struct.irqaction, ptr %5, i32 0, i32 11, !dbg !4328
  %6 = load ptr, ptr %name4, align 16, !dbg !4328
  %tobool5 = icmp ne ptr %6, null, !dbg !4327
  br i1 %tobool5, label %lor.lhs.false6, label %if.then, !dbg !4329

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %7 = load i32, ptr %irq.addr, align 4, !dbg !4330
  %8 = load ptr, ptr %action.addr, align 8, !dbg !4331
  %call7 = call i32 @name_unique(i32 noundef %7, ptr noundef %8) #11, !dbg !4332
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4332
  br i1 %tobool8, label %if.end, label %if.then, !dbg !4333

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4334

if.end:                                           ; preds = %lor.lhs.false6
  %arraydecay = getelementptr inbounds [128 x i8], ptr %name, i64 0, i64 0, !dbg !4335
  %9 = load ptr, ptr %action.addr, align 8, !dbg !4336
  %name9 = getelementptr inbounds %struct.irqaction, ptr %9, i32 0, i32 11, !dbg !4337
  %10 = load ptr, ptr %name9, align 16, !dbg !4337
  %call10 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 128, ptr noundef @.str, ptr noundef %10) #11, !dbg !4338
  %arraydecay11 = getelementptr inbounds [128 x i8], ptr %name, i64 0, i64 0, !dbg !4339
  %11 = load ptr, ptr %desc, align 8, !dbg !4340
  %dir12 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 28, !dbg !4341
  %12 = load ptr, ptr %dir12, align 8, !dbg !4341
  %call13 = call ptr @proc_mkdir(ptr noundef %arraydecay11, ptr noundef %12) #11, !dbg !4342
  %13 = load ptr, ptr %action.addr, align 8, !dbg !4343
  %dir14 = getelementptr inbounds %struct.irqaction, ptr %13, i32 0, i32 12, !dbg !4344
  store ptr %call13, ptr %dir14, align 8, !dbg !4345
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4346
  br label %cleanup, !dbg !4346

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4346
  call void @llvm.lifetime.end.p0(i64 128, ptr %name) #10, !dbg !4346
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4346

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4347 dso_local ptr @irq_to_desc(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @name_unique(i32 noundef %irq, ptr noundef %new_action) #0 align 16 !dbg !4351 {
entry:
  %irq.addr = alloca i32, align 4
  %new_action.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %action = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4355, metadata !DIExpression()), !dbg !4369
  store ptr %new_action, ptr %new_action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_action.addr, metadata !4356, metadata !DIExpression()), !dbg !4370
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4371
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4357, metadata !DIExpression()), !dbg !4372
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4373
  %call = call ptr @irq_to_desc(i32 noundef %0) #11, !dbg !4374
  store ptr %call, ptr %desc, align 8, !dbg !4372
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #10, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %action, metadata !4358, metadata !DIExpression()), !dbg !4376
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !4377
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4359, metadata !DIExpression()), !dbg !4378
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !4379
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4360, metadata !DIExpression()), !dbg !4380
  store i32 1, ptr %ret, align 4, !dbg !4380
  br label %do.body, !dbg !4381

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4361, metadata !DIExpression()), !dbg !4382
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4364, metadata !DIExpression()), !dbg !4382
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4382
  %conv = zext i1 %cmp to i32, !dbg !4382
  store i32 1, ptr %tmp, align 4, !dbg !4382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !4383
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !4383
  %1 = load i32, ptr %tmp, align 4, !dbg !4382
  %2 = load ptr, ptr %desc, align 8, !dbg !4383
  %lock = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 15, !dbg !4383
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #11, !dbg !4383
  store i64 %call1, ptr %flags, align 8, !dbg !4383
  br label %do.cond, !dbg !4383

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4383

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %desc, align 8, !dbg !4384
  %action2 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4, !dbg !4384
  %4 = load ptr, ptr %action2, align 16, !dbg !4384
  store ptr %4, ptr %action, align 8, !dbg !4384
  br label %for.cond, !dbg !4384

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load ptr, ptr %action, align 8, !dbg !4386
  %tobool = icmp ne ptr %5, null, !dbg !4384
  br i1 %tobool, label %for.body, label %for.end, !dbg !4384

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %action, align 8, !dbg !4388
  %7 = load ptr, ptr %new_action.addr, align 8, !dbg !4391
  %cmp3 = icmp ne ptr %6, %7, !dbg !4392
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !4393

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %action, align 8, !dbg !4394
  %name = getelementptr inbounds %struct.irqaction, ptr %8, i32 0, i32 11, !dbg !4395
  %9 = load ptr, ptr %name, align 16, !dbg !4395
  %tobool5 = icmp ne ptr %9, null, !dbg !4394
  br i1 %tobool5, label %land.lhs.true6, label %if.end, !dbg !4396

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %new_action.addr, align 8, !dbg !4397
  %name7 = getelementptr inbounds %struct.irqaction, ptr %10, i32 0, i32 11, !dbg !4398
  %11 = load ptr, ptr %name7, align 16, !dbg !4398
  %12 = load ptr, ptr %action, align 8, !dbg !4399
  %name8 = getelementptr inbounds %struct.irqaction, ptr %12, i32 0, i32 11, !dbg !4400
  %13 = load ptr, ptr %name8, align 16, !dbg !4400
  %call9 = call i32 @strcmp(ptr noundef %11, ptr noundef %13) #11, !dbg !4401
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4401
  br i1 %tobool10, label %if.end, label %if.then, !dbg !4402

if.then:                                          ; preds = %land.lhs.true6
  store i32 0, ptr %ret, align 4, !dbg !4403
  br label %for.end, !dbg !4405

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4406

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %action, align 8, !dbg !4386
  %next = getelementptr inbounds %struct.irqaction, ptr %14, i32 0, i32 3, !dbg !4386
  %15 = load ptr, ptr %next, align 8, !dbg !4386
  store ptr %15, ptr %action, align 8, !dbg !4386
  br label %for.cond, !dbg !4386, !llvm.loop !4407

for.end:                                          ; preds = %if.then, %for.cond
  br label %do.body11, !dbg !4411

do.body11:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #10, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !4365, metadata !DIExpression()), !dbg !4412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #10, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !4368, metadata !DIExpression()), !dbg !4412
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !4412
  %conv15 = zext i1 %cmp14 to i32, !dbg !4412
  store i32 1, ptr %tmp16, align 4, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #10, !dbg !4413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #10, !dbg !4413
  %16 = load i32, ptr %tmp16, align 4, !dbg !4412
  %17 = load ptr, ptr %desc, align 8, !dbg !4413
  %lock17 = getelementptr inbounds %struct.irq_desc, ptr %17, i32 0, i32 15, !dbg !4413
  %18 = load i64, ptr %flags, align 8, !dbg !4413
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock17, i64 noundef %18) #11, !dbg !4413
  br label %do.cond18, !dbg !4413

do.cond18:                                        ; preds = %do.body11
  br label %do.end19, !dbg !4413

do.end19:                                         ; preds = %do.cond18
  %19 = load i32, ptr %ret, align 4, !dbg !4414
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #10, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4415
  ret i32 %19, !dbg !4416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4417 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4421 dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @register_irq_proc(i32 noundef %irq, ptr noundef %desc) #0 align 16 !dbg !9 {
entry:
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %irqp = alloca ptr, align 8
  %name = alloca [10 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4284, metadata !DIExpression()), !dbg !4424
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4285, metadata !DIExpression()), !dbg !4425
  call void @llvm.lifetime.start.p0(i64 8, ptr %irqp) #10, !dbg !4426
  call void @llvm.dbg.declare(metadata ptr %irqp, metadata !4286, metadata !DIExpression()), !dbg !4427
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4428
  %conv = zext i32 %0 to i64, !dbg !4429
  %1 = inttoptr i64 %conv to ptr, !dbg !4430
  store ptr %1, ptr %irqp, align 8, !dbg !4427
  call void @llvm.lifetime.start.p0(i64 10, ptr %name) #10, !dbg !4431
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4287, metadata !DIExpression()), !dbg !4432
  %2 = load ptr, ptr @root_irq_dir, align 8, !dbg !4433
  %tobool = icmp ne ptr %2, null, !dbg !4433
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4435

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !4436
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, !dbg !4437
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !4438
  %4 = load ptr, ptr %chip, align 8, !dbg !4438
  %cmp = icmp eq ptr %4, @no_irq_chip, !dbg !4439
  br i1 %cmp, label %if.then, label %if.end, !dbg !4440

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4441

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @register_irq_proc.register_lock) #11, !dbg !4442
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !4443
  %dir = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 28, !dbg !4445
  %6 = load ptr, ptr %dir, align 8, !dbg !4445
  %tobool2 = icmp ne ptr %6, null, !dbg !4443
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4446

if.then3:                                         ; preds = %if.end
  br label %out_unlock, !dbg !4447

if.end4:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !4448
  %7 = load i32, ptr %irq.addr, align 4, !dbg !4449
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %7) #11, !dbg !4450
  %arraydecay5 = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !4451
  %8 = load ptr, ptr @root_irq_dir, align 8, !dbg !4452
  %call6 = call ptr @proc_mkdir(ptr noundef %arraydecay5, ptr noundef %8) #11, !dbg !4453
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !4454
  %dir7 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 28, !dbg !4455
  store ptr %call6, ptr %dir7, align 8, !dbg !4456
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !4457
  %dir8 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 28, !dbg !4459
  %11 = load ptr, ptr %dir8, align 8, !dbg !4459
  %tobool9 = icmp ne ptr %11, null, !dbg !4457
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4460

if.then10:                                        ; preds = %if.end4
  br label %out_unlock, !dbg !4461

if.end11:                                         ; preds = %if.end4
  %12 = load ptr, ptr %desc.addr, align 8, !dbg !4462
  %dir12 = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 28, !dbg !4463
  %13 = load ptr, ptr %dir12, align 8, !dbg !4463
  %14 = load ptr, ptr %irqp, align 8, !dbg !4464
  %call13 = call ptr @proc_create_data(ptr noundef @.str.2, i16 noundef zeroext 420, ptr noundef %13, ptr noundef @irq_affinity_proc_ops, ptr noundef %14) #11, !dbg !4465
  %15 = load ptr, ptr %desc.addr, align 8, !dbg !4466
  %dir14 = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 28, !dbg !4467
  %16 = load ptr, ptr %dir14, align 8, !dbg !4467
  %17 = load ptr, ptr %irqp, align 8, !dbg !4468
  %call15 = call ptr @proc_create_single_data(ptr noundef @.str.3, i16 noundef zeroext 292, ptr noundef %16, ptr noundef @irq_affinity_hint_proc_show, ptr noundef %17) #11, !dbg !4469
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !4470
  %dir16 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 28, !dbg !4471
  %19 = load ptr, ptr %dir16, align 8, !dbg !4471
  %20 = load ptr, ptr %irqp, align 8, !dbg !4472
  %call17 = call ptr @proc_create_data(ptr noundef @.str.4, i16 noundef zeroext 420, ptr noundef %19, ptr noundef @irq_affinity_list_proc_ops, ptr noundef %20) #11, !dbg !4473
  %21 = load ptr, ptr %desc.addr, align 8, !dbg !4474
  %dir18 = getelementptr inbounds %struct.irq_desc, ptr %21, i32 0, i32 28, !dbg !4475
  %22 = load ptr, ptr %dir18, align 8, !dbg !4475
  %23 = load ptr, ptr %irqp, align 8, !dbg !4476
  %call19 = call ptr @proc_create_single_data(ptr noundef @.str.5, i16 noundef zeroext 292, ptr noundef %22, ptr noundef @irq_node_proc_show, ptr noundef %23) #11, !dbg !4477
  %24 = load ptr, ptr %desc.addr, align 8, !dbg !4478
  %dir20 = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 28, !dbg !4479
  %25 = load ptr, ptr %dir20, align 8, !dbg !4479
  %26 = load ptr, ptr %irqp, align 8, !dbg !4480
  %call21 = call ptr @proc_create_single_data(ptr noundef @.str.6, i16 noundef zeroext 292, ptr noundef %25, ptr noundef @irq_effective_aff_proc_show, ptr noundef %26) #11, !dbg !4481
  %27 = load ptr, ptr %desc.addr, align 8, !dbg !4482
  %dir22 = getelementptr inbounds %struct.irq_desc, ptr %27, i32 0, i32 28, !dbg !4483
  %28 = load ptr, ptr %dir22, align 8, !dbg !4483
  %29 = load ptr, ptr %irqp, align 8, !dbg !4484
  %call23 = call ptr @proc_create_single_data(ptr noundef @.str.7, i16 noundef zeroext 292, ptr noundef %28, ptr noundef @irq_effective_aff_list_proc_show, ptr noundef %29) #11, !dbg !4485
  %30 = load ptr, ptr %desc.addr, align 8, !dbg !4486
  %dir24 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 28, !dbg !4487
  %31 = load ptr, ptr %dir24, align 8, !dbg !4487
  %32 = load i32, ptr %irq.addr, align 4, !dbg !4488
  %conv25 = zext i32 %32 to i64, !dbg !4489
  %33 = inttoptr i64 %conv25 to ptr, !dbg !4490
  %call26 = call ptr @proc_create_single_data(ptr noundef @.str.8, i16 noundef zeroext 292, ptr noundef %31, ptr noundef @irq_spurious_proc_show, ptr noundef %33) #11, !dbg !4491
  br label %out_unlock, !dbg !4491

out_unlock:                                       ; preds = %if.end11, %if.then10, %if.then3
  call void @llvm.dbg.label(metadata !4291), !dbg !4492
  call void @mutex_unlock(ptr noundef @register_irq_proc.register_lock) #11, !dbg !4493
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4494
  br label %cleanup, !dbg !4494

cleanup:                                          ; preds = %out_unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %name) #10, !dbg !4494
  call void @llvm.lifetime.end.p0(i64 8, ptr %irqp) #10, !dbg !4494
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4494

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4495 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4499 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4502 dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4506 dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_affinity_hint_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4509 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %mask = alloca [1 x %struct.cpumask], align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4511, metadata !DIExpression()), !dbg !4524
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4512, metadata !DIExpression()), !dbg !4525
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4526
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4513, metadata !DIExpression()), !dbg !4527
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4528
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !4529
  %1 = load ptr, ptr %private, align 8, !dbg !4529
  %2 = ptrtoint ptr %1 to i64, !dbg !4530
  %conv = trunc i64 %2 to i32, !dbg !4530
  %call = call ptr @irq_to_desc(i32 noundef %conv) #11, !dbg !4531
  store ptr %call, ptr %desc, align 8, !dbg !4527
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !4532
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4514, metadata !DIExpression()), !dbg !4533
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !4534
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4515, metadata !DIExpression()), !dbg !4535
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef 3264) #11, !dbg !4536
  br i1 %call1, label %if.end, label %if.then, !dbg !4538

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4539

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4540

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !4541
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4516, metadata !DIExpression()), !dbg !4541
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !4541
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4519, metadata !DIExpression()), !dbg !4541
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4541
  %conv2 = zext i1 %cmp to i32, !dbg !4541
  store i32 1, ptr %tmp, align 4, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !4542
  %3 = load i32, ptr %tmp, align 4, !dbg !4541
  %4 = load ptr, ptr %desc, align 8, !dbg !4542
  %lock = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 15, !dbg !4542
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #11, !dbg !4542
  store i64 %call3, ptr %flags, align 8, !dbg !4542
  br label %do.cond, !dbg !4542

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4542

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %desc, align 8, !dbg !4543
  %affinity_hint = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 18, !dbg !4545
  %6 = load ptr, ptr %affinity_hint, align 8, !dbg !4545
  %tobool = icmp ne ptr %6, null, !dbg !4543
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !4546

if.then4:                                         ; preds = %do.end
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !4547
  %7 = load ptr, ptr %desc, align 8, !dbg !4548
  %affinity_hint5 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 18, !dbg !4549
  %8 = load ptr, ptr %affinity_hint5, align 8, !dbg !4549
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %8) #11, !dbg !4550
  br label %if.end6, !dbg !4550

if.end6:                                          ; preds = %if.then4, %do.end
  br label %do.body7, !dbg !4551

do.body7:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy8) #10, !dbg !4552
  call void @llvm.dbg.declare(metadata ptr %__dummy8, metadata !4520, metadata !DIExpression()), !dbg !4552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #10, !dbg !4552
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !4523, metadata !DIExpression()), !dbg !4552
  %cmp10 = icmp eq ptr %__dummy8, %__dummy29, !dbg !4552
  %conv11 = zext i1 %cmp10 to i32, !dbg !4552
  store i32 1, ptr %tmp12, align 4, !dbg !4552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #10, !dbg !4553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy8) #10, !dbg !4553
  %9 = load i32, ptr %tmp12, align 4, !dbg !4552
  %10 = load ptr, ptr %desc, align 8, !dbg !4553
  %lock13 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 15, !dbg !4553
  %11 = load i64, ptr %flags, align 8, !dbg !4553
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i64 noundef %11) #11, !dbg !4553
  br label %do.cond14, !dbg !4553

do.cond14:                                        ; preds = %do.body7
  br label %do.end15, !dbg !4553

do.end15:                                         ; preds = %do.cond14
  %12 = load ptr, ptr %m.addr, align 8, !dbg !4554
  %13 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4555
  %arraydecay16 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !4555
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay16, i32 0, i32 0, !dbg !4555
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4555
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef @.str.25, i32 noundef %13, ptr noundef %arraydecay17) #11, !dbg !4556
  %arraydecay18 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !4557
  call void @free_cpumask_var(ptr noundef %arraydecay18) #11, !dbg !4558
  store i32 0, ptr %retval, align 4, !dbg !4559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4559

cleanup:                                          ; preds = %do.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4560
  %14 = load i32, ptr %retval, align 4, !dbg !4560
  ret i32 %14, !dbg !4560
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_node_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4561 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4563, metadata !DIExpression()), !dbg !4566
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4564, metadata !DIExpression()), !dbg !4567
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4568
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4565, metadata !DIExpression()), !dbg !4569
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4570
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !4571
  %1 = load ptr, ptr %private, align 8, !dbg !4571
  %2 = ptrtoint ptr %1 to i64, !dbg !4572
  %conv = trunc i64 %2 to i32, !dbg !4572
  %call = call ptr @irq_to_desc(i32 noundef %conv) #11, !dbg !4573
  store ptr %call, ptr %desc, align 8, !dbg !4569
  %3 = load ptr, ptr %m.addr, align 8, !dbg !4574
  %4 = load ptr, ptr %desc, align 8, !dbg !4575
  %call1 = call i32 @irq_desc_get_node(ptr noundef %4) #11, !dbg !4576
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.26, i32 noundef %call1) #11, !dbg !4577
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4578
  ret i32 0, !dbg !4579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_effective_aff_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4580 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4582, metadata !DIExpression()), !dbg !4584
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4583, metadata !DIExpression()), !dbg !4585
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4586
  %call = call i32 @show_irq_affinity(i32 noundef 2, ptr noundef %0) #11, !dbg !4587
  ret i32 %call, !dbg !4588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_effective_aff_list_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4589 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4591, metadata !DIExpression()), !dbg !4593
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4592, metadata !DIExpression()), !dbg !4594
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4595
  %call = call i32 @show_irq_affinity(i32 noundef 3, ptr noundef %0) #11, !dbg !4596
  ret i32 %call, !dbg !4597
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_spurious_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4598 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4600, metadata !DIExpression()), !dbg !4603
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4601, metadata !DIExpression()), !dbg !4604
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4605
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4602, metadata !DIExpression()), !dbg !4606
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4607
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !4608
  %1 = load ptr, ptr %private, align 8, !dbg !4608
  %2 = ptrtoint ptr %1 to i64, !dbg !4609
  %conv = trunc i64 %2 to i32, !dbg !4609
  %call = call ptr @irq_to_desc(i32 noundef %conv) #11, !dbg !4610
  store ptr %call, ptr %desc, align 8, !dbg !4606
  %3 = load ptr, ptr %m.addr, align 8, !dbg !4611
  %4 = load ptr, ptr %desc, align 8, !dbg !4612
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 10, !dbg !4613
  %5 = load i32, ptr %irq_count, align 4, !dbg !4613
  %6 = load ptr, ptr %desc, align 8, !dbg !4614
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 12, !dbg !4615
  %7 = load i32, ptr %irqs_unhandled, align 8, !dbg !4615
  %8 = load ptr, ptr %desc, align 8, !dbg !4616
  %last_unhandled = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 11, !dbg !4617
  %9 = load i64, ptr %last_unhandled, align 16, !dbg !4617
  %call1 = call i32 @jiffies_to_msecs(i64 noundef %9) #11, !dbg !4618
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.27, i32 noundef %5, i32 noundef %7, i32 noundef %call1) #11, !dbg !4619
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4620
  ret i32 0, !dbg !4621
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4622 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_irq_proc(i32 noundef %irq, ptr noundef %desc) #0 align 16 !dbg !4623 {
entry:
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %name = alloca [10 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4625, metadata !DIExpression()), !dbg !4628
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4626, metadata !DIExpression()), !dbg !4629
  call void @llvm.lifetime.start.p0(i64 10, ptr %name) #10, !dbg !4630
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4627, metadata !DIExpression()), !dbg !4631
  %0 = load ptr, ptr @root_irq_dir, align 8, !dbg !4632
  %tobool = icmp ne ptr %0, null, !dbg !4632
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4634

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !4635
  %dir = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 28, !dbg !4636
  %2 = load ptr, ptr %dir, align 8, !dbg !4636
  %tobool1 = icmp ne ptr %2, null, !dbg !4635
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4637

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4638

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !4639
  %dir2 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 28, !dbg !4640
  %4 = load ptr, ptr %dir2, align 8, !dbg !4640
  call void @remove_proc_entry(ptr noundef @.str.2, ptr noundef %4) #11, !dbg !4641
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !4642
  %dir3 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 28, !dbg !4643
  %6 = load ptr, ptr %dir3, align 8, !dbg !4643
  call void @remove_proc_entry(ptr noundef @.str.3, ptr noundef %6) #11, !dbg !4644
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !4645
  %dir4 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 28, !dbg !4646
  %8 = load ptr, ptr %dir4, align 8, !dbg !4646
  call void @remove_proc_entry(ptr noundef @.str.4, ptr noundef %8) #11, !dbg !4647
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !4648
  %dir5 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 28, !dbg !4649
  %10 = load ptr, ptr %dir5, align 8, !dbg !4649
  call void @remove_proc_entry(ptr noundef @.str.5, ptr noundef %10) #11, !dbg !4650
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !4651
  %dir6 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 28, !dbg !4652
  %12 = load ptr, ptr %dir6, align 8, !dbg !4652
  call void @remove_proc_entry(ptr noundef @.str.6, ptr noundef %12) #11, !dbg !4653
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !4654
  %dir7 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 28, !dbg !4655
  %14 = load ptr, ptr %dir7, align 8, !dbg !4655
  call void @remove_proc_entry(ptr noundef @.str.7, ptr noundef %14) #11, !dbg !4656
  %15 = load ptr, ptr %desc.addr, align 8, !dbg !4657
  %dir8 = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 28, !dbg !4658
  %16 = load ptr, ptr %dir8, align 8, !dbg !4658
  call void @remove_proc_entry(ptr noundef @.str.8, ptr noundef %16) #11, !dbg !4659
  %arraydecay = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !4660
  %17 = load i32, ptr %irq.addr, align 4, !dbg !4661
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.9, i32 noundef %17) #11, !dbg !4662
  %arraydecay9 = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !4663
  %18 = load ptr, ptr @root_irq_dir, align 8, !dbg !4664
  call void @remove_proc_entry(ptr noundef %arraydecay9, ptr noundef %18) #11, !dbg !4665
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4666
  br label %cleanup, !dbg !4666

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %name) #10, !dbg !4666
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4666

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4667 dso_local void @remove_proc_entry(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_handler_proc(i32 noundef %irq, ptr noundef %action) #0 align 16 !dbg !4670 {
entry:
  %irq.addr = alloca i32, align 4
  %action.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4672, metadata !DIExpression()), !dbg !4674
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !4673, metadata !DIExpression()), !dbg !4675
  %0 = load ptr, ptr %action.addr, align 8, !dbg !4676
  %dir = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 12, !dbg !4677
  %1 = load ptr, ptr %dir, align 8, !dbg !4677
  call void @proc_remove(ptr noundef %1) #11, !dbg !4678
  ret void, !dbg !4679
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4680 dso_local void @proc_remove(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_irq_proc() #0 align 16 !dbg !4683 {
entry:
  %irq = alloca i32, align 4
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #10, !dbg !4687
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !4685, metadata !DIExpression()), !dbg !4688
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4689
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4686, metadata !DIExpression()), !dbg !4690
  %call = call ptr @proc_mkdir(ptr noundef @.str.10, ptr noundef null) #11, !dbg !4691
  store ptr %call, ptr @root_irq_dir, align 8, !dbg !4692
  %0 = load ptr, ptr @root_irq_dir, align 8, !dbg !4693
  %tobool = icmp ne ptr %0, null, !dbg !4693
  br i1 %tobool, label %if.end, label %if.then, !dbg !4695

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4696

if.end:                                           ; preds = %entry
  call void @register_default_affinity_proc() #11, !dbg !4697
  store i32 0, ptr %irq, align 4, !dbg !4698
  %1 = load i32, ptr %irq, align 4, !dbg !4698
  %call1 = call ptr @irq_to_desc(i32 noundef %1) #11, !dbg !4698
  store ptr %call1, ptr %desc, align 8, !dbg !4698
  br label %for.cond, !dbg !4698

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %irq, align 4, !dbg !4700
  %3 = load i32, ptr @nr_irqs, align 4, !dbg !4700
  %cmp = icmp ult i32 %2, %3, !dbg !4700
  br i1 %cmp, label %for.body, label %for.end, !dbg !4698

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %desc, align 8, !dbg !4702
  %tobool2 = icmp ne ptr %4, null, !dbg !4702
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !4700

if.then3:                                         ; preds = %for.body
  br label %if.end4, !dbg !4700

if.else:                                          ; preds = %for.body
  %5 = load i32, ptr %irq, align 4, !dbg !4704
  %6 = load ptr, ptr %desc, align 8, !dbg !4705
  call void @register_irq_proc(i32 noundef %5, ptr noundef %6) #11, !dbg !4706
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !4702

for.inc:                                          ; preds = %if.end4
  %7 = load i32, ptr %irq, align 4, !dbg !4700
  %inc = add i32 %7, 1, !dbg !4700
  store i32 %inc, ptr %irq, align 4, !dbg !4700
  %8 = load i32, ptr %irq, align 4, !dbg !4700
  %call5 = call ptr @irq_to_desc(i32 noundef %8) #11, !dbg !4700
  store ptr %call5, ptr %desc, align 8, !dbg !4700
  br label %for.cond, !dbg !4700, !llvm.loop !4707

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4709
  br label %cleanup, !dbg !4709

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4709
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #10, !dbg !4709
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4709

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @register_default_affinity_proc() #0 align 16 !dbg !4710 {
entry:
  %call = call ptr @proc_create(ptr noundef @.str.28, i16 noundef zeroext 420, ptr noundef null, ptr noundef @default_affinity_proc_ops) #11, !dbg !4711
  ret void, !dbg !4712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @arch_show_interrupts(ptr noundef %p, i32 noundef %prec) #0 align 16 !dbg !4713 {
entry:
  %p.addr = alloca ptr, align 8
  %prec.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4717, metadata !DIExpression()), !dbg !4719
  store i32 %prec, ptr %prec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !4718, metadata !DIExpression()), !dbg !4720
  ret i32 0, !dbg !4721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @show_interrupts(ptr noundef %p, ptr noundef %v) #0 align 16 !dbg !4174 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %any_count = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %action = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__v = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp40 = alloca ptr, align 8
  %tmp42 = alloca i32, align 4
  %__vpp_verify66 = alloca ptr, align 8
  %tmp69 = alloca ptr, align 8
  %__ptr70 = alloca i64, align 8
  %tmp72 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp82 = alloca i32, align 4
  %__dummy128 = alloca i64, align 8
  %__dummy2129 = alloca i64, align 8
  %tmp132 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4176, metadata !DIExpression()), !dbg !4722
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4177, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4178, metadata !DIExpression()), !dbg !4725
  call void @llvm.lifetime.start.p0(i64 8, ptr %any_count) #10, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %any_count, metadata !4179, metadata !DIExpression()), !dbg !4726
  store i64 0, ptr %any_count, align 8, !dbg !4726
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4180, metadata !DIExpression()), !dbg !4728
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4729
  %1 = load i64, ptr %0, align 8, !dbg !4730
  %conv = trunc i64 %1 to i32, !dbg !4730
  store i32 %conv, ptr %i, align 4, !dbg !4728
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4181, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #10, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %action, metadata !4182, metadata !DIExpression()), !dbg !4733
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4183, metadata !DIExpression()), !dbg !4735
  %2 = load i32, ptr %i, align 4, !dbg !4736
  %3 = load i32, ptr @nr_irqs, align 4, !dbg !4738
  %cmp = icmp sgt i32 %2, %3, !dbg !4739
  br i1 %cmp, label %if.then, label %if.end, !dbg !4740

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4741

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %i, align 4, !dbg !4742
  %5 = load i32, ptr @nr_irqs, align 4, !dbg !4744
  %cmp2 = icmp eq i32 %4, %5, !dbg !4745
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !4746

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8, !dbg !4747
  %7 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4748
  %call = call i32 @arch_show_interrupts(ptr noundef %6, i32 noundef %7) #11, !dbg !4749
  store i32 %call, ptr %retval, align 4, !dbg !4750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4750

if.end5:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !4751
  %cmp6 = icmp eq i32 %8, 0, !dbg !4753
  br i1 %cmp6, label %if.then8, label %if.end23, !dbg !4754

if.then8:                                         ; preds = %if.end5
  store i32 3, ptr @show_interrupts.prec, align 4, !dbg !4755
  store i32 1000, ptr %j, align 4, !dbg !4758
  br label %for.cond, !dbg !4759

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4760
  %cmp9 = icmp slt i32 %9, 10, !dbg !4762
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !4763

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, ptr %j, align 4, !dbg !4764
  %11 = load i32, ptr @nr_irqs, align 4, !dbg !4765
  %cmp11 = icmp sle i32 %10, %11, !dbg !4766
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ], !dbg !4767
  br i1 %12, label %for.body, label %for.end, !dbg !4768

for.body:                                         ; preds = %land.end
  %13 = load i32, ptr %j, align 4, !dbg !4769
  %mul = mul i32 %13, 10, !dbg !4769
  store i32 %mul, ptr %j, align 4, !dbg !4769
  br label %for.inc, !dbg !4770

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4771
  %inc = add i32 %14, 1, !dbg !4771
  store i32 %inc, ptr @show_interrupts.prec, align 4, !dbg !4771
  br label %for.cond, !dbg !4772, !llvm.loop !4773

for.end:                                          ; preds = %land.end
  %15 = load ptr, ptr %p.addr, align 8, !dbg !4775
  %16 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4776
  %add = add i32 %16, 8, !dbg !4777
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef @.str.11, i32 noundef %add, ptr noundef @.str.12) #11, !dbg !4778
  store i32 0, ptr %j, align 4, !dbg !4779
  br label %for.cond13, !dbg !4779

for.cond13:                                       ; preds = %for.inc20, %for.end
  %17 = load i32, ptr %j, align 4, !dbg !4781
  %conv14 = sext i32 %17 to i64, !dbg !4781
  %call15 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv14) #11, !dbg !4781
  %conv16 = trunc i64 %call15 to i32, !dbg !4781
  store i32 %conv16, ptr %j, align 4, !dbg !4781
  %18 = load i32, ptr %j, align 4, !dbg !4781
  %cmp17 = icmp ult i32 %18, 64, !dbg !4781
  br i1 %cmp17, label %for.body19, label %for.end22, !dbg !4779

for.body19:                                       ; preds = %for.cond13
  %19 = load ptr, ptr %p.addr, align 8, !dbg !4783
  %20 = load i32, ptr %j, align 4, !dbg !4784
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef @.str.13, i32 noundef %20) #11, !dbg !4785
  br label %for.inc20, !dbg !4785

for.inc20:                                        ; preds = %for.body19
  %21 = load i32, ptr %j, align 4, !dbg !4781
  %inc21 = add i32 %21, 1, !dbg !4781
  store i32 %inc21, ptr %j, align 4, !dbg !4781
  br label %for.cond13, !dbg !4781, !llvm.loop !4786

for.end22:                                        ; preds = %for.cond13
  %22 = load ptr, ptr %p.addr, align 8, !dbg !4788
  call void @seq_putc(ptr noundef %22, i8 noundef zeroext 10) #11, !dbg !4789
  br label %if.end23, !dbg !4790

if.end23:                                         ; preds = %for.end22, %if.end5
  call void @rcu_read_lock() #11, !dbg !4791
  %23 = load i32, ptr %i, align 4, !dbg !4792
  %call24 = call ptr @irq_to_desc(i32 noundef %23) #11, !dbg !4793
  store ptr %call24, ptr %desc, align 8, !dbg !4794
  %24 = load ptr, ptr %desc, align 8, !dbg !4795
  %tobool = icmp ne ptr %24, null, !dbg !4795
  br i1 %tobool, label %lor.lhs.false, label %if.then27, !dbg !4797

lor.lhs.false:                                    ; preds = %if.end23
  %25 = load ptr, ptr %desc, align 8, !dbg !4798
  %call25 = call zeroext i1 @irq_settings_is_hidden(ptr noundef %25) #11, !dbg !4799
  br i1 %call25, label %if.then27, label %if.end28, !dbg !4800

if.then27:                                        ; preds = %lor.lhs.false, %if.end23
  br label %outsparse, !dbg !4801

if.end28:                                         ; preds = %lor.lhs.false
  %26 = load ptr, ptr %desc, align 8, !dbg !4802
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %26, i32 0, i32 2, !dbg !4803
  %27 = load ptr, ptr %kstat_irqs, align 32, !dbg !4803
  %tobool29 = icmp ne ptr %27, null, !dbg !4802
  br i1 %tobool29, label %if.then30, label %if.end47, !dbg !4804

if.then30:                                        ; preds = %if.end28
  store i32 0, ptr %j, align 4, !dbg !4805
  br label %for.cond31, !dbg !4805

for.cond31:                                       ; preds = %for.inc44, %if.then30
  %28 = load i32, ptr %j, align 4, !dbg !4806
  %conv32 = sext i32 %28 to i64, !dbg !4806
  %call33 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv32) #11, !dbg !4806
  %conv34 = trunc i64 %call33 to i32, !dbg !4806
  store i32 %conv34, ptr %j, align 4, !dbg !4806
  %29 = load i32, ptr %j, align 4, !dbg !4806
  %cmp35 = icmp ult i32 %29, 64, !dbg !4806
  br i1 %cmp35, label %for.body37, label %for.end46, !dbg !4805

for.body37:                                       ; preds = %for.cond31
  call void @llvm.lifetime.start.p0(i64 4, ptr %__v) #10, !dbg !4807
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !4184, metadata !DIExpression()), !dbg !4807
  call void @__kcsan_disable_current() #11, !dbg !4808
  br label %do.body, !dbg !4809

do.body:                                          ; preds = %for.body37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4810
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4190, metadata !DIExpression()), !dbg !4810
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4810
  %30 = load ptr, ptr %__vpp_verify, align 8, !dbg !4810
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4809
  br label %do.cond, !dbg !4810

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4810

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4194, metadata !DIExpression()), !dbg !4811
  %31 = load ptr, ptr %desc, align 8, !dbg !4811
  %kstat_irqs39 = getelementptr inbounds %struct.irq_desc, ptr %31, i32 0, i32 2, !dbg !4811
  %32 = load ptr, ptr %kstat_irqs39, align 32, !dbg !4811
  %33 = ptrtoint ptr %32 to i64, !dbg !4811
  store i64 %33, ptr %__ptr, align 8, !dbg !4811
  %34 = load i64, ptr %__ptr, align 8, !dbg !4811
  %35 = load i32, ptr %j, align 4, !dbg !4811
  %idxprom = sext i32 %35 to i64, !dbg !4811
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4811
  %36 = load i64, ptr %arrayidx, align 8, !dbg !4811
  %add41 = add i64 %34, %36, !dbg !4811
  %37 = inttoptr i64 %add41 to ptr, !dbg !4811
  store ptr %37, ptr %tmp40, align 8, !dbg !4811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4809
  %38 = load ptr, ptr %tmp40, align 8, !dbg !4811
  store ptr %38, ptr %tmp38, align 8, !dbg !4810
  %39 = load ptr, ptr %tmp38, align 8, !dbg !4809
  %40 = load i32, ptr %39, align 4, !dbg !4808
  store i32 %40, ptr %tmp, align 4, !dbg !4808
  %41 = load i32, ptr %tmp, align 4, !dbg !4808
  store i32 %41, ptr %__v, align 4, !dbg !4807
  call void @__kcsan_enable_current() #11, !dbg !4807
  %42 = load i32, ptr %__v, align 4, !dbg !4807
  store i32 %42, ptr %tmp42, align 4, !dbg !4807
  call void @llvm.lifetime.end.p0(i64 4, ptr %__v) #10, !dbg !4812
  %43 = load i32, ptr %tmp42, align 4, !dbg !4807
  %conv43 = zext i32 %43 to i64, !dbg !4812
  %44 = load i64, ptr %any_count, align 8, !dbg !4813
  %or = or i64 %44, %conv43, !dbg !4813
  store i64 %or, ptr %any_count, align 8, !dbg !4813
  br label %for.inc44, !dbg !4814

for.inc44:                                        ; preds = %do.end
  %45 = load i32, ptr %j, align 4, !dbg !4806
  %inc45 = add i32 %45, 1, !dbg !4806
  store i32 %inc45, ptr %j, align 4, !dbg !4806
  br label %for.cond31, !dbg !4806, !llvm.loop !4815

for.end46:                                        ; preds = %for.cond31
  br label %if.end47, !dbg !4817

if.end47:                                         ; preds = %for.end46, %if.end28
  %46 = load ptr, ptr %desc, align 8, !dbg !4818
  %action48 = getelementptr inbounds %struct.irq_desc, ptr %46, i32 0, i32 4, !dbg !4820
  %47 = load ptr, ptr %action48, align 16, !dbg !4820
  %tobool49 = icmp ne ptr %47, null, !dbg !4818
  br i1 %tobool49, label %lor.lhs.false50, label %land.lhs.true, !dbg !4821

lor.lhs.false50:                                  ; preds = %if.end47
  %48 = load ptr, ptr %desc, align 8, !dbg !4822
  %call51 = call i32 @irq_desc_is_chained(ptr noundef %48) #11, !dbg !4823
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4823
  br i1 %tobool52, label %land.lhs.true, label %if.end55, !dbg !4824

land.lhs.true:                                    ; preds = %lor.lhs.false50, %if.end47
  %49 = load i64, ptr %any_count, align 8, !dbg !4825
  %tobool53 = icmp ne i64 %49, 0, !dbg !4825
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !4826

if.then54:                                        ; preds = %land.lhs.true
  br label %outsparse, !dbg !4827

if.end55:                                         ; preds = %land.lhs.true, %lor.lhs.false50
  %50 = load ptr, ptr %p.addr, align 8, !dbg !4828
  %51 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4829
  %52 = load i32, ptr %i, align 4, !dbg !4830
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef @.str.14, i32 noundef %51, i32 noundef %52) #11, !dbg !4831
  store i32 0, ptr %j, align 4, !dbg !4832
  br label %for.cond56, !dbg !4832

for.cond56:                                       ; preds = %for.inc76, %if.end55
  %53 = load i32, ptr %j, align 4, !dbg !4833
  %conv57 = sext i32 %53 to i64, !dbg !4833
  %call58 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv57) #11, !dbg !4833
  %conv59 = trunc i64 %call58 to i32, !dbg !4833
  store i32 %conv59, ptr %j, align 4, !dbg !4833
  %54 = load i32, ptr %j, align 4, !dbg !4833
  %cmp60 = icmp ult i32 %54, 64, !dbg !4833
  br i1 %cmp60, label %for.body62, label %for.end78, !dbg !4832

for.body62:                                       ; preds = %for.cond56
  %55 = load ptr, ptr %p.addr, align 8, !dbg !4834
  %56 = load ptr, ptr %desc, align 8, !dbg !4835
  %kstat_irqs63 = getelementptr inbounds %struct.irq_desc, ptr %56, i32 0, i32 2, !dbg !4836
  %57 = load ptr, ptr %kstat_irqs63, align 32, !dbg !4836
  %tobool64 = icmp ne ptr %57, null, !dbg !4835
  br i1 %tobool64, label %cond.true, label %cond.false, !dbg !4835

cond.true:                                        ; preds = %for.body62
  br label %do.body65, !dbg !4837

do.body65:                                        ; preds = %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify66) #10, !dbg !4838
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify66, metadata !4196, metadata !DIExpression()), !dbg !4838
  store ptr null, ptr %__vpp_verify66, align 8, !dbg !4838
  %58 = load ptr, ptr %__vpp_verify66, align 8, !dbg !4838
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify66) #10, !dbg !4837
  br label %do.cond67, !dbg !4838

do.cond67:                                        ; preds = %do.body65
  br label %do.end68, !dbg !4838

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr70) #10, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %__ptr70, metadata !4201, metadata !DIExpression()), !dbg !4839
  %59 = load ptr, ptr %desc, align 8, !dbg !4839
  %kstat_irqs71 = getelementptr inbounds %struct.irq_desc, ptr %59, i32 0, i32 2, !dbg !4839
  %60 = load ptr, ptr %kstat_irqs71, align 32, !dbg !4839
  %61 = ptrtoint ptr %60 to i64, !dbg !4839
  store i64 %61, ptr %__ptr70, align 8, !dbg !4839
  %62 = load i64, ptr %__ptr70, align 8, !dbg !4839
  %63 = load i32, ptr %j, align 4, !dbg !4839
  %idxprom73 = sext i32 %63 to i64, !dbg !4839
  %arrayidx74 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom73, !dbg !4839
  %64 = load i64, ptr %arrayidx74, align 8, !dbg !4839
  %add75 = add i64 %62, %64, !dbg !4839
  %65 = inttoptr i64 %add75 to ptr, !dbg !4839
  store ptr %65, ptr %tmp72, align 8, !dbg !4839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr70) #10, !dbg !4837
  %66 = load ptr, ptr %tmp72, align 8, !dbg !4839
  store ptr %66, ptr %tmp69, align 8, !dbg !4838
  %67 = load ptr, ptr %tmp69, align 8, !dbg !4837
  %68 = load i32, ptr %67, align 4, !dbg !4840
  br label %cond.end, !dbg !4835

cond.false:                                       ; preds = %for.body62
  br label %cond.end, !dbg !4835

cond.end:                                         ; preds = %cond.false, %do.end68
  %cond = phi i32 [ %68, %do.end68 ], [ 0, %cond.false ], !dbg !4835
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef @.str.15, i32 noundef %cond) #11, !dbg !4841
  br label %for.inc76, !dbg !4841

for.inc76:                                        ; preds = %cond.end
  %69 = load i32, ptr %j, align 4, !dbg !4833
  %inc77 = add i32 %69, 1, !dbg !4833
  store i32 %inc77, ptr %j, align 4, !dbg !4833
  br label %for.cond56, !dbg !4833, !llvm.loop !4842

for.end78:                                        ; preds = %for.cond56
  br label %do.body79, !dbg !4844

do.body79:                                        ; preds = %for.end78
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !4845
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4203, metadata !DIExpression()), !dbg !4845
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !4845
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4206, metadata !DIExpression()), !dbg !4845
  %cmp80 = icmp eq ptr %__dummy, %__dummy2, !dbg !4845
  %conv81 = zext i1 %cmp80 to i32, !dbg !4845
  store i32 1, ptr %tmp82, align 4, !dbg !4845
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !4846
  %70 = load i32, ptr %tmp82, align 4, !dbg !4845
  %71 = load ptr, ptr %desc, align 8, !dbg !4846
  %lock = getelementptr inbounds %struct.irq_desc, ptr %71, i32 0, i32 15, !dbg !4846
  %call83 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #11, !dbg !4846
  store i64 %call83, ptr %flags, align 8, !dbg !4846
  br label %do.cond84, !dbg !4846

do.cond84:                                        ; preds = %do.body79
  br label %do.end85, !dbg !4846

do.end85:                                         ; preds = %do.cond84
  %72 = load ptr, ptr %desc, align 8, !dbg !4847
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %72, i32 0, i32 1, !dbg !4849
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !4850
  %73 = load ptr, ptr %chip, align 8, !dbg !4850
  %tobool86 = icmp ne ptr %73, null, !dbg !4847
  br i1 %tobool86, label %if.then87, label %if.else106, !dbg !4851

if.then87:                                        ; preds = %do.end85
  %74 = load ptr, ptr %desc, align 8, !dbg !4852
  %irq_data88 = getelementptr inbounds %struct.irq_desc, ptr %74, i32 0, i32 1, !dbg !4855
  %chip89 = getelementptr inbounds %struct.irq_data, ptr %irq_data88, i32 0, i32 4, !dbg !4856
  %75 = load ptr, ptr %chip89, align 8, !dbg !4856
  %irq_print_chip = getelementptr inbounds %struct.irq_chip, ptr %75, i32 0, i32 20, !dbg !4857
  %76 = load ptr, ptr %irq_print_chip, align 8, !dbg !4857
  %tobool90 = icmp ne ptr %76, null, !dbg !4852
  br i1 %tobool90, label %if.then91, label %if.else, !dbg !4858

if.then91:                                        ; preds = %if.then87
  %77 = load ptr, ptr %desc, align 8, !dbg !4859
  %irq_data92 = getelementptr inbounds %struct.irq_desc, ptr %77, i32 0, i32 1, !dbg !4860
  %chip93 = getelementptr inbounds %struct.irq_data, ptr %irq_data92, i32 0, i32 4, !dbg !4861
  %78 = load ptr, ptr %chip93, align 8, !dbg !4861
  %irq_print_chip94 = getelementptr inbounds %struct.irq_chip, ptr %78, i32 0, i32 20, !dbg !4862
  %79 = load ptr, ptr %irq_print_chip94, align 8, !dbg !4862
  %80 = load ptr, ptr %desc, align 8, !dbg !4863
  %irq_data95 = getelementptr inbounds %struct.irq_desc, ptr %80, i32 0, i32 1, !dbg !4864
  %81 = load ptr, ptr %p.addr, align 8, !dbg !4865
  call void %79(ptr noundef %irq_data95, ptr noundef %81) #11, !dbg !4859
  br label %if.end105, !dbg !4859

if.else:                                          ; preds = %if.then87
  %82 = load ptr, ptr %desc, align 8, !dbg !4866
  %irq_data96 = getelementptr inbounds %struct.irq_desc, ptr %82, i32 0, i32 1, !dbg !4868
  %chip97 = getelementptr inbounds %struct.irq_data, ptr %irq_data96, i32 0, i32 4, !dbg !4869
  %83 = load ptr, ptr %chip97, align 8, !dbg !4869
  %name = getelementptr inbounds %struct.irq_chip, ptr %83, i32 0, i32 0, !dbg !4870
  %84 = load ptr, ptr %name, align 8, !dbg !4870
  %tobool98 = icmp ne ptr %84, null, !dbg !4866
  br i1 %tobool98, label %if.then99, label %if.else103, !dbg !4871

if.then99:                                        ; preds = %if.else
  %85 = load ptr, ptr %p.addr, align 8, !dbg !4872
  %86 = load ptr, ptr %desc, align 8, !dbg !4873
  %irq_data100 = getelementptr inbounds %struct.irq_desc, ptr %86, i32 0, i32 1, !dbg !4874
  %chip101 = getelementptr inbounds %struct.irq_data, ptr %irq_data100, i32 0, i32 4, !dbg !4875
  %87 = load ptr, ptr %chip101, align 8, !dbg !4875
  %name102 = getelementptr inbounds %struct.irq_chip, ptr %87, i32 0, i32 0, !dbg !4876
  %88 = load ptr, ptr %name102, align 8, !dbg !4876
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef @.str.16, ptr noundef %88) #11, !dbg !4877
  br label %if.end104, !dbg !4877

if.else103:                                       ; preds = %if.else
  %89 = load ptr, ptr %p.addr, align 8, !dbg !4878
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %89, ptr noundef @.str.16, ptr noundef @.str.17) #11, !dbg !4879
  br label %if.end104

if.end104:                                        ; preds = %if.else103, %if.then99
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then91
  br label %if.end107, !dbg !4880

if.else106:                                       ; preds = %do.end85
  %90 = load ptr, ptr %p.addr, align 8, !dbg !4881
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %90, ptr noundef @.str.16, ptr noundef @.str.18) #11, !dbg !4883
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.end105
  %91 = load ptr, ptr %desc, align 8, !dbg !4884
  %irq_data108 = getelementptr inbounds %struct.irq_desc, ptr %91, i32 0, i32 1, !dbg !4886
  %domain = getelementptr inbounds %struct.irq_data, ptr %irq_data108, i32 0, i32 5, !dbg !4887
  %92 = load ptr, ptr %domain, align 8, !dbg !4887
  %tobool109 = icmp ne ptr %92, null, !dbg !4884
  br i1 %tobool109, label %if.then110, label %if.else112, !dbg !4888

if.then110:                                       ; preds = %if.end107
  %93 = load ptr, ptr %p.addr, align 8, !dbg !4889
  %94 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4890
  %95 = load ptr, ptr %desc, align 8, !dbg !4891
  %irq_data111 = getelementptr inbounds %struct.irq_desc, ptr %95, i32 0, i32 1, !dbg !4892
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data111, i32 0, i32 2, !dbg !4893
  %96 = load i64, ptr %hwirq, align 8, !dbg !4893
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %93, ptr noundef @.str.19, i32 noundef %94, i64 noundef %96) #11, !dbg !4894
  br label %if.end113, !dbg !4894

if.else112:                                       ; preds = %if.end107
  %97 = load ptr, ptr %p.addr, align 8, !dbg !4895
  %98 = load i32, ptr @show_interrupts.prec, align 4, !dbg !4896
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %97, ptr noundef @.str.20, i32 noundef %98, ptr noundef @.str.12) #11, !dbg !4897
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.then110
  %99 = load ptr, ptr %desc, align 8, !dbg !4898
  %name114 = getelementptr inbounds %struct.irq_desc, ptr %99, i32 0, i32 34, !dbg !4900
  %100 = load ptr, ptr %name114, align 16, !dbg !4900
  %tobool115 = icmp ne ptr %100, null, !dbg !4898
  br i1 %tobool115, label %if.then116, label %if.end118, !dbg !4901

if.then116:                                       ; preds = %if.end113
  %101 = load ptr, ptr %p.addr, align 8, !dbg !4902
  %102 = load ptr, ptr %desc, align 8, !dbg !4903
  %name117 = getelementptr inbounds %struct.irq_desc, ptr %102, i32 0, i32 34, !dbg !4904
  %103 = load ptr, ptr %name117, align 16, !dbg !4904
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %101, ptr noundef @.str.21, ptr noundef %103) #11, !dbg !4905
  br label %if.end118, !dbg !4905

if.end118:                                        ; preds = %if.then116, %if.end113
  %104 = load ptr, ptr %desc, align 8, !dbg !4906
  %action119 = getelementptr inbounds %struct.irq_desc, ptr %104, i32 0, i32 4, !dbg !4907
  %105 = load ptr, ptr %action119, align 16, !dbg !4907
  store ptr %105, ptr %action, align 8, !dbg !4908
  %106 = load ptr, ptr %action, align 8, !dbg !4909
  %tobool120 = icmp ne ptr %106, null, !dbg !4909
  br i1 %tobool120, label %if.then121, label %if.end126, !dbg !4911

if.then121:                                       ; preds = %if.end118
  %107 = load ptr, ptr %p.addr, align 8, !dbg !4912
  %108 = load ptr, ptr %action, align 8, !dbg !4914
  %name122 = getelementptr inbounds %struct.irqaction, ptr %108, i32 0, i32 11, !dbg !4915
  %109 = load ptr, ptr %name122, align 16, !dbg !4915
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %107, ptr noundef @.str.22, ptr noundef %109) #11, !dbg !4916
  br label %while.cond, !dbg !4917

while.cond:                                       ; preds = %while.body, %if.then121
  %110 = load ptr, ptr %action, align 8, !dbg !4918
  %next = getelementptr inbounds %struct.irqaction, ptr %110, i32 0, i32 3, !dbg !4919
  %111 = load ptr, ptr %next, align 8, !dbg !4919
  store ptr %111, ptr %action, align 8, !dbg !4920
  %cmp123 = icmp ne ptr %111, null, !dbg !4921
  br i1 %cmp123, label %while.body, label %while.end, !dbg !4917

while.body:                                       ; preds = %while.cond
  %112 = load ptr, ptr %p.addr, align 8, !dbg !4922
  %113 = load ptr, ptr %action, align 8, !dbg !4923
  %name125 = getelementptr inbounds %struct.irqaction, ptr %113, i32 0, i32 11, !dbg !4924
  %114 = load ptr, ptr %name125, align 16, !dbg !4924
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %112, ptr noundef @.str.23, ptr noundef %114) #11, !dbg !4925
  br label %while.cond, !dbg !4917, !llvm.loop !4926

while.end:                                        ; preds = %while.cond
  br label %if.end126, !dbg !4928

if.end126:                                        ; preds = %while.end, %if.end118
  %115 = load ptr, ptr %p.addr, align 8, !dbg !4929
  call void @seq_putc(ptr noundef %115, i8 noundef zeroext 10) #11, !dbg !4930
  br label %do.body127, !dbg !4931

do.body127:                                       ; preds = %if.end126
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy128) #10, !dbg !4932
  call void @llvm.dbg.declare(metadata ptr %__dummy128, metadata !4207, metadata !DIExpression()), !dbg !4932
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2129) #10, !dbg !4932
  call void @llvm.dbg.declare(metadata ptr %__dummy2129, metadata !4210, metadata !DIExpression()), !dbg !4932
  %cmp130 = icmp eq ptr %__dummy128, %__dummy2129, !dbg !4932
  %conv131 = zext i1 %cmp130 to i32, !dbg !4932
  store i32 1, ptr %tmp132, align 4, !dbg !4932
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2129) #10, !dbg !4933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy128) #10, !dbg !4933
  %116 = load i32, ptr %tmp132, align 4, !dbg !4932
  %117 = load ptr, ptr %desc, align 8, !dbg !4933
  %lock133 = getelementptr inbounds %struct.irq_desc, ptr %117, i32 0, i32 15, !dbg !4933
  %118 = load i64, ptr %flags, align 8, !dbg !4933
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock133, i64 noundef %118) #11, !dbg !4933
  br label %do.cond134, !dbg !4933

do.cond134:                                       ; preds = %do.body127
  br label %do.end135, !dbg !4933

do.end135:                                        ; preds = %do.cond134
  br label %outsparse, !dbg !4933

outsparse:                                        ; preds = %do.end135, %if.then54, %if.then27
  call void @llvm.dbg.label(metadata !4211), !dbg !4934
  call void @rcu_read_unlock() #11, !dbg !4935
  store i32 0, ptr %retval, align 4, !dbg !4936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4936

cleanup:                                          ; preds = %outsparse, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #10, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %any_count) #10, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !4937
  %119 = load i32, ptr %retval, align 4, !dbg !4937
  ret i32 %119, !dbg !4937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4938 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !4941 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4948, metadata !DIExpression()), !dbg !4954
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4949, metadata !DIExpression()), !dbg !4955
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4950, metadata !DIExpression()), !dbg !4956
  %0 = load i64, ptr %size.addr, align 8, !dbg !4957
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4957
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !4957

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4957
  %cmp = icmp ule i64 %2, 64, !dbg !4957
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !4957

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !4957
  %cmp2 = icmp ugt i64 %3, 0, !dbg !4957
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !4958

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !4959
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4951, metadata !DIExpression()), !dbg !4960
  %4 = load i64, ptr %offset.addr, align 8, !dbg !4961
  %5 = load i64, ptr %size.addr, align 8, !dbg !4961
  %cmp3 = icmp uge i64 %4, %5, !dbg !4961
  %lnot = xor i1 %cmp3, true, !dbg !4961
  %lnot4 = xor i1 %lnot, true, !dbg !4961
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4961
  %conv = sext i32 %lnot.ext to i64, !dbg !4961
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4961
  %tobool = icmp ne i64 %expval, 0, !dbg !4961
  br i1 %tobool, label %if.then5, label %if.end, !dbg !4963

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4964
  store i64 %6, ptr %retval, align 8, !dbg !4965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4965

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !4966
  %8 = load i64, ptr %7, align 8, !dbg !4967
  %9 = load i64, ptr %offset.addr, align 8, !dbg !4968
  %shl = shl i64 1, %9, !dbg !4968
  %sub = sub i64 -1, %shl, !dbg !4968
  %add = add i64 %sub, 1, !dbg !4968
  %10 = load i64, ptr %size.addr, align 8, !dbg !4968
  %sub6 = sub i64 %10, 1, !dbg !4968
  %sub7 = sub i64 63, %sub6, !dbg !4968
  %shr = lshr i64 -1, %sub7, !dbg !4968
  %and = and i64 %add, %shr, !dbg !4968
  %add8 = add i64 0, %and, !dbg !4968
  %and9 = and i64 %8, %add8, !dbg !4969
  store i64 %and9, ptr %val, align 8, !dbg !4970
  %11 = load i64, ptr %val, align 8, !dbg !4971
  %tobool10 = icmp ne i64 %11, 0, !dbg !4971
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !4971

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !4972
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4972
  br i1 %13, label %cond.true11, label %cond.false, !dbg !4972

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !4972
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !4972
  %cast = trunc i64 %15 to i32, !dbg !4972
  %conv12 = sext i32 %cast to i64, !dbg !4972
  br label %cond.end, !dbg !4972

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !4972
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !4972
  br label %cond.end, !dbg !4972

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !4972
  br label %cond.end14, !dbg !4971

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !4973
  br label %cond.end14, !dbg !4971

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !4971
  store i64 %cond15, ptr %retval, align 8, !dbg !4974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4974

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !4975
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !4976
  %19 = load i64, ptr %size.addr, align 8, !dbg !4977
  %20 = load i64, ptr %offset.addr, align 8, !dbg !4978
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !4979
  store i64 %call17, ptr %retval, align 8, !dbg !4980
  br label %return, !dbg !4980

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !4981
  ret i64 %21, !dbg !4981
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4982 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !4985 {
entry:
  call void @__rcu_read_lock() #11, !dbg !4987
  br label %do.body, !dbg !4988

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4989

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4991

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4992

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4994
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_hidden(ptr noundef %desc) #4 align 16 !dbg !4995 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5001
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !5002
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !5002
  %and = and i32 %1, 1048576, !dbg !5003
  %tobool = icmp ne i32 %and, 0, !dbg !5001
  ret i1 %tobool, !dbg !5004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_disable_current() #4 align 16 !dbg !5005 {
entry:
  ret void, !dbg !5007
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_enable_current() #4 align 16 !dbg !5008 {
entry:
  ret void, !dbg !5009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_desc_is_chained(ptr noundef %desc) #4 align 16 !dbg !5010 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5017
  %action = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4, !dbg !5018
  %1 = load ptr, ptr %action, align 16, !dbg !5018
  %tobool = icmp ne ptr %1, null, !dbg !5017
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5019

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5020
  %action1 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 4, !dbg !5021
  %3 = load ptr, ptr %action1, align 16, !dbg !5021
  %cmp = icmp eq ptr %3, @chained_action, !dbg !5022
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5023
  %land.ext = zext i1 %4 to i32, !dbg !5019
  ret i32 %land.ext, !dbg !5024
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5025 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5030 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !5033 {
entry:
  br label %do.body, !dbg !5034

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5035

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #11, !dbg !5037
  br label %do.body1, !dbg !5038

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5039

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5042 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_affinity_proc_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5046 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5048, metadata !DIExpression()), !dbg !5050
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5049, metadata !DIExpression()), !dbg !5051
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5052
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5053
  %call = call ptr @pde_data(ptr noundef %1) #11, !dbg !5054
  %call1 = call i32 @single_open(ptr noundef %0, ptr noundef @irq_affinity_proc_show, ptr noundef %call) #11, !dbg !5055
  ret i32 %call1, !dbg !5056
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @irq_affinity_proc_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %pos) #0 align 16 !dbg !5057 {
entry:
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5059, metadata !DIExpression()), !dbg !5063
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5060, metadata !DIExpression()), !dbg !5064
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5061, metadata !DIExpression()), !dbg !5065
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5062, metadata !DIExpression()), !dbg !5066
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5067
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !5068
  %2 = load i64, ptr %count.addr, align 8, !dbg !5069
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !5070
  %call = call i64 @write_irq_affinity(i32 noundef 0, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #11, !dbg !5071
  ret i64 %call, !dbg !5072
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5073 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_affinity_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5076 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5079, metadata !DIExpression()), !dbg !5081
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5082
  %call = call i32 @show_irq_affinity(i32 noundef 0, ptr noundef %0) #11, !dbg !5083
  ret i32 %call, !dbg !5084
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pde_data(ptr noundef %inode) #4 align 16 !dbg !5085 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5091
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !5092
  %1 = load ptr, ptr %i_private, align 8, !dbg !5092
  ret ptr %1, !dbg !5093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_irq_affinity(i32 noundef %type, ptr noundef %m) #0 align 16 !dbg !5094 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %mask = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5098, metadata !DIExpression()), !dbg !5102
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5099, metadata !DIExpression()), !dbg !5103
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5100, metadata !DIExpression()), !dbg !5105
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5106
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5107
  %1 = load ptr, ptr %private, align 8, !dbg !5107
  %2 = ptrtoint ptr %1 to i64, !dbg !5108
  %conv = trunc i64 %2 to i32, !dbg !5108
  %call = call ptr @irq_to_desc(i32 noundef %conv) #11, !dbg !5109
  store ptr %call, ptr %desc, align 8, !dbg !5105
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !5110
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5101, metadata !DIExpression()), !dbg !5111
  %3 = load i32, ptr %type.addr, align 4, !dbg !5112
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
  ], !dbg !5113

sw.bb:                                            ; preds = %entry, %entry
  %4 = load ptr, ptr %desc, align 8, !dbg !5114
  %irq_common_data = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 0, !dbg !5116
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data, i32 0, i32 4, !dbg !5117
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %affinity, i64 0, i64 0, !dbg !5114
  store ptr %arraydecay, ptr %mask, align 8, !dbg !5118
  %5 = load ptr, ptr %desc, align 8, !dbg !5119
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, !dbg !5121
  %call1 = call zeroext i1 @irqd_is_setaffinity_pending(ptr noundef %irq_data) #11, !dbg !5122
  br i1 %call1, label %if.then, label %if.end, !dbg !5123

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr %desc, align 8, !dbg !5124
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 20, !dbg !5125
  %arraydecay2 = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask, i64 0, i64 0, !dbg !5124
  store ptr %arraydecay2, ptr %mask, align 8, !dbg !5126
  br label %if.end, !dbg !5127

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !5128

sw.bb3:                                           ; preds = %entry, %entry
  %7 = load ptr, ptr %desc, align 8, !dbg !5129
  %irq_data4 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, !dbg !5130
  %call5 = call ptr @irq_data_get_effective_affinity_mask(ptr noundef %irq_data4) #11, !dbg !5131
  store ptr %call5, ptr %mask, align 8, !dbg !5132
  br label %sw.epilog, !dbg !5133

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5134

sw.epilog:                                        ; preds = %sw.bb3, %if.end
  %8 = load i32, ptr %type.addr, align 4, !dbg !5135
  switch i32 %8, label %sw.epilog11 [
    i32 1, label %sw.bb6
    i32 3, label %sw.bb6
    i32 0, label %sw.bb8
    i32 2, label %sw.bb8
  ], !dbg !5136

sw.bb6:                                           ; preds = %sw.epilog, %sw.epilog
  %9 = load ptr, ptr %m.addr, align 8, !dbg !5137
  %10 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5139
  %11 = load ptr, ptr %mask, align 8, !dbg !5139
  %bits = getelementptr inbounds %struct.cpumask, ptr %11, i32 0, i32 0, !dbg !5139
  %arraydecay7 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5139
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef @.str.24, i32 noundef %10, ptr noundef %arraydecay7) #11, !dbg !5140
  br label %sw.epilog11, !dbg !5141

sw.bb8:                                           ; preds = %sw.epilog, %sw.epilog
  %12 = load ptr, ptr %m.addr, align 8, !dbg !5142
  %13 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5143
  %14 = load ptr, ptr %mask, align 8, !dbg !5143
  %bits9 = getelementptr inbounds %struct.cpumask, ptr %14, i32 0, i32 0, !dbg !5143
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %bits9, i64 0, i64 0, !dbg !5143
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef @.str.25, i32 noundef %13, ptr noundef %arraydecay10) #11, !dbg !5144
  br label %sw.epilog11, !dbg !5145

sw.epilog11:                                      ; preds = %sw.epilog, %sw.bb8, %sw.bb6
  store i32 0, ptr %retval, align 4, !dbg !5146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5146

cleanup:                                          ; preds = %sw.epilog11, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !5147
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !5147
  %15 = load i32, ptr %retval, align 4, !dbg !5147
  ret i32 %15, !dbg !5147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_setaffinity_pending(ptr noundef %d) #4 align 16 !dbg !5148 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5154
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !5154
  %1 = load ptr, ptr %common, align 8, !dbg !5154
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !5154
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !5154
  %and = and i32 %2, 256, !dbg !5155
  %tobool = icmp ne i32 %and, 0, !dbg !5154
  ret i1 %tobool, !dbg !5156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_get_effective_affinity_mask(ptr noundef %d) #4 align 16 !dbg !5157 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5163
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !5164
  %1 = load ptr, ptr %common, align 8, !dbg !5164
  %effective_affinity = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 5, !dbg !5165
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %effective_affinity, i64 0, i64 0, !dbg !5163
  ret ptr %arraydecay, !dbg !5166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @write_irq_affinity(i32 noundef %type, ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %pos) #0 align 16 !dbg !5167 {
entry:
  %retval = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %irq = alloca i32, align 4
  %new_value = alloca [1 x %struct.cpumask], align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5171, metadata !DIExpression()), !dbg !5180
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5172, metadata !DIExpression()), !dbg !5181
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5173, metadata !DIExpression()), !dbg !5182
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5174, metadata !DIExpression()), !dbg !5183
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5175, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #10, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !5176, metadata !DIExpression()), !dbg !5186
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5187
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !5188
  %call1 = call ptr @pde_data(ptr noundef %call) #11, !dbg !5189
  %1 = ptrtoint ptr %call1 to i64, !dbg !5190
  %conv = trunc i64 %1 to i32, !dbg !5191
  store i32 %conv, ptr %irq, align 4, !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_value) #10, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %new_value, metadata !5177, metadata !DIExpression()), !dbg !5193
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5178, metadata !DIExpression()), !dbg !5195
  %2 = load i32, ptr %irq, align 4, !dbg !5196
  %call2 = call zeroext i1 @irq_can_set_affinity_usr(i32 noundef %2) #11, !dbg !5198
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !5199

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr @no_irq_affinity, align 4, !dbg !5200
  %tobool = icmp ne i32 %3, 0, !dbg !5200
  br i1 %tobool, label %if.then, label %if.end, !dbg !5201

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -5, ptr %retval, align 8, !dbg !5202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5202

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %new_value, i32 noundef 3264) #11, !dbg !5203
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5205

if.then4:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !5206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5206

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %type.addr, align 4, !dbg !5207
  %tobool6 = icmp ne i32 %4, 0, !dbg !5207
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !5209

if.then7:                                         ; preds = %if.end5
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !5210
  %6 = load i64, ptr %count.addr, align 8, !dbg !5211
  %conv8 = trunc i64 %6 to i32, !dbg !5211
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5212
  %call9 = call i32 @cpumask_parselist_user(ptr noundef %5, i32 noundef %conv8, ptr noundef %arraydecay) #11, !dbg !5213
  store i32 %call9, ptr %err, align 4, !dbg !5214
  br label %if.end13, !dbg !5215

if.else:                                          ; preds = %if.end5
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !5216
  %8 = load i64, ptr %count.addr, align 8, !dbg !5217
  %conv10 = trunc i64 %8 to i32, !dbg !5217
  %arraydecay11 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5218
  %call12 = call i32 @cpumask_parse_user(ptr noundef %7, i32 noundef %conv10, ptr noundef %arraydecay11) #11, !dbg !5219
  store i32 %call12, ptr %err, align 4, !dbg !5220
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %9 = load i32, ptr %err, align 4, !dbg !5221
  %tobool14 = icmp ne i32 %9, 0, !dbg !5221
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5223

if.then15:                                        ; preds = %if.end13
  br label %free_cpumask, !dbg !5224

if.end16:                                         ; preds = %if.end13
  %arraydecay17 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5225
  %call18 = call zeroext i1 @cpumask_intersects(ptr noundef %arraydecay17, ptr noundef @__cpu_online_mask) #11, !dbg !5227
  br i1 %call18, label %if.else23, label %if.then19, !dbg !5228

if.then19:                                        ; preds = %if.end16
  %10 = load i32, ptr %irq, align 4, !dbg !5229
  %call20 = call i32 @irq_select_affinity_usr(i32 noundef %10) #11, !dbg !5231
  %tobool21 = icmp ne i32 %call20, 0, !dbg !5231
  br i1 %tobool21, label %cond.true, label %cond.false, !dbg !5231

cond.true:                                        ; preds = %if.then19
  br label %cond.end, !dbg !5231

cond.false:                                       ; preds = %if.then19
  %11 = load i64, ptr %count.addr, align 8, !dbg !5232
  br label %cond.end, !dbg !5231

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -22, %cond.true ], [ %11, %cond.false ], !dbg !5231
  %conv22 = trunc i64 %cond to i32, !dbg !5231
  store i32 %conv22, ptr %err, align 4, !dbg !5233
  br label %if.end30, !dbg !5234

if.else23:                                        ; preds = %if.end16
  %12 = load i32, ptr %irq, align 4, !dbg !5235
  %arraydecay24 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5237
  %call25 = call i32 @irq_set_affinity(i32 noundef %12, ptr noundef %arraydecay24) #11, !dbg !5238
  store i32 %call25, ptr %err, align 4, !dbg !5239
  %13 = load i32, ptr %err, align 4, !dbg !5240
  %tobool26 = icmp ne i32 %13, 0, !dbg !5240
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !5242

if.then27:                                        ; preds = %if.else23
  %14 = load i64, ptr %count.addr, align 8, !dbg !5243
  %conv28 = trunc i64 %14 to i32, !dbg !5243
  store i32 %conv28, ptr %err, align 4, !dbg !5244
  br label %if.end29, !dbg !5245

if.end29:                                         ; preds = %if.then27, %if.else23
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %cond.end
  br label %free_cpumask, !dbg !5246

free_cpumask:                                     ; preds = %if.end30, %if.then15
  call void @llvm.dbg.label(metadata !5179), !dbg !5247
  %arraydecay31 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5248
  call void @free_cpumask_var(ptr noundef %arraydecay31) #11, !dbg !5249
  %15 = load i32, ptr %err, align 4, !dbg !5250
  %conv32 = sext i32 %15 to i64, !dbg !5250
  store i64 %conv32, ptr %retval, align 8, !dbg !5251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5251

cleanup:                                          ; preds = %free_cpumask, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_value) #10, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #10, !dbg !5252
  %16 = load i64, ptr %retval, align 8, !dbg !5252
  ret i64 %16, !dbg !5252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #4 align 16 !dbg !5253 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5257, metadata !DIExpression()), !dbg !5258
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5259
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5260
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5260
  ret ptr %1, !dbg !5261
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5262 dso_local zeroext i1 @irq_can_set_affinity_usr(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !5265 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5270, metadata !DIExpression()), !dbg !5272
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5271, metadata !DIExpression()), !dbg !5273
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !5274
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !5275
  call void @cpumask_clear(ptr noundef %arraydecay) #11, !dbg !5276
  ret i1 true, !dbg !5277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_parselist_user(ptr noundef %buf, i32 noundef %len, ptr noundef %dstp) #4 align 16 !dbg !5278 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5282, metadata !DIExpression()), !dbg !5285
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5283, metadata !DIExpression()), !dbg !5286
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5284, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5288
  %1 = load i32, ptr %len.addr, align 4, !dbg !5289
  %2 = load ptr, ptr %dstp.addr, align 8, !dbg !5290
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !5290
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5290
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5291
  %call = call i32 @bitmap_parselist_user(ptr noundef %0, i32 noundef %1, ptr noundef %arraydecay, i32 noundef %3) #11, !dbg !5292
  ret i32 %call, !dbg !5293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_parse_user(ptr noundef %buf, i32 noundef %len, ptr noundef %dstp) #4 align 16 !dbg !5294 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5296, metadata !DIExpression()), !dbg !5299
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5297, metadata !DIExpression()), !dbg !5300
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5298, metadata !DIExpression()), !dbg !5301
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5302
  %1 = load i32, ptr %len.addr, align 4, !dbg !5303
  %2 = load ptr, ptr %dstp.addr, align 8, !dbg !5304
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !5304
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5304
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5305
  %call = call i32 @bitmap_parse_user(ptr noundef %0, i32 noundef %1, ptr noundef %arraydecay, i32 noundef %3) #11, !dbg !5306
  ret i32 %call, !dbg !5307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_intersects(ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !5308 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !5312, metadata !DIExpression()), !dbg !5314
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !5313, metadata !DIExpression()), !dbg !5315
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !5316
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5316
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5316
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !5317
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5317
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !5317
  %call = call zeroext i1 @bitmap_intersects(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #11, !dbg !5318
  ret i1 %call, !dbg !5319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_select_affinity_usr(i32 noundef %irq) #4 align 16 !dbg !5320 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  ret i32 -22, !dbg !5326
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5327 dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !5330 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  ret void, !dbg !5336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #4 align 16 !dbg !5337 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5341
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5341
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5341
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #11, !dbg !5342
  ret void, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #4 align 16 !dbg !5344 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5349, metadata !DIExpression()), !dbg !5352
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5350, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5351, metadata !DIExpression()), !dbg !5355
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5356
  %add = add i32 %0, 63, !dbg !5356
  %and = and i32 %add, -64, !dbg !5356
  %div = udiv i32 %and, 8, !dbg !5356
  store i32 %div, ptr %len, align 4, !dbg !5355
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5357
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5357
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5357

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5357
  %cmp = icmp ule i32 %3, 64, !dbg !5357
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5357

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5357
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5357
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5359

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5360
  store i64 0, ptr %5, align 8, !dbg !5361
  br label %if.end, !dbg !5362

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5363
  %7 = load i32, ptr %len, align 4, !dbg !5364
  %conv = zext i32 %7 to i64, !dbg !5364
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5365
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !5366
  ret void, !dbg !5366
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5367 dso_local i32 @bitmap_parselist_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5370 dso_local i32 @bitmap_parse_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_intersects(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !5371 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !5375, metadata !DIExpression()), !dbg !5378
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !5376, metadata !DIExpression()), !dbg !5379
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5377, metadata !DIExpression()), !dbg !5380
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5381
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5381
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !5381

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5381
  %cmp = icmp ule i32 %2, 64, !dbg !5381
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5381

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5381
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5381
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5383

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !5384
  %5 = load i64, ptr %4, align 8, !dbg !5385
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !5386
  %7 = load i64, ptr %6, align 8, !dbg !5387
  %and = and i64 %5, %7, !dbg !5388
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5389
  %sub = sub i32 0, %8, !dbg !5389
  %and3 = and i32 %sub, 63, !dbg !5389
  %sh_prom = zext i32 %and3 to i64, !dbg !5389
  %shr = lshr i64 -1, %sh_prom, !dbg !5389
  %and4 = and i64 %and, %shr, !dbg !5390
  %cmp5 = icmp ne i64 %and4, 0, !dbg !5391
  store i1 %cmp5, ptr %retval, align 1, !dbg !5392
  br label %return, !dbg !5392

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %src1.addr, align 8, !dbg !5393
  %10 = load ptr, ptr %src2.addr, align 8, !dbg !5394
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !5395
  %call = call zeroext i1 @__bitmap_intersects(ptr noundef %9, ptr noundef %10, i32 noundef %11) #11, !dbg !5396
  store i1 %call, ptr %retval, align 1, !dbg !5397
  br label %return, !dbg !5397

return:                                           ; preds = %if.else, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !5398
  ret i1 %12, !dbg !5398
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5399 dso_local zeroext i1 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #4 align 16 !dbg !5400 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5404, metadata !DIExpression()), !dbg !5406
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5405, metadata !DIExpression()), !dbg !5407
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5408
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5408
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5408
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !5409
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5409
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !5409
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #11, !dbg !5410
  ret void, !dbg !5411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !5412 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5416, metadata !DIExpression()), !dbg !5420
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5417, metadata !DIExpression()), !dbg !5421
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5418, metadata !DIExpression()), !dbg !5422
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5419, metadata !DIExpression()), !dbg !5424
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5425
  %add = add i32 %0, 63, !dbg !5425
  %and = and i32 %add, -64, !dbg !5425
  %div = udiv i32 %and, 8, !dbg !5425
  store i32 %div, ptr %len, align 4, !dbg !5424
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5426
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5426
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5426

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5426
  %cmp = icmp ule i32 %3, 64, !dbg !5426
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5426

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5426
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5426
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5428

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5429
  %6 = load i64, ptr %5, align 8, !dbg !5430
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5431
  store i64 %6, ptr %7, align 8, !dbg !5432
  br label %if.end, !dbg !5433

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5434
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5435
  %10 = load i32, ptr %len, align 4, !dbg !5436
  %conv = zext i32 %10 to i64, !dbg !5436
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !5437
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !5438
  ret void, !dbg !5438
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_affinity_list_proc_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5439 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5441, metadata !DIExpression()), !dbg !5443
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5442, metadata !DIExpression()), !dbg !5444
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5445
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5446
  %call = call ptr @pde_data(ptr noundef %1) #11, !dbg !5447
  %call1 = call i32 @single_open(ptr noundef %0, ptr noundef @irq_affinity_list_proc_show, ptr noundef %call) #11, !dbg !5448
  ret i32 %call1, !dbg !5449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @irq_affinity_list_proc_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %pos) #0 align 16 !dbg !5450 {
entry:
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5452, metadata !DIExpression()), !dbg !5456
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5453, metadata !DIExpression()), !dbg !5457
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5454, metadata !DIExpression()), !dbg !5458
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5455, metadata !DIExpression()), !dbg !5459
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5460
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !5461
  %2 = load i64, ptr %count.addr, align 8, !dbg !5462
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !5463
  %call = call i64 @write_irq_affinity(i32 noundef 1, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #11, !dbg !5464
  ret i64 %call, !dbg !5465
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_affinity_list_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5466 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5468, metadata !DIExpression()), !dbg !5470
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5469, metadata !DIExpression()), !dbg !5471
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5472
  %call = call i32 @show_irq_affinity(i32 noundef 1, ptr noundef %0) #11, !dbg !5473
  ret i32 %call, !dbg !5474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_desc_get_node(ptr noundef %desc) #4 align 16 !dbg !5475 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5479
  %irq_common_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 0, !dbg !5480
  %call = call i32 @irq_common_data_get_node(ptr noundef %irq_common_data) #11, !dbg !5481
  ret i32 %call, !dbg !5482
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_common_data_get_node(ptr noundef %d) #4 align 16 !dbg !5483 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5489
  %node = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1, !dbg !5490
  %1 = load i32, ptr %node, align 4, !dbg !5490
  ret i32 %1, !dbg !5491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5492 dso_local i32 @jiffies_to_msecs(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5496 dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @default_affinity_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5499 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5501, metadata !DIExpression()), !dbg !5503
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5502, metadata !DIExpression()), !dbg !5504
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5505
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5506
  %call = call ptr @pde_data(ptr noundef %1) #11, !dbg !5507
  %call1 = call i32 @single_open(ptr noundef %0, ptr noundef @default_affinity_show, ptr noundef %call) #11, !dbg !5508
  ret i32 %call1, !dbg !5509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @default_affinity_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5510 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %new_value = alloca [1 x %struct.cpumask], align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5512, metadata !DIExpression()), !dbg !5519
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5513, metadata !DIExpression()), !dbg !5520
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5514, metadata !DIExpression()), !dbg !5521
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5515, metadata !DIExpression()), !dbg !5522
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_value) #10, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %new_value, metadata !5516, metadata !DIExpression()), !dbg !5524
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5525
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5517, metadata !DIExpression()), !dbg !5526
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %new_value, i32 noundef 3264) #11, !dbg !5527
  br i1 %call, label %if.end, label %if.then, !dbg !5529

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5530

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5531
  %1 = load i64, ptr %count.addr, align 8, !dbg !5532
  %conv = trunc i64 %1 to i32, !dbg !5532
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5533
  %call1 = call i32 @cpumask_parse_user(ptr noundef %0, i32 noundef %conv, ptr noundef %arraydecay) #11, !dbg !5534
  store i32 %call1, ptr %err, align 4, !dbg !5535
  %2 = load i32, ptr %err, align 4, !dbg !5536
  %tobool = icmp ne i32 %2, 0, !dbg !5536
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5538

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !5539

if.end3:                                          ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5540
  %call5 = call zeroext i1 @cpumask_intersects(ptr noundef %arraydecay4, ptr noundef @__cpu_online_mask) #11, !dbg !5542
  br i1 %call5, label %if.end7, label %if.then6, !dbg !5543

if.then6:                                         ; preds = %if.end3
  store i32 -22, ptr %err, align 4, !dbg !5544
  br label %out, !dbg !5546

if.end7:                                          ; preds = %if.end3
  %arraydecay8 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5547
  call void @cpumask_copy(ptr noundef @irq_default_affinity, ptr noundef %arraydecay8) #11, !dbg !5548
  %3 = load i64, ptr %count.addr, align 8, !dbg !5549
  %conv9 = trunc i64 %3 to i32, !dbg !5549
  store i32 %conv9, ptr %err, align 4, !dbg !5550
  br label %out, !dbg !5551

out:                                              ; preds = %if.end7, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !5518), !dbg !5552
  %arraydecay10 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5553
  call void @free_cpumask_var(ptr noundef %arraydecay10) #11, !dbg !5554
  %4 = load i32, ptr %err, align 4, !dbg !5555
  %conv11 = sext i32 %4 to i64, !dbg !5555
  store i64 %conv11, ptr %retval, align 8, !dbg !5556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5556

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5557
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_value) #10, !dbg !5557
  %5 = load i64, ptr %retval, align 8, !dbg !5557
  ret i64 %5, !dbg !5557
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @default_affinity_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5558 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5560, metadata !DIExpression()), !dbg !5562
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5561, metadata !DIExpression()), !dbg !5563
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5564
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5565
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.25, i32 noundef %1, ptr noundef @irq_default_affinity) #11, !dbg !5566
  ret i32 0, !dbg !5567
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !5568 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load i64, ptr %word.addr, align 8, !dbg !5575
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !5576, !srcloc !5577
  store i64 %1, ptr %word.addr, align 8, !dbg !5576
  %2 = load i64, ptr %word.addr, align 8, !dbg !5578
  ret i64 %2, !dbg !5579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5580 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5581 dso_local void @__rcu_read_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5582 dso_local void @__rcu_read_unlock() #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(read) }

!llvm.dbg.cu = !{!4070}
!llvm.module.flags = !{!4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299}
!llvm.ident = !{!4300}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/irq/proc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b9f7c50f63038e58b0f2fff8e1b0c8c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "register_lock", scope: !9, file: !2, line: 340, type: !124, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "register_irq_proc", scope: !2, file: !2, line: 338, type: !10, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4283)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !15, line: 55, size: 3584, align: 512, elements: !16)
!15 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!16 = !{!17, !40, !3986, !3987, !3993, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4036, !4037, !4038, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !14, file: !15, line: 56, baseType: !18, size: 320)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !19, line: 147, size: 320, elements: !20)
!19 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!20 = !{!21, !22, !23, !25, !28, !39}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !18, file: !19, line: 148, baseType: !12, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 150, baseType: !12, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !18, file: !19, line: 152, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !18, file: !19, line: 153, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !19, line: 129, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !18, file: !19, line: 155, baseType: !29, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !30, line: 913, baseType: !31)
!30 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !37)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !30, line: 19, size: 64, elements: !33)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !32, file: !30, line: 19, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !37)
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38}
!38 = !DISubrange(count: 1)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !18, file: !19, line: 158, baseType: !29, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !14, file: !15, line: 57, baseType: !41, size: 448, offset: 320)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !19, line: 179, size: 448, elements: !42)
!42 = !{!43, !48, !49, !50, !52, !3980, !3984, !3985}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !41, file: !19, line: 180, baseType: !44, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !45, line: 21, baseType: !46)
!45 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !12)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !41, file: !19, line: 181, baseType: !12, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !41, file: !19, line: 182, baseType: !36, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !41, file: !19, line: 183, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !41, file: !19, line: 184, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !19, line: 501, size: 2112, elements: !55)
!55 = !{!56, !59, !64, !68, !69, !70, !71, !72, !73, !74, !75, !85, !89, !93, !94, !95, !96, !97, !98, !99, !100, !3941, !3942, !3943, !3949, !3950, !3961, !3965, !3969, !3973, !3977, !3978, !3979}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !19, line: 502, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !54, file: !19, line: 503, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!12, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !54, file: !19, line: 504, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !63}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !54, file: !19, line: 505, baseType: !65, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !54, file: !19, line: 506, baseType: !65, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !54, file: !19, line: 508, baseType: !65, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !54, file: !19, line: 509, baseType: !65, size: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !54, file: !19, line: 510, baseType: !65, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !54, file: !19, line: 511, baseType: !65, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !54, file: !19, line: 512, baseType: !65, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !54, file: !19, line: 514, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !63, !80, !82}
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !83, line: 35, baseType: !84)
!83 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!84 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !54, file: !19, line: 515, baseType: !86, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!79, !63}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !54, file: !19, line: 516, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!79, !63, !12}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !54, file: !19, line: 517, baseType: !90, size: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !54, file: !19, line: 519, baseType: !65, size: 64, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !54, file: !19, line: 520, baseType: !65, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !54, file: !19, line: 526, baseType: !65, size: 64, offset: 1024)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !54, file: !19, line: 527, baseType: !65, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !54, file: !19, line: 528, baseType: !65, size: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !54, file: !19, line: 530, baseType: !65, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !54, file: !19, line: 532, baseType: !101, size: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !63, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !106, line: 17, size: 960, elements: !107)
!106 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!107 = !{!108, !110, !115, !116, !117, !118, !122, !123, !181, !203, !204, !3940}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !105, file: !106, line: 18, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !105, file: !106, line: 19, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 61, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !113, line: 72, baseType: !114)
!113 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !113, line: 16, baseType: !36)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !105, file: !106, line: 20, baseType: !111, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !105, file: !106, line: 21, baseType: !111, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !105, file: !106, line: 22, baseType: !111, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !105, file: !106, line: 23, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !83, line: 52, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !113, line: 88, baseType: !121)
!121 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !105, file: !106, line: 24, baseType: !119, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !105, file: !106, line: 25, baseType: !124, size: 256, offset: 448)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !125, line: 66, size: 256, elements: !126)
!125 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!126 = !{!127, !136, !170, !175}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !124, file: !125, line: 67, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !129, line: 13, baseType: !130)
!129 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !83, line: 181, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 179, size: 64, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !131, file: !83, line: 180, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !45, line: 22, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !47, line: 30, baseType: !121)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !124, file: !125, line: 68, baseType: !137, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !138, line: 23, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !138, line: 14, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !139, file: !138, line: 15, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !143, line: 44, baseType: !144)
!143 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !143, line: 14, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !143, line: 15, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !143, line: 15, size: 32, elements: !148)
!148 = !{!149, !154, !162}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !147, file: !143, line: 16, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !83, line: 174, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 172, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !151, file: !83, line: 173, baseType: !79, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !143, line: 24, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !143, line: 24, size: 16, elements: !156)
!156 = !{!157, !161}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !155, file: !143, line: 25, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 17, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !160)
!160 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !155, file: !143, line: 26, baseType: !158, size: 8, offset: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !143, line: 28, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !143, line: 28, size: 32, elements: !164)
!164 = !{!165, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !163, file: !143, line: 29, baseType: !166, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 19, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !168)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !163, file: !143, line: 30, baseType: !166, size: 16, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !124, file: !125, line: 70, baseType: !171, size: 32, offset: 96)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !172, line: 15, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !171, file: !172, line: 20, baseType: !150, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !124, file: !125, line: 72, baseType: !176, size: 128, offset: 128)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !83, line: 190, size: 128, elements: !177)
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !83, line: 191, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !176, file: !83, line: 191, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !105, file: !106, line: 26, baseType: !182, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !106, line: 32, size: 256, elements: !185)
!185 = !{!186, !191, !195, !199}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !184, file: !106, line: 33, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!24, !104, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !184, file: !106, line: 34, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !104, !24}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !106, line: 35, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!24, !104, !24, !190}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !184, file: !106, line: 36, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!79, !104, !24}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !105, file: !106, line: 27, baseType: !79, size: 32, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !105, file: !106, line: 28, baseType: !205, size: 64, offset: 832)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 994, size: 1856, align: 64, elements: !209)
!208 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!209 = !{!210, !229, !238, !240, !241, !242, !243, !244, !331, !551, !560, !3930, !3931, !3932, !3933, !3934, !3935, !3937, !3938, !3939}
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !208, line: 995, baseType: !211, size: 128)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !208, line: 995, size: 128, elements: !212)
!212 = !{!213, !219, !228}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !211, file: !208, line: 996, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !215, line: 60, size: 64, elements: !216)
!215 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !215, line: 61, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !211, file: !208, line: 997, baseType: !220, size: 128, align: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !83, line: 232, size: 128, align: 64, elements: !221)
!221 = !{!222, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !83, line: 233, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !220, file: !83, line: 234, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !223}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !211, file: !208, line: 998, baseType: !12, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !207, file: !208, line: 1005, baseType: !230, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !231, line: 29, baseType: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !231, line: 17, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 18, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 18, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !235, file: !231, line: 19, baseType: !139, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !207, file: !208, line: 1006, baseType: !239, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !83, line: 156, baseType: !12)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !207, file: !208, line: 1007, baseType: !128, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !207, file: !208, line: 1008, baseType: !124, size: 256, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !207, file: !208, line: 1009, baseType: !119, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !207, file: !208, line: 1010, baseType: !12, size: 32, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !207, file: !208, line: 1011, baseType: !245, size: 256, offset: 640)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 948, size: 256, elements: !246)
!246 = !{!247, !268, !313, !321, !329, !330}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !245, file: !208, line: 949, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !249, line: 34, baseType: !250)
!249 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 25, size: 64, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !250, file: !249, line: 26, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !254, line: 27, baseType: !255)
!254 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !254, line: 13, size: 64, elements: !256)
!256 = !{!257, !267}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !254, line: 14, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !254, line: 14, size: 32, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !258, file: !254, line: 15, baseType: !150, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 16, baseType: !262, size: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 16, size: 32, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !262, file: !254, line: 18, baseType: !158, size: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !262, file: !254, line: 19, baseType: !266, size: 24, offset: 8)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 24, elements: !5)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !255, file: !254, line: 26, baseType: !142, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !245, file: !208, line: 950, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !271, line: 59, size: 768, elements: !272)
!271 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!272 = !{!273, !279, !280, !281, !294, !295, !302, !303}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !270, file: !271, line: 61, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !275, line: 113, baseType: !276)
!275 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !275, line: 111, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !276, file: !275, line: 112, baseType: !150, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !270, file: !271, line: 62, baseType: !12, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !270, file: !271, line: 63, baseType: !230, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !270, file: !271, line: 65, baseType: !282, size: 256, offset: 128)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !292)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !83, line: 194, size: 64, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !283, file: !83, line: 195, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !83, line: 198, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !83, line: 199, baseType: !286, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !287, file: !83, line: 199, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!292 = !{!293}
!293 = !DISubrange(count: 4)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !270, file: !271, line: 66, baseType: !283, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !270, file: !271, line: 68, baseType: !296, size: 192, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !297, line: 41, baseType: !298)
!297 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !297, line: 37, size: 192, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !298, file: !297, line: 38, baseType: !230, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !298, file: !297, line: 39, baseType: !176, size: 128, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !270, file: !271, line: 69, baseType: !220, size: 128, align: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !270, file: !271, line: 70, baseType: !304, offset: 768)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, elements: !311)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !271, line: 54, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !305, file: !271, line: 55, baseType: !79, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !305, file: !271, line: 56, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !271, line: 56, flags: DIFlagFwdDecl)
!311 = !{!312}
!312 = !DISubrange(count: -1)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !245, file: !208, line: 951, baseType: !314, size: 32, offset: 128)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !271, line: 9, baseType: !12, size: 32, elements: !315)
!315 = !{!316, !317, !318, !319, !320}
!316 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!317 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!318 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!319 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!320 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !245, file: !208, line: 952, baseType: !322, size: 32, offset: 160)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !323, line: 23, baseType: !324)
!323 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 21, size: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !324, file: !323, line: 22, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !83, line: 37, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !113, line: 49, baseType: !12)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !245, file: !208, line: 952, baseType: !322, size: 32, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !245, file: !208, line: 953, baseType: !79, size: 32, offset: 224)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !207, file: !208, line: 1012, baseType: !332, size: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !335, line: 110, size: 1472, elements: !336)
!335 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!336 = !{!337, !338, !339, !346, !347, !348, !349, !350, !351, !352, !353, !362, !363, !364, !365, !366, !367, !495, !496, !497, !498, !499, !530, !534, !538, !546}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !334, file: !335, line: 111, baseType: !128, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !334, file: !335, line: 112, baseType: !322, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !334, file: !335, line: 113, baseType: !340, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !323, line: 28, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 26, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !341, file: !323, line: 27, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !83, line: 38, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !113, line: 50, baseType: !12)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !334, file: !335, line: 114, baseType: !322, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !334, file: !335, line: 115, baseType: !340, size: 32, offset: 160)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !334, file: !335, line: 116, baseType: !322, size: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !334, file: !335, line: 117, baseType: !340, size: 32, offset: 224)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !334, file: !335, line: 118, baseType: !322, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !334, file: !335, line: 119, baseType: !340, size: 32, offset: 288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !334, file: !335, line: 120, baseType: !12, size: 32, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !334, file: !335, line: 121, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !355, line: 24, baseType: !356)
!355 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 24, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !356, file: !355, line: 24, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !45, line: 23, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !361)
!361 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !334, file: !335, line: 122, baseType: !354, size: 64, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !334, file: !335, line: 123, baseType: !354, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !334, file: !335, line: 124, baseType: !354, size: 64, offset: 576)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !334, file: !335, line: 125, baseType: !354, size: 64, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !334, file: !335, line: 127, baseType: !160, size: 8, offset: 704)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !334, file: !335, line: 129, baseType: !368, size: 64, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !370, line: 195, size: 1728, elements: !371)
!370 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!371 = !{!372, !373, !378, !390, !399, !402, !403, !410, !411, !412, !413, !416, !417, !418, !420, !421, !459, !480}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !369, file: !370, line: 196, baseType: !274, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !369, file: !370, line: 197, baseType: !374, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !370, line: 28, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !83, line: 104, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !45, line: 20, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !47, line: 26, baseType: !79)
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 198, baseType: !379, size: 192, offset: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 198, size: 192, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !379, file: !370, line: 199, baseType: !176, size: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !379, file: !370, line: 200, baseType: !383, size: 192, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !384, line: 5, size: 192, align: 64, elements: !385)
!384 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!385 = !{!386, !387, !389}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !383, file: !384, line: 6, baseType: !36, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !383, file: !384, line: 7, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !383, file: !384, line: 8, baseType: !388, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !369, file: !370, line: 205, baseType: !391, size: 320, offset: 256)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !392, line: 48, size: 320, elements: !393)
!392 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!393 = !{!394, !395, !396, !397, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !392, line: 49, baseType: !128, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !391, file: !392, line: 55, baseType: !128, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !391, file: !392, line: 57, baseType: !171, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !391, file: !392, line: 59, baseType: !137, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !391, file: !392, line: 60, baseType: !176, size: 128, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !369, file: !370, line: 206, baseType: !400, size: 64, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !370, line: 206, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !369, file: !370, line: 207, baseType: !24, size: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 208, baseType: !404, size: 64, offset: 704)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 208, size: 64, elements: !405)
!405 = !{!406, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !404, file: !370, line: 209, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !408, line: 8, baseType: !135)
!408 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !404, file: !370, line: 210, baseType: !407, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !369, file: !370, line: 212, baseType: !407, size: 64, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !369, file: !370, line: 213, baseType: !322, size: 32, offset: 832)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !369, file: !370, line: 214, baseType: !340, size: 32, offset: 864)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !369, file: !370, line: 215, baseType: !414, size: 32, offset: 896)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !370, line: 31, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !83, line: 110, baseType: !44)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !369, file: !370, line: 216, baseType: !168, size: 16, offset: 928)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !369, file: !370, line: 217, baseType: !168, size: 16, offset: 944)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !370, line: 221, baseType: !419, size: 16, offset: 960)
!419 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !370, line: 228, baseType: !36, size: 64, offset: 1024)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 245, baseType: !422, size: 320, offset: 1088)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 245, size: 320, elements: !423)
!423 = !{!424, !451}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !422, file: !370, line: 246, baseType: !425, size: 320)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !370, line: 114, size: 320, elements: !426)
!426 = !{!427, !428, !440, !443, !450}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !425, file: !370, line: 116, baseType: !36, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !370, line: 117, baseType: !429, size: 64, offset: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !370, line: 117, size: 64, elements: !430)
!430 = !{!431, !439}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !370, line: 118, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !370, line: 118, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !432, file: !370, line: 120, baseType: !166, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !432, file: !370, line: 121, baseType: !436, size: 48, offset: 16)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 6)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !429, file: !370, line: 127, baseType: !36, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !370, line: 129, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !370, line: 102, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !425, file: !370, line: 130, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !370, line: 108, size: 192, elements: !446)
!446 = !{!447, !448, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !445, file: !370, line: 109, baseType: !220, size: 128, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !445, file: !370, line: 110, baseType: !274, size: 32, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !445, file: !370, line: 111, baseType: !82, size: 8, offset: 160)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !425, file: !370, line: 131, baseType: !57, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !370, line: 247, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !422, file: !370, line: 247, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !452, file: !370, line: 248, baseType: !36, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !452, file: !370, line: 249, baseType: !36, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !370, line: 250, baseType: !441, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !452, file: !370, line: 251, baseType: !444, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !452, file: !370, line: 252, baseType: !109, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 260, baseType: !460, size: 256, offset: 1408)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 260, size: 256, elements: !461)
!461 = !{!462, !468}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !460, file: !370, line: 261, baseType: !463, size: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !370, line: 134, size: 256, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !463, file: !370, line: 135, baseType: !24, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !463, file: !370, line: 136, baseType: !467, size: 256)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !292)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !370, line: 262, baseType: !469, size: 256)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !370, line: 262, size: 256, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !469, file: !370, line: 264, baseType: !176, size: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !469, file: !370, line: 265, baseType: !473, size: 128, offset: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !474, line: 22, size: 128, elements: !475)
!474 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!475 = !{!476, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !473, file: !474, line: 23, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !474, line: 23, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !473, file: !474, line: 24, baseType: !36, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !369, file: !370, line: 280, baseType: !481, size: 64, offset: 1664)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !370, line: 176, size: 192, elements: !483)
!483 = !{!484, !493, !494}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !482, file: !370, line: 177, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !370, line: 171, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!79, !368, !489, !491, !368}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !482, file: !370, line: 178, baseType: !368, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !482, file: !370, line: 179, baseType: !441, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !334, file: !335, line: 130, baseType: !368, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !334, file: !335, line: 131, baseType: !368, size: 64, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !334, file: !335, line: 132, baseType: !368, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !334, file: !335, line: 135, baseType: !24, size: 64, offset: 1024)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !334, file: !335, line: 137, baseType: !500, size: 64, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !502, line: 14, size: 1088, elements: !503)
!502 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!503 = !{!504, !505, !514, !515, !516, !517, !518, !519}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !501, file: !502, line: 15, baseType: !274, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !501, file: !502, line: 17, baseType: !506, size: 320, offset: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !507, line: 22, size: 320, elements: !508)
!507 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!508 = !{!509, !510, !511, !512}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !507, line: 23, baseType: !137, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !506, file: !507, line: 24, baseType: !134, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !506, file: !507, line: 26, baseType: !176, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !506, file: !507, line: 28, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !501, file: !502, line: 19, baseType: !36, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !501, file: !502, line: 20, baseType: !128, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !501, file: !502, line: 23, baseType: !287, size: 128, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !501, file: !502, line: 24, baseType: !322, size: 32, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !501, file: !502, line: 29, baseType: !128, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !501, file: !502, line: 36, baseType: !520, size: 320, offset: 768)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !521, line: 15, size: 320, elements: !522)
!521 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!522 = !{!523, !524, !525, !526, !527, !528, !529}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !521, line: 16, baseType: !137, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !520, file: !521, line: 18, baseType: !79, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !520, file: !521, line: 19, baseType: !79, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !520, file: !521, line: 20, baseType: !79, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !520, file: !521, line: 21, baseType: !79, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !520, file: !521, line: 22, baseType: !36, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !521, line: 23, baseType: !36, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !334, file: !335, line: 138, baseType: !531, size: 64, offset: 1152)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !533, line: 901, flags: DIFlagFwdDecl)
!533 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !334, file: !335, line: 139, baseType: !535, size: 64, offset: 1216)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !537, line: 16, flags: DIFlagFwdDecl)
!537 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !334, file: !335, line: 140, baseType: !539, size: 64, offset: 1280)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !335, line: 25, size: 64, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !540, file: !335, line: 26, baseType: !150, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !540, file: !335, line: 27, baseType: !79, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !540, file: !335, line: 28, baseType: !545, offset: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !311)
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !335, line: 142, baseType: !547, size: 128, offset: 1344)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !335, line: 142, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !547, file: !335, line: 143, baseType: !79, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !547, file: !335, line: 144, baseType: !220, size: 128, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !207, file: !208, line: 1013, baseType: !552, size: 256, offset: 960)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 970, size: 256, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !552, file: !208, line: 971, baseType: !36, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !552, file: !208, line: 972, baseType: !12, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !552, file: !208, line: 973, baseType: !12, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !552, file: !208, line: 974, baseType: !12, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !552, file: !208, line: 975, baseType: !12, size: 32, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !552, file: !208, line: 976, baseType: !119, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !207, file: !208, line: 1014, baseType: !561, size: 128, offset: 1216)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !562, line: 8, size: 128, elements: !563)
!562 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!563 = !{!564, !3929}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !561, file: !562, line: 9, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !567, line: 70, size: 256, elements: !568)
!567 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!568 = !{!569, !3926, !3927, !3928}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !566, file: !567, line: 71, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !572, line: 82, size: 1536, elements: !573)
!572 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!573 = !{!574, !575, !585, !593, !594, !609, !3893, !3895, !3908, !3909, !3910, !3911, !3912, !3918, !3919, !3920}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !571, file: !572, line: 84, baseType: !12, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !571, file: !572, line: 85, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !577, line: 275, baseType: !578)
!577 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !577, line: 275, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !578, file: !577, line: 275, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !577, line: 69, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !577, line: 64, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !582, file: !577, line: 65, baseType: !12, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !571, file: !572, line: 86, baseType: !586, size: 128, offset: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !587, line: 38, size: 128, elements: !588)
!587 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!588 = !{!589, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !587, line: 39, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !586, file: !587, line: 39, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !571, file: !572, line: 87, baseType: !570, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !571, file: !572, line: 88, baseType: !595, size: 128, offset: 256)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !572, line: 49, size: 128, elements: !596)
!596 = !{!597, !606}
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !572, line: 50, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !572, line: 50, size: 64, elements: !599)
!599 = !{!600, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !572, line: 51, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !572, line: 51, size: 64, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !601, file: !572, line: 52, baseType: !44, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !601, file: !572, line: 52, baseType: !44, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !598, file: !572, line: 54, baseType: !359, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !572, line: 56, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !571, file: !572, line: 89, baseType: !610, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 641, size: 4800, elements: !612)
!612 = !{!613, !615, !616, !617, !618, !619, !620, !623, !624, !820, !3709, !3710, !3711, !3712, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3875, !3878, !3879, !3880, !3889, !3890, !3891, !3892}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !611, file: !208, line: 642, baseType: !614, size: 16)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !83, line: 24, baseType: !168)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !611, file: !208, line: 643, baseType: !168, size: 16, offset: 16)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !611, file: !208, line: 644, baseType: !322, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !611, file: !208, line: 645, baseType: !176, size: 128, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !611, file: !208, line: 646, baseType: !340, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !611, file: !208, line: 647, baseType: !12, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !611, file: !208, line: 650, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 607, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !611, file: !208, line: 651, baseType: !621, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !611, file: !208, line: 654, baseType: !625, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1966, size: 2048, align: 512, elements: !628)
!628 = !{!629, !633, !646, !652, !656, !660, !664, !668, !672, !676, !680, !681, !687, !691, !730, !761, !768, !774, !778, !782, !786, !790, !794, !800, !804}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !627, file: !208, line: 1967, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!570, !610, !570, !12}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !627, file: !208, line: 1968, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!57, !570, !610, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !639, line: 10, size: 128, elements: !640)
!639 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!640 = !{!641, !645}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !638, file: !639, line: 11, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !24}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !638, file: !639, line: 12, baseType: !24, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !627, file: !208, line: 1969, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!79, !650, !610, !79}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !355, line: 42, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !627, file: !208, line: 1970, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!621, !610, !79, !82}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !627, file: !208, line: 1972, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!79, !570, !109, !79}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !627, file: !208, line: 1974, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!79, !650, !610, !570, !614, !82}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !627, file: !208, line: 1976, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!79, !570, !610, !570}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !627, file: !208, line: 1977, baseType: !669, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!79, !610, !570}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !627, file: !208, line: 1978, baseType: !673, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!79, !650, !610, !570, !57}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !627, file: !208, line: 1980, baseType: !677, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!79, !650, !610, !570, !614}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !627, file: !208, line: 1982, baseType: !669, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !627, file: !208, line: 1983, baseType: !682, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!79, !650, !610, !570, !614, !685}
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !83, line: 21, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !83, line: 18, baseType: !44)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !627, file: !208, line: 1985, baseType: !688, size: 64, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!79, !650, !610, !570, !610, !570, !12}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !627, file: !208, line: 1987, baseType: !692, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!79, !650, !570, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 226, size: 640, elements: !697)
!697 = !{!698, !699, !700, !710, !719, !720, !726, !727, !728}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !696, file: !208, line: 227, baseType: !12, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !696, file: !208, line: 228, baseType: !614, size: 16, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !208, line: 241, baseType: !701, size: 32, offset: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !208, line: 241, size: 32, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !701, file: !208, line: 242, baseType: !322, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !701, file: !208, line: 243, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !706, line: 16, baseType: !707)
!706 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 14, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !706, line: 15, baseType: !327, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !208, line: 245, baseType: !711, size: 32, offset: 96)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !208, line: 245, size: 32, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !711, file: !208, line: 246, baseType: !340, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !711, file: !208, line: 247, baseType: !715, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !706, line: 20, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 18, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !716, file: !706, line: 19, baseType: !344, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !696, file: !208, line: 249, baseType: !119, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !696, file: !208, line: 250, baseType: !721, size: 128, offset: 192)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !408, line: 13, size: 128, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !721, file: !408, line: 14, baseType: !407, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !721, file: !408, line: 15, baseType: !725, size: 64, offset: 64)
!725 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !696, file: !208, line: 251, baseType: !721, size: 128, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !696, file: !208, line: 252, baseType: !721, size: 128, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !696, file: !208, line: 259, baseType: !729, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !627, file: !208, line: 1988, baseType: !731, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!79, !650, !734, !736, !44, !12}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !738, line: 22, size: 1280, elements: !739)
!738 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !737, file: !738, line: 23, baseType: !44, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !737, file: !738, line: 24, baseType: !614, size: 16, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !737, file: !738, line: 25, baseType: !12, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !737, file: !738, line: 26, baseType: !415, size: 32, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !737, file: !738, line: 27, baseType: !359, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !737, file: !738, line: 28, baseType: !359, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !737, file: !738, line: 41, baseType: !359, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !737, file: !738, line: 42, baseType: !685, size: 32, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !737, file: !738, line: 43, baseType: !685, size: 32, offset: 352)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !737, file: !738, line: 44, baseType: !322, size: 32, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !737, file: !738, line: 45, baseType: !340, size: 32, offset: 416)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !737, file: !738, line: 46, baseType: !119, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !737, file: !738, line: 47, baseType: !721, size: 128, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !737, file: !738, line: 48, baseType: !721, size: 128, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !737, file: !738, line: 49, baseType: !721, size: 128, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !737, file: !738, line: 50, baseType: !721, size: 128, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !737, file: !738, line: 51, baseType: !359, size: 64, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !737, file: !738, line: 52, baseType: !359, size: 64, offset: 1088)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !737, file: !738, line: 53, baseType: !44, size: 32, offset: 1152)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !737, file: !738, line: 54, baseType: !44, size: 32, offset: 1184)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !737, file: !738, line: 55, baseType: !359, size: 64, offset: 1216)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !627, file: !208, line: 1990, baseType: !762, size: 64, offset: 960)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!765, !570, !109, !111}
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !83, line: 66, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !113, line: 73, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !113, line: 15, baseType: !725)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !627, file: !208, line: 1991, baseType: !769, size: 64, offset: 1024)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!79, !610, !772, !359, !359}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 55, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !627, file: !208, line: 1993, baseType: !775, size: 64, offset: 1088)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!79, !610, !79}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !627, file: !208, line: 1994, baseType: !779, size: 64, offset: 1152)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!79, !610, !570, !729, !12, !614}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !627, file: !208, line: 1997, baseType: !783, size: 64, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!79, !650, !610, !729, !614}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !627, file: !208, line: 1999, baseType: !787, size: 64, offset: 1280)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!621, !650, !570, !79}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !627, file: !208, line: 2001, baseType: !791, size: 64, offset: 1344)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!79, !650, !570, !621, !79}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !627, file: !208, line: 2003, baseType: !795, size: 64, offset: 1408)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!79, !650, !570, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !208, line: 76, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !627, file: !208, line: 2005, baseType: !801, size: 64, offset: 1472)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!79, !570, !798}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !627, file: !208, line: 2006, baseType: !805, size: 64, offset: 1536)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!808, !610}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !208, line: 3192, size: 192, elements: !810)
!810 = !{!811, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !809, file: !208, line: 3193, baseType: !812, size: 128)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !813, line: 296, size: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!814 = !{!815, !816, !818}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !812, file: !813, line: 297, baseType: !230, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !812, file: !813, line: 299, baseType: !817, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !83, line: 154, baseType: !12)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !812, file: !813, line: 300, baseType: !24, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !809, file: !208, line: 3194, baseType: !44, size: 32, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !611, file: !208, line: 655, baseType: !821, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1190, size: 10752, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !2018, !2160, !2200, !2283, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2300, !2304, !2305, !2308, !2311, !2314, !2317, !2318, !2319, !2360, !3584, !3585, !3586, !3587, !3588, !3589, !3592, !3594, !3601, !3602, !3603, !3604, !3663, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !822, file: !208, line: 1191, baseType: !176, size: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !822, file: !208, line: 1192, baseType: !685, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !822, file: !208, line: 1193, baseType: !160, size: 8, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !822, file: !208, line: 1194, baseType: !36, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !822, file: !208, line: 1195, baseType: !119, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !822, file: !208, line: 1196, baseType: !830, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2366, size: 576, elements: !832)
!832 = !{!833, !834, !835, !842, !846, !850, !854, !2006, !2007, !2008, !2010, !2011, !2012, !2014, !2015, !2016, !2017}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !831, file: !208, line: 2367, baseType: !57, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !831, file: !208, line: 2368, baseType: !79, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !831, file: !208, line: 2376, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!79, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !841, line: 32, flags: DIFlagFwdDecl)
!841 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!842 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !831, file: !208, line: 2377, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 75, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !831, file: !208, line: 2378, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!570, !830, !79, !57, !24}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !831, file: !208, line: 2380, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !821}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !831, file: !208, line: 2381, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !857, line: 402, size: 9216, align: 512, elements: !858)
!857 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!858 = !{!859, !866, !867, !871, !1662, !1688, !1689, !1690, !1691, !1695, !1698, !1699, !1700, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1768, !1772, !1792, !1810, !1811, !1812, !1813, !1822, !1845, !1846, !1849, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1863, !1864, !1964, !1972, !1973, !1974, !1976, !1980, !1981, !1985, !1986, !1987, !1988, !1990, !1991, !1992, !1999, !2000, !2001, !2005}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !856, file: !857, line: 403, baseType: !860, size: 32)
!860 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !857, line: 312, baseType: !12, size: 32, elements: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!863 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!864 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!865 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !856, file: !857, line: 406, baseType: !176, size: 128, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !856, file: !857, line: 409, baseType: !868, size: 448, offset: 192)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 56)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !856, file: !857, line: 417, baseType: !872, size: 768, offset: 640)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !857, line: 45, size: 768, elements: !873)
!873 = !{!874, !1645, !1646, !1647, !1650}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !872, file: !857, line: 46, baseType: !875, size: 512)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !876, line: 64, size: 512, elements: !877)
!876 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!877 = !{!878, !879, !880, !882, !926, !1540, !1635, !1640, !1641, !1642, !1643, !1644}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !875, file: !876, line: 65, baseType: !57, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !875, file: !876, line: 66, baseType: !176, size: 128, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !875, file: !876, line: 67, baseType: !881, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !875, file: !876, line: 68, baseType: !883, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !876, line: 168, size: 768, elements: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !884, file: !876, line: 169, baseType: !176, size: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !884, file: !876, line: 170, baseType: !230, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !884, file: !876, line: 171, baseType: !875, size: 512, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !884, file: !876, line: 172, baseType: !890, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !876, line: 133, size: 192, elements: !893)
!893 = !{!894, !901, !906}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !892, file: !876, line: 134, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!79, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !892, file: !876, line: 135, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!57, !899}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !892, file: !876, line: 136, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!79, !899, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !876, line: 125, size: 20736, elements: !913)
!913 = !{!914, !916, !920, !921, !925}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !912, file: !876, line: 126, baseType: !915, size: 192)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 192, elements: !5)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !912, file: !876, line: 127, baseType: !917, size: 4096, offset: 192)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 4096, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !912, file: !876, line: 128, baseType: !79, size: 32, offset: 4288)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !912, file: !876, line: 129, baseType: !922, size: 16384, offset: 4320)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 2048)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !912, file: !876, line: 130, baseType: !79, size: 32, offset: 20704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !875, file: !876, line: 69, baseType: !927, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !876, line: 116, size: 384, elements: !930)
!930 = !{!931, !935, !954, !1496, !1530, !1534}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !929, file: !876, line: 117, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !881}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !929, file: !876, line: 118, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !939, line: 254, size: 128, elements: !940)
!939 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!940 = !{!941, !950}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !938, file: !939, line: 255, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!765, !881, !945, !109}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !939, line: 30, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !946, file: !939, line: 31, baseType: !57, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !946, file: !939, line: 32, baseType: !614, size: 16, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !938, file: !939, line: 256, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!765, !881, !945, !57, !111}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !929, file: !876, line: 119, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !939, line: 84, size: 320, elements: !959)
!959 = !{!960, !961, !965, !1492, !1494}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !958, file: !939, line: 85, baseType: !57, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !958, file: !939, line: 86, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!614, !881, !945, !79}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !958, file: !939, line: 88, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!614, !881, !969, !79}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !939, line: 175, size: 512, elements: !971)
!971 = !{!972, !973, !974, !975, !1259, !1263, !1264}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !970, file: !939, line: 176, baseType: !946, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !970, file: !939, line: 177, baseType: !111, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !970, file: !939, line: 178, baseType: !24, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !970, file: !939, line: 179, baseType: !976, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 472, size: 1536, align: 64, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !995, !996, !997, !1251, !1252, !1253, !1256, !1257, !1258}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !980, file: !208, line: 473, baseType: !610, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !980, file: !208, line: 474, baseType: !812, size: 128, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !980, file: !208, line: 475, baseType: !391, size: 320, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !980, file: !208, line: 476, baseType: !817, size: 32, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !980, file: !208, line: 477, baseType: !150, size: 32, offset: 544)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !980, file: !208, line: 482, baseType: !988, size: 128, offset: 576)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !384, line: 26, size: 128, elements: !989)
!989 = !{!990, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !988, file: !384, line: 27, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !384, line: 12, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !991, file: !384, line: 13, baseType: !388, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !988, file: !384, line: 28, baseType: !388, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !980, file: !208, line: 483, baseType: !36, size: 64, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !980, file: !208, line: 484, baseType: !36, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !980, file: !208, line: 485, baseType: !998, size: 64, offset: 832)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 404, size: 1280, elements: !1001)
!1001 = !{!1002, !1068, !1138, !1142, !1146, !1152, !1158, !1162, !1167, !1171, !1175, !1179, !1208, !1219, !1223, !1227, !1232, !1236, !1243, !1247}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1000, file: !208, line: 405, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!79, !1006, !1066}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !533, line: 74, size: 512, align: 128, elements: !1008)
!1008 = !{!1009, !1010, !1060, !1065}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !533, line: 75, baseType: !36, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !533, line: 83, baseType: !1011, size: 320, offset: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !533, line: 83, size: 320, elements: !1012)
!1012 = !{!1013, !1034, !1048, !1052, !1059}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !533, line: 84, baseType: !1014, size: 320)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !533, line: 84, size: 320, elements: !1015)
!1015 = !{!1016, !1027, !1028, !1033}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !533, line: 90, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !533, line: 90, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1025, !1026}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1017, file: !533, line: 91, baseType: !176, size: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !533, line: 94, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !533, line: 94, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1021, file: !533, line: 96, baseType: !24, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1021, file: !533, line: 98, baseType: !12, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1017, file: !533, line: 102, baseType: !176, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1017, file: !533, line: 103, baseType: !176, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1014, file: !533, line: 106, baseType: !979, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !533, line: 107, baseType: !1029, size: 64, offset: 192)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !533, line: 107, size: 64, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1029, file: !533, line: 108, baseType: !36, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1029, file: !533, line: 109, baseType: !36, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1014, file: !533, line: 117, baseType: !36, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !533, line: 119, baseType: !1035, size: 320)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !533, line: 119, size: 320, elements: !1036)
!1036 = !{!1037, !1038, !1041, !1042, !1043}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1035, file: !533, line: 124, baseType: !36, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1035, file: !533, line: 125, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !533, line: 125, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1035, file: !533, line: 126, baseType: !36, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1035, file: !533, line: 127, baseType: !36, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !533, line: 128, baseType: !1044, size: 64, offset: 256)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !533, line: 128, size: 64, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1044, file: !533, line: 133, baseType: !36, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1044, file: !533, line: 138, baseType: !128, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !533, line: 141, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !533, line: 141, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1049, file: !533, line: 142, baseType: !36, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !533, line: 144, baseType: !1053, size: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !533, line: 144, size: 128, elements: !1054)
!1054 = !{!1055, !1058}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1053, file: !533, line: 146, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !533, line: 146, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1053, file: !533, line: 147, baseType: !24, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1011, file: !533, line: 161, baseType: !220, size: 128, align: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !533, line: 164, baseType: !1061, size: 32, offset: 384)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !533, line: 164, size: 32, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1061, file: !533, line: 169, baseType: !150, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1061, file: !533, line: 177, baseType: !12, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1007, file: !533, line: 181, baseType: !150, size: 32, offset: 416)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 309, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1000, file: !208, line: 406, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!79, !729, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !533, line: 293, size: 1536, elements: !1074)
!1074 = !{!1075, !1105, !1119}
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !533, line: 295, baseType: !1076, size: 512)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !533, line: 295, size: 512, elements: !1077)
!1077 = !{!1078, !1104}
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !533, line: 296, baseType: !1079, size: 448)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !533, line: 296, size: 448, elements: !1080)
!1080 = !{!1081, !1082, !1091, !1092, !1093, !1102, !1103}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !533, line: 298, baseType: !36, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !533, line: 299, baseType: !1083, size: 128, offset: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !533, line: 299, size: 128, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1083, file: !533, line: 300, baseType: !176, size: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !533, line: 302, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1083, file: !533, line: 302, size: 128, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1087, file: !533, line: 303, baseType: !24, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1087, file: !533, line: 305, baseType: !12, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1079, file: !533, line: 310, baseType: !979, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1079, file: !533, line: 311, baseType: !36, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !533, line: 312, baseType: !1094, size: 64, offset: 320)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !533, line: 312, size: 64, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1094, file: !533, line: 313, baseType: !24, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1094, file: !533, line: 314, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !533, line: 257, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 255, size: 64, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1099, file: !533, line: 256, baseType: !36, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1079, file: !533, line: 316, baseType: !150, size: 32, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1079, file: !533, line: 317, baseType: !150, size: 32, offset: 416)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1076, file: !533, line: 323, baseType: !1007, size: 512, align: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !533, line: 325, baseType: !1106, size: 512, offset: 512)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !533, line: 325, size: 512, elements: !1107)
!1107 = !{!1108, !1118}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !533, line: 326, baseType: !1109, size: 320)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !533, line: 326, size: 320, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1109, file: !533, line: 327, baseType: !36, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1109, file: !533, line: 328, baseType: !36, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1109, file: !533, line: 329, baseType: !36, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1109, file: !533, line: 331, baseType: !150, size: 32, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1109, file: !533, line: 332, baseType: !150, size: 32, offset: 224)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1109, file: !533, line: 333, baseType: !150, size: 32, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1109, file: !533, line: 335, baseType: !12, size: 32, offset: 288)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1106, file: !533, line: 339, baseType: !1007, size: 512, align: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !533, line: 341, baseType: !1120, size: 512, offset: 1024)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !533, line: 341, size: 512, elements: !1121)
!1121 = !{!1122, !1131, !1137}
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !533, line: 342, baseType: !1123, size: 384)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !533, line: 342, size: 384, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1123, file: !533, line: 343, baseType: !36, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1123, file: !533, line: 344, baseType: !36, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1123, file: !533, line: 346, baseType: !24, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1123, file: !533, line: 347, baseType: !24, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1123, file: !533, line: 348, baseType: !24, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1123, file: !533, line: 349, baseType: !24, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !533, line: 352, baseType: !1132, size: 256)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !533, line: 352, size: 256, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1132, file: !533, line: 353, baseType: !36, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1132, file: !533, line: 354, baseType: !36, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1132, file: !533, line: 356, baseType: !176, size: 128, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1120, file: !533, line: 359, baseType: !1007, size: 512, align: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1000, file: !208, line: 409, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!79, !979, !1066}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1000, file: !208, line: 412, baseType: !1143, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!82, !979, !1072}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1000, file: !208, line: 414, baseType: !1147, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 310, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1000, file: !208, line: 416, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!79, !729, !979, !119, !12, !1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1000, file: !208, line: 419, baseType: !1159, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!79, !729, !979, !119, !12, !12, !1006, !24}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1000, file: !208, line: 424, baseType: !1163, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !979, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !83, line: 131, baseType: !359)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1000, file: !208, line: 425, baseType: !1168, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1072, !111, !111}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1000, file: !208, line: 426, baseType: !1172, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!82, !1072, !817}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1000, file: !208, line: 427, baseType: !1176, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1072}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1000, file: !208, line: 428, baseType: !1180, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!765, !1183, !1205}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 373, size: 384, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1192, !1193, !1194, !1195}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1184, file: !208, line: 374, baseType: !729, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1184, file: !208, line: 375, baseType: !119, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1184, file: !208, line: 376, baseType: !1189, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !1183, !725}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1184, file: !208, line: 377, baseType: !24, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1184, file: !208, line: 378, baseType: !79, size: 32, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1184, file: !208, line: 379, baseType: !166, size: 16, offset: 288)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !208, line: 380, baseType: !1196, size: 64, offset: 320)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !208, line: 380, size: 64, elements: !1197)
!1197 = !{!1198, !1201}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1196, file: !208, line: 386, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 386, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1196, file: !208, line: 395, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!765, !24}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1207, line: 17, flags: DIFlagFwdDecl)
!1207 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1000, file: !208, line: 433, baseType: !1209, size: 64, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!79, !979, !1072, !1072, !1212}
!1212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1213, line: 15, baseType: !12, size: 32, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1216 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1217 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1218 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1000, file: !208, line: 435, baseType: !1220, size: 64, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!79, !1072}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1000, file: !208, line: 436, baseType: !1224, size: 64, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!82, !1072, !111, !111}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1000, file: !208, line: 438, baseType: !1228, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1072, !1231, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1000, file: !208, line: 439, baseType: !1233, size: 64, offset: 1024)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!79, !979, !1006}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1000, file: !208, line: 442, baseType: !1237, size: 64, offset: 1088)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!79, !1240, !729, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 66, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1000, file: !208, line: 444, baseType: !1244, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !729}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1000, file: !208, line: 445, baseType: !1248, size: 64, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!79, !1183, !1205}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !208, line: 486, baseType: !36, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !980, file: !208, line: 487, baseType: !391, size: 320, offset: 960)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !980, file: !208, line: 488, baseType: !1254, size: 32, offset: 1280)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1255, line: 8, baseType: !44)
!1255 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !980, file: !208, line: 489, baseType: !230, size: 32, offset: 1312)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !980, file: !208, line: 490, baseType: !176, size: 128, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !980, file: !208, line: 491, baseType: !24, size: 64, offset: 1472)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !970, file: !939, line: 180, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!765, !729, !881, !969, !109, !119, !111}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !970, file: !939, line: 182, baseType: !1260, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !970, file: !939, line: 184, baseType: !1265, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!79, !729, !881, !969, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !533, line: 625, size: 1344, elements: !1270)
!1270 = !{!1271, !1280, !1450, !1456, !1463, !1464, !1469, !1470, !1475, !1476, !1479, !1483, !1484, !1485, !1486, !1487, !1490}
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !533, line: 628, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !533, line: 628, size: 128, elements: !1273)
!1273 = !{!1274, !1279}
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !533, line: 629, baseType: !1275, size: 128)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !533, line: 629, size: 128, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1275, file: !533, line: 631, baseType: !36, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1275, file: !533, line: 632, baseType: !36, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1272, file: !533, line: 635, baseType: !220, size: 128, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1269, file: !533, line: 639, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !533, line: 733, size: 10240, elements: !1283)
!1283 = !{!1284, !1448}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !533, line: 734, baseType: !1285, size: 10240)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !533, line: 734, size: 10240, elements: !1286)
!1286 = !{!1287, !1291, !1305, !1309, !1310, !1311, !1312, !1313, !1314, !1323, !1324, !1325, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1364, !1366, !1369, !1416, !1417, !1418, !1421, !1422, !1423, !1426, !1427, !1428, !1435, !1436}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !533, line: 739, baseType: !1288, size: 512, align: 512)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !533, line: 739, size: 512, align: 512, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1288, file: !533, line: 747, baseType: !150, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1285, file: !533, line: 750, baseType: !1292, size: 128, offset: 512)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1293, line: 218, size: 128, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1294 = !{!1295, !1303, !1304}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 219, baseType: !1296, size: 32)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 219, size: 32, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1296, file: !1293, line: 220, baseType: !230, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1296, file: !1293, line: 221, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1293, line: 197, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1293, line: 197, elements: !1302)
!1302 = !{}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1292, file: !1293, line: 223, baseType: !12, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1292, file: !1293, line: 224, baseType: !24, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1285, file: !533, line: 752, baseType: !1306, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!36, !729, !36, !36, !36, !36}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1285, file: !533, line: 756, baseType: !36, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1285, file: !533, line: 757, baseType: !36, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1285, file: !533, line: 760, baseType: !36, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1285, file: !533, line: 761, baseType: !36, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1285, file: !533, line: 763, baseType: !36, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1285, file: !533, line: 764, baseType: !1315, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1317, line: 299, baseType: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 299, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1318, file: !1317, line: 299, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1322, line: 18, baseType: !36)
!1322 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1285, file: !533, line: 773, baseType: !150, size: 32, offset: 1088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1285, file: !533, line: 785, baseType: !150, size: 32, offset: 1120)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1285, file: !533, line: 795, baseType: !1326, size: 64, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !533, line: 726, size: 128, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1327, file: !533, line: 727, baseType: !359, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1327, file: !533, line: 728, baseType: !79, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1285, file: !533, line: 801, baseType: !36, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1285, file: !533, line: 804, baseType: !128, size: 64, offset: 1280)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1285, file: !533, line: 806, baseType: !79, size: 32, offset: 1344)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1285, file: !533, line: 808, baseType: !230, size: 32, offset: 1376)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1285, file: !533, line: 823, baseType: !391, size: 320, offset: 1408)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1285, file: !533, line: 825, baseType: !176, size: 128, offset: 1728)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1285, file: !533, line: 845, baseType: !79, size: 32, offset: 1856)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1285, file: !533, line: 849, baseType: !36, size: 64, offset: 1920)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1285, file: !533, line: 850, baseType: !36, size: 64, offset: 1984)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1285, file: !533, line: 852, baseType: !36, size: 64, offset: 2048)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1285, file: !533, line: 853, baseType: !36, size: 64, offset: 2112)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1285, file: !533, line: 854, baseType: !130, size: 64, offset: 2176)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1285, file: !533, line: 855, baseType: !36, size: 64, offset: 2240)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1285, file: !533, line: 856, baseType: !36, size: 64, offset: 2304)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1285, file: !533, line: 857, baseType: !36, size: 64, offset: 2368)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1285, file: !533, line: 858, baseType: !36, size: 64, offset: 2432)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1285, file: !533, line: 865, baseType: !581, size: 32, offset: 2496)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1285, file: !533, line: 867, baseType: !230, size: 32, offset: 2528)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1285, file: !533, line: 869, baseType: !36, size: 64, offset: 2560)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1285, file: !533, line: 869, baseType: !36, size: 64, offset: 2624)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1285, file: !533, line: 869, baseType: !36, size: 64, offset: 2688)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1285, file: !533, line: 869, baseType: !36, size: 64, offset: 2752)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1285, file: !533, line: 870, baseType: !36, size: 64, offset: 2816)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1285, file: !533, line: 870, baseType: !36, size: 64, offset: 2880)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1285, file: !533, line: 870, baseType: !36, size: 64, offset: 2944)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1285, file: !533, line: 871, baseType: !36, size: 64, offset: 3008)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1285, file: !533, line: 871, baseType: !36, size: 64, offset: 3072)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1285, file: !533, line: 871, baseType: !36, size: 64, offset: 3136)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1285, file: !533, line: 871, baseType: !36, size: 64, offset: 3200)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1285, file: !533, line: 873, baseType: !1361, size: 3328, offset: 3264)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 3328, elements: !1362)
!1362 = !{!1363}
!1363 = !DISubrange(count: 52)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1285, file: !533, line: 875, baseType: !1365, size: 1280, offset: 6592)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 1280, elements: !292)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1285, file: !533, line: 877, baseType: !1367, size: 64, offset: 7872)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !533, line: 877, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1285, file: !533, line: 880, baseType: !1370, size: 1088, offset: 7936)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1371, line: 72, baseType: !1372)
!1371 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1371, line: 23, size: 1088, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1381, !1382, !1383, !1384, !1411, !1412, !1413}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1372, file: !1371, line: 28, baseType: !359, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1372, file: !1371, line: 38, baseType: !130, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1372, file: !1371, line: 40, baseType: !36, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1372, file: !1371, line: 43, baseType: !391, size: 320, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1372, file: !1371, line: 44, baseType: !1379, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1371, line: 44, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !1371, line: 48, baseType: !36, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !1371, line: 59, baseType: !124, size: 256, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1372, file: !1371, line: 60, baseType: !24, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1372, file: !1371, line: 61, baseType: !1385, size: 64, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1388, line: 13, size: 1216, elements: !1389)
!1388 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1387, file: !1388, line: 14, baseType: !24, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1387, file: !1388, line: 15, baseType: !36, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1387, file: !1388, line: 17, baseType: !36, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1387, file: !1388, line: 17, baseType: !36, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1387, file: !1388, line: 18, baseType: !36, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1387, file: !1388, line: 18, baseType: !36, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1387, file: !1388, line: 19, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1387, file: !1388, line: 21, baseType: !725, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1387, file: !1388, line: 23, baseType: !725, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1387, file: !1388, line: 24, baseType: !725, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1387, file: !1388, line: 25, baseType: !725, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1387, file: !1388, line: 26, baseType: !725, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1387, file: !1388, line: 27, baseType: !725, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1387, file: !1388, line: 28, baseType: !725, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1387, file: !1388, line: 29, baseType: !725, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1387, file: !1388, line: 30, baseType: !725, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1387, file: !1388, line: 31, baseType: !725, size: 64, offset: 1024)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1387, file: !1388, line: 32, baseType: !725, size: 64, offset: 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1387, file: !1388, line: 33, baseType: !725, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1372, file: !1371, line: 63, baseType: !150, size: 32, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1372, file: !1371, line: 69, baseType: !166, size: 16, offset: 1056)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1372, file: !1371, line: 70, baseType: !1414, size: 16, offset: 1072)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !45, line: 18, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !47, line: 23, baseType: !419)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !533, line: 882, baseType: !36, size: 64, offset: 9024)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1285, file: !533, line: 885, baseType: !230, size: 32, offset: 9088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1285, file: !533, line: 886, baseType: !1419, size: 64, offset: 9152)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !533, line: 732, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1285, file: !533, line: 901, baseType: !531, size: 64, offset: 9216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1285, file: !533, line: 904, baseType: !729, size: 64, offset: 9280)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1285, file: !533, line: 906, baseType: !1424, size: 64, offset: 9344)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !533, line: 906, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1285, file: !533, line: 930, baseType: !150, size: 32, offset: 9408)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1285, file: !533, line: 933, baseType: !150, size: 32, offset: 9440)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1285, file: !533, line: 935, baseType: !1429, size: 64, offset: 9472)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1430, line: 103, size: 64, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1429, file: !1430, line: 104, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1430, line: 101, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1285, file: !533, line: 940, baseType: !128, size: 64, offset: 9536)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1285, file: !533, line: 942, baseType: !1437, size: 256, offset: 9600)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1438, line: 98, size: 256, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1437, file: !1438, line: 99, baseType: !128, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1437, file: !1438, line: 100, baseType: !176, size: 128, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1437, file: !1438, line: 101, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1438, line: 21, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1282, file: !533, line: 986, baseType: !1449, offset: 10240)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, elements: !311)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1269, file: !533, line: 640, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1317, line: 297, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1317, line: 297, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1452, file: !1317, line: 297, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1322, line: 19, baseType: !36)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !533, line: 646, baseType: !1457, size: 64, offset: 256)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !533, line: 646, size: 64, elements: !1458)
!1458 = !{!1459, !1462}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1457, file: !533, line: 647, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !533, line: 542, baseType: !36)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1457, file: !533, line: 648, baseType: !1461, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1269, file: !533, line: 666, baseType: !79, size: 32, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1269, file: !533, line: 667, baseType: !1465, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !533, line: 579, size: 320, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !533, line: 580, baseType: !391, size: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1269, file: !533, line: 670, baseType: !82, size: 8, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1269, file: !533, line: 681, baseType: !1471, size: 256, offset: 512)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !533, line: 678, size: 256, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1471, file: !533, line: 679, baseType: !383, size: 192, align: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1471, file: !533, line: 680, baseType: !36, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1269, file: !533, line: 689, baseType: !176, size: 128, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1269, file: !533, line: 691, baseType: !1477, size: 64, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !533, line: 691, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1269, file: !533, line: 694, baseType: !1480, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !533, line: 694, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1269, file: !533, line: 697, baseType: !36, size: 64, offset: 1024)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1269, file: !533, line: 699, baseType: !729, size: 64, offset: 1088)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1269, file: !533, line: 700, baseType: !24, size: 64, offset: 1152)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1269, file: !533, line: 711, baseType: !128, size: 64, offset: 1216)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1269, file: !533, line: 717, baseType: !1488, size: 64, offset: 1280)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !533, line: 717, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1269, file: !533, line: 722, baseType: !1491, offset: 1344)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !533, line: 570, elements: !1302)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !958, file: !939, line: 90, baseType: !1493, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !958, file: !939, line: 91, baseType: !1495, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !929, file: !876, line: 120, baseType: !1497, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1500, !899}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1503, line: 39, size: 384, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1504 = !{!1505, !1511, !1515, !1519, !1525, !1529}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1502, file: !1503, line: 40, baseType: !1506, size: 32)
!1506 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1503, line: 26, baseType: !12, size: 32, elements: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1509 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1510 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1502, file: !1503, line: 41, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!82}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1502, file: !1503, line: 42, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!24}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1502, file: !1503, line: 43, baseType: !1520, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1397, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1503, line: 19, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1502, file: !1503, line: 44, baseType: !1526, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!1397}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1502, file: !1503, line: 45, baseType: !642, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !929, file: !876, line: 121, baseType: !1531, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1397, !899}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !929, file: !876, line: 122, baseType: !1535, size: 64, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !899, !1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !875, file: !876, line: 70, baseType: !1541, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !841, line: 190, size: 1152, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1627, !1628, !1629, !1630, !1631, !1634}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1542, file: !841, line: 191, baseType: !150, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1542, file: !841, line: 192, baseType: !150, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1542, file: !841, line: 202, baseType: !1541, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1542, file: !841, line: 203, baseType: !57, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1542, file: !841, line: 205, baseType: !383, size: 192, align: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1542, file: !841, line: 207, baseType: !1397, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1542, file: !841, line: 208, baseType: !12, size: 32, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !841, line: 209, baseType: !1552, size: 256, offset: 512)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !841, line: 209, size: 256, elements: !1553)
!1553 = !{!1554, !1563, !1567}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1552, file: !841, line: 210, baseType: !1555, size: 256)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !841, line: 153, size: 256, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1562}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1555, file: !841, line: 154, baseType: !36, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1555, file: !841, line: 156, baseType: !991, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1555, file: !841, line: 162, baseType: !1560, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !841, line: 162, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1555, file: !841, line: 167, baseType: !36, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1552, file: !841, line: 211, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !841, line: 170, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1564, file: !841, line: 171, baseType: !1541, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1552, file: !841, line: 212, baseType: !1568, size: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !841, line: 174, size: 256, elements: !1569)
!1569 = !{!1570, !1622, !1625, !1626}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1568, file: !841, line: 175, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !841, line: 271, size: 768, elements: !1574)
!1574 = !{!1575, !1595, !1599, !1600, !1601, !1602, !1603, !1607, !1608, !1609, !1610, !1618}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1573, file: !841, line: 276, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!79, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !841, line: 251, size: 1216, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1580, file: !841, line: 253, baseType: !1541, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1580, file: !841, line: 254, baseType: !729, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1580, file: !841, line: 255, baseType: !104, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1580, file: !841, line: 256, baseType: !24, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1580, file: !841, line: 259, baseType: !124, size: 256, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1580, file: !841, line: 260, baseType: !124, size: 256, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1580, file: !841, line: 261, baseType: !79, size: 32, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1580, file: !841, line: 262, baseType: !176, size: 128, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1580, file: !841, line: 263, baseType: !109, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1580, file: !841, line: 265, baseType: !111, size: 64, offset: 1024)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1580, file: !841, line: 266, baseType: !82, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1580, file: !841, line: 267, baseType: !82, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1580, file: !841, line: 268, baseType: !1480, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1573, file: !841, line: 277, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1579}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1573, file: !841, line: 290, baseType: !200, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1573, file: !841, line: 292, baseType: !187, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1573, file: !841, line: 293, baseType: !196, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1573, file: !841, line: 294, baseType: !192, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1573, file: !841, line: 296, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!765, !1579, !109, !111, !119}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1573, file: !841, line: 306, baseType: !111, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1573, file: !841, line: 313, baseType: !82, size: 8, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1573, file: !841, line: 314, baseType: !1604, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1573, file: !841, line: 317, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1614, !1579, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1615, line: 59, baseType: !12)
!1615 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !841, line: 31, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1573, file: !841, line: 320, baseType: !1619, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!79, !1579, !1268}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1568, file: !841, line: 176, baseType: !1623, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !841, line: 35, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1568, file: !841, line: 177, baseType: !119, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1568, file: !841, line: 178, baseType: !1541, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1542, file: !841, line: 215, baseType: !24, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1542, file: !841, line: 221, baseType: !359, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !841, line: 223, baseType: !168, size: 16, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1542, file: !841, line: 224, baseType: !614, size: 16, offset: 912)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1542, file: !841, line: 225, baseType: !1632, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !841, line: 36, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1542, file: !841, line: 227, baseType: !220, size: 128, align: 64, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !875, file: !876, line: 71, baseType: !1636, size: 32, offset: 448)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1637, line: 19, size: 32, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1636, file: !1637, line: 20, baseType: !274, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !875, file: !876, line: 73, baseType: !12, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !875, file: !876, line: 74, baseType: !12, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !875, file: !876, line: 75, baseType: !12, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !875, file: !876, line: 76, baseType: !12, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !875, file: !876, line: 77, baseType: !12, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !872, file: !857, line: 47, baseType: !855, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !872, file: !857, line: 48, baseType: !881, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !872, file: !857, line: 49, baseType: !1648, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !857, line: 49, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !872, file: !857, line: 50, baseType: !1651, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1653, line: 26, size: 256, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1652, file: !1653, line: 27, baseType: !12, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1652, file: !1653, line: 28, baseType: !1657, size: 192, offset: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1658, line: 43, size: 192, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1657, file: !1658, line: 44, baseType: !137, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1657, file: !1658, line: 45, baseType: !176, size: 128, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !856, file: !857, line: 418, baseType: !1663, size: 64, offset: 1408)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !857, line: 53, size: 448, elements: !1665)
!1665 = !{!1666, !1667, !1672, !1676, !1680, !1684}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1664, file: !857, line: 54, baseType: !946, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1664, file: !857, line: 55, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!765, !1663, !1671, !109}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1664, file: !857, line: 57, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!765, !1663, !1671, !57, !111}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1664, file: !857, line: 59, baseType: !1677, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !855, !57}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1664, file: !857, line: 60, baseType: !1681, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!79, !855}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1664, file: !857, line: 61, baseType: !1685, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !855}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !856, file: !857, line: 419, baseType: !57, size: 64, offset: 1472)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !856, file: !857, line: 420, baseType: !57, size: 64, offset: 1536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !856, file: !857, line: 421, baseType: !881, size: 64, offset: 1600)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !856, file: !857, line: 424, baseType: !1692, size: 64, offset: 1664)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !857, line: 424, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !856, file: !857, line: 425, baseType: !1696, size: 64, offset: 1728)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !856, file: !857, line: 426, baseType: !12, size: 32, offset: 1792)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !856, file: !857, line: 435, baseType: !124, size: 256, offset: 1856)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !856, file: !857, line: 437, baseType: !1701, size: 64, offset: 2112)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1703, line: 69, size: 320, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1704 = !{!1705, !1706, !1707, !1724, !1726, !1730, !1731}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1702, file: !1703, line: 70, baseType: !57, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1702, file: !1703, line: 71, baseType: !855, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1702, file: !1703, line: 72, baseType: !1708, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1703, line: 47, size: 256, elements: !1711)
!1711 = !{!1712, !1713, !1719, !1723}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1710, file: !1703, line: 49, baseType: !12, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1710, file: !1703, line: 51, baseType: !1714, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!79, !57, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1710, file: !1703, line: 53, baseType: !1720, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!79, !109, !1717}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1710, file: !1703, line: 55, baseType: !642, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1702, file: !1703, line: 73, baseType: !1725, size: 16, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1702, file: !1703, line: 74, baseType: !1727, size: 8, offset: 208)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !45, line: 16, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !47, line: 20, baseType: !1729)
!1729 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1703, line: 75, baseType: !158, size: 8, offset: 216)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1703, line: 76, baseType: !1732, size: 64, offset: 256)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1703, line: 76, size: 64, elements: !1733)
!1733 = !{!1734, !1735, !1742}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1732, file: !1703, line: 77, baseType: !24, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1732, file: !1703, line: 78, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1703, line: 86, size: 128, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1738, file: !1703, line: 87, baseType: !12, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1738, file: !1703, line: 88, baseType: !109, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1732, file: !1703, line: 79, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1703, line: 92, size: 256, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1751, !1752}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1745, file: !1703, line: 94, baseType: !12, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1745, file: !1703, line: 95, baseType: !12, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1745, file: !1703, line: 96, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1745, file: !1703, line: 97, baseType: !1708, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1745, file: !1703, line: 98, baseType: !24, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !856, file: !857, line: 438, baseType: !12, size: 32, offset: 2176)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !856, file: !857, line: 441, baseType: !12, size: 32, offset: 2208)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !856, file: !857, line: 442, baseType: !1692, size: 64, offset: 2240)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !856, file: !857, line: 443, baseType: !1696, size: 64, offset: 2304)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !856, file: !857, line: 444, baseType: !82, size: 8, offset: 2368)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !856, file: !857, line: 451, baseType: !82, size: 8, offset: 2376)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !856, file: !857, line: 454, baseType: !12, size: 32, offset: 2400)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !856, file: !857, line: 455, baseType: !1761, size: 64, offset: 2432)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1763, line: 23, size: 96, elements: !1764)
!1763 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1762, file: !1763, line: 24, baseType: !79, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1762, file: !1763, line: 24, baseType: !79, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1762, file: !1763, line: 24, baseType: !79, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !856, file: !857, line: 458, baseType: !1769, size: 64, offset: 2496)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!79}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !856, file: !857, line: 460, baseType: !1773, size: 4032, align: 512, offset: 2560)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1774, size: 4032, elements: !1790)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !857, line: 362, size: 576, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1774, file: !857, line: 363, baseType: !24, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1774, file: !857, line: 364, baseType: !12, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1774, file: !857, line: 367, baseType: !1779, size: 448, offset: 128)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !857, line: 319, size: 448, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1779, file: !857, line: 320, baseType: !855, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1779, file: !857, line: 321, baseType: !1783, size: 384, offset: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1784, line: 40, size: 384, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1783, file: !1784, line: 41, baseType: !1787, size: 384, align: 64)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 384, align: 64, elements: !1788)
!1788 = !{!1789}
!1789 = !DISubrange(count: 2)
!1790 = !{!1791}
!1791 = !DISubrange(count: 7)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !856, file: !857, line: 463, baseType: !1793, size: 192, offset: 6592)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1794, line: 8, size: 192, elements: !1795)
!1794 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1795 = !{!1796, !1797, !1799}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1793, file: !1794, line: 10, baseType: !12, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1793, file: !1794, line: 11, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1793, file: !1794, line: 12, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1802, line: 59, size: 48, elements: !1803)
!1802 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1801, file: !1802, line: 60, baseType: !1414, size: 16)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1801, file: !1802, line: 61, baseType: !1414, size: 16, offset: 16)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1801, file: !1802, line: 63, baseType: !12, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1801, file: !1802, line: 64, baseType: !12, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1801, file: !1802, line: 65, baseType: !12, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1801, file: !1802, line: 66, baseType: !12, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !856, file: !857, line: 465, baseType: !36, size: 64, offset: 6784)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !856, file: !857, line: 469, baseType: !12, size: 32, offset: 6848)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !856, file: !857, line: 470, baseType: !176, size: 128, offset: 6912)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !856, file: !857, line: 471, baseType: !1814, size: 64, offset: 7040)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1816, line: 33, size: 96, elements: !1817)
!1816 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1817 = !{!1818, !1819, !1820, !1821}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1815, file: !1816, line: 37, baseType: !79, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1815, file: !1816, line: 43, baseType: !79, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1815, file: !1816, line: 45, baseType: !168, size: 16, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1815, file: !1816, line: 47, baseType: !168, size: 16, offset: 80)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !856, file: !857, line: 476, baseType: !1823, size: 64, offset: 7104)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !857, line: 378, size: 256, elements: !1825)
!1825 = !{!1826, !1842, !1843, !1844}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1824, file: !857, line: 379, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1829, line: 204, baseType: !1830)
!1829 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1829, line: 197, size: 192, elements: !1831)
!1831 = !{!1832, !1834, !1835, !1836, !1838, !1840}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1830, file: !1829, line: 198, baseType: !1833, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1829, line: 21, baseType: !46)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1830, file: !1829, line: 199, baseType: !160, size: 8, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1830, file: !1829, line: 200, baseType: !160, size: 8, offset: 40)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1830, file: !1829, line: 201, baseType: !1837, size: 16, offset: 48)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1829, line: 17, baseType: !167)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1830, file: !1829, line: 202, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1829, line: 16, baseType: !360)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1830, file: !1829, line: 203, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1829, line: 22, baseType: !360)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1824, file: !857, line: 380, baseType: !12, size: 32, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1824, file: !857, line: 381, baseType: !109, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1824, file: !857, line: 382, baseType: !109, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !856, file: !857, line: 477, baseType: !1824, size: 256, offset: 7168)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !856, file: !857, line: 480, baseType: !1847, size: 64, offset: 7424)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !857, line: 480, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !856, file: !857, line: 483, baseType: !1850, size: 64, offset: 7488)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !857, line: 483, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !856, file: !857, line: 488, baseType: !109, size: 64, offset: 7552)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !856, file: !857, line: 492, baseType: !24, size: 64, offset: 7616)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !856, file: !857, line: 493, baseType: !12, size: 32, offset: 7680)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !856, file: !857, line: 495, baseType: !24, size: 64, offset: 7744)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !856, file: !857, line: 496, baseType: !12, size: 32, offset: 7808)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !856, file: !857, line: 499, baseType: !12, size: 32, offset: 7840)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !856, file: !857, line: 500, baseType: !1859, size: 64, offset: 7872)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1861, line: 45, baseType: !1862)
!1861 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !856, file: !857, line: 503, baseType: !12, size: 32, offset: 7936)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !856, file: !857, line: 504, baseType: !1865, size: 64, offset: 8000)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1868, line: 96, size: 192, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1869 = !{!1870, !1871, !1925, !1928}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1867, file: !1868, line: 97, baseType: !12, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1867, file: !1868, line: 98, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1868, line: 24, size: 3072, elements: !1874)
!1874 = !{!1875, !1877, !1878, !1879, !1880, !1894, !1895, !1896, !1897, !1909, !1910, !1911, !1922, !1923, !1924}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1873, file: !1868, line: 26, baseType: !1876, size: 128)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !1788)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1873, file: !1868, line: 27, baseType: !1876, size: 128, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1873, file: !1868, line: 28, baseType: !79, size: 32, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1873, file: !1868, line: 31, baseType: !230, size: 32, align: 512, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1873, file: !1868, line: 32, baseType: !1881, size: 960, offset: 576)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1882, line: 206, size: 960, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1883 = !{!1884, !1885, !1888, !1890, !1891, !1893}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1881, file: !1882, line: 207, baseType: !223, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1881, file: !1882, line: 208, baseType: !1886, size: 256, offset: 64)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1887, size: 256, elements: !292)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1881, file: !1882, line: 209, baseType: !1889, size: 256, offset: 320)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !292)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1881, file: !1882, line: 213, baseType: !725, size: 64, offset: 576)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1881, file: !1882, line: 215, baseType: !1892, size: 256, offset: 640)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 256, elements: !292)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1881, file: !1882, line: 216, baseType: !158, size: 8, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1873, file: !1868, line: 33, baseType: !36, size: 64, offset: 1536)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1873, file: !1868, line: 34, baseType: !36, size: 64, offset: 1600)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1873, file: !1868, line: 35, baseType: !82, size: 8, offset: 1664)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1873, file: !1868, line: 36, baseType: !1898, size: 320, offset: 1728)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1899, line: 11, size: 320, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1900 = !{!1901, !1902, !1903, !1908}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1898, file: !1899, line: 16, baseType: !287, size: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1898, file: !1899, line: 17, baseType: !36, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1898, file: !1899, line: 18, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !1899, line: 19, baseType: !44, size: 32, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1873, file: !1868, line: 37, baseType: !1437, size: 256, offset: 2048)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1873, file: !1868, line: 38, baseType: !220, size: 128, align: 64, offset: 2304)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1873, file: !1868, line: 39, baseType: !1912, size: 64, offset: 2432)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1868, line: 49, size: 768, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1913, file: !1868, line: 50, baseType: !230, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1913, file: !1868, line: 51, baseType: !1889, size: 256, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1913, file: !1868, line: 53, baseType: !1889, size: 256, offset: 320)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1913, file: !1868, line: 54, baseType: !36, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1913, file: !1868, line: 55, baseType: !1912, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1913, file: !1868, line: 56, baseType: !79, size: 32, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1913, file: !1868, line: 57, baseType: !79, size: 32, offset: 736)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1873, file: !1868, line: 40, baseType: !36, size: 64, offset: 2496)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1873, file: !1868, line: 42, baseType: !79, size: 32, offset: 2560)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1873, file: !1868, line: 43, baseType: !1866, size: 64, offset: 2624)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1867, file: !1868, line: 99, baseType: !1926, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1927, line: 211, elements: !1302)
!1927 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1867, file: !1868, line: 100, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1868, line: 63, size: 3008, elements: !1931)
!1931 = !{!1932, !1933, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1963}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1930, file: !1868, line: 64, baseType: !1912, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1930, file: !1868, line: 65, baseType: !1934, size: 192, offset: 64)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1912, size: 192, elements: !5)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1930, file: !1868, line: 67, baseType: !79, size: 32, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1930, file: !1868, line: 68, baseType: !124, size: 256, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1930, file: !1868, line: 69, baseType: !230, size: 32, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1930, file: !1868, line: 70, baseType: !124, size: 256, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1930, file: !1868, line: 71, baseType: !36, size: 64, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1930, file: !1868, line: 72, baseType: !36, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1930, file: !1868, line: 73, baseType: !36, size: 64, offset: 1024)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1930, file: !1868, line: 74, baseType: !36, size: 64, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1930, file: !1868, line: 75, baseType: !36, size: 64, offset: 1152)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1930, file: !1868, line: 76, baseType: !36, size: 64, offset: 1216)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1930, file: !1868, line: 77, baseType: !36, size: 64, offset: 1280)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1930, file: !1868, line: 78, baseType: !36, size: 64, offset: 1344)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1930, file: !1868, line: 79, baseType: !82, size: 8, offset: 1408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1930, file: !1868, line: 80, baseType: !36, size: 64, offset: 1472)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1930, file: !1868, line: 81, baseType: !124, size: 256, offset: 1536)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1930, file: !1868, line: 82, baseType: !1652, size: 256, offset: 1792)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1930, file: !1868, line: 84, baseType: !150, size: 32, offset: 2048)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1930, file: !1868, line: 87, baseType: !36, size: 64, offset: 2112)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1930, file: !1868, line: 88, baseType: !36, size: 64, offset: 2176)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1930, file: !1868, line: 89, baseType: !1955, size: 704, offset: 2240)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1438, line: 111, size: 704, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1962}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1955, file: !1438, line: 112, baseType: !1437, size: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1955, file: !1438, line: 113, baseType: !1898, size: 320, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1955, file: !1438, line: 116, baseType: !1960, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1438, line: 18, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1955, file: !1438, line: 117, baseType: !79, size: 32, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1930, file: !1868, line: 90, baseType: !1866, size: 64, offset: 2944)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !856, file: !857, line: 515, baseType: !1965, size: 64, offset: 8064)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1967, line: 117, size: 128, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1966, file: !1967, line: 118, baseType: !376, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1966, file: !1967, line: 119, baseType: !376, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1966, file: !1967, line: 120, baseType: !725, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !856, file: !857, line: 516, baseType: !12, size: 32, offset: 8128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !856, file: !857, line: 519, baseType: !12, size: 32, offset: 8160)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !856, file: !857, line: 520, baseType: !1975, size: 64, offset: 8192)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !856, file: !857, line: 523, baseType: !1977, size: 64, offset: 8256)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !857, line: 523, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !856, file: !857, line: 524, baseType: !12, size: 32, offset: 8320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !856, file: !857, line: 525, baseType: !1982, size: 64, offset: 8384)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !857, line: 525, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !856, file: !857, line: 526, baseType: !12, size: 32, offset: 8448)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !856, file: !857, line: 533, baseType: !24, size: 64, offset: 8512)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !856, file: !857, line: 534, baseType: !12, size: 32, offset: 8576)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !856, file: !857, line: 535, baseType: !1989, size: 64, offset: 8640)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !856, file: !857, line: 536, baseType: !12, size: 32, offset: 8704)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !856, file: !857, line: 539, baseType: !79, size: 32, offset: 8736)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !856, file: !857, line: 540, baseType: !1993, size: 64, offset: 8768)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1995, line: 32, size: 64, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1994, file: !1995, line: 33, baseType: !376, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1994, file: !1995, line: 34, baseType: !376, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !856, file: !857, line: 563, baseType: !176, size: 128, offset: 8832)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !856, file: !857, line: 565, baseType: !176, size: 128, offset: 8960)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !856, file: !857, line: 568, baseType: !2002, size: 64, offset: 9088)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !856, file: !857, line: 570, baseType: !150, size: 32, offset: 9152)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !208, line: 2382, baseType: !830, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !831, file: !208, line: 2383, baseType: !283, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !831, file: !208, line: 2385, baseType: !2009, offset: 576)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1927, line: 206, elements: !1302)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !831, file: !208, line: 2386, baseType: !2009, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !831, file: !208, line: 2387, baseType: !2009, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !831, file: !208, line: 2388, baseType: !2013, offset: 576)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2009, elements: !5)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !831, file: !208, line: 2390, baseType: !2009, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !831, file: !208, line: 2391, baseType: !2009, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !831, file: !208, line: 2392, baseType: !2009, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !831, file: !208, line: 2393, baseType: !2009, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !822, file: !208, line: 1197, baseType: !2019, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 2057, size: 1664, elements: !2022)
!2022 = !{!2023, !2027, !2031, !2032, !2036, !2040, !2044, !2045, !2046, !2050, !2058, !2062, !2063, !2064, !2070, !2074, !2075, !2079, !2080, !2081, !2082, !2086, !2090, !2143, !2158, !2159}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2021, file: !208, line: 2058, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!610, !821}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2021, file: !208, line: 2059, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !610}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2021, file: !208, line: 2060, baseType: !2028, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2021, file: !208, line: 2062, baseType: !2033, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !610, !79}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2021, file: !208, line: 2063, baseType: !2037, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!79, !610, !1066}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2021, file: !208, line: 2064, baseType: !2041, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!79, !610}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2021, file: !208, line: 2065, baseType: !2028, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2021, file: !208, line: 2066, baseType: !851, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2021, file: !208, line: 2067, baseType: !2047, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!79, !821, !79}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2021, file: !208, line: 2068, baseType: !2051, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!79, !821, !2054}
!2054 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !208, line: 2052, baseType: !12, size: 32, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2057 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2021, file: !208, line: 2069, baseType: !2059, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!79, !821}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2021, file: !208, line: 2070, baseType: !2051, size: 64, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2021, file: !208, line: 2071, baseType: !2059, size: 64, offset: 768)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2021, file: !208, line: 2072, baseType: !2065, size: 64, offset: 832)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!79, !570, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 62, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2021, file: !208, line: 2073, baseType: !2071, size: 64, offset: 896)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!79, !821, !1798, !109}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2021, file: !208, line: 2074, baseType: !851, size: 64, offset: 960)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2021, file: !208, line: 2076, baseType: !2076, size: 64, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!79, !104, !570}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2021, file: !208, line: 2077, baseType: !2076, size: 64, offset: 1088)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2021, file: !208, line: 2078, baseType: !2076, size: 64, offset: 1152)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2021, file: !208, line: 2079, baseType: !2076, size: 64, offset: 1216)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2021, file: !208, line: 2081, baseType: !2083, size: 64, offset: 1280)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!765, !821, !79, !109, !111, !119}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2021, file: !208, line: 2082, baseType: !2087, size: 64, offset: 1344)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!765, !821, !79, !57, !111, !119}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2021, file: !208, line: 2083, baseType: !2091, size: 64, offset: 1408)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!2094, !610}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2097, line: 296, size: 1664, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2128, !2129, !2130}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2096, file: !2097, line: 297, baseType: !287, size: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2096, file: !2097, line: 298, baseType: !176, size: 128, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2096, file: !2097, line: 299, baseType: !176, size: 128, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2096, file: !2097, line: 300, baseType: !176, size: 128, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2096, file: !2097, line: 301, baseType: !124, size: 256, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2096, file: !2097, line: 302, baseType: !230, size: 32, offset: 768)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2096, file: !2097, line: 303, baseType: !150, size: 32, offset: 800)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2096, file: !2097, line: 304, baseType: !821, size: 64, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2096, file: !2097, line: 305, baseType: !2108, size: 64, offset: 896)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2097, line: 68, size: 64, elements: !2109)
!2109 = !{!2110, !2122}
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2097, line: 69, baseType: !2111, size: 32)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !2097, line: 69, size: 32, elements: !2112)
!2112 = !{!2113, !2114, !2115}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2111, file: !2097, line: 70, baseType: !322, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2111, file: !2097, line: 71, baseType: !340, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2111, file: !2097, line: 72, baseType: !2116, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2117, line: 24, baseType: !2118)
!2117 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2117, line: 22, size: 32, elements: !2119)
!2119 = !{!2120}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2118, file: !2117, line: 23, baseType: !2121, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2117, line: 20, baseType: !328)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2108, file: !2097, line: 74, baseType: !2123, size: 32, offset: 32)
!2123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2097, line: 54, baseType: !12, size: 32, elements: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2126 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2127 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2096, file: !2097, line: 306, baseType: !119, size: 64, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2096, file: !2097, line: 307, baseType: !36, size: 64, offset: 1024)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2096, file: !2097, line: 308, baseType: !2131, size: 576, offset: 1088)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2097, line: 205, size: 576, elements: !2132)
!2132 = !{!2133, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2131, file: !2097, line: 206, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2097, line: 66, baseType: !121)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2131, file: !2097, line: 207, baseType: !2134, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2131, file: !2097, line: 208, baseType: !2134, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2131, file: !2097, line: 209, baseType: !2134, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2131, file: !2097, line: 210, baseType: !2134, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2131, file: !2097, line: 211, baseType: !2134, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2131, file: !2097, line: 212, baseType: !2134, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2131, file: !2097, line: 213, baseType: !407, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2131, file: !2097, line: 214, baseType: !407, size: 64, offset: 512)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2021, file: !208, line: 2085, baseType: !2144, size: 64, offset: 1472)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!725, !821, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2149, line: 15, size: 256, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2150 = !{!2151, !2152, !2153, !2154, !2155}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2148, file: !2149, line: 16, baseType: !817, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2148, file: !2149, line: 19, baseType: !79, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2148, file: !2149, line: 26, baseType: !36, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2148, file: !2149, line: 33, baseType: !36, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2148, file: !2149, line: 36, baseType: !2156, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !533, line: 33, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2021, file: !208, line: 2087, baseType: !2144, size: 64, offset: 1536)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2021, file: !208, line: 2089, baseType: !851, size: 64, offset: 1600)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !822, file: !208, line: 1198, baseType: !2161, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2097, line: 324, size: 704, elements: !2164)
!2164 = !{!2165, !2169, !2173, !2177, !2178, !2179, !2180, !2181, !2186, !2191, !2195}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2163, file: !2097, line: 325, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!79, !2095}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2163, file: !2097, line: 326, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!2095, !821, !79}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2163, file: !2097, line: 327, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2095}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2163, file: !2097, line: 328, baseType: !2166, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2163, file: !2097, line: 329, baseType: !2166, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2163, file: !2097, line: 330, baseType: !2166, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2163, file: !2097, line: 331, baseType: !2047, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2163, file: !2097, line: 334, baseType: !2182, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!2185, !610}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2163, file: !2097, line: 335, baseType: !2187, size: 64, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!79, !610, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2163, file: !2097, line: 337, baseType: !2192, size: 64, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!79, !610, !2185}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2163, file: !2097, line: 339, baseType: !2196, size: 64, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!79, !821, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !822, file: !208, line: 1199, baseType: !2201, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2097, line: 430, size: 704, elements: !2204)
!2204 = !{!2205, !2209, !2210, !2214, !2215, !2216, !2231, !2254, !2258, !2259, !2282}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2203, file: !2097, line: 431, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!79, !821, !79, !79, !734}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2203, file: !2097, line: 432, baseType: !2047, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2203, file: !2097, line: 433, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!79, !821, !12}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2203, file: !2097, line: 434, baseType: !2211, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2203, file: !2097, line: 435, baseType: !2047, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2203, file: !2097, line: 436, baseType: !2217, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!79, !821, !79, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2097, line: 417, size: 256, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2221, file: !2097, line: 418, baseType: !79, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2221, file: !2097, line: 419, baseType: !12, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2221, file: !2097, line: 420, baseType: !12, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2221, file: !2097, line: 422, baseType: !12, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2221, file: !2097, line: 423, baseType: !12, size: 32, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2221, file: !2097, line: 424, baseType: !12, size: 32, offset: 160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2221, file: !2097, line: 425, baseType: !12, size: 32, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2221, file: !2097, line: 426, baseType: !12, size: 32, offset: 224)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2203, file: !2097, line: 437, baseType: !2232, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!79, !821, !2108, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2097, line: 345, size: 960, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2236, file: !2097, line: 346, baseType: !79, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2236, file: !2097, line: 347, baseType: !359, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2236, file: !2097, line: 348, baseType: !359, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2236, file: !2097, line: 349, baseType: !359, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2236, file: !2097, line: 350, baseType: !359, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2236, file: !2097, line: 351, baseType: !359, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2236, file: !2097, line: 352, baseType: !359, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2236, file: !2097, line: 353, baseType: !134, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2236, file: !2097, line: 355, baseType: !134, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2236, file: !2097, line: 356, baseType: !79, size: 32, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2236, file: !2097, line: 357, baseType: !79, size: 32, offset: 608)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2236, file: !2097, line: 358, baseType: !359, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2236, file: !2097, line: 359, baseType: !359, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2236, file: !2097, line: 360, baseType: !359, size: 64, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2236, file: !2097, line: 361, baseType: !134, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2236, file: !2097, line: 362, baseType: !79, size: 32, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2203, file: !2097, line: 438, baseType: !2255, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!79, !821, !2199, !2235}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2203, file: !2097, line: 440, baseType: !2232, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2203, file: !2097, line: 441, baseType: !2260, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!79, !821, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2097, line: 411, size: 1408, elements: !2265)
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2264, file: !2097, line: 412, baseType: !12, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2264, file: !2097, line: 413, baseType: !2268, size: 1344, offset: 64)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2269, size: 1344, elements: !5)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2097, line: 397, size: 448, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2281}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2269, file: !2097, line: 398, baseType: !12, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2269, file: !2097, line: 399, baseType: !12, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2269, file: !2097, line: 401, baseType: !12, size: 32, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2269, file: !2097, line: 402, baseType: !12, size: 32, offset: 96)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2269, file: !2097, line: 403, baseType: !12, size: 32, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2269, file: !2097, line: 404, baseType: !12, size: 32, offset: 160)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2269, file: !2097, line: 405, baseType: !12, size: 32, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2269, file: !2097, line: 406, baseType: !361, size: 64, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2269, file: !2097, line: 407, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !83, line: 132, baseType: !359)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2269, file: !2097, line: 408, baseType: !2280, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2203, file: !2097, line: 442, baseType: !2211, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !822, file: !208, line: 1200, baseType: !2284, size: 64, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 54, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !822, file: !208, line: 1201, baseType: !36, size: 64, offset: 640)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !822, file: !208, line: 1202, baseType: !36, size: 64, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !822, file: !208, line: 1203, baseType: !36, size: 64, offset: 768)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !822, file: !208, line: 1204, baseType: !570, size: 64, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !822, file: !208, line: 1205, baseType: !391, size: 320, offset: 896)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !822, file: !208, line: 1206, baseType: !79, size: 32, offset: 1216)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !822, file: !208, line: 1207, baseType: !150, size: 32, offset: 1248)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !822, file: !208, line: 1209, baseType: !24, size: 64, offset: 1280)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !822, file: !208, line: 1211, baseType: !2296, size: 64, offset: 1344)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2299)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1211, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !822, file: !208, line: 1223, baseType: !2301, size: 64, offset: 1408)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !587, line: 34, size: 64, elements: !2302)
!2302 = !{!2303}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2301, file: !587, line: 35, baseType: !590, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !822, file: !208, line: 1224, baseType: !176, size: 128, offset: 1472)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !822, file: !208, line: 1225, baseType: !2306, size: 64, offset: 1600)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 1225, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !822, file: !208, line: 1226, baseType: !2309, size: 64, offset: 1664)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !208, line: 1226, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !822, file: !208, line: 1227, baseType: !2312, size: 64, offset: 1728)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !822, file: !208, line: 1228, baseType: !2315, size: 64, offset: 1792)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1228, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !822, file: !208, line: 1229, baseType: !287, size: 128, offset: 1856)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !822, file: !208, line: 1230, baseType: !12, size: 32, offset: 1984)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !822, file: !208, line: 1231, baseType: !2320, size: 2496, offset: 2048)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2097, line: 521, size: 2496, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2326, !2358}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2320, file: !2097, line: 522, baseType: !12, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2320, file: !2097, line: 523, baseType: !391, size: 320, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2320, file: !2097, line: 524, baseType: !2325, size: 192, offset: 384)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 192, elements: !5)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2320, file: !2097, line: 525, baseType: !2327, size: 1728, offset: 576)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2328, size: 1728, elements: !5)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2097, line: 222, size: 576, elements: !2329)
!2329 = !{!2330, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2328, file: !2097, line: 223, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2097, line: 445, size: 256, elements: !2333)
!2333 = !{!2334, !2335, !2348, !2349}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2332, file: !2097, line: 446, baseType: !79, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2332, file: !2097, line: 447, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2338)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2097, line: 312, size: 512, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2338, file: !2097, line: 313, baseType: !2047, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2338, file: !2097, line: 314, baseType: !2047, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2338, file: !2097, line: 315, baseType: !2047, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2338, file: !2097, line: 316, baseType: !2047, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2338, file: !2097, line: 317, baseType: !2166, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2338, file: !2097, line: 318, baseType: !2166, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2338, file: !2097, line: 319, baseType: !2166, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2338, file: !2097, line: 320, baseType: !2196, size: 64, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2332, file: !2097, line: 448, baseType: !855, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2332, file: !2097, line: 449, baseType: !2331, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2328, file: !2097, line: 224, baseType: !79, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2328, file: !2097, line: 226, baseType: !176, size: 128, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2328, file: !2097, line: 227, baseType: !36, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2328, file: !2097, line: 228, baseType: !12, size: 32, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2328, file: !2097, line: 229, baseType: !12, size: 32, offset: 352)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2328, file: !2097, line: 230, baseType: !2134, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2328, file: !2097, line: 231, baseType: !2134, size: 64, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2328, file: !2097, line: 232, baseType: !24, size: 64, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2320, file: !2097, line: 526, baseType: !2359, size: 192, offset: 2304)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, size: 192, elements: !5)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !822, file: !208, line: 1233, baseType: !2361, size: 2368, offset: 4544)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1184, size: 2368, elements: !2362)
!2362 = !{!2363, !2364, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2361, file: !208, line: 1185, baseType: !168, size: 16)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2361, file: !208, line: 1186, baseType: !168, size: 16, offset: 16)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2361, file: !208, line: 1187, baseType: !2366, size: 2304, offset: 64)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, size: 2304, elements: !5)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2368, line: 12, size: 768, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2369 = !{!2370, !2378, !2379, !3582, !3583}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2367, file: !2368, line: 13, baseType: !2371, size: 384)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2372, line: 17, size: 384, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2371, file: !2372, line: 18, baseType: !79, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2371, file: !2372, line: 19, baseType: !79, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2371, file: !2372, line: 20, baseType: !296, size: 192, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2371, file: !2372, line: 22, baseType: !220, size: 128, align: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2367, file: !2368, line: 14, baseType: !1750, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2367, file: !2368, line: 15, baseType: !2380, size: 64, offset: 448)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2381, line: 16, size: 64, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2382 = !{!2383}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2380, file: !2381, line: 17, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2386, line: 746, size: 58368, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2387 = !{!2388, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2468, !2479, !2572, !2576, !2579, !2610, !2611, !2612, !2613, !2617, !2619, !2620, !2621, !2622, !2623, !2624, !2635, !2636, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2653, !2654, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2748, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2796, !2802, !2803, !2804, !2805, !2806, !2810, !2813, !2820, !2825, !2828, !2831, !2834, !2837, !2975, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3013, !3014, !3015, !3024, !3032, !3033, !3034, !3035, !3036, !3041, !3042, !3043, !3046, !3047, !3050, !3053, !3056, !3064, !3067, !3068, !3154, !3155, !3156, !3157, !3158, !3164, !3165, !3166, !3167, !3170, !3171, !3174, !3177, !3178, !3181, !3182, !3183, !3186, !3187, !3188, !3189, !3190, !3191, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3223, !3226, !3232, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3244, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3357, !3358, !3359}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2385, file: !2386, line: 752, baseType: !2389, size: 192)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2390, line: 56, size: 192, elements: !2391)
!2390 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2391 = !{!2392, !2393, !2394, !2395}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2389, file: !2390, line: 57, baseType: !36, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2389, file: !2390, line: 58, baseType: !36, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2389, file: !2390, line: 59, baseType: !44, size: 32, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2389, file: !2390, line: 61, baseType: !44, size: 32, offset: 160)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2385, file: !2386, line: 754, baseType: !12, size: 32, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2385, file: !2386, line: 767, baseType: !24, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2385, file: !2386, line: 768, baseType: !274, size: 32, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2385, file: !2386, line: 770, baseType: !12, size: 32, offset: 352)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2385, file: !2386, line: 771, baseType: !12, size: 32, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2385, file: !2386, line: 774, baseType: !79, size: 32, offset: 416)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2385, file: !2386, line: 775, baseType: !2403, size: 128, offset: 448)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2404, line: 58, size: 128, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2405 = !{!2406, !2407, !2412, !2413}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2403, file: !2404, line: 59, baseType: !214, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !2404, line: 60, baseType: !2408, size: 32, offset: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2403, file: !2404, line: 60, size: 32, elements: !2409)
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2408, file: !2404, line: 61, baseType: !12, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2408, file: !2404, line: 62, baseType: !150, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2403, file: !2404, line: 65, baseType: !166, size: 16, offset: 96)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2403, file: !2404, line: 65, baseType: !166, size: 16, offset: 112)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2385, file: !2386, line: 776, baseType: !12, size: 32, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2385, file: !2386, line: 777, baseType: !36, size: 64, offset: 640)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2385, file: !2386, line: 778, baseType: !2384, size: 64, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2385, file: !2386, line: 787, baseType: !79, size: 32, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2385, file: !2386, line: 788, baseType: !79, size: 32, offset: 800)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2385, file: !2386, line: 790, baseType: !79, size: 32, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2385, file: !2386, line: 792, baseType: !79, size: 32, offset: 864)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2385, file: !2386, line: 793, baseType: !79, size: 32, offset: 896)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2385, file: !2386, line: 794, baseType: !79, size: 32, offset: 928)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2385, file: !2386, line: 795, baseType: !12, size: 32, offset: 960)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2385, file: !2386, line: 797, baseType: !2425, size: 2048, offset: 1024)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2386, line: 551, size: 2048, elements: !2426)
!2426 = !{!2427, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2447, !2450, !2451, !2452}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2425, file: !2386, line: 553, baseType: !2428, size: 128)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2386, line: 411, size: 128, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2428, file: !2386, line: 412, baseType: !36, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2428, file: !2386, line: 413, baseType: !44, size: 32, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2425, file: !2386, line: 554, baseType: !383, size: 192, align: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2425, file: !2386, line: 555, baseType: !359, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2425, file: !2386, line: 556, baseType: !359, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2425, file: !2386, line: 558, baseType: !176, size: 128, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2425, file: !2386, line: 559, baseType: !12, size: 32, offset: 576)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2425, file: !2386, line: 561, baseType: !359, size: 64, offset: 640)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2425, file: !2386, line: 562, baseType: !359, size: 64, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2425, file: !2386, line: 563, baseType: !359, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2425, file: !2386, line: 564, baseType: !359, size: 64, offset: 832)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2425, file: !2386, line: 565, baseType: !134, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2425, file: !2386, line: 566, baseType: !359, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2425, file: !2386, line: 568, baseType: !359, size: 64, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2425, file: !2386, line: 571, baseType: !79, size: 32, offset: 1088)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2425, file: !2386, line: 572, baseType: !2446, size: 64, offset: 1152)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2425, file: !2386, line: 574, baseType: !2448, size: 64, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2386, line: 49, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2425, file: !2386, line: 576, baseType: !2448, size: 64, offset: 1280)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2425, file: !2386, line: 578, baseType: !36, size: 64, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2425, file: !2386, line: 588, baseType: !2453, size: 512, align: 512, offset: 1536)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2386, line: 497, size: 512, align: 512, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2453, file: !2386, line: 498, baseType: !359, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2453, file: !2386, line: 499, baseType: !359, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2453, file: !2386, line: 500, baseType: !359, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2453, file: !2386, line: 501, baseType: !44, size: 32, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2453, file: !2386, line: 502, baseType: !44, size: 32, offset: 224)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2453, file: !2386, line: 503, baseType: !36, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2453, file: !2386, line: 504, baseType: !36, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2453, file: !2386, line: 505, baseType: !36, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2453, file: !2386, line: 506, baseType: !2464, size: 64, align: 64, offset: 448)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2386, line: 445, size: 64, align: 64, elements: !2465)
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2464, file: !2386, line: 446, baseType: !12, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2464, file: !2386, line: 447, baseType: !12, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2385, file: !2386, line: 798, baseType: !2469, size: 384, offset: 3072)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2386, line: 592, size: 384, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2469, file: !2386, line: 593, baseType: !176, size: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2469, file: !2386, line: 594, baseType: !36, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2469, file: !2386, line: 595, baseType: !36, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2469, file: !2386, line: 596, baseType: !12, size: 32, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2469, file: !2386, line: 597, baseType: !168, size: 16, offset: 288)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2469, file: !2386, line: 598, baseType: !168, size: 16, offset: 304)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2469, file: !2386, line: 600, baseType: !2478, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2385, file: !2386, line: 799, baseType: !2480, size: 1792, offset: 3456)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2386, line: 610, size: 1792, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2569, !2570}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2480, file: !2386, line: 611, baseType: !383, size: 192, align: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2480, file: !2386, line: 618, baseType: !359, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2480, file: !2386, line: 619, baseType: !359, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2480, file: !2386, line: 620, baseType: !359, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2480, file: !2386, line: 621, baseType: !359, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2480, file: !2386, line: 622, baseType: !359, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2480, file: !2386, line: 629, baseType: !134, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2480, file: !2386, line: 630, baseType: !359, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2480, file: !2386, line: 631, baseType: !12, size: 32, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2480, file: !2386, line: 653, baseType: !12, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2480, file: !2386, line: 654, baseType: !12, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2480, file: !2386, line: 655, baseType: !12, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2480, file: !2386, line: 656, baseType: !12, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2480, file: !2386, line: 662, baseType: !2496, size: 512, offset: 704)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2497, line: 118, size: 512, elements: !2498)
!2497 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2498 = !{!2499, !2507, !2508, !2517, !2565, !2566, !2567, !2568}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2496, file: !2497, line: 119, baseType: !2500, size: 256)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2501, line: 9, size: 256, elements: !2502)
!2501 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2500, file: !2501, line: 10, baseType: !383, size: 192, align: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2500, file: !2501, line: 11, baseType: !2505, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2506, line: 29, baseType: !134)
!2506 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2496, file: !2497, line: 120, baseType: !2505, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2496, file: !2497, line: 121, baseType: !2509, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2512, !2516}
!2512 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2497, line: 65, baseType: !12, size: 32, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2515 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2496, file: !2497, line: 122, baseType: !2518, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2497, line: 159, size: 512, align: 512, elements: !2520)
!2520 = !{!2521, !2546, !2547, !2550, !2555, !2556, !2560, !2564}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2519, file: !2497, line: 160, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2497, line: 215, size: 4608, align: 512, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2523, file: !2497, line: 216, baseType: !137, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2523, file: !2497, line: 217, baseType: !12, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2523, file: !2497, line: 218, baseType: !12, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2523, file: !2497, line: 219, baseType: !12, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2523, file: !2497, line: 220, baseType: !12, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2523, file: !2497, line: 221, baseType: !12, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2523, file: !2497, line: 222, baseType: !12, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2523, file: !2497, line: 223, baseType: !12, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2523, file: !2497, line: 224, baseType: !12, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2523, file: !2497, line: 226, baseType: !12, size: 32, offset: 160)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2523, file: !2497, line: 227, baseType: !168, size: 16, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2523, file: !2497, line: 228, baseType: !168, size: 16, offset: 208)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2523, file: !2497, line: 229, baseType: !12, size: 32, offset: 224)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2523, file: !2497, line: 235, baseType: !2505, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2523, file: !2497, line: 236, baseType: !2516, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2523, file: !2497, line: 237, baseType: !2505, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2523, file: !2497, line: 238, baseType: !2516, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2523, file: !2497, line: 239, baseType: !2543, size: 4096, align: 512, offset: 512)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2519, size: 4096, align: 512, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 8)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2519, file: !2497, line: 161, baseType: !12, size: 32, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2519, file: !2497, line: 162, baseType: !2548, size: 32, offset: 96)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !83, line: 32, baseType: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !113, line: 96, baseType: !79)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2519, file: !2497, line: 163, baseType: !2551, size: 32, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !577, line: 274, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !577, line: 274, size: 32, elements: !2553)
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2552, file: !577, line: 274, baseType: !581, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2519, file: !2497, line: 164, baseType: !2516, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2519, file: !2497, line: 165, baseType: !2557, size: 128, offset: 256)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2501, line: 14, size: 128, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2557, file: !2501, line: 15, baseType: !988, size: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2519, file: !2497, line: 166, baseType: !2561, size: 64, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!2505}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2519, file: !2497, line: 167, baseType: !2505, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2496, file: !2497, line: 123, baseType: !158, size: 8, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2496, file: !2497, line: 124, baseType: !158, size: 8, offset: 456)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2496, file: !2497, line: 125, baseType: !158, size: 8, offset: 464)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2496, file: !2497, line: 126, baseType: !158, size: 8, offset: 472)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2480, file: !2386, line: 671, baseType: !2496, size: 512, offset: 1216)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2480, file: !2386, line: 679, baseType: !2571, size: 64, offset: 1728)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2385, file: !2386, line: 800, baseType: !2573, size: 64, offset: 5248)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2575)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2386, line: 800, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2385, file: !2386, line: 809, baseType: !2577, size: 64, offset: 5312)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2386, line: 70, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2385, file: !2386, line: 825, baseType: !2580, size: 2048, align: 512, offset: 5632)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2386, line: 509, size: 2048, align: 512, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2580, file: !2386, line: 511, baseType: !359, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2580, file: !2386, line: 512, baseType: !359, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2580, file: !2386, line: 513, baseType: !359, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2580, file: !2386, line: 514, baseType: !359, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2580, file: !2386, line: 515, baseType: !359, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2580, file: !2386, line: 516, baseType: !359, size: 64, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2580, file: !2386, line: 518, baseType: !359, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2580, file: !2386, line: 519, baseType: !359, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2580, file: !2386, line: 520, baseType: !134, size: 64, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2580, file: !2386, line: 522, baseType: !359, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2580, file: !2386, line: 523, baseType: !359, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2580, file: !2386, line: 524, baseType: !134, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2580, file: !2386, line: 526, baseType: !134, size: 64, offset: 768)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2580, file: !2386, line: 527, baseType: !359, size: 64, offset: 832)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2580, file: !2386, line: 529, baseType: !359, size: 64, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2580, file: !2386, line: 530, baseType: !359, size: 64, offset: 960)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2580, file: !2386, line: 531, baseType: !359, size: 64, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2580, file: !2386, line: 532, baseType: !359, size: 64, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2580, file: !2386, line: 533, baseType: !359, size: 64, offset: 1152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2580, file: !2386, line: 535, baseType: !359, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2580, file: !2386, line: 536, baseType: !359, size: 64, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2580, file: !2386, line: 537, baseType: !359, size: 64, offset: 1344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2580, file: !2386, line: 538, baseType: !359, size: 64, offset: 1408)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2580, file: !2386, line: 539, baseType: !359, size: 64, offset: 1472)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2580, file: !2386, line: 540, baseType: !359, size: 64, offset: 1536)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2580, file: !2386, line: 541, baseType: !359, size: 64, offset: 1600)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2580, file: !2386, line: 542, baseType: !359, size: 64, offset: 1664)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2580, file: !2386, line: 543, baseType: !359, size: 64, offset: 1728)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2385, file: !2386, line: 833, baseType: !12, size: 32, offset: 7680)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2385, file: !2386, line: 836, baseType: !12, size: 32, offset: 7712)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2385, file: !2386, line: 837, baseType: !79, size: 32, offset: 7744)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2385, file: !2386, line: 838, baseType: !2614, size: 64, offset: 7808)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !30, line: 19, baseType: !32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2385, file: !2386, line: 839, baseType: !2618, size: 64, offset: 7872)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2385, file: !2386, line: 840, baseType: !2616, size: 64, offset: 7936)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2385, file: !2386, line: 841, baseType: !24, size: 64, offset: 8000)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2385, file: !2386, line: 843, baseType: !168, size: 16, offset: 8064)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2385, file: !2386, line: 845, baseType: !168, size: 16, offset: 8080)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2385, file: !2386, line: 848, baseType: !79, size: 32, offset: 8096)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2385, file: !2386, line: 849, baseType: !2625, size: 32, offset: 8128)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2386, line: 718, size: 32, elements: !2626)
!2626 = !{!2627, !2634}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2625, file: !2386, line: 724, baseType: !2628, size: 32)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2625, file: !2386, line: 719, size: 32, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2628, file: !2386, line: 720, baseType: !158, size: 8)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2628, file: !2386, line: 721, baseType: !158, size: 8, offset: 8)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2628, file: !2386, line: 722, baseType: !158, size: 8, offset: 16)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2628, file: !2386, line: 723, baseType: !158, size: 8, offset: 24)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2625, file: !2386, line: 725, baseType: !44, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2385, file: !2386, line: 850, baseType: !176, size: 128, offset: 8192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2385, file: !2386, line: 851, baseType: !2637, size: 64, offset: 8320)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2386, line: 60, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2385, file: !2386, line: 855, baseType: !36, size: 64, offset: 8384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2385, file: !2386, line: 856, baseType: !158, size: 8, offset: 8448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2385, file: !2386, line: 857, baseType: !158, size: 8, offset: 8456)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2385, file: !2386, line: 858, baseType: !79, size: 32, offset: 8480)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2385, file: !2386, line: 859, baseType: !176, size: 128, offset: 8512)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2385, file: !2386, line: 860, baseType: !79, size: 32, offset: 8640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2385, file: !2386, line: 861, baseType: !176, size: 128, offset: 8704)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2385, file: !2386, line: 873, baseType: !2647, size: 256, offset: 8832)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2386, line: 376, size: 256, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2652}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2647, file: !2386, line: 381, baseType: !36, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2647, file: !2386, line: 384, baseType: !361, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2647, file: !2386, line: 389, baseType: !361, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2647, file: !2386, line: 392, baseType: !361, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2385, file: !2386, line: 875, baseType: !176, size: 128, offset: 9088)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2385, file: !2386, line: 877, baseType: !2655, size: 320, offset: 9216)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2656, line: 86, size: 320, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2655, file: !2656, line: 87, baseType: !79, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2655, file: !2656, line: 88, baseType: !176, size: 128, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2655, file: !2656, line: 89, baseType: !176, size: 128, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2385, file: !2386, line: 878, baseType: !383, size: 192, align: 64, offset: 9536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2385, file: !2386, line: 881, baseType: !1281, size: 64, offset: 9728)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2385, file: !2386, line: 882, baseType: !1281, size: 64, offset: 9792)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2385, file: !2386, line: 884, baseType: !79, size: 32, offset: 9856)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2385, file: !2386, line: 885, baseType: !79, size: 32, offset: 9888)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2385, file: !2386, line: 886, baseType: !79, size: 32, offset: 9920)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2385, file: !2386, line: 888, baseType: !79, size: 32, offset: 9952)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2385, file: !2386, line: 890, baseType: !36, size: 64, offset: 9984)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2385, file: !2386, line: 893, baseType: !12, size: 32, offset: 10048)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2385, file: !2386, line: 896, baseType: !12, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2385, file: !2386, line: 897, baseType: !12, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2385, file: !2386, line: 898, baseType: !12, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2385, file: !2386, line: 899, baseType: !12, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2385, file: !2386, line: 919, baseType: !12, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2385, file: !2386, line: 922, baseType: !12, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2385, file: !2386, line: 923, baseType: !12, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2385, file: !2386, line: 925, baseType: !12, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2385, file: !2386, line: 939, baseType: !12, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2385, file: !2386, line: 941, baseType: !12, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2385, file: !2386, line: 944, baseType: !12, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2385, file: !2386, line: 956, baseType: !12, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2385, file: !2386, line: 962, baseType: !12, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2385, file: !2386, line: 966, baseType: !12, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2385, file: !2386, line: 969, baseType: !36, size: 64, offset: 10176)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2385, file: !2386, line: 971, baseType: !2686, size: 448, offset: 10240)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2687, line: 25, size: 448, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2688 = !{!2689, !2690, !2695}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2686, file: !2687, line: 26, baseType: !36, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2686, file: !2687, line: 27, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!725, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2686, file: !2687, line: 28, baseType: !2696, size: 320, offset: 128)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2686, file: !2687, line: 28, size: 320, elements: !2697)
!2697 = !{!2698, !2708, !2738}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2696, file: !2687, line: 37, baseType: !2699, size: 320)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !2687, line: 30, size: 320, elements: !2700)
!2700 = !{!2701, !2703, !2704, !2705, !2706, !2707}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2699, file: !2687, line: 31, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2699, file: !2687, line: 32, baseType: !44, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2699, file: !2687, line: 33, baseType: !44, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2699, file: !2687, line: 34, baseType: !44, size: 32, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2699, file: !2687, line: 35, baseType: !359, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2699, file: !2687, line: 36, baseType: !2702, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2696, file: !2687, line: 47, baseType: !2709, size: 192)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !2687, line: 39, size: 192, elements: !2710)
!2710 = !{!2711, !2712, !2718, !2737}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2709, file: !2687, line: 40, baseType: !2548, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2709, file: !2687, line: 41, baseType: !2713, size: 32, offset: 32)
!2713 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2687, line: 16, baseType: !12, size: 32, elements: !2714)
!2714 = !{!2715, !2716, !2717}
!2715 = !DIEnumerator(name: "TT_NONE", value: 0)
!2716 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2717 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !2687, line: 42, baseType: !2719, size: 64, offset: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !2687, line: 42, size: 64, elements: !2720)
!2720 = !{!2721, !2729}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2719, file: !2687, line: 43, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2724, line: 7, size: 128, elements: !2725)
!2724 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2725 = !{!2726, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2723, file: !2724, line: 8, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !113, line: 93, baseType: !121)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2723, file: !2724, line: 9, baseType: !121, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2719, file: !2687, line: 44, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2732, line: 7, size: 64, elements: !2733)
!2732 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2733 = !{!2734, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2731, file: !2732, line: 8, baseType: !2735, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2732, line: 5, baseType: !376)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2731, file: !2732, line: 9, baseType: !376, size: 32, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2709, file: !2687, line: 46, baseType: !359, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2696, file: !2687, line: 55, baseType: !2739, size: 256)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !2687, line: 49, size: 256, elements: !2740)
!2740 = !{!2741, !2744, !2745, !2746, !2747}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2739, file: !2687, line: 50, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2687, line: 14, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2739, file: !2687, line: 51, baseType: !79, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2739, file: !2687, line: 52, baseType: !79, size: 32, offset: 96)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2739, file: !2687, line: 53, baseType: !36, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2739, file: !2687, line: 54, baseType: !36, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2385, file: !2386, line: 973, baseType: !2749, size: 32, offset: 10688)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !83, line: 27, baseType: !2750)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !113, line: 28, baseType: !79)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2385, file: !2386, line: 974, baseType: !2749, size: 32, offset: 10720)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2385, file: !2386, line: 978, baseType: !36, size: 64, offset: 10752)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2385, file: !2386, line: 987, baseType: !2384, size: 64, offset: 10816)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2385, file: !2386, line: 990, baseType: !2384, size: 64, offset: 10880)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2385, file: !2386, line: 995, baseType: !176, size: 128, offset: 10944)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2385, file: !2386, line: 996, baseType: !176, size: 128, offset: 11072)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2385, file: !2386, line: 997, baseType: !2384, size: 64, offset: 11200)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2385, file: !2386, line: 1005, baseType: !176, size: 128, offset: 11264)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2385, file: !2386, line: 1006, baseType: !176, size: 128, offset: 11392)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2385, file: !2386, line: 1009, baseType: !269, size: 64, offset: 11520)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2385, file: !2386, line: 1010, baseType: !2762, size: 512, offset: 11584)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 512, elements: !292)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2385, file: !2386, line: 1011, baseType: !176, size: 128, offset: 12096)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2385, file: !2386, line: 1012, baseType: !176, size: 128, offset: 12224)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2385, file: !2386, line: 1014, baseType: !1651, size: 64, offset: 12352)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2385, file: !2386, line: 1017, baseType: !1798, size: 64, offset: 12416)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2385, file: !2386, line: 1020, baseType: !1798, size: 64, offset: 12480)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2385, file: !2386, line: 1023, baseType: !24, size: 64, offset: 12544)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2385, file: !2386, line: 1025, baseType: !359, size: 64, offset: 12608)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2385, file: !2386, line: 1026, baseType: !359, size: 64, offset: 12672)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2385, file: !2386, line: 1031, baseType: !359, size: 64, offset: 12736)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2385, file: !2386, line: 1032, baseType: !2773, size: 192, offset: 12800)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2386, line: 324, size: 192, elements: !2774)
!2774 = !{!2775, !2776, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2773, file: !2386, line: 326, baseType: !359, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2773, file: !2386, line: 327, baseType: !359, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2773, file: !2386, line: 328, baseType: !137, size: 32, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2385, file: !2386, line: 1041, baseType: !36, size: 64, offset: 12992)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2385, file: !2386, line: 1042, baseType: !36, size: 64, offset: 13056)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2385, file: !2386, line: 1045, baseType: !359, size: 64, offset: 13120)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2385, file: !2386, line: 1048, baseType: !359, size: 64, offset: 13184)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2385, file: !2386, line: 1051, baseType: !36, size: 64, offset: 13248)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2385, file: !2386, line: 1052, baseType: !36, size: 64, offset: 13312)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2385, file: !2386, line: 1055, baseType: !2785, size: 640, offset: 13376)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2786, line: 132, size: 640, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2787 = !{!2788, !2794, !2795}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2785, file: !2786, line: 133, baseType: !2789, size: 576)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2790, size: 576, elements: !5)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2786, line: 117, size: 192, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2790, file: !2786, line: 118, baseType: !359, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2790, file: !2786, line: 119, baseType: !2557, size: 128, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2785, file: !2786, line: 134, baseType: !12, size: 32, offset: 576)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2785, file: !2786, line: 135, baseType: !12, size: 32, offset: 608)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2385, file: !2386, line: 1058, baseType: !2797, size: 448, offset: 14016)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2786, line: 144, size: 448, elements: !2798)
!2798 = !{!2799, !2800, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2797, file: !2786, line: 145, baseType: !220, size: 128, align: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2797, file: !2786, line: 146, baseType: !124, size: 256, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2797, file: !2786, line: 147, baseType: !12, size: 32, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2385, file: !2386, line: 1064, baseType: !332, size: 64, offset: 14464)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2385, file: !2386, line: 1067, baseType: !332, size: 64, offset: 14528)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2385, file: !2386, line: 1070, baseType: !332, size: 64, offset: 14592)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2385, file: !2386, line: 1074, baseType: !368, size: 64, offset: 14656)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2385, file: !2386, line: 1084, baseType: !2807, size: 128, offset: 14720)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2808)
!2808 = !{!2809}
!2809 = !DISubrange(count: 16)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2385, file: !2386, line: 1086, baseType: !2811, size: 64, offset: 14848)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2386, line: 55, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2385, file: !2386, line: 1089, baseType: !2814, size: 64, offset: 14912)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2815, line: 12, size: 64, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2814, file: !2815, line: 13, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2815, line: 8, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2385, file: !2386, line: 1090, baseType: !2821, size: 128, offset: 14976)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2822, line: 13, size: 128, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2821, file: !2822, line: 14, baseType: !176, size: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2385, file: !2386, line: 1097, baseType: !2826, size: 64, offset: 15104)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2386, line: 50, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2385, file: !2386, line: 1100, baseType: !2829, size: 64, offset: 15168)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2386, line: 1100, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2385, file: !2386, line: 1103, baseType: !2832, size: 64, offset: 15232)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2386, line: 53, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2385, file: !2386, line: 1107, baseType: !2835, size: 64, offset: 15296)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2386, line: 56, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2385, file: !2386, line: 1110, baseType: !2838, size: 64, offset: 15360)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2840, line: 93, size: 8768, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2889, !2898, !2899, !2901, !2902, !2903, !2906, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2944, !2945, !2952, !2962, !2965, !2966, !2969, !2970, !2971, !2972, !2973, !2974}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2839, file: !2840, line: 94, baseType: !274, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2839, file: !2840, line: 95, baseType: !150, size: 32, offset: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2839, file: !2840, line: 96, baseType: !79, size: 32, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2839, file: !2840, line: 97, baseType: !79, size: 32, offset: 96)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2839, file: !2840, line: 98, baseType: !176, size: 128, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2839, file: !2840, line: 100, baseType: !296, size: 192, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2839, file: !2840, line: 103, baseType: !2384, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2839, file: !2840, line: 106, baseType: !2850, size: 192, offset: 512)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !537, line: 32, size: 192, elements: !2851)
!2851 = !{!2852, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2850, file: !537, line: 33, baseType: !176, size: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2850, file: !537, line: 34, baseType: !2854, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2855, line: 25, baseType: !2856)
!2855 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2855, line: 23, size: 64, elements: !2857)
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2856, file: !2855, line: 24, baseType: !35, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2839, file: !2840, line: 109, baseType: !283, size: 64, offset: 704)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2839, file: !2840, line: 112, baseType: !79, size: 32, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2839, file: !2840, line: 114, baseType: !79, size: 32, offset: 800)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2839, file: !2840, line: 115, baseType: !2384, size: 64, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2839, file: !2840, line: 118, baseType: !79, size: 32, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2839, file: !2840, line: 119, baseType: !12, size: 32, offset: 928)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2839, file: !2840, line: 121, baseType: !2866, size: 64, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2840, line: 80, size: 448, elements: !2868)
!2868 = !{!2869, !2870, !2876}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2867, file: !2840, line: 81, baseType: !150, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2867, file: !2840, line: 82, baseType: !2871, size: 128, offset: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2840, line: 75, size: 128, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2871, file: !2840, line: 76, baseType: !2384, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2871, file: !2840, line: 77, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2867, file: !2840, line: 83, baseType: !1652, size: 256, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2839, file: !2840, line: 132, baseType: !12, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2839, file: !2840, line: 133, baseType: !12, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2839, file: !2840, line: 138, baseType: !12, size: 32, offset: 1056)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2839, file: !2840, line: 139, baseType: !176, size: 128, offset: 1088)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2839, file: !2840, line: 142, baseType: !2496, size: 512, offset: 1216)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2839, file: !2840, line: 143, baseType: !2505, size: 64, offset: 1728)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2839, file: !2840, line: 150, baseType: !2884, size: 256, offset: 1792)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2885, size: 256, elements: !1788)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2840, line: 38, size: 128, elements: !2886)
!2886 = !{!2887, !2888}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2885, file: !2840, line: 39, baseType: !359, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2885, file: !2840, line: 40, baseType: !359, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2839, file: !2840, line: 156, baseType: !2890, size: 192, offset: 2048)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2840, line: 66, size: 192, elements: !2891)
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2890, file: !2840, line: 67, baseType: !2893, size: 192)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2840, line: 47, size: 192, elements: !2894)
!2894 = !{!2895, !2896, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2893, file: !2840, line: 48, baseType: !130, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2893, file: !2840, line: 49, baseType: !130, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2893, file: !2840, line: 50, baseType: !130, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2839, file: !2840, line: 160, baseType: !2785, size: 640, offset: 2240)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2839, file: !2840, line: 163, baseType: !2900, size: 256, offset: 2880)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !292)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2839, file: !2840, line: 169, baseType: !269, size: 64, offset: 3136)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2839, file: !2840, line: 172, baseType: !79, size: 32, offset: 3200)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2839, file: !2840, line: 174, baseType: !2904, size: 64, offset: 3264)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2840, line: 174, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2839, file: !2840, line: 185, baseType: !2907, size: 64, offset: 3328)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !577, line: 860, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 853, size: 64, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2908, file: !577, line: 858, baseType: !576, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2908, file: !577, line: 859, baseType: !230, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2839, file: !2840, line: 186, baseType: !359, size: 64, offset: 3392)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2839, file: !2840, line: 186, baseType: !359, size: 64, offset: 3456)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2839, file: !2840, line: 186, baseType: !359, size: 64, offset: 3520)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2839, file: !2840, line: 186, baseType: !359, size: 64, offset: 3584)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2839, file: !2840, line: 187, baseType: !359, size: 64, offset: 3648)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2839, file: !2840, line: 188, baseType: !359, size: 64, offset: 3712)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2839, file: !2840, line: 189, baseType: !2773, size: 192, offset: 3776)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2839, file: !2840, line: 190, baseType: !36, size: 64, offset: 3968)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2839, file: !2840, line: 190, baseType: !36, size: 64, offset: 4032)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2839, file: !2840, line: 190, baseType: !36, size: 64, offset: 4096)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2839, file: !2840, line: 190, baseType: !36, size: 64, offset: 4160)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2839, file: !2840, line: 191, baseType: !36, size: 64, offset: 4224)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2839, file: !2840, line: 191, baseType: !36, size: 64, offset: 4288)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2839, file: !2840, line: 191, baseType: !36, size: 64, offset: 4352)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2839, file: !2840, line: 191, baseType: !36, size: 64, offset: 4416)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2839, file: !2840, line: 192, baseType: !36, size: 64, offset: 4480)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2839, file: !2840, line: 192, baseType: !36, size: 64, offset: 4544)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2839, file: !2840, line: 192, baseType: !36, size: 64, offset: 4608)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2839, file: !2840, line: 192, baseType: !36, size: 64, offset: 4672)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2839, file: !2840, line: 193, baseType: !36, size: 64, offset: 4736)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2839, file: !2840, line: 193, baseType: !36, size: 64, offset: 4800)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2839, file: !2840, line: 194, baseType: !2934, size: 448, offset: 4864)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2935, line: 12, size: 448, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2936 = !{!2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2934, file: !2935, line: 15, baseType: !359, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2934, file: !2935, line: 17, baseType: !359, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2934, file: !2935, line: 19, baseType: !359, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2934, file: !2935, line: 21, baseType: !359, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2934, file: !2935, line: 29, baseType: !359, size: 64, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2934, file: !2935, line: 35, baseType: !359, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2934, file: !2935, line: 44, baseType: !359, size: 64, offset: 384)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2839, file: !2840, line: 202, baseType: !361, size: 64, offset: 5312)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2839, file: !2840, line: 213, baseType: !2946, size: 2048, offset: 5376)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2947, size: 2048, elements: !2808)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2948, line: 43, size: 128, elements: !2949)
!2948 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2947, file: !2948, line: 44, baseType: !114, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2947, file: !2948, line: 45, baseType: !114, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2839, file: !2840, line: 216, baseType: !2953, size: 448, offset: 7424)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2840, line: 30, size: 448, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2953, file: !2840, line: 31, baseType: !79, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2953, file: !2840, line: 32, baseType: !725, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2953, file: !2840, line: 33, baseType: !36, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2953, file: !2840, line: 34, baseType: !359, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2953, file: !2840, line: 34, baseType: !359, size: 64, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2953, file: !2840, line: 35, baseType: !36, size: 64, offset: 320)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2953, file: !2840, line: 35, baseType: !36, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2839, file: !2840, line: 219, baseType: !2963, size: 64, offset: 7872)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2840, line: 219, flags: DIFlagFwdDecl)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2839, file: !2840, line: 222, baseType: !12, size: 32, offset: 7936)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2839, file: !2840, line: 223, baseType: !2967, size: 64, offset: 8000)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2840, line: 223, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2839, file: !2840, line: 230, baseType: !82, size: 8, offset: 8064)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2839, file: !2840, line: 231, baseType: !419, size: 16, offset: 8080)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2839, file: !2840, line: 232, baseType: !419, size: 16, offset: 8096)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2839, file: !2840, line: 234, baseType: !1281, size: 64, offset: 8128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2839, file: !2840, line: 237, baseType: !124, size: 256, offset: 8192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2839, file: !2840, line: 243, baseType: !391, size: 320, offset: 8448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2385, file: !2386, line: 1111, baseType: !2976, size: 64, offset: 15424)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2840, line: 20, size: 16640, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2977, file: !2840, line: 21, baseType: !230, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2977, file: !2840, line: 22, baseType: !274, size: 32, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2977, file: !2840, line: 23, baseType: !296, size: 192, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2977, file: !2840, line: 24, baseType: !2983, size: 16384, offset: 256)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2984, size: 16384, elements: !918)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !537, line: 51, size: 256, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2984, file: !537, line: 52, baseType: !2987, size: 256)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !537, line: 37, size: 256, elements: !2988)
!2988 = !{!2989, !2996, !2997, !3001}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2987, file: !537, line: 39, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2991, line: 83, baseType: !2992)
!2991 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2991, line: 82, baseType: !2994)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !79}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2987, file: !537, line: 40, baseType: !36, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2987, file: !537, line: 46, baseType: !2998, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2991, line: 86, baseType: !2999)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2991, line: 85, baseType: !2003)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2987, file: !537, line: 48, baseType: !2854, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2385, file: !2386, line: 1112, baseType: !2854, size: 64, offset: 15488)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2385, file: !2386, line: 1113, baseType: !2854, size: 64, offset: 15552)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2385, file: !2386, line: 1115, baseType: !2854, size: 64, offset: 15616)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2385, file: !2386, line: 1116, baseType: !2850, size: 192, offset: 15680)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2385, file: !2386, line: 1117, baseType: !36, size: 64, offset: 15872)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2385, file: !2386, line: 1118, baseType: !111, size: 64, offset: 15936)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2385, file: !2386, line: 1119, baseType: !12, size: 32, offset: 16000)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2385, file: !2386, line: 1121, baseType: !223, size: 64, offset: 16064)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2385, file: !2386, line: 1125, baseType: !3011, size: 64, offset: 16128)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2386, line: 43, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2385, file: !2386, line: 1127, baseType: !322, size: 32, offset: 16192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2385, file: !2386, line: 1128, baseType: !12, size: 32, offset: 16224)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2385, file: !2386, line: 1130, baseType: !3016, size: 128, offset: 16256)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3017, line: 37, size: 128, elements: !3018)
!3017 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3018 = !{!3019, !3020, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3016, file: !3017, line: 38, baseType: !79, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3016, file: !3017, line: 39, baseType: !150, size: 32, offset: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3016, file: !3017, line: 40, baseType: !3022, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3017, line: 24, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2385, file: !2386, line: 1131, baseType: !3025, size: 256, offset: 16384)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3026, line: 12, size: 256, elements: !3027)
!3026 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3027 = !{!3028, !3029, !3030, !3031}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3025, file: !3026, line: 13, baseType: !109, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3025, file: !3026, line: 14, baseType: !36, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3025, file: !3026, line: 15, baseType: !36, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3025, file: !3026, line: 16, baseType: !82, size: 8, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2385, file: !2386, line: 1134, baseType: !359, size: 64, offset: 16640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2385, file: !2386, line: 1135, baseType: !359, size: 64, offset: 16704)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2385, file: !2386, line: 1138, baseType: !230, size: 32, offset: 16768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2385, file: !2386, line: 1141, baseType: !137, size: 32, offset: 16800)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2385, file: !2386, line: 1143, baseType: !3037, size: 64, offset: 16832)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2386, line: 735, size: 64, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3037, file: !2386, line: 736, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2385, file: !2386, line: 1147, baseType: !988, size: 128, offset: 16896)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2385, file: !2386, line: 1149, baseType: !2384, size: 64, offset: 17024)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2385, file: !2386, line: 1151, baseType: !3044, size: 64, offset: 17088)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2386, line: 1151, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2385, file: !2386, line: 1188, baseType: !24, size: 64, offset: 17152)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2385, file: !2386, line: 1191, baseType: !3048, size: 64, offset: 17216)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2386, line: 44, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2385, file: !2386, line: 1194, baseType: !3051, size: 64, offset: 17280)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2386, line: 45, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2385, file: !2386, line: 1197, baseType: !3054, size: 64, offset: 17344)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2386, line: 61, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2385, file: !2386, line: 1199, baseType: !3057, size: 64, offset: 17408)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3059, line: 99, size: 128, elements: !3060)
!3059 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3058, file: !3059, line: 100, baseType: !128, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3058, file: !3059, line: 101, baseType: !150, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3058, file: !3059, line: 103, baseType: !168, size: 16, offset: 96)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2385, file: !2386, line: 1202, baseType: !3065, size: 64, offset: 17472)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2386, line: 48, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2385, file: !2386, line: 1205, baseType: !36, size: 64, offset: 17536)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2385, file: !2386, line: 1206, baseType: !3069, size: 64, offset: 17600)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !537, line: 14, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !537, line: 12, size: 384, elements: !3072)
!3072 = !{!3073}
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !537, line: 13, baseType: !3074, size: 384)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !537, line: 13, size: 384, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3074, file: !537, line: 13, baseType: !79, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3074, file: !537, line: 13, baseType: !79, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3074, file: !537, line: 13, baseType: !79, size: 32, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3074, file: !537, line: 13, baseType: !3080, size: 256, offset: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3081, line: 37, size: 256, elements: !3082)
!3081 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3082 = !{!3083, !3088, !3101, !3107, !3116, !3143, !3148}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3080, file: !3081, line: 42, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 39, size: 64, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3084, file: !3081, line: 40, baseType: !2750, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3084, file: !3081, line: 41, baseType: !328, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3080, file: !3081, line: 50, baseType: !3089, size: 192)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 45, size: 192, elements: !3090)
!3090 = !{!3091, !3093, !3094, !3100}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3089, file: !3081, line: 46, baseType: !3092, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !113, line: 95, baseType: !79)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3089, file: !3081, line: 47, baseType: !79, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3089, file: !3081, line: 48, baseType: !3095, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3081, line: 11, baseType: !3096)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3081, line: 8, size: 64, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3096, file: !3081, line: 9, baseType: !79, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3096, file: !3081, line: 10, baseType: !24, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3089, file: !3081, line: 49, baseType: !79, size: 32, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3080, file: !3081, line: 57, baseType: !3102, size: 128)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 53, size: 128, elements: !3103)
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3102, file: !3081, line: 54, baseType: !2750, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3102, file: !3081, line: 55, baseType: !328, size: 32, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3102, file: !3081, line: 56, baseType: !3095, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3080, file: !3081, line: 66, baseType: !3108, size: 256)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 60, size: 256, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3115}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3108, file: !3081, line: 61, baseType: !2750, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3108, file: !3081, line: 62, baseType: !328, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3108, file: !3081, line: 63, baseType: !79, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3108, file: !3081, line: 64, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !113, line: 94, baseType: !767)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3108, file: !3081, line: 65, baseType: !3114, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3080, file: !3081, line: 105, baseType: !3117, size: 256)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 69, size: 256, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3117, file: !3081, line: 70, baseType: !24, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !3081, line: 79, baseType: !3121, size: 192, offset: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3117, file: !3081, line: 79, size: 192, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3132, !3137}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3121, file: !3081, line: 81, baseType: !79, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3121, file: !3081, line: 86, baseType: !419, size: 16)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3121, file: !3081, line: 92, baseType: !3126, size: 192)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3081, line: 88, size: 192, elements: !3127)
!3127 = !{!3128, !3130, !3131}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3126, file: !3081, line: 89, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2544)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3126, file: !3081, line: 90, baseType: !24, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3126, file: !3081, line: 91, baseType: !24, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3121, file: !3081, line: 97, baseType: !3133, size: 96)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3081, line: 94, size: 96, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3133, file: !3081, line: 95, baseType: !3129, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3133, file: !3081, line: 96, baseType: !46, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3121, file: !3081, line: 103, baseType: !3138, size: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3081, line: 99, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3138, file: !3081, line: 100, baseType: !36, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3138, file: !3081, line: 101, baseType: !46, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3138, file: !3081, line: 102, baseType: !46, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3080, file: !3081, line: 111, baseType: !3144, size: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 108, size: 128, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3144, file: !3081, line: 109, baseType: !725, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3144, file: !3081, line: 110, baseType: !79, size: 32, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3080, file: !3081, line: 118, baseType: !3149, size: 128)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !3081, line: 114, size: 128, elements: !3150)
!3150 = !{!3151, !3152, !3153}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3149, file: !3081, line: 115, baseType: !24, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3149, file: !3081, line: 116, baseType: !79, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3149, file: !3081, line: 117, baseType: !12, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2385, file: !2386, line: 1208, baseType: !2934, size: 448, offset: 17664)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2385, file: !2386, line: 1215, baseType: !359, size: 64, offset: 18112)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2385, file: !2386, line: 1217, baseType: !359, size: 64, offset: 18176)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2385, file: !2386, line: 1219, baseType: !359, size: 64, offset: 18240)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2385, file: !2386, line: 1223, baseType: !3159, size: 64, offset: 18304)
!3159 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3160, line: 99, baseType: !3161)
!3160 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3160, line: 99, size: 64, elements: !3162)
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3161, file: !3160, line: 99, baseType: !35, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2385, file: !2386, line: 1225, baseType: !576, size: 32, offset: 18368)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2385, file: !2386, line: 1226, baseType: !79, size: 32, offset: 18400)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2385, file: !2386, line: 1227, baseType: !79, size: 32, offset: 18432)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2385, file: !2386, line: 1231, baseType: !3168, size: 64, offset: 18496)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2386, line: 1231, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2385, file: !2386, line: 1233, baseType: !176, size: 128, offset: 18560)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2385, file: !2386, line: 1240, baseType: !3172, size: 64, offset: 18688)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2386, line: 62, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2385, file: !2386, line: 1242, baseType: !3175, size: 64, offset: 18752)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2386, line: 1242, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2385, file: !2386, line: 1244, baseType: !176, size: 128, offset: 18816)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2385, file: !2386, line: 1245, baseType: !3179, size: 64, offset: 18944)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2386, line: 51, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2385, file: !2386, line: 1246, baseType: !124, size: 256, offset: 19008)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2385, file: !2386, line: 1247, baseType: !12, size: 32, offset: 19264)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2385, file: !2386, line: 1250, baseType: !3184, size: 64, offset: 19328)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2386, line: 57, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2385, file: !2386, line: 1251, baseType: !124, size: 256, offset: 19392)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2385, file: !2386, line: 1252, baseType: !176, size: 128, offset: 19648)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2385, file: !2386, line: 1259, baseType: !1488, size: 64, offset: 19776)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2385, file: !2386, line: 1260, baseType: !419, size: 16, offset: 19840)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2385, file: !2386, line: 1261, baseType: !419, size: 16, offset: 19856)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2385, file: !2386, line: 1314, baseType: !3192, size: 64, offset: 19904)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3194, line: 62, size: 256, align: 256, elements: !3195)
!3194 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3193, file: !3194, line: 75, baseType: !46, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3193, file: !3194, line: 90, baseType: !46, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3193, file: !3194, line: 112, baseType: !360, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3193, file: !3194, line: 132, baseType: !46, size: 32, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3193, file: !3194, line: 140, baseType: !46, size: 32, offset: 160)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3193, file: !3194, line: 149, baseType: !46, size: 32, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3193, file: !3194, line: 154, baseType: !3203, offset: 224)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !311)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2385, file: !2386, line: 1315, baseType: !44, size: 32, offset: 19968)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2385, file: !2386, line: 1316, baseType: !44, size: 32, offset: 20000)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2385, file: !2386, line: 1321, baseType: !36, size: 64, offset: 20032)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2385, file: !2386, line: 1325, baseType: !79, size: 32, offset: 20096)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2385, file: !2386, line: 1326, baseType: !79, size: 32, offset: 20128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2385, file: !2386, line: 1327, baseType: !79, size: 32, offset: 20160)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2385, file: !2386, line: 1328, baseType: !79, size: 32, offset: 20192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2385, file: !2386, line: 1329, baseType: !220, size: 128, align: 64, offset: 20224)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2385, file: !2386, line: 1332, baseType: !3213, size: 128, offset: 20352)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3214, line: 51, size: 128, elements: !3215)
!3214 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3215 = !{!3216, !3221, !3222}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3213, file: !3214, line: 60, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3218, line: 7, size: 64, elements: !3219)
!3218 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3219 = !{!3220}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3217, file: !3218, line: 12, baseType: !32, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3213, file: !3214, line: 63, baseType: !82, size: 8, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3213, file: !3214, line: 70, baseType: !82, size: 8, offset: 72)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2385, file: !2386, line: 1335, baseType: !3224, size: 64, offset: 20480)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2386, line: 59, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2385, file: !2386, line: 1337, baseType: !3227, size: 128, offset: 20544)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3214, line: 39, size: 128, elements: !3228)
!3228 = !{!3229, !3230, !3231}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3227, file: !3214, line: 40, baseType: !1006, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3227, file: !3214, line: 42, baseType: !46, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3227, file: !3214, line: 43, baseType: !46, size: 32, offset: 96)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2385, file: !2386, line: 1340, baseType: !3233, size: 64, offset: 20672)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2386, line: 69, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2385, file: !2386, line: 1351, baseType: !79, size: 32, offset: 20736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2385, file: !2386, line: 1352, baseType: !79, size: 32, offset: 20768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2385, file: !2386, line: 1354, baseType: !36, size: 64, offset: 20800)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2385, file: !2386, line: 1364, baseType: !359, size: 64, offset: 20864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2385, file: !2386, line: 1365, baseType: !359, size: 64, offset: 20928)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2385, file: !2386, line: 1412, baseType: !36, size: 64, offset: 20992)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2385, file: !2386, line: 1453, baseType: !3242, size: 64, offset: 21056)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2386, line: 1453, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2385, file: !2386, line: 1457, baseType: !3245, size: 64, offset: 21120)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1430, line: 61, size: 576, elements: !3247)
!3247 = !{!3248, !3255, !3274, !3277, !3278, !3311, !3321}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3246, file: !1430, line: 62, baseType: !3249, size: 32)
!3249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1430, line: 51, baseType: !12, size: 32, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254}
!3251 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3252 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3253 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3254 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3246, file: !1430, line: 64, baseType: !3256, size: 192, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3246, file: !1430, line: 64, size: 192, elements: !3257)
!3257 = !{!3258, !3269}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !1430, line: 65, baseType: !3259, size: 192)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !1430, line: 65, size: 192, elements: !3260)
!3260 = !{!3261, !3268}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3259, file: !1430, line: 66, baseType: !3262, size: 128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3263, line: 50, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3262, file: !3263, line: 52, baseType: !36, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3262, file: !3263, line: 54, baseType: !12, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3262, file: !3263, line: 55, baseType: !12, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3259, file: !1430, line: 67, baseType: !36, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !1430, line: 70, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !1430, line: 70, size: 192, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3270, file: !1430, line: 71, baseType: !220, size: 128, align: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3270, file: !1430, line: 72, baseType: !36, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3246, file: !1430, line: 76, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1430, line: 76, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3246, file: !1430, line: 77, baseType: !36, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3246, file: !1430, line: 79, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3263, line: 25, size: 256, elements: !3281)
!3281 = !{!3282, !3288, !3292}
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 26, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 26, size: 128, elements: !3284)
!3284 = !{!3285, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3283, file: !3263, line: 27, baseType: !3286, size: 128)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !2808)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3283, file: !3263, line: 28, baseType: !3286, size: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3280, file: !3263, line: 31, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3291)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3263, line: 23, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 33, baseType: !3293, size: 64, offset: 192)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 33, size: 64, elements: !3294)
!3294 = !{!3295, !3301, !3306}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3293, file: !3263, line: 38, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 34, size: 64, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3296, file: !3263, line: 35, baseType: !376, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3296, file: !3263, line: 36, baseType: !158, size: 8, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3296, file: !3263, line: 37, baseType: !158, size: 8, offset: 40)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3293, file: !3263, line: 42, baseType: !3302, size: 16)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 39, size: 16, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3302, file: !3263, line: 40, baseType: !158, size: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3302, file: !3263, line: 41, baseType: !158, size: 8, offset: 8)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3293, file: !3263, line: 46, baseType: !3307, size: 16)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 43, size: 16, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3307, file: !3263, line: 44, baseType: !158, size: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3307, file: !3263, line: 45, baseType: !158, size: 8, offset: 8)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3246, file: !1430, line: 81, baseType: !3312, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1430, line: 85, size: 384, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3313, file: !1430, line: 86, baseType: !3275, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3313, file: !1430, line: 87, baseType: !36, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3313, file: !1430, line: 88, baseType: !36, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3313, file: !1430, line: 89, baseType: !36, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3313, file: !1430, line: 90, baseType: !82, size: 8, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3313, file: !1430, line: 92, baseType: !3312, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3246, file: !1430, line: 82, baseType: !12, size: 32, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2385, file: !2386, line: 1463, baseType: !3323, offset: 21184)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2386, line: 739, elements: !1302)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2385, file: !2386, line: 1470, baseType: !220, size: 128, align: 64, offset: 21184)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2385, file: !2386, line: 1471, baseType: !274, size: 32, offset: 21312)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2385, file: !2386, line: 1472, baseType: !79, size: 32, offset: 21344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2385, file: !2386, line: 1474, baseType: !2384, size: 64, offset: 21376)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2385, file: !2386, line: 1475, baseType: !1898, size: 320, offset: 21440)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2385, file: !2386, line: 1478, baseType: !3330, size: 64, offset: 21760)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1207, line: 49, size: 512, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3331, file: !1207, line: 50, baseType: !3330, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3331, file: !1207, line: 51, baseType: !24, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !1207, line: 52, baseType: !36, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !1207, line: 53, baseType: !36, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3331, file: !1207, line: 54, baseType: !1156, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3331, file: !1207, line: 56, baseType: !12, size: 32, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3331, file: !1207, line: 58, baseType: !12, size: 32, offset: 352)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3331, file: !1207, line: 59, baseType: !3341, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !83, line: 159, baseType: !359)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3331, file: !1207, line: 60, baseType: !1397, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2385, file: !2386, line: 1482, baseType: !274, size: 32, offset: 21824)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2385, file: !2386, line: 1489, baseType: !24, size: 64, offset: 21888)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2385, file: !2386, line: 1504, baseType: !24, size: 64, offset: 21952)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2385, file: !2386, line: 1505, baseType: !360, size: 64, offset: 22016)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2385, file: !2386, line: 1506, baseType: !359, size: 64, offset: 22080)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2385, file: !2386, line: 1507, baseType: !360, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2385, file: !2386, line: 1508, baseType: !360, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2385, file: !2386, line: 1509, baseType: !360, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2385, file: !2386, line: 1510, baseType: !220, size: 128, align: 64, offset: 22208)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2385, file: !2386, line: 1511, baseType: !79, size: 32, offset: 22336)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2385, file: !2386, line: 1515, baseType: !3354, size: 64, offset: 22400)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !215, line: 56, size: 64, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3354, file: !215, line: 57, baseType: !218, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2385, file: !2386, line: 1518, baseType: !3354, size: 64, offset: 22464)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2385, file: !2386, line: 1528, baseType: !220, size: 128, align: 64, offset: 22528)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2385, file: !2386, line: 1552, baseType: !3360, size: 35328, offset: 23040)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3361, line: 430, size: 35328, elements: !3362)
!3361 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3362 = !{!3363, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3392, !3393, !3394, !3395, !3396, !3397, !3400, !3401, !3402, !3403}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3360, file: !3361, line: 432, baseType: !3364, size: 192)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3365, size: 192, elements: !5)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3366, line: 16, size: 64, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3365, file: !3366, line: 17, baseType: !166, size: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3365, file: !3366, line: 18, baseType: !166, size: 16, offset: 16)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3365, file: !3366, line: 19, baseType: !166, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3365, file: !3366, line: 19, baseType: !166, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3365, file: !3366, line: 19, baseType: !166, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3365, file: !3366, line: 19, baseType: !166, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3365, file: !3366, line: 19, baseType: !166, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3365, file: !3366, line: 20, baseType: !166, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3365, file: !3366, line: 20, baseType: !166, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3365, file: !3366, line: 20, baseType: !166, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3365, file: !3366, line: 20, baseType: !166, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3365, file: !3366, line: 20, baseType: !166, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3365, file: !3366, line: 20, baseType: !166, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3360, file: !3361, line: 436, baseType: !36, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3360, file: !3361, line: 440, baseType: !168, size: 16, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3360, file: !3361, line: 441, baseType: !168, size: 16, offset: 272)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3360, file: !3361, line: 442, baseType: !168, size: 16, offset: 288)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3360, file: !3361, line: 443, baseType: !168, size: 16, offset: 304)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3360, file: !3361, line: 447, baseType: !36, size: 64, offset: 320)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3360, file: !3361, line: 448, baseType: !36, size: 64, offset: 384)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3360, file: !3361, line: 459, baseType: !3389, size: 256, offset: 448)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3390, size: 256, elements: !292)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3361, line: 428, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3360, file: !3361, line: 461, baseType: !36, size: 64, offset: 704)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3360, file: !3361, line: 463, baseType: !36, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3360, file: !3361, line: 465, baseType: !36, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3360, file: !3361, line: 466, baseType: !36, size: 64, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3360, file: !3361, line: 467, baseType: !36, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3360, file: !3361, line: 473, baseType: !3398, size: 64, offset: 1024)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3361, line: 10, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3360, file: !3361, line: 480, baseType: !36, size: 64, offset: 1088)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3360, file: !3361, line: 482, baseType: !12, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3360, file: !3361, line: 491, baseType: !44, size: 32, offset: 1184)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3360, file: !3361, line: 501, baseType: !3404, size: 33792, offset: 1536)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3405, line: 448, size: 33792, elements: !3406)
!3405 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3406 = !{!3407, !3408, !3409, !3573, !3574, !3580, !3581}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3404, file: !3405, line: 461, baseType: !12, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3404, file: !3405, line: 468, baseType: !36, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3404, file: !3405, line: 476, baseType: !3410, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3405, line: 356, size: 33280, align: 512, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3411, file: !3405, line: 358, baseType: !12, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3411, file: !3405, line: 361, baseType: !12, size: 32, offset: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3411, file: !3405, line: 364, baseType: !359, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3411, file: !3405, line: 367, baseType: !359, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3411, file: !3405, line: 370, baseType: !359, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3411, file: !3405, line: 373, baseType: !12, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3411, file: !3405, line: 376, baseType: !12, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3411, file: !3405, line: 391, baseType: !12, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3411, file: !3405, line: 394, baseType: !12, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3411, file: !3405, line: 397, baseType: !3423, size: 32768, offset: 512)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3405, line: 348, size: 32768, elements: !3424)
!3424 = !{!3425, !3440, !3479, !3556, !3569}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3423, file: !3405, line: 349, baseType: !3426, size: 896)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3405, line: 12, size: 896, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3439}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3426, file: !3405, line: 13, baseType: !44, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3426, file: !3405, line: 14, baseType: !44, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3426, file: !3405, line: 15, baseType: !44, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3426, file: !3405, line: 16, baseType: !44, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3426, file: !3405, line: 17, baseType: !44, size: 32, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3426, file: !3405, line: 18, baseType: !44, size: 32, offset: 160)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3426, file: !3405, line: 19, baseType: !44, size: 32, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3426, file: !3405, line: 22, baseType: !3436, size: 640, offset: 224)
!3436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !3437)
!3437 = !{!3438}
!3438 = !DISubrange(count: 20)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3426, file: !3405, line: 25, baseType: !44, size: 32, offset: 864)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3423, file: !3405, line: 350, baseType: !3441, size: 4096, align: 128)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3405, line: 34, size: 4096, align: 128, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3462, !3463, !3464, !3468, !3470, !3474}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3441, file: !3405, line: 35, baseType: !166, size: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3441, file: !3405, line: 36, baseType: !166, size: 16, offset: 16)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3441, file: !3405, line: 37, baseType: !166, size: 16, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3441, file: !3405, line: 38, baseType: !166, size: 16, offset: 48)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !3405, line: 39, baseType: !3448, size: 128, offset: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !3405, line: 39, size: 128, elements: !3449)
!3449 = !{!3450, !3455}
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !3405, line: 40, baseType: !3451, size: 128)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3405, line: 40, size: 128, elements: !3452)
!3452 = !{!3453, !3454}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3451, file: !3405, line: 41, baseType: !359, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3451, file: !3405, line: 42, baseType: !359, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !3405, line: 44, baseType: !3456, size: 128)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3405, line: 44, size: 128, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3456, file: !3405, line: 45, baseType: !44, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3456, file: !3405, line: 46, baseType: !44, size: 32, offset: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3456, file: !3405, line: 47, baseType: !44, size: 32, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3456, file: !3405, line: 48, baseType: !44, size: 32, offset: 96)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3441, file: !3405, line: 51, baseType: !44, size: 32, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3441, file: !3405, line: 52, baseType: !44, size: 32, offset: 224)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3441, file: !3405, line: 55, baseType: !3465, size: 1024, offset: 256)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1024, elements: !3466)
!3466 = !{!3467}
!3467 = !DISubrange(count: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3441, file: !3405, line: 58, baseType: !3469, size: 2048, offset: 1280)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !918)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3441, file: !3405, line: 60, baseType: !3471, size: 384, offset: 3328)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 384, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 12)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !3405, line: 62, baseType: !3475, size: 384, offset: 3712)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !3405, line: 62, size: 384, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3475, file: !3405, line: 63, baseType: !3471, size: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3475, file: !3405, line: 64, baseType: !3471, size: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3423, file: !3405, line: 351, baseType: !3480, size: 1088)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3405, line: 79, size: 1088, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3555}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3480, file: !3405, line: 80, baseType: !44, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3480, file: !3405, line: 81, baseType: !44, size: 32, offset: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3480, file: !3405, line: 82, baseType: !44, size: 32, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3480, file: !3405, line: 83, baseType: !44, size: 32, offset: 96)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3480, file: !3405, line: 84, baseType: !44, size: 32, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3480, file: !3405, line: 85, baseType: !44, size: 32, offset: 160)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3480, file: !3405, line: 86, baseType: !44, size: 32, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3480, file: !3405, line: 88, baseType: !3436, size: 640, offset: 224)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3480, file: !3405, line: 89, baseType: !158, size: 8, offset: 864)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3480, file: !3405, line: 90, baseType: !158, size: 8, offset: 872)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3480, file: !3405, line: 91, baseType: !158, size: 8, offset: 880)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3480, file: !3405, line: 92, baseType: !158, size: 8, offset: 888)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3480, file: !3405, line: 93, baseType: !158, size: 8, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3480, file: !3405, line: 94, baseType: !158, size: 8, offset: 904)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3480, file: !3405, line: 95, baseType: !3497, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3499, line: 11, size: 128, elements: !3500)
!3499 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3500 = !{!3501, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3498, file: !3499, line: 12, baseType: !725, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3498, file: !3499, line: 13, baseType: !3503, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3505, line: 103, size: 1344, elements: !3506)
!3505 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3535, !3536, !3537}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3504, file: !3505, line: 109, baseType: !36, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3504, file: !3505, line: 110, baseType: !36, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3504, file: !3505, line: 111, baseType: !36, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3504, file: !3505, line: 112, baseType: !36, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3504, file: !3505, line: 113, baseType: !36, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3504, file: !3505, line: 114, baseType: !36, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3504, file: !3505, line: 117, baseType: !36, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3504, file: !3505, line: 118, baseType: !36, size: 64, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3504, file: !3505, line: 119, baseType: !36, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3504, file: !3505, line: 120, baseType: !36, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3504, file: !3505, line: 121, baseType: !36, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3504, file: !3505, line: 122, baseType: !36, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3504, file: !3505, line: 123, baseType: !36, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3504, file: !3505, line: 124, baseType: !36, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3504, file: !3505, line: 125, baseType: !36, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3504, file: !3505, line: 139, baseType: !36, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3504, file: !3505, line: 142, baseType: !36, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !3505, line: 144, baseType: !3525, size: 64, offset: 1088)
!3525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3504, file: !3505, line: 144, size: 64, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3525, file: !3505, line: 146, baseType: !166, size: 16)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3525, file: !3505, line: 148, baseType: !359, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3525, file: !3505, line: 150, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3505, line: 59, size: 64, elements: !3531)
!3531 = !{!3532, !3533, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3530, file: !3505, line: 61, baseType: !359, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3530, file: !3505, line: 63, baseType: !359, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3530, file: !3505, line: 65, baseType: !359, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3504, file: !3505, line: 153, baseType: !36, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3504, file: !3505, line: 154, baseType: !36, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !3505, line: 156, baseType: !3538, size: 64, offset: 1280)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3504, file: !3505, line: 156, size: 64, elements: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3538, file: !3505, line: 158, baseType: !166, size: 16)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3538, file: !3505, line: 160, baseType: !359, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3538, file: !3505, line: 162, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3505, line: 69, size: 64, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3543, file: !3505, line: 71, baseType: !359, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3543, file: !3505, line: 73, baseType: !359, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3543, file: !3505, line: 75, baseType: !359, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3543, file: !3505, line: 77, baseType: !359, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3543, file: !3505, line: 80, baseType: !359, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3543, file: !3505, line: 83, baseType: !359, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3543, file: !3505, line: 86, baseType: !359, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3543, file: !3505, line: 88, baseType: !359, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3543, file: !3505, line: 93, baseType: !359, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3543, file: !3505, line: 100, baseType: !359, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3480, file: !3405, line: 96, baseType: !44, size: 32, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3423, file: !3405, line: 352, baseType: !3557, size: 4608, align: 512)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3405, line: 333, size: 4608, align: 512, elements: !3558)
!3558 = !{!3559, !3560, !3567}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3557, file: !3405, line: 334, baseType: !3441, size: 4096, align: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3557, file: !3405, line: 335, baseType: !3561, size: 512, offset: 4096)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3405, line: 312, size: 512, elements: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3561, file: !3405, line: 313, baseType: !359, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3561, file: !3405, line: 314, baseType: !359, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3561, file: !3405, line: 315, baseType: !3566, size: 384, offset: 128)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 384, elements: !437)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3557, file: !3405, line: 336, baseType: !3568, offset: 4608)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, elements: !311)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3423, file: !3405, line: 353, baseType: !3570, size: 32768)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 32768, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 4096)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3404, file: !3405, line: 484, baseType: !3410, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3404, file: !3405, line: 491, baseType: !3575, size: 128, offset: 256)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3405, line: 404, size: 128, elements: !3576)
!3576 = !{!3577, !3578, !3579}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3575, file: !3405, line: 424, baseType: !359, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3575, file: !3405, line: 432, baseType: !12, size: 32, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3575, file: !3405, line: 440, baseType: !12, size: 32, offset: 96)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3404, file: !3405, line: 498, baseType: !3575, size: 128, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3404, file: !3405, line: 508, baseType: !3411, size: 33280, align: 512, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2367, file: !2368, line: 16, baseType: !296, size: 192, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2367, file: !2368, line: 17, baseType: !150, size: 32, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !822, file: !208, line: 1240, baseType: !24, size: 64, offset: 6912)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !822, file: !208, line: 1243, baseType: !44, size: 32, offset: 6976)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !822, file: !208, line: 1245, baseType: !407, size: 64, offset: 7040)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !822, file: !208, line: 1246, baseType: !407, size: 64, offset: 7104)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !822, file: !208, line: 1248, baseType: !46, size: 32, offset: 7168)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !822, file: !208, line: 1249, baseType: !3590, size: 64, offset: 7232)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 634, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !822, file: !208, line: 1252, baseType: !3593, size: 256, offset: 7296)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3466)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !822, file: !208, line: 1253, baseType: !3595, size: 128, offset: 7552)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3596, line: 21, baseType: !3597)
!3596 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3596, line: 19, size: 128, elements: !3598)
!3598 = !{!3599}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3597, file: !3596, line: 20, baseType: !3600, size: 128)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !2808)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !822, file: !208, line: 1255, baseType: !12, size: 32, offset: 7680)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !822, file: !208, line: 1261, baseType: !124, size: 256, offset: 7744)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !822, file: !208, line: 1267, baseType: !57, size: 64, offset: 8000)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !822, file: !208, line: 1269, baseType: !3605, size: 64, offset: 8064)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !572, line: 128, size: 1024, align: 512, elements: !3608)
!3608 = !{!3609, !3613, !3614, !3621, !3627, !3631, !3635, !3639, !3640, !3644, !3648, !3653, !3657}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3607, file: !572, line: 129, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!79, !570, !12}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3607, file: !572, line: 130, baseType: !3610, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3607, file: !572, line: 131, baseType: !3615, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!79, !3618, !3620}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3607, file: !572, line: 132, baseType: !3622, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!79, !3618, !12, !57, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3607, file: !572, line: 134, baseType: !3628, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!79, !3618}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3607, file: !572, line: 135, baseType: !3632, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!79, !570}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3607, file: !572, line: 136, baseType: !3636, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !570}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3607, file: !572, line: 137, baseType: !3636, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3607, file: !572, line: 138, baseType: !3641, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !570, !610}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3607, file: !572, line: 139, baseType: !3645, size: 64, offset: 576)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!109, !570, !109, !79}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3607, file: !572, line: 140, baseType: !3649, size: 64, offset: 640)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!565, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3607, file: !572, line: 141, baseType: !3654, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!79, !734, !82}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3607, file: !572, line: 142, baseType: !3658, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!570, !570, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !822, file: !208, line: 1271, baseType: !3664, size: 448, offset: 8128)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2149, line: 63, size: 448, elements: !3665)
!3665 = !{!3666, !3671, !3672, !3673, !3674, !3675, !3676}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3664, file: !2149, line: 64, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!36, !3670, !2147}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3664, file: !2149, line: 66, baseType: !3667, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3664, file: !2149, line: 69, baseType: !725, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3664, file: !2149, line: 70, baseType: !79, size: 32, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3664, file: !2149, line: 71, baseType: !12, size: 32, offset: 224)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3664, file: !2149, line: 74, baseType: !176, size: 128, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3664, file: !2149, line: 85, baseType: !3677, size: 64, offset: 384)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !822, file: !208, line: 1274, baseType: !128, size: 64, offset: 8576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !822, file: !208, line: 1280, baseType: !128, size: 64, offset: 8640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !822, file: !208, line: 1283, baseType: !79, size: 32, offset: 8704)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !822, file: !208, line: 1286, baseType: !1254, size: 32, offset: 8736)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !822, file: !208, line: 1289, baseType: !1960, size: 64, offset: 8768)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !822, file: !208, line: 1290, baseType: !283, size: 64, offset: 8832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !822, file: !208, line: 1297, baseType: !531, size: 64, offset: 8896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !822, file: !208, line: 1304, baseType: !3686, size: 64, offset: 8960)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3687, line: 49, size: 64, elements: !3688)
!3687 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3688 = !{!3689}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3686, file: !3687, line: 50, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3687, line: 41, size: 512, align: 512, elements: !3692)
!3692 = !{!3693, !3694, !3699}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3691, file: !3687, line: 43, baseType: !230, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3691, file: !3687, line: 45, baseType: !3695, size: 192, offset: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3687, line: 29, size: 192, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3695, file: !3687, line: 30, baseType: !176, size: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3695, file: !3687, line: 32, baseType: !725, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3691, file: !3687, line: 46, baseType: !725, size: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !822, file: !208, line: 1305, baseType: !3686, size: 64, offset: 9024)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !822, file: !208, line: 1306, baseType: !220, size: 128, align: 64, offset: 9088)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !822, file: !208, line: 1307, baseType: !1437, size: 256, offset: 9216)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !822, file: !208, line: 1309, baseType: !124, size: 256, offset: 9472)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !822, file: !208, line: 1314, baseType: !79, size: 32, offset: 9728)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !822, file: !208, line: 1317, baseType: !230, size: 32, align: 512, offset: 10240)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !822, file: !208, line: 1318, baseType: !176, size: 128, offset: 10304)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !822, file: !208, line: 1320, baseType: !230, size: 32, offset: 10432)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !822, file: !208, line: 1321, baseType: !176, size: 128, offset: 10496)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !611, file: !208, line: 656, baseType: !979, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !611, file: !208, line: 659, baseType: !24, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !611, file: !208, line: 663, baseType: !36, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !208, line: 671, baseType: !3713, size: 32, offset: 704)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !208, line: 671, size: 32, elements: !3714)
!3714 = !{!3715, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3713, file: !208, line: 672, baseType: !3716, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3713, file: !208, line: 673, baseType: !12, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !611, file: !208, line: 675, baseType: !685, size: 32, offset: 736)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !611, file: !208, line: 676, baseType: !119, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !611, file: !208, line: 677, baseType: !721, size: 128, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !611, file: !208, line: 678, baseType: !721, size: 128, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !611, file: !208, line: 679, baseType: !721, size: 128, offset: 1088)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !611, file: !208, line: 680, baseType: !230, size: 32, offset: 1216)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !611, file: !208, line: 681, baseType: !168, size: 16, offset: 1248)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !611, file: !208, line: 682, baseType: !158, size: 8, offset: 1264)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !611, file: !208, line: 683, baseType: !158, size: 8, offset: 1272)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !611, file: !208, line: 684, baseType: !2280, size: 64, offset: 1280)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !611, file: !208, line: 691, baseType: !36, size: 64, offset: 1344)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !611, file: !208, line: 692, baseType: !391, size: 320, offset: 1408)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !611, file: !208, line: 694, baseType: !36, size: 64, offset: 1728)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !611, file: !208, line: 695, baseType: !36, size: 64, offset: 1792)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !611, file: !208, line: 697, baseType: !287, size: 128, offset: 1856)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !611, file: !208, line: 698, baseType: !176, size: 128, offset: 1984)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !611, file: !208, line: 707, baseType: !176, size: 128, offset: 2112)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !611, file: !208, line: 708, baseType: !176, size: 128, offset: 2240)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !208, line: 709, baseType: !3737, size: 128, offset: 2368)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !208, line: 709, size: 128, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3737, file: !208, line: 710, baseType: !283, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3737, file: !208, line: 711, baseType: !220, size: 128, align: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !611, file: !208, line: 713, baseType: !130, size: 64, offset: 2496)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !611, file: !208, line: 714, baseType: !130, size: 64, offset: 2560)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !611, file: !208, line: 715, baseType: !150, size: 32, offset: 2624)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !611, file: !208, line: 716, baseType: !150, size: 32, offset: 2656)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !611, file: !208, line: 717, baseType: !150, size: 32, offset: 2688)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !611, file: !208, line: 719, baseType: !150, size: 32, offset: 2720)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !208, line: 721, baseType: !3748, size: 64, offset: 2752)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !208, line: 721, size: 64, elements: !3749)
!3749 = !{!3750, !3874}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3748, file: !208, line: 722, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1914, size: 2112, elements: !3754)
!3754 = !{!3755, !3756, !3760, !3764, !3768, !3769, !3770, !3776, !3789, !3793, !3797, !3798, !3802, !3803, !3807, !3812, !3813, !3817, !3821, !3827, !3828, !3832, !3833, !3837, !3841, !3842, !3847, !3851, !3855, !3859, !3863, !3864, !3870}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3753, file: !208, line: 1915, baseType: !855, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3753, file: !208, line: 1916, baseType: !3757, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!119, !729, !119, !79}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3753, file: !208, line: 1917, baseType: !3761, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!765, !729, !109, !111, !190}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3753, file: !208, line: 1918, baseType: !3765, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!765, !729, !57, !111, !190}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3753, file: !208, line: 1919, baseType: !1180, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3753, file: !208, line: 1920, baseType: !1180, size: 64, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3753, file: !208, line: 1921, baseType: !3771, size: 64, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!79, !1183, !3774, !12}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !208, line: 53, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3753, file: !208, line: 1923, baseType: !3777, size: 64, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!79, !729, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1858, size: 128, elements: !3782)
!3782 = !{!3783, !3788}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3781, file: !208, line: 1859, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1855, baseType: !3785)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!82, !3780, !57, !79, !119, !359, !12}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3781, file: !208, line: 1860, baseType: !119, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3753, file: !208, line: 1924, baseType: !3790, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!1614, !729, !1616}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3753, file: !208, line: 1925, baseType: !3794, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!725, !729, !12, !36}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3753, file: !208, line: 1926, baseType: !3794, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3753, file: !208, line: 1927, baseType: !3799, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!79, !729, !1268}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3753, file: !208, line: 1928, baseType: !36, size: 64, offset: 768)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3753, file: !208, line: 1929, baseType: !3804, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!79, !610, !729}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3753, file: !208, line: 1930, baseType: !3808, size: 64, offset: 896)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!79, !729, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1061, baseType: !24)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3753, file: !208, line: 1931, baseType: !3804, size: 64, offset: 960)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3753, file: !208, line: 1932, baseType: !3814, size: 64, offset: 1024)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!79, !729, !119, !119, !79}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3753, file: !208, line: 1933, baseType: !3818, size: 64, offset: 1088)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!79, !79, !729, !79}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3753, file: !208, line: 1934, baseType: !3822, size: 64, offset: 1152)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!79, !729, !79, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1063, flags: DIFlagFwdDecl)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3753, file: !208, line: 1935, baseType: !1306, size: 64, offset: 1216)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3753, file: !208, line: 1936, baseType: !3829, size: 64, offset: 1280)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!79, !79}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3753, file: !208, line: 1937, baseType: !3822, size: 64, offset: 1344)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3753, file: !208, line: 1938, baseType: !3834, size: 64, offset: 1408)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!765, !3224, !729, !190, !111, !12}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3753, file: !208, line: 1939, baseType: !3838, size: 64, offset: 1472)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!765, !729, !190, !3224, !111, !12}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3753, file: !208, line: 1940, baseType: !1244, size: 64, offset: 1536)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3753, file: !208, line: 1941, baseType: !3843, size: 64, offset: 1600)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!79, !729, !79, !3846, !1157}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3753, file: !208, line: 1942, baseType: !3848, size: 64, offset: 1664)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!725, !729, !79, !119, !119}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3753, file: !208, line: 1944, baseType: !3852, size: 64, offset: 1728)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !104, !729}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3753, file: !208, line: 1948, baseType: !3856, size: 64, offset: 1792)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!765, !729, !119, !729, !119, !111, !12}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3753, file: !208, line: 1950, baseType: !3860, size: 64, offset: 1856)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!119, !729, !119, !729, !119, !119, !12}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3753, file: !208, line: 1953, baseType: !3814, size: 64, offset: 1920)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3753, file: !208, line: 1954, baseType: !3865, size: 64, offset: 1984)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!79, !3868, !12}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !208, line: 1911, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3753, file: !208, line: 1955, baseType: !3871, size: 64, offset: 2048)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!79, !3868, !3774, !12}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3748, file: !208, line: 723, baseType: !2028, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !611, file: !208, line: 725, baseType: !3876, size: 64, offset: 2816)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 725, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !611, file: !208, line: 726, baseType: !980, size: 1536, align: 64, offset: 2880)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !611, file: !208, line: 727, baseType: !176, size: 128, offset: 4416)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !208, line: 728, baseType: !3881, size: 64, offset: 4544)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !208, line: 728, size: 64, elements: !3882)
!3882 = !{!3883, !3884, !3887, !3888}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3881, file: !208, line: 729, baseType: !3224, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3881, file: !208, line: 730, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !208, line: 730, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3881, file: !208, line: 731, baseType: !109, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3881, file: !208, line: 732, baseType: !12, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !611, file: !208, line: 735, baseType: !46, size: 32, offset: 4608)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !611, file: !208, line: 738, baseType: !46, size: 32, offset: 4640)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !611, file: !208, line: 739, baseType: !3590, size: 64, offset: 4672)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !611, file: !208, line: 750, baseType: !24, size: 64, offset: 4736)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !571, file: !572, line: 91, baseType: !3894, size: 256, offset: 448)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !3466)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !571, file: !572, line: 94, baseType: !3896, size: 64, offset: 704)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3897, line: 25, size: 64, elements: !3898)
!3897 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3898 = !{!3899}
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !3897, line: 26, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !3897, line: 26, size: 64, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3900, file: !3897, line: 28, baseType: !360, size: 64, align: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3900, file: !3897, line: 30, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3900, file: !3897, line: 30, size: 64, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3904, file: !3897, line: 31, baseType: !230, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3904, file: !3897, line: 32, baseType: !79, size: 32, offset: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !571, file: !572, line: 95, baseType: !3605, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !571, file: !572, line: 96, baseType: !821, size: 64, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !571, file: !572, line: 97, baseType: !36, size: 64, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !571, file: !572, line: 98, baseType: !24, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !572, line: 100, baseType: !3913, size: 128, offset: 1024)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !572, line: 100, size: 128, elements: !3914)
!3914 = !{!3915, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3913, file: !572, line: 101, baseType: !176, size: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3913, file: !572, line: 102, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !571, file: !572, line: 104, baseType: !176, size: 128, offset: 1152)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !571, file: !572, line: 105, baseType: !176, size: 128, offset: 1280)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !571, file: !572, line: 113, baseType: !3921, size: 128, offset: 1408)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !572, line: 109, size: 128, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3921, file: !572, line: 110, baseType: !287, size: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3921, file: !572, line: 111, baseType: !586, size: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3921, file: !572, line: 112, baseType: !220, size: 128, align: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !566, file: !567, line: 72, baseType: !821, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !566, file: !567, line: 73, baseType: !79, size: 32, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !566, file: !567, line: 74, baseType: !650, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !561, file: !562, line: 10, baseType: !570, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !207, file: !208, line: 1015, baseType: !610, size: 64, offset: 1344)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !207, file: !208, line: 1016, baseType: !3751, size: 64, offset: 1408)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !207, file: !208, line: 1018, baseType: !359, size: 64, offset: 1472)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !207, file: !208, line: 1020, baseType: !24, size: 64, offset: 1536)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !207, file: !208, line: 1023, baseType: !24, size: 64, offset: 1600)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !207, file: !208, line: 1027, baseType: !3936, size: 64, offset: 1664)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !207, file: !208, line: 1029, baseType: !979, size: 64, offset: 1728)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !207, file: !208, line: 1030, baseType: !1254, size: 32, offset: 1792)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !207, file: !208, line: 1031, baseType: !1254, size: 32, offset: 1824)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !105, file: !106, line: 29, baseType: !24, size: 64, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !54, file: !19, line: 533, baseType: !86, size: 64, offset: 1344)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !54, file: !19, line: 534, baseType: !65, size: 64, offset: 1408)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !54, file: !19, line: 536, baseType: !3944, size: 64, offset: 1472)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !63, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !19, line: 29, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !54, file: !19, line: 537, baseType: !3944, size: 64, offset: 1536)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !54, file: !19, line: 539, baseType: !3951, size: 64, offset: 1600)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!79, !63, !3954, !1231}
!3954 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !3955, line: 497, baseType: !12, size: 32, elements: !3956)
!3955 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!3956 = !{!3957, !3958, !3959, !3960}
!3957 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!3958 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!3959 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!3960 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !54, file: !19, line: 540, baseType: !3962, size: 64, offset: 1664)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!79, !63, !3954, !82}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !54, file: !19, line: 542, baseType: !3966, size: 64, offset: 1728)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!79, !63, !24}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !54, file: !19, line: 544, baseType: !3970, size: 64, offset: 1792)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !63, !12}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !54, file: !19, line: 545, baseType: !3974, size: 64, offset: 1856)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !63, !80}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !54, file: !19, line: 547, baseType: !86, size: 64, offset: 1920)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !54, file: !19, line: 548, baseType: !65, size: 64, offset: 1984)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !19, line: 550, baseType: !36, size: 64, offset: 2048)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !41, file: !19, line: 185, baseType: !3981, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3983, line: 13, flags: DIFlagFwdDecl)
!3983 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !41, file: !19, line: 187, baseType: !63, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !41, file: !19, line: 189, baseType: !24, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !14, file: !15, line: 58, baseType: !1750, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !14, file: !15, line: 59, baseType: !3988, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3989, line: 12, baseType: !3990)
!3989 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !13}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !14, file: !15, line: 60, baseType: !3994, size: 64, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !3955, line: 118, size: 1024, align: 512, elements: !3996)
!3996 = !{!3997, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3995, file: !3955, line: 119, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !3955, line: 100, baseType: !3999)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!4002, !79, !24}
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !4003, line: 17, baseType: !4004)
!4003 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!4004 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !4003, line: 11, baseType: !12, size: 32, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!4007 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!4008 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !3995, file: !3955, line: 120, baseType: !24, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !3995, file: !3955, line: 121, baseType: !24, size: 64, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3995, file: !3955, line: 122, baseType: !3994, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !3995, file: !3955, line: 123, baseType: !3998, size: 64, offset: 256)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3995, file: !3955, line: 124, baseType: !2384, size: 64, offset: 320)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3995, file: !3955, line: 125, baseType: !3994, size: 64, offset: 384)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3995, file: !3955, line: 126, baseType: !12, size: 32, offset: 448)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3995, file: !3955, line: 127, baseType: !12, size: 32, offset: 480)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !3995, file: !3955, line: 128, baseType: !36, size: 64, offset: 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !3995, file: !3955, line: 129, baseType: !36, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3995, file: !3955, line: 130, baseType: !57, size: 64, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3995, file: !3955, line: 131, baseType: !4021, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !15, line: 14, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !14, file: !15, line: 61, baseType: !12, size: 32, offset: 960)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !14, file: !15, line: 62, baseType: !12, size: 32, offset: 992)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !14, file: !15, line: 63, baseType: !12, size: 32, offset: 1024)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !14, file: !15, line: 64, baseType: !12, size: 32, offset: 1056)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !14, file: !15, line: 65, baseType: !12, size: 32, offset: 1088)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !14, file: !15, line: 66, baseType: !12, size: 32, offset: 1120)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !14, file: !15, line: 67, baseType: !36, size: 64, offset: 1152)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !14, file: !15, line: 68, baseType: !12, size: 32, offset: 1216)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !14, file: !15, line: 69, baseType: !150, size: 32, offset: 1248)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !14, file: !15, line: 70, baseType: !79, size: 32, offset: 1280)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !14, file: !15, line: 71, baseType: !137, size: 32, offset: 1312)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !14, file: !15, line: 72, baseType: !4035, size: 64, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !14, file: !15, line: 73, baseType: !80, size: 64, offset: 1408)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !14, file: !15, line: 75, baseType: !80, size: 64, offset: 1472)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !14, file: !15, line: 76, baseType: !4039, size: 64, offset: 1536)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !3955, line: 261, size: 448, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4049}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4040, file: !3955, line: 262, baseType: !12, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4040, file: !3955, line: 263, baseType: !1636, size: 32, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4040, file: !3955, line: 264, baseType: !1437, size: 256, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4040, file: !3955, line: 265, baseType: !4046, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !4039, !2614}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4040, file: !3955, line: 266, baseType: !4050, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !4053}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !14, file: !15, line: 78, baseType: !29, size: 64, offset: 1600)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !14, file: !15, line: 81, baseType: !36, size: 64, offset: 1664)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !14, file: !15, line: 82, baseType: !150, size: 32, offset: 1728)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !14, file: !15, line: 83, baseType: !296, size: 192, offset: 1792)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !14, file: !15, line: 85, baseType: !12, size: 32, offset: 1984)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !14, file: !15, line: 86, baseType: !12, size: 32, offset: 2016)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !14, file: !15, line: 87, baseType: !12, size: 32, offset: 2048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !14, file: !15, line: 88, baseType: !12, size: 32, offset: 2080)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !14, file: !15, line: 91, baseType: !4021, size: 64, offset: 2112)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !14, file: !15, line: 98, baseType: !220, size: 128, align: 64, offset: 2176)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !14, file: !15, line: 99, baseType: !875, size: 512, offset: 2304)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !14, file: !15, line: 101, baseType: !124, size: 256, offset: 2816)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !14, file: !15, line: 102, baseType: !79, size: 32, offset: 3072)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !14, file: !15, line: 103, baseType: !855, size: 64, offset: 3136)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 104, baseType: !57, size: 64, offset: 3200)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !14, file: !15, line: 106, baseType: !287, size: 128, offset: 3264)
!4070 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.proc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/proc\22 -D KBUILD_BASENAME=\22proc\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/proc.ll kernel/irq/proc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4071, retainedTypes: !4128, globals: !4129, splitDebugInlining: false, nameTableKind: None)
!4071 = !{!4004, !2512, !314, !860, !1212, !1506, !2054, !2123, !2713, !3249, !3954, !4072, !4078, !4104, !4109}
!4072 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 39, baseType: !12, size: 32, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIEnumerator(name: "AFFINITY", value: 0)
!4075 = !DIEnumerator(name: "AFFINITY_LIST", value: 1)
!4076 = !DIEnumerator(name: "EFFECTIVE", value: 2)
!4077 = !DIEnumerator(name: "EFFECTIVE_LIST", value: 3)
!4078 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 227, baseType: !12, size: 32, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4080 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!4081 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!4082 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!4083 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!4084 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!4085 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!4086 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!4087 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!4088 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!4089 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!4090 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!4091 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!4092 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!4093 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!4094 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!4095 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!4096 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!4097 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!4098 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!4099 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!4100 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!4101 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!4102 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!4103 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!4104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4105, line: 10, baseType: !12, size: 32, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4106 = !{!4107, !4108}
!4107 = !DIEnumerator(name: "false", value: 0)
!4108 = !DIEnumerator(name: "true", value: 1)
!4109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4110, line: 6, baseType: !12, size: 32, elements: !4111)
!4110 = !DIFile(filename: "kernel/irq/settings.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "472defa47e63f7ff01ae8d2992e315d8")
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4112 = !DIEnumerator(name: "_IRQ_DEFAULT_INIT_FLAGS", value: 0)
!4113 = !DIEnumerator(name: "_IRQ_PER_CPU", value: 512)
!4114 = !DIEnumerator(name: "_IRQ_LEVEL", value: 256)
!4115 = !DIEnumerator(name: "_IRQ_NOPROBE", value: 1024)
!4116 = !DIEnumerator(name: "_IRQ_NOREQUEST", value: 2048)
!4117 = !DIEnumerator(name: "_IRQ_NOTHREAD", value: 65536)
!4118 = !DIEnumerator(name: "_IRQ_NOAUTOEN", value: 4096)
!4119 = !DIEnumerator(name: "_IRQ_MOVE_PCNTXT", value: 16384)
!4120 = !DIEnumerator(name: "_IRQ_NO_BALANCING", value: 8192)
!4121 = !DIEnumerator(name: "_IRQ_NESTED_THREAD", value: 32768)
!4122 = !DIEnumerator(name: "_IRQ_PER_CPU_DEVID", value: 131072)
!4123 = !DIEnumerator(name: "_IRQ_IS_POLLED", value: 262144)
!4124 = !DIEnumerator(name: "_IRQ_DISABLE_UNLAZY", value: 524288)
!4125 = !DIEnumerator(name: "_IRQ_HIDDEN", value: 1048576)
!4126 = !DIEnumerator(name: "_IRQ_NO_DEBUG", value: 2097152)
!4127 = !DIEnumerator(name: "_IRQF_MODIFY_MASK", value: 2096911)
!4128 = !{!24, !36, !725, !190, !80, !12, !1750, !79, !817}
!4129 = !{!0, !7, !4130, !4132, !4137, !4142, !4147, !4152, !4157, !4162, !4167, !4169, !4172, !4212, !4214, !4217, !4219, !4221, !4223, !4225, !4228, !4230, !4232, !4234, !4236, !4238, !4240, !4242, !4244, !4262, !4265, !4267, !4269, !4271, !4276, !4281}
!4130 = !DIGlobalVariableExpression(var: !4131, expr: !DIExpression())
!4131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !3, isLocal: true, isDefinition: true)
!4132 = !DIGlobalVariableExpression(var: !4133, expr: !DIExpression())
!4133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !4134, isLocal: true, isDefinition: true)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !4135)
!4135 = !{!4136}
!4136 = !DISubrange(count: 13)
!4137 = !DIGlobalVariableExpression(var: !4138, expr: !DIExpression())
!4138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !4139, isLocal: true, isDefinition: true)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 14)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 374, type: !4144, isLocal: true, isDefinition: true)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !4145)
!4145 = !{!4146}
!4146 = !DISubrange(count: 18)
!4147 = !DIGlobalVariableExpression(var: !4148, expr: !DIExpression())
!4148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !4149, isLocal: true, isDefinition: true)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4150)
!4150 = !{!4151}
!4151 = !DISubrange(count: 5)
!4152 = !DIGlobalVariableExpression(var: !4153, expr: !DIExpression())
!4153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !4154, isLocal: true, isDefinition: true)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !4155)
!4155 = !{!4156}
!4156 = !DISubrange(count: 19)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !4159, isLocal: true, isDefinition: true)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !4160)
!4160 = !{!4161}
!4161 = !DISubrange(count: 24)
!4162 = !DIGlobalVariableExpression(var: !4163, expr: !DIExpression())
!4163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !4164, isLocal: true, isDefinition: true)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4165)
!4165 = !{!4166}
!4166 = !DISubrange(count: 9)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !3, isLocal: true, isDefinition: true)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 436, type: !4171, isLocal: true, isDefinition: true)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !292)
!4172 = !DIGlobalVariableExpression(var: !4173, expr: !DIExpression())
!4173 = distinct !DIGlobalVariable(name: "prec", scope: !4174, file: !2, line: 462, type: !79, isLocal: true, isDefinition: true)
!4174 = distinct !DISubprogram(name: "show_interrupts", scope: !2, file: !2, line: 460, type: !201, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4190, !4194, !4196, !4201, !4203, !4206, !4207, !4210, !4211}
!4176 = !DILocalVariable(name: "p", arg: 1, scope: !4174, file: !2, line: 460, type: !104)
!4177 = !DILocalVariable(name: "v", arg: 2, scope: !4174, file: !2, line: 460, type: !24)
!4178 = !DILocalVariable(name: "flags", scope: !4174, file: !2, line: 464, type: !36)
!4179 = !DILocalVariable(name: "any_count", scope: !4174, file: !2, line: 464, type: !36)
!4180 = !DILocalVariable(name: "i", scope: !4174, file: !2, line: 465, type: !79)
!4181 = !DILocalVariable(name: "j", scope: !4174, file: !2, line: 465, type: !79)
!4182 = !DILocalVariable(name: "action", scope: !4174, file: !2, line: 466, type: !3994)
!4183 = !DILocalVariable(name: "desc", scope: !4174, file: !2, line: 467, type: !13)
!4184 = !DILocalVariable(name: "__v", scope: !4185, file: !2, line: 493, type: !12)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !2, line: 493, column: 17)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !2, line: 492, column: 3)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !2, line: 492, column: 3)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !2, line: 491, column: 24)
!4189 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 491, column: 6)
!4190 = !DILocalVariable(name: "__vpp_verify", scope: !4191, file: !2, line: 493, type: !1397)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !2, line: 493, column: 17)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !2, line: 493, column: 17)
!4193 = distinct !DILexicalBlock(scope: !4185, file: !2, line: 493, column: 17)
!4194 = !DILocalVariable(name: "__ptr", scope: !4195, file: !2, line: 493, type: !36)
!4195 = distinct !DILexicalBlock(scope: !4192, file: !2, line: 493, column: 17)
!4196 = !DILocalVariable(name: "__vpp_verify", scope: !4197, file: !2, line: 502, type: !1397)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !2, line: 502, column: 7)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !2, line: 502, column: 7)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !2, line: 500, column: 2)
!4200 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 500, column: 2)
!4201 = !DILocalVariable(name: "__ptr", scope: !4202, file: !2, line: 502, type: !36)
!4202 = distinct !DILexicalBlock(scope: !4198, file: !2, line: 502, column: 7)
!4203 = !DILocalVariable(name: "__dummy", scope: !4204, file: !2, line: 504, type: !36)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !2, line: 504, column: 2)
!4205 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 504, column: 2)
!4206 = !DILocalVariable(name: "__dummy2", scope: !4204, file: !2, line: 504, type: !36)
!4207 = !DILocalVariable(name: "__dummy", scope: !4208, file: !2, line: 533, type: !36)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !2, line: 533, column: 2)
!4209 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 533, column: 2)
!4210 = !DILocalVariable(name: "__dummy2", scope: !4208, file: !2, line: 533, type: !36)
!4211 = !DILabel(scope: !4174, name: "outsparse", file: !2, line: 534)
!4212 = !DIGlobalVariableExpression(var: !4213, expr: !DIExpression())
!4213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !4171, isLocal: true, isDefinition: true)
!4214 = !DIGlobalVariableExpression(var: !4215, expr: !DIExpression())
!4215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !4216, isLocal: true, isDefinition: true)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !37)
!4217 = !DIGlobalVariableExpression(var: !4218, expr: !DIExpression())
!4218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !3129, isLocal: true, isDefinition: true)
!4219 = !DIGlobalVariableExpression(var: !4220, expr: !DIExpression())
!4220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !436, isLocal: true, isDefinition: true)
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !436, isLocal: true, isDefinition: true)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !4149, isLocal: true, isDefinition: true)
!4225 = !DIGlobalVariableExpression(var: !4226, expr: !DIExpression())
!4226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !4227, isLocal: true, isDefinition: true)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !1788)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !4149, isLocal: true, isDefinition: true)
!4230 = !DIGlobalVariableExpression(var: !4231, expr: !DIExpression())
!4231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !436, isLocal: true, isDefinition: true)
!4232 = !DIGlobalVariableExpression(var: !4233, expr: !DIExpression())
!4233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 518, type: !4149, isLocal: true, isDefinition: true)
!4234 = !DIGlobalVariableExpression(var: !4235, expr: !DIExpression())
!4235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !436, isLocal: true, isDefinition: true)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !4149, isLocal: true, isDefinition: true)
!4238 = !DIGlobalVariableExpression(var: !4239, expr: !DIExpression())
!4239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !4149, isLocal: true, isDefinition: true)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "root_irq_dir", scope: !4070, file: !2, line: 35, type: !4021, isLocal: true, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "no_irq_affinity", scope: !4070, file: !2, line: 103, type: !79, isLocal: false, isDefinition: true)
!4244 = !DIGlobalVariableExpression(var: !4245, expr: !DIExpression())
!4245 = distinct !DIGlobalVariable(name: "irq_affinity_proc_ops", scope: !4070, file: !2, line: 201, type: !4246, isLocal: true, isDefinition: true)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !4248, line: 29, size: 768, elements: !4249)
!4248 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !4247, file: !4248, line: 30, baseType: !12, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !4247, file: !4248, line: 31, baseType: !3804, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !4247, file: !4248, line: 32, baseType: !3761, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !4247, file: !4248, line: 33, baseType: !1180, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !4247, file: !4248, line: 34, baseType: !3765, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !4247, file: !4248, line: 36, baseType: !3757, size: 64, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !4247, file: !4248, line: 37, baseType: !3804, size: 64, offset: 384)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !4247, file: !4248, line: 38, baseType: !3790, size: 64, offset: 448)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !4247, file: !4248, line: 39, baseType: !3794, size: 64, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !4247, file: !4248, line: 41, baseType: !3794, size: 64, offset: 576)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !4247, file: !4248, line: 43, baseType: !3799, size: 64, offset: 640)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !4247, file: !4248, line: 44, baseType: !1306, size: 64, offset: 704)
!4262 = !DIGlobalVariableExpression(var: !4263, expr: !DIExpression())
!4263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !4264, isLocal: true, isDefinition: true)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1790)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !436, isLocal: true, isDefinition: true)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "irq_affinity_list_proc_ops", scope: !4070, file: !2, line: 209, type: !4246, isLocal: true, isDefinition: true)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !4171, isLocal: true, isDefinition: true)
!4271 = !DIGlobalVariableExpression(var: !4272, expr: !DIExpression())
!4272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !4273, isLocal: true, isDefinition: true)
!4273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !4274)
!4274 = !{!4275}
!4275 = !DISubrange(count: 44)
!4276 = !DIGlobalVariableExpression(var: !4277, expr: !DIExpression())
!4277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 425, type: !4278, isLocal: true, isDefinition: true)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !4279)
!4279 = !{!4280}
!4280 = !DISubrange(count: 25)
!4281 = !DIGlobalVariableExpression(var: !4282, expr: !DIExpression())
!4282 = distinct !DIGlobalVariable(name: "default_affinity_proc_ops", scope: !4070, file: !2, line: 271, type: !4246, isLocal: true, isDefinition: true)
!4283 = !{!4284, !4285, !4286, !4287, !4291}
!4284 = !DILocalVariable(name: "irq", arg: 1, scope: !9, file: !2, line: 338, type: !12)
!4285 = !DILocalVariable(name: "desc", arg: 2, scope: !9, file: !2, line: 338, type: !13)
!4286 = !DILocalVariable(name: "irqp", scope: !9, file: !2, line: 341, type: !24)
!4287 = !DILocalVariable(name: "name", scope: !9, file: !2, line: 342, type: !4288)
!4288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !4289)
!4289 = !{!4290}
!4290 = !DISubrange(count: 10)
!4291 = !DILabel(scope: !9, name: "out_unlock", file: !2, line: 389)
!4292 = !{i32 7, !"Dwarf Version", i32 5}
!4293 = !{i32 2, !"Debug Info Version", i32 3}
!4294 = !{i32 1, !"wchar_size", i32 2}
!4295 = !{i32 8, !"cf-protection-branch", i32 1}
!4296 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4297 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4298 = !{i32 1, !"Code Model", i32 2}
!4299 = !{i32 1, !"override-stack-alignment", i32 8}
!4300 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4301 = distinct !DISubprogram(name: "register_handler_proc", scope: !2, file: !2, line: 319, type: !4302, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !12, !3994}
!4304 = !{!4305, !4306, !4307, !4311}
!4305 = !DILocalVariable(name: "irq", arg: 1, scope: !4301, file: !2, line: 319, type: !12)
!4306 = !DILocalVariable(name: "action", arg: 2, scope: !4301, file: !2, line: 319, type: !3994)
!4307 = !DILocalVariable(name: "name", scope: !4301, file: !2, line: 321, type: !4308)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4309)
!4309 = !{!4310}
!4310 = !DISubrange(count: 128)
!4311 = !DILocalVariable(name: "desc", scope: !4301, file: !2, line: 322, type: !13)
!4312 = !DILocation(line: 319, column: 41, scope: !4301)
!4313 = !DILocation(line: 319, column: 64, scope: !4301)
!4314 = !DILocation(line: 321, column: 2, scope: !4301)
!4315 = !DILocation(line: 321, column: 7, scope: !4301)
!4316 = !DILocation(line: 322, column: 2, scope: !4301)
!4317 = !DILocation(line: 322, column: 19, scope: !4301)
!4318 = !DILocation(line: 322, column: 38, scope: !4301)
!4319 = !DILocation(line: 322, column: 26, scope: !4301)
!4320 = !DILocation(line: 324, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4301, file: !2, line: 324, column: 6)
!4322 = !DILocation(line: 324, column: 13, scope: !4321)
!4323 = !DILocation(line: 324, column: 17, scope: !4321)
!4324 = !DILocation(line: 324, column: 20, scope: !4321)
!4325 = !DILocation(line: 324, column: 28, scope: !4321)
!4326 = !DILocation(line: 324, column: 32, scope: !4321)
!4327 = !DILocation(line: 324, column: 36, scope: !4321)
!4328 = !DILocation(line: 324, column: 44, scope: !4321)
!4329 = !DILocation(line: 324, column: 49, scope: !4321)
!4330 = !DILocation(line: 325, column: 19, scope: !4321)
!4331 = !DILocation(line: 325, column: 24, scope: !4321)
!4332 = !DILocation(line: 325, column: 7, scope: !4321)
!4333 = !DILocation(line: 324, column: 6, scope: !4301)
!4334 = !DILocation(line: 326, column: 3, scope: !4321)
!4335 = !DILocation(line: 328, column: 11, scope: !4301)
!4336 = !DILocation(line: 328, column: 36, scope: !4301)
!4337 = !DILocation(line: 328, column: 44, scope: !4301)
!4338 = !DILocation(line: 328, column: 2, scope: !4301)
!4339 = !DILocation(line: 331, column: 27, scope: !4301)
!4340 = !DILocation(line: 331, column: 33, scope: !4301)
!4341 = !DILocation(line: 331, column: 39, scope: !4301)
!4342 = !DILocation(line: 331, column: 16, scope: !4301)
!4343 = !DILocation(line: 331, column: 2, scope: !4301)
!4344 = !DILocation(line: 331, column: 10, scope: !4301)
!4345 = !DILocation(line: 331, column: 14, scope: !4301)
!4346 = !DILocation(line: 332, column: 1, scope: !4301)
!4347 = !DISubprogram(name: "irq_to_desc", scope: !4348, file: !4348, line: 9, type: !4349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4348 = !DIFile(filename: "./include/linux/irqnr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590ce9d10c77e92ba5c0ad662f4e1272")
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!13, !12}
!4351 = distinct !DISubprogram(name: "name_unique", scope: !2, file: !2, line: 300, type: !4352, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!79, !12, !3994}
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360, !4361, !4364, !4365, !4368}
!4355 = !DILocalVariable(name: "irq", arg: 1, scope: !4351, file: !2, line: 300, type: !12)
!4356 = !DILocalVariable(name: "new_action", arg: 2, scope: !4351, file: !2, line: 300, type: !3994)
!4357 = !DILocalVariable(name: "desc", scope: !4351, file: !2, line: 302, type: !13)
!4358 = !DILocalVariable(name: "action", scope: !4351, file: !2, line: 303, type: !3994)
!4359 = !DILocalVariable(name: "flags", scope: !4351, file: !2, line: 304, type: !36)
!4360 = !DILocalVariable(name: "ret", scope: !4351, file: !2, line: 305, type: !79)
!4361 = !DILocalVariable(name: "__dummy", scope: !4362, file: !2, line: 307, type: !36)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !2, line: 307, column: 2)
!4363 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 307, column: 2)
!4364 = !DILocalVariable(name: "__dummy2", scope: !4362, file: !2, line: 307, type: !36)
!4365 = !DILocalVariable(name: "__dummy", scope: !4366, file: !2, line: 315, type: !36)
!4366 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 315, column: 2)
!4367 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 315, column: 2)
!4368 = !DILocalVariable(name: "__dummy2", scope: !4366, file: !2, line: 315, type: !36)
!4369 = !DILocation(line: 300, column: 37, scope: !4351)
!4370 = !DILocation(line: 300, column: 60, scope: !4351)
!4371 = !DILocation(line: 302, column: 2, scope: !4351)
!4372 = !DILocation(line: 302, column: 19, scope: !4351)
!4373 = !DILocation(line: 302, column: 38, scope: !4351)
!4374 = !DILocation(line: 302, column: 26, scope: !4351)
!4375 = !DILocation(line: 303, column: 2, scope: !4351)
!4376 = !DILocation(line: 303, column: 20, scope: !4351)
!4377 = !DILocation(line: 304, column: 2, scope: !4351)
!4378 = !DILocation(line: 304, column: 16, scope: !4351)
!4379 = !DILocation(line: 305, column: 2, scope: !4351)
!4380 = !DILocation(line: 305, column: 6, scope: !4351)
!4381 = !DILocation(line: 307, column: 2, scope: !4351)
!4382 = !DILocation(line: 307, column: 2, scope: !4362)
!4383 = !DILocation(line: 307, column: 2, scope: !4363)
!4384 = !DILocation(line: 308, column: 2, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 308, column: 2)
!4386 = !DILocation(line: 308, column: 2, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4385, file: !2, line: 308, column: 2)
!4388 = !DILocation(line: 309, column: 8, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !2, line: 309, column: 7)
!4390 = distinct !DILexicalBlock(scope: !4387, file: !2, line: 308, column: 40)
!4391 = !DILocation(line: 309, column: 18, scope: !4389)
!4392 = !DILocation(line: 309, column: 15, scope: !4389)
!4393 = !DILocation(line: 309, column: 30, scope: !4389)
!4394 = !DILocation(line: 309, column: 33, scope: !4389)
!4395 = !DILocation(line: 309, column: 41, scope: !4389)
!4396 = !DILocation(line: 309, column: 46, scope: !4389)
!4397 = !DILocation(line: 310, column: 13, scope: !4389)
!4398 = !DILocation(line: 310, column: 25, scope: !4389)
!4399 = !DILocation(line: 310, column: 31, scope: !4389)
!4400 = !DILocation(line: 310, column: 39, scope: !4389)
!4401 = !DILocation(line: 310, column: 6, scope: !4389)
!4402 = !DILocation(line: 309, column: 7, scope: !4390)
!4403 = !DILocation(line: 311, column: 8, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4389, file: !2, line: 310, column: 46)
!4405 = !DILocation(line: 312, column: 4, scope: !4404)
!4406 = !DILocation(line: 314, column: 2, scope: !4390)
!4407 = distinct !{!4407, !4384, !4408, !4409, !4410}
!4408 = !DILocation(line: 314, column: 2, scope: !4385)
!4409 = !{!"llvm.loop.mustprogress"}
!4410 = !{!"llvm.loop.unroll.disable"}
!4411 = !DILocation(line: 315, column: 2, scope: !4351)
!4412 = !DILocation(line: 315, column: 2, scope: !4366)
!4413 = !DILocation(line: 315, column: 2, scope: !4367)
!4414 = !DILocation(line: 316, column: 9, scope: !4351)
!4415 = !DILocation(line: 317, column: 1, scope: !4351)
!4416 = !DILocation(line: 316, column: 2, scope: !4351)
!4417 = !DISubprogram(name: "snprintf", scope: !4418, file: !4418, line: 12, type: !4419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4418 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!79, !109, !111, !57, null}
!4421 = !DISubprogram(name: "proc_mkdir", scope: !4248, file: !4248, line: 85, type: !4422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!4021, !57, !4021}
!4424 = !DILocation(line: 338, column: 37, scope: !9)
!4425 = !DILocation(line: 338, column: 59, scope: !9)
!4426 = !DILocation(line: 341, column: 2, scope: !9)
!4427 = !DILocation(line: 341, column: 23, scope: !9)
!4428 = !DILocation(line: 341, column: 54, scope: !9)
!4429 = !DILocation(line: 341, column: 38, scope: !9)
!4430 = !DILocation(line: 341, column: 30, scope: !9)
!4431 = !DILocation(line: 342, column: 2, scope: !9)
!4432 = !DILocation(line: 342, column: 7, scope: !9)
!4433 = !DILocation(line: 344, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !9, file: !2, line: 344, column: 6)
!4435 = !DILocation(line: 344, column: 20, scope: !4434)
!4436 = !DILocation(line: 344, column: 24, scope: !4434)
!4437 = !DILocation(line: 344, column: 30, scope: !4434)
!4438 = !DILocation(line: 344, column: 39, scope: !4434)
!4439 = !DILocation(line: 344, column: 44, scope: !4434)
!4440 = !DILocation(line: 344, column: 6, scope: !9)
!4441 = !DILocation(line: 345, column: 3, scope: !4434)
!4442 = !DILocation(line: 352, column: 2, scope: !9)
!4443 = !DILocation(line: 354, column: 6, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !9, file: !2, line: 354, column: 6)
!4445 = !DILocation(line: 354, column: 12, scope: !4444)
!4446 = !DILocation(line: 354, column: 6, scope: !9)
!4447 = !DILocation(line: 355, column: 3, scope: !4444)
!4448 = !DILocation(line: 357, column: 10, scope: !9)
!4449 = !DILocation(line: 357, column: 22, scope: !9)
!4450 = !DILocation(line: 357, column: 2, scope: !9)
!4451 = !DILocation(line: 360, column: 25, scope: !9)
!4452 = !DILocation(line: 360, column: 31, scope: !9)
!4453 = !DILocation(line: 360, column: 14, scope: !9)
!4454 = !DILocation(line: 360, column: 2, scope: !9)
!4455 = !DILocation(line: 360, column: 8, scope: !9)
!4456 = !DILocation(line: 360, column: 12, scope: !9)
!4457 = !DILocation(line: 361, column: 7, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !9, file: !2, line: 361, column: 6)
!4459 = !DILocation(line: 361, column: 13, scope: !4458)
!4460 = !DILocation(line: 361, column: 6, scope: !9)
!4461 = !DILocation(line: 362, column: 3, scope: !4458)
!4462 = !DILocation(line: 366, column: 41, scope: !9)
!4463 = !DILocation(line: 366, column: 47, scope: !9)
!4464 = !DILocation(line: 367, column: 29, scope: !9)
!4465 = !DILocation(line: 366, column: 2, scope: !9)
!4466 = !DILocation(line: 370, column: 49, scope: !9)
!4467 = !DILocation(line: 370, column: 55, scope: !9)
!4468 = !DILocation(line: 371, column: 33, scope: !9)
!4469 = !DILocation(line: 370, column: 2, scope: !9)
!4470 = !DILocation(line: 374, column: 46, scope: !9)
!4471 = !DILocation(line: 374, column: 52, scope: !9)
!4472 = !DILocation(line: 375, column: 34, scope: !9)
!4473 = !DILocation(line: 374, column: 2, scope: !9)
!4474 = !DILocation(line: 377, column: 40, scope: !9)
!4475 = !DILocation(line: 377, column: 46, scope: !9)
!4476 = !DILocation(line: 378, column: 4, scope: !9)
!4477 = !DILocation(line: 377, column: 2, scope: !9)
!4478 = !DILocation(line: 380, column: 54, scope: !9)
!4479 = !DILocation(line: 380, column: 60, scope: !9)
!4480 = !DILocation(line: 381, column: 33, scope: !9)
!4481 = !DILocation(line: 380, column: 2, scope: !9)
!4482 = !DILocation(line: 382, column: 59, scope: !9)
!4483 = !DILocation(line: 382, column: 65, scope: !9)
!4484 = !DILocation(line: 383, column: 38, scope: !9)
!4485 = !DILocation(line: 382, column: 2, scope: !9)
!4486 = !DILocation(line: 386, column: 44, scope: !9)
!4487 = !DILocation(line: 386, column: 50, scope: !9)
!4488 = !DILocation(line: 387, column: 42, scope: !9)
!4489 = !DILocation(line: 387, column: 36, scope: !9)
!4490 = !DILocation(line: 387, column: 28, scope: !9)
!4491 = !DILocation(line: 386, column: 2, scope: !9)
!4492 = !DILocation(line: 389, column: 1, scope: !9)
!4493 = !DILocation(line: 390, column: 2, scope: !9)
!4494 = !DILocation(line: 391, column: 1, scope: !9)
!4495 = !DISubprogram(name: "mutex_lock", scope: !125, file: !125, line: 227, type: !4496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!4499 = !DISubprogram(name: "sprintf", scope: !4418, file: !4418, line: 10, type: !4500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!79, !109, !57, null}
!4502 = !DISubprogram(name: "proc_create_data", scope: !4248, file: !4248, line: 105, type: !4503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!4021, !57, !614, !4021, !4505, !24}
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4506 = !DISubprogram(name: "proc_create_single_data", scope: !4248, file: !4248, line: 99, type: !4507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!4021, !57, !614, !4021, !200, !24}
!4509 = distinct !DISubprogram(name: "irq_affinity_hint_proc_show", scope: !2, file: !2, line: 83, type: !201, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4510)
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4516, !4519, !4520, !4523}
!4511 = !DILocalVariable(name: "m", arg: 1, scope: !4509, file: !2, line: 83, type: !104)
!4512 = !DILocalVariable(name: "v", arg: 2, scope: !4509, file: !2, line: 83, type: !24)
!4513 = !DILocalVariable(name: "desc", scope: !4509, file: !2, line: 85, type: !13)
!4514 = !DILocalVariable(name: "flags", scope: !4509, file: !2, line: 86, type: !36)
!4515 = !DILocalVariable(name: "mask", scope: !4509, file: !2, line: 87, type: !29)
!4516 = !DILocalVariable(name: "__dummy", scope: !4517, file: !2, line: 92, type: !36)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !2, line: 92, column: 2)
!4518 = distinct !DILexicalBlock(scope: !4509, file: !2, line: 92, column: 2)
!4519 = !DILocalVariable(name: "__dummy2", scope: !4517, file: !2, line: 92, type: !36)
!4520 = !DILocalVariable(name: "__dummy", scope: !4521, file: !2, line: 95, type: !36)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !2, line: 95, column: 2)
!4522 = distinct !DILexicalBlock(scope: !4509, file: !2, line: 95, column: 2)
!4523 = !DILocalVariable(name: "__dummy2", scope: !4521, file: !2, line: 95, type: !36)
!4524 = !DILocation(line: 83, column: 57, scope: !4509)
!4525 = !DILocation(line: 83, column: 66, scope: !4509)
!4526 = !DILocation(line: 85, column: 2, scope: !4509)
!4527 = !DILocation(line: 85, column: 19, scope: !4509)
!4528 = !DILocation(line: 85, column: 44, scope: !4509)
!4529 = !DILocation(line: 85, column: 47, scope: !4509)
!4530 = !DILocation(line: 85, column: 38, scope: !4509)
!4531 = !DILocation(line: 85, column: 26, scope: !4509)
!4532 = !DILocation(line: 86, column: 2, scope: !4509)
!4533 = !DILocation(line: 86, column: 16, scope: !4509)
!4534 = !DILocation(line: 87, column: 2, scope: !4509)
!4535 = !DILocation(line: 87, column: 16, scope: !4509)
!4536 = !DILocation(line: 89, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4509, file: !2, line: 89, column: 6)
!4538 = !DILocation(line: 89, column: 6, scope: !4509)
!4539 = !DILocation(line: 90, column: 3, scope: !4537)
!4540 = !DILocation(line: 92, column: 2, scope: !4509)
!4541 = !DILocation(line: 92, column: 2, scope: !4517)
!4542 = !DILocation(line: 92, column: 2, scope: !4518)
!4543 = !DILocation(line: 93, column: 6, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4509, file: !2, line: 93, column: 6)
!4545 = !DILocation(line: 93, column: 12, scope: !4544)
!4546 = !DILocation(line: 93, column: 6, scope: !4509)
!4547 = !DILocation(line: 94, column: 16, scope: !4544)
!4548 = !DILocation(line: 94, column: 22, scope: !4544)
!4549 = !DILocation(line: 94, column: 28, scope: !4544)
!4550 = !DILocation(line: 94, column: 3, scope: !4544)
!4551 = !DILocation(line: 95, column: 2, scope: !4509)
!4552 = !DILocation(line: 95, column: 2, scope: !4521)
!4553 = !DILocation(line: 95, column: 2, scope: !4522)
!4554 = !DILocation(line: 97, column: 13, scope: !4509)
!4555 = !DILocation(line: 97, column: 26, scope: !4509)
!4556 = !DILocation(line: 97, column: 2, scope: !4509)
!4557 = !DILocation(line: 98, column: 19, scope: !4509)
!4558 = !DILocation(line: 98, column: 2, scope: !4509)
!4559 = !DILocation(line: 100, column: 2, scope: !4509)
!4560 = !DILocation(line: 101, column: 1, scope: !4509)
!4561 = distinct !DISubprogram(name: "irq_node_proc_show", scope: !2, file: !2, line: 279, type: !201, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4562)
!4562 = !{!4563, !4564, !4565}
!4563 = !DILocalVariable(name: "m", arg: 1, scope: !4561, file: !2, line: 279, type: !104)
!4564 = !DILocalVariable(name: "v", arg: 2, scope: !4561, file: !2, line: 279, type: !24)
!4565 = !DILocalVariable(name: "desc", scope: !4561, file: !2, line: 281, type: !13)
!4566 = !DILocation(line: 279, column: 48, scope: !4561)
!4567 = !DILocation(line: 279, column: 57, scope: !4561)
!4568 = !DILocation(line: 281, column: 2, scope: !4561)
!4569 = !DILocation(line: 281, column: 19, scope: !4561)
!4570 = !DILocation(line: 281, column: 45, scope: !4561)
!4571 = !DILocation(line: 281, column: 48, scope: !4561)
!4572 = !DILocation(line: 281, column: 38, scope: !4561)
!4573 = !DILocation(line: 281, column: 26, scope: !4561)
!4574 = !DILocation(line: 283, column: 13, scope: !4561)
!4575 = !DILocation(line: 283, column: 42, scope: !4561)
!4576 = !DILocation(line: 283, column: 24, scope: !4561)
!4577 = !DILocation(line: 283, column: 2, scope: !4561)
!4578 = !DILocation(line: 285, column: 1, scope: !4561)
!4579 = !DILocation(line: 284, column: 2, scope: !4561)
!4580 = distinct !DISubprogram(name: "irq_effective_aff_proc_show", scope: !2, file: !2, line: 218, type: !201, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4581)
!4581 = !{!4582, !4583}
!4582 = !DILocalVariable(name: "m", arg: 1, scope: !4580, file: !2, line: 218, type: !104)
!4583 = !DILocalVariable(name: "v", arg: 2, scope: !4580, file: !2, line: 218, type: !24)
!4584 = !DILocation(line: 218, column: 57, scope: !4580)
!4585 = !DILocation(line: 218, column: 66, scope: !4580)
!4586 = !DILocation(line: 220, column: 38, scope: !4580)
!4587 = !DILocation(line: 220, column: 9, scope: !4580)
!4588 = !DILocation(line: 220, column: 2, scope: !4580)
!4589 = distinct !DISubprogram(name: "irq_effective_aff_list_proc_show", scope: !2, file: !2, line: 223, type: !201, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4590)
!4590 = !{!4591, !4592}
!4591 = !DILocalVariable(name: "m", arg: 1, scope: !4589, file: !2, line: 223, type: !104)
!4592 = !DILocalVariable(name: "v", arg: 2, scope: !4589, file: !2, line: 223, type: !24)
!4593 = !DILocation(line: 223, column: 62, scope: !4589)
!4594 = !DILocation(line: 223, column: 71, scope: !4589)
!4595 = !DILocation(line: 225, column: 43, scope: !4589)
!4596 = !DILocation(line: 225, column: 9, scope: !4589)
!4597 = !DILocation(line: 225, column: 2, scope: !4589)
!4598 = distinct !DISubprogram(name: "irq_spurious_proc_show", scope: !2, file: !2, line: 288, type: !201, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4599)
!4599 = !{!4600, !4601, !4602}
!4600 = !DILocalVariable(name: "m", arg: 1, scope: !4598, file: !2, line: 288, type: !104)
!4601 = !DILocalVariable(name: "v", arg: 2, scope: !4598, file: !2, line: 288, type: !24)
!4602 = !DILocalVariable(name: "desc", scope: !4598, file: !2, line: 290, type: !13)
!4603 = !DILocation(line: 288, column: 52, scope: !4598)
!4604 = !DILocation(line: 288, column: 61, scope: !4598)
!4605 = !DILocation(line: 290, column: 2, scope: !4598)
!4606 = !DILocation(line: 290, column: 19, scope: !4598)
!4607 = !DILocation(line: 290, column: 45, scope: !4598)
!4608 = !DILocation(line: 290, column: 48, scope: !4598)
!4609 = !DILocation(line: 290, column: 38, scope: !4598)
!4610 = !DILocation(line: 290, column: 26, scope: !4598)
!4611 = !DILocation(line: 292, column: 13, scope: !4598)
!4612 = !DILocation(line: 293, column: 6, scope: !4598)
!4613 = !DILocation(line: 293, column: 12, scope: !4598)
!4614 = !DILocation(line: 293, column: 23, scope: !4598)
!4615 = !DILocation(line: 293, column: 29, scope: !4598)
!4616 = !DILocation(line: 294, column: 23, scope: !4598)
!4617 = !DILocation(line: 294, column: 29, scope: !4598)
!4618 = !DILocation(line: 294, column: 6, scope: !4598)
!4619 = !DILocation(line: 292, column: 2, scope: !4598)
!4620 = !DILocation(line: 296, column: 1, scope: !4598)
!4621 = !DILocation(line: 295, column: 2, scope: !4598)
!4622 = !DISubprogram(name: "mutex_unlock", scope: !125, file: !125, line: 246, type: !4496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4623 = distinct !DISubprogram(name: "unregister_irq_proc", scope: !2, file: !2, line: 393, type: !10, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4624)
!4624 = !{!4625, !4626, !4627}
!4625 = !DILocalVariable(name: "irq", arg: 1, scope: !4623, file: !2, line: 393, type: !12)
!4626 = !DILocalVariable(name: "desc", arg: 2, scope: !4623, file: !2, line: 393, type: !13)
!4627 = !DILocalVariable(name: "name", scope: !4623, file: !2, line: 395, type: !4288)
!4628 = !DILocation(line: 393, column: 39, scope: !4623)
!4629 = !DILocation(line: 393, column: 61, scope: !4623)
!4630 = !DILocation(line: 395, column: 2, scope: !4623)
!4631 = !DILocation(line: 395, column: 7, scope: !4623)
!4632 = !DILocation(line: 397, column: 7, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4623, file: !2, line: 397, column: 6)
!4634 = !DILocation(line: 397, column: 20, scope: !4633)
!4635 = !DILocation(line: 397, column: 24, scope: !4633)
!4636 = !DILocation(line: 397, column: 30, scope: !4633)
!4637 = !DILocation(line: 397, column: 6, scope: !4623)
!4638 = !DILocation(line: 398, column: 3, scope: !4633)
!4639 = !DILocation(line: 400, column: 36, scope: !4623)
!4640 = !DILocation(line: 400, column: 42, scope: !4623)
!4641 = !DILocation(line: 400, column: 2, scope: !4623)
!4642 = !DILocation(line: 401, column: 37, scope: !4623)
!4643 = !DILocation(line: 401, column: 43, scope: !4623)
!4644 = !DILocation(line: 401, column: 2, scope: !4623)
!4645 = !DILocation(line: 402, column: 41, scope: !4623)
!4646 = !DILocation(line: 402, column: 47, scope: !4623)
!4647 = !DILocation(line: 402, column: 2, scope: !4623)
!4648 = !DILocation(line: 403, column: 28, scope: !4623)
!4649 = !DILocation(line: 403, column: 34, scope: !4623)
!4650 = !DILocation(line: 403, column: 2, scope: !4623)
!4651 = !DILocation(line: 405, column: 42, scope: !4623)
!4652 = !DILocation(line: 405, column: 48, scope: !4623)
!4653 = !DILocation(line: 405, column: 2, scope: !4623)
!4654 = !DILocation(line: 406, column: 47, scope: !4623)
!4655 = !DILocation(line: 406, column: 53, scope: !4623)
!4656 = !DILocation(line: 406, column: 2, scope: !4623)
!4657 = !DILocation(line: 409, column: 32, scope: !4623)
!4658 = !DILocation(line: 409, column: 38, scope: !4623)
!4659 = !DILocation(line: 409, column: 2, scope: !4623)
!4660 = !DILocation(line: 411, column: 10, scope: !4623)
!4661 = !DILocation(line: 411, column: 22, scope: !4623)
!4662 = !DILocation(line: 411, column: 2, scope: !4623)
!4663 = !DILocation(line: 412, column: 20, scope: !4623)
!4664 = !DILocation(line: 412, column: 26, scope: !4623)
!4665 = !DILocation(line: 412, column: 2, scope: !4623)
!4666 = !DILocation(line: 413, column: 1, scope: !4623)
!4667 = !DISubprogram(name: "remove_proc_entry", scope: !4248, file: !4248, line: 125, type: !4668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{null, !57, !4021}
!4670 = distinct !DISubprogram(name: "unregister_handler_proc", scope: !2, file: !2, line: 417, type: !4302, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4671)
!4671 = !{!4672, !4673}
!4672 = !DILocalVariable(name: "irq", arg: 1, scope: !4670, file: !2, line: 417, type: !12)
!4673 = !DILocalVariable(name: "action", arg: 2, scope: !4670, file: !2, line: 417, type: !3994)
!4674 = !DILocation(line: 417, column: 43, scope: !4670)
!4675 = !DILocation(line: 417, column: 66, scope: !4670)
!4676 = !DILocation(line: 419, column: 14, scope: !4670)
!4677 = !DILocation(line: 419, column: 22, scope: !4670)
!4678 = !DILocation(line: 419, column: 2, scope: !4670)
!4679 = !DILocation(line: 420, column: 1, scope: !4670)
!4680 = !DISubprogram(name: "proc_remove", scope: !4248, file: !4248, line: 124, type: !4681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !4021}
!4683 = distinct !DISubprogram(name: "init_irq_proc", scope: !2, file: !2, line: 430, type: !2003, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4684)
!4684 = !{!4685, !4686}
!4685 = !DILocalVariable(name: "irq", scope: !4683, file: !2, line: 432, type: !12)
!4686 = !DILocalVariable(name: "desc", scope: !4683, file: !2, line: 433, type: !13)
!4687 = !DILocation(line: 432, column: 2, scope: !4683)
!4688 = !DILocation(line: 432, column: 15, scope: !4683)
!4689 = !DILocation(line: 433, column: 2, scope: !4683)
!4690 = !DILocation(line: 433, column: 19, scope: !4683)
!4691 = !DILocation(line: 436, column: 17, scope: !4683)
!4692 = !DILocation(line: 436, column: 15, scope: !4683)
!4693 = !DILocation(line: 437, column: 7, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4683, file: !2, line: 437, column: 6)
!4695 = !DILocation(line: 437, column: 6, scope: !4683)
!4696 = !DILocation(line: 438, column: 3, scope: !4694)
!4697 = !DILocation(line: 440, column: 2, scope: !4683)
!4698 = !DILocation(line: 445, column: 2, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4683, file: !2, line: 445, column: 2)
!4700 = !DILocation(line: 445, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4699, file: !2, line: 445, column: 2)
!4702 = !DILocation(line: 445, column: 2, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4701, file: !2, line: 445, column: 2)
!4704 = !DILocation(line: 446, column: 21, scope: !4703)
!4705 = !DILocation(line: 446, column: 26, scope: !4703)
!4706 = !DILocation(line: 446, column: 3, scope: !4703)
!4707 = distinct !{!4707, !4698, !4708, !4409, !4410}
!4708 = !DILocation(line: 446, column: 30, scope: !4699)
!4709 = !DILocation(line: 447, column: 1, scope: !4683)
!4710 = distinct !DISubprogram(name: "register_default_affinity_proc", scope: !2, file: !2, line: 422, type: !2003, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070)
!4711 = !DILocation(line: 425, column: 2, scope: !4710)
!4712 = !DILocation(line: 428, column: 1, scope: !4710)
!4713 = distinct !DISubprogram(name: "arch_show_interrupts", scope: !2, file: !2, line: 451, type: !4714, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4716)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!79, !104, !79}
!4716 = !{!4717, !4718}
!4717 = !DILocalVariable(name: "p", arg: 1, scope: !4713, file: !2, line: 451, type: !104)
!4718 = !DILocalVariable(name: "prec", arg: 2, scope: !4713, file: !2, line: 451, type: !79)
!4719 = !DILocation(line: 451, column: 50, scope: !4713)
!4720 = !DILocation(line: 451, column: 57, scope: !4713)
!4721 = !DILocation(line: 453, column: 2, scope: !4713)
!4722 = !DILocation(line: 460, column: 38, scope: !4174)
!4723 = !DILocation(line: 460, column: 47, scope: !4174)
!4724 = !DILocation(line: 464, column: 2, scope: !4174)
!4725 = !DILocation(line: 464, column: 16, scope: !4174)
!4726 = !DILocation(line: 464, column: 23, scope: !4174)
!4727 = !DILocation(line: 465, column: 2, scope: !4174)
!4728 = !DILocation(line: 465, column: 6, scope: !4174)
!4729 = !DILocation(line: 465, column: 22, scope: !4174)
!4730 = !DILocation(line: 465, column: 10, scope: !4174)
!4731 = !DILocation(line: 465, column: 25, scope: !4174)
!4732 = !DILocation(line: 466, column: 2, scope: !4174)
!4733 = !DILocation(line: 466, column: 20, scope: !4174)
!4734 = !DILocation(line: 467, column: 2, scope: !4174)
!4735 = !DILocation(line: 467, column: 19, scope: !4174)
!4736 = !DILocation(line: 469, column: 6, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 469, column: 6)
!4738 = !DILocation(line: 469, column: 10, scope: !4737)
!4739 = !DILocation(line: 469, column: 8, scope: !4737)
!4740 = !DILocation(line: 469, column: 6, scope: !4174)
!4741 = !DILocation(line: 470, column: 3, scope: !4737)
!4742 = !DILocation(line: 472, column: 6, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 472, column: 6)
!4744 = !DILocation(line: 472, column: 11, scope: !4743)
!4745 = !DILocation(line: 472, column: 8, scope: !4743)
!4746 = !DILocation(line: 472, column: 6, scope: !4174)
!4747 = !DILocation(line: 473, column: 31, scope: !4743)
!4748 = !DILocation(line: 473, column: 34, scope: !4743)
!4749 = !DILocation(line: 473, column: 10, scope: !4743)
!4750 = !DILocation(line: 473, column: 3, scope: !4743)
!4751 = !DILocation(line: 476, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 476, column: 6)
!4753 = !DILocation(line: 476, column: 8, scope: !4752)
!4754 = !DILocation(line: 476, column: 6, scope: !4174)
!4755 = !DILocation(line: 477, column: 13, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !2, line: 477, column: 3)
!4757 = distinct !DILexicalBlock(scope: !4752, file: !2, line: 476, column: 14)
!4758 = !DILocation(line: 477, column: 20, scope: !4756)
!4759 = !DILocation(line: 477, column: 8, scope: !4756)
!4760 = !DILocation(line: 477, column: 28, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4756, file: !2, line: 477, column: 3)
!4762 = !DILocation(line: 477, column: 33, scope: !4761)
!4763 = !DILocation(line: 477, column: 38, scope: !4761)
!4764 = !DILocation(line: 477, column: 41, scope: !4761)
!4765 = !DILocation(line: 477, column: 46, scope: !4761)
!4766 = !DILocation(line: 477, column: 43, scope: !4761)
!4767 = !DILocation(line: 0, scope: !4761)
!4768 = !DILocation(line: 477, column: 3, scope: !4756)
!4769 = !DILocation(line: 478, column: 6, scope: !4761)
!4770 = !DILocation(line: 478, column: 4, scope: !4761)
!4771 = !DILocation(line: 477, column: 55, scope: !4761)
!4772 = !DILocation(line: 477, column: 3, scope: !4761)
!4773 = distinct !{!4773, !4768, !4774, !4409, !4410}
!4774 = !DILocation(line: 478, column: 9, scope: !4756)
!4775 = !DILocation(line: 480, column: 14, scope: !4757)
!4776 = !DILocation(line: 480, column: 24, scope: !4757)
!4777 = !DILocation(line: 480, column: 29, scope: !4757)
!4778 = !DILocation(line: 480, column: 3, scope: !4757)
!4779 = !DILocation(line: 481, column: 3, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4757, file: !2, line: 481, column: 3)
!4781 = !DILocation(line: 481, column: 3, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4780, file: !2, line: 481, column: 3)
!4783 = !DILocation(line: 482, column: 15, scope: !4782)
!4784 = !DILocation(line: 482, column: 29, scope: !4782)
!4785 = !DILocation(line: 482, column: 4, scope: !4782)
!4786 = distinct !{!4786, !4779, !4787, !4409, !4410}
!4787 = !DILocation(line: 482, column: 30, scope: !4780)
!4788 = !DILocation(line: 483, column: 12, scope: !4757)
!4789 = !DILocation(line: 483, column: 3, scope: !4757)
!4790 = !DILocation(line: 484, column: 2, scope: !4757)
!4791 = !DILocation(line: 486, column: 2, scope: !4174)
!4792 = !DILocation(line: 487, column: 21, scope: !4174)
!4793 = !DILocation(line: 487, column: 9, scope: !4174)
!4794 = !DILocation(line: 487, column: 7, scope: !4174)
!4795 = !DILocation(line: 488, column: 7, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 488, column: 6)
!4797 = !DILocation(line: 488, column: 12, scope: !4796)
!4798 = !DILocation(line: 488, column: 38, scope: !4796)
!4799 = !DILocation(line: 488, column: 15, scope: !4796)
!4800 = !DILocation(line: 488, column: 6, scope: !4174)
!4801 = !DILocation(line: 489, column: 3, scope: !4796)
!4802 = !DILocation(line: 491, column: 6, scope: !4189)
!4803 = !DILocation(line: 491, column: 12, scope: !4189)
!4804 = !DILocation(line: 491, column: 6, scope: !4174)
!4805 = !DILocation(line: 492, column: 3, scope: !4187)
!4806 = !DILocation(line: 492, column: 3, scope: !4186)
!4807 = !DILocation(line: 493, column: 17, scope: !4185)
!4808 = !DILocation(line: 493, column: 17, scope: !4193)
!4809 = !DILocation(line: 493, column: 17, scope: !4192)
!4810 = !DILocation(line: 493, column: 17, scope: !4191)
!4811 = !DILocation(line: 493, column: 17, scope: !4195)
!4812 = !DILocation(line: 493, column: 17, scope: !4186)
!4813 = !DILocation(line: 493, column: 14, scope: !4186)
!4814 = !DILocation(line: 493, column: 4, scope: !4186)
!4815 = distinct !{!4815, !4805, !4816, !4409, !4410}
!4816 = !DILocation(line: 493, column: 17, scope: !4187)
!4817 = !DILocation(line: 494, column: 2, scope: !4188)
!4818 = !DILocation(line: 496, column: 8, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 496, column: 6)
!4820 = !DILocation(line: 496, column: 14, scope: !4819)
!4821 = !DILocation(line: 496, column: 21, scope: !4819)
!4822 = !DILocation(line: 496, column: 44, scope: !4819)
!4823 = !DILocation(line: 496, column: 24, scope: !4819)
!4824 = !DILocation(line: 496, column: 51, scope: !4819)
!4825 = !DILocation(line: 496, column: 55, scope: !4819)
!4826 = !DILocation(line: 496, column: 6, scope: !4174)
!4827 = !DILocation(line: 497, column: 3, scope: !4819)
!4828 = !DILocation(line: 499, column: 13, scope: !4174)
!4829 = !DILocation(line: 499, column: 25, scope: !4174)
!4830 = !DILocation(line: 499, column: 31, scope: !4174)
!4831 = !DILocation(line: 499, column: 2, scope: !4174)
!4832 = !DILocation(line: 500, column: 2, scope: !4200)
!4833 = !DILocation(line: 500, column: 2, scope: !4199)
!4834 = !DILocation(line: 501, column: 14, scope: !4199)
!4835 = !DILocation(line: 501, column: 26, scope: !4199)
!4836 = !DILocation(line: 501, column: 32, scope: !4199)
!4837 = !DILocation(line: 502, column: 7, scope: !4198)
!4838 = !DILocation(line: 502, column: 7, scope: !4197)
!4839 = !DILocation(line: 502, column: 7, scope: !4202)
!4840 = !DILocation(line: 502, column: 6, scope: !4199)
!4841 = !DILocation(line: 501, column: 3, scope: !4199)
!4842 = distinct !{!4842, !4832, !4843, !4409, !4410}
!4843 = !DILocation(line: 502, column: 43, scope: !4200)
!4844 = !DILocation(line: 504, column: 2, scope: !4174)
!4845 = !DILocation(line: 504, column: 2, scope: !4204)
!4846 = !DILocation(line: 504, column: 2, scope: !4205)
!4847 = !DILocation(line: 505, column: 6, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 505, column: 6)
!4849 = !DILocation(line: 505, column: 12, scope: !4848)
!4850 = !DILocation(line: 505, column: 21, scope: !4848)
!4851 = !DILocation(line: 505, column: 6, scope: !4174)
!4852 = !DILocation(line: 506, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !2, line: 506, column: 7)
!4854 = distinct !DILexicalBlock(scope: !4848, file: !2, line: 505, column: 27)
!4855 = !DILocation(line: 506, column: 13, scope: !4853)
!4856 = !DILocation(line: 506, column: 22, scope: !4853)
!4857 = !DILocation(line: 506, column: 28, scope: !4853)
!4858 = !DILocation(line: 506, column: 7, scope: !4854)
!4859 = !DILocation(line: 507, column: 4, scope: !4853)
!4860 = !DILocation(line: 507, column: 10, scope: !4853)
!4861 = !DILocation(line: 507, column: 19, scope: !4853)
!4862 = !DILocation(line: 507, column: 25, scope: !4853)
!4863 = !DILocation(line: 507, column: 41, scope: !4853)
!4864 = !DILocation(line: 507, column: 47, scope: !4853)
!4865 = !DILocation(line: 507, column: 57, scope: !4853)
!4866 = !DILocation(line: 508, column: 12, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4853, file: !2, line: 508, column: 12)
!4868 = !DILocation(line: 508, column: 18, scope: !4867)
!4869 = !DILocation(line: 508, column: 27, scope: !4867)
!4870 = !DILocation(line: 508, column: 33, scope: !4867)
!4871 = !DILocation(line: 508, column: 12, scope: !4853)
!4872 = !DILocation(line: 509, column: 15, scope: !4867)
!4873 = !DILocation(line: 509, column: 26, scope: !4867)
!4874 = !DILocation(line: 509, column: 32, scope: !4867)
!4875 = !DILocation(line: 509, column: 41, scope: !4867)
!4876 = !DILocation(line: 509, column: 47, scope: !4867)
!4877 = !DILocation(line: 509, column: 4, scope: !4867)
!4878 = !DILocation(line: 511, column: 15, scope: !4867)
!4879 = !DILocation(line: 511, column: 4, scope: !4867)
!4880 = !DILocation(line: 512, column: 2, scope: !4854)
!4881 = !DILocation(line: 513, column: 14, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4848, file: !2, line: 512, column: 9)
!4883 = !DILocation(line: 513, column: 3, scope: !4882)
!4884 = !DILocation(line: 515, column: 6, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 515, column: 6)
!4886 = !DILocation(line: 515, column: 12, scope: !4885)
!4887 = !DILocation(line: 515, column: 21, scope: !4885)
!4888 = !DILocation(line: 515, column: 6, scope: !4174)
!4889 = !DILocation(line: 516, column: 14, scope: !4885)
!4890 = !DILocation(line: 516, column: 26, scope: !4885)
!4891 = !DILocation(line: 516, column: 32, scope: !4885)
!4892 = !DILocation(line: 516, column: 38, scope: !4885)
!4893 = !DILocation(line: 516, column: 47, scope: !4885)
!4894 = !DILocation(line: 516, column: 3, scope: !4885)
!4895 = !DILocation(line: 518, column: 14, scope: !4885)
!4896 = !DILocation(line: 518, column: 25, scope: !4885)
!4897 = !DILocation(line: 518, column: 3, scope: !4885)
!4898 = !DILocation(line: 522, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 522, column: 6)
!4900 = !DILocation(line: 522, column: 12, scope: !4899)
!4901 = !DILocation(line: 522, column: 6, scope: !4174)
!4902 = !DILocation(line: 523, column: 14, scope: !4899)
!4903 = !DILocation(line: 523, column: 26, scope: !4899)
!4904 = !DILocation(line: 523, column: 32, scope: !4899)
!4905 = !DILocation(line: 523, column: 3, scope: !4899)
!4906 = !DILocation(line: 525, column: 11, scope: !4174)
!4907 = !DILocation(line: 525, column: 17, scope: !4174)
!4908 = !DILocation(line: 525, column: 9, scope: !4174)
!4909 = !DILocation(line: 526, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 526, column: 6)
!4911 = !DILocation(line: 526, column: 6, scope: !4174)
!4912 = !DILocation(line: 527, column: 14, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !2, line: 526, column: 14)
!4914 = !DILocation(line: 527, column: 25, scope: !4913)
!4915 = !DILocation(line: 527, column: 33, scope: !4913)
!4916 = !DILocation(line: 527, column: 3, scope: !4913)
!4917 = !DILocation(line: 528, column: 3, scope: !4913)
!4918 = !DILocation(line: 528, column: 20, scope: !4913)
!4919 = !DILocation(line: 528, column: 28, scope: !4913)
!4920 = !DILocation(line: 528, column: 18, scope: !4913)
!4921 = !DILocation(line: 528, column: 34, scope: !4913)
!4922 = !DILocation(line: 529, column: 15, scope: !4913)
!4923 = !DILocation(line: 529, column: 26, scope: !4913)
!4924 = !DILocation(line: 529, column: 34, scope: !4913)
!4925 = !DILocation(line: 529, column: 4, scope: !4913)
!4926 = distinct !{!4926, !4917, !4927, !4409, !4410}
!4927 = !DILocation(line: 529, column: 38, scope: !4913)
!4928 = !DILocation(line: 530, column: 2, scope: !4913)
!4929 = !DILocation(line: 532, column: 11, scope: !4174)
!4930 = !DILocation(line: 532, column: 2, scope: !4174)
!4931 = !DILocation(line: 533, column: 2, scope: !4174)
!4932 = !DILocation(line: 533, column: 2, scope: !4208)
!4933 = !DILocation(line: 533, column: 2, scope: !4209)
!4934 = !DILocation(line: 534, column: 1, scope: !4174)
!4935 = !DILocation(line: 535, column: 2, scope: !4174)
!4936 = !DILocation(line: 536, column: 2, scope: !4174)
!4937 = !DILocation(line: 537, column: 1, scope: !4174)
!4938 = !DISubprogram(name: "seq_printf", scope: !106, file: !106, line: 119, type: !4939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !104, !57, null}
!4941 = distinct !DISubprogram(name: "find_next_bit", scope: !4942, file: !4942, line: 54, type: !4943, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4947)
!4942 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!36, !4945, !36, !36}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!4947 = !{!4948, !4949, !4950, !4951}
!4948 = !DILocalVariable(name: "addr", arg: 1, scope: !4941, file: !4942, line: 54, type: !4945)
!4949 = !DILocalVariable(name: "size", arg: 2, scope: !4941, file: !4942, line: 54, type: !36)
!4950 = !DILocalVariable(name: "offset", arg: 3, scope: !4941, file: !4942, line: 55, type: !36)
!4951 = !DILocalVariable(name: "val", scope: !4952, file: !4942, line: 58, type: !36)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !4942, line: 57, column: 31)
!4953 = distinct !DILexicalBlock(scope: !4941, file: !4942, line: 57, column: 6)
!4954 = !DILocation(line: 54, column: 50, scope: !4941)
!4955 = !DILocation(line: 54, column: 70, scope: !4941)
!4956 = !DILocation(line: 55, column: 22, scope: !4941)
!4957 = !DILocation(line: 57, column: 6, scope: !4953)
!4958 = !DILocation(line: 57, column: 6, scope: !4941)
!4959 = !DILocation(line: 58, column: 3, scope: !4952)
!4960 = !DILocation(line: 58, column: 17, scope: !4952)
!4961 = !DILocation(line: 60, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4952, file: !4942, line: 60, column: 7)
!4963 = !DILocation(line: 60, column: 7, scope: !4952)
!4964 = !DILocation(line: 61, column: 11, scope: !4962)
!4965 = !DILocation(line: 61, column: 4, scope: !4962)
!4966 = !DILocation(line: 63, column: 10, scope: !4952)
!4967 = !DILocation(line: 63, column: 9, scope: !4952)
!4968 = !DILocation(line: 63, column: 17, scope: !4952)
!4969 = !DILocation(line: 63, column: 15, scope: !4952)
!4970 = !DILocation(line: 63, column: 7, scope: !4952)
!4971 = !DILocation(line: 64, column: 10, scope: !4952)
!4972 = !DILocation(line: 64, column: 16, scope: !4952)
!4973 = !DILocation(line: 64, column: 29, scope: !4952)
!4974 = !DILocation(line: 64, column: 3, scope: !4952)
!4975 = !DILocation(line: 65, column: 2, scope: !4953)
!4976 = !DILocation(line: 67, column: 24, scope: !4941)
!4977 = !DILocation(line: 67, column: 30, scope: !4941)
!4978 = !DILocation(line: 67, column: 36, scope: !4941)
!4979 = !DILocation(line: 67, column: 9, scope: !4941)
!4980 = !DILocation(line: 67, column: 2, scope: !4941)
!4981 = !DILocation(line: 68, column: 1, scope: !4941)
!4982 = !DISubprogram(name: "seq_putc", scope: !106, file: !106, line: 120, type: !4983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{null, !104, !4}
!4985 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4986, file: !4986, line: 782, type: !2003, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070)
!4986 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4987 = !DILocation(line: 784, column: 2, scope: !4985)
!4988 = !DILocation(line: 786, column: 2, scope: !4985)
!4989 = !DILocation(line: 786, column: 2, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4985, file: !4986, line: 786, column: 2)
!4991 = !DILocation(line: 787, column: 2, scope: !4985)
!4992 = !DILocation(line: 787, column: 2, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4985, file: !4986, line: 787, column: 2)
!4994 = !DILocation(line: 789, column: 1, scope: !4985)
!4995 = distinct !DISubprogram(name: "irq_settings_is_hidden", scope: !4110, file: !4110, line: 175, type: !4996, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !4998)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!82, !13}
!4998 = !{!4999}
!4999 = !DILocalVariable(name: "desc", arg: 1, scope: !4995, file: !4110, line: 175, type: !13)
!5000 = !DILocation(line: 175, column: 60, scope: !4995)
!5001 = !DILocation(line: 177, column: 9, scope: !4995)
!5002 = !DILocation(line: 177, column: 15, scope: !4995)
!5003 = !DILocation(line: 177, column: 36, scope: !4995)
!5004 = !DILocation(line: 177, column: 2, scope: !4995)
!5005 = distinct !DISubprogram(name: "__kcsan_disable_current", scope: !5006, file: !5006, line: 232, type: !2003, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070)
!5006 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5007 = !DILocation(line: 232, column: 52, scope: !5005)
!5008 = distinct !DISubprogram(name: "__kcsan_enable_current", scope: !5006, file: !5006, line: 231, type: !2003, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070)
!5009 = !DILocation(line: 231, column: 52, scope: !5008)
!5010 = distinct !DISubprogram(name: "irq_desc_is_chained", scope: !5011, file: !5011, line: 276, type: !5012, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5014)
!5011 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!79, !13}
!5014 = !{!5015}
!5015 = !DILocalVariable(name: "desc", arg: 1, scope: !5010, file: !5011, line: 276, type: !13)
!5016 = !DILocation(line: 276, column: 56, scope: !5010)
!5017 = !DILocation(line: 278, column: 10, scope: !5010)
!5018 = !DILocation(line: 278, column: 16, scope: !5010)
!5019 = !DILocation(line: 278, column: 23, scope: !5010)
!5020 = !DILocation(line: 278, column: 26, scope: !5010)
!5021 = !DILocation(line: 278, column: 32, scope: !5010)
!5022 = !DILocation(line: 278, column: 39, scope: !5010)
!5023 = !DILocation(line: 0, scope: !5010)
!5024 = !DILocation(line: 278, column: 2, scope: !5010)
!5025 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5026, file: !5026, line: 32, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!36, !5029}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!5030 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5026, file: !5026, line: 43, type: !5031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{null, !5029, !36}
!5033 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4986, file: !4986, line: 813, type: !2003, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070)
!5034 = !DILocation(line: 815, column: 2, scope: !5033)
!5035 = !DILocation(line: 815, column: 2, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5033, file: !4986, line: 815, column: 2)
!5037 = !DILocation(line: 818, column: 2, scope: !5033)
!5038 = !DILocation(line: 819, column: 2, scope: !5033)
!5039 = !DILocation(line: 819, column: 2, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5033, file: !4986, line: 819, column: 2)
!5041 = !DILocation(line: 820, column: 1, scope: !5033)
!5042 = !DISubprogram(name: "strcmp", scope: !5043, file: !5043, line: 88, type: !5044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5043 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!79, !57, !57}
!5046 = distinct !DISubprogram(name: "irq_affinity_proc_open", scope: !2, file: !2, line: 191, type: !3805, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5047)
!5047 = !{!5048, !5049}
!5048 = !DILocalVariable(name: "inode", arg: 1, scope: !5046, file: !2, line: 191, type: !610)
!5049 = !DILocalVariable(name: "file", arg: 2, scope: !5046, file: !2, line: 191, type: !729)
!5050 = !DILocation(line: 191, column: 49, scope: !5046)
!5051 = !DILocation(line: 191, column: 69, scope: !5046)
!5052 = !DILocation(line: 193, column: 21, scope: !5046)
!5053 = !DILocation(line: 193, column: 60, scope: !5046)
!5054 = !DILocation(line: 193, column: 51, scope: !5046)
!5055 = !DILocation(line: 193, column: 9, scope: !5046)
!5056 = !DILocation(line: 193, column: 2, scope: !5046)
!5057 = distinct !DISubprogram(name: "irq_affinity_proc_write", scope: !2, file: !2, line: 179, type: !3766, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5058)
!5058 = !{!5059, !5060, !5061, !5062}
!5059 = !DILocalVariable(name: "file", arg: 1, scope: !5057, file: !2, line: 179, type: !729)
!5060 = !DILocalVariable(name: "buffer", arg: 2, scope: !5057, file: !2, line: 180, type: !57)
!5061 = !DILocalVariable(name: "count", arg: 3, scope: !5057, file: !2, line: 180, type: !111)
!5062 = !DILocalVariable(name: "pos", arg: 4, scope: !5057, file: !2, line: 180, type: !190)
!5063 = !DILocation(line: 179, column: 53, scope: !5057)
!5064 = !DILocation(line: 180, column: 22, scope: !5057)
!5065 = !DILocation(line: 180, column: 37, scope: !5057)
!5066 = !DILocation(line: 180, column: 52, scope: !5057)
!5067 = !DILocation(line: 182, column: 31, scope: !5057)
!5068 = !DILocation(line: 182, column: 37, scope: !5057)
!5069 = !DILocation(line: 182, column: 45, scope: !5057)
!5070 = !DILocation(line: 182, column: 52, scope: !5057)
!5071 = !DILocation(line: 182, column: 9, scope: !5057)
!5072 = !DILocation(line: 182, column: 2, scope: !5057)
!5073 = !DISubprogram(name: "single_open", scope: !106, file: !106, line: 166, type: !5074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!79, !729, !200, !24}
!5076 = distinct !DISubprogram(name: "irq_affinity_proc_show", scope: !2, file: !2, line: 104, type: !201, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5077)
!5077 = !{!5078, !5079}
!5078 = !DILocalVariable(name: "m", arg: 1, scope: !5076, file: !2, line: 104, type: !104)
!5079 = !DILocalVariable(name: "v", arg: 2, scope: !5076, file: !2, line: 104, type: !24)
!5080 = !DILocation(line: 104, column: 52, scope: !5076)
!5081 = !DILocation(line: 104, column: 61, scope: !5076)
!5082 = !DILocation(line: 106, column: 37, scope: !5076)
!5083 = !DILocation(line: 106, column: 9, scope: !5076)
!5084 = !DILocation(line: 106, column: 2, scope: !5076)
!5085 = distinct !DISubprogram(name: "pde_data", scope: !4248, file: !4248, line: 118, type: !5086, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5088)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!24, !3661}
!5088 = !{!5089}
!5089 = !DILocalVariable(name: "inode", arg: 1, scope: !5085, file: !4248, line: 118, type: !3661)
!5090 = !DILocation(line: 118, column: 50, scope: !5085)
!5091 = !DILocation(line: 120, column: 9, scope: !5085)
!5092 = !DILocation(line: 120, column: 16, scope: !5085)
!5093 = !DILocation(line: 120, column: 2, scope: !5085)
!5094 = distinct !DISubprogram(name: "show_irq_affinity", scope: !2, file: !2, line: 46, type: !5095, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5097)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!79, !79, !104}
!5097 = !{!5098, !5099, !5100, !5101}
!5098 = !DILocalVariable(name: "type", arg: 1, scope: !5094, file: !2, line: 46, type: !79)
!5099 = !DILocalVariable(name: "m", arg: 2, scope: !5094, file: !2, line: 46, type: !104)
!5100 = !DILocalVariable(name: "desc", scope: !5094, file: !2, line: 48, type: !13)
!5101 = !DILocalVariable(name: "mask", scope: !5094, file: !2, line: 49, type: !80)
!5102 = !DILocation(line: 46, column: 34, scope: !5094)
!5103 = !DILocation(line: 46, column: 57, scope: !5094)
!5104 = !DILocation(line: 48, column: 2, scope: !5094)
!5105 = !DILocation(line: 48, column: 19, scope: !5094)
!5106 = !DILocation(line: 48, column: 44, scope: !5094)
!5107 = !DILocation(line: 48, column: 47, scope: !5094)
!5108 = !DILocation(line: 48, column: 38, scope: !5094)
!5109 = !DILocation(line: 48, column: 26, scope: !5094)
!5110 = !DILocation(line: 49, column: 2, scope: !5094)
!5111 = !DILocation(line: 49, column: 24, scope: !5094)
!5112 = !DILocation(line: 51, column: 10, scope: !5094)
!5113 = !DILocation(line: 51, column: 2, scope: !5094)
!5114 = !DILocation(line: 54, column: 10, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5094, file: !2, line: 51, column: 16)
!5116 = !DILocation(line: 54, column: 16, scope: !5115)
!5117 = !DILocation(line: 54, column: 32, scope: !5115)
!5118 = !DILocation(line: 54, column: 8, scope: !5115)
!5119 = !DILocation(line: 56, column: 36, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 56, column: 7)
!5121 = !DILocation(line: 56, column: 42, scope: !5120)
!5122 = !DILocation(line: 56, column: 7, scope: !5120)
!5123 = !DILocation(line: 56, column: 7, scope: !5115)
!5124 = !DILocation(line: 57, column: 11, scope: !5120)
!5125 = !DILocation(line: 57, column: 17, scope: !5120)
!5126 = !DILocation(line: 57, column: 9, scope: !5120)
!5127 = !DILocation(line: 57, column: 4, scope: !5120)
!5128 = !DILocation(line: 59, column: 3, scope: !5115)
!5129 = !DILocation(line: 63, column: 48, scope: !5115)
!5130 = !DILocation(line: 63, column: 54, scope: !5115)
!5131 = !DILocation(line: 63, column: 10, scope: !5115)
!5132 = !DILocation(line: 63, column: 8, scope: !5115)
!5133 = !DILocation(line: 64, column: 3, scope: !5115)
!5134 = !DILocation(line: 67, column: 3, scope: !5115)
!5135 = !DILocation(line: 70, column: 10, scope: !5094)
!5136 = !DILocation(line: 70, column: 2, scope: !5094)
!5137 = !DILocation(line: 73, column: 14, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5094, file: !2, line: 70, column: 16)
!5139 = !DILocation(line: 73, column: 28, scope: !5138)
!5140 = !DILocation(line: 73, column: 3, scope: !5138)
!5141 = !DILocation(line: 74, column: 3, scope: !5138)
!5142 = !DILocation(line: 77, column: 14, scope: !5138)
!5143 = !DILocation(line: 77, column: 27, scope: !5138)
!5144 = !DILocation(line: 77, column: 3, scope: !5138)
!5145 = !DILocation(line: 78, column: 3, scope: !5138)
!5146 = !DILocation(line: 80, column: 2, scope: !5094)
!5147 = !DILocation(line: 81, column: 1, scope: !5094)
!5148 = distinct !DISubprogram(name: "irqd_is_setaffinity_pending", scope: !19, file: !19, line: 256, type: !5149, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5151)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!82, !63}
!5151 = !{!5152}
!5152 = !DILocalVariable(name: "d", arg: 1, scope: !5148, file: !19, line: 256, type: !63)
!5153 = !DILocation(line: 256, column: 65, scope: !5148)
!5154 = !DILocation(line: 258, column: 9, scope: !5148)
!5155 = !DILocation(line: 258, column: 28, scope: !5148)
!5156 = !DILocation(line: 258, column: 2, scope: !5148)
!5157 = distinct !DISubprogram(name: "irq_data_get_effective_affinity_mask", scope: !19, file: !19, line: 906, type: !5158, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5160)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!80, !63}
!5160 = !{!5161}
!5161 = !DILocalVariable(name: "d", arg: 1, scope: !5157, file: !19, line: 906, type: !63)
!5162 = !DILocation(line: 906, column: 77, scope: !5157)
!5163 = !DILocation(line: 908, column: 9, scope: !5157)
!5164 = !DILocation(line: 908, column: 12, scope: !5157)
!5165 = !DILocation(line: 908, column: 20, scope: !5157)
!5166 = !DILocation(line: 908, column: 2, scope: !5157)
!5167 = distinct !DISubprogram(name: "write_irq_affinity", scope: !2, file: !2, line: 137, type: !5168, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5170)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!765, !79, !729, !57, !111, !190}
!5170 = !{!5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179}
!5171 = !DILocalVariable(name: "type", arg: 1, scope: !5167, file: !2, line: 137, type: !79)
!5172 = !DILocalVariable(name: "file", arg: 2, scope: !5167, file: !2, line: 137, type: !729)
!5173 = !DILocalVariable(name: "buffer", arg: 3, scope: !5167, file: !2, line: 138, type: !57)
!5174 = !DILocalVariable(name: "count", arg: 4, scope: !5167, file: !2, line: 138, type: !111)
!5175 = !DILocalVariable(name: "pos", arg: 5, scope: !5167, file: !2, line: 138, type: !190)
!5176 = !DILocalVariable(name: "irq", scope: !5167, file: !2, line: 140, type: !12)
!5177 = !DILocalVariable(name: "new_value", scope: !5167, file: !2, line: 141, type: !29)
!5178 = !DILocalVariable(name: "err", scope: !5167, file: !2, line: 142, type: !79)
!5179 = !DILabel(scope: !5167, name: "free_cpumask", file: !2, line: 174)
!5180 = !DILocation(line: 137, column: 39, scope: !5167)
!5181 = !DILocation(line: 137, column: 58, scope: !5167)
!5182 = !DILocation(line: 138, column: 22, scope: !5167)
!5183 = !DILocation(line: 138, column: 37, scope: !5167)
!5184 = !DILocation(line: 138, column: 52, scope: !5167)
!5185 = !DILocation(line: 140, column: 2, scope: !5167)
!5186 = !DILocation(line: 140, column: 15, scope: !5167)
!5187 = !DILocation(line: 140, column: 52, scope: !5167)
!5188 = !DILocation(line: 140, column: 41, scope: !5167)
!5189 = !DILocation(line: 140, column: 32, scope: !5167)
!5190 = !DILocation(line: 140, column: 26, scope: !5167)
!5191 = !DILocation(line: 140, column: 21, scope: !5167)
!5192 = !DILocation(line: 141, column: 2, scope: !5167)
!5193 = !DILocation(line: 141, column: 16, scope: !5167)
!5194 = !DILocation(line: 142, column: 2, scope: !5167)
!5195 = !DILocation(line: 142, column: 6, scope: !5167)
!5196 = !DILocation(line: 144, column: 32, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 144, column: 6)
!5198 = !DILocation(line: 144, column: 7, scope: !5197)
!5199 = !DILocation(line: 144, column: 37, scope: !5197)
!5200 = !DILocation(line: 144, column: 40, scope: !5197)
!5201 = !DILocation(line: 144, column: 6, scope: !5167)
!5202 = !DILocation(line: 145, column: 3, scope: !5197)
!5203 = !DILocation(line: 147, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 147, column: 6)
!5205 = !DILocation(line: 147, column: 6, scope: !5167)
!5206 = !DILocation(line: 148, column: 3, scope: !5204)
!5207 = !DILocation(line: 150, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 150, column: 6)
!5209 = !DILocation(line: 150, column: 6, scope: !5167)
!5210 = !DILocation(line: 151, column: 32, scope: !5208)
!5211 = !DILocation(line: 151, column: 40, scope: !5208)
!5212 = !DILocation(line: 151, column: 47, scope: !5208)
!5213 = !DILocation(line: 151, column: 9, scope: !5208)
!5214 = !DILocation(line: 151, column: 7, scope: !5208)
!5215 = !DILocation(line: 151, column: 3, scope: !5208)
!5216 = !DILocation(line: 153, column: 28, scope: !5208)
!5217 = !DILocation(line: 153, column: 36, scope: !5208)
!5218 = !DILocation(line: 153, column: 43, scope: !5208)
!5219 = !DILocation(line: 153, column: 9, scope: !5208)
!5220 = !DILocation(line: 153, column: 7, scope: !5208)
!5221 = !DILocation(line: 154, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 154, column: 6)
!5223 = !DILocation(line: 154, column: 6, scope: !5167)
!5224 = !DILocation(line: 155, column: 3, scope: !5222)
!5225 = !DILocation(line: 162, column: 26, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 162, column: 6)
!5227 = !DILocation(line: 162, column: 7, scope: !5226)
!5228 = !DILocation(line: 162, column: 6, scope: !5167)
!5229 = !DILocation(line: 167, column: 33, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5226, file: !2, line: 162, column: 55)
!5231 = !DILocation(line: 167, column: 9, scope: !5230)
!5232 = !DILocation(line: 167, column: 50, scope: !5230)
!5233 = !DILocation(line: 167, column: 7, scope: !5230)
!5234 = !DILocation(line: 168, column: 2, scope: !5230)
!5235 = !DILocation(line: 169, column: 26, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5226, file: !2, line: 168, column: 9)
!5237 = !DILocation(line: 169, column: 31, scope: !5236)
!5238 = !DILocation(line: 169, column: 9, scope: !5236)
!5239 = !DILocation(line: 169, column: 7, scope: !5236)
!5240 = !DILocation(line: 170, column: 8, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 170, column: 7)
!5242 = !DILocation(line: 170, column: 7, scope: !5236)
!5243 = !DILocation(line: 171, column: 10, scope: !5241)
!5244 = !DILocation(line: 171, column: 8, scope: !5241)
!5245 = !DILocation(line: 171, column: 4, scope: !5241)
!5246 = !DILocation(line: 162, column: 52, scope: !5226)
!5247 = !DILocation(line: 174, column: 1, scope: !5167)
!5248 = !DILocation(line: 175, column: 19, scope: !5167)
!5249 = !DILocation(line: 175, column: 2, scope: !5167)
!5250 = !DILocation(line: 176, column: 9, scope: !5167)
!5251 = !DILocation(line: 176, column: 2, scope: !5167)
!5252 = !DILocation(line: 177, column: 1, scope: !5167)
!5253 = distinct !DISubprogram(name: "file_inode", scope: !208, file: !208, line: 1073, type: !5254, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5256)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!610, !205}
!5256 = !{!5257}
!5257 = !DILocalVariable(name: "f", arg: 1, scope: !5253, file: !208, line: 1073, type: !205)
!5258 = !DILocation(line: 1073, column: 59, scope: !5253)
!5259 = !DILocation(line: 1075, column: 9, scope: !5253)
!5260 = !DILocation(line: 1075, column: 12, scope: !5253)
!5261 = !DILocation(line: 1075, column: 2, scope: !5253)
!5262 = !DISubprogram(name: "irq_can_set_affinity_usr", scope: !5011, file: !5011, line: 138, type: !5263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!82, !12}
!5265 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !30, file: !30, line: 929, type: !5266, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5269)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!82, !5268, !817}
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!5269 = !{!5270, !5271}
!5270 = !DILocalVariable(name: "mask", arg: 1, scope: !5265, file: !30, line: 929, type: !5268)
!5271 = !DILocalVariable(name: "flags", arg: 2, scope: !5265, file: !30, line: 929, type: !817)
!5272 = !DILocation(line: 929, column: 54, scope: !5265)
!5273 = !DILocation(line: 929, column: 66, scope: !5265)
!5274 = !DILocation(line: 931, column: 17, scope: !5265)
!5275 = !DILocation(line: 931, column: 16, scope: !5265)
!5276 = !DILocation(line: 931, column: 2, scope: !5265)
!5277 = !DILocation(line: 932, column: 2, scope: !5265)
!5278 = distinct !DISubprogram(name: "cpumask_parselist_user", scope: !30, file: !30, line: 788, type: !5279, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5281)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!79, !57, !79, !4035}
!5281 = !{!5282, !5283, !5284}
!5282 = !DILocalVariable(name: "buf", arg: 1, scope: !5278, file: !30, line: 788, type: !57)
!5283 = !DILocalVariable(name: "len", arg: 2, scope: !5278, file: !30, line: 788, type: !79)
!5284 = !DILocalVariable(name: "dstp", arg: 3, scope: !5278, file: !30, line: 789, type: !4035)
!5285 = !DILocation(line: 788, column: 61, scope: !5278)
!5286 = !DILocation(line: 788, column: 70, scope: !5278)
!5287 = !DILocation(line: 789, column: 26, scope: !5278)
!5288 = !DILocation(line: 791, column: 31, scope: !5278)
!5289 = !DILocation(line: 791, column: 36, scope: !5278)
!5290 = !DILocation(line: 791, column: 41, scope: !5278)
!5291 = !DILocation(line: 792, column: 10, scope: !5278)
!5292 = !DILocation(line: 791, column: 9, scope: !5278)
!5293 = !DILocation(line: 791, column: 2, scope: !5278)
!5294 = distinct !DISubprogram(name: "cpumask_parse_user", scope: !30, file: !30, line: 774, type: !5279, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5295)
!5295 = !{!5296, !5297, !5298}
!5296 = !DILocalVariable(name: "buf", arg: 1, scope: !5294, file: !30, line: 774, type: !57)
!5297 = !DILocalVariable(name: "len", arg: 2, scope: !5294, file: !30, line: 774, type: !79)
!5298 = !DILocalVariable(name: "dstp", arg: 3, scope: !5294, file: !30, line: 775, type: !4035)
!5299 = !DILocation(line: 774, column: 57, scope: !5294)
!5300 = !DILocation(line: 774, column: 66, scope: !5294)
!5301 = !DILocation(line: 775, column: 26, scope: !5294)
!5302 = !DILocation(line: 777, column: 27, scope: !5294)
!5303 = !DILocation(line: 777, column: 32, scope: !5294)
!5304 = !DILocation(line: 777, column: 37, scope: !5294)
!5305 = !DILocation(line: 777, column: 57, scope: !5294)
!5306 = !DILocation(line: 777, column: 9, scope: !5294)
!5307 = !DILocation(line: 777, column: 2, scope: !5294)
!5308 = distinct !DISubprogram(name: "cpumask_intersects", scope: !30, file: !30, line: 647, type: !5309, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!82, !80, !80}
!5311 = !{!5312, !5313}
!5312 = !DILocalVariable(name: "src1p", arg: 1, scope: !5308, file: !30, line: 647, type: !80)
!5313 = !DILocalVariable(name: "src2p", arg: 2, scope: !5308, file: !30, line: 648, type: !80)
!5314 = !DILocation(line: 647, column: 61, scope: !5308)
!5315 = !DILocation(line: 648, column: 32, scope: !5308)
!5316 = !DILocation(line: 650, column: 27, scope: !5308)
!5317 = !DILocation(line: 650, column: 48, scope: !5308)
!5318 = !DILocation(line: 650, column: 9, scope: !5308)
!5319 = !DILocation(line: 650, column: 2, scope: !5308)
!5320 = distinct !DISubprogram(name: "irq_select_affinity_usr", scope: !2, file: !2, line: 115, type: !5321, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!79, !12}
!5323 = !{!5324}
!5324 = !DILocalVariable(name: "irq", arg: 1, scope: !5320, file: !2, line: 115, type: !12)
!5325 = !DILocation(line: 115, column: 56, scope: !5320)
!5326 = !DILocation(line: 127, column: 2, scope: !5320)
!5327 = !DISubprogram(name: "irq_set_affinity", scope: !3955, file: !3955, line: 308, type: !5328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!79, !12, !80}
!5330 = distinct !DISubprogram(name: "free_cpumask_var", scope: !30, file: !30, line: 946, type: !5331, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{null, !4035}
!5333 = !{!5334}
!5334 = !DILocalVariable(name: "mask", arg: 1, scope: !5330, file: !30, line: 946, type: !4035)
!5335 = !DILocation(line: 946, column: 51, scope: !5330)
!5336 = !DILocation(line: 948, column: 1, scope: !5330)
!5337 = distinct !DISubprogram(name: "cpumask_clear", scope: !30, file: !30, line: 552, type: !5331, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5338)
!5338 = !{!5339}
!5339 = !DILocalVariable(name: "dstp", arg: 1, scope: !5337, file: !30, line: 552, type: !4035)
!5340 = !DILocation(line: 552, column: 50, scope: !5337)
!5341 = !DILocation(line: 554, column: 14, scope: !5337)
!5342 = !DILocation(line: 554, column: 2, scope: !5337)
!5343 = !DILocation(line: 555, column: 1, scope: !5337)
!5344 = distinct !DISubprogram(name: "bitmap_zero", scope: !5345, file: !5345, line: 246, type: !5346, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5348)
!5345 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !1989, !12}
!5348 = !{!5349, !5350, !5351}
!5349 = !DILocalVariable(name: "dst", arg: 1, scope: !5344, file: !5345, line: 246, type: !1989)
!5350 = !DILocalVariable(name: "nbits", arg: 2, scope: !5344, file: !5345, line: 246, type: !12)
!5351 = !DILocalVariable(name: "len", scope: !5344, file: !5345, line: 248, type: !12)
!5352 = !DILocation(line: 246, column: 47, scope: !5344)
!5353 = !DILocation(line: 246, column: 65, scope: !5344)
!5354 = !DILocation(line: 248, column: 2, scope: !5344)
!5355 = !DILocation(line: 248, column: 15, scope: !5344)
!5356 = !DILocation(line: 248, column: 21, scope: !5344)
!5357 = !DILocation(line: 250, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5344, file: !5345, line: 250, column: 6)
!5359 = !DILocation(line: 250, column: 6, scope: !5344)
!5360 = !DILocation(line: 251, column: 4, scope: !5358)
!5361 = !DILocation(line: 251, column: 8, scope: !5358)
!5362 = !DILocation(line: 251, column: 3, scope: !5358)
!5363 = !DILocation(line: 253, column: 10, scope: !5358)
!5364 = !DILocation(line: 253, column: 18, scope: !5358)
!5365 = !DILocation(line: 253, column: 3, scope: !5358)
!5366 = !DILocation(line: 254, column: 1, scope: !5344)
!5367 = !DISubprogram(name: "bitmap_parselist_user", scope: !5345, file: !5345, line: 213, type: !5368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!79, !57, !12, !1989, !79}
!5370 = !DISubprogram(name: "bitmap_parse_user", scope: !5345, file: !5345, line: 209, type: !5368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5371 = distinct !DISubprogram(name: "bitmap_intersects", scope: !5345, file: !5345, line: 417, type: !5372, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!82, !4945, !4945, !12}
!5374 = !{!5375, !5376, !5377}
!5375 = !DILocalVariable(name: "src1", arg: 1, scope: !5371, file: !5345, line: 417, type: !4945)
!5376 = !DILocalVariable(name: "src2", arg: 2, scope: !5371, file: !5345, line: 418, type: !4945)
!5377 = !DILocalVariable(name: "nbits", arg: 3, scope: !5371, file: !5345, line: 419, type: !12)
!5378 = !DILocation(line: 417, column: 59, scope: !5371)
!5379 = !DILocation(line: 418, column: 31, scope: !5371)
!5380 = !DILocation(line: 419, column: 23, scope: !5371)
!5381 = !DILocation(line: 421, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5371, file: !5345, line: 421, column: 6)
!5383 = !DILocation(line: 421, column: 6, scope: !5371)
!5384 = !DILocation(line: 422, column: 13, scope: !5382)
!5385 = !DILocation(line: 422, column: 12, scope: !5382)
!5386 = !DILocation(line: 422, column: 21, scope: !5382)
!5387 = !DILocation(line: 422, column: 20, scope: !5382)
!5388 = !DILocation(line: 422, column: 18, scope: !5382)
!5389 = !DILocation(line: 422, column: 29, scope: !5382)
!5390 = !DILocation(line: 422, column: 27, scope: !5382)
!5391 = !DILocation(line: 422, column: 59, scope: !5382)
!5392 = !DILocation(line: 422, column: 3, scope: !5382)
!5393 = !DILocation(line: 424, column: 30, scope: !5382)
!5394 = !DILocation(line: 424, column: 36, scope: !5382)
!5395 = !DILocation(line: 424, column: 42, scope: !5382)
!5396 = !DILocation(line: 424, column: 10, scope: !5382)
!5397 = !DILocation(line: 424, column: 3, scope: !5382)
!5398 = !DILocation(line: 425, column: 1, scope: !5371)
!5399 = !DISubprogram(name: "__bitmap_intersects", scope: !5345, file: !5345, line: 167, type: !5372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5400 = distinct !DISubprogram(name: "cpumask_copy", scope: !30, file: !30, line: 737, type: !5401, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5403)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{null, !4035, !80}
!5403 = !{!5404, !5405}
!5404 = !DILocalVariable(name: "dstp", arg: 1, scope: !5400, file: !30, line: 737, type: !4035)
!5405 = !DILocalVariable(name: "srcp", arg: 2, scope: !5400, file: !30, line: 738, type: !80)
!5406 = !DILocation(line: 737, column: 49, scope: !5400)
!5407 = !DILocation(line: 738, column: 27, scope: !5400)
!5408 = !DILocation(line: 740, column: 14, scope: !5400)
!5409 = !DILocation(line: 740, column: 34, scope: !5400)
!5410 = !DILocation(line: 740, column: 2, scope: !5400)
!5411 = !DILocation(line: 741, column: 1, scope: !5400)
!5412 = distinct !DISubprogram(name: "bitmap_copy", scope: !5345, file: !5345, line: 266, type: !5413, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5415)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{null, !1989, !4945, !12}
!5415 = !{!5416, !5417, !5418, !5419}
!5416 = !DILocalVariable(name: "dst", arg: 1, scope: !5412, file: !5345, line: 266, type: !1989)
!5417 = !DILocalVariable(name: "src", arg: 2, scope: !5412, file: !5345, line: 266, type: !4945)
!5418 = !DILocalVariable(name: "nbits", arg: 3, scope: !5412, file: !5345, line: 267, type: !12)
!5419 = !DILocalVariable(name: "len", scope: !5412, file: !5345, line: 269, type: !12)
!5420 = !DILocation(line: 266, column: 47, scope: !5412)
!5421 = !DILocation(line: 266, column: 73, scope: !5412)
!5422 = !DILocation(line: 267, column: 17, scope: !5412)
!5423 = !DILocation(line: 269, column: 2, scope: !5412)
!5424 = !DILocation(line: 269, column: 15, scope: !5412)
!5425 = !DILocation(line: 269, column: 21, scope: !5412)
!5426 = !DILocation(line: 271, column: 6, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5412, file: !5345, line: 271, column: 6)
!5428 = !DILocation(line: 271, column: 6, scope: !5412)
!5429 = !DILocation(line: 272, column: 11, scope: !5427)
!5430 = !DILocation(line: 272, column: 10, scope: !5427)
!5431 = !DILocation(line: 272, column: 4, scope: !5427)
!5432 = !DILocation(line: 272, column: 8, scope: !5427)
!5433 = !DILocation(line: 272, column: 3, scope: !5427)
!5434 = !DILocation(line: 274, column: 10, scope: !5427)
!5435 = !DILocation(line: 274, column: 15, scope: !5427)
!5436 = !DILocation(line: 274, column: 20, scope: !5427)
!5437 = !DILocation(line: 274, column: 3, scope: !5427)
!5438 = !DILocation(line: 275, column: 1, scope: !5412)
!5439 = distinct !DISubprogram(name: "irq_affinity_list_proc_open", scope: !2, file: !2, line: 196, type: !3805, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5440)
!5440 = !{!5441, !5442}
!5441 = !DILocalVariable(name: "inode", arg: 1, scope: !5439, file: !2, line: 196, type: !610)
!5442 = !DILocalVariable(name: "file", arg: 2, scope: !5439, file: !2, line: 196, type: !729)
!5443 = !DILocation(line: 196, column: 54, scope: !5439)
!5444 = !DILocation(line: 196, column: 74, scope: !5439)
!5445 = !DILocation(line: 198, column: 21, scope: !5439)
!5446 = !DILocation(line: 198, column: 65, scope: !5439)
!5447 = !DILocation(line: 198, column: 56, scope: !5439)
!5448 = !DILocation(line: 198, column: 9, scope: !5439)
!5449 = !DILocation(line: 198, column: 2, scope: !5439)
!5450 = distinct !DISubprogram(name: "irq_affinity_list_proc_write", scope: !2, file: !2, line: 185, type: !3766, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5451)
!5451 = !{!5452, !5453, !5454, !5455}
!5452 = !DILocalVariable(name: "file", arg: 1, scope: !5450, file: !2, line: 185, type: !729)
!5453 = !DILocalVariable(name: "buffer", arg: 2, scope: !5450, file: !2, line: 186, type: !57)
!5454 = !DILocalVariable(name: "count", arg: 3, scope: !5450, file: !2, line: 186, type: !111)
!5455 = !DILocalVariable(name: "pos", arg: 4, scope: !5450, file: !2, line: 186, type: !190)
!5456 = !DILocation(line: 185, column: 58, scope: !5450)
!5457 = !DILocation(line: 186, column: 22, scope: !5450)
!5458 = !DILocation(line: 186, column: 37, scope: !5450)
!5459 = !DILocation(line: 186, column: 52, scope: !5450)
!5460 = !DILocation(line: 188, column: 31, scope: !5450)
!5461 = !DILocation(line: 188, column: 37, scope: !5450)
!5462 = !DILocation(line: 188, column: 45, scope: !5450)
!5463 = !DILocation(line: 188, column: 52, scope: !5450)
!5464 = !DILocation(line: 188, column: 9, scope: !5450)
!5465 = !DILocation(line: 188, column: 2, scope: !5450)
!5466 = distinct !DISubprogram(name: "irq_affinity_list_proc_show", scope: !2, file: !2, line: 109, type: !201, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5467)
!5467 = !{!5468, !5469}
!5468 = !DILocalVariable(name: "m", arg: 1, scope: !5466, file: !2, line: 109, type: !104)
!5469 = !DILocalVariable(name: "v", arg: 2, scope: !5466, file: !2, line: 109, type: !24)
!5470 = !DILocation(line: 109, column: 57, scope: !5466)
!5471 = !DILocation(line: 109, column: 66, scope: !5466)
!5472 = !DILocation(line: 111, column: 42, scope: !5466)
!5473 = !DILocation(line: 111, column: 9, scope: !5466)
!5474 = !DILocation(line: 111, column: 2, scope: !5466)
!5475 = distinct !DISubprogram(name: "irq_desc_get_node", scope: !5011, file: !5011, line: 271, type: !5012, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5476)
!5476 = !{!5477}
!5477 = !DILocalVariable(name: "desc", arg: 1, scope: !5475, file: !5011, line: 271, type: !13)
!5478 = !DILocation(line: 271, column: 54, scope: !5475)
!5479 = !DILocation(line: 273, column: 35, scope: !5475)
!5480 = !DILocation(line: 273, column: 41, scope: !5475)
!5481 = !DILocation(line: 273, column: 9, scope: !5475)
!5482 = !DILocation(line: 273, column: 2, scope: !5475)
!5483 = distinct !DISubprogram(name: "irq_common_data_get_node", scope: !19, file: !19, line: 865, type: !5484, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5486)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{!79, !51}
!5486 = !{!5487}
!5487 = !DILocalVariable(name: "d", arg: 1, scope: !5483, file: !19, line: 865, type: !51)
!5488 = !DILocation(line: 865, column: 68, scope: !5483)
!5489 = !DILocation(line: 868, column: 9, scope: !5483)
!5490 = !DILocation(line: 868, column: 12, scope: !5483)
!5491 = !DILocation(line: 868, column: 2, scope: !5483)
!5492 = !DISubprogram(name: "jiffies_to_msecs", scope: !5493, file: !5493, line: 434, type: !5494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5493 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!12, !4946}
!5496 = !DISubprogram(name: "proc_create", scope: !4248, file: !4248, line: 110, type: !5497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!4021, !57, !614, !4021, !4505}
!5499 = distinct !DISubprogram(name: "default_affinity_open", scope: !2, file: !2, line: 266, type: !3805, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5500)
!5500 = !{!5501, !5502}
!5501 = !DILocalVariable(name: "inode", arg: 1, scope: !5499, file: !2, line: 266, type: !610)
!5502 = !DILocalVariable(name: "file", arg: 2, scope: !5499, file: !2, line: 266, type: !729)
!5503 = !DILocation(line: 266, column: 48, scope: !5499)
!5504 = !DILocation(line: 266, column: 68, scope: !5499)
!5505 = !DILocation(line: 268, column: 21, scope: !5499)
!5506 = !DILocation(line: 268, column: 59, scope: !5499)
!5507 = !DILocation(line: 268, column: 50, scope: !5499)
!5508 = !DILocation(line: 268, column: 9, scope: !5499)
!5509 = !DILocation(line: 268, column: 2, scope: !5499)
!5510 = distinct !DISubprogram(name: "default_affinity_write", scope: !2, file: !2, line: 235, type: !3766, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5511)
!5511 = !{!5512, !5513, !5514, !5515, !5516, !5517, !5518}
!5512 = !DILocalVariable(name: "file", arg: 1, scope: !5510, file: !2, line: 235, type: !729)
!5513 = !DILocalVariable(name: "buffer", arg: 2, scope: !5510, file: !2, line: 236, type: !57)
!5514 = !DILocalVariable(name: "count", arg: 3, scope: !5510, file: !2, line: 236, type: !111)
!5515 = !DILocalVariable(name: "ppos", arg: 4, scope: !5510, file: !2, line: 236, type: !190)
!5516 = !DILocalVariable(name: "new_value", scope: !5510, file: !2, line: 238, type: !29)
!5517 = !DILocalVariable(name: "err", scope: !5510, file: !2, line: 239, type: !79)
!5518 = !DILabel(scope: !5510, name: "out", file: !2, line: 261)
!5519 = !DILocation(line: 235, column: 52, scope: !5510)
!5520 = !DILocation(line: 236, column: 22, scope: !5510)
!5521 = !DILocation(line: 236, column: 37, scope: !5510)
!5522 = !DILocation(line: 236, column: 52, scope: !5510)
!5523 = !DILocation(line: 238, column: 2, scope: !5510)
!5524 = !DILocation(line: 238, column: 16, scope: !5510)
!5525 = !DILocation(line: 239, column: 2, scope: !5510)
!5526 = !DILocation(line: 239, column: 6, scope: !5510)
!5527 = !DILocation(line: 241, column: 7, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 241, column: 6)
!5529 = !DILocation(line: 241, column: 6, scope: !5510)
!5530 = !DILocation(line: 242, column: 3, scope: !5528)
!5531 = !DILocation(line: 244, column: 27, scope: !5510)
!5532 = !DILocation(line: 244, column: 35, scope: !5510)
!5533 = !DILocation(line: 244, column: 42, scope: !5510)
!5534 = !DILocation(line: 244, column: 8, scope: !5510)
!5535 = !DILocation(line: 244, column: 6, scope: !5510)
!5536 = !DILocation(line: 245, column: 6, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 245, column: 6)
!5538 = !DILocation(line: 245, column: 6, scope: !5510)
!5539 = !DILocation(line: 246, column: 3, scope: !5537)
!5540 = !DILocation(line: 253, column: 26, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 253, column: 6)
!5542 = !DILocation(line: 253, column: 7, scope: !5541)
!5543 = !DILocation(line: 253, column: 6, scope: !5510)
!5544 = !DILocation(line: 254, column: 7, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 253, column: 55)
!5546 = !DILocation(line: 255, column: 3, scope: !5545)
!5547 = !DILocation(line: 258, column: 37, scope: !5510)
!5548 = !DILocation(line: 258, column: 2, scope: !5510)
!5549 = !DILocation(line: 259, column: 8, scope: !5510)
!5550 = !DILocation(line: 259, column: 6, scope: !5510)
!5551 = !DILocation(line: 259, column: 2, scope: !5510)
!5552 = !DILocation(line: 261, column: 1, scope: !5510)
!5553 = !DILocation(line: 262, column: 19, scope: !5510)
!5554 = !DILocation(line: 262, column: 2, scope: !5510)
!5555 = !DILocation(line: 263, column: 9, scope: !5510)
!5556 = !DILocation(line: 263, column: 2, scope: !5510)
!5557 = !DILocation(line: 264, column: 1, scope: !5510)
!5558 = distinct !DISubprogram(name: "default_affinity_show", scope: !2, file: !2, line: 229, type: !201, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5559)
!5559 = !{!5560, !5561}
!5560 = !DILocalVariable(name: "m", arg: 1, scope: !5558, file: !2, line: 229, type: !104)
!5561 = !DILocalVariable(name: "v", arg: 2, scope: !5558, file: !2, line: 229, type: !24)
!5562 = !DILocation(line: 229, column: 51, scope: !5558)
!5563 = !DILocation(line: 229, column: 60, scope: !5558)
!5564 = !DILocation(line: 231, column: 13, scope: !5558)
!5565 = !DILocation(line: 231, column: 26, scope: !5558)
!5566 = !DILocation(line: 231, column: 2, scope: !5558)
!5567 = !DILocation(line: 232, column: 2, scope: !5558)
!5568 = distinct !DISubprogram(name: "variable__ffs", scope: !5569, file: !5569, line: 250, type: !5570, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4070, retainedNodes: !5572)
!5569 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!36, !36}
!5572 = !{!5573}
!5573 = !DILocalVariable(name: "word", arg: 1, scope: !5568, file: !5569, line: 250, type: !36)
!5574 = !DILocation(line: 250, column: 66, scope: !5568)
!5575 = !DILocation(line: 254, column: 11, scope: !5568)
!5576 = !DILocation(line: 252, column: 2, scope: !5568)
!5577 = !{i64 522279}
!5578 = !DILocation(line: 255, column: 9, scope: !5568)
!5579 = !DILocation(line: 255, column: 2, scope: !5568)
!5580 = !DISubprogram(name: "_find_next_bit", scope: !4942, file: !4942, line: 11, type: !4943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5581 = !DISubprogram(name: "__rcu_read_lock", scope: !4986, file: !4986, line: 74, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5582 = !DISubprogram(name: "__rcu_read_unlock", scope: !4986, file: !4986, line: 75, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
