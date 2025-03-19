; ModuleID = 'kernel/profile.c'
source_filename = "kernel/profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prof_on: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad prof_on ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_profile_hits: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad profile_hits ; .previous"
module asm ".section\09\22.initcall4.init..kmod_profile__328_491_create_proc_profile\22, \22a\22\09\09"
module asm "__initcall__kmod_profile__328_491_create_proc_profile4:\09\09\09"
module asm ".long\09__initstub__kmod_profile__328_491_create_proc_profile4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.profile_hit = type { i32, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.16, i64, i64, %union.anon.17 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i64 }
%struct.page = type { i64, %union.anon.18, %union.anon.27, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %union.anon.20, ptr, %union.anon.22, i64 }
%union.anon.20 = type { %struct.list_head }
%union.anon.22 = type { i64 }
%union.anon.27 = type { %struct.atomic_t }

@prof_on = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !0
@__UNIQUE_ID___addressable_prof_on314 = internal global ptr @prof_on, section ".discard.addressable", align 8, !dbg !4295
@profile_setup.schedstr = internal constant [9 x i8] c"schedule\00", align 1, !dbg !4297
@profile_setup.kvmstr = internal constant [4 x i8] c"kvm\00", align 1, !dbg !4326
@prof_shift = internal global i16 0, align 2, !dbg !4378
@.str = private unnamed_addr constant [40 x i8] c"\016kernel profiling enabled (shift: %u)\0A\00", align 1, !dbg !4329
@.str.1 = private unnamed_addr constant [43 x i8] c"\016kernel %s profiling enabled (shift: %u)\0A\00", align 1, !dbg !4334
@__setup_str_profile_setup = internal constant [9 x i8] c"profile=\00", section ".init.rodata", align 1, !dbg !4384
@__setup_profile_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_profile_setup, ptr @profile_setup, i32 0 }, section ".init.setup", align 8, !dbg !4339
@_etext = external dso_local global [0 x i8], align 1
@_stext = external dso_local global [0 x i8], align 1
@prof_len = internal global i64 0, align 8, !dbg !4376
@.str.2 = private unnamed_addr constant [33 x i8] c"\014profiling shift: %u too large\0A\00", align 1, !dbg !4348
@prof_cpu_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8, !dbg !4380
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@prof_buffer = internal global ptr null, align 8, !dbg !4373
@__UNIQUE_ID___addressable_profile_hits327 = internal global ptr @profile_hits, section ".discard.addressable", align 8, !dbg !4353
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !4355
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.4 = private unnamed_addr constant [18 x i8] c"irq/prof_cpu_mask\00", align 1, !dbg !4360
@prof_cpu_mask_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @prof_cpu_mask_proc_open, ptr @seq_read, ptr null, ptr @prof_cpu_mask_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4446
@.str.5 = private unnamed_addr constant [16 x i8] c"PROFILE_PREPARE\00", align 1, !dbg !4365
@.str.6 = private unnamed_addr constant [18 x i8] c"AP_PROFILE_ONLINE\00", align 1, !dbg !4367
@.str.7 = private unnamed_addr constant [8 x i8] c"profile\00", align 1, !dbg !4369
@profile_proc_ops = internal constant %struct.proc_ops { i32 0, ptr null, ptr @read_profile, ptr null, ptr @write_profile, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4469
@__UNIQUE_ID___addressable___initstub__kmod_profile__328_491_create_proc_profile4329 = internal global ptr @__initstub__kmod_profile__328_491_create_proc_profile4, section ".discard.addressable", align 8, !dbg !4371
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4386
@cpu_profile_hits = internal global [2 x ptr] zeroinitializer, section ".data..percpu", align 16, !dbg !4442
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cpu_profile_flip = internal global i32 0, section ".data..percpu", align 4, !dbg !4444
@do_profile_hits.__UNIQUE_ID___addressable___SCK__preempt_schedule325 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4391
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@do_profile_hits.__UNIQUE_ID___addressable___SCK__preempt_schedule326 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4440
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1, !dbg !4464
@nr_cpu_ids = external dso_local global i32, align 4
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"\014%pGg allocation from offline node %d\0A\00", align 1, !dbg !4466
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@profile_flip_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @profile_flip_mutex, i64 16), ptr getelementptr (i8, ptr @profile_flip_mutex, i64 16) } }, align 8, !dbg !4500
@profile_flip_buffers.__UNIQUE_ID___addressable___SCK__preempt_schedule321 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4471
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4502
@profile_discard_flip_buffers.__UNIQUE_ID___addressable___SCK__preempt_schedule322 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4508
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_prof_on314, ptr @__setup_profile_setup, ptr @__UNIQUE_ID___addressable_profile_hits327, ptr @__UNIQUE_ID___addressable___initstub__kmod_profile__328_491_create_proc_profile4329, ptr @do_profile_hits.__UNIQUE_ID___addressable___SCK__preempt_schedule325, ptr @do_profile_hits.__UNIQUE_ID___addressable___SCK__preempt_schedule326, ptr @profile_flip_buffers.__UNIQUE_ID___addressable___SCK__preempt_schedule321, ptr @profile_discard_flip_buffers.__UNIQUE_ID___addressable___SCK__preempt_schedule322], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @profile_setup(ptr noundef %str) #0 align 16 !dbg !4299 {
entry:
  %str.addr = alloca ptr, align 8
  %select = alloca ptr, align 8
  %par = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val315 = alloca i32, align 4
  %__UNIQUE_ID___lo316 = alloca i32, align 4
  %__UNIQUE_ID___hi317 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %__UNIQUE_ID___val318 = alloca i32, align 4
  %__UNIQUE_ID___lo319 = alloca i32, align 4
  %__UNIQUE_ID___hi320 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4303, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %select) #23, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %select, metadata !4304, metadata !DIExpression()), !dbg !4548
  store ptr null, ptr %select, align 8, !dbg !4548
  call void @llvm.lifetime.start.p0(i64 4, ptr %par) #23, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %par, metadata !4305, metadata !DIExpression()), !dbg !4550
  %0 = load ptr, ptr %str.addr, align 8, !dbg !4551
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @profile_setup.schedstr, i64 noundef 8) #24, !dbg !4552
  %tobool = icmp ne i32 %call, 0, !dbg !4552
  br i1 %tobool, label %if.else, label %if.then, !dbg !4553

if.then:                                          ; preds = %entry
  store i32 2, ptr @prof_on, align 4, !dbg !4554
  store ptr @profile_setup.schedstr, ptr %select, align 8, !dbg !4556
  br label %if.end18, !dbg !4557

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !4558
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef @profile_setup.kvmstr, i64 noundef 3) #24, !dbg !4559
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4559
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !4560

if.then3:                                         ; preds = %if.else
  store i32 4, ptr @prof_on, align 4, !dbg !4561
  store ptr @profile_setup.kvmstr, ptr %select, align 8, !dbg !4563
  br label %if.end17, !dbg !4564

if.else4:                                         ; preds = %if.else
  %call5 = call i32 @get_option(ptr noundef %str.addr, ptr noundef %par) #24, !dbg !4565
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4565
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !4566

if.then7:                                         ; preds = %if.else4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val315) #23, !dbg !4567
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val315, metadata !4306, metadata !DIExpression()), !dbg !4567
  %2 = load i32, ptr %par, align 4, !dbg !4567
  store i32 %2, ptr %__UNIQUE_ID___val315, align 4, !dbg !4567
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo316) #23, !dbg !4567
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo316, metadata !4313, metadata !DIExpression()), !dbg !4567
  store i32 0, ptr %__UNIQUE_ID___lo316, align 4, !dbg !4567
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi317) #23, !dbg !4567
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi317, metadata !4314, metadata !DIExpression()), !dbg !4567
  store i32 63, ptr %__UNIQUE_ID___hi317, align 4, !dbg !4567
  %3 = load i32, ptr %__UNIQUE_ID___val315, align 4, !dbg !4567
  %4 = load i32, ptr %__UNIQUE_ID___hi317, align 4, !dbg !4567
  %cmp = icmp sge i32 %3, %4, !dbg !4567
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4567

cond.true:                                        ; preds = %if.then7
  %5 = load i32, ptr %__UNIQUE_ID___hi317, align 4, !dbg !4567
  br label %cond.end12, !dbg !4567

cond.false:                                       ; preds = %if.then7
  %6 = load i32, ptr %__UNIQUE_ID___val315, align 4, !dbg !4567
  %7 = load i32, ptr %__UNIQUE_ID___lo316, align 4, !dbg !4567
  %cmp9 = icmp sle i32 %6, %7, !dbg !4567
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !4567

cond.true10:                                      ; preds = %cond.false
  %8 = load i32, ptr %__UNIQUE_ID___lo316, align 4, !dbg !4567
  br label %cond.end, !dbg !4567

cond.false11:                                     ; preds = %cond.false
  %9 = load i32, ptr %__UNIQUE_ID___val315, align 4, !dbg !4567
  br label %cond.end, !dbg !4567

cond.end:                                         ; preds = %cond.false11, %cond.true10
  %cond = phi i32 [ %8, %cond.true10 ], [ %9, %cond.false11 ], !dbg !4567
  br label %cond.end12, !dbg !4567

cond.end12:                                       ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %5, %cond.true ], [ %cond, %cond.end ], !dbg !4567
  store i32 %cond13, ptr %tmp8, align 4, !dbg !4567
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi317) #23, !dbg !4568
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo316) #23, !dbg !4568
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val315) #23, !dbg !4568
  %10 = load i32, ptr %tmp8, align 4, !dbg !4567
  store i32 %10, ptr %tmp, align 4, !dbg !4569
  %11 = load i32, ptr %tmp, align 4, !dbg !4568
  %conv = trunc i32 %11 to i16, !dbg !4569
  store i16 %conv, ptr @prof_shift, align 2, !dbg !4570
  store i32 1, ptr @prof_on, align 4, !dbg !4571
  br label %do.body, !dbg !4572

do.body:                                          ; preds = %cond.end12
  br label %do.cond, !dbg !4574

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4574

do.end:                                           ; preds = %do.cond
  %12 = load i16, ptr @prof_shift, align 2, !dbg !4572
  %conv15 = zext i16 %12 to i32, !dbg !4572
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %conv15) #25, !dbg !4572
  store i32 %call16, ptr %tmp14, align 4, !dbg !4574
  %13 = load i32, ptr %tmp14, align 4, !dbg !4572
  br label %if.end, !dbg !4576

if.end:                                           ; preds = %do.end, %if.else4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then3
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %14 = load ptr, ptr %select, align 8, !dbg !4577
  %tobool19 = icmp ne ptr %14, null, !dbg !4577
  br i1 %tobool19, label %if.then20, label %if.end53, !dbg !4578

if.then20:                                        ; preds = %if.end18
  %15 = load ptr, ptr %str.addr, align 8, !dbg !4579
  %16 = load ptr, ptr %select, align 8, !dbg !4581
  %call21 = call i64 @strlen(ptr noundef %16) #24, !dbg !4582
  %arrayidx = getelementptr i8, ptr %15, i64 %call21, !dbg !4579
  %17 = load i8, ptr %arrayidx, align 1, !dbg !4579
  %conv22 = zext i8 %17 to i32, !dbg !4579
  %cmp23 = icmp eq i32 %conv22, 44, !dbg !4583
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !4584

if.then25:                                        ; preds = %if.then20
  %18 = load ptr, ptr %select, align 8, !dbg !4585
  %call26 = call i64 @strlen(ptr noundef %18) #24, !dbg !4586
  %add = add i64 %call26, 1, !dbg !4587
  %19 = load ptr, ptr %str.addr, align 8, !dbg !4588
  %add.ptr = getelementptr i8, ptr %19, i64 %add, !dbg !4588
  store ptr %add.ptr, ptr %str.addr, align 8, !dbg !4588
  br label %if.end27, !dbg !4589

if.end27:                                         ; preds = %if.then25, %if.then20
  %call28 = call i32 @get_option(ptr noundef %str.addr, ptr noundef %par) #24, !dbg !4590
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4590
  br i1 %tobool29, label %if.then30, label %if.end46, !dbg !4591

if.then30:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val318) #23, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val318, metadata !4315, metadata !DIExpression()), !dbg !4592
  %20 = load i32, ptr %par, align 4, !dbg !4592
  store i32 %20, ptr %__UNIQUE_ID___val318, align 4, !dbg !4592
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo319) #23, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo319, metadata !4321, metadata !DIExpression()), !dbg !4592
  store i32 0, ptr %__UNIQUE_ID___lo319, align 4, !dbg !4592
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi320) #23, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi320, metadata !4322, metadata !DIExpression()), !dbg !4592
  store i32 63, ptr %__UNIQUE_ID___hi320, align 4, !dbg !4592
  %21 = load i32, ptr %__UNIQUE_ID___val318, align 4, !dbg !4592
  %22 = load i32, ptr %__UNIQUE_ID___hi320, align 4, !dbg !4592
  %cmp33 = icmp sge i32 %21, %22, !dbg !4592
  br i1 %cmp33, label %cond.true35, label %cond.false36, !dbg !4592

cond.true35:                                      ; preds = %if.then30
  %23 = load i32, ptr %__UNIQUE_ID___hi320, align 4, !dbg !4592
  br label %cond.end43, !dbg !4592

cond.false36:                                     ; preds = %if.then30
  %24 = load i32, ptr %__UNIQUE_ID___val318, align 4, !dbg !4592
  %25 = load i32, ptr %__UNIQUE_ID___lo319, align 4, !dbg !4592
  %cmp37 = icmp sle i32 %24, %25, !dbg !4592
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !4592

cond.true39:                                      ; preds = %cond.false36
  %26 = load i32, ptr %__UNIQUE_ID___lo319, align 4, !dbg !4592
  br label %cond.end41, !dbg !4592

cond.false40:                                     ; preds = %cond.false36
  %27 = load i32, ptr %__UNIQUE_ID___val318, align 4, !dbg !4592
  br label %cond.end41, !dbg !4592

cond.end41:                                       ; preds = %cond.false40, %cond.true39
  %cond42 = phi i32 [ %26, %cond.true39 ], [ %27, %cond.false40 ], !dbg !4592
  br label %cond.end43, !dbg !4592

cond.end43:                                       ; preds = %cond.end41, %cond.true35
  %cond44 = phi i32 [ %23, %cond.true35 ], [ %cond42, %cond.end41 ], !dbg !4592
  store i32 %cond44, ptr %tmp32, align 4, !dbg !4592
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi320) #23, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo319) #23, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val318) #23, !dbg !4593
  %28 = load i32, ptr %tmp32, align 4, !dbg !4592
  store i32 %28, ptr %tmp31, align 4, !dbg !4594
  %29 = load i32, ptr %tmp31, align 4, !dbg !4593
  %conv45 = trunc i32 %29 to i16, !dbg !4594
  store i16 %conv45, ptr @prof_shift, align 2, !dbg !4595
  br label %if.end46, !dbg !4596

if.end46:                                         ; preds = %cond.end43, %if.end27
  br label %do.body47, !dbg !4597

do.body47:                                        ; preds = %if.end46
  br label %do.cond48, !dbg !4599

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !4599

do.end49:                                         ; preds = %do.cond48
  %30 = load ptr, ptr %select, align 8, !dbg !4597
  %31 = load i16, ptr @prof_shift, align 2, !dbg !4597
  %conv51 = zext i16 %31 to i32, !dbg !4597
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %30, i32 noundef %conv51) #25, !dbg !4597
  store i32 %call52, ptr %tmp50, align 4, !dbg !4599
  %32 = load i32, ptr %tmp50, align 4, !dbg !4597
  br label %if.end53, !dbg !4601

if.end53:                                         ; preds = %do.end49, %if.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %par) #23, !dbg !4602
  call void @llvm.lifetime.end.p0(i64 8, ptr %select) #23, !dbg !4602
  ret i32 1, !dbg !4603
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4604 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4608 dso_local i32 @get_option(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4613 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4617 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @profile_init() #5 section ".ref.text" align 16 !dbg !4620 {
entry:
  %retval = alloca i32, align 4
  %buffer_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_bytes) #23, !dbg !4623
  call void @llvm.dbg.declare(metadata ptr %buffer_bytes, metadata !4622, metadata !DIExpression()), !dbg !4624
  %0 = load i32, ptr @prof_on, align 4, !dbg !4625
  %tobool = icmp ne i32 %0, 0, !dbg !4625
  br i1 %tobool, label %if.end, label %if.then, !dbg !4627

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4628

if.end:                                           ; preds = %entry
  %1 = load i16, ptr @prof_shift, align 2, !dbg !4629
  %conv = zext i16 %1 to i32, !dbg !4629
  %sh_prom = zext i32 %conv to i64, !dbg !4630
  %shr = ashr i64 sub (i64 ptrtoint (ptr @_etext to i64), i64 ptrtoint (ptr @_stext to i64)), %sh_prom, !dbg !4630
  store i64 %shr, ptr @prof_len, align 8, !dbg !4631
  %2 = load i64, ptr @prof_len, align 8, !dbg !4632
  %tobool1 = icmp ne i64 %2, 0, !dbg !4632
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !4634

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !4635

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !4638

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4638

do.end:                                           ; preds = %do.cond
  %3 = load i16, ptr @prof_shift, align 2, !dbg !4635
  %conv3 = zext i16 %3 to i32, !dbg !4635
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv3) #25, !dbg !4635
  store i32 %call, ptr %tmp, align 4, !dbg !4638
  %4 = load i32, ptr %tmp, align 4, !dbg !4635
  store i32 0, ptr @prof_on, align 4, !dbg !4640
  store i32 -22, ptr %retval, align 4, !dbg !4641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4641

if.end4:                                          ; preds = %if.end
  %5 = load i64, ptr @prof_len, align 8, !dbg !4642
  %mul = mul i64 %5, 4, !dbg !4643
  %conv5 = trunc i64 %mul to i32, !dbg !4642
  store i32 %conv5, ptr %buffer_bytes, align 4, !dbg !4644
  %call6 = call zeroext i1 @alloc_cpumask_var(ptr noundef @prof_cpu_mask, i32 noundef 3264) #24, !dbg !4645
  br i1 %call6, label %if.end8, label %if.then7, !dbg !4647

if.then7:                                         ; preds = %if.end4
  store i32 -12, ptr %retval, align 4, !dbg !4648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4648

if.end8:                                          ; preds = %if.end4
  call void @cpumask_copy(ptr noundef @prof_cpu_mask, ptr noundef @__cpu_possible_mask) #24, !dbg !4649
  %6 = load i32, ptr %buffer_bytes, align 4, !dbg !4650
  %conv9 = sext i32 %6 to i64, !dbg !4650
  %call10 = call noalias ptr @kzalloc(i64 noundef %conv9, i32 noundef 11456) #26, !dbg !4651
  store ptr %call10, ptr @prof_buffer, align 8, !dbg !4652
  %7 = load ptr, ptr @prof_buffer, align 8, !dbg !4653
  %tobool11 = icmp ne ptr %7, null, !dbg !4653
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4655

if.then12:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !4656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4656

if.end13:                                         ; preds = %if.end8
  %8 = load i32, ptr %buffer_bytes, align 4, !dbg !4657
  %conv14 = sext i32 %8 to i64, !dbg !4657
  %call15 = call noalias ptr @alloc_pages_exact(i64 noundef %conv14, i32 noundef 11712) #26, !dbg !4658
  store ptr %call15, ptr @prof_buffer, align 8, !dbg !4659
  %9 = load ptr, ptr @prof_buffer, align 8, !dbg !4660
  %tobool16 = icmp ne ptr %9, null, !dbg !4660
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4662

if.then17:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !4663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4663

if.end18:                                         ; preds = %if.end13
  %10 = load i32, ptr %buffer_bytes, align 4, !dbg !4664
  %conv19 = sext i32 %10 to i64, !dbg !4664
  %call20 = call noalias ptr @vzalloc(i64 noundef %conv19) #26, !dbg !4665
  store ptr %call20, ptr @prof_buffer, align 8, !dbg !4666
  %11 = load ptr, ptr @prof_buffer, align 8, !dbg !4667
  %tobool21 = icmp ne ptr %11, null, !dbg !4667
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4669

if.then22:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4, !dbg !4670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4670

if.end23:                                         ; preds = %if.end18
  call void @free_cpumask_var(ptr noundef @prof_cpu_mask) #24, !dbg !4671
  store i32 -12, ptr %retval, align 4, !dbg !4672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4672

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then17, %if.then12, %if.then7, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_bytes) #23, !dbg !4673
  %12 = load i32, ptr %retval, align 4, !dbg !4673
  ret i32 %12, !dbg !4673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #6 align 16 !dbg !4674 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4679, metadata !DIExpression()), !dbg !4681
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4680, metadata !DIExpression()), !dbg !4682
  ret i1 true, !dbg !4683
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #6 align 16 !dbg !4684 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4689, metadata !DIExpression()), !dbg !4691
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4690, metadata !DIExpression()), !dbg !4692
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4693
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4693
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4693
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !4694
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4694
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !4694
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #24, !dbg !4695
  ret void, !dbg !4696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4697 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4701, metadata !DIExpression()), !dbg !4703
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4702, metadata !DIExpression()), !dbg !4704
  %0 = load i64, ptr %size.addr, align 8, !dbg !4705
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4706
  %or = or i32 %1, 256, !dbg !4707
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #26, !dbg !4708
  ret ptr %call, !dbg !4709
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4710 dso_local noalias ptr @alloc_pages_exact(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4711 dso_local noalias ptr @vzalloc(i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #6 align 16 !dbg !4714 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  ret void, !dbg !4720
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @profile_hits(i32 noundef %type, ptr noundef %__pc, i32 noundef %nr_hits) #0 align 16 !dbg !4721 {
entry:
  %type.addr = alloca i32, align 4
  %__pc.addr = alloca ptr, align 8
  %nr_hits.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4723, metadata !DIExpression()), !dbg !4726
  store ptr %__pc, ptr %__pc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__pc.addr, metadata !4724, metadata !DIExpression()), !dbg !4727
  store i32 %nr_hits, ptr %nr_hits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_hits.addr, metadata !4725, metadata !DIExpression()), !dbg !4728
  %0 = load i32, ptr @prof_on, align 4, !dbg !4729
  %1 = load i32, ptr %type.addr, align 4, !dbg !4731
  %cmp = icmp ne i32 %0, %1, !dbg !4732
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4733

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr @prof_buffer, align 8, !dbg !4734
  %tobool = icmp ne ptr %2, null, !dbg !4734
  br i1 %tobool, label %if.end, label %if.then, !dbg !4735

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !4736

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %type.addr, align 4, !dbg !4737
  %4 = load ptr, ptr %__pc.addr, align 8, !dbg !4738
  %5 = load i32, ptr %nr_hits.addr, align 4, !dbg !4739
  call void @do_profile_hits(i32 noundef %3, ptr noundef %4, i32 noundef %5) #24, !dbg !4740
  br label %return, !dbg !4741

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_profile_hits(i32 noundef %type, ptr noundef %__pc, i32 noundef %nr_hits) #0 align 16 !dbg !4393 {
entry:
  %type.addr = alloca i32, align 4
  %__pc.addr = alloca ptr, align 8
  %nr_hits.addr = alloca i32, align 4
  %primary = alloca i64, align 8
  %secondary = alloca i64, align 8
  %flags = alloca i64, align 8
  %pc = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cpu = alloca i32, align 4
  %hits = alloca ptr, align 8
  %__UNIQUE_ID___x323 = alloca i64, align 8
  %__UNIQUE_ID___y324 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %__vpp_verify17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp21 = alloca ptr, align 8
  %__vpp_verify23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__ptr27 = alloca i64, align 8
  %tmp28 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp49 = alloca i32, align 4
  %__dummy122 = alloca i64, align 8
  %__dummy2123 = alloca i64, align 8
  %tmp126 = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4397, metadata !DIExpression()), !dbg !4742
  store ptr %__pc, ptr %__pc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__pc.addr, metadata !4398, metadata !DIExpression()), !dbg !4743
  store i32 %nr_hits, ptr %nr_hits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_hits.addr, metadata !4399, metadata !DIExpression()), !dbg !4744
  call void @llvm.lifetime.start.p0(i64 8, ptr %primary) #23, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %primary, metadata !4400, metadata !DIExpression()), !dbg !4746
  call void @llvm.lifetime.start.p0(i64 8, ptr %secondary) #23, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %secondary, metadata !4401, metadata !DIExpression()), !dbg !4747
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #23, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4402, metadata !DIExpression()), !dbg !4748
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #23, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !4403, metadata !DIExpression()), !dbg !4749
  %0 = load ptr, ptr %__pc.addr, align 8, !dbg !4750
  %1 = ptrtoint ptr %0 to i64, !dbg !4751
  store i64 %1, ptr %pc, align 8, !dbg !4749
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4404, metadata !DIExpression()), !dbg !4753
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #23, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4405, metadata !DIExpression()), !dbg !4754
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #23, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4406, metadata !DIExpression()), !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr %hits) #23, !dbg !4756
  call void @llvm.dbg.declare(metadata ptr %hits, metadata !4407, metadata !DIExpression()), !dbg !4757
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x323) #23, !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x323, metadata !4408, metadata !DIExpression()), !dbg !4758
  %2 = load i64, ptr %pc, align 8, !dbg !4758
  %sub = sub i64 %2, ptrtoint (ptr @_stext to i64), !dbg !4758
  %3 = load i16, ptr @prof_shift, align 2, !dbg !4758
  %conv = zext i16 %3 to i32, !dbg !4758
  %sh_prom = zext i32 %conv to i64, !dbg !4758
  %shr = lshr i64 %sub, %sh_prom, !dbg !4758
  store i64 %shr, ptr %__UNIQUE_ID___x323, align 8, !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y324) #23, !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y324, metadata !4410, metadata !DIExpression()), !dbg !4758
  %4 = load i64, ptr @prof_len, align 8, !dbg !4758
  %sub1 = sub i64 %4, 1, !dbg !4758
  store i64 %sub1, ptr %__UNIQUE_ID___y324, align 8, !dbg !4758
  %5 = load i64, ptr %__UNIQUE_ID___x323, align 8, !dbg !4758
  %6 = load i64, ptr %__UNIQUE_ID___y324, align 8, !dbg !4758
  %cmp = icmp ult i64 %5, %6, !dbg !4758
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4758

cond.true:                                        ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___x323, align 8, !dbg !4758
  br label %cond.end, !dbg !4758

cond.false:                                       ; preds = %entry
  %8 = load i64, ptr %__UNIQUE_ID___y324, align 8, !dbg !4758
  br label %cond.end, !dbg !4758

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !4758
  store i64 %cond, ptr %tmp, align 8, !dbg !4758
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y324) #23, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x323) #23, !dbg !4759
  %9 = load i64, ptr %tmp, align 8, !dbg !4758
  store i64 %9, ptr %pc, align 8, !dbg !4760
  %10 = load i64, ptr %pc, align 8, !dbg !4761
  %and = and i64 %10, 63, !dbg !4762
  %shl = shl i64 %and, 3, !dbg !4763
  store i64 %shl, ptr %primary, align 8, !dbg !4764
  %conv3 = trunc i64 %shl to i32, !dbg !4765
  store i32 %conv3, ptr %i, align 4, !dbg !4766
  %11 = load i64, ptr %pc, align 8, !dbg !4767
  %shl4 = shl i64 %11, 1, !dbg !4768
  %not = xor i64 %shl4, -1, !dbg !4769
  %and5 = and i64 %not, 63, !dbg !4770
  %shl6 = shl i64 %and5, 3, !dbg !4771
  store i64 %shl6, ptr %secondary, align 8, !dbg !4772
  br label %do.body, !dbg !4773

do.body:                                          ; preds = %cond.end
  call void @__preempt_count_add(i32 noundef 1) #24, !dbg !4774
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !4774, !srcloc !4776
  br label %do.cond, !dbg !4774

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4774

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #24, !dbg !4777
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #23, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4411, metadata !DIExpression()), !dbg !4778
  br label %do.body9, !dbg !4778

do.body9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4779
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4415, metadata !DIExpression()), !dbg !4779
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4779
  %12 = load ptr, ptr %__vpp_verify, align 8, !dbg !4779
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4778
  br label %do.cond10, !dbg !4779

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4779

do.end11:                                         ; preds = %do.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #23, !dbg !4780
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4417, metadata !DIExpression()), !dbg !4780
  %13 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #27, !dbg !4780, !srcloc !4781
  store i32 %13, ptr %pfo_val__, align 4, !dbg !4780
  %14 = load i32, ptr %pfo_val__, align 4, !dbg !4780
  %conv13 = zext i32 %14 to i64, !dbg !4780
  %conv14 = trunc i64 %conv13 to i32, !dbg !4780
  store i32 %conv14, ptr %tmp12, align 4, !dbg !4780
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #23, !dbg !4778
  %15 = load i32, ptr %tmp12, align 4, !dbg !4780
  store i32 %15, ptr %pscr_ret__, align 4, !dbg !4778
  %16 = load i32, ptr %pscr_ret__, align 4, !dbg !4778
  store i32 %16, ptr %tmp15, align 4, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #23, !dbg !4777
  %17 = load i32, ptr %tmp15, align 4, !dbg !4778
  store i32 %17, ptr %tmp8, align 4, !dbg !4777
  %18 = load i32, ptr %tmp8, align 4, !dbg !4777
  store i32 %18, ptr %tmp7, align 4, !dbg !4774
  %19 = load i32, ptr %tmp7, align 4, !dbg !4773
  store i32 %19, ptr %cpu, align 4, !dbg !4782
  br label %do.body16, !dbg !4783

do.body16:                                        ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify17) #23, !dbg !4784
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify17, metadata !4419, metadata !DIExpression()), !dbg !4784
  store ptr null, ptr %__vpp_verify17, align 8, !dbg !4784
  %20 = load ptr, ptr %__vpp_verify17, align 8, !dbg !4784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify17) #23, !dbg !4783
  br label %do.cond18, !dbg !4784

do.cond18:                                        ; preds = %do.body16
  br label %do.end19, !dbg !4784

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4422, metadata !DIExpression()), !dbg !4785
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr, align 8, !dbg !4785
  %21 = load i64, ptr %__ptr, align 8, !dbg !4785
  %22 = load i32, ptr %cpu, align 4, !dbg !4785
  %idxprom = sext i32 %22 to i64, !dbg !4785
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4785
  %23 = load i64, ptr %arrayidx, align 8, !dbg !4785
  %add = add i64 %21, %23, !dbg !4785
  %24 = inttoptr i64 %add to ptr, !dbg !4785
  store ptr %24, ptr %tmp21, align 8, !dbg !4785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !4783
  %25 = load ptr, ptr %tmp21, align 8, !dbg !4785
  store ptr %25, ptr %tmp20, align 8, !dbg !4784
  %26 = load ptr, ptr %tmp20, align 8, !dbg !4783
  br label %do.body22, !dbg !4786

do.body22:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify23) #23, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify23, metadata !4424, metadata !DIExpression()), !dbg !4787
  store ptr null, ptr %__vpp_verify23, align 8, !dbg !4787
  %27 = load ptr, ptr %__vpp_verify23, align 8, !dbg !4787
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify23) #23, !dbg !4786
  br label %do.cond24, !dbg !4787

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !4787

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr27) #23, !dbg !4788
  call void @llvm.dbg.declare(metadata ptr %__ptr27, metadata !4427, metadata !DIExpression()), !dbg !4788
  store i64 ptrtoint (ptr @cpu_profile_flip to i64), ptr %__ptr27, align 8, !dbg !4788
  %28 = load i64, ptr %__ptr27, align 8, !dbg !4788
  %29 = load i32, ptr %cpu, align 4, !dbg !4788
  %idxprom29 = sext i32 %29 to i64, !dbg !4788
  %arrayidx30 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom29, !dbg !4788
  %30 = load i64, ptr %arrayidx30, align 8, !dbg !4788
  %add31 = add i64 %28, %30, !dbg !4788
  %31 = inttoptr i64 %add31 to ptr, !dbg !4788
  store ptr %31, ptr %tmp28, align 8, !dbg !4788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr27) #23, !dbg !4786
  %32 = load ptr, ptr %tmp28, align 8, !dbg !4788
  store ptr %32, ptr %tmp26, align 8, !dbg !4787
  %33 = load ptr, ptr %tmp26, align 8, !dbg !4786
  %34 = load i32, ptr %33, align 4, !dbg !4789
  %idxprom32 = sext i32 %34 to i64, !dbg !4790
  %arrayidx33 = getelementptr [2 x ptr], ptr %26, i64 0, i64 %idxprom32, !dbg !4790
  %35 = load ptr, ptr %arrayidx33, align 8, !dbg !4790
  store ptr %35, ptr %hits, align 8, !dbg !4791
  %36 = load ptr, ptr %hits, align 8, !dbg !4792
  %tobool = icmp ne ptr %36, null, !dbg !4792
  br i1 %tobool, label %if.end44, label %if.then, !dbg !4794

if.then:                                          ; preds = %do.end25
  br label %do.body34, !dbg !4795

do.body34:                                        ; preds = %if.then
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !4797, !srcloc !4799
  %call = call zeroext i1 @__preempt_count_dec_and_test() #24, !dbg !4800
  %lnot = xor i1 %call, true, !dbg !4800
  %lnot35 = xor i1 %lnot, true, !dbg !4800
  %lnot.ext = zext i1 %lnot35 to i32, !dbg !4800
  %conv36 = sext i32 %lnot.ext to i64, !dbg !4800
  %expval = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !4800
  %tobool37 = icmp ne i64 %expval, 0, !dbg !4800
  br i1 %tobool37, label %if.then38, label %if.end, !dbg !4797

if.then38:                                        ; preds = %do.body34
  br label %do.body39, !dbg !4800

do.body39:                                        ; preds = %if.then38
  %37 = call i64 @llvm.read_register.i64(metadata !4536), !dbg !4802
  %38 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %37) #23, !dbg !4802, !srcloc !4804
  call void @llvm.write_register.i64(metadata !4536, i64 %38), !dbg !4802
  br label %do.cond40, !dbg !4802

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !4802

do.end41:                                         ; preds = %do.cond40
  br label %if.end, !dbg !4802

if.end:                                           ; preds = %do.end41, %do.body34
  br label %do.cond42, !dbg !4797

do.cond42:                                        ; preds = %if.end
  br label %do.end43, !dbg !4797

do.end43:                                         ; preds = %do.cond42
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4805

if.end44:                                         ; preds = %do.end25
  br label %do.body45, !dbg !4806

do.body45:                                        ; preds = %if.end44
  br label %do.body46, !dbg !4807

do.body46:                                        ; preds = %do.body45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #23, !dbg !4808
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4429, metadata !DIExpression()), !dbg !4808
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #23, !dbg !4808
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4433, metadata !DIExpression()), !dbg !4808
  %cmp47 = icmp eq ptr %__dummy, %__dummy2, !dbg !4808
  %conv48 = zext i1 %cmp47 to i32, !dbg !4808
  store i32 1, ptr %tmp49, align 4, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #23, !dbg !4809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #23, !dbg !4809
  %39 = load i32, ptr %tmp49, align 4, !dbg !4808
  %call50 = call i64 @arch_local_irq_save() #24, !dbg !4809
  store i64 %call50, ptr %flags, align 8, !dbg !4809
  br label %do.cond51, !dbg !4809

do.cond51:                                        ; preds = %do.body46
  br label %do.end52, !dbg !4809

do.end52:                                         ; preds = %do.cond51
  br label %do.cond53, !dbg !4807

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !4807

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !4810

do.body55:                                        ; preds = %do.cond92, %do.end54
  store i32 0, ptr %j, align 4, !dbg !4811
  br label %for.cond, !dbg !4814

for.cond:                                         ; preds = %for.inc, %do.body55
  %40 = load i32, ptr %j, align 4, !dbg !4815
  %cmp56 = icmp slt i32 %40, 8, !dbg !4817
  br i1 %cmp56, label %for.body, label %for.end, !dbg !4818

for.body:                                         ; preds = %for.cond
  %41 = load ptr, ptr %hits, align 8, !dbg !4819
  %42 = load i32, ptr %i, align 4, !dbg !4822
  %43 = load i32, ptr %j, align 4, !dbg !4823
  %add58 = add i32 %42, %43, !dbg !4824
  %idxprom59 = sext i32 %add58 to i64, !dbg !4819
  %arrayidx60 = getelementptr %struct.profile_hit, ptr %41, i64 %idxprom59, !dbg !4819
  %pc61 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx60, i32 0, i32 0, !dbg !4825
  %44 = load i32, ptr %pc61, align 4, !dbg !4825
  %conv62 = zext i32 %44 to i64, !dbg !4819
  %45 = load i64, ptr %pc, align 8, !dbg !4826
  %cmp63 = icmp eq i64 %conv62, %45, !dbg !4827
  br i1 %cmp63, label %if.then65, label %if.else, !dbg !4828

if.then65:                                        ; preds = %for.body
  %46 = load i32, ptr %nr_hits.addr, align 4, !dbg !4829
  %47 = load ptr, ptr %hits, align 8, !dbg !4831
  %48 = load i32, ptr %i, align 4, !dbg !4832
  %49 = load i32, ptr %j, align 4, !dbg !4833
  %add66 = add i32 %48, %49, !dbg !4834
  %idxprom67 = sext i32 %add66 to i64, !dbg !4831
  %arrayidx68 = getelementptr %struct.profile_hit, ptr %47, i64 %idxprom67, !dbg !4831
  %hits69 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx68, i32 0, i32 1, !dbg !4835
  %50 = load i32, ptr %hits69, align 4, !dbg !4836
  %add70 = add i32 %50, %46, !dbg !4836
  store i32 %add70, ptr %hits69, align 4, !dbg !4836
  br label %out, !dbg !4837

if.else:                                          ; preds = %for.body
  %51 = load ptr, ptr %hits, align 8, !dbg !4838
  %52 = load i32, ptr %i, align 4, !dbg !4840
  %53 = load i32, ptr %j, align 4, !dbg !4841
  %add71 = add i32 %52, %53, !dbg !4842
  %idxprom72 = sext i32 %add71 to i64, !dbg !4838
  %arrayidx73 = getelementptr %struct.profile_hit, ptr %51, i64 %idxprom72, !dbg !4838
  %hits74 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx73, i32 0, i32 1, !dbg !4843
  %54 = load i32, ptr %hits74, align 4, !dbg !4843
  %tobool75 = icmp ne i32 %54, 0, !dbg !4838
  br i1 %tobool75, label %if.end86, label %if.then76, !dbg !4844

if.then76:                                        ; preds = %if.else
  %55 = load i64, ptr %pc, align 8, !dbg !4845
  %conv77 = trunc i64 %55 to i32, !dbg !4845
  %56 = load ptr, ptr %hits, align 8, !dbg !4847
  %57 = load i32, ptr %i, align 4, !dbg !4848
  %58 = load i32, ptr %j, align 4, !dbg !4849
  %add78 = add i32 %57, %58, !dbg !4850
  %idxprom79 = sext i32 %add78 to i64, !dbg !4847
  %arrayidx80 = getelementptr %struct.profile_hit, ptr %56, i64 %idxprom79, !dbg !4847
  %pc81 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx80, i32 0, i32 0, !dbg !4851
  store i32 %conv77, ptr %pc81, align 4, !dbg !4852
  %59 = load i32, ptr %nr_hits.addr, align 4, !dbg !4853
  %60 = load ptr, ptr %hits, align 8, !dbg !4854
  %61 = load i32, ptr %i, align 4, !dbg !4855
  %62 = load i32, ptr %j, align 4, !dbg !4856
  %add82 = add i32 %61, %62, !dbg !4857
  %idxprom83 = sext i32 %add82 to i64, !dbg !4854
  %arrayidx84 = getelementptr %struct.profile_hit, ptr %60, i64 %idxprom83, !dbg !4854
  %hits85 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx84, i32 0, i32 1, !dbg !4858
  store i32 %59, ptr %hits85, align 4, !dbg !4859
  br label %out, !dbg !4860

if.end86:                                         ; preds = %if.else
  br label %if.end87

if.end87:                                         ; preds = %if.end86
  br label %for.inc, !dbg !4861

for.inc:                                          ; preds = %if.end87
  %63 = load i32, ptr %j, align 4, !dbg !4862
  %inc = add i32 %63, 1, !dbg !4862
  store i32 %inc, ptr %j, align 4, !dbg !4862
  br label %for.cond, !dbg !4863, !llvm.loop !4864

for.end:                                          ; preds = %for.cond
  %64 = load i32, ptr %i, align 4, !dbg !4868
  %conv88 = sext i32 %64 to i64, !dbg !4868
  %65 = load i64, ptr %secondary, align 8, !dbg !4869
  %add89 = add i64 %conv88, %65, !dbg !4870
  %and90 = and i64 %add89, 511, !dbg !4871
  %conv91 = trunc i64 %and90 to i32, !dbg !4872
  store i32 %conv91, ptr %i, align 4, !dbg !4873
  br label %do.cond92, !dbg !4874

do.cond92:                                        ; preds = %for.end
  %66 = load i32, ptr %i, align 4, !dbg !4875
  %conv93 = sext i32 %66 to i64, !dbg !4875
  %67 = load i64, ptr %primary, align 8, !dbg !4876
  %cmp94 = icmp ne i64 %conv93, %67, !dbg !4877
  br i1 %cmp94, label %do.body55, label %do.end96, !dbg !4874, !llvm.loop !4878

do.end96:                                         ; preds = %do.cond92
  %68 = load i32, ptr %nr_hits.addr, align 4, !dbg !4880
  %69 = load ptr, ptr @prof_buffer, align 8, !dbg !4881
  %70 = load i64, ptr %pc, align 8, !dbg !4882
  %arrayidx97 = getelementptr %struct.atomic_t, ptr %69, i64 %70, !dbg !4881
  call void @atomic_add(i32 noundef %68, ptr noundef %arrayidx97) #24, !dbg !4883
  store i32 0, ptr %i, align 4, !dbg !4884
  br label %for.cond98, !dbg !4886

for.cond98:                                       ; preds = %for.inc117, %do.end96
  %71 = load i32, ptr %i, align 4, !dbg !4887
  %conv99 = sext i32 %71 to i64, !dbg !4887
  %cmp100 = icmp ult i64 %conv99, 512, !dbg !4889
  br i1 %cmp100, label %for.body102, label %for.end119, !dbg !4890

for.body102:                                      ; preds = %for.cond98
  %72 = load ptr, ptr %hits, align 8, !dbg !4891
  %73 = load i32, ptr %i, align 4, !dbg !4893
  %idxprom103 = sext i32 %73 to i64, !dbg !4891
  %arrayidx104 = getelementptr %struct.profile_hit, ptr %72, i64 %idxprom103, !dbg !4891
  %hits105 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx104, i32 0, i32 1, !dbg !4894
  %74 = load i32, ptr %hits105, align 4, !dbg !4894
  %75 = load ptr, ptr @prof_buffer, align 8, !dbg !4895
  %76 = load ptr, ptr %hits, align 8, !dbg !4896
  %77 = load i32, ptr %i, align 4, !dbg !4897
  %idxprom106 = sext i32 %77 to i64, !dbg !4896
  %arrayidx107 = getelementptr %struct.profile_hit, ptr %76, i64 %idxprom106, !dbg !4896
  %pc108 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx107, i32 0, i32 0, !dbg !4898
  %78 = load i32, ptr %pc108, align 4, !dbg !4898
  %idxprom109 = zext i32 %78 to i64, !dbg !4895
  %arrayidx110 = getelementptr %struct.atomic_t, ptr %75, i64 %idxprom109, !dbg !4895
  call void @atomic_add(i32 noundef %74, ptr noundef %arrayidx110) #24, !dbg !4899
  %79 = load ptr, ptr %hits, align 8, !dbg !4900
  %80 = load i32, ptr %i, align 4, !dbg !4901
  %idxprom111 = sext i32 %80 to i64, !dbg !4900
  %arrayidx112 = getelementptr %struct.profile_hit, ptr %79, i64 %idxprom111, !dbg !4900
  %hits113 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx112, i32 0, i32 1, !dbg !4902
  store i32 0, ptr %hits113, align 4, !dbg !4903
  %81 = load ptr, ptr %hits, align 8, !dbg !4904
  %82 = load i32, ptr %i, align 4, !dbg !4905
  %idxprom114 = sext i32 %82 to i64, !dbg !4904
  %arrayidx115 = getelementptr %struct.profile_hit, ptr %81, i64 %idxprom114, !dbg !4904
  %pc116 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx115, i32 0, i32 0, !dbg !4906
  store i32 0, ptr %pc116, align 4, !dbg !4907
  br label %for.inc117, !dbg !4908

for.inc117:                                       ; preds = %for.body102
  %83 = load i32, ptr %i, align 4, !dbg !4909
  %inc118 = add i32 %83, 1, !dbg !4909
  store i32 %inc118, ptr %i, align 4, !dbg !4909
  br label %for.cond98, !dbg !4910, !llvm.loop !4911

for.end119:                                       ; preds = %for.cond98
  br label %out, !dbg !4912

out:                                              ; preds = %for.end119, %if.then76, %if.then65
  call void @llvm.dbg.label(metadata !4434), !dbg !4913
  br label %do.body120, !dbg !4914

do.body120:                                       ; preds = %out
  br label %do.body121, !dbg !4915

do.body121:                                       ; preds = %do.body120
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy122) #23, !dbg !4916
  call void @llvm.dbg.declare(metadata ptr %__dummy122, metadata !4435, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2123) #23, !dbg !4916
  call void @llvm.dbg.declare(metadata ptr %__dummy2123, metadata !4439, metadata !DIExpression()), !dbg !4916
  %cmp124 = icmp eq ptr %__dummy122, %__dummy2123, !dbg !4916
  %conv125 = zext i1 %cmp124 to i32, !dbg !4916
  store i32 1, ptr %tmp126, align 4, !dbg !4916
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2123) #23, !dbg !4917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy122) #23, !dbg !4917
  %84 = load i32, ptr %tmp126, align 4, !dbg !4916
  br label %do.body127, !dbg !4917

do.body127:                                       ; preds = %do.body121
  br label %do.cond128, !dbg !4918

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !4918

do.end129:                                        ; preds = %do.cond128
  %85 = load i64, ptr %flags, align 8, !dbg !4917
  call void @arch_local_irq_restore(i64 noundef %85) #24, !dbg !4917
  br label %do.cond130, !dbg !4917

do.cond130:                                       ; preds = %do.end129
  br label %do.end131, !dbg !4917

do.end131:                                        ; preds = %do.cond130
  br label %do.cond132, !dbg !4915

do.cond132:                                       ; preds = %do.end131
  br label %do.end133, !dbg !4915

do.end133:                                        ; preds = %do.cond132
  br label %do.body134, !dbg !4920

do.body134:                                       ; preds = %do.end133
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !4921, !srcloc !4923
  %call135 = call zeroext i1 @__preempt_count_dec_and_test() #24, !dbg !4924
  %lnot136 = xor i1 %call135, true, !dbg !4924
  %lnot138 = xor i1 %lnot136, true, !dbg !4924
  %lnot.ext139 = zext i1 %lnot138 to i32, !dbg !4924
  %conv140 = sext i32 %lnot.ext139 to i64, !dbg !4924
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 0), !dbg !4924
  %tobool142 = icmp ne i64 %expval141, 0, !dbg !4924
  br i1 %tobool142, label %if.then143, label %if.end147, !dbg !4921

if.then143:                                       ; preds = %do.body134
  br label %do.body144, !dbg !4924

do.body144:                                       ; preds = %if.then143
  %86 = call i64 @llvm.read_register.i64(metadata !4536), !dbg !4926
  %87 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %86) #23, !dbg !4926, !srcloc !4928
  call void @llvm.write_register.i64(metadata !4536, i64 %87), !dbg !4926
  br label %do.cond145, !dbg !4926

do.cond145:                                       ; preds = %do.body144
  br label %do.end146, !dbg !4926

do.end146:                                        ; preds = %do.cond145
  br label %if.end147, !dbg !4926

if.end147:                                        ; preds = %do.end146, %do.body134
  br label %do.cond148, !dbg !4921

do.cond148:                                       ; preds = %if.end147
  br label %do.end149, !dbg !4921

do.end149:                                        ; preds = %do.cond148
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4929
  br label %cleanup, !dbg !4929

cleanup:                                          ; preds = %do.end149, %do.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %hits) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 8, ptr %secondary) #23, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 8, ptr %primary) #23, !dbg !4929
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4929

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @profile_tick(i32 noundef %type) #0 align 16 !dbg !4930 {
entry:
  %type.addr = alloca i32, align 4
  %regs = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4932, metadata !DIExpression()), !dbg !4942
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #23, !dbg !4943
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !4933, metadata !DIExpression()), !dbg !4944
  %call = call ptr @get_irq_regs() #24, !dbg !4945
  store ptr %call, ptr %regs, align 8, !dbg !4944
  %0 = load ptr, ptr %regs, align 8, !dbg !4946
  %call1 = call i32 @user_mode(ptr noundef %0) #24, !dbg !4947
  %tobool = icmp ne i32 %call1, 0, !dbg !4947
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4948

land.lhs.true:                                    ; preds = %entry
  %call2 = call zeroext i1 @cpumask_available(ptr noundef @prof_cpu_mask) #24, !dbg !4949
  br i1 %call2, label %land.lhs.true3, label %if.end, !dbg !4950

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #24, !dbg !4951
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #23, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4934, metadata !DIExpression()), !dbg !4952
  br label %do.body, !dbg !4952

do.body:                                          ; preds = %land.lhs.true3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4953
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4938, metadata !DIExpression()), !dbg !4953
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4953
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4952
  br label %do.cond, !dbg !4953

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4953

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #23, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4940, metadata !DIExpression()), !dbg !4954
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #27, !dbg !4954, !srcloc !4955
  store i32 %2, ptr %pfo_val__, align 4, !dbg !4954
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !4954
  %conv = zext i32 %3 to i64, !dbg !4954
  %conv5 = trunc i64 %conv to i32, !dbg !4954
  store i32 %conv5, ptr %tmp4, align 4, !dbg !4954
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #23, !dbg !4952
  %4 = load i32, ptr %tmp4, align 4, !dbg !4954
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !4952
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !4952
  store i32 %5, ptr %tmp6, align 4, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #23, !dbg !4951
  %6 = load i32, ptr %tmp6, align 4, !dbg !4952
  store i32 %6, ptr %tmp, align 4, !dbg !4951
  %7 = load i32, ptr %tmp, align 4, !dbg !4951
  %call7 = call zeroext i1 @cpumask_test_cpu(i32 noundef %7, ptr noundef @prof_cpu_mask) #24, !dbg !4956
  br i1 %call7, label %if.then, label %if.end, !dbg !4957

if.then:                                          ; preds = %do.end
  %8 = load i32, ptr %type.addr, align 4, !dbg !4958
  %9 = load ptr, ptr %regs, align 8, !dbg !4959
  %call9 = call i64 @profile_pc(ptr noundef %9) #24, !dbg !4960
  %10 = inttoptr i64 %call9 to ptr, !dbg !4961
  call void @profile_hit(i32 noundef %8, ptr noundef %10) #24, !dbg !4962
  br label %if.end, !dbg !4962

if.end:                                           ; preds = %if.then, %do.end, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #23, !dbg !4963
  ret void, !dbg !4963
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_irq_regs() #6 align 16 !dbg !4964 {
entry:
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #24, !dbg !4976
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #23, !dbg !4977
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4969, metadata !DIExpression()), !dbg !4977
  br label %do.body, !dbg !4977

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4972, metadata !DIExpression()), !dbg !4978
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4978
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4978
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4977
  br label %do.cond, !dbg !4978

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4978

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #23, !dbg !4979
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4974, metadata !DIExpression()), !dbg !4979
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @__irq_regs) #27, !dbg !4979, !srcloc !4980
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4979
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4979
  %3 = inttoptr i64 %2 to ptr, !dbg !4979
  store ptr %3, ptr %tmp1, align 8, !dbg !4979
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #23, !dbg !4977
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4979
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4977
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4977
  store ptr %5, ptr %tmp2, align 8, !dbg !4977
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #23, !dbg !4976
  %6 = load ptr, ptr %tmp2, align 8, !dbg !4977
  store ptr %6, ptr %tmp, align 8, !dbg !4976
  %7 = load ptr, ptr %tmp, align 8, !dbg !4976
  ret ptr %7, !dbg !4981
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #9 align 16 !dbg !4982 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4988
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !4989
  %2 = load i16, ptr %1, align 8, !dbg !4989
  %conv = zext i16 %2 to i32, !dbg !4988
  %and = and i32 %conv, 3, !dbg !4990
  %tobool = icmp ne i32 %and, 0, !dbg !4991
  %lnot = xor i1 %tobool, true, !dbg !4991
  %lnot1 = xor i1 %lnot, true, !dbg !4992
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4992
  ret i32 %lnot.ext, !dbg !4993
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_available(ptr noundef %mask) #6 align 16 !dbg !4994 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  ret i1 true, !dbg !5000
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #9 align 16 !dbg !5001 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5005, metadata !DIExpression()), !dbg !5007
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5006, metadata !DIExpression()), !dbg !5008
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5009
  %call = call i32 @cpumask_check(i32 noundef %0) #24, !dbg !5009
  %conv = zext i32 %call to i64, !dbg !5009
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5009
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5009
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5009
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #24, !dbg !5009
  ret i1 %call1, !dbg !5010
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #9 align 16 !dbg !5011 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  ret void, !dbg !5018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @profile_hit(i32 noundef %type, ptr noundef %ip) #6 align 16 !dbg !5019 {
entry:
  %type.addr = alloca i32, align 4
  %ip.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5024, metadata !DIExpression()), !dbg !5026
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !5025, metadata !DIExpression()), !dbg !5027
  %0 = load i32, ptr @prof_on, align 4, !dbg !5028
  %1 = load i32, ptr %type.addr, align 4, !dbg !5028
  %cmp = icmp eq i32 %0, %1, !dbg !5028
  %lnot = xor i1 %cmp, true, !dbg !5028
  %lnot1 = xor i1 %lnot, true, !dbg !5028
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5028
  %conv = sext i32 %lnot.ext to i64, !dbg !5028
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5028
  %tobool = icmp ne i64 %expval, 0, !dbg !5028
  br i1 %tobool, label %if.then, label %if.end, !dbg !5030

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !5031
  %3 = load ptr, ptr %ip.addr, align 8, !dbg !5032
  call void @profile_hits(i32 noundef %2, ptr noundef %3, i32 noundef 1) #24, !dbg !5033
  br label %if.end, !dbg !5033

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5034
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5035 dso_local i64 @profile_pc(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @create_prof_cpu_mask() #0 align 16 !dbg !5038 {
entry:
  %call = call ptr @proc_create(ptr noundef @.str.4, i16 noundef zeroext 384, ptr noundef null, ptr noundef @prof_cpu_mask_proc_ops) #24, !dbg !5039
  ret void, !dbg !5040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5041 dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @setup_profiling_timer(i32 noundef %mult) #0 align 16 !dbg !5047 {
entry:
  %mult.addr = alloca i32, align 4
  store i32 %mult, ptr %mult.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mult.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  ret i32 -22, !dbg !5053
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @create_proc_profile() #5 section ".ref.text" align 16 !dbg !5054 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %online_state = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #23, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5056, metadata !DIExpression()), !dbg !5062
  call void @llvm.lifetime.start.p0(i64 4, ptr %online_state) #23, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %online_state, metadata !5057, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #23, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5058, metadata !DIExpression()), !dbg !5066
  store i32 0, ptr %err, align 4, !dbg !5066
  %0 = load i32, ptr @prof_on, align 4, !dbg !5067
  %tobool = icmp ne i32 %0, 0, !dbg !5067
  br i1 %tobool, label %if.end, label %if.then, !dbg !5069

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5070

if.end:                                           ; preds = %entry
  %call = call i32 @cpuhp_setup_state(i32 noundef 45, ptr noundef @.str.5, ptr noundef @profile_prepare_cpu, ptr noundef @profile_dead_cpu) #24, !dbg !5071
  store i32 %call, ptr %err, align 4, !dbg !5072
  %1 = load i32, ptr %err, align 4, !dbg !5073
  %tobool2 = icmp ne i32 %1, 0, !dbg !5073
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5075

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %err, align 4, !dbg !5076
  store i32 %2, ptr %retval, align 4, !dbg !5077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5077

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.6, ptr noundef @profile_online_cpu, ptr noundef null) #24, !dbg !5078
  store i32 %call5, ptr %err, align 4, !dbg !5079
  %3 = load i32, ptr %err, align 4, !dbg !5080
  %cmp = icmp slt i32 %3, 0, !dbg !5082
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5083

if.then6:                                         ; preds = %if.end4
  br label %err_state_prep, !dbg !5084

if.end7:                                          ; preds = %if.end4
  %4 = load i32, ptr %err, align 4, !dbg !5085
  store i32 %4, ptr %online_state, align 4, !dbg !5086
  store i32 0, ptr %err, align 4, !dbg !5087
  %call8 = call ptr @proc_create(ptr noundef @.str.7, i16 noundef zeroext 420, ptr noundef null, ptr noundef @profile_proc_ops) #24, !dbg !5088
  store ptr %call8, ptr %entry1, align 8, !dbg !5089
  %5 = load ptr, ptr %entry1, align 8, !dbg !5090
  %tobool9 = icmp ne ptr %5, null, !dbg !5090
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5092

if.then10:                                        ; preds = %if.end7
  br label %err_state_onl, !dbg !5093

if.end11:                                         ; preds = %if.end7
  %6 = load ptr, ptr %entry1, align 8, !dbg !5094
  %7 = load i64, ptr @prof_len, align 8, !dbg !5095
  %add = add i64 1, %7, !dbg !5096
  %mul = mul i64 %add, 4, !dbg !5097
  call void @proc_set_size(ptr noundef %6, i64 noundef %mul) #24, !dbg !5098
  %8 = load i32, ptr %err, align 4, !dbg !5099
  store i32 %8, ptr %retval, align 4, !dbg !5100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5100

err_state_onl:                                    ; preds = %if.then10
  call void @llvm.dbg.label(metadata !5059), !dbg !5101
  %9 = load i32, ptr %online_state, align 4, !dbg !5102
  call void @cpuhp_remove_state(i32 noundef %9) #24, !dbg !5103
  br label %err_state_prep, !dbg !5103

err_state_prep:                                   ; preds = %err_state_onl, %if.then6
  call void @llvm.dbg.label(metadata !5060), !dbg !5104
  call void @cpuhp_remove_state(i32 noundef 45) #24, !dbg !5105
  %10 = load i32, ptr %err, align 4, !dbg !5106
  store i32 %10, ptr %retval, align 4, !dbg !5107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5107

cleanup:                                          ; preds = %err_state_prep, %if.end11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #23, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %online_state) #23, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #23, !dbg !5108
  %11 = load i32, ptr %retval, align 4, !dbg !5108
  ret i32 %11, !dbg !5108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #6 align 16 !dbg !5109 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5114, metadata !DIExpression()), !dbg !5118
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5115, metadata !DIExpression()), !dbg !5119
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !5116, metadata !DIExpression()), !dbg !5120
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !5117, metadata !DIExpression()), !dbg !5121
  %0 = load i32, ptr %state.addr, align 4, !dbg !5122
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5123
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !5124
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !5125
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #24, !dbg !5126
  ret i32 %call, !dbg !5127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @profile_prepare_cpu(i32 noundef %cpu) #0 align 16 !dbg !5128 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca i32, align 4
  %page = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify21 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %__ptr25 = alloca i64, align 8
  %tmp26 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5130, metadata !DIExpression()), !dbg !5153
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !5154
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5131, metadata !DIExpression()), !dbg !5155
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #23, !dbg !5154
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5132, metadata !DIExpression()), !dbg !5156
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5157
  %call = call i32 @cpu_to_mem(i32 noundef %0) #24, !dbg !5158
  store i32 %call, ptr %node, align 4, !dbg !5156
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #23, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5133, metadata !DIExpression()), !dbg !5160
  br label %do.body, !dbg !5161

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5162
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5134, metadata !DIExpression()), !dbg !5162
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5162
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !5162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5161
  br label %do.cond, !dbg !5162

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5162

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5137, metadata !DIExpression()), !dbg !5163
  store i64 ptrtoint (ptr @cpu_profile_flip to i64), ptr %__ptr, align 8, !dbg !5163
  %2 = load i64, ptr %__ptr, align 8, !dbg !5163
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !5163
  %idxprom = zext i32 %3 to i64, !dbg !5163
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5163
  %4 = load i64, ptr %arrayidx, align 8, !dbg !5163
  %add = add i64 %2, %4, !dbg !5163
  %5 = inttoptr i64 %add to ptr, !dbg !5163
  store ptr %5, ptr %tmp1, align 8, !dbg !5163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !5161
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5163
  store ptr %6, ptr %tmp, align 8, !dbg !5162
  %7 = load ptr, ptr %tmp, align 8, !dbg !5161
  store i32 0, ptr %7, align 4, !dbg !5164
  store i32 0, ptr %i, align 4, !dbg !5165
  br label %for.cond, !dbg !5166

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, ptr %i, align 4, !dbg !5167
  %cmp = icmp slt i32 %8, 2, !dbg !5168
  br i1 %cmp, label %for.body, label %for.end, !dbg !5169

for.body:                                         ; preds = %for.cond
  br label %do.body2, !dbg !5170

do.body2:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #23, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !5139, metadata !DIExpression()), !dbg !5171
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !5171
  %9 = load ptr, ptr %__vpp_verify3, align 8, !dbg !5171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #23, !dbg !5170
  br label %do.cond4, !dbg !5171

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !5171

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #23, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !5146, metadata !DIExpression()), !dbg !5172
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr7, align 8, !dbg !5172
  %10 = load i64, ptr %__ptr7, align 8, !dbg !5172
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !5172
  %idxprom9 = zext i32 %11 to i64, !dbg !5172
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !5172
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !5172
  %add11 = add i64 %10, %12, !dbg !5172
  %13 = inttoptr i64 %add11 to ptr, !dbg !5172
  store ptr %13, ptr %tmp8, align 8, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #23, !dbg !5170
  %14 = load ptr, ptr %tmp8, align 8, !dbg !5172
  store ptr %14, ptr %tmp6, align 8, !dbg !5171
  %15 = load ptr, ptr %tmp6, align 8, !dbg !5170
  %16 = load i32, ptr %i, align 4, !dbg !5173
  %idxprom12 = sext i32 %16 to i64, !dbg !5174
  %arrayidx13 = getelementptr [2 x ptr], ptr %15, i64 0, i64 %idxprom12, !dbg !5174
  %17 = load ptr, ptr %arrayidx13, align 8, !dbg !5174
  %tobool = icmp ne ptr %17, null, !dbg !5174
  br i1 %tobool, label %if.then, label %if.end, !dbg !5175

if.then:                                          ; preds = %do.end5
  br label %for.inc, !dbg !5176

if.end:                                           ; preds = %do.end5
  %18 = load i32, ptr %node, align 4, !dbg !5177
  %call14 = call ptr @__alloc_pages_node(i32 noundef %18, i32 noundef 3520, i32 noundef 0) #24, !dbg !5178
  store ptr %call14, ptr %page, align 8, !dbg !5179
  %19 = load ptr, ptr %page, align 8, !dbg !5180
  %tobool15 = icmp ne ptr %19, null, !dbg !5180
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !5182

if.then16:                                        ; preds = %if.end
  %20 = load i32, ptr %cpu.addr, align 4, !dbg !5183
  %call17 = call i32 @profile_dead_cpu(i32 noundef %20) #24, !dbg !5185
  store i32 -12, ptr %retval, align 4, !dbg !5186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5186

if.end18:                                         ; preds = %if.end
  %21 = load ptr, ptr %page, align 8, !dbg !5187
  %call19 = call ptr @lowmem_page_address(ptr noundef %21) #24, !dbg !5187
  br label %do.body20, !dbg !5188

do.body20:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify21) #23, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify21, metadata !5148, metadata !DIExpression()), !dbg !5189
  store ptr null, ptr %__vpp_verify21, align 8, !dbg !5189
  %22 = load ptr, ptr %__vpp_verify21, align 8, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify21) #23, !dbg !5188
  br label %do.cond22, !dbg !5189

do.cond22:                                        ; preds = %do.body20
  br label %do.end23, !dbg !5189

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr25) #23, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %__ptr25, metadata !5151, metadata !DIExpression()), !dbg !5190
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr25, align 8, !dbg !5190
  %23 = load i64, ptr %__ptr25, align 8, !dbg !5190
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !5190
  %idxprom27 = zext i32 %24 to i64, !dbg !5190
  %arrayidx28 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom27, !dbg !5190
  %25 = load i64, ptr %arrayidx28, align 8, !dbg !5190
  %add29 = add i64 %23, %25, !dbg !5190
  %26 = inttoptr i64 %add29 to ptr, !dbg !5190
  store ptr %26, ptr %tmp26, align 8, !dbg !5190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr25) #23, !dbg !5188
  %27 = load ptr, ptr %tmp26, align 8, !dbg !5190
  store ptr %27, ptr %tmp24, align 8, !dbg !5189
  %28 = load ptr, ptr %tmp24, align 8, !dbg !5188
  %29 = load i32, ptr %i, align 4, !dbg !5191
  %idxprom30 = sext i32 %29 to i64, !dbg !5192
  %arrayidx31 = getelementptr [2 x ptr], ptr %28, i64 0, i64 %idxprom30, !dbg !5192
  store ptr %call19, ptr %arrayidx31, align 8, !dbg !5193
  br label %for.inc, !dbg !5194

for.inc:                                          ; preds = %do.end23, %if.then
  %30 = load i32, ptr %i, align 4, !dbg !5195
  %inc = add i32 %30, 1, !dbg !5195
  store i32 %inc, ptr %i, align 4, !dbg !5195
  br label %for.cond, !dbg !5196, !llvm.loop !5197

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5199

cleanup:                                          ; preds = %for.end, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #23, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #23, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !5200
  %31 = load i32, ptr %retval, align 4, !dbg !5200
  ret i32 %31, !dbg !5200
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @profile_dead_cpu(i32 noundef %cpu) #0 align 16 !dbg !5201 {
entry:
  %cpu.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  %i = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr10 = alloca i64, align 8
  %tmp11 = alloca ptr, align 8
  %__vpp_verify19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %__ptr23 = alloca i64, align 8
  %tmp24 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5203, metadata !DIExpression()), !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #23, !dbg !5227
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5204, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5205, metadata !DIExpression()), !dbg !5230
  %call = call zeroext i1 @cpumask_available(ptr noundef @prof_cpu_mask) #24, !dbg !5231
  br i1 %call, label %if.then, label %if.end, !dbg !5233

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5234
  call void @cpumask_clear_cpu(i32 noundef %0, ptr noundef @prof_cpu_mask) #24, !dbg !5235
  br label %if.end, !dbg !5235

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !5236
  br label %for.cond, !dbg !5237

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !5238
  %cmp = icmp slt i32 %1, 2, !dbg !5239
  br i1 %cmp, label %for.body, label %for.end, !dbg !5240

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !5241

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5206, metadata !DIExpression()), !dbg !5242
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5242
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5241
  br label %do.cond, !dbg !5242

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5242

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5213, metadata !DIExpression()), !dbg !5243
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr, align 8, !dbg !5243
  %3 = load i64, ptr %__ptr, align 8, !dbg !5243
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !5243
  %idxprom = zext i32 %4 to i64, !dbg !5243
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5243
  %5 = load i64, ptr %arrayidx, align 8, !dbg !5243
  %add = add i64 %3, %5, !dbg !5243
  %6 = inttoptr i64 %add to ptr, !dbg !5243
  store ptr %6, ptr %tmp1, align 8, !dbg !5243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !5241
  %7 = load ptr, ptr %tmp1, align 8, !dbg !5243
  store ptr %7, ptr %tmp, align 8, !dbg !5242
  %8 = load ptr, ptr %tmp, align 8, !dbg !5241
  %9 = load i32, ptr %i, align 4, !dbg !5244
  %idxprom2 = sext i32 %9 to i64, !dbg !5245
  %arrayidx3 = getelementptr [2 x ptr], ptr %8, i64 0, i64 %idxprom2, !dbg !5245
  %10 = load ptr, ptr %arrayidx3, align 8, !dbg !5245
  %tobool = icmp ne ptr %10, null, !dbg !5245
  br i1 %tobool, label %if.then4, label %if.end30, !dbg !5246

if.then4:                                         ; preds = %do.end
  %11 = load i64, ptr @vmemmap_base, align 8, !dbg !5247
  %12 = inttoptr i64 %11 to ptr, !dbg !5247
  br label %do.body5, !dbg !5248

do.body5:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #23, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !5215, metadata !DIExpression()), !dbg !5249
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !5249
  %13 = load ptr, ptr %__vpp_verify6, align 8, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #23, !dbg !5248
  br label %do.cond7, !dbg !5249

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !5249

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr10) #23, !dbg !5250
  call void @llvm.dbg.declare(metadata ptr %__ptr10, metadata !5219, metadata !DIExpression()), !dbg !5250
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr10, align 8, !dbg !5250
  %14 = load i64, ptr %__ptr10, align 8, !dbg !5250
  %15 = load i32, ptr %cpu.addr, align 4, !dbg !5250
  %idxprom12 = zext i32 %15 to i64, !dbg !5250
  %arrayidx13 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom12, !dbg !5250
  %16 = load i64, ptr %arrayidx13, align 8, !dbg !5250
  %add14 = add i64 %14, %16, !dbg !5250
  %17 = inttoptr i64 %add14 to ptr, !dbg !5250
  store ptr %17, ptr %tmp11, align 8, !dbg !5250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr10) #23, !dbg !5248
  %18 = load ptr, ptr %tmp11, align 8, !dbg !5250
  store ptr %18, ptr %tmp9, align 8, !dbg !5249
  %19 = load ptr, ptr %tmp9, align 8, !dbg !5248
  %20 = load i32, ptr %i, align 4, !dbg !5247
  %idxprom15 = sext i32 %20 to i64, !dbg !5247
  %arrayidx16 = getelementptr [2 x ptr], ptr %19, i64 0, i64 %idxprom15, !dbg !5247
  %21 = load ptr, ptr %arrayidx16, align 8, !dbg !5247
  %22 = ptrtoint ptr %21 to i64, !dbg !5247
  %call17 = call i64 @__phys_addr_nodebug(i64 noundef %22) #24, !dbg !5247
  %shr = lshr i64 %call17, 12, !dbg !5247
  %add.ptr = getelementptr %struct.page, ptr %12, i64 %shr, !dbg !5247
  store ptr %add.ptr, ptr %page, align 8, !dbg !5251
  br label %do.body18, !dbg !5252

do.body18:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify19) #23, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify19, metadata !5221, metadata !DIExpression()), !dbg !5253
  store ptr null, ptr %__vpp_verify19, align 8, !dbg !5253
  %23 = load ptr, ptr %__vpp_verify19, align 8, !dbg !5253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify19) #23, !dbg !5252
  br label %do.cond20, !dbg !5253

do.cond20:                                        ; preds = %do.body18
  br label %do.end21, !dbg !5253

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr23) #23, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %__ptr23, metadata !5224, metadata !DIExpression()), !dbg !5254
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr23, align 8, !dbg !5254
  %24 = load i64, ptr %__ptr23, align 8, !dbg !5254
  %25 = load i32, ptr %cpu.addr, align 4, !dbg !5254
  %idxprom25 = zext i32 %25 to i64, !dbg !5254
  %arrayidx26 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom25, !dbg !5254
  %26 = load i64, ptr %arrayidx26, align 8, !dbg !5254
  %add27 = add i64 %24, %26, !dbg !5254
  %27 = inttoptr i64 %add27 to ptr, !dbg !5254
  store ptr %27, ptr %tmp24, align 8, !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr23) #23, !dbg !5252
  %28 = load ptr, ptr %tmp24, align 8, !dbg !5254
  store ptr %28, ptr %tmp22, align 8, !dbg !5253
  %29 = load ptr, ptr %tmp22, align 8, !dbg !5252
  %30 = load i32, ptr %i, align 4, !dbg !5255
  %idxprom28 = sext i32 %30 to i64, !dbg !5256
  %arrayidx29 = getelementptr [2 x ptr], ptr %29, i64 0, i64 %idxprom28, !dbg !5256
  store ptr null, ptr %arrayidx29, align 8, !dbg !5257
  %31 = load ptr, ptr %page, align 8, !dbg !5258
  call void @__free_pages(ptr noundef %31, i32 noundef 0) #24, !dbg !5258
  br label %if.end30, !dbg !5259

if.end30:                                         ; preds = %do.end21, %do.end
  br label %for.inc, !dbg !5260

for.inc:                                          ; preds = %if.end30
  %32 = load i32, ptr %i, align 4, !dbg !5261
  %inc = add i32 %32, 1, !dbg !5261
  store i32 %inc, ptr %i, align 4, !dbg !5261
  br label %for.cond, !dbg !5262, !llvm.loop !5263

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !5265
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #23, !dbg !5265
  ret i32 0, !dbg !5266
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @profile_online_cpu(i32 noundef %cpu) #0 align 16 !dbg !5267 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  %call = call zeroext i1 @cpumask_available(ptr noundef @prof_cpu_mask) #24, !dbg !5271
  br i1 %call, label %if.then, label %if.end, !dbg !5273

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5274
  call void @cpumask_set_cpu(i32 noundef %0, ptr noundef @prof_cpu_mask) #24, !dbg !5275
  br label %if.end, !dbg !5275

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5276
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5277 dso_local void @proc_set_size(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state(i32 noundef %state) #6 align 16 !dbg !5280 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load i32, ptr %state.addr, align 4, !dbg !5286
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext true) #24, !dbg !5287
  ret void, !dbg !5288
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_profile__328_491_create_proc_profile4() #10 section ".init.text" align 16 !dbg !5289 {
entry:
  %call = call i32 @create_proc_profile() #24, !dbg !5290
  ret i32 %call, !dbg !5290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !5291 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5296, metadata !DIExpression()), !dbg !5300
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5297, metadata !DIExpression()), !dbg !5301
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5298, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #23, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5299, metadata !DIExpression()), !dbg !5304
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5305
  %add = add i32 %0, 63, !dbg !5305
  %and = and i32 %add, -64, !dbg !5305
  %div = udiv i32 %and, 8, !dbg !5305
  store i32 %div, ptr %len, align 4, !dbg !5304
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5306
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5306
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5306

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5306
  %cmp = icmp ule i32 %3, 64, !dbg !5306
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5306

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5306
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5306
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5308

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5309
  %6 = load i64, ptr %5, align 8, !dbg !5310
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5311
  store i64 %6, ptr %7, align 8, !dbg !5312
  br label %if.end, !dbg !5313

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5314
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5315
  %10 = load i32, ptr %len, align 4, !dbg !5316
  %conv = zext i32 %10 to i64, !dbg !5316
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !5317
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #23, !dbg !5318
  ret void, !dbg !5318
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !5319 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5321, metadata !DIExpression()), !dbg !5326
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5322, metadata !DIExpression()), !dbg !5327
  %0 = load i64, ptr %size.addr, align 8, !dbg !5328
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5329
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5330

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5331
  %tobool = icmp ne i64 %2, 0, !dbg !5331
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5332

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #23, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5323, metadata !DIExpression()), !dbg !5334
  %3 = load i64, ptr %size.addr, align 8, !dbg !5335
  %cmp = icmp ugt i64 %3, 8192, !dbg !5337
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5338

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5339
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5340
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #26, !dbg !5341
  store ptr %call, ptr %retval, align 8, !dbg !5342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5342

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5343
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #24, !dbg !5343
  store i32 %call2, ptr %index, align 4, !dbg !5344
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5345
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5346
  %9 = ptrtoint ptr %8 to i64, !dbg !5346
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #24, !dbg !5347
  %idxprom = zext i32 %call3 to i64, !dbg !5348
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5348
  %10 = load i32, ptr %index, align 4, !dbg !5349
  %idxprom4 = zext i32 %10 to i64, !dbg !5348
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5348
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5348
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5350
  %13 = load i64, ptr %size.addr, align 8, !dbg !5351
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #28, !dbg !5352
  store ptr %call6, ptr %retval, align 8, !dbg !5353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5353

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #23, !dbg !5354
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5355
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5356
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #26, !dbg !5357
  store ptr %call8, ptr %retval, align 8, !dbg !5358
  br label %return, !dbg !5358

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5359
  ret ptr %16, !dbg !5359
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5360 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5361 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5365, metadata !DIExpression()), !dbg !5367
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5366, metadata !DIExpression()), !dbg !5368
  %0 = load i64, ptr %size.addr, align 8, !dbg !5369
  %tobool = icmp ne i64 %0, 0, !dbg !5369
  br i1 %tobool, label %if.end, label %if.then, !dbg !5371

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5373
  %cmp = icmp ule i64 %1, 8, !dbg !5375
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5376

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5378
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5380
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5381

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5382
  %cmp4 = icmp ule i64 %3, 96, !dbg !5383
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5384

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5386
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5388
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5389

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5390
  %cmp9 = icmp ule i64 %5, 192, !dbg !5391
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5392

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5393
  br label %return, !dbg !5393

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5394
  %cmp12 = icmp ule i64 %6, 8, !dbg !5396
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5397

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5399
  %cmp15 = icmp ule i64 %7, 16, !dbg !5401
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5402

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5403
  br label %return, !dbg !5403

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5404
  %cmp18 = icmp ule i64 %8, 32, !dbg !5406
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5407

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5408
  br label %return, !dbg !5408

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5409
  %cmp21 = icmp ule i64 %9, 64, !dbg !5411
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5412

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5413
  br label %return, !dbg !5413

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5414
  %cmp24 = icmp ule i64 %10, 128, !dbg !5416
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5417

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5418
  br label %return, !dbg !5418

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5419
  %cmp27 = icmp ule i64 %11, 256, !dbg !5421
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5422

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5423
  br label %return, !dbg !5423

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5424
  %cmp30 = icmp ule i64 %12, 512, !dbg !5426
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5427

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5428
  br label %return, !dbg !5428

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5429
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5431
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5432

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5433
  br label %return, !dbg !5433

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5434
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5436
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5437

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5438
  br label %return, !dbg !5438

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5439
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5441
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5442

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5443
  br label %return, !dbg !5443

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5444
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5446
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5447

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5448
  br label %return, !dbg !5448

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5449
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5451
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5452

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5453
  br label %return, !dbg !5453

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5454
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5456
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5457

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5458
  br label %return, !dbg !5458

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5459
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5461
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5462

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5463
  br label %return, !dbg !5463

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5464
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5466
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5467

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5469
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5471
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5472

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5474
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5476
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5477

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5478
  br label %return, !dbg !5478

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5479
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5481
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5482

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5483
  br label %return, !dbg !5483

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5484
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5486
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5487

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5488
  br label %return, !dbg !5488

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5489, !range !5491, !noundef !1255
  %tobool69 = trunc i8 %25 to i1, !dbg !5489
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5492

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5493

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #29, !dbg !5494, !srcloc !5497
  unreachable, !dbg !5494

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5498

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5499

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5500

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5502

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5500

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #23, !dbg !5504, !srcloc !5506
  br label %do.end75, !dbg !5504

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5500

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5507
  br label %return, !dbg !5507

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5508
  ret i32 %26, !dbg !5508
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5509 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5515 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5519, metadata !DIExpression()), !dbg !5521
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5523
  %and = and i32 %0, 17, !dbg !5523
  %cmp = icmp eq i32 %and, 0, !dbg !5523
  %lnot = xor i1 %cmp, true, !dbg !5523
  %lnot1 = xor i1 %lnot, true, !dbg !5523
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5523
  %conv = sext i32 %lnot.ext to i64, !dbg !5523
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5523
  %tobool = icmp ne i64 %expval, 0, !dbg !5523
  br i1 %tobool, label %if.then, label %if.end, !dbg !5525

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5527
  %and2 = and i32 %1, 1, !dbg !5529
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5529
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5530

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5531
  br label %return, !dbg !5531

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5532
  br label %return, !dbg !5532

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5534
  ret i32 %2, !dbg !5534
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5535 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5536 dso_local void @__compiletime_assert_206() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #9 align 16 !dbg !5537 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5540, metadata !DIExpression()), !dbg !5547
  br label %do.body, !dbg !5548

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #23, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5541, metadata !DIExpression()), !dbg !5549
  %0 = load i32, ptr %val.addr, align 4, !dbg !5549
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5549
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5549

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5549
  %cmp = icmp eq i32 %2, 1, !dbg !5549
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5549

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5549
  %cmp1 = icmp eq i32 %3, -1, !dbg !5549
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5549

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5549
  br label %cond.end, !dbg !5549

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5549
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5549
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5550
  %cmp2 = icmp eq i32 %5, 1, !dbg !5550
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5549

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !5551, !srcloc !5553
  br label %if.end8, !dbg !5550

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5554
  %cmp3 = icmp eq i32 %6, -1, !dbg !5554
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5550

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !5555, !srcloc !5557
  br label %if.end, !dbg !5554

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5554

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #23, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5543, metadata !DIExpression()), !dbg !5558
  %7 = load i32, ptr %val.addr, align 4, !dbg !5558
  %conv = sext i32 %7 to i64, !dbg !5558
  %and = and i64 %conv, 4294967295, !dbg !5558
  %conv7 = trunc i64 %and to i32, !dbg !5558
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5558
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5558
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !5558, !srcloc !5559
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #23, !dbg !5554
  br label %do.cond, !dbg !5558

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5558

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #23, !dbg !5548
  br label %do.end10, !dbg !5549

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #9 align 16 !dbg !5561 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #23, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5563, metadata !DIExpression()), !dbg !5565
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !5565, !srcloc !5566
  %1 = icmp ult i8 %0, 2, !dbg !5565
  call void @llvm.assume(i1 %1), !dbg !5565
  store i8 %0, ptr %c, align 1, !dbg !5565
  %2 = load i8, ptr %c, align 1, !dbg !5565, !range !5491, !noundef !1255
  %tobool = trunc i8 %2 to i1, !dbg !5565
  %frombool = zext i1 %tobool to i8, !dbg !5565
  store i8 %frombool, ptr %tmp, align 1, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #23, !dbg !5567
  %3 = load i8, ptr %tmp, align 1, !dbg !5565, !range !5491, !noundef !1255
  %tobool1 = trunc i8 %3 to i1, !dbg !5565
  ret i1 %tobool1, !dbg !5568
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #18

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #9 align 16 !dbg !5569 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #23, !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5574, metadata !DIExpression()), !dbg !5576
  %call = call i64 @arch_local_save_flags() #24, !dbg !5577
  store i64 %call, ptr %flags, align 8, !dbg !5576
  call void @arch_local_irq_disable() #24, !dbg !5578
  %0 = load i64, ptr %flags, align 8, !dbg !5579
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #23, !dbg !5580
  ret i64 %0, !dbg !5581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_add(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5582 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5587, metadata !DIExpression()), !dbg !5589
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5588, metadata !DIExpression()), !dbg !5590
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5591
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #24, !dbg !5592
  %1 = load i32, ptr %i.addr, align 4, !dbg !5593
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5594
  call void @raw_atomic_add(i32 noundef %1, ptr noundef %2) #24, !dbg !5595
  ret void, !dbg !5596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #9 align 16 !dbg !5597 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5603
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #24, !dbg !5605
  %tobool = icmp ne i32 %call, 0, !dbg !5605
  br i1 %tobool, label %if.end, label %if.then, !dbg !5606

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #24, !dbg !5607
  br label %if.end, !dbg !5607

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5608
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #9 align 16 !dbg !5609 {
entry:
  %call = call i64 @native_save_fl() #24, !dbg !5610
  ret i64 %call, !dbg !5611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #9 align 16 !dbg !5612 {
entry:
  call void @native_irq_disable() #24, !dbg !5613
  ret void, !dbg !5614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #9 align 16 !dbg !5615 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #23, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5617, metadata !DIExpression()), !dbg !5619
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #23, !dbg !5620, !srcloc !5621
  %0 = load i64, ptr %flags, align 8, !dbg !5622
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #23, !dbg !5623
  ret i64 %0, !dbg !5624
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #9 align 16 !dbg !5625 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !5626, !srcloc !5627
  ret void, !dbg !5628
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5629 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5637, metadata !DIExpression()), !dbg !5639
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5638, metadata !DIExpression()), !dbg !5640
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5641
  %1 = load i64, ptr %size.addr, align 8, !dbg !5642
  %conv = trunc i64 %1 to i32, !dbg !5642
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #24, !dbg !5643
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5644
  %3 = load i64, ptr %size.addr, align 8, !dbg !5644
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #24, !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_add(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5646 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5649, metadata !DIExpression()), !dbg !5651
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5650, metadata !DIExpression()), !dbg !5652
  %0 = load i32, ptr %i.addr, align 4, !dbg !5653
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5654
  call void @arch_atomic_add(i32 noundef %0, ptr noundef %1) #24, !dbg !5655
  ret void, !dbg !5656
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5657 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5662, metadata !DIExpression()), !dbg !5664
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5663, metadata !DIExpression()), !dbg !5665
  ret i1 true, !dbg !5666
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5667 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5672, metadata !DIExpression()), !dbg !5675
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5673, metadata !DIExpression()), !dbg !5676
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5674, metadata !DIExpression()), !dbg !5677
  ret void, !dbg !5678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_add(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5679 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5682, metadata !DIExpression()), !dbg !5684
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5683, metadata !DIExpression()), !dbg !5685
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5686
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5687
  %1 = load i32, ptr %i.addr, align 4, !dbg !5688
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #23, !dbg !5689, !srcloc !5690
  ret void, !dbg !5691
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #9 align 16 !dbg !5692 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5698
  %and = and i64 %0, 512, !dbg !5699
  %tobool = icmp ne i64 %and, 0, !dbg !5700
  %lnot = xor i1 %tobool, true, !dbg !5700
  %lnot.ext = zext i1 %lnot to i32, !dbg !5700
  ret i32 %lnot.ext, !dbg !5701
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #9 align 16 !dbg !5702 {
entry:
  call void @native_irq_enable() #24, !dbg !5703
  ret void, !dbg !5704
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #9 align 16 !dbg !5705 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !5706, !srcloc !5707
  ret void, !dbg !5708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5709 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5717, metadata !DIExpression()), !dbg !5719
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5718, metadata !DIExpression()), !dbg !5720
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5721
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5722
  %div = udiv i64 %1, 64, !dbg !5722
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5723
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #24, !dbg !5724
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5725
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5726
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #24, !dbg !5727
  ret i1 %call, !dbg !5728
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #9 align 16 !dbg !5729 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5733, metadata !DIExpression()), !dbg !5734
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5735
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #24, !dbg !5736
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5737
  ret i32 %1, !dbg !5738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5739 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5741, metadata !DIExpression()), !dbg !5743
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5742, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5745
  %1 = load i64, ptr %size.addr, align 8, !dbg !5746
  %conv = trunc i64 %1 to i32, !dbg !5746
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #24, !dbg !5747
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5748
  %3 = load i64, ptr %size.addr, align 8, !dbg !5748
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #24, !dbg !5748
  ret void, !dbg !5749
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5750 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5753, metadata !DIExpression()), !dbg !5755
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5754, metadata !DIExpression()), !dbg !5756
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5757
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5758
  br i1 %1, label %cond.true, label %cond.false, !dbg !5758

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5759
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5760
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #24, !dbg !5761
  %conv = zext i1 %call to i32, !dbg !5761
  br label %cond.end, !dbg !5758

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5762
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5763
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #24, !dbg !5764
  %conv2 = zext i1 %call1 to i32, !dbg !5764
  br label %cond.end, !dbg !5758

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5758
  %tobool = icmp ne i32 %cond, 0, !dbg !5758
  ret i1 %tobool, !dbg !5765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5766 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5768, metadata !DIExpression()), !dbg !5770
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5769, metadata !DIExpression()), !dbg !5771
  ret i1 true, !dbg !5772
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5773 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5778, metadata !DIExpression()), !dbg !5780
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5781
  %and = and i64 %0, 63, !dbg !5782
  %shl = shl i64 1, %and, !dbg !5783
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5784
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5785
  %shr = ashr i64 %2, 6, !dbg !5786
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5784
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5784
  %and1 = and i64 %shl, %3, !dbg !5787
  %cmp = icmp ne i64 %and1, 0, !dbg !5788
  ret i1 %cmp, !dbg !5789
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5790 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5792, metadata !DIExpression()), !dbg !5795
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5793, metadata !DIExpression()), !dbg !5796
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #23, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5794, metadata !DIExpression()), !dbg !5798
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5799
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5800
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #23, !dbg !5801, !srcloc !5802
  %3 = icmp ult i8 %2, 2, !dbg !5801
  call void @llvm.assume(i1 %3), !dbg !5801
  store i8 %2, ptr %oldbit, align 1, !dbg !5801
  %4 = load i8, ptr %oldbit, align 1, !dbg !5803, !range !5491, !noundef !1255
  %tobool = trunc i8 %4 to i1, !dbg !5803
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #23, !dbg !5804
  ret i1 %tobool, !dbg !5805
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #9 align 16 !dbg !5806 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5810, metadata !DIExpression()), !dbg !5812
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5811, metadata !DIExpression()), !dbg !5813
  ret void, !dbg !5814
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prof_cpu_mask_proc_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5815 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5817, metadata !DIExpression()), !dbg !5819
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5818, metadata !DIExpression()), !dbg !5820
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5821
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @prof_cpu_mask_proc_show, ptr noundef null) #24, !dbg !5822
  ret i32 %call, !dbg !5823
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @prof_cpu_mask_proc_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %pos) #0 align 16 !dbg !5824 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %new_value = alloca [1 x %struct.cpumask], align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5826, metadata !DIExpression()), !dbg !5832
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5827, metadata !DIExpression()), !dbg !5833
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5828, metadata !DIExpression()), !dbg !5834
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5829, metadata !DIExpression()), !dbg !5835
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_value) #23, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %new_value, metadata !5830, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #23, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5831, metadata !DIExpression()), !dbg !5839
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %new_value, i32 noundef 3264) #24, !dbg !5840
  br i1 %call, label %if.end, label %if.then, !dbg !5842

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5843

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5844
  %1 = load i64, ptr %count.addr, align 8, !dbg !5845
  %conv = trunc i64 %1 to i32, !dbg !5845
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5846
  %call1 = call i32 @cpumask_parse_user(ptr noundef %0, i32 noundef %conv, ptr noundef %arraydecay) #24, !dbg !5847
  store i32 %call1, ptr %err, align 4, !dbg !5848
  %2 = load i32, ptr %err, align 4, !dbg !5849
  %tobool = icmp ne i32 %2, 0, !dbg !5849
  br i1 %tobool, label %if.end5, label %if.then2, !dbg !5851

if.then2:                                         ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5852
  call void @cpumask_copy(ptr noundef @prof_cpu_mask, ptr noundef %arraydecay3) #24, !dbg !5854
  %3 = load i64, ptr %count.addr, align 8, !dbg !5855
  %conv4 = trunc i64 %3 to i32, !dbg !5855
  store i32 %conv4, ptr %err, align 4, !dbg !5856
  br label %if.end5, !dbg !5857

if.end5:                                          ; preds = %if.then2, %if.end
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_value, i64 0, i64 0, !dbg !5858
  call void @free_cpumask_var(ptr noundef %arraydecay6) #24, !dbg !5859
  %4 = load i32, ptr %err, align 4, !dbg !5860
  %conv7 = sext i32 %4 to i64, !dbg !5860
  store i64 %conv7, ptr %retval, align 8, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #23, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_value) #23, !dbg !5862
  %5 = load i64, ptr %retval, align 8, !dbg !5862
  ret i64 %5, !dbg !5862
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5863 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prof_cpu_mask_proc_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5866 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5868, metadata !DIExpression()), !dbg !5870
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5872
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5873
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %1, ptr noundef @prof_cpu_mask) #24, !dbg !5874
  ret i32 0, !dbg !5875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5876 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #6 align 16 !dbg !5879 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5882, metadata !DIExpression()), !dbg !5884
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !5885
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !5886
  call void @cpumask_clear(ptr noundef %arraydecay) #24, !dbg !5887
  ret i1 true, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_parse_user(ptr noundef %buf, i32 noundef %len, ptr noundef %dstp) #6 align 16 !dbg !5889 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5893, metadata !DIExpression()), !dbg !5896
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5894, metadata !DIExpression()), !dbg !5897
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5895, metadata !DIExpression()), !dbg !5898
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5899
  %1 = load i32, ptr %len.addr, align 4, !dbg !5900
  %2 = load ptr, ptr %dstp.addr, align 8, !dbg !5901
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !5901
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5901
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5902
  %call = call i32 @bitmap_parse_user(ptr noundef %0, i32 noundef %1, ptr noundef %arraydecay, i32 noundef %3) #24, !dbg !5903
  ret i32 %call, !dbg !5904
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #6 align 16 !dbg !5905 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5907, metadata !DIExpression()), !dbg !5908
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5909
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5909
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5909
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #24, !dbg !5910
  ret void, !dbg !5911
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #6 align 16 !dbg !5912 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5916, metadata !DIExpression()), !dbg !5919
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5917, metadata !DIExpression()), !dbg !5920
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #23, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5918, metadata !DIExpression()), !dbg !5922
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5923
  %add = add i32 %0, 63, !dbg !5923
  %and = and i32 %add, -64, !dbg !5923
  %div = udiv i32 %and, 8, !dbg !5923
  store i32 %div, ptr %len, align 4, !dbg !5922
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5924
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5924
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5924

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5924
  %cmp = icmp ule i32 %3, 64, !dbg !5924
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5924

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5924
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5924
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5926

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5927
  store i64 0, ptr %5, align 8, !dbg !5928
  br label %if.end, !dbg !5929

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5930
  %7 = load i32, ptr %len, align 4, !dbg !5931
  %conv = zext i32 %7 to i64, !dbg !5931
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5932
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #23, !dbg !5933
  ret void, !dbg !5933
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5934 dso_local i32 @bitmap_parse_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5937 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_mem(i32 noundef %cpu) #6 align 16 !dbg !5940 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5943, metadata !DIExpression()), !dbg !5944
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5945
  %call = call i32 @cpu_to_node(i32 noundef %0) #24, !dbg !5946
  ret i32 %call, !dbg !5947
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #6 align 16 !dbg !5948 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5952, metadata !DIExpression()), !dbg !5955
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5953, metadata !DIExpression()), !dbg !5956
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5954, metadata !DIExpression()), !dbg !5957
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5958
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5959
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #24, !dbg !5960
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5961
  %3 = load i32, ptr %order.addr, align 4, !dbg !5962
  %4 = load i32, ptr %nid.addr, align 4, !dbg !5963
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #24, !dbg !5964
  ret ptr %call, !dbg !5965
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #9 align 16 !dbg !5966 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5974
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !5974
  %2 = inttoptr i64 %1 to ptr, !dbg !5974
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5974
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !5974
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5974
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5974
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5974
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !5974
  %add = add i64 %shl, %3, !dbg !5974
  %4 = inttoptr i64 %add to ptr, !dbg !5974
  ret ptr %4, !dbg !5975
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #6 align 16 !dbg !5976 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5978, metadata !DIExpression()), !dbg !5984
  br label %do.body, !dbg !5985

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5979, metadata !DIExpression()), !dbg !5986
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5986
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5985
  br label %do.end, !dbg !5986

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5982, metadata !DIExpression()), !dbg !5987
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !5987
  %1 = load i64, ptr %__ptr, align 8, !dbg !5987
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5987
  %idxprom = sext i32 %2 to i64, !dbg !5987
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5987
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5987
  %add = add i64 %1, %3, !dbg !5987
  %4 = inttoptr i64 %add to ptr, !dbg !5987
  store ptr %4, ptr %tmp1, align 8, !dbg !5987
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !5985
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5987
  store ptr %5, ptr %tmp, align 8, !dbg !5986
  %6 = load ptr, ptr %tmp, align 8, !dbg !5985
  %7 = load i32, ptr %6, align 4, !dbg !5988
  ret i32 %7, !dbg !5989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #6 align 16 !dbg !5990 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !5994, metadata !DIExpression()), !dbg !5997
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5995, metadata !DIExpression()), !dbg !5998
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #23, !dbg !5999
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !5996, metadata !DIExpression()), !dbg !6000
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6001
  %and = and i32 %0, 2105344, !dbg !6002
  store i32 %and, ptr %warn_gfp, align 4, !dbg !6000
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !6003
  %cmp = icmp ne i32 %1, 2105344, !dbg !6005
  br i1 %cmp, label %if.then, label %if.end, !dbg !6006

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6007

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !6008
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #24, !dbg !6008
  %tobool = icmp ne i32 %call, 0, !dbg !6008
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6010

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6011

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6012

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !6014

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6014

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !6012
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %gfp_mask.addr, i32 noundef %3) #25, !dbg !6012
  store i32 %call3, ptr %tmp, align 4, !dbg !6014
  %4 = load i32, ptr %tmp, align 4, !dbg !6012
  call void @dump_stack() #25, !dbg !6016
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6017
  br label %cleanup, !dbg !6017

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #23, !dbg !6017
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6017

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #6 align 16 !dbg !6022 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6026, metadata !DIExpression()), !dbg !6028
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6027, metadata !DIExpression()), !dbg !6029
  %0 = load i32, ptr %node.addr, align 4, !dbg !6030
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6030
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6030

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !6030
  %idxprom = zext i32 %2 to i64, !dbg !6030
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !6030
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !6030
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6030
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !6030
  %cmp = icmp ne i64 %3, 0, !dbg !6030
  %conv = zext i1 %cmp to i32, !dbg !6030
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6030
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6030

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !6030
  %idxprom2 = zext i32 %5 to i64, !dbg !6030
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !6030
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !6030
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !6030
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !6030
  %cmp6 = icmp ne i64 %6, 0, !dbg !6030
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !6030

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !6030
  %idxprom9 = zext i32 %7 to i64, !dbg !6030
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !6030
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !6030
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !6030
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !6030
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6030
  br i1 %9, label %cond.true, label %cond.false, !dbg !6030

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !6030
  %conv13 = sext i32 %10 to i64, !dbg !6030
  %11 = load i32, ptr %state.addr, align 4, !dbg !6030
  %idxprom14 = zext i32 %11 to i64, !dbg !6030
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !6030
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !6030
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !6030
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #24, !dbg !6030
  %conv18 = zext i1 %call to i32, !dbg !6030
  br label %cond.end, !dbg !6030

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !6030
  %conv19 = sext i32 %12 to i64, !dbg !6030
  %13 = load i32, ptr %state.addr, align 4, !dbg !6030
  %idxprom20 = zext i32 %13 to i64, !dbg !6030
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !6030
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !6030
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !6030
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #24, !dbg !6030
  %conv25 = zext i1 %call24 to i32, !dbg !6030
  br label %cond.end, !dbg !6030

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !6030
  ret i32 %cond, !dbg !6031
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6032 dso_local void @dump_stack() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6033 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6036, metadata !DIExpression()), !dbg !6041
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6037, metadata !DIExpression()), !dbg !6042
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #23, !dbg !6043
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6038, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6045
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6046
  %div = udiv i64 %1, 64, !dbg !6046
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6047
  store ptr %add.ptr, ptr %p, align 8, !dbg !6044
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #23, !dbg !6048
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6039, metadata !DIExpression()), !dbg !6049
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6050
  %rem = urem i64 %2, 64, !dbg !6050
  %shl = shl i64 1, %rem, !dbg !6050
  store i64 %shl, ptr %mask, align 8, !dbg !6049
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #23, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6040, metadata !DIExpression()), !dbg !6052
  %3 = load ptr, ptr %p, align 8, !dbg !6053
  %4 = load i64, ptr %3, align 8, !dbg !6054
  store i64 %4, ptr %val, align 8, !dbg !6052
  %5 = load i64, ptr %val, align 8, !dbg !6055
  %6 = load i64, ptr %mask, align 8, !dbg !6056
  %and = and i64 %5, %6, !dbg !6057
  %tobool = icmp ne i64 %and, 0, !dbg !6058
  %lnot = xor i1 %tobool, true, !dbg !6058
  %lnot1 = xor i1 %lnot, true, !dbg !6059
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #23, !dbg !6060
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #23, !dbg !6060
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #23, !dbg !6060
  ret i1 %lnot1, !dbg !6061
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear_cpu(i32 noundef %cpu, ptr noundef %dstp) #9 align 16 !dbg !6062 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6066, metadata !DIExpression()), !dbg !6068
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6070
  %call = call i32 @cpumask_check(i32 noundef %0) #24, !dbg !6071
  %conv = zext i32 %call to i64, !dbg !6071
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !6072
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6072
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6072
  call void @clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #24, !dbg !6073
  ret void, !dbg !6074
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #9 align 16 !dbg !6075 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6080, metadata !DIExpression()), !dbg !6082
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #23, !dbg !6083
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6081, metadata !DIExpression()), !dbg !6084
  %0 = load i64, ptr %x.addr, align 8, !dbg !6085
  %sub = sub i64 %0, -2147483648, !dbg !6086
  store i64 %sub, ptr %y, align 8, !dbg !6084
  %1 = load i64, ptr %y, align 8, !dbg !6087
  %2 = load i64, ptr %x.addr, align 8, !dbg !6088
  %3 = load i64, ptr %y, align 8, !dbg !6089
  %cmp = icmp ugt i64 %2, %3, !dbg !6090
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6091

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6092
  br label %cond.end, !dbg !6091

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6093
  %sub1 = sub i64 -2147483648, %5, !dbg !6094
  br label %cond.end, !dbg !6091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6091
  %add = add i64 %1, %cond, !dbg !6095
  store i64 %add, ptr %x.addr, align 8, !dbg !6096
  %6 = load i64, ptr %x.addr, align 8, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #23, !dbg !6098
  ret i64 %6, !dbg !6099
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6100 dso_local void @__free_pages(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6103 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6109, metadata !DIExpression()), !dbg !6111
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6110, metadata !DIExpression()), !dbg !6112
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6113
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6114
  %div = sdiv i64 %1, 64, !dbg !6114
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6115
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #24, !dbg !6116
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6117
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6118
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #24, !dbg !6119
  ret void, !dbg !6120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6121 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6123, metadata !DIExpression()), !dbg !6125
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6124, metadata !DIExpression()), !dbg !6126
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6127
  %1 = load i64, ptr %size.addr, align 8, !dbg !6128
  %conv = trunc i64 %1 to i32, !dbg !6128
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #24, !dbg !6129
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6130
  %3 = load i64, ptr %size.addr, align 8, !dbg !6130
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #24, !dbg !6130
  ret void, !dbg !6131
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6132 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6134, metadata !DIExpression()), !dbg !6136
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6135, metadata !DIExpression()), !dbg !6137
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6138
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6140
  br i1 %1, label %if.then, label %if.else, !dbg !6141

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6142
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6142
  %shr = ashr i64 %3, 3, !dbg !6142
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6142
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6144
  %and = and i64 %4, 7, !dbg !6144
  %sh_prom = trunc i64 %and to i32, !dbg !6144
  %shl = shl i32 1, %sh_prom, !dbg !6144
  %not = xor i32 %shl, -1, !dbg !6145
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #23, !dbg !6146, !srcloc !6147
  br label %if.end, !dbg !6148

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6149
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6151
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #23, !dbg !6152, !srcloc !6153
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #9 align 16 !dbg !6155 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6159, metadata !DIExpression()), !dbg !6161
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6160, metadata !DIExpression()), !dbg !6162
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6163
  %call = call i32 @cpumask_check(i32 noundef %0) #24, !dbg !6164
  %conv = zext i32 %call to i64, !dbg !6164
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !6165
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6165
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6165
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #24, !dbg !6166
  ret void, !dbg !6167
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6168 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6170, metadata !DIExpression()), !dbg !6172
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6171, metadata !DIExpression()), !dbg !6173
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6174
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6175
  %div = sdiv i64 %1, 64, !dbg !6175
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6176
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #24, !dbg !6177
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6178
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6179
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #24, !dbg !6180
  ret void, !dbg !6181
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6182 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6184, metadata !DIExpression()), !dbg !6186
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6185, metadata !DIExpression()), !dbg !6187
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6188
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6190
  br i1 %1, label %if.then, label %if.else, !dbg !6191

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6192
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6192
  %shr = ashr i64 %3, 3, !dbg !6192
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6192
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6194
  %and = and i64 %4, 7, !dbg !6194
  %sh_prom = trunc i64 %and to i32, !dbg !6194
  %shl = shl i32 1, %sh_prom, !dbg !6194
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #23, !dbg !6195, !srcloc !6196
  br label %if.end, !dbg !6197

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6198
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6200
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #23, !dbg !6201, !srcloc !6202
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_profile(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6204 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %p = alloca i64, align 8
  %read = alloca i64, align 8
  %pnt = alloca ptr, align 8
  %sample_step = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i8, align 1
  %__x = alloca i8, align 1
  %__ptr = alloca ptr, align 8
  %tmp16 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6206, metadata !DIExpression()), !dbg !6223
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6207, metadata !DIExpression()), !dbg !6224
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6208, metadata !DIExpression()), !dbg !6225
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6209, metadata !DIExpression()), !dbg !6226
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #23, !dbg !6227
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6210, metadata !DIExpression()), !dbg !6228
  %0 = load ptr, ptr %ppos.addr, align 8, !dbg !6229
  %1 = load i64, ptr %0, align 8, !dbg !6230
  store i64 %1, ptr %p, align 8, !dbg !6228
  call void @llvm.lifetime.start.p0(i64 8, ptr %read) #23, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %read, metadata !6211, metadata !DIExpression()), !dbg !6232
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnt) #23, !dbg !6233
  call void @llvm.dbg.declare(metadata ptr %pnt, metadata !6212, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 8, ptr %sample_step) #23, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %sample_step, metadata !6213, metadata !DIExpression()), !dbg !6236
  %2 = load i16, ptr @prof_shift, align 2, !dbg !6237
  %conv = zext i16 %2 to i32, !dbg !6237
  %sh_prom = zext i32 %conv to i64, !dbg !6238
  %shl = shl i64 1, %sh_prom, !dbg !6238
  store i64 %shl, ptr %sample_step, align 8, !dbg !6236
  call void @profile_flip_buffers() #24, !dbg !6239
  %3 = load i64, ptr %p, align 8, !dbg !6240
  %4 = load i64, ptr @prof_len, align 8, !dbg !6242
  %add = add i64 %4, 1, !dbg !6243
  %mul = mul i64 %add, 4, !dbg !6244
  %cmp = icmp uge i64 %3, %mul, !dbg !6245
  br i1 %cmp, label %if.then, label %if.end, !dbg !6246

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6247

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %count.addr, align 8, !dbg !6248
  %6 = load i64, ptr @prof_len, align 8, !dbg !6250
  %add2 = add i64 %6, 1, !dbg !6251
  %mul3 = mul i64 %add2, 4, !dbg !6252
  %7 = load i64, ptr %p, align 8, !dbg !6253
  %sub = sub i64 %mul3, %7, !dbg !6254
  %cmp4 = icmp ugt i64 %5, %sub, !dbg !6255
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !6256

if.then6:                                         ; preds = %if.end
  %8 = load i64, ptr @prof_len, align 8, !dbg !6257
  %add7 = add i64 %8, 1, !dbg !6258
  %mul8 = mul i64 %add7, 4, !dbg !6259
  %9 = load i64, ptr %p, align 8, !dbg !6260
  %sub9 = sub i64 %mul8, %9, !dbg !6261
  store i64 %sub9, ptr %count.addr, align 8, !dbg !6262
  br label %if.end10, !dbg !6263

if.end10:                                         ; preds = %if.then6, %if.end
  store i64 0, ptr %read, align 8, !dbg !6264
  br label %while.cond, !dbg !6265

while.cond:                                       ; preds = %if.end19, %if.end10
  %10 = load i64, ptr %p, align 8, !dbg !6266
  %cmp11 = icmp ult i64 %10, 4, !dbg !6267
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !6268

land.rhs:                                         ; preds = %while.cond
  %11 = load i64, ptr %count.addr, align 8, !dbg !6269
  %cmp13 = icmp ugt i64 %11, 0, !dbg !6270
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ], !dbg !6271
  br i1 %12, label %while.body, label %while.end, !dbg !6265

while.body:                                       ; preds = %land.end
  call void @might_fault() #24, !dbg !6272
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #23, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6214, metadata !DIExpression()), !dbg !6273
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #23, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6219, metadata !DIExpression()), !dbg !6273
  call void @llvm.lifetime.start.p0(i64 1, ptr %__val_pu) #23, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6220, metadata !DIExpression()), !dbg !6273
  call void @llvm.lifetime.start.p0(i64 1, ptr %__x) #23, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6221, metadata !DIExpression()), !dbg !6273
  %13 = load i64, ptr %p, align 8, !dbg !6273
  %add.ptr = getelementptr i8, ptr %sample_step, i64 %13, !dbg !6273
  %14 = load i8, ptr %add.ptr, align 1, !dbg !6273
  store i8 %14, ptr %__x, align 1, !dbg !6273
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6222, metadata !DIExpression()), !dbg !6273
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !6273
  store ptr %15, ptr %__ptr, align 8, !dbg !6273
  %16 = load ptr, ptr %__ptr, align 8, !dbg !6273
  store ptr %16, ptr %__ptr_pu, align 8, !dbg !6273
  %17 = load i8, ptr %__x, align 1, !dbg !6273
  store i8 %17, ptr %__val_pu, align 1, !dbg !6273
  %18 = call i64 @llvm.read_register.i64(metadata !4536), !dbg !6273
  %19 = load ptr, ptr %__ptr_pu, align 8, !dbg !6273
  %20 = load i8, ptr %__val_pu, align 1, !dbg !6273
  %21 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %19, i8 %20, i64 1, i64 %18) #23, !dbg !6273, !srcloc !6274
  %asmresult = extractvalue { ptr, i64 } %21, 0, !dbg !6273
  %asmresult15 = extractvalue { ptr, i64 } %21, 1, !dbg !6273
  %22 = ptrtoint ptr %asmresult to i64, !dbg !6273
  %23 = trunc i64 %22 to i32, !dbg !6273
  store i32 %23, ptr %__ret_pu, align 4, !dbg !6273
  call void @llvm.write_register.i64(metadata !4536, i64 %asmresult15), !dbg !6273
  %24 = load ptr, ptr %__ptr, align 8, !dbg !6275
  call void @kmsan_copy_to_user(ptr noundef %24, ptr noundef %__x, i64 noundef 1, i64 noundef 0) #24, !dbg !6275
  %25 = load i32, ptr %__ret_pu, align 4, !dbg !6273
  %conv17 = sext i32 %25 to i64, !dbg !6273
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !6273
  store i64 %expval, ptr %tmp16, align 8, !dbg !6273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 1, ptr %__x) #23, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 1, ptr %__val_pu) #23, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #23, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #23, !dbg !6272
  %26 = load i64, ptr %tmp16, align 8, !dbg !6273
  store i64 %26, ptr %tmp, align 8, !dbg !6272
  %27 = load i64, ptr %tmp, align 8, !dbg !6272
  %tobool = icmp ne i64 %27, 0, !dbg !6277
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !6278

if.then18:                                        ; preds = %while.body
  store i64 -14, ptr %retval, align 8, !dbg !6279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6279

if.end19:                                         ; preds = %while.body
  %28 = load ptr, ptr %buf.addr, align 8, !dbg !6280
  %incdec.ptr = getelementptr i8, ptr %28, i32 1, !dbg !6280
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !6280
  %29 = load i64, ptr %p, align 8, !dbg !6281
  %inc = add i64 %29, 1, !dbg !6281
  store i64 %inc, ptr %p, align 8, !dbg !6281
  %30 = load i64, ptr %count.addr, align 8, !dbg !6282
  %dec = add i64 %30, -1, !dbg !6282
  store i64 %dec, ptr %count.addr, align 8, !dbg !6282
  %31 = load i64, ptr %read, align 8, !dbg !6283
  %inc20 = add i64 %31, 1, !dbg !6283
  store i64 %inc20, ptr %read, align 8, !dbg !6283
  br label %while.cond, !dbg !6265, !llvm.loop !6284

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr @prof_buffer, align 8, !dbg !6286
  %33 = load i64, ptr %p, align 8, !dbg !6287
  %add.ptr21 = getelementptr i8, ptr %32, i64 %33, !dbg !6288
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i64 -4, !dbg !6289
  store ptr %add.ptr22, ptr %pnt, align 8, !dbg !6290
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !6291
  %35 = load ptr, ptr %pnt, align 8, !dbg !6293
  %36 = load i64, ptr %count.addr, align 8, !dbg !6294
  %call = call i64 @copy_to_user(ptr noundef %34, ptr noundef %35, i64 noundef %36) #24, !dbg !6295
  %tobool23 = icmp ne i64 %call, 0, !dbg !6295
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6296

if.then24:                                        ; preds = %while.end
  store i64 -14, ptr %retval, align 8, !dbg !6297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6297

if.end25:                                         ; preds = %while.end
  %37 = load i64, ptr %count.addr, align 8, !dbg !6298
  %38 = load i64, ptr %read, align 8, !dbg !6299
  %add26 = add i64 %38, %37, !dbg !6299
  store i64 %add26, ptr %read, align 8, !dbg !6299
  %39 = load i64, ptr %read, align 8, !dbg !6300
  %40 = load ptr, ptr %ppos.addr, align 8, !dbg !6301
  %41 = load i64, ptr %40, align 8, !dbg !6302
  %add27 = add i64 %41, %39, !dbg !6302
  store i64 %add27, ptr %40, align 8, !dbg !6302
  %42 = load i64, ptr %read, align 8, !dbg !6303
  store i64 %42, ptr %retval, align 8, !dbg !6304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6304

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sample_step) #23, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnt) #23, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %read) #23, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #23, !dbg !6305
  %43 = load i64, ptr %retval, align 8, !dbg !6305
  ret i64 %43, !dbg !6305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @write_profile(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6306 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %multiplier = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6308, metadata !DIExpression()), !dbg !6315
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6309, metadata !DIExpression()), !dbg !6316
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6310, metadata !DIExpression()), !dbg !6317
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6311, metadata !DIExpression()), !dbg !6318
  %0 = load i64, ptr %count.addr, align 8, !dbg !6319
  %cmp = icmp eq i64 %0, 4, !dbg !6320
  br i1 %cmp, label %if.then, label %if.end6, !dbg !6321

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %multiplier) #23, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %multiplier, metadata !6312, metadata !DIExpression()), !dbg !6323
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6324
  %call = call i64 @copy_from_user(ptr noundef %multiplier, ptr noundef %1, i64 noundef 4) #24, !dbg !6326
  %tobool = icmp ne i64 %call, 0, !dbg !6326
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6327

if.then1:                                         ; preds = %if.then
  store i64 -14, ptr %retval, align 8, !dbg !6328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6328

if.end:                                           ; preds = %if.then
  %2 = load i32, ptr %multiplier, align 4, !dbg !6329
  %call2 = call i32 @setup_profiling_timer(i32 noundef %2) #24, !dbg !6331
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6331
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6332

if.then4:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6334
  br label %cleanup, !dbg !6334

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %multiplier) #23, !dbg !6334
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !6335

if.end6:                                          ; preds = %cleanup.cont, %entry
  call void @profile_discard_flip_buffers() #24, !dbg !6336
  %3 = load ptr, ptr @prof_buffer, align 8, !dbg !6337
  %4 = load i64, ptr @prof_len, align 8, !dbg !6338
  %mul = mul i64 %4, 4, !dbg !6339
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %mul, i1 false), !dbg !6340
  %5 = load i64, ptr %count.addr, align 8, !dbg !6341
  store i64 %5, ptr %retval, align 8, !dbg !6342
  br label %return, !dbg !6342

return:                                           ; preds = %if.end6, %cleanup
  %6 = load i64, ptr %retval, align 8, !dbg !6343
  ret i64 %6, !dbg !6343

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @profile_flip_buffers() #0 align 16 !dbg !4473 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify8 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %hits = alloca ptr, align 8
  %__vpp_verify27 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %__ptr31 = alloca i64, align 8
  %tmp32 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4475, metadata !DIExpression()), !dbg !6345
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #23, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4476, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #23, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4477, metadata !DIExpression()), !dbg !6347
  call void @mutex_lock(ptr noundef @profile_flip_mutex) #24, !dbg !6348
  br label %do.body, !dbg !6349

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4478, metadata !DIExpression()), !dbg !6350
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6350
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6350
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6349
  br label %do.cond, !dbg !6350

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6350

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !6351
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4481, metadata !DIExpression()), !dbg !6351
  store i64 ptrtoint (ptr @cpu_profile_flip to i64), ptr %__ptr, align 8, !dbg !6351
  %1 = load i64, ptr %__ptr, align 8, !dbg !6351
  br label %do.body2, !dbg !6352

do.body2:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #24, !dbg !6353
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !6353, !srcloc !6355
  br label %do.cond3, !dbg !6353

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6353

do.end4:                                          ; preds = %do.cond3
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #24, !dbg !6356
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4483, metadata !DIExpression()), !dbg !6357
  br label %do.body7, !dbg !6357

do.body7:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify8) #23, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify8, metadata !4487, metadata !DIExpression()), !dbg !6358
  store ptr null, ptr %__vpp_verify8, align 8, !dbg !6358
  %2 = load ptr, ptr %__vpp_verify8, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify8) #23, !dbg !6357
  br label %do.cond9, !dbg !6358

do.cond9:                                         ; preds = %do.body7
  br label %do.end10, !dbg !6358

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #23, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4489, metadata !DIExpression()), !dbg !6359
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #27, !dbg !6359, !srcloc !6360
  store i32 %3, ptr %pfo_val__, align 4, !dbg !6359
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !6359
  %conv = zext i32 %4 to i64, !dbg !6359
  %conv12 = trunc i64 %conv to i32, !dbg !6359
  store i32 %conv12, ptr %tmp11, align 4, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #23, !dbg !6357
  %5 = load i32, ptr %tmp11, align 4, !dbg !6359
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !6357
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !6357
  store i32 %6, ptr %tmp13, align 4, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6356
  %7 = load i32, ptr %tmp13, align 4, !dbg !6357
  store i32 %7, ptr %tmp6, align 4, !dbg !6356
  %8 = load i32, ptr %tmp6, align 4, !dbg !6356
  store i32 %8, ptr %tmp5, align 4, !dbg !6353
  %9 = load i32, ptr %tmp5, align 4, !dbg !6352
  %idxprom = sext i32 %9 to i64, !dbg !6351
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6351
  %10 = load i64, ptr %arrayidx, align 8, !dbg !6351
  %add = add i64 %1, %10, !dbg !6351
  %11 = inttoptr i64 %add to ptr, !dbg !6351
  store ptr %11, ptr %tmp1, align 8, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !6349
  %12 = load ptr, ptr %tmp1, align 8, !dbg !6351
  store ptr %12, ptr %tmp, align 8, !dbg !6350
  %13 = load ptr, ptr %tmp, align 8, !dbg !6349
  %14 = load i32, ptr %13, align 4, !dbg !6361
  store i32 %14, ptr %j, align 4, !dbg !6362
  br label %do.body14, !dbg !6363

do.body14:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !6364, !srcloc !6366
  %call = call zeroext i1 @__preempt_count_dec_and_test() #24, !dbg !6367
  %lnot = xor i1 %call, true, !dbg !6367
  %lnot15 = xor i1 %lnot, true, !dbg !6367
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !6367
  %conv16 = sext i32 %lnot.ext to i64, !dbg !6367
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6367
  %tobool = icmp ne i64 %expval, 0, !dbg !6367
  br i1 %tobool, label %if.then, label %if.end, !dbg !6364

if.then:                                          ; preds = %do.body14
  br label %do.body17, !dbg !6367

do.body17:                                        ; preds = %if.then
  %15 = call i64 @llvm.read_register.i64(metadata !4536), !dbg !6369
  %16 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %15) #23, !dbg !6369, !srcloc !6371
  call void @llvm.write_register.i64(metadata !4536, i64 %16), !dbg !6369
  br label %do.cond18, !dbg !6369

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6369

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6369

if.end:                                           ; preds = %do.end19, %do.body14
  br label %do.cond20, !dbg !6364

do.cond20:                                        ; preds = %if.end
  br label %do.end21, !dbg !6364

do.end21:                                         ; preds = %do.cond20
  call void @on_each_cpu(ptr noundef @__profile_flip_buffers, ptr noundef null, i32 noundef 1) #24, !dbg !6372
  store i32 0, ptr %cpu, align 4, !dbg !6373
  br label %for.cond, !dbg !6373

for.cond:                                         ; preds = %for.inc71, %do.end21
  %17 = load i32, ptr %cpu, align 4, !dbg !6374
  %conv22 = sext i32 %17 to i64, !dbg !6374
  %call23 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv22) #24, !dbg !6374
  %conv24 = trunc i64 %call23 to i32, !dbg !6374
  store i32 %conv24, ptr %cpu, align 4, !dbg !6374
  %18 = load i32, ptr %cpu, align 4, !dbg !6374
  %cmp = icmp ult i32 %18, 64, !dbg !6374
  br i1 %cmp, label %for.body, label %for.end73, !dbg !6373

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hits) #23, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %hits, metadata !4491, metadata !DIExpression()), !dbg !6376
  br label %do.body26, !dbg !6377

do.body26:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify27) #23, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify27, metadata !4495, metadata !DIExpression()), !dbg !6378
  store ptr null, ptr %__vpp_verify27, align 8, !dbg !6378
  %19 = load ptr, ptr %__vpp_verify27, align 8, !dbg !6378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify27) #23, !dbg !6377
  br label %do.cond28, !dbg !6378

do.cond28:                                        ; preds = %do.body26
  br label %do.end29, !dbg !6378

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr31) #23, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %__ptr31, metadata !4498, metadata !DIExpression()), !dbg !6379
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr31, align 8, !dbg !6379
  %20 = load i64, ptr %__ptr31, align 8, !dbg !6379
  %21 = load i32, ptr %cpu, align 4, !dbg !6379
  %idxprom33 = sext i32 %21 to i64, !dbg !6379
  %arrayidx34 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom33, !dbg !6379
  %22 = load i64, ptr %arrayidx34, align 8, !dbg !6379
  %add35 = add i64 %20, %22, !dbg !6379
  %23 = inttoptr i64 %add35 to ptr, !dbg !6379
  store ptr %23, ptr %tmp32, align 8, !dbg !6379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr31) #23, !dbg !6377
  %24 = load ptr, ptr %tmp32, align 8, !dbg !6379
  store ptr %24, ptr %tmp30, align 8, !dbg !6378
  %25 = load ptr, ptr %tmp30, align 8, !dbg !6377
  %26 = load i32, ptr %j, align 4, !dbg !6380
  %idxprom36 = sext i32 %26 to i64, !dbg !6381
  %arrayidx37 = getelementptr [2 x ptr], ptr %25, i64 0, i64 %idxprom36, !dbg !6381
  %27 = load ptr, ptr %arrayidx37, align 8, !dbg !6381
  store ptr %27, ptr %hits, align 8, !dbg !6376
  store i32 0, ptr %i, align 4, !dbg !6382
  br label %for.cond38, !dbg !6384

for.cond38:                                       ; preds = %for.inc, %do.end29
  %28 = load i32, ptr %i, align 4, !dbg !6385
  %conv39 = sext i32 %28 to i64, !dbg !6385
  %cmp40 = icmp ult i64 %conv39, 512, !dbg !6387
  br i1 %cmp40, label %for.body42, label %for.end, !dbg !6388

for.body42:                                       ; preds = %for.cond38
  %29 = load ptr, ptr %hits, align 8, !dbg !6389
  %30 = load i32, ptr %i, align 4, !dbg !6392
  %idxprom43 = sext i32 %30 to i64, !dbg !6389
  %arrayidx44 = getelementptr %struct.profile_hit, ptr %29, i64 %idxprom43, !dbg !6389
  %hits45 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx44, i32 0, i32 1, !dbg !6393
  %31 = load i32, ptr %hits45, align 4, !dbg !6393
  %tobool46 = icmp ne i32 %31, 0, !dbg !6389
  br i1 %tobool46, label %if.end56, label %if.then47, !dbg !6394

if.then47:                                        ; preds = %for.body42
  %32 = load ptr, ptr %hits, align 8, !dbg !6395
  %33 = load i32, ptr %i, align 4, !dbg !6398
  %idxprom48 = sext i32 %33 to i64, !dbg !6395
  %arrayidx49 = getelementptr %struct.profile_hit, ptr %32, i64 %idxprom48, !dbg !6395
  %pc = getelementptr inbounds %struct.profile_hit, ptr %arrayidx49, i32 0, i32 0, !dbg !6399
  %34 = load i32, ptr %pc, align 4, !dbg !6399
  %tobool50 = icmp ne i32 %34, 0, !dbg !6395
  br i1 %tobool50, label %if.then51, label %if.end55, !dbg !6400

if.then51:                                        ; preds = %if.then47
  %35 = load ptr, ptr %hits, align 8, !dbg !6401
  %36 = load i32, ptr %i, align 4, !dbg !6402
  %idxprom52 = sext i32 %36 to i64, !dbg !6401
  %arrayidx53 = getelementptr %struct.profile_hit, ptr %35, i64 %idxprom52, !dbg !6401
  %pc54 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx53, i32 0, i32 0, !dbg !6403
  store i32 0, ptr %pc54, align 4, !dbg !6404
  br label %if.end55, !dbg !6401

if.end55:                                         ; preds = %if.then51, %if.then47
  br label %for.inc, !dbg !6405

if.end56:                                         ; preds = %for.body42
  %37 = load ptr, ptr %hits, align 8, !dbg !6406
  %38 = load i32, ptr %i, align 4, !dbg !6407
  %idxprom57 = sext i32 %38 to i64, !dbg !6406
  %arrayidx58 = getelementptr %struct.profile_hit, ptr %37, i64 %idxprom57, !dbg !6406
  %hits59 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx58, i32 0, i32 1, !dbg !6408
  %39 = load i32, ptr %hits59, align 4, !dbg !6408
  %40 = load ptr, ptr @prof_buffer, align 8, !dbg !6409
  %41 = load ptr, ptr %hits, align 8, !dbg !6410
  %42 = load i32, ptr %i, align 4, !dbg !6411
  %idxprom60 = sext i32 %42 to i64, !dbg !6410
  %arrayidx61 = getelementptr %struct.profile_hit, ptr %41, i64 %idxprom60, !dbg !6410
  %pc62 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx61, i32 0, i32 0, !dbg !6412
  %43 = load i32, ptr %pc62, align 4, !dbg !6412
  %idxprom63 = zext i32 %43 to i64, !dbg !6409
  %arrayidx64 = getelementptr %struct.atomic_t, ptr %40, i64 %idxprom63, !dbg !6409
  call void @atomic_add(i32 noundef %39, ptr noundef %arrayidx64) #24, !dbg !6413
  %44 = load ptr, ptr %hits, align 8, !dbg !6414
  %45 = load i32, ptr %i, align 4, !dbg !6415
  %idxprom65 = sext i32 %45 to i64, !dbg !6414
  %arrayidx66 = getelementptr %struct.profile_hit, ptr %44, i64 %idxprom65, !dbg !6414
  %pc67 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx66, i32 0, i32 0, !dbg !6416
  store i32 0, ptr %pc67, align 4, !dbg !6417
  %46 = load ptr, ptr %hits, align 8, !dbg !6418
  %47 = load i32, ptr %i, align 4, !dbg !6419
  %idxprom68 = sext i32 %47 to i64, !dbg !6418
  %arrayidx69 = getelementptr %struct.profile_hit, ptr %46, i64 %idxprom68, !dbg !6418
  %hits70 = getelementptr inbounds %struct.profile_hit, ptr %arrayidx69, i32 0, i32 1, !dbg !6420
  store i32 0, ptr %hits70, align 4, !dbg !6421
  br label %for.inc, !dbg !6422

for.inc:                                          ; preds = %if.end56, %if.end55
  %48 = load i32, ptr %i, align 4, !dbg !6423
  %inc = add i32 %48, 1, !dbg !6423
  store i32 %inc, ptr %i, align 4, !dbg !6423
  br label %for.cond38, !dbg !6424, !llvm.loop !6425

for.end:                                          ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 8, ptr %hits) #23, !dbg !6427
  br label %for.inc71, !dbg !6428

for.inc71:                                        ; preds = %for.end
  %49 = load i32, ptr %cpu, align 4, !dbg !6374
  %inc72 = add i32 %49, 1, !dbg !6374
  store i32 %inc72, ptr %cpu, align 4, !dbg !6374
  br label %for.cond, !dbg !6374, !llvm.loop !6429

for.end73:                                        ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @profile_flip_mutex) #24, !dbg !6431
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #23, !dbg !6432
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #23, !dbg !6432
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !6432
  ret void, !dbg !6432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #6 align 16 !dbg !6433 {
entry:
  ret void, !dbg !6434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #6 align 16 !dbg !6435 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6440, metadata !DIExpression()), !dbg !6444
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6441, metadata !DIExpression()), !dbg !6445
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6442, metadata !DIExpression()), !dbg !6446
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6443, metadata !DIExpression()), !dbg !6447
  ret void, !dbg !6448
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !6449 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6454, metadata !DIExpression()), !dbg !6457
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6455, metadata !DIExpression()), !dbg !6458
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6456, metadata !DIExpression()), !dbg !6459
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6460
  %1 = load i64, ptr %n.addr, align 8, !dbg !6462
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #24, !dbg !6463
  br i1 %call, label %if.then, label %if.end, !dbg !6464

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6465
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6466
  %4 = load i64, ptr %n.addr, align 8, !dbg !6467
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #24, !dbg !6468
  store i64 %call1, ptr %n.addr, align 8, !dbg !6469
  br label %if.end, !dbg !6470

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6471
  ret i64 %5, !dbg !6472
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6473 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #6 align 16 !dbg !6477 {
entry:
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6483, metadata !DIExpression()), !dbg !6486
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6484, metadata !DIExpression()), !dbg !6487
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6485, metadata !DIExpression()), !dbg !6488
  %0 = load ptr, ptr %func.addr, align 8, !dbg !6489
  %1 = load ptr, ptr %info.addr, align 8, !dbg !6490
  %2 = load i32, ptr %wait.addr, align 4, !dbg !6491
  %tobool = icmp ne i32 %2, 0, !dbg !6491
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef @__cpu_online_mask) #24, !dbg !6492
  ret void, !dbg !6493
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__profile_flip_buffers(ptr noundef %unused) #0 align 16 !dbg !6494 {
entry:
  %unused.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__ptr15 = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !6496, metadata !DIExpression()), !dbg !6515
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #23, !dbg !6516
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6497, metadata !DIExpression()), !dbg !6517
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #24, !dbg !6518
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6498, metadata !DIExpression()), !dbg !6519
  br label %do.body, !dbg !6519

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6501, metadata !DIExpression()), !dbg !6520
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6520
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6520
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6519
  br label %do.cond, !dbg !6520

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6520

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #23, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6503, metadata !DIExpression()), !dbg !6521
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #27, !dbg !6521, !srcloc !6522
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6521
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6521
  %conv = zext i32 %2 to i64, !dbg !6521
  %conv2 = trunc i64 %conv to i32, !dbg !6521
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #23, !dbg !6519
  %3 = load i32, ptr %tmp1, align 4, !dbg !6521
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6519
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6519
  store i32 %4, ptr %tmp3, align 4, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6518
  %5 = load i32, ptr %tmp3, align 4, !dbg !6519
  store i32 %5, ptr %tmp, align 4, !dbg !6518
  %6 = load i32, ptr %tmp, align 4, !dbg !6518
  store i32 %6, ptr %cpu, align 4, !dbg !6517
  br label %do.body4, !dbg !6523

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #23, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !6505, metadata !DIExpression()), !dbg !6524
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !6524
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !6524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #23, !dbg !6523
  br label %do.cond6, !dbg !6524

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !6524

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6508, metadata !DIExpression()), !dbg !6525
  store i64 ptrtoint (ptr @cpu_profile_flip to i64), ptr %__ptr, align 8, !dbg !6525
  %8 = load i64, ptr %__ptr, align 8, !dbg !6525
  %9 = load i32, ptr %cpu, align 4, !dbg !6525
  %idxprom = sext i32 %9 to i64, !dbg !6525
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6525
  %10 = load i64, ptr %arrayidx, align 8, !dbg !6525
  %add = add i64 %8, %10, !dbg !6525
  %11 = inttoptr i64 %add to ptr, !dbg !6525
  store ptr %11, ptr %tmp9, align 8, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !6523
  %12 = load ptr, ptr %tmp9, align 8, !dbg !6525
  store ptr %12, ptr %tmp8, align 8, !dbg !6524
  %13 = load ptr, ptr %tmp8, align 8, !dbg !6523
  %14 = load i32, ptr %13, align 4, !dbg !6526
  %tobool = icmp ne i32 %14, 0, !dbg !6527
  %lnot = xor i1 %tobool, true, !dbg !6527
  %lnot.ext = zext i1 %lnot to i32, !dbg !6527
  br label %do.body10, !dbg !6528

do.body10:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify11) #23, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify11, metadata !6510, metadata !DIExpression()), !dbg !6529
  store ptr null, ptr %__vpp_verify11, align 8, !dbg !6529
  %15 = load ptr, ptr %__vpp_verify11, align 8, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify11) #23, !dbg !6528
  br label %do.cond12, !dbg !6529

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !6529

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr15) #23, !dbg !6530
  call void @llvm.dbg.declare(metadata ptr %__ptr15, metadata !6513, metadata !DIExpression()), !dbg !6530
  store i64 ptrtoint (ptr @cpu_profile_flip to i64), ptr %__ptr15, align 8, !dbg !6530
  %16 = load i64, ptr %__ptr15, align 8, !dbg !6530
  %17 = load i32, ptr %cpu, align 4, !dbg !6530
  %idxprom17 = sext i32 %17 to i64, !dbg !6530
  %arrayidx18 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom17, !dbg !6530
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !6530
  %add19 = add i64 %16, %18, !dbg !6530
  %19 = inttoptr i64 %add19 to ptr, !dbg !6530
  store ptr %19, ptr %tmp16, align 8, !dbg !6530
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr15) #23, !dbg !6528
  %20 = load ptr, ptr %tmp16, align 8, !dbg !6530
  store ptr %20, ptr %tmp14, align 8, !dbg !6529
  %21 = load ptr, ptr %tmp14, align 8, !dbg !6528
  store i32 %lnot.ext, ptr %21, align 4, !dbg !6531
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #23, !dbg !6532
  ret void, !dbg !6532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !6533 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6538, metadata !DIExpression()), !dbg !6544
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6539, metadata !DIExpression()), !dbg !6545
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6540, metadata !DIExpression()), !dbg !6546
  %0 = load i64, ptr %size.addr, align 8, !dbg !6547
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6547
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6547

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6547
  %cmp = icmp ule i64 %2, 64, !dbg !6547
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6547

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6547
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6547
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6548

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #23, !dbg !6549
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6541, metadata !DIExpression()), !dbg !6550
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6551
  %5 = load i64, ptr %size.addr, align 8, !dbg !6551
  %cmp3 = icmp uge i64 %4, %5, !dbg !6551
  %lnot = xor i1 %cmp3, true, !dbg !6551
  %lnot4 = xor i1 %lnot, true, !dbg !6551
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6551
  %conv = sext i32 %lnot.ext to i64, !dbg !6551
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6551
  %tobool = icmp ne i64 %expval, 0, !dbg !6551
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6553

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6554
  store i64 %6, ptr %retval, align 8, !dbg !6555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6555

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6556
  %8 = load i64, ptr %7, align 8, !dbg !6557
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6558
  %shl = shl i64 1, %9, !dbg !6558
  %sub = sub i64 -1, %shl, !dbg !6558
  %add = add i64 %sub, 1, !dbg !6558
  %10 = load i64, ptr %size.addr, align 8, !dbg !6558
  %sub6 = sub i64 %10, 1, !dbg !6558
  %sub7 = sub i64 63, %sub6, !dbg !6558
  %shr = lshr i64 -1, %sub7, !dbg !6558
  %and = and i64 %add, %shr, !dbg !6558
  %add8 = add i64 0, %and, !dbg !6558
  %and9 = and i64 %8, %add8, !dbg !6559
  store i64 %and9, ptr %val, align 8, !dbg !6560
  %11 = load i64, ptr %val, align 8, !dbg !6561
  %tobool10 = icmp ne i64 %11, 0, !dbg !6561
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6561

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6562
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6562
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6562

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6562
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6562
  %cast = trunc i64 %15 to i32, !dbg !6562
  %conv12 = sext i32 %cast to i64, !dbg !6562
  br label %cond.end, !dbg !6562

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6562
  %call = call i64 @variable__ffs(i64 noundef %16) #24, !dbg !6562
  br label %cond.end, !dbg !6562

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6562
  br label %cond.end14, !dbg !6561

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6563
  br label %cond.end14, !dbg !6561

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6561
  store i64 %cond15, ptr %retval, align 8, !dbg !6564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6564

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #23, !dbg !6565
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6566
  %19 = load i64, ptr %size.addr, align 8, !dbg !6567
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6568
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #24, !dbg !6569
  store i64 %call17, ptr %retval, align 8, !dbg !6570
  br label %return, !dbg !6570

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6571
  ret i64 %21, !dbg !6571
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6572 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6573 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #9 align 16 !dbg !6580 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6582, metadata !DIExpression()), !dbg !6583
  %0 = load i64, ptr %word.addr, align 8, !dbg !6584
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #27, !dbg !6585, !srcloc !6586
  store i64 %1, ptr %word.addr, align 8, !dbg !6585
  %2 = load i64, ptr %word.addr, align 8, !dbg !6587
  ret i64 %2, !dbg !6588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6589 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #9 align 16 !dbg !6590 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6594, metadata !DIExpression()), !dbg !6604
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6595, metadata !DIExpression()), !dbg !6605
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6596, metadata !DIExpression()), !dbg !6606
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #23, !dbg !6607
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6597, metadata !DIExpression()), !dbg !6608
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6609
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6610
  %conv = trunc i64 %1 to i32, !dbg !6610
  store i32 %conv, ptr %sz, align 4, !dbg !6608
  %2 = load i32, ptr %sz, align 4, !dbg !6611
  %cmp = icmp sge i32 %2, 0, !dbg !6611
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6611

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6611
  %conv2 = sext i32 %3 to i64, !dbg !6611
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6611
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6611
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6613
  %lnot = xor i1 %5, true, !dbg !6611
  %lnot5 = xor i1 %lnot, true, !dbg !6611
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6611
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6611
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6611
  %tobool = icmp ne i64 %expval, 0, !dbg !6611
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6614

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6615
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6618
  br i1 %7, label %if.else, label %if.then7, !dbg !6619

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6620
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6621
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #24, !dbg !6622
  br label %if.end11, !dbg !6622

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6623, !range !5491, !noundef !1255
  %tobool8 = trunc i8 %10 to i1, !dbg !6623
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6625

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #24, !dbg !6626, !srcloc !6627
  br label %if.end, !dbg !6626

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #24, !dbg !6628, !srcloc !6629
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6630

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #23, !dbg !6631
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6598, metadata !DIExpression()), !dbg !6631
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6631
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6631
  %lnot15 = xor i1 %cmp13, true, !dbg !6631
  %lnot17 = xor i1 %lnot15, true, !dbg !6631
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6631
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6631
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6632
  %tobool19 = icmp ne i32 %12, 0, !dbg !6632
  %lnot20 = xor i1 %tobool19, true, !dbg !6632
  %lnot22 = xor i1 %lnot20, true, !dbg !6632
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6632
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6632
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6632
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6632
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6631

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6632

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #23, !dbg !6633
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6601, metadata !DIExpression()), !dbg !6633
  store i32 2307, ptr %__flags, align 4, !dbg !6633
  br label %do.body28, !dbg !6633

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6634

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6634

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6633

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6636
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 249, i32 %13, i64 12) #23, !dbg !6636, !srcloc !6638
  br label %do.cond30, !dbg !6636

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6636

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6633

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6639

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6639

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #23, !dbg !6632
  br label %do.cond35, !dbg !6633

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6633

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6633

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6631
  %tobool38 = icmp ne i32 %14, 0, !dbg !6631
  %lnot39 = xor i1 %tobool38, true, !dbg !6631
  %lnot41 = xor i1 %lnot39, true, !dbg !6631
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6631
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6631
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6631
  store i64 %expval44, ptr %tmp, align 8, !dbg !6632
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #23, !dbg !6641
  %15 = load i64, ptr %tmp, align 8, !dbg !6631
  %tobool45 = icmp ne i64 %15, 0, !dbg !6641
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6642

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6643

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6644
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6645
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6646, !range !5491, !noundef !1255
  %tobool48 = trunc i8 %18 to i1, !dbg !6646
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #24, !dbg !6647
  store i1 true, ptr %retval, align 1, !dbg !6648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6648

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #23, !dbg !6649
  %19 = load i1, ptr %retval, align 1, !dbg !6649
  ret i1 %19, !dbg !6649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6650 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #6 align 16 !dbg !6651 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6655, metadata !DIExpression()), !dbg !6657
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6656, metadata !DIExpression()), !dbg !6658
  %0 = load i32, ptr %size.addr, align 4, !dbg !6659
  %1 = load i64, ptr %count.addr, align 8, !dbg !6661
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #24, !dbg !6662
  ret void, !dbg !6663
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6664 dso_local void @__bad_copy_from() #21

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6665 dso_local void @__bad_copy_to() #22

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #6 align 16 !dbg !6666 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6670, metadata !DIExpression()), !dbg !6673
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6671, metadata !DIExpression()), !dbg !6674
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6672, metadata !DIExpression()), !dbg !6675
  ret void, !dbg !6676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6677 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !6678 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6680, metadata !DIExpression()), !dbg !6683
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6681, metadata !DIExpression()), !dbg !6684
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6682, metadata !DIExpression()), !dbg !6685
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6686
  %1 = load i64, ptr %n.addr, align 8, !dbg !6688
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #24, !dbg !6689
  br i1 %call, label %if.then, label %if.end, !dbg !6690

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6691
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6692
  %4 = load i64, ptr %n.addr, align 8, !dbg !6693
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #24, !dbg !6694
  store i64 %call1, ptr %n.addr, align 8, !dbg !6695
  br label %if.end, !dbg !6696

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6697
  ret i64 %5, !dbg !6698
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @profile_discard_flip_buffers() #0 align 16 !dbg !4510 {
entry:
  %i = alloca i32, align 4
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify8 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %hits = alloca ptr, align 8
  %__vpp_verify27 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %__ptr31 = alloca i64, align 8
  %tmp32 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !6699
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4512, metadata !DIExpression()), !dbg !6700
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #23, !dbg !6699
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4513, metadata !DIExpression()), !dbg !6701
  call void @mutex_lock(ptr noundef @profile_flip_mutex) #24, !dbg !6702
  br label %do.body, !dbg !6703

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6704
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4514, metadata !DIExpression()), !dbg !6704
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6704
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6704
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6703
  br label %do.cond, !dbg !6704

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6704

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4517, metadata !DIExpression()), !dbg !6705
  store i64 ptrtoint (ptr @cpu_profile_flip to i64), ptr %__ptr, align 8, !dbg !6705
  %1 = load i64, ptr %__ptr, align 8, !dbg !6705
  br label %do.body2, !dbg !6706

do.body2:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #24, !dbg !6707
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !6707, !srcloc !6709
  br label %do.cond3, !dbg !6707

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6707

do.end4:                                          ; preds = %do.cond3
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #24, !dbg !6710
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6711
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4519, metadata !DIExpression()), !dbg !6711
  br label %do.body7, !dbg !6711

do.body7:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify8) #23, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify8, metadata !4523, metadata !DIExpression()), !dbg !6712
  store ptr null, ptr %__vpp_verify8, align 8, !dbg !6712
  %2 = load ptr, ptr %__vpp_verify8, align 8, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify8) #23, !dbg !6711
  br label %do.cond9, !dbg !6712

do.cond9:                                         ; preds = %do.body7
  br label %do.end10, !dbg !6712

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #23, !dbg !6713
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4525, metadata !DIExpression()), !dbg !6713
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #27, !dbg !6713, !srcloc !6714
  store i32 %3, ptr %pfo_val__, align 4, !dbg !6713
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !6713
  %conv = zext i32 %4 to i64, !dbg !6713
  %conv12 = trunc i64 %conv to i32, !dbg !6713
  store i32 %conv12, ptr %tmp11, align 4, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #23, !dbg !6711
  %5 = load i32, ptr %tmp11, align 4, !dbg !6713
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !6711
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !6711
  store i32 %6, ptr %tmp13, align 4, !dbg !6711
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6710
  %7 = load i32, ptr %tmp13, align 4, !dbg !6711
  store i32 %7, ptr %tmp6, align 4, !dbg !6710
  %8 = load i32, ptr %tmp6, align 4, !dbg !6710
  store i32 %8, ptr %tmp5, align 4, !dbg !6707
  %9 = load i32, ptr %tmp5, align 4, !dbg !6706
  %idxprom = sext i32 %9 to i64, !dbg !6705
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6705
  %10 = load i64, ptr %arrayidx, align 8, !dbg !6705
  %add = add i64 %1, %10, !dbg !6705
  %11 = inttoptr i64 %add to ptr, !dbg !6705
  store ptr %11, ptr %tmp1, align 8, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !6703
  %12 = load ptr, ptr %tmp1, align 8, !dbg !6705
  store ptr %12, ptr %tmp, align 8, !dbg !6704
  %13 = load ptr, ptr %tmp, align 8, !dbg !6703
  %14 = load i32, ptr %13, align 4, !dbg !6715
  store i32 %14, ptr %i, align 4, !dbg !6716
  br label %do.body14, !dbg !6717

do.body14:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !6718, !srcloc !6720
  %call = call zeroext i1 @__preempt_count_dec_and_test() #24, !dbg !6721
  %lnot = xor i1 %call, true, !dbg !6721
  %lnot15 = xor i1 %lnot, true, !dbg !6721
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !6721
  %conv16 = sext i32 %lnot.ext to i64, !dbg !6721
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6721
  %tobool = icmp ne i64 %expval, 0, !dbg !6721
  br i1 %tobool, label %if.then, label %if.end, !dbg !6718

if.then:                                          ; preds = %do.body14
  br label %do.body17, !dbg !6721

do.body17:                                        ; preds = %if.then
  %15 = call i64 @llvm.read_register.i64(metadata !4536), !dbg !6723
  %16 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %15) #23, !dbg !6723, !srcloc !6725
  call void @llvm.write_register.i64(metadata !4536, i64 %16), !dbg !6723
  br label %do.cond18, !dbg !6723

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6723

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6723

if.end:                                           ; preds = %do.end19, %do.body14
  br label %do.cond20, !dbg !6718

do.cond20:                                        ; preds = %if.end
  br label %do.end21, !dbg !6718

do.end21:                                         ; preds = %do.cond20
  call void @on_each_cpu(ptr noundef @__profile_flip_buffers, ptr noundef null, i32 noundef 1) #24, !dbg !6726
  store i32 0, ptr %cpu, align 4, !dbg !6727
  br label %for.cond, !dbg !6727

for.cond:                                         ; preds = %for.inc, %do.end21
  %17 = load i32, ptr %cpu, align 4, !dbg !6728
  %conv22 = sext i32 %17 to i64, !dbg !6728
  %call23 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv22) #24, !dbg !6728
  %conv24 = trunc i64 %call23 to i32, !dbg !6728
  store i32 %conv24, ptr %cpu, align 4, !dbg !6728
  %18 = load i32, ptr %cpu, align 4, !dbg !6728
  %cmp = icmp ult i32 %18, 64, !dbg !6728
  br i1 %cmp, label %for.body, label %for.end, !dbg !6727

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hits) #23, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %hits, metadata !4527, metadata !DIExpression()), !dbg !6730
  br label %do.body26, !dbg !6731

do.body26:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify27) #23, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify27, metadata !4531, metadata !DIExpression()), !dbg !6732
  store ptr null, ptr %__vpp_verify27, align 8, !dbg !6732
  %19 = load ptr, ptr %__vpp_verify27, align 8, !dbg !6732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify27) #23, !dbg !6731
  br label %do.cond28, !dbg !6732

do.cond28:                                        ; preds = %do.body26
  br label %do.end29, !dbg !6732

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr31) #23, !dbg !6733
  call void @llvm.dbg.declare(metadata ptr %__ptr31, metadata !4534, metadata !DIExpression()), !dbg !6733
  store i64 ptrtoint (ptr @cpu_profile_hits to i64), ptr %__ptr31, align 8, !dbg !6733
  %20 = load i64, ptr %__ptr31, align 8, !dbg !6733
  %21 = load i32, ptr %cpu, align 4, !dbg !6733
  %idxprom33 = sext i32 %21 to i64, !dbg !6733
  %arrayidx34 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom33, !dbg !6733
  %22 = load i64, ptr %arrayidx34, align 8, !dbg !6733
  %add35 = add i64 %20, %22, !dbg !6733
  %23 = inttoptr i64 %add35 to ptr, !dbg !6733
  store ptr %23, ptr %tmp32, align 8, !dbg !6733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr31) #23, !dbg !6731
  %24 = load ptr, ptr %tmp32, align 8, !dbg !6733
  store ptr %24, ptr %tmp30, align 8, !dbg !6732
  %25 = load ptr, ptr %tmp30, align 8, !dbg !6731
  %26 = load i32, ptr %i, align 4, !dbg !6734
  %idxprom36 = sext i32 %26 to i64, !dbg !6735
  %arrayidx37 = getelementptr [2 x ptr], ptr %25, i64 0, i64 %idxprom36, !dbg !6735
  %27 = load ptr, ptr %arrayidx37, align 8, !dbg !6735
  store ptr %27, ptr %hits, align 8, !dbg !6730
  %28 = load ptr, ptr %hits, align 8, !dbg !6736
  call void @llvm.memset.p0.i64(ptr align 4 %28, i8 0, i64 4096, i1 false), !dbg !6737
  call void @llvm.lifetime.end.p0(i64 8, ptr %hits) #23, !dbg !6738
  br label %for.inc, !dbg !6739

for.inc:                                          ; preds = %do.end29
  %29 = load i32, ptr %cpu, align 4, !dbg !6728
  %inc = add i32 %29, 1, !dbg !6728
  store i32 %inc, ptr %cpu, align 4, !dbg !6728
  br label %for.cond, !dbg !6728, !llvm.loop !6740

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @profile_flip_mutex) #24, !dbg !6742
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #23, !dbg !6743
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !6743
  ret void, !dbg !6743
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6744 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6745 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #22 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { noredzone }
attributes #25 = { cold noredzone }
attributes #26 = { noredzone allocsize(0) }
attributes #27 = { nounwind memory(read) }
attributes #28 = { noredzone allocsize(2) }
attributes #29 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4536}
!llvm.module.flags = !{!4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544}
!llvm.ident = !{!4545}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "prof_on", scope: !2, file: !3, line: 47, type: !89, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.profile.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/profile\22 -D KBUILD_BASENAME=\22profile\22 -D KBUILD_MODNAME=\22profile\22 -D __KBUILD_MODNAME=kmod_profile -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/profile.ll kernel/profile.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !308, globals: !4294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/profile.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb62f01b3d0d05a4365ce5ecc86fabad")
!4 = !{!5, !13, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87, !282, !287, !297}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !14, line: 68, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!17 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!18 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!19 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!20 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !22, line: 9, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!25 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!26 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!27 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!28 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !88, line: 57, baseType: !89, size: 32, elements: !90)
!88 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!91 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!92 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!93 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!94 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!95 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!96 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!97 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!98 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!99 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!100 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!101 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!102 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!103 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!104 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!105 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!106 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!107 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!108 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!109 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!110 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!111 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!112 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!113 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!114 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!115 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!116 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!117 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!118 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!119 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!120 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!121 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!122 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!123 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!124 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!125 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!126 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!127 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!128 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!129 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!130 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!131 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!132 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!133 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!134 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!135 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!136 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!137 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!138 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!139 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!140 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!141 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!142 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!143 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!144 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!145 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!146 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!147 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!148 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!149 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!150 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!151 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!152 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!153 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!154 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!155 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!156 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!157 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!158 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!159 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!160 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!161 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!162 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!163 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!164 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!165 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!166 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!167 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!168 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!169 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!170 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!171 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!172 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!173 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!174 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!175 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!176 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!177 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!178 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!179 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!180 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!181 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!182 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!183 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!190 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!191 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!192 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!195 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!196 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!197 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!198 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!199 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!200 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!201 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!202 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!203 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!204 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!205 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!206 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!207 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!208 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!209 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!210 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!211 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!212 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!213 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!214 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!215 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!216 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!217 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!218 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!219 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!220 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!221 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!222 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!223 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!224 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!225 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!226 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!227 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!228 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!229 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!230 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!231 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!232 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!233 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!234 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!235 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!236 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!237 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!238 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!239 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!240 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!241 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!242 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!243 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!244 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!245 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!246 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!247 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!248 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!249 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!250 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!251 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!252 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!253 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!254 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!255 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!256 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!257 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!258 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!259 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!260 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!261 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!262 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!263 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!264 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!265 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!266 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!267 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!268 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!269 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!270 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!271 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!272 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!273 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!274 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!275 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!276 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!277 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!278 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!279 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!280 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!281 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !283, line: 10, baseType: !7, size: 32, elements: !284)
!283 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!284 = !{!285, !286}
!285 = !DIEnumerator(name: "false", value: 0)
!286 = !DIEnumerator(name: "true", value: 1)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !288, line: 364, baseType: !7, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!289 = !{!290, !291, !292, !293, !294, !295, !296}
!290 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!291 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!292 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!293 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!294 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!295 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!296 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !298, line: 398, baseType: !7, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307}
!300 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!301 = !DIEnumerator(name: "N_ONLINE", value: 1)
!302 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!303 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!304 = !DIEnumerator(name: "N_MEMORY", value: 3)
!305 = !DIEnumerator(name: "N_CPU", value: 4)
!306 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!307 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!308 = !{!309, !310, !312, !322, !89, !319, !7, !323, !329, !336, !337, !395, !396, !397, !399, !400, !4290, !4292, !609}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !311, line: 154, baseType: !7)
!311 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !315, line: 19, size: 64, elements: !316)
!315 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !314, file: !315, line: 19, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !320)
!319 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!320 = !{!321}
!321 = !DISubrange(count: 1)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !334)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "profile_hit", file: !3, line: 35, size: 64, elements: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !326, file: !3, line: 36, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !330, line: 21, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !332, line: 27, baseType: !7)
!332 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "hits", scope: !326, file: !3, line: 36, baseType: !329, size: 32, offset: 32)
!334 = !{!335}
!335 = !DISubrange(count: 2)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !339, line: 103, size: 1344, elements: !340)
!339 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !375, !376, !377}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !338, file: !339, line: 109, baseType: !319, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !338, file: !339, line: 110, baseType: !319, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !338, file: !339, line: 111, baseType: !319, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !338, file: !339, line: 112, baseType: !319, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !338, file: !339, line: 113, baseType: !319, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !338, file: !339, line: 114, baseType: !319, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !338, file: !339, line: 117, baseType: !319, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !338, file: !339, line: 118, baseType: !319, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !338, file: !339, line: 119, baseType: !319, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !338, file: !339, line: 120, baseType: !319, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !338, file: !339, line: 121, baseType: !319, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !338, file: !339, line: 122, baseType: !319, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !338, file: !339, line: 123, baseType: !319, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !338, file: !339, line: 124, baseType: !319, size: 64, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !338, file: !339, line: 125, baseType: !319, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !338, file: !339, line: 139, baseType: !319, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !338, file: !339, line: 142, baseType: !319, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !339, line: 144, baseType: !359, size: 64, offset: 1088)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !339, line: 144, size: 64, elements: !360)
!360 = !{!361, !365, !369}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !359, file: !339, line: 146, baseType: !362, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !330, line: 19, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !332, line: 24, baseType: !364)
!364 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !359, file: !339, line: 148, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !330, line: 23, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !332, line: 31, baseType: !368)
!368 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !359, file: !339, line: 150, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !339, line: 59, size: 64, elements: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !370, file: !339, line: 61, baseType: !366, size: 16, flags: DIFlagBitField, extraData: i64 0)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !370, file: !339, line: 63, baseType: !366, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !370, file: !339, line: 65, baseType: !366, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !339, line: 153, baseType: !319, size: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !338, file: !339, line: 154, baseType: !319, size: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !339, line: 156, baseType: !378, size: 64, offset: 1280)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !339, line: 156, size: 64, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !378, file: !339, line: 158, baseType: !362, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !378, file: !339, line: 160, baseType: !366, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !378, file: !339, line: 162, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !339, line: 69, size: 64, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !383, file: !339, line: 71, baseType: !366, size: 16, flags: DIFlagBitField, extraData: i64 0)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !383, file: !339, line: 73, baseType: !366, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !383, file: !339, line: 75, baseType: !366, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !383, file: !339, line: 77, baseType: !366, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !383, file: !339, line: 80, baseType: !366, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !383, file: !339, line: 83, baseType: !366, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !383, file: !339, line: 86, baseType: !366, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !383, file: !339, line: 88, baseType: !366, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !383, file: !339, line: 93, baseType: !366, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !383, file: !339, line: 100, baseType: !366, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !311, line: 42, baseType: !319)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !311, line: 159, baseType: !366)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !402)
!402 = !{!403, !404, !4284, !4289}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !30, line: 75, baseType: !319, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !30, line: 83, baseType: !405, size: 320, offset: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !30, line: 83, size: 320, elements: !406)
!406 = !{!407, !4191, !4205, !4209, !4283}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !30, line: 84, baseType: !408, size: 320)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !30, line: 84, size: 320, elements: !409)
!409 = !{!410, !426, !4185, !4190}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !30, line: 90, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !30, line: 90, size: 128, elements: !412)
!412 = !{!413, !419, !424, !425}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !411, file: !30, line: 91, baseType: !414, size: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !311, line: 190, size: 128, elements: !415)
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !311, line: 191, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !414, file: !311, line: 191, baseType: !417, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !30, line: 94, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !30, line: 94, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !420, file: !30, line: 96, baseType: !309, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !420, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !411, file: !30, line: 102, baseType: !414, size: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !411, file: !30, line: 103, baseType: !414, size: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !408, file: !30, line: 106, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !429)
!429 = !{!430, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4179, !4180, !4181, !4182, !4183, !4184}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !428, file: !59, line: 473, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !433)
!433 = !{!434, !436, !437, !446, !447, !454, !455, !458, !459, !3958, !3959, !3960, !3961, !3962, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4002, !4005, !4006, !4007, !4016, !4017, !4018, !4019}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !432, file: !59, line: 642, baseType: !435, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !311, line: 24, baseType: !364)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !432, file: !59, line: 643, baseType: !364, size: 16, offset: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !432, file: !59, line: 644, baseType: !438, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !439, line: 23, baseType: !440)
!439 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 21, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !440, file: !439, line: 22, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !311, line: 37, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !445, line: 49, baseType: !7)
!445 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !432, file: !59, line: 645, baseType: !414, size: 128, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !432, file: !59, line: 646, baseType: !448, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !439, line: 28, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 26, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !439, line: 27, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !311, line: 38, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !445, line: 50, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !432, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !432, file: !59, line: 650, baseType: !456, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !432, file: !59, line: 651, baseType: !456, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !432, file: !59, line: 654, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !463)
!463 = !{!464, !3786, !3796, !3800, !3804, !3808, !3812, !3816, !3820, !3824, !3828, !3829, !3833, !3837, !3874, !3903, !3907, !3913, !3917, !3921, !3925, !3929, !3933, !3939, !3943}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !462, file: !59, line: 1967, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !431, !468, !7}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !470, line: 82, size: 1536, elements: !471)
!470 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!471 = !{!472, !473, !483, !491, !492, !508, !509, !513, !562, !3769, !3770, !3771, !3772, !3778, !3779, !3780}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !469, file: !470, line: 84, baseType: !7, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !469, file: !470, line: 85, baseType: !474, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !475, line: 275, baseType: !476)
!475 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !475, line: 275, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !476, file: !475, line: 275, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !475, line: 69, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !475, line: 64, size: 32, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !480, file: !475, line: 65, baseType: !7, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !469, file: !470, line: 86, baseType: !484, size: 128, offset: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !485, line: 38, size: 128, elements: !486)
!485 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!486 = !{!487, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !485, line: 39, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !484, file: !485, line: 39, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !469, file: !470, line: 87, baseType: !468, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !469, file: !470, line: 88, baseType: !493, size: 128, offset: 256)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !470, line: 49, size: 128, elements: !494)
!494 = !{!495, !504}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !470, line: 50, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !493, file: !470, line: 50, size: 64, elements: !497)
!497 = !{!498, !503}
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !470, line: 51, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !496, file: !470, line: 51, size: 64, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !499, file: !470, line: 52, baseType: !329, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !499, file: !470, line: 52, baseType: !329, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !496, file: !470, line: 54, baseType: !366, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !470, line: 56, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !469, file: !470, line: 89, baseType: !431, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !469, file: !470, line: 91, baseType: !510, size: 256, offset: 448)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 256, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !469, file: !470, line: 94, baseType: !514, size: 64, offset: 704)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !515, line: 25, size: 64, elements: !516)
!515 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !515, line: 26, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !515, line: 26, size: 64, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !518, file: !515, line: 28, baseType: !367, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !515, line: 30, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !518, file: !515, line: 30, size: 64, elements: !523)
!523 = !{!524, !561}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !515, line: 31, baseType: !525, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !526, line: 29, baseType: !527)
!526 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !526, line: 17, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !526, line: 18, baseType: !530, size: 32)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !526, line: 18, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !530, file: !526, line: 19, baseType: !533, size: 32)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !534, line: 14, size: 32, elements: !535)
!534 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !533, file: !534, line: 15, baseType: !537, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !538, line: 44, baseType: !539)
!538 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !538, line: 14, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !538, line: 15, baseType: !542, size: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !538, line: 15, size: 32, elements: !543)
!543 = !{!544, !549, !556}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !542, file: !538, line: 16, baseType: !545, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !311, line: 174, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 172, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !546, file: !311, line: 173, baseType: !89, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 24, baseType: !550, size: 16)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 24, size: 16, elements: !551)
!551 = !{!552, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !550, file: !538, line: 25, baseType: !553, size: 8)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !330, line: 17, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !332, line: 21, baseType: !507)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !550, file: !538, line: 26, baseType: !553, size: 8, offset: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 28, baseType: !557, size: 32)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 28, size: 32, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !557, file: !538, line: 29, baseType: !362, size: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !557, file: !538, line: 30, baseType: !362, size: 16, offset: 16)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !515, line: 32, baseType: !89, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !469, file: !470, line: 95, baseType: !563, size: 64, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !470, line: 128, size: 1024, align: 512, elements: !566)
!566 = !{!567, !571, !572, !579, !588, !592, !596, !600, !601, !605, !610, !3759, !3763}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !565, file: !470, line: 129, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!89, !468, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !565, file: !470, line: 130, baseType: !568, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !565, file: !470, line: 131, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!89, !576, !578}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !565, file: !470, line: 132, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!89, !576, !7, !583, !586}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !565, file: !470, line: 134, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!89, !576}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !565, file: !470, line: 135, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!89, !468}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !565, file: !470, line: 136, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !468}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !565, file: !470, line: 137, baseType: !597, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !565, file: !470, line: 138, baseType: !602, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !468, !431}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !565, file: !470, line: 139, baseType: !606, size: 64, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!609, !468, !609, !89}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !565, file: !470, line: 140, baseType: !611, size: 64, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !3758}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !616, line: 70, size: 256, elements: !617)
!616 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!617 = !{!618, !619, !3754, !3755}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !615, file: !616, line: 71, baseType: !468, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !615, file: !616, line: 72, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !622)
!622 = !{!623, !624, !627, !628, !629, !633, !2197, !2331, !2371, !2456, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2473, !2477, !2478, !2481, !2484, !2487, !2490, !2491, !2492, !2533, !3687, !3688, !3689, !3690, !3691, !3692, !3695, !3697, !3704, !3705, !3706, !3707, !3708, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !621, file: !59, line: 1191, baseType: !414, size: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !621, file: !59, line: 1192, baseType: !625, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !311, line: 21, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !311, line: 18, baseType: !329)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !621, file: !59, line: 1193, baseType: !507, size: 8, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !621, file: !59, line: 1194, baseType: !319, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !621, file: !59, line: 1195, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !311, line: 52, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !445, line: 88, baseType: !632)
!632 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !621, file: !59, line: 1196, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !636)
!636 = !{!637, !638, !639, !645, !649, !653, !657, !2185, !2186, !2187, !2189, !2190, !2191, !2193, !2194, !2195, !2196}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !635, file: !59, line: 2367, baseType: !583, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !635, file: !59, line: 2368, baseType: !89, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !635, file: !59, line: 2376, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!89, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !616, line: 21, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !635, file: !59, line: 2377, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !635, file: !59, line: 2378, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!468, !634, !89, !583, !309}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !635, file: !59, line: 2380, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !620}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !635, file: !59, line: 2381, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !660)
!660 = !{!661, !662, !663, !667, !1845, !1871, !1872, !1873, !1874, !1878, !1881, !1882, !1883, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1951, !1955, !1973, !1990, !1991, !1992, !1993, !2002, !2025, !2026, !2029, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2043, !2044, !2144, !2152, !2153, !2154, !2156, !2160, !2161, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2178, !2179, !2180, !2184}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !659, file: !6, line: 403, baseType: !5, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !659, file: !6, line: 406, baseType: !414, size: 128, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !659, file: !6, line: 409, baseType: !664, size: 448, offset: 192)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 448, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 56)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !659, file: !6, line: 417, baseType: !668, size: 768, offset: 640)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !669)
!669 = !{!670, !1828, !1829, !1830, !1833}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !668, file: !6, line: 46, baseType: !671, size: 512)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !672, line: 64, size: 512, elements: !673)
!672 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!673 = !{!674, !675, !676, !678, !724, !1723, !1818, !1823, !1824, !1825, !1826, !1827}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !671, file: !672, line: 65, baseType: !583, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !671, file: !672, line: 66, baseType: !414, size: 128, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !671, file: !672, line: 67, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !671, file: !672, line: 68, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !672, line: 168, size: 768, elements: !681)
!681 = !{!682, !683, !684, !685}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !680, file: !672, line: 169, baseType: !414, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !680, file: !672, line: 170, baseType: !525, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !680, file: !672, line: 171, baseType: !671, size: 512, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !680, file: !672, line: 172, baseType: !686, size: 64, offset: 704)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !672, line: 133, size: 192, elements: !689)
!689 = !{!690, !697, !702}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !688, file: !672, line: 134, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!89, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !672, line: 135, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!583, !695}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !688, file: !672, line: 136, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!89, !695, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !672, line: 125, size: 20736, elements: !709)
!709 = !{!710, !714, !718, !719, !723}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !708, file: !672, line: 126, baseType: !711, size: 192)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 192, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 3)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !708, file: !672, line: 127, baseType: !715, size: 4096, offset: 192)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 4096, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !708, file: !672, line: 128, baseType: !89, size: 32, offset: 4288)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !708, file: !672, line: 129, baseType: !720, size: 16384, offset: 4320)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 16384, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 2048)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !708, file: !672, line: 130, baseType: !89, size: 32, offset: 20704)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !671, file: !672, line: 69, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !672, line: 116, size: 384, elements: !728)
!728 = !{!729, !733, !759, !1682, !1713, !1717}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !727, file: !672, line: 117, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !677}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !727, file: !672, line: 118, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !737, line: 254, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!738 = !{!739, !752}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !736, file: !737, line: 255, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!743, !677, !747, !609}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !311, line: 66, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !445, line: 73, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !445, line: 15, baseType: !746)
!746 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !737, line: 30, size: 128, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !748, file: !737, line: 31, baseType: !583, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !748, file: !737, line: 32, baseType: !435, size: 16, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !736, file: !737, line: 256, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!743, !677, !747, !583, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !311, line: 61, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !445, line: 72, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !445, line: 16, baseType: !319)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !727, file: !672, line: 119, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !737, line: 84, size: 320, elements: !764)
!764 = !{!765, !766, !770, !1678, !1680}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !763, file: !737, line: 85, baseType: !583, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !763, file: !737, line: 86, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!435, !677, !747, !89}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !763, file: !737, line: 88, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!435, !677, !774, !89}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !737, line: 175, size: 512, elements: !776)
!776 = !{!777, !778, !779, !780, !784, !1673, !1674}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !775, file: !737, line: 176, baseType: !748, size: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !775, file: !737, line: 177, baseType: !756, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !775, file: !737, line: 178, baseType: !309, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !775, file: !737, line: 179, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!427}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !775, file: !737, line: 180, baseType: !785, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!743, !788, !677, !774, !609, !630, !756}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !790)
!790 = !{!791, !810, !811, !813, !822, !835, !836, !837, !909, !1121, !1130, !1136, !1137, !1663, !1664, !1665, !1666, !1668, !1669, !1672}
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !59, line: 995, baseType: !792, size: 128)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !59, line: 995, size: 128, elements: !793)
!793 = !{!794, !800, !809}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !792, file: !59, line: 996, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !796, line: 60, size: 64, elements: !797)
!796 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !795, file: !796, line: 61, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !792, file: !59, line: 997, baseType: !801, size: 128, align: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !311, line: 232, size: 128, align: 64, elements: !802)
!802 = !{!803, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !311, line: 233, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !801, file: !311, line: 234, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !804}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !792, file: !59, line: 998, baseType: !7, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !789, file: !59, line: 1005, baseType: !525, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !789, file: !59, line: 1006, baseType: !812, size: 32, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !311, line: 156, baseType: !7)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !789, file: !59, line: 1007, baseType: !814, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !815, line: 13, baseType: !816)
!815 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !311, line: 181, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 179, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !817, file: !311, line: 180, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !330, line: 22, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !332, line: 30, baseType: !632)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !789, file: !59, line: 1008, baseType: !823, size: 256, offset: 256)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !824, line: 66, size: 256, elements: !825)
!824 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!825 = !{!826, !827, !829, !834}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !823, file: !824, line: 67, baseType: !814, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !823, file: !824, line: 68, baseType: !828, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !534, line: 23, baseType: !533)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !823, file: !824, line: 70, baseType: !830, size: 32, offset: 96)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !831, line: 15, size: 32, elements: !832)
!831 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !830, file: !831, line: 20, baseType: !545, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !823, file: !824, line: 72, baseType: !414, size: 128, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !789, file: !59, line: 1009, baseType: !630, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !789, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !789, file: !59, line: 1011, baseType: !838, size: 256, offset: 640)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !839)
!839 = !{!840, !861, !905, !906, !907, !908}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !838, file: !59, line: 949, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !842, line: 34, baseType: !843)
!842 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !842, line: 25, size: 64, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !843, file: !842, line: 26, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !847, line: 27, baseType: !848)
!847 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !847, line: 13, size: 64, elements: !849)
!849 = !{!850, !860}
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !847, line: 14, baseType: !851, size: 32)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !847, line: 14, size: 32, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !851, file: !847, line: 15, baseType: !545, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !847, line: 16, baseType: !855, size: 32)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !847, line: 16, size: 32, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !855, file: !847, line: 18, baseType: !553, size: 8)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !855, file: !847, line: 19, baseType: !859, size: 24, offset: 8)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 24, elements: !712)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !848, file: !847, line: 26, baseType: !537, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !838, file: !59, line: 950, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !22, line: 59, size: 768, elements: !864)
!864 = !{!865, !871, !872, !873, !886, !887, !894, !895}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !863, file: !22, line: 61, baseType: !866, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !867, line: 113, baseType: !868)
!867 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !867, line: 111, size: 32, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !868, file: !867, line: 112, baseType: !545, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !863, file: !22, line: 62, baseType: !7, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !863, file: !22, line: 63, baseType: !525, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !863, file: !22, line: 65, baseType: !874, size: 256, offset: 128)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 256, elements: !884)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !311, line: 194, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !875, file: !311, line: 195, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !311, line: 198, size: 128, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !311, line: 199, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !879, file: !311, line: 199, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!884 = !{!885}
!885 = !DISubrange(count: 4)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !863, file: !22, line: 66, baseType: !875, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !863, file: !22, line: 68, baseType: !888, size: 192, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !889, line: 41, baseType: !890)
!889 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !889, line: 37, size: 192, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !889, line: 38, baseType: !525, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !890, file: !889, line: 39, baseType: !414, size: 128, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !863, file: !22, line: 69, baseType: !801, size: 128, align: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !863, file: !22, line: 70, baseType: !896, offset: 768)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, elements: !903)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !22, line: 54, size: 128, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !897, file: !22, line: 55, baseType: !89, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !897, file: !22, line: 56, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !22, line: 56, flags: DIFlagFwdDecl)
!903 = !{!904}
!904 = !DISubrange(count: -1)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !838, file: !59, line: 951, baseType: !21, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !838, file: !59, line: 952, baseType: !438, size: 32, offset: 160)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !838, file: !59, line: 952, baseType: !438, size: 32, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !838, file: !59, line: 953, baseType: !89, size: 32, offset: 224)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !789, file: !59, line: 1012, baseType: !910, size: 64, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !913, line: 110, size: 1472, elements: !914)
!913 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !931, !932, !933, !934, !935, !936, !1066, !1067, !1068, !1069, !1070, !1101, !1104, !1108, !1116}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !912, file: !913, line: 111, baseType: !814, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !912, file: !913, line: 112, baseType: !438, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !912, file: !913, line: 113, baseType: !448, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !912, file: !913, line: 114, baseType: !438, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !912, file: !913, line: 115, baseType: !448, size: 32, offset: 160)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !912, file: !913, line: 116, baseType: !438, size: 32, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !912, file: !913, line: 117, baseType: !448, size: 32, offset: 224)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !912, file: !913, line: 118, baseType: !438, size: 32, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !912, file: !913, line: 119, baseType: !448, size: 32, offset: 288)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !912, file: !913, line: 120, baseType: !7, size: 32, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !912, file: !913, line: 121, baseType: !926, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !927, line: 24, baseType: !928)
!927 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 24, size: 64, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !928, file: !927, line: 24, baseType: !366, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !912, file: !913, line: 122, baseType: !926, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !912, file: !913, line: 123, baseType: !926, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !912, file: !913, line: 124, baseType: !926, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !912, file: !913, line: 125, baseType: !926, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !912, file: !913, line: 127, baseType: !507, size: 8, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !912, file: !913, line: 129, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !939, line: 195, size: 1728, elements: !940)
!939 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!940 = !{!941, !942, !947, !959, !968, !971, !972, !979, !980, !981, !982, !985, !986, !987, !989, !990, !1030, !1051}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !938, file: !939, line: 196, baseType: !866, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !938, file: !939, line: 197, baseType: !943, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !939, line: 28, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !311, line: 104, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !330, line: 20, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !332, line: 26, baseType: !89)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 198, baseType: !948, size: 192, offset: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 198, size: 192, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !948, file: !939, line: 199, baseType: !414, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !948, file: !939, line: 200, baseType: !952, size: 192, align: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !953, line: 5, size: 192, align: 64, elements: !954)
!953 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!954 = !{!955, !956, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !952, file: !953, line: 6, baseType: !319, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !952, file: !953, line: 7, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !952, file: !953, line: 8, baseType: !957, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !938, file: !939, line: 205, baseType: !960, size: 320, offset: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !961, line: 48, size: 320, elements: !962)
!961 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!962 = !{!963, !964, !965, !966, !967}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !960, file: !961, line: 49, baseType: !814, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !960, file: !961, line: 55, baseType: !814, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !960, file: !961, line: 57, baseType: !830, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !960, file: !961, line: 59, baseType: !828, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !960, file: !961, line: 60, baseType: !414, size: 128, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !938, file: !939, line: 206, baseType: !969, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !939, line: 206, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !938, file: !939, line: 207, baseType: !309, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 208, baseType: !973, size: 64, offset: 704)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 208, size: 64, elements: !974)
!974 = !{!975, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !973, file: !939, line: 209, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !977, line: 8, baseType: !821)
!977 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!978 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !973, file: !939, line: 210, baseType: !976, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !938, file: !939, line: 212, baseType: !976, size: 64, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !938, file: !939, line: 213, baseType: !438, size: 32, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !938, file: !939, line: 214, baseType: !448, size: 32, offset: 864)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !938, file: !939, line: 215, baseType: !983, size: 32, offset: 896)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !939, line: 31, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !311, line: 110, baseType: !329)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !938, file: !939, line: 216, baseType: !364, size: 16, offset: 928)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !938, file: !939, line: 217, baseType: !364, size: 16, offset: 944)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !938, file: !939, line: 221, baseType: !988, size: 16, offset: 960)
!988 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !939, line: 228, baseType: !319, size: 64, offset: 1024)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 245, baseType: !991, size: 320, offset: 1088)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 245, size: 320, elements: !992)
!992 = !{!993, !1022}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !991, file: !939, line: 246, baseType: !994, size: 320)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !939, line: 114, size: 320, elements: !995)
!995 = !{!996, !997, !1009, !1012, !1021}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !994, file: !939, line: 116, baseType: !319, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !939, line: 117, baseType: !998, size: 64, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !939, line: 117, size: 64, elements: !999)
!999 = !{!1000, !1008}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !939, line: 118, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !939, line: 118, size: 64, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1001, file: !939, line: 120, baseType: !362, size: 16)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1001, file: !939, line: 121, baseType: !1005, size: 48, offset: 16)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 48, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 6)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !998, file: !939, line: 127, baseType: !319, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !994, file: !939, line: 129, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !939, line: 102, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !994, file: !939, line: 130, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !939, line: 108, size: 192, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1014, file: !939, line: 109, baseType: !801, size: 128, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1014, file: !939, line: 110, baseType: !866, size: 32, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1014, file: !939, line: 111, baseType: !1019, size: 8, offset: 160)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !311, line: 35, baseType: !1020)
!1020 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !994, file: !939, line: 131, baseType: !583, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !939, line: 247, baseType: !1023, size: 320)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !939, line: 247, size: 320, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1023, file: !939, line: 248, baseType: !319, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1023, file: !939, line: 249, baseType: !319, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1023, file: !939, line: 250, baseType: !1010, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1023, file: !939, line: 251, baseType: !1013, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1023, file: !939, line: 252, baseType: !609, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 260, baseType: !1031, size: 256, offset: 1408)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 260, size: 256, elements: !1032)
!1032 = !{!1033, !1039}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1031, file: !939, line: 261, baseType: !1034, size: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !939, line: 134, size: 256, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1034, file: !939, line: 135, baseType: !309, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1034, file: !939, line: 136, baseType: !1038, size: 256)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !884)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !939, line: 262, baseType: !1040, size: 256)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1031, file: !939, line: 262, size: 256, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1040, file: !939, line: 264, baseType: !414, size: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1040, file: !939, line: 265, baseType: !1044, size: 128, offset: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1045, line: 22, size: 128, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1046 = !{!1047, !1050}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1044, file: !1045, line: 23, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1045, line: 23, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1044, file: !1045, line: 24, baseType: !319, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !938, file: !939, line: 280, baseType: !1052, size: 64, offset: 1664)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !939, line: 176, size: 192, elements: !1054)
!1054 = !{!1055, !1064, !1065}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1053, file: !939, line: 177, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !939, line: 171, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!89, !937, !1060, !1062, !937}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1053, file: !939, line: 178, baseType: !937, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1053, file: !939, line: 179, baseType: !1010, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !912, file: !913, line: 130, baseType: !937, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !912, file: !913, line: 131, baseType: !937, size: 64, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !912, file: !913, line: 132, baseType: !937, size: 64, offset: 960)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !912, file: !913, line: 135, baseType: !309, size: 64, offset: 1024)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !912, file: !913, line: 137, baseType: !1071, size: 64, offset: 1088)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1073, line: 14, size: 1088, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1074 = !{!1075, !1076, !1085, !1086, !1087, !1088, !1089, !1090}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1072, file: !1073, line: 15, baseType: !866, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1072, file: !1073, line: 17, baseType: !1077, size: 320, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1078, line: 22, size: 320, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1078, line: 23, baseType: !828, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1077, file: !1078, line: 24, baseType: !820, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1077, file: !1078, line: 26, baseType: !414, size: 128, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1077, file: !1078, line: 28, baseType: !1084, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1072, file: !1073, line: 19, baseType: !319, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1072, file: !1073, line: 20, baseType: !814, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1072, file: !1073, line: 23, baseType: !879, size: 128, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1072, file: !1073, line: 24, baseType: !438, size: 32, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1072, file: !1073, line: 29, baseType: !814, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1072, file: !1073, line: 36, baseType: !1091, size: 320, offset: 768)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1092, line: 15, size: 320, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1091, file: !1092, line: 16, baseType: !828, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1091, file: !1092, line: 18, baseType: !89, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1091, file: !1092, line: 19, baseType: !89, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1091, file: !1092, line: 20, baseType: !89, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1091, file: !1092, line: 21, baseType: !89, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1091, file: !1092, line: 22, baseType: !319, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1092, line: 23, baseType: !319, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !912, file: !913, line: 138, baseType: !1102, size: 64, offset: 1152)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !30, line: 901, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !912, file: !913, line: 139, baseType: !1105, size: 64, offset: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1107, line: 16, flags: DIFlagFwdDecl)
!1107 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !912, file: !913, line: 140, baseType: !1109, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !913, line: 25, size: 64, elements: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1110, file: !913, line: 26, baseType: !545, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1110, file: !913, line: 27, baseType: !89, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1110, file: !913, line: 28, baseType: !1115, offset: 64)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, elements: !903)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !913, line: 142, baseType: !1117, size: 128, offset: 1344)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !913, line: 142, size: 128, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1117, file: !913, line: 143, baseType: !89, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1117, file: !913, line: 144, baseType: !801, size: 128, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !789, file: !59, line: 1013, baseType: !1122, size: 256, offset: 960)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1122, file: !59, line: 971, baseType: !319, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1122, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1122, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1122, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1122, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1122, file: !59, line: 976, baseType: !630, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !789, file: !59, line: 1014, baseType: !1131, size: 128, offset: 1216)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1132, line: 8, size: 128, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1131, file: !1132, line: 9, baseType: !614, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1131, file: !1132, line: 10, baseType: !468, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !789, file: !59, line: 1015, baseType: !431, size: 64, offset: 1344)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !789, file: !59, line: 1016, baseType: !1138, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !1141)
!1141 = !{!1142, !1143, !1147, !1152, !1156, !1184, !1185, !1191, !1204, !1212, !1216, !1217, !1546, !1547, !1551, !1556, !1557, !1561, !1565, !1571, !1572, !1576, !1577, !1584, !1588, !1592, !1598, !1602, !1644, !1648, !1652, !1653, !1659}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1140, file: !59, line: 1915, baseType: !658, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1140, file: !59, line: 1916, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!630, !788, !630, !89}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1140, file: !59, line: 1917, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!743, !788, !609, !756, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1140, file: !59, line: 1918, baseType: !1153, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!743, !788, !583, !756, !1151}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1140, file: !59, line: 1919, baseType: !1157, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!743, !1160, !1182}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1169, !1170, !1171, !1172}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1161, file: !59, line: 374, baseType: !788, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1161, file: !59, line: 375, baseType: !630, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1161, file: !59, line: 376, baseType: !1166, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1160, !746}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1161, file: !59, line: 377, baseType: !309, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1161, file: !59, line: 378, baseType: !89, size: 32, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1161, file: !59, line: 379, baseType: !362, size: 16, offset: 288)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !59, line: 380, baseType: !1173, size: 64, offset: 320)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !59, line: 380, size: 64, elements: !1174)
!1174 = !{!1175, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1173, file: !59, line: 386, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1173, file: !59, line: 395, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!743, !309}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !59, line: 69, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1140, file: !59, line: 1920, baseType: !1157, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1140, file: !59, line: 1921, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!89, !1160, !1189, !7}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1140, file: !59, line: 1923, baseType: !1192, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!89, !788, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !1197)
!1197 = !{!1198, !1203}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1196, file: !59, line: 1859, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1019, !1195, !583, !89, !630, !366, !7}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1196, file: !59, line: 1860, baseType: !630, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1140, file: !59, line: 1924, baseType: !1205, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!1208, !788, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1209, line: 59, baseType: !7)
!1209 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !59, line: 61, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1140, file: !59, line: 1925, baseType: !1213, size: 64, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!746, !788, !7, !319}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1140, file: !59, line: 1926, baseType: !1213, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1140, file: !59, line: 1927, baseType: !1218, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!89, !788, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1223)
!1223 = !{!1224, !1233, !1402, !1408, !1415, !1416, !1421, !1422, !1427, !1428, !1431, !1539, !1540, !1541, !1542, !1543, !1544}
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !30, line: 628, baseType: !1225, size: 128)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !30, line: 628, size: 128, elements: !1226)
!1226 = !{!1227, !1232}
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !30, line: 629, baseType: !1228, size: 128)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1225, file: !30, line: 629, size: 128, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1228, file: !30, line: 631, baseType: !319, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1228, file: !30, line: 632, baseType: !319, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1225, file: !30, line: 635, baseType: !801, size: 128, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1222, file: !30, line: 639, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1236)
!1236 = !{!1237, !1400}
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !30, line: 734, baseType: !1238, size: 10240)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !30, line: 734, size: 10240, elements: !1239)
!1239 = !{!1240, !1244, !1258, !1262, !1263, !1264, !1265, !1266, !1267, !1276, !1277, !1278, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1317, !1319, !1322, !1369, !1370, !1371, !1374, !1375, !1376, !1379, !1380, !1381, !1387, !1388}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !30, line: 739, baseType: !1241, size: 512, align: 512)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !30, line: 739, size: 512, align: 512, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1241, file: !30, line: 747, baseType: !545, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1238, file: !30, line: 750, baseType: !1245, size: 128, offset: 512)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1246, line: 218, size: 128, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1247 = !{!1248, !1256, !1257}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1246, line: 219, baseType: !1249, size: 32)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !1246, line: 219, size: 32, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1249, file: !1246, line: 220, baseType: !525, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1249, file: !1246, line: 221, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1246, line: 197, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 197, elements: !1255)
!1255 = !{}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1245, file: !1246, line: 223, baseType: !7, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1245, file: !1246, line: 224, baseType: !309, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1238, file: !30, line: 752, baseType: !1259, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!319, !788, !319, !319, !319, !319}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1238, file: !30, line: 756, baseType: !319, size: 64, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1238, file: !30, line: 757, baseType: !319, size: 64, offset: 768)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1238, file: !30, line: 760, baseType: !319, size: 64, offset: 832)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1238, file: !30, line: 761, baseType: !319, size: 64, offset: 896)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1238, file: !30, line: 763, baseType: !319, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1238, file: !30, line: 764, baseType: !1268, size: 64, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1270, line: 299, baseType: !1271)
!1270 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 299, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1271, file: !1270, line: 299, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1275, line: 18, baseType: !319)
!1275 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1238, file: !30, line: 773, baseType: !545, size: 32, offset: 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1238, file: !30, line: 785, baseType: !545, size: 32, offset: 1120)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1238, file: !30, line: 795, baseType: !1279, size: 64, offset: 1152)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1280, file: !30, line: 727, baseType: !366, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1280, file: !30, line: 728, baseType: !89, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1238, file: !30, line: 801, baseType: !319, size: 64, offset: 1216)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1238, file: !30, line: 804, baseType: !814, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1238, file: !30, line: 806, baseType: !89, size: 32, offset: 1344)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1238, file: !30, line: 808, baseType: !525, size: 32, offset: 1376)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1238, file: !30, line: 823, baseType: !960, size: 320, offset: 1408)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1238, file: !30, line: 825, baseType: !414, size: 128, offset: 1728)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1238, file: !30, line: 845, baseType: !89, size: 32, offset: 1856)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1238, file: !30, line: 849, baseType: !319, size: 64, offset: 1920)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1238, file: !30, line: 850, baseType: !319, size: 64, offset: 1984)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1238, file: !30, line: 852, baseType: !319, size: 64, offset: 2048)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1238, file: !30, line: 853, baseType: !319, size: 64, offset: 2112)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1238, file: !30, line: 854, baseType: !816, size: 64, offset: 2176)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1238, file: !30, line: 855, baseType: !319, size: 64, offset: 2240)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1238, file: !30, line: 856, baseType: !319, size: 64, offset: 2304)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1238, file: !30, line: 857, baseType: !319, size: 64, offset: 2368)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1238, file: !30, line: 858, baseType: !319, size: 64, offset: 2432)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1238, file: !30, line: 865, baseType: !479, size: 32, offset: 2496)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1238, file: !30, line: 867, baseType: !525, size: 32, offset: 2528)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1238, file: !30, line: 869, baseType: !319, size: 64, offset: 2560)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1238, file: !30, line: 869, baseType: !319, size: 64, offset: 2624)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1238, file: !30, line: 869, baseType: !319, size: 64, offset: 2688)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1238, file: !30, line: 869, baseType: !319, size: 64, offset: 2752)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1238, file: !30, line: 870, baseType: !319, size: 64, offset: 2816)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1238, file: !30, line: 870, baseType: !319, size: 64, offset: 2880)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1238, file: !30, line: 870, baseType: !319, size: 64, offset: 2944)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1238, file: !30, line: 871, baseType: !319, size: 64, offset: 3008)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1238, file: !30, line: 871, baseType: !319, size: 64, offset: 3072)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1238, file: !30, line: 871, baseType: !319, size: 64, offset: 3136)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1238, file: !30, line: 871, baseType: !319, size: 64, offset: 3200)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1238, file: !30, line: 873, baseType: !1314, size: 3328, offset: 3264)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 3328, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 52)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1238, file: !30, line: 875, baseType: !1318, size: 1280, offset: 6592)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 1280, elements: !884)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1238, file: !30, line: 877, baseType: !1320, size: 64, offset: 7872)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1238, file: !30, line: 880, baseType: !1323, size: 1088, offset: 7936)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1324, line: 72, baseType: !1325)
!1324 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 23, size: 1088, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1334, !1335, !1336, !1337, !1364, !1365, !1366}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1325, file: !1324, line: 28, baseType: !366, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1325, file: !1324, line: 38, baseType: !816, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1325, file: !1324, line: 40, baseType: !319, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1325, file: !1324, line: 43, baseType: !960, size: 320, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1325, file: !1324, line: 44, baseType: !1332, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1324, line: 44, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1325, file: !1324, line: 48, baseType: !319, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !1324, line: 59, baseType: !823, size: 256, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1325, file: !1324, line: 60, baseType: !309, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1325, file: !1324, line: 61, baseType: !1338, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1341, line: 13, size: 1216, elements: !1342)
!1341 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1340, file: !1341, line: 14, baseType: !309, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1340, file: !1341, line: 15, baseType: !319, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1340, file: !1341, line: 17, baseType: !319, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1340, file: !1341, line: 17, baseType: !319, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1340, file: !1341, line: 18, baseType: !319, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1340, file: !1341, line: 18, baseType: !319, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1340, file: !1341, line: 19, baseType: !1350, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1340, file: !1341, line: 21, baseType: !746, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1340, file: !1341, line: 23, baseType: !746, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1340, file: !1341, line: 24, baseType: !746, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1340, file: !1341, line: 25, baseType: !746, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1340, file: !1341, line: 26, baseType: !746, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1340, file: !1341, line: 27, baseType: !746, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1340, file: !1341, line: 28, baseType: !746, size: 64, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1340, file: !1341, line: 29, baseType: !746, size: 64, offset: 896)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1340, file: !1341, line: 30, baseType: !746, size: 64, offset: 960)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1340, file: !1341, line: 31, baseType: !746, size: 64, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1340, file: !1341, line: 32, baseType: !746, size: 64, offset: 1088)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1340, file: !1341, line: 33, baseType: !746, size: 64, offset: 1152)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1325, file: !1324, line: 63, baseType: !545, size: 32, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1325, file: !1324, line: 69, baseType: !362, size: 16, offset: 1056)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1325, file: !1324, line: 70, baseType: !1367, size: 16, offset: 1072)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !330, line: 18, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !332, line: 23, baseType: !988)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !30, line: 882, baseType: !319, size: 64, offset: 9024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1238, file: !30, line: 885, baseType: !525, size: 32, offset: 9088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1238, file: !30, line: 886, baseType: !1372, size: 64, offset: 9152)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1238, file: !30, line: 901, baseType: !1102, size: 64, offset: 9216)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1238, file: !30, line: 904, baseType: !788, size: 64, offset: 9280)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1238, file: !30, line: 906, baseType: !1377, size: 64, offset: 9344)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1238, file: !30, line: 930, baseType: !545, size: 32, offset: 9408)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1238, file: !30, line: 933, baseType: !545, size: 32, offset: 9440)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1238, file: !30, line: 935, baseType: !1382, size: 64, offset: 9472)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1382, file: !81, line: 104, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1238, file: !30, line: 940, baseType: !814, size: 64, offset: 9536)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1238, file: !30, line: 942, baseType: !1389, size: 256, offset: 9600)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1390, line: 98, size: 256, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1391 = !{!1392, !1393, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1389, file: !1390, line: 99, baseType: !814, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1389, file: !1390, line: 100, baseType: !414, size: 128, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1389, file: !1390, line: 101, baseType: !1395, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1390, line: 21, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1235, file: !30, line: 986, baseType: !1401, offset: 10240)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !903)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1222, file: !30, line: 640, baseType: !1403, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1270, line: 297, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1270, line: 297, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1404, file: !1270, line: 297, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1275, line: 19, baseType: !319)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !30, line: 646, baseType: !1409, size: 64, offset: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !30, line: 646, size: 64, elements: !1410)
!1410 = !{!1411, !1414}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1409, file: !30, line: 647, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !319)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1409, file: !30, line: 648, baseType: !1413, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1222, file: !30, line: 666, baseType: !89, size: 32, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1222, file: !30, line: 667, baseType: !1417, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1418, file: !30, line: 580, baseType: !960, size: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1222, file: !30, line: 670, baseType: !1019, size: 8, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1222, file: !30, line: 681, baseType: !1423, size: 256, offset: 512)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !30, line: 678, size: 256, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1423, file: !30, line: 679, baseType: !952, size: 192, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1423, file: !30, line: 680, baseType: !319, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1222, file: !30, line: 689, baseType: !414, size: 128, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1222, file: !30, line: 691, baseType: !1429, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1222, file: !30, line: 694, baseType: !1432, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1435, line: 563, size: 1024, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1436 = !{!1437, !1441, !1442, !1446, !1450, !1454, !1503, !1507, !1511, !1515, !1516, !1517, !1521, !1525, !1531, !1535}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1434, file: !1435, line: 564, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1221}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1434, file: !1435, line: 569, baseType: !1438, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1434, file: !1435, line: 571, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!89, !1221, !319}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1434, file: !1435, line: 572, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!89, !1221}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1434, file: !1435, line: 578, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!89, !1221, !319, !319, !319}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1434, file: !1435, line: 580, baseType: !1455, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1435, line: 512, size: 896, elements: !1461)
!1461 = !{!1462, !1470, !1471, !1478, !1485, !1495, !1496, !1497, !1499, !1501}
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1435, line: 513, baseType: !1463, size: 320)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !1435, line: 513, size: 320, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1463, file: !1435, line: 514, baseType: !1221, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1463, file: !1435, line: 515, baseType: !310, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1463, file: !1435, line: 516, baseType: !319, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1463, file: !1435, line: 517, baseType: !319, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1463, file: !1435, line: 518, baseType: !319, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1435, line: 520, baseType: !29, size: 32, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1460, file: !1435, line: 522, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1275, line: 22, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 22, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1474, file: !1275, line: 22, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1275, line: 15, baseType: !319)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1460, file: !1435, line: 524, baseType: !1479, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1270, line: 372, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 372, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1481, file: !1270, line: 372, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1275, line: 16, baseType: !319)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1435, line: 527, baseType: !1486, size: 64, offset: 512)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1435, line: 527, size: 64, elements: !1487)
!1487 = !{!1488, !1494}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1486, file: !1435, line: 528, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1275, line: 21, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 21, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1490, file: !1275, line: 21, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1275, line: 14, baseType: !319)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1486, file: !1435, line: 529, baseType: !1473, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1460, file: !1435, line: 534, baseType: !400, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1460, file: !1435, line: 535, baseType: !400, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1460, file: !1435, line: 541, baseType: !1498, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1460, file: !1435, line: 545, baseType: !1500, size: 64, offset: 768)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1460, file: !1435, line: 549, baseType: !1502, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1270, line: 520, baseType: !400)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1434, file: !1435, line: 581, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1458, !1459, !7}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1434, file: !1435, line: 582, baseType: !1508, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!1458, !1459, !319, !319}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1434, file: !1435, line: 584, baseType: !1512, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!319, !1221}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1434, file: !1435, line: 588, baseType: !1455, size: 64, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1434, file: !1435, line: 591, baseType: !1455, size: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1434, file: !1435, line: 597, baseType: !1518, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!89, !1221, !319, !309, !89, !89}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1434, file: !1435, line: 603, baseType: !1522, size: 64, offset: 768)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!583, !1221}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1434, file: !1435, line: 613, baseType: !1526, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!89, !1221, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1434, file: !1435, line: 625, baseType: !1532, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1529, !1221, !319}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1434, file: !1435, line: 633, baseType: !1536, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!400, !1221, !319}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1222, file: !30, line: 697, baseType: !319, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1222, file: !30, line: 699, baseType: !788, size: 64, offset: 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1222, file: !30, line: 700, baseType: !309, size: 64, offset: 1152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1222, file: !30, line: 711, baseType: !814, size: 64, offset: 1216)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1222, file: !30, line: 717, baseType: !1529, size: 64, offset: 1280)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1222, file: !30, line: 722, baseType: !1545, offset: 1344)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !1255)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1140, file: !59, line: 1928, baseType: !319, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1140, file: !59, line: 1929, baseType: !1548, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!89, !431, !788}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1140, file: !59, line: 1930, baseType: !1552, size: 64, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!89, !788, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !309)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1140, file: !59, line: 1931, baseType: !1548, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1140, file: !59, line: 1932, baseType: !1558, size: 64, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!89, !788, !630, !630, !89}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1140, file: !59, line: 1933, baseType: !1562, size: 64, offset: 1088)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!89, !89, !788, !89}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !59, line: 1934, baseType: !1566, size: 64, offset: 1152)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!89, !788, !89, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1140, file: !59, line: 1935, baseType: !1259, size: 64, offset: 1216)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1140, file: !59, line: 1936, baseType: !1573, size: 64, offset: 1280)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!89, !89}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1140, file: !59, line: 1937, baseType: !1566, size: 64, offset: 1344)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1140, file: !59, line: 1938, baseType: !1578, size: 64, offset: 1408)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!743, !1581, !788, !1151, !756, !7}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1583, line: 59, flags: DIFlagFwdDecl)
!1583 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1140, file: !59, line: 1939, baseType: !1585, size: 64, offset: 1472)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!743, !788, !1151, !1581, !756, !7}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1140, file: !59, line: 1940, baseType: !1589, size: 64, offset: 1536)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !788}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1140, file: !59, line: 1941, baseType: !1593, size: 64, offset: 1600)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!89, !788, !89, !1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1140, file: !59, line: 1942, baseType: !1599, size: 64, offset: 1664)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!746, !788, !89, !630, !630}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1140, file: !59, line: 1944, baseType: !1603, size: 64, offset: 1728)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1606, !788}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1608, line: 17, size: 960, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1639, !1640, !1643}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1607, file: !1608, line: 18, baseType: !609, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1607, file: !1608, line: 19, baseType: !756, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1607, file: !1608, line: 20, baseType: !756, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1607, file: !1608, line: 21, baseType: !756, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1607, file: !1608, line: 22, baseType: !756, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1607, file: !1608, line: 23, baseType: !630, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1607, file: !1608, line: 24, baseType: !630, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1607, file: !1608, line: 25, baseType: !823, size: 256, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1607, file: !1608, line: 26, baseType: !1619, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1608, line: 32, size: 256, elements: !1622)
!1622 = !{!1623, !1627, !1631, !1635}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1621, file: !1608, line: 33, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!309, !1606, !1151}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1621, file: !1608, line: 34, baseType: !1628, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1606, !309}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1621, file: !1608, line: 35, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!309, !1606, !309, !1151}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1621, file: !1608, line: 36, baseType: !1636, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!89, !1606, !309}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1607, file: !1608, line: 27, baseType: !89, size: 32, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1607, file: !1608, line: 28, baseType: !1641, size: 64, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1607, file: !1608, line: 29, baseType: !309, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1140, file: !59, line: 1948, baseType: !1645, size: 64, offset: 1792)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!743, !788, !630, !788, !630, !756, !7}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1140, file: !59, line: 1950, baseType: !1649, size: 64, offset: 1856)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!630, !788, !630, !788, !630, !630, !7}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1140, file: !59, line: 1953, baseType: !1558, size: 64, offset: 1920)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1140, file: !59, line: 1954, baseType: !1654, size: 64, offset: 1984)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!89, !1657, !7}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1140, file: !59, line: 1955, baseType: !1660, size: 64, offset: 2048)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!89, !1657, !1189, !7}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !789, file: !59, line: 1018, baseType: !366, size: 64, offset: 1472)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !789, file: !59, line: 1020, baseType: !309, size: 64, offset: 1536)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !789, file: !59, line: 1023, baseType: !309, size: 64, offset: 1600)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !789, file: !59, line: 1027, baseType: !1667, size: 64, offset: 1664)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !789, file: !59, line: 1029, baseType: !427, size: 64, offset: 1728)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !789, file: !59, line: 1030, baseType: !1670, size: 32, offset: 1792)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1671, line: 8, baseType: !329)
!1671 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !789, file: !59, line: 1031, baseType: !1670, size: 32, offset: 1824)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !775, file: !737, line: 182, baseType: !785, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !775, file: !737, line: 184, baseType: !1675, size: 64, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!89, !788, !677, !774, !1221}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !763, file: !737, line: 90, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !763, file: !737, line: 91, baseType: !1681, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !727, file: !672, line: 120, baseType: !1683, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1686, !695}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1689)
!1689 = !{!1690, !1691, !1695, !1699, !1705, !1709}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1688, file: !53, line: 40, baseType: !52, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1688, file: !53, line: 41, baseType: !1692, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1019}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1688, file: !53, line: 42, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!309}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1688, file: !53, line: 43, baseType: !1700, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1350, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1688, file: !53, line: 44, baseType: !1706, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1350}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1688, file: !53, line: 45, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !309}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !727, file: !672, line: 121, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1350, !695}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !727, file: !672, line: 122, baseType: !1718, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !695, !1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !671, file: !672, line: 70, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1726, line: 190, size: 1152, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1810, !1811, !1812, !1813, !1814, !1817}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1725, file: !1726, line: 191, baseType: !545, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1725, file: !1726, line: 192, baseType: !545, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1725, file: !1726, line: 202, baseType: !1724, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1725, file: !1726, line: 203, baseType: !583, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1725, file: !1726, line: 205, baseType: !952, size: 192, align: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1725, file: !1726, line: 207, baseType: !1350, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1725, file: !1726, line: 208, baseType: !7, size: 32, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !1726, line: 209, baseType: !1736, size: 256, offset: 512)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !1726, line: 209, size: 256, elements: !1737)
!1737 = !{!1738, !1750, !1754}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1736, file: !1726, line: 210, baseType: !1739, size: 256)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1726, line: 153, size: 256, elements: !1740)
!1740 = !{!1741, !1742, !1746, !1749}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1739, file: !1726, line: 154, baseType: !319, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1739, file: !1726, line: 156, baseType: !1743, size: 64, offset: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !953, line: 12, size: 64, elements: !1744)
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1743, file: !953, line: 13, baseType: !957, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1739, file: !1726, line: 162, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1726, line: 162, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1739, file: !1726, line: 167, baseType: !319, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1736, file: !1726, line: 211, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1726, line: 170, size: 64, elements: !1752)
!1752 = !{!1753}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1751, file: !1726, line: 171, baseType: !1724, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1736, file: !1726, line: 212, baseType: !1755, size: 256)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1726, line: 174, size: 256, elements: !1756)
!1756 = !{!1757, !1805, !1808, !1809}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1755, file: !1726, line: 175, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1726, line: 271, size: 768, elements: !1761)
!1761 = !{!1762, !1782, !1786, !1787, !1788, !1789, !1790, !1794, !1795, !1796, !1797, !1801}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1760, file: !1726, line: 276, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!89, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1726, line: 251, size: 1216, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1767, file: !1726, line: 253, baseType: !1724, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1767, file: !1726, line: 254, baseType: !788, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1767, file: !1726, line: 255, baseType: !1606, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1767, file: !1726, line: 256, baseType: !309, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1767, file: !1726, line: 259, baseType: !823, size: 256, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1767, file: !1726, line: 260, baseType: !823, size: 256, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1767, file: !1726, line: 261, baseType: !89, size: 32, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1767, file: !1726, line: 262, baseType: !414, size: 128, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1767, file: !1726, line: 263, baseType: !609, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1767, file: !1726, line: 265, baseType: !756, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1767, file: !1726, line: 266, baseType: !1019, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1767, file: !1726, line: 267, baseType: !1019, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1767, file: !1726, line: 268, baseType: !1432, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1760, file: !1726, line: 277, baseType: !1783, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1766}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1760, file: !1726, line: 290, baseType: !1636, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1760, file: !1726, line: 292, baseType: !1624, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1760, file: !1726, line: 293, baseType: !1632, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1760, file: !1726, line: 294, baseType: !1628, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1760, file: !1726, line: 296, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!743, !1766, !609, !756, !630}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1760, file: !1726, line: 306, baseType: !756, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1760, file: !1726, line: 313, baseType: !1019, size: 8, offset: 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1760, file: !1726, line: 314, baseType: !1791, size: 64, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1760, file: !1726, line: 317, baseType: !1798, size: 64, offset: 640)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1208, !1766, !1210}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1760, file: !1726, line: 320, baseType: !1802, size: 64, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!89, !1766, !1221}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1755, file: !1726, line: 176, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1726, line: 35, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1755, file: !1726, line: 177, baseType: !630, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1755, file: !1726, line: 178, baseType: !1724, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1725, file: !1726, line: 215, baseType: !309, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1725, file: !1726, line: 221, baseType: !366, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !1726, line: 223, baseType: !364, size: 16, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1725, file: !1726, line: 224, baseType: !435, size: 16, offset: 912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1725, file: !1726, line: 225, baseType: !1815, size: 64, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1726, line: 36, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1725, file: !1726, line: 227, baseType: !801, size: 128, align: 64, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !671, file: !672, line: 71, baseType: !1819, size: 32, offset: 448)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1820, line: 19, size: 32, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1819, file: !1820, line: 20, baseType: !866, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !671, file: !672, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !671, file: !672, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !671, file: !672, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !671, file: !672, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !671, file: !672, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !668, file: !6, line: 47, baseType: !658, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !668, file: !6, line: 48, baseType: !677, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !668, file: !6, line: 49, baseType: !1831, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !668, file: !6, line: 50, baseType: !1834, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1836, line: 26, size: 256, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1835, file: !1836, line: 27, baseType: !7, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1835, file: !1836, line: 28, baseType: !1840, size: 192, offset: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1841, line: 43, size: 192, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !1841, line: 44, baseType: !828, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1840, file: !1841, line: 45, baseType: !414, size: 128, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !659, file: !6, line: 418, baseType: !1846, size: 64, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1848)
!1848 = !{!1849, !1850, !1855, !1859, !1863, !1867}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1847, file: !6, line: 54, baseType: !748, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1847, file: !6, line: 55, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!743, !1846, !1854, !609}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1847, file: !6, line: 57, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!743, !1846, !1854, !583, !756}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1847, file: !6, line: 59, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !658, !583}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1847, file: !6, line: 60, baseType: !1864, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!89, !658}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1847, file: !6, line: 61, baseType: !1868, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !658}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !659, file: !6, line: 419, baseType: !583, size: 64, offset: 1472)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !659, file: !6, line: 420, baseType: !583, size: 64, offset: 1536)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !659, file: !6, line: 421, baseType: !677, size: 64, offset: 1600)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !659, file: !6, line: 424, baseType: !1875, size: 64, offset: 1664)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !659, file: !6, line: 425, baseType: !1879, size: 64, offset: 1728)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !659, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !659, file: !6, line: 435, baseType: !823, size: 256, offset: 1856)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !659, file: !6, line: 437, baseType: !1884, size: 64, offset: 2112)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1886, line: 69, size: 320, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1887 = !{!1888, !1889, !1890, !1907, !1909, !1913, !1914}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !1886, line: 70, baseType: !583, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1885, file: !1886, line: 71, baseType: !658, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1885, file: !1886, line: 72, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1886, line: 47, size: 256, elements: !1894)
!1894 = !{!1895, !1896, !1902, !1906}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1893, file: !1886, line: 49, baseType: !7, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1893, file: !1886, line: 51, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!89, !583, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1893, file: !1886, line: 53, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!89, !609, !1900}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1893, file: !1886, line: 55, baseType: !1710, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1885, file: !1886, line: 73, baseType: !1908, size: 16, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1885, file: !1886, line: 74, baseType: !1910, size: 8, offset: 208)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !330, line: 16, baseType: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !332, line: 20, baseType: !1912)
!1912 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1885, file: !1886, line: 75, baseType: !553, size: 8, offset: 216)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1886, line: 76, baseType: !1915, size: 64, offset: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1886, line: 76, size: 64, elements: !1916)
!1916 = !{!1917, !1918, !1925}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1915, file: !1886, line: 77, baseType: !309, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1915, file: !1886, line: 78, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1886, line: 86, size: 128, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1921, file: !1886, line: 87, baseType: !7, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1921, file: !1886, line: 88, baseType: !609, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1915, file: !1886, line: 79, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1886, line: 92, size: 256, elements: !1929)
!1929 = !{!1930, !1931, !1932, !1934, !1935}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1928, file: !1886, line: 94, baseType: !7, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1928, file: !1886, line: 95, baseType: !7, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1928, file: !1886, line: 96, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1928, file: !1886, line: 97, baseType: !1891, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1928, file: !1886, line: 98, baseType: !309, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !659, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !659, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !659, file: !6, line: 442, baseType: !1875, size: 64, offset: 2240)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !659, file: !6, line: 443, baseType: !1879, size: 64, offset: 2304)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !659, file: !6, line: 444, baseType: !1019, size: 8, offset: 2368)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !659, file: !6, line: 451, baseType: !1019, size: 8, offset: 2376)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !659, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !659, file: !6, line: 455, baseType: !1944, size: 64, offset: 2432)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1946, line: 23, size: 96, elements: !1947)
!1946 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1945, file: !1946, line: 24, baseType: !89, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1945, file: !1946, line: 24, baseType: !89, size: 32, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1945, file: !1946, line: 24, baseType: !89, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !659, file: !6, line: 458, baseType: !1952, size: 64, offset: 2496)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!89}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !659, file: !6, line: 460, baseType: !1956, size: 4032, align: 512, offset: 2560)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1957, size: 4032, elements: !1971)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1957, file: !6, line: 363, baseType: !309, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1957, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1957, file: !6, line: 367, baseType: !1962, size: 448, offset: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1962, file: !6, line: 320, baseType: !658, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1962, file: !6, line: 321, baseType: !1966, size: 384, offset: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1967, line: 40, size: 384, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1966, file: !1967, line: 41, baseType: !1970, size: 384, align: 64)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 384, align: 64, elements: !334)
!1971 = !{!1972}
!1972 = !DISubrange(count: 7)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !659, file: !6, line: 463, baseType: !1974, size: 192, offset: 6592)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1975, line: 8, size: 192, elements: !1976)
!1975 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1974, file: !1975, line: 10, baseType: !7, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1974, file: !1975, line: 11, baseType: !322, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1974, file: !1975, line: 12, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1982, line: 59, size: 48, elements: !1983)
!1982 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1981, file: !1982, line: 60, baseType: !1367, size: 16)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1981, file: !1982, line: 61, baseType: !1367, size: 16, offset: 16)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1981, file: !1982, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1981, file: !1982, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1981, file: !1982, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1981, file: !1982, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !659, file: !6, line: 465, baseType: !319, size: 64, offset: 6784)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !659, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !659, file: !6, line: 470, baseType: !414, size: 128, offset: 6912)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !659, file: !6, line: 471, baseType: !1994, size: 64, offset: 7040)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1996, line: 33, size: 96, elements: !1997)
!1996 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1995, file: !1996, line: 37, baseType: !89, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1995, file: !1996, line: 43, baseType: !89, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1995, file: !1996, line: 45, baseType: !364, size: 16, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1996, line: 47, baseType: !364, size: 16, offset: 80)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !659, file: !6, line: 476, baseType: !2003, size: 64, offset: 7104)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2005)
!2005 = !{!2006, !2022, !2023, !2024}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2004, file: !6, line: 379, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2009, line: 204, baseType: !2010)
!2009 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2009, line: 197, size: 192, elements: !2011)
!2011 = !{!2012, !2014, !2015, !2016, !2018, !2020}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2010, file: !2009, line: 198, baseType: !2013, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2009, line: 21, baseType: !331)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2010, file: !2009, line: 199, baseType: !507, size: 8, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2010, file: !2009, line: 200, baseType: !507, size: 8, offset: 40)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2010, file: !2009, line: 201, baseType: !2017, size: 16, offset: 48)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2009, line: 17, baseType: !363)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2010, file: !2009, line: 202, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2009, line: 16, baseType: !367)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2010, file: !2009, line: 203, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2009, line: 22, baseType: !367)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2004, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2004, file: !6, line: 381, baseType: !609, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2004, file: !6, line: 382, baseType: !609, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !659, file: !6, line: 477, baseType: !2004, size: 256, offset: 7168)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !659, file: !6, line: 480, baseType: !2027, size: 64, offset: 7424)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !659, file: !6, line: 483, baseType: !2030, size: 64, offset: 7488)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !659, file: !6, line: 488, baseType: !609, size: 64, offset: 7552)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !659, file: !6, line: 492, baseType: !309, size: 64, offset: 7616)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !659, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !659, file: !6, line: 495, baseType: !309, size: 64, offset: 7744)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !659, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !659, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !659, file: !6, line: 500, baseType: !2039, size: 64, offset: 7872)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2041, line: 45, baseType: !2042)
!2041 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !659, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !659, file: !6, line: 504, baseType: !2045, size: 64, offset: 8000)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2048, line: 96, size: 192, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2049 = !{!2050, !2051, !2105, !2108}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2047, file: !2048, line: 97, baseType: !7, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2047, file: !2048, line: 98, baseType: !2052, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2048, line: 24, size: 3072, elements: !2054)
!2054 = !{!2055, !2057, !2058, !2059, !2060, !2074, !2075, !2076, !2077, !2089, !2090, !2091, !2102, !2103, !2104}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2053, file: !2048, line: 26, baseType: !2056, size: 128)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 128, elements: !334)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2053, file: !2048, line: 27, baseType: !2056, size: 128, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2053, file: !2048, line: 28, baseType: !89, size: 32, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2053, file: !2048, line: 31, baseType: !525, size: 32, align: 512, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2053, file: !2048, line: 32, baseType: !2061, size: 960, offset: 576)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2062, line: 206, size: 960, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2063 = !{!2064, !2065, !2068, !2070, !2071, !2073}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2061, file: !2062, line: 207, baseType: !804, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2061, file: !2062, line: 208, baseType: !2066, size: 256, offset: 64)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2067, size: 256, elements: !884)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2061, file: !2062, line: 209, baseType: !2069, size: 256, offset: 320)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !884)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2061, file: !2062, line: 213, baseType: !746, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2061, file: !2062, line: 215, baseType: !2072, size: 256, offset: 640)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !884)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2061, file: !2062, line: 216, baseType: !553, size: 8, offset: 896)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2053, file: !2048, line: 33, baseType: !319, size: 64, offset: 1536)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2053, file: !2048, line: 34, baseType: !319, size: 64, offset: 1600)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2053, file: !2048, line: 35, baseType: !1019, size: 8, offset: 1664)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2053, file: !2048, line: 36, baseType: !2078, size: 320, offset: 1728)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2079, line: 11, size: 320, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2080 = !{!2081, !2082, !2083, !2088}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2078, file: !2079, line: 16, baseType: !879, size: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2078, file: !2079, line: 17, baseType: !319, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2078, file: !2079, line: 18, baseType: !2084, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2078, file: !2079, line: 19, baseType: !329, size: 32, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2053, file: !2048, line: 37, baseType: !1389, size: 256, offset: 2048)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2053, file: !2048, line: 38, baseType: !801, size: 128, align: 64, offset: 2304)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2053, file: !2048, line: 39, baseType: !2092, size: 64, offset: 2432)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2048, line: 49, size: 768, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2093, file: !2048, line: 50, baseType: !525, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2093, file: !2048, line: 51, baseType: !2069, size: 256, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2093, file: !2048, line: 53, baseType: !2069, size: 256, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2093, file: !2048, line: 54, baseType: !319, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2093, file: !2048, line: 55, baseType: !2092, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2093, file: !2048, line: 56, baseType: !89, size: 32, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2093, file: !2048, line: 57, baseType: !89, size: 32, offset: 736)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2053, file: !2048, line: 40, baseType: !319, size: 64, offset: 2496)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2053, file: !2048, line: 42, baseType: !89, size: 32, offset: 2560)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2053, file: !2048, line: 43, baseType: !2046, size: 64, offset: 2624)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2047, file: !2048, line: 99, baseType: !2106, offset: 128)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2107, line: 211, elements: !1255)
!2107 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2047, file: !2048, line: 100, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2048, line: 63, size: 3008, elements: !2111)
!2111 = !{!2112, !2113, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2143}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2110, file: !2048, line: 64, baseType: !2092, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2110, file: !2048, line: 65, baseType: !2114, size: 192, offset: 64)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2092, size: 192, elements: !712)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2110, file: !2048, line: 67, baseType: !89, size: 32, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2110, file: !2048, line: 68, baseType: !823, size: 256, offset: 320)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2110, file: !2048, line: 69, baseType: !525, size: 32, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2110, file: !2048, line: 70, baseType: !823, size: 256, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2110, file: !2048, line: 71, baseType: !319, size: 64, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2110, file: !2048, line: 72, baseType: !319, size: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2110, file: !2048, line: 73, baseType: !319, size: 64, offset: 1024)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2110, file: !2048, line: 74, baseType: !319, size: 64, offset: 1088)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2110, file: !2048, line: 75, baseType: !319, size: 64, offset: 1152)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2110, file: !2048, line: 76, baseType: !319, size: 64, offset: 1216)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2110, file: !2048, line: 77, baseType: !319, size: 64, offset: 1280)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2110, file: !2048, line: 78, baseType: !319, size: 64, offset: 1344)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2110, file: !2048, line: 79, baseType: !1019, size: 8, offset: 1408)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2110, file: !2048, line: 80, baseType: !319, size: 64, offset: 1472)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2110, file: !2048, line: 81, baseType: !823, size: 256, offset: 1536)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2110, file: !2048, line: 82, baseType: !1835, size: 256, offset: 1792)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2110, file: !2048, line: 84, baseType: !545, size: 32, offset: 2048)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2110, file: !2048, line: 87, baseType: !319, size: 64, offset: 2112)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2110, file: !2048, line: 88, baseType: !319, size: 64, offset: 2176)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2110, file: !2048, line: 89, baseType: !2135, size: 704, offset: 2240)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1390, line: 111, size: 704, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2142}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2135, file: !1390, line: 112, baseType: !1389, size: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2135, file: !1390, line: 113, baseType: !2078, size: 320, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2135, file: !1390, line: 116, baseType: !2140, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1390, line: 18, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2135, file: !1390, line: 117, baseType: !89, size: 32, offset: 640)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2110, file: !2048, line: 90, baseType: !2046, size: 64, offset: 2944)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !659, file: !6, line: 515, baseType: !2145, size: 64, offset: 8064)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2147, line: 117, size: 128, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2146, file: !2147, line: 118, baseType: !945, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2146, file: !2147, line: 119, baseType: !945, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2146, file: !2147, line: 120, baseType: !746, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !659, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !659, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !659, file: !6, line: 520, baseType: !2155, size: 64, offset: 8192)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !659, file: !6, line: 523, baseType: !2157, size: 64, offset: 8256)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !659, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !659, file: !6, line: 525, baseType: !2162, size: 64, offset: 8384)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !659, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !659, file: !6, line: 533, baseType: !309, size: 64, offset: 8512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !659, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !659, file: !6, line: 535, baseType: !395, size: 64, offset: 8640)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !659, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !659, file: !6, line: 539, baseType: !89, size: 32, offset: 8736)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !659, file: !6, line: 540, baseType: !2172, size: 64, offset: 8768)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2174, line: 32, size: 64, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2173, file: !2174, line: 33, baseType: !945, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2173, file: !2174, line: 34, baseType: !945, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !659, file: !6, line: 563, baseType: !414, size: 128, offset: 8832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !659, file: !6, line: 565, baseType: !414, size: 128, offset: 8960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !659, file: !6, line: 568, baseType: !2181, size: 64, offset: 9088)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !659, file: !6, line: 570, baseType: !545, size: 32, offset: 9152)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !635, file: !59, line: 2382, baseType: !634, size: 64, offset: 448)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !635, file: !59, line: 2383, baseType: !875, size: 64, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !635, file: !59, line: 2385, baseType: !2188, offset: 576)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2107, line: 206, elements: !1255)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !635, file: !59, line: 2386, baseType: !2188, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !635, file: !59, line: 2387, baseType: !2188, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !635, file: !59, line: 2388, baseType: !2192, offset: 576)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, elements: !712)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !635, file: !59, line: 2390, baseType: !2188, offset: 576)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !635, file: !59, line: 2391, baseType: !2188, offset: 576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !635, file: !59, line: 2392, baseType: !2188, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !635, file: !59, line: 2393, baseType: !2188, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !621, file: !59, line: 1197, baseType: !2198, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2201)
!2201 = !{!2202, !2206, !2210, !2211, !2215, !2221, !2225, !2226, !2227, !2231, !2235, !2239, !2240, !2241, !2247, !2251, !2252, !2256, !2257, !2258, !2259, !2263, !2267, !2314, !2329, !2330}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2200, file: !59, line: 2058, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!431, !620}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2200, file: !59, line: 2059, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !431}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2200, file: !59, line: 2060, baseType: !2207, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2200, file: !59, line: 2062, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !431, !89}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2200, file: !59, line: 2063, baseType: !2216, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!89, !431, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2200, file: !59, line: 2064, baseType: !2222, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!89, !431}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2200, file: !59, line: 2065, baseType: !2207, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2200, file: !59, line: 2066, baseType: !654, size: 64, offset: 448)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2200, file: !59, line: 2067, baseType: !2228, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!89, !620, !89}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2200, file: !59, line: 2068, baseType: !2232, size: 64, offset: 576)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!89, !620, !58}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2200, file: !59, line: 2069, baseType: !2236, size: 64, offset: 640)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!89, !620}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2200, file: !59, line: 2070, baseType: !2232, size: 64, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2200, file: !59, line: 2071, baseType: !2236, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2200, file: !59, line: 2072, baseType: !2242, size: 64, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!89, !468, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2200, file: !59, line: 2073, baseType: !2248, size: 64, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!89, !620, !322, !609}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2200, file: !59, line: 2074, baseType: !654, size: 64, offset: 960)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2200, file: !59, line: 2076, baseType: !2253, size: 64, offset: 1024)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!89, !1606, !468}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2200, file: !59, line: 2077, baseType: !2253, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2200, file: !59, line: 2078, baseType: !2253, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2200, file: !59, line: 2079, baseType: !2253, size: 64, offset: 1216)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2200, file: !59, line: 2081, baseType: !2260, size: 64, offset: 1280)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!743, !620, !89, !609, !756, !630}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2200, file: !59, line: 2082, baseType: !2264, size: 64, offset: 1344)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!743, !620, !89, !583, !756, !630}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2200, file: !59, line: 2083, baseType: !2268, size: 64, offset: 1408)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2271, !431}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2299, !2300, !2301}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2273, file: !64, line: 297, baseType: !879, size: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2273, file: !64, line: 298, baseType: !414, size: 128, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2273, file: !64, line: 299, baseType: !414, size: 128, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2273, file: !64, line: 300, baseType: !414, size: 128, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2273, file: !64, line: 301, baseType: !823, size: 256, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2273, file: !64, line: 302, baseType: !525, size: 32, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2273, file: !64, line: 303, baseType: !545, size: 32, offset: 800)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2273, file: !64, line: 304, baseType: !620, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2273, file: !64, line: 305, baseType: !2284, size: 64, offset: 896)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2285)
!2285 = !{!2286, !2298}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !64, line: 69, baseType: !2287, size: 32)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !64, line: 69, size: 32, elements: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2287, file: !64, line: 70, baseType: !438, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2287, file: !64, line: 71, baseType: !448, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2287, file: !64, line: 72, baseType: !2292, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2293, line: 24, baseType: !2294)
!2293 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2293, line: 22, size: 32, elements: !2295)
!2295 = !{!2296}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2294, file: !2293, line: 23, baseType: !2297, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2293, line: 20, baseType: !444)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2284, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2273, file: !64, line: 306, baseType: !630, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2273, file: !64, line: 307, baseType: !319, size: 64, offset: 1024)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2273, file: !64, line: 308, baseType: !2302, size: 576, offset: 1088)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2302, file: !64, line: 206, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !632)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2302, file: !64, line: 207, baseType: !2305, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2302, file: !64, line: 208, baseType: !2305, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2302, file: !64, line: 209, baseType: !2305, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2302, file: !64, line: 210, baseType: !2305, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2302, file: !64, line: 211, baseType: !2305, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2302, file: !64, line: 212, baseType: !2305, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2302, file: !64, line: 213, baseType: !976, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2302, file: !64, line: 214, baseType: !976, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2200, file: !59, line: 2085, baseType: !2315, size: 64, offset: 1472)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!746, !620, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2320, line: 15, size: 256, elements: !2321)
!2320 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2321 = !{!2322, !2323, !2324, !2325, !2326}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2319, file: !2320, line: 16, baseType: !310, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2319, file: !2320, line: 19, baseType: !89, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2319, file: !2320, line: 26, baseType: !319, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2319, file: !2320, line: 33, baseType: !319, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2319, file: !2320, line: 36, baseType: !2327, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2200, file: !59, line: 2087, baseType: !2315, size: 64, offset: 1536)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2200, file: !59, line: 2089, baseType: !654, size: 64, offset: 1600)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !621, file: !59, line: 1198, baseType: !2332, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2335)
!2335 = !{!2336, !2340, !2344, !2348, !2349, !2350, !2351, !2352, !2357, !2362, !2366}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2334, file: !64, line: 325, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!89, !2272}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2334, file: !64, line: 326, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2272, !620, !89}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2334, file: !64, line: 327, baseType: !2345, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2272}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2334, file: !64, line: 328, baseType: !2337, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2334, file: !64, line: 329, baseType: !2337, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2334, file: !64, line: 330, baseType: !2337, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2334, file: !64, line: 331, baseType: !2228, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2334, file: !64, line: 334, baseType: !2353, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2356, !431}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2334, file: !64, line: 335, baseType: !2358, size: 64, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!89, !431, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2334, file: !64, line: 337, baseType: !2363, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!89, !431, !2356}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2334, file: !64, line: 339, baseType: !2367, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!89, !620, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !621, file: !59, line: 1199, baseType: !2372, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2375)
!2375 = !{!2376, !2382, !2383, !2387, !2388, !2389, !2404, !2427, !2431, !2432, !2455}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2374, file: !64, line: 431, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!89, !620, !89, !89, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2374, file: !64, line: 432, baseType: !2228, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2374, file: !64, line: 433, baseType: !2384, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!89, !620, !7}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2374, file: !64, line: 434, baseType: !2384, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2374, file: !64, line: 435, baseType: !2228, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2374, file: !64, line: 436, baseType: !2390, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!89, !620, !89, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2394, file: !64, line: 418, baseType: !89, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2394, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2394, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2394, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2394, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2394, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2394, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2394, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2374, file: !64, line: 437, baseType: !2405, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!89, !620, !2284, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2409, file: !64, line: 346, baseType: !89, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2409, file: !64, line: 347, baseType: !366, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2409, file: !64, line: 348, baseType: !366, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2409, file: !64, line: 349, baseType: !366, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2409, file: !64, line: 350, baseType: !366, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2409, file: !64, line: 351, baseType: !366, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2409, file: !64, line: 352, baseType: !366, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2409, file: !64, line: 353, baseType: !820, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2409, file: !64, line: 355, baseType: !820, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2409, file: !64, line: 356, baseType: !89, size: 32, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2409, file: !64, line: 357, baseType: !89, size: 32, offset: 608)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2409, file: !64, line: 358, baseType: !366, size: 64, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2409, file: !64, line: 359, baseType: !366, size: 64, offset: 704)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2409, file: !64, line: 360, baseType: !366, size: 64, offset: 768)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2409, file: !64, line: 361, baseType: !820, size: 64, offset: 832)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2409, file: !64, line: 362, baseType: !89, size: 32, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2374, file: !64, line: 438, baseType: !2428, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!89, !620, !2370, !2408}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2374, file: !64, line: 440, baseType: !2405, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2374, file: !64, line: 441, baseType: !2433, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!89, !620, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2437, file: !64, line: 412, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2437, file: !64, line: 413, baseType: !2441, size: 1344, offset: 64)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2442, size: 1344, elements: !712)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2454}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !64, line: 398, baseType: !7, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2442, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2442, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2442, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2442, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2442, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2442, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2442, file: !64, line: 406, baseType: !368, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2442, file: !64, line: 407, baseType: !2453, size: 64, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !311, line: 132, baseType: !366)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2442, file: !64, line: 408, baseType: !2453, size: 64, offset: 384)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2374, file: !64, line: 442, baseType: !2384, size: 64, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !621, file: !59, line: 1200, baseType: !2457, size: 64, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2459)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !621, file: !59, line: 1201, baseType: !319, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !621, file: !59, line: 1202, baseType: !319, size: 64, offset: 704)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !621, file: !59, line: 1203, baseType: !319, size: 64, offset: 768)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !621, file: !59, line: 1204, baseType: !468, size: 64, offset: 832)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !621, file: !59, line: 1205, baseType: !960, size: 320, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !621, file: !59, line: 1206, baseType: !89, size: 32, offset: 1216)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !621, file: !59, line: 1207, baseType: !545, size: 32, offset: 1248)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !621, file: !59, line: 1209, baseType: !309, size: 64, offset: 1280)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !621, file: !59, line: 1211, baseType: !2469, size: 64, offset: 1344)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !621, file: !59, line: 1223, baseType: !2474, size: 64, offset: 1408)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !485, line: 34, size: 64, elements: !2475)
!2475 = !{!2476}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2474, file: !485, line: 35, baseType: !488, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !621, file: !59, line: 1224, baseType: !414, size: 128, offset: 1472)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !621, file: !59, line: 1225, baseType: !2479, size: 64, offset: 1600)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !621, file: !59, line: 1226, baseType: !2482, size: 64, offset: 1664)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !621, file: !59, line: 1227, baseType: !2485, size: 64, offset: 1728)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !621, file: !59, line: 1228, baseType: !2488, size: 64, offset: 1792)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !621, file: !59, line: 1229, baseType: !879, size: 128, offset: 1856)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !621, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !621, file: !59, line: 1231, baseType: !2493, size: 2496, offset: 2048)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2499, !2531}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2493, file: !64, line: 522, baseType: !7, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2493, file: !64, line: 523, baseType: !960, size: 320, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2493, file: !64, line: 524, baseType: !2498, size: 192, offset: 384)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !712)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2493, file: !64, line: 525, baseType: !2500, size: 1728, offset: 576)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2501, size: 1728, elements: !712)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2502)
!2502 = !{!2503, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2501, file: !64, line: 223, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2506)
!2506 = !{!2507, !2508, !2521, !2522}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2505, file: !64, line: 446, baseType: !89, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2505, file: !64, line: 447, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2511, file: !64, line: 313, baseType: !2228, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2511, file: !64, line: 314, baseType: !2228, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2511, file: !64, line: 315, baseType: !2228, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2511, file: !64, line: 316, baseType: !2228, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2511, file: !64, line: 317, baseType: !2337, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2511, file: !64, line: 318, baseType: !2337, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2511, file: !64, line: 319, baseType: !2337, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2511, file: !64, line: 320, baseType: !2367, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2505, file: !64, line: 448, baseType: !658, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2505, file: !64, line: 449, baseType: !2504, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2501, file: !64, line: 224, baseType: !89, size: 32, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2501, file: !64, line: 226, baseType: !414, size: 128, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2501, file: !64, line: 227, baseType: !319, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2501, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2501, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2501, file: !64, line: 230, baseType: !2305, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2501, file: !64, line: 231, baseType: !2305, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2501, file: !64, line: 232, baseType: !309, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2493, file: !64, line: 526, baseType: !2532, size: 192, offset: 2304)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 192, elements: !712)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !621, file: !59, line: 1233, baseType: !2534, size: 2368, offset: 4544)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2535)
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2534, file: !59, line: 1185, baseType: !364, size: 16)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2534, file: !59, line: 1186, baseType: !364, size: 16, offset: 16)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2534, file: !59, line: 1187, baseType: !2539, size: 2304, offset: 64)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 2304, elements: !712)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2541, line: 12, size: 768, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2542 = !{!2543, !2551, !2552, !3685, !3686}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2540, file: !2541, line: 13, baseType: !2544, size: 384)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2545, line: 17, size: 384, elements: !2546)
!2545 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2546 = !{!2547, !2548, !2549, !2550}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2544, file: !2545, line: 18, baseType: !89, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2544, file: !2545, line: 19, baseType: !89, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2544, file: !2545, line: 20, baseType: !888, size: 192, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2544, file: !2545, line: 22, baseType: !801, size: 128, align: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2540, file: !2541, line: 14, baseType: !1933, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2540, file: !2541, line: 15, baseType: !2553, size: 64, offset: 448)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2554, line: 16, size: 64, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2555 = !{!2556}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2553, file: !2554, line: 17, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1583, line: 746, size: 58368, elements: !2559)
!2559 = !{!2560, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2640, !2651, !2743, !2747, !2750, !2781, !2782, !2783, !2784, !2788, !2790, !2791, !2792, !2793, !2794, !2795, !2806, !2807, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2824, !2825, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2913, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2961, !2967, !2968, !2969, !2970, !2971, !2975, !2978, !2985, !2990, !2993, !2996, !2999, !3002, !3140, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3178, !3179, !3180, !3189, !3197, !3198, !3199, !3200, !3201, !3206, !3207, !3208, !3211, !3212, !3215, !3218, !3221, !3229, !3232, !3233, !3319, !3320, !3321, !3322, !3323, !3328, !3329, !3330, !3331, !3334, !3335, !3338, !3341, !3342, !3345, !3346, !3347, !3350, !3351, !3352, !3353, !3354, !3355, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3387, !3388, !3394, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3406, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3514, !3515, !3516}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2558, file: !1583, line: 752, baseType: !2561, size: 192)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2562, line: 56, size: 192, elements: !2563)
!2562 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2563 = !{!2564, !2565, !2566, !2567}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2561, file: !2562, line: 57, baseType: !319, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2561, file: !2562, line: 58, baseType: !319, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2561, file: !2562, line: 59, baseType: !329, size: 32, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2561, file: !2562, line: 61, baseType: !329, size: 32, offset: 160)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2558, file: !1583, line: 754, baseType: !7, size: 32, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2558, file: !1583, line: 767, baseType: !309, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2558, file: !1583, line: 768, baseType: !866, size: 32, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2558, file: !1583, line: 770, baseType: !7, size: 32, offset: 352)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2558, file: !1583, line: 771, baseType: !7, size: 32, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2558, file: !1583, line: 774, baseType: !89, size: 32, offset: 416)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2558, file: !1583, line: 775, baseType: !2575, size: 128, offset: 448)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2576, line: 58, size: 128, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2577 = !{!2578, !2579, !2584, !2585}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2575, file: !2576, line: 59, baseType: !795, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !2576, line: 60, baseType: !2580, size: 32, offset: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !2576, line: 60, size: 32, elements: !2581)
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2580, file: !2576, line: 61, baseType: !7, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2580, file: !2576, line: 62, baseType: !545, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2575, file: !2576, line: 65, baseType: !362, size: 16, offset: 96)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2575, file: !2576, line: 65, baseType: !362, size: 16, offset: 112)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2558, file: !1583, line: 776, baseType: !7, size: 32, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2558, file: !1583, line: 777, baseType: !319, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2558, file: !1583, line: 778, baseType: !2557, size: 64, offset: 704)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2558, file: !1583, line: 787, baseType: !89, size: 32, offset: 768)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2558, file: !1583, line: 788, baseType: !89, size: 32, offset: 800)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2558, file: !1583, line: 790, baseType: !89, size: 32, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2558, file: !1583, line: 792, baseType: !89, size: 32, offset: 864)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2558, file: !1583, line: 793, baseType: !89, size: 32, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2558, file: !1583, line: 794, baseType: !89, size: 32, offset: 928)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2558, file: !1583, line: 795, baseType: !7, size: 32, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2558, file: !1583, line: 797, baseType: !2597, size: 2048, offset: 1024)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1583, line: 551, size: 2048, elements: !2598)
!2598 = !{!2599, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2619, !2622, !2623, !2624}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2597, file: !1583, line: 553, baseType: !2600, size: 128)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1583, line: 411, size: 128, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2600, file: !1583, line: 412, baseType: !319, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2600, file: !1583, line: 413, baseType: !329, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2597, file: !1583, line: 554, baseType: !952, size: 192, align: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2597, file: !1583, line: 555, baseType: !366, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2597, file: !1583, line: 556, baseType: !366, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2597, file: !1583, line: 558, baseType: !414, size: 128, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2597, file: !1583, line: 559, baseType: !7, size: 32, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2597, file: !1583, line: 561, baseType: !366, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2597, file: !1583, line: 562, baseType: !366, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2597, file: !1583, line: 563, baseType: !366, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2597, file: !1583, line: 564, baseType: !366, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2597, file: !1583, line: 565, baseType: !820, size: 64, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2597, file: !1583, line: 566, baseType: !366, size: 64, offset: 960)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2597, file: !1583, line: 568, baseType: !366, size: 64, offset: 1024)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2597, file: !1583, line: 571, baseType: !89, size: 32, offset: 1088)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2597, file: !1583, line: 572, baseType: !2618, size: 64, offset: 1152)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2597, file: !1583, line: 574, baseType: !2620, size: 64, offset: 1216)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1583, line: 49, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2597, file: !1583, line: 576, baseType: !2620, size: 64, offset: 1280)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2597, file: !1583, line: 578, baseType: !319, size: 64, offset: 1344)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2597, file: !1583, line: 588, baseType: !2625, size: 512, align: 512, offset: 1536)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1583, line: 497, size: 512, align: 512, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2625, file: !1583, line: 498, baseType: !366, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2625, file: !1583, line: 499, baseType: !366, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2625, file: !1583, line: 500, baseType: !366, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2625, file: !1583, line: 501, baseType: !329, size: 32, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2625, file: !1583, line: 502, baseType: !329, size: 32, offset: 224)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2625, file: !1583, line: 503, baseType: !319, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2625, file: !1583, line: 504, baseType: !319, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2625, file: !1583, line: 505, baseType: !319, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2625, file: !1583, line: 506, baseType: !2636, size: 64, align: 64, offset: 448)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1583, line: 445, size: 64, align: 64, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2636, file: !1583, line: 446, baseType: !7, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2636, file: !1583, line: 447, baseType: !7, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2558, file: !1583, line: 798, baseType: !2641, size: 384, offset: 3072)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1583, line: 592, size: 384, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2641, file: !1583, line: 593, baseType: !414, size: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2641, file: !1583, line: 594, baseType: !319, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2641, file: !1583, line: 595, baseType: !319, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2641, file: !1583, line: 596, baseType: !7, size: 32, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2641, file: !1583, line: 597, baseType: !364, size: 16, offset: 288)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2641, file: !1583, line: 598, baseType: !364, size: 16, offset: 304)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2641, file: !1583, line: 600, baseType: !2650, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2558, file: !1583, line: 799, baseType: !2652, size: 1792, offset: 3456)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1583, line: 610, size: 1792, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2740, !2741}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2652, file: !1583, line: 611, baseType: !952, size: 192, align: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2652, file: !1583, line: 618, baseType: !366, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2652, file: !1583, line: 619, baseType: !366, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2652, file: !1583, line: 620, baseType: !366, size: 64, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2652, file: !1583, line: 621, baseType: !366, size: 64, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2652, file: !1583, line: 622, baseType: !366, size: 64, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2652, file: !1583, line: 629, baseType: !820, size: 64, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2652, file: !1583, line: 630, baseType: !366, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2652, file: !1583, line: 631, baseType: !7, size: 32, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2652, file: !1583, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2652, file: !1583, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2652, file: !1583, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2652, file: !1583, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2652, file: !1583, line: 662, baseType: !2668, size: 512, offset: 704)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !2669)
!2669 = !{!2670, !2678, !2679, !2684, !2736, !2737, !2738, !2739}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2668, file: !70, line: 119, baseType: !2671, size: 256)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2672, line: 9, size: 256, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2671, file: !2672, line: 10, baseType: !952, size: 192, align: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2671, file: !2672, line: 11, baseType: !2676, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2677, line: 29, baseType: !820)
!2677 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2668, file: !70, line: 120, baseType: !2676, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2668, file: !70, line: 121, baseType: !2680, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!69, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2668, file: !70, line: 122, baseType: !2685, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !2687)
!2687 = !{!2688, !2713, !2714, !2717, !2722, !2723, !2731, !2735}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2686, file: !70, line: 160, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2690, file: !70, line: 216, baseType: !828, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2690, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2690, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2690, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2690, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2690, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2690, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2690, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2690, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2690, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2690, file: !70, line: 227, baseType: !364, size: 16, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2690, file: !70, line: 228, baseType: !364, size: 16, offset: 208)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2690, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2690, file: !70, line: 235, baseType: !2676, size: 64, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2690, file: !70, line: 236, baseType: !2683, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2690, file: !70, line: 237, baseType: !2676, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2690, file: !70, line: 238, baseType: !2683, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2690, file: !70, line: 239, baseType: !2710, size: 4096, align: 512, offset: 512)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2686, size: 4096, align: 512, elements: !2711)
!2711 = !{!2712}
!2712 = !DISubrange(count: 8)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2686, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2686, file: !70, line: 162, baseType: !2715, size: 32, offset: 96)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !311, line: 32, baseType: !2716)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !445, line: 96, baseType: !89)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2686, file: !70, line: 163, baseType: !2718, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !475, line: 274, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !475, line: 274, size: 32, elements: !2720)
!2720 = !{!2721}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2719, file: !475, line: 274, baseType: !479, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2686, file: !70, line: 164, baseType: !2683, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2686, file: !70, line: 165, baseType: !2724, size: 128, offset: 256)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2672, line: 14, size: 128, elements: !2725)
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2724, file: !2672, line: 15, baseType: !2727, size: 128)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !953, line: 26, size: 128, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2727, file: !953, line: 27, baseType: !1743, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2727, file: !953, line: 28, baseType: !957, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2686, file: !70, line: 166, baseType: !2732, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2676}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2686, file: !70, line: 167, baseType: !2676, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2668, file: !70, line: 123, baseType: !553, size: 8, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2668, file: !70, line: 124, baseType: !553, size: 8, offset: 456)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2668, file: !70, line: 125, baseType: !553, size: 8, offset: 464)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2668, file: !70, line: 126, baseType: !553, size: 8, offset: 472)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2652, file: !1583, line: 671, baseType: !2668, size: 512, offset: 1216)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2652, file: !1583, line: 679, baseType: !2742, size: 64, offset: 1728)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2558, file: !1583, line: 800, baseType: !2744, size: 64, offset: 5248)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1583, line: 800, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2558, file: !1583, line: 809, baseType: !2748, size: 64, offset: 5312)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1583, line: 70, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2558, file: !1583, line: 825, baseType: !2751, size: 2048, align: 512, offset: 5632)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1583, line: 509, size: 2048, align: 512, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2751, file: !1583, line: 511, baseType: !366, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2751, file: !1583, line: 512, baseType: !366, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2751, file: !1583, line: 513, baseType: !366, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2751, file: !1583, line: 514, baseType: !366, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2751, file: !1583, line: 515, baseType: !366, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2751, file: !1583, line: 516, baseType: !366, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2751, file: !1583, line: 518, baseType: !366, size: 64, offset: 384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2751, file: !1583, line: 519, baseType: !366, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2751, file: !1583, line: 520, baseType: !820, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2751, file: !1583, line: 522, baseType: !366, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2751, file: !1583, line: 523, baseType: !366, size: 64, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2751, file: !1583, line: 524, baseType: !820, size: 64, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2751, file: !1583, line: 526, baseType: !820, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2751, file: !1583, line: 527, baseType: !366, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2751, file: !1583, line: 529, baseType: !366, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2751, file: !1583, line: 530, baseType: !366, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2751, file: !1583, line: 531, baseType: !366, size: 64, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2751, file: !1583, line: 532, baseType: !366, size: 64, offset: 1088)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2751, file: !1583, line: 533, baseType: !366, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2751, file: !1583, line: 535, baseType: !366, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2751, file: !1583, line: 536, baseType: !366, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2751, file: !1583, line: 537, baseType: !366, size: 64, offset: 1344)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2751, file: !1583, line: 538, baseType: !366, size: 64, offset: 1408)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2751, file: !1583, line: 539, baseType: !366, size: 64, offset: 1472)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2751, file: !1583, line: 540, baseType: !366, size: 64, offset: 1536)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2751, file: !1583, line: 541, baseType: !366, size: 64, offset: 1600)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2751, file: !1583, line: 542, baseType: !366, size: 64, offset: 1664)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2751, file: !1583, line: 543, baseType: !366, size: 64, offset: 1728)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2558, file: !1583, line: 833, baseType: !7, size: 32, offset: 7680)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2558, file: !1583, line: 836, baseType: !7, size: 32, offset: 7712)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2558, file: !1583, line: 837, baseType: !89, size: 32, offset: 7744)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2558, file: !1583, line: 838, baseType: !2785, size: 64, offset: 7808)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2787)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !315, line: 19, baseType: !314)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2558, file: !1583, line: 839, baseType: !2789, size: 64, offset: 7872)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2558, file: !1583, line: 840, baseType: !2787, size: 64, offset: 7936)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2558, file: !1583, line: 841, baseType: !309, size: 64, offset: 8000)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2558, file: !1583, line: 843, baseType: !364, size: 16, offset: 8064)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2558, file: !1583, line: 845, baseType: !364, size: 16, offset: 8080)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2558, file: !1583, line: 848, baseType: !89, size: 32, offset: 8096)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2558, file: !1583, line: 849, baseType: !2796, size: 32, offset: 8128)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1583, line: 718, size: 32, elements: !2797)
!2797 = !{!2798, !2805}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2796, file: !1583, line: 724, baseType: !2799, size: 32)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2796, file: !1583, line: 719, size: 32, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2799, file: !1583, line: 720, baseType: !553, size: 8)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2799, file: !1583, line: 721, baseType: !553, size: 8, offset: 8)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2799, file: !1583, line: 722, baseType: !553, size: 8, offset: 16)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2799, file: !1583, line: 723, baseType: !553, size: 8, offset: 24)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2796, file: !1583, line: 725, baseType: !329, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2558, file: !1583, line: 850, baseType: !414, size: 128, offset: 8192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2558, file: !1583, line: 851, baseType: !2808, size: 64, offset: 8320)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1583, line: 60, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2558, file: !1583, line: 855, baseType: !319, size: 64, offset: 8384)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2558, file: !1583, line: 856, baseType: !553, size: 8, offset: 8448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2558, file: !1583, line: 857, baseType: !553, size: 8, offset: 8456)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2558, file: !1583, line: 858, baseType: !89, size: 32, offset: 8480)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2558, file: !1583, line: 859, baseType: !414, size: 128, offset: 8512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2558, file: !1583, line: 860, baseType: !89, size: 32, offset: 8640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2558, file: !1583, line: 861, baseType: !414, size: 128, offset: 8704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2558, file: !1583, line: 873, baseType: !2818, size: 256, offset: 8832)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1583, line: 376, size: 256, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2823}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2818, file: !1583, line: 381, baseType: !319, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2818, file: !1583, line: 384, baseType: !368, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2818, file: !1583, line: 389, baseType: !368, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2818, file: !1583, line: 392, baseType: !368, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2558, file: !1583, line: 875, baseType: !414, size: 128, offset: 9088)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2558, file: !1583, line: 877, baseType: !2826, size: 320, offset: 9216)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2827, line: 86, size: 320, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2826, file: !2827, line: 87, baseType: !89, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2826, file: !2827, line: 88, baseType: !414, size: 128, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2826, file: !2827, line: 89, baseType: !414, size: 128, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2558, file: !1583, line: 878, baseType: !952, size: 192, align: 64, offset: 9536)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2558, file: !1583, line: 881, baseType: !1234, size: 64, offset: 9728)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2558, file: !1583, line: 882, baseType: !1234, size: 64, offset: 9792)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2558, file: !1583, line: 884, baseType: !89, size: 32, offset: 9856)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2558, file: !1583, line: 885, baseType: !89, size: 32, offset: 9888)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2558, file: !1583, line: 886, baseType: !89, size: 32, offset: 9920)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2558, file: !1583, line: 888, baseType: !89, size: 32, offset: 9952)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2558, file: !1583, line: 890, baseType: !319, size: 64, offset: 9984)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2558, file: !1583, line: 893, baseType: !7, size: 32, offset: 10048)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2558, file: !1583, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2558, file: !1583, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2558, file: !1583, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2558, file: !1583, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2558, file: !1583, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2558, file: !1583, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2558, file: !1583, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2558, file: !1583, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2558, file: !1583, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2558, file: !1583, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2558, file: !1583, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2558, file: !1583, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2558, file: !1583, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2558, file: !1583, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2558, file: !1583, line: 969, baseType: !319, size: 64, offset: 10176)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2558, file: !1583, line: 971, baseType: !2857, size: 448, offset: 10240)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2858)
!2858 = !{!2859, !2860, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2857, file: !75, line: 26, baseType: !319, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2857, file: !75, line: 27, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!746, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !75, line: 28, baseType: !2866, size: 320, offset: 128)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2857, file: !75, line: 28, size: 320, elements: !2867)
!2867 = !{!2868, !2878, !2903}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2866, file: !75, line: 37, baseType: !2869, size: 320)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !75, line: 30, size: 320, elements: !2870)
!2870 = !{!2871, !2873, !2874, !2875, !2876, !2877}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2869, file: !75, line: 31, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2869, file: !75, line: 32, baseType: !329, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2869, file: !75, line: 33, baseType: !329, size: 32, offset: 96)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2869, file: !75, line: 34, baseType: !329, size: 32, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2869, file: !75, line: 35, baseType: !366, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2869, file: !75, line: 36, baseType: !2872, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2866, file: !75, line: 47, baseType: !2879, size: 192)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !75, line: 39, size: 192, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2902}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2879, file: !75, line: 40, baseType: !2715, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2879, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !75, line: 42, baseType: !2884, size: 64, offset: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2879, file: !75, line: 42, size: 64, elements: !2885)
!2885 = !{!2886, !2894}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2884, file: !75, line: 43, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2889, line: 7, size: 128, elements: !2890)
!2889 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2890 = !{!2891, !2893}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2888, file: !2889, line: 8, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !445, line: 93, baseType: !632)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2888, file: !2889, line: 9, baseType: !632, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2884, file: !75, line: 44, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2897, line: 7, size: 64, elements: !2898)
!2897 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2898 = !{!2899, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2896, file: !2897, line: 8, baseType: !2900, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2897, line: 5, baseType: !945)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2896, file: !2897, line: 9, baseType: !945, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2879, file: !75, line: 46, baseType: !366, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2866, file: !75, line: 55, baseType: !2904, size: 256)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !75, line: 49, size: 256, elements: !2905)
!2905 = !{!2906, !2909, !2910, !2911, !2912}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2904, file: !75, line: 50, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2904, file: !75, line: 51, baseType: !89, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2904, file: !75, line: 52, baseType: !89, size: 32, offset: 96)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2904, file: !75, line: 53, baseType: !319, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2904, file: !75, line: 54, baseType: !319, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2558, file: !1583, line: 973, baseType: !2914, size: 32, offset: 10688)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !311, line: 27, baseType: !2915)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !445, line: 28, baseType: !89)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2558, file: !1583, line: 974, baseType: !2914, size: 32, offset: 10720)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2558, file: !1583, line: 978, baseType: !319, size: 64, offset: 10752)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2558, file: !1583, line: 987, baseType: !2557, size: 64, offset: 10816)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2558, file: !1583, line: 990, baseType: !2557, size: 64, offset: 10880)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2558, file: !1583, line: 995, baseType: !414, size: 128, offset: 10944)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2558, file: !1583, line: 996, baseType: !414, size: 128, offset: 11072)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2558, file: !1583, line: 997, baseType: !2557, size: 64, offset: 11200)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2558, file: !1583, line: 1005, baseType: !414, size: 128, offset: 11264)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2558, file: !1583, line: 1006, baseType: !414, size: 128, offset: 11392)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2558, file: !1583, line: 1009, baseType: !862, size: 64, offset: 11520)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2558, file: !1583, line: 1010, baseType: !2927, size: 512, offset: 11584)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 512, elements: !884)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2558, file: !1583, line: 1011, baseType: !414, size: 128, offset: 12096)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2558, file: !1583, line: 1012, baseType: !414, size: 128, offset: 12224)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2558, file: !1583, line: 1014, baseType: !1834, size: 64, offset: 12352)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2558, file: !1583, line: 1017, baseType: !322, size: 64, offset: 12416)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2558, file: !1583, line: 1020, baseType: !322, size: 64, offset: 12480)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2558, file: !1583, line: 1023, baseType: !309, size: 64, offset: 12544)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2558, file: !1583, line: 1025, baseType: !366, size: 64, offset: 12608)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2558, file: !1583, line: 1026, baseType: !366, size: 64, offset: 12672)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2558, file: !1583, line: 1031, baseType: !366, size: 64, offset: 12736)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2558, file: !1583, line: 1032, baseType: !2938, size: 192, offset: 12800)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1583, line: 324, size: 192, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2938, file: !1583, line: 326, baseType: !366, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2938, file: !1583, line: 327, baseType: !366, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2938, file: !1583, line: 328, baseType: !828, size: 32, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2558, file: !1583, line: 1041, baseType: !319, size: 64, offset: 12992)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2558, file: !1583, line: 1042, baseType: !319, size: 64, offset: 13056)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2558, file: !1583, line: 1045, baseType: !366, size: 64, offset: 13120)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2558, file: !1583, line: 1048, baseType: !366, size: 64, offset: 13184)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2558, file: !1583, line: 1051, baseType: !319, size: 64, offset: 13248)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2558, file: !1583, line: 1052, baseType: !319, size: 64, offset: 13312)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2558, file: !1583, line: 1055, baseType: !2950, size: 640, offset: 13376)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2951, line: 132, size: 640, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2952 = !{!2953, !2959, !2960}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2950, file: !2951, line: 133, baseType: !2954, size: 576)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 576, elements: !712)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2951, line: 117, size: 192, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2955, file: !2951, line: 118, baseType: !366, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2955, file: !2951, line: 119, baseType: !2724, size: 128, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2950, file: !2951, line: 134, baseType: !7, size: 32, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2950, file: !2951, line: 135, baseType: !7, size: 32, offset: 608)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2558, file: !1583, line: 1058, baseType: !2962, size: 448, offset: 14016)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2951, line: 144, size: 448, elements: !2963)
!2963 = !{!2964, !2965, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2962, file: !2951, line: 145, baseType: !801, size: 128, align: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2962, file: !2951, line: 146, baseType: !823, size: 256, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2962, file: !2951, line: 147, baseType: !7, size: 32, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2558, file: !1583, line: 1064, baseType: !910, size: 64, offset: 14464)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2558, file: !1583, line: 1067, baseType: !910, size: 64, offset: 14528)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2558, file: !1583, line: 1070, baseType: !910, size: 64, offset: 14592)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2558, file: !1583, line: 1074, baseType: !937, size: 64, offset: 14656)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2558, file: !1583, line: 1084, baseType: !2972, size: 128, offset: 14720)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 128, elements: !2973)
!2973 = !{!2974}
!2974 = !DISubrange(count: 16)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2558, file: !1583, line: 1086, baseType: !2976, size: 64, offset: 14848)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1583, line: 55, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2558, file: !1583, line: 1089, baseType: !2979, size: 64, offset: 14912)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2980, line: 12, size: 64, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2979, file: !2980, line: 13, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2980, line: 8, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2558, file: !1583, line: 1090, baseType: !2986, size: 128, offset: 14976)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2987, line: 13, size: 128, elements: !2988)
!2987 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2986, file: !2987, line: 14, baseType: !414, size: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2558, file: !1583, line: 1097, baseType: !2991, size: 64, offset: 15104)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1583, line: 50, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2558, file: !1583, line: 1100, baseType: !2994, size: 64, offset: 15168)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1583, line: 1100, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2558, file: !1583, line: 1103, baseType: !2997, size: 64, offset: 15232)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1583, line: 53, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2558, file: !1583, line: 1107, baseType: !3000, size: 64, offset: 15296)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1583, line: 56, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2558, file: !1583, line: 1110, baseType: !3003, size: 64, offset: 15360)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3005, line: 93, size: 8768, elements: !3006)
!3005 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3054, !3063, !3064, !3066, !3067, !3068, !3071, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3109, !3110, !3117, !3127, !3130, !3131, !3134, !3135, !3136, !3137, !3138, !3139}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3004, file: !3005, line: 94, baseType: !866, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3004, file: !3005, line: 95, baseType: !545, size: 32, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3004, file: !3005, line: 96, baseType: !89, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3004, file: !3005, line: 97, baseType: !89, size: 32, offset: 96)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3004, file: !3005, line: 98, baseType: !414, size: 128, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3004, file: !3005, line: 100, baseType: !888, size: 192, offset: 256)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3004, file: !3005, line: 103, baseType: !2557, size: 64, offset: 448)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3004, file: !3005, line: 106, baseType: !3015, size: 192, offset: 512)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1107, line: 32, size: 192, elements: !3016)
!3016 = !{!3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3015, file: !1107, line: 33, baseType: !414, size: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3015, file: !1107, line: 34, baseType: !3019, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3020, line: 25, baseType: !3021)
!3020 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3020, line: 23, size: 64, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3021, file: !3020, line: 24, baseType: !318, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3004, file: !3005, line: 109, baseType: !875, size: 64, offset: 704)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3004, file: !3005, line: 112, baseType: !89, size: 32, offset: 768)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3004, file: !3005, line: 114, baseType: !89, size: 32, offset: 800)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3004, file: !3005, line: 115, baseType: !2557, size: 64, offset: 832)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3004, file: !3005, line: 118, baseType: !89, size: 32, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3004, file: !3005, line: 119, baseType: !7, size: 32, offset: 928)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3004, file: !3005, line: 121, baseType: !3031, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3005, line: 80, size: 448, elements: !3033)
!3033 = !{!3034, !3035, !3041}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3032, file: !3005, line: 81, baseType: !545, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3032, file: !3005, line: 82, baseType: !3036, size: 128, offset: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3005, line: 75, size: 128, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3036, file: !3005, line: 76, baseType: !2557, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3036, file: !3005, line: 77, baseType: !3040, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3032, file: !3005, line: 83, baseType: !1835, size: 256, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3004, file: !3005, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3004, file: !3005, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3004, file: !3005, line: 138, baseType: !7, size: 32, offset: 1056)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3004, file: !3005, line: 139, baseType: !414, size: 128, offset: 1088)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3004, file: !3005, line: 142, baseType: !2668, size: 512, offset: 1216)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3004, file: !3005, line: 143, baseType: !2676, size: 64, offset: 1728)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3004, file: !3005, line: 150, baseType: !3049, size: 256, offset: 1792)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3050, size: 256, elements: !334)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3005, line: 38, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3050, file: !3005, line: 39, baseType: !366, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3050, file: !3005, line: 40, baseType: !366, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3004, file: !3005, line: 156, baseType: !3055, size: 192, offset: 2048)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3005, line: 66, size: 192, elements: !3056)
!3056 = !{!3057}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3055, file: !3005, line: 67, baseType: !3058, size: 192)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3005, line: 47, size: 192, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3058, file: !3005, line: 48, baseType: !816, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3058, file: !3005, line: 49, baseType: !816, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3058, file: !3005, line: 50, baseType: !816, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3004, file: !3005, line: 160, baseType: !2950, size: 640, offset: 2240)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3004, file: !3005, line: 163, baseType: !3065, size: 256, offset: 2880)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 256, elements: !884)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3004, file: !3005, line: 169, baseType: !862, size: 64, offset: 3136)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3004, file: !3005, line: 172, baseType: !89, size: 32, offset: 3200)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3004, file: !3005, line: 174, baseType: !3069, size: 64, offset: 3264)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3005, line: 174, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3004, file: !3005, line: 185, baseType: !3072, size: 64, offset: 3328)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !475, line: 860, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 853, size: 64, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3073, file: !475, line: 858, baseType: !474, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3073, file: !475, line: 859, baseType: !525, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3004, file: !3005, line: 186, baseType: !366, size: 64, offset: 3392)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3004, file: !3005, line: 186, baseType: !366, size: 64, offset: 3456)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3004, file: !3005, line: 186, baseType: !366, size: 64, offset: 3520)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3004, file: !3005, line: 186, baseType: !366, size: 64, offset: 3584)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3004, file: !3005, line: 187, baseType: !366, size: 64, offset: 3648)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3004, file: !3005, line: 188, baseType: !366, size: 64, offset: 3712)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3004, file: !3005, line: 189, baseType: !2938, size: 192, offset: 3776)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3004, file: !3005, line: 190, baseType: !319, size: 64, offset: 3968)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3004, file: !3005, line: 190, baseType: !319, size: 64, offset: 4032)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3004, file: !3005, line: 190, baseType: !319, size: 64, offset: 4096)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3004, file: !3005, line: 190, baseType: !319, size: 64, offset: 4160)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3004, file: !3005, line: 191, baseType: !319, size: 64, offset: 4224)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3004, file: !3005, line: 191, baseType: !319, size: 64, offset: 4288)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3004, file: !3005, line: 191, baseType: !319, size: 64, offset: 4352)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3004, file: !3005, line: 191, baseType: !319, size: 64, offset: 4416)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3004, file: !3005, line: 192, baseType: !319, size: 64, offset: 4480)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3004, file: !3005, line: 192, baseType: !319, size: 64, offset: 4544)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3004, file: !3005, line: 192, baseType: !319, size: 64, offset: 4608)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3004, file: !3005, line: 192, baseType: !319, size: 64, offset: 4672)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3004, file: !3005, line: 193, baseType: !319, size: 64, offset: 4736)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3004, file: !3005, line: 193, baseType: !319, size: 64, offset: 4800)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3004, file: !3005, line: 194, baseType: !3099, size: 448, offset: 4864)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3100, line: 12, size: 448, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3099, file: !3100, line: 15, baseType: !366, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3099, file: !3100, line: 17, baseType: !366, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3099, file: !3100, line: 19, baseType: !366, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3099, file: !3100, line: 21, baseType: !366, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3099, file: !3100, line: 29, baseType: !366, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3099, file: !3100, line: 35, baseType: !366, size: 64, offset: 320)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3099, file: !3100, line: 44, baseType: !366, size: 64, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3004, file: !3005, line: 202, baseType: !368, size: 64, offset: 5312)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3004, file: !3005, line: 213, baseType: !3111, size: 2048, offset: 5376)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3112, size: 2048, elements: !2973)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3113, line: 43, size: 128, elements: !3114)
!3113 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3112, file: !3113, line: 44, baseType: !758, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3112, file: !3113, line: 45, baseType: !758, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3004, file: !3005, line: 216, baseType: !3118, size: 448, offset: 7424)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3005, line: 30, size: 448, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3118, file: !3005, line: 31, baseType: !89, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3118, file: !3005, line: 32, baseType: !746, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3118, file: !3005, line: 33, baseType: !319, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3118, file: !3005, line: 34, baseType: !366, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3118, file: !3005, line: 34, baseType: !366, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3118, file: !3005, line: 35, baseType: !319, size: 64, offset: 320)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3118, file: !3005, line: 35, baseType: !319, size: 64, offset: 384)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3004, file: !3005, line: 219, baseType: !3128, size: 64, offset: 7872)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3005, line: 219, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3004, file: !3005, line: 222, baseType: !7, size: 32, offset: 7936)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3004, file: !3005, line: 223, baseType: !3132, size: 64, offset: 8000)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3005, line: 223, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3004, file: !3005, line: 230, baseType: !1019, size: 8, offset: 8064)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3004, file: !3005, line: 231, baseType: !988, size: 16, offset: 8080)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3004, file: !3005, line: 232, baseType: !988, size: 16, offset: 8096)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3004, file: !3005, line: 234, baseType: !1234, size: 64, offset: 8128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3004, file: !3005, line: 237, baseType: !823, size: 256, offset: 8192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3004, file: !3005, line: 243, baseType: !960, size: 320, offset: 8448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2558, file: !1583, line: 1111, baseType: !3141, size: 64, offset: 15424)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3005, line: 20, size: 16640, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3142, file: !3005, line: 21, baseType: !525, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3142, file: !3005, line: 22, baseType: !866, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3142, file: !3005, line: 23, baseType: !888, size: 192, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3142, file: !3005, line: 24, baseType: !3148, size: 16384, offset: 256)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3149, size: 16384, elements: !716)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1107, line: 51, size: 256, elements: !3150)
!3150 = !{!3151}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3149, file: !1107, line: 52, baseType: !3152, size: 256)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1107, line: 37, size: 256, elements: !3153)
!3153 = !{!3154, !3161, !3162, !3166}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3152, file: !1107, line: 39, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3156, line: 83, baseType: !3157)
!3156 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3156, line: 82, baseType: !3159)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{null, !89}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3152, file: !1107, line: 40, baseType: !319, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3152, file: !1107, line: 46, baseType: !3163, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3156, line: 86, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3156, line: 85, baseType: !2182)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3152, file: !1107, line: 48, baseType: !3019, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2558, file: !1583, line: 1112, baseType: !3019, size: 64, offset: 15488)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2558, file: !1583, line: 1113, baseType: !3019, size: 64, offset: 15552)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2558, file: !1583, line: 1115, baseType: !3019, size: 64, offset: 15616)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2558, file: !1583, line: 1116, baseType: !3015, size: 192, offset: 15680)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2558, file: !1583, line: 1117, baseType: !319, size: 64, offset: 15872)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2558, file: !1583, line: 1118, baseType: !756, size: 64, offset: 15936)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2558, file: !1583, line: 1119, baseType: !7, size: 32, offset: 16000)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2558, file: !1583, line: 1121, baseType: !804, size: 64, offset: 16064)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2558, file: !1583, line: 1125, baseType: !3176, size: 64, offset: 16128)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1583, line: 43, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2558, file: !1583, line: 1127, baseType: !438, size: 32, offset: 16192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2558, file: !1583, line: 1128, baseType: !7, size: 32, offset: 16224)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2558, file: !1583, line: 1130, baseType: !3181, size: 128, offset: 16256)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3182, line: 37, size: 128, elements: !3183)
!3182 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3183 = !{!3184, !3185, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3181, file: !3182, line: 38, baseType: !89, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3181, file: !3182, line: 39, baseType: !545, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3181, file: !3182, line: 40, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3182, line: 24, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2558, file: !1583, line: 1131, baseType: !3190, size: 256, offset: 16384)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3191, line: 12, size: 256, elements: !3192)
!3191 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3192 = !{!3193, !3194, !3195, !3196}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3190, file: !3191, line: 13, baseType: !609, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3190, file: !3191, line: 14, baseType: !319, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3190, file: !3191, line: 15, baseType: !319, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3190, file: !3191, line: 16, baseType: !1019, size: 8, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2558, file: !1583, line: 1134, baseType: !366, size: 64, offset: 16640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2558, file: !1583, line: 1135, baseType: !366, size: 64, offset: 16704)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2558, file: !1583, line: 1138, baseType: !525, size: 32, offset: 16768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2558, file: !1583, line: 1141, baseType: !828, size: 32, offset: 16800)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2558, file: !1583, line: 1143, baseType: !3202, size: 64, offset: 16832)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1583, line: 735, size: 64, elements: !3203)
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3202, file: !1583, line: 736, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2558, file: !1583, line: 1147, baseType: !2727, size: 128, offset: 16896)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2558, file: !1583, line: 1149, baseType: !2557, size: 64, offset: 17024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2558, file: !1583, line: 1151, baseType: !3209, size: 64, offset: 17088)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1583, line: 1151, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2558, file: !1583, line: 1188, baseType: !309, size: 64, offset: 17152)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2558, file: !1583, line: 1191, baseType: !3213, size: 64, offset: 17216)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1583, line: 44, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2558, file: !1583, line: 1194, baseType: !3216, size: 64, offset: 17280)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1583, line: 45, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2558, file: !1583, line: 1197, baseType: !3219, size: 64, offset: 17344)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1583, line: 61, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2558, file: !1583, line: 1199, baseType: !3222, size: 64, offset: 17408)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3224, line: 99, size: 128, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3223, file: !3224, line: 100, baseType: !814, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3223, file: !3224, line: 101, baseType: !545, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3223, file: !3224, line: 103, baseType: !364, size: 16, offset: 96)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2558, file: !1583, line: 1202, baseType: !3230, size: 64, offset: 17472)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1583, line: 48, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2558, file: !1583, line: 1205, baseType: !319, size: 64, offset: 17536)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2558, file: !1583, line: 1206, baseType: !3234, size: 64, offset: 17600)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1107, line: 14, baseType: !3236)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1107, line: 12, size: 384, elements: !3237)
!3237 = !{!3238}
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !1107, line: 13, baseType: !3239, size: 384)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !1107, line: 13, size: 384, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3239, file: !1107, line: 13, baseType: !89, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3239, file: !1107, line: 13, baseType: !89, size: 32, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3239, file: !1107, line: 13, baseType: !89, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3239, file: !1107, line: 13, baseType: !3245, size: 256, offset: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3246, line: 37, size: 256, elements: !3247)
!3246 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3247 = !{!3248, !3253, !3266, !3272, !3281, !3308, !3313}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3245, file: !3246, line: 42, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 39, size: 64, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3249, file: !3246, line: 40, baseType: !2915, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3249, file: !3246, line: 41, baseType: !444, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3245, file: !3246, line: 50, baseType: !3254, size: 192)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 45, size: 192, elements: !3255)
!3255 = !{!3256, !3258, !3259, !3265}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3254, file: !3246, line: 46, baseType: !3257, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !445, line: 95, baseType: !89)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3254, file: !3246, line: 47, baseType: !89, size: 32, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3254, file: !3246, line: 48, baseType: !3260, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3246, line: 11, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3246, line: 8, size: 64, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3261, file: !3246, line: 9, baseType: !89, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3261, file: !3246, line: 10, baseType: !309, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3254, file: !3246, line: 49, baseType: !89, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3245, file: !3246, line: 57, baseType: !3267, size: 128)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 53, size: 128, elements: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3267, file: !3246, line: 54, baseType: !2915, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3267, file: !3246, line: 55, baseType: !444, size: 32, offset: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3267, file: !3246, line: 56, baseType: !3260, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3245, file: !3246, line: 66, baseType: !3273, size: 256)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 60, size: 256, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3280}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3273, file: !3246, line: 61, baseType: !2915, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3273, file: !3246, line: 62, baseType: !444, size: 32, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3273, file: !3246, line: 63, baseType: !89, size: 32, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3273, file: !3246, line: 64, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !445, line: 94, baseType: !745)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3273, file: !3246, line: 65, baseType: !3279, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3245, file: !3246, line: 105, baseType: !3282, size: 256)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 69, size: 256, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3282, file: !3246, line: 70, baseType: !309, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !3246, line: 79, baseType: !3286, size: 192, offset: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3282, file: !3246, line: 79, size: 192, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3297, !3302}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3286, file: !3246, line: 81, baseType: !89, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3286, file: !3246, line: 86, baseType: !988, size: 16)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3286, file: !3246, line: 92, baseType: !3291, size: 192)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3286, file: !3246, line: 88, size: 192, elements: !3292)
!3292 = !{!3293, !3295, !3296}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3291, file: !3246, line: 89, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 64, elements: !2711)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3291, file: !3246, line: 90, baseType: !309, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3291, file: !3246, line: 91, baseType: !309, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3286, file: !3246, line: 97, baseType: !3298, size: 96)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3286, file: !3246, line: 94, size: 96, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3298, file: !3246, line: 95, baseType: !3294, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3298, file: !3246, line: 96, baseType: !331, size: 32, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3286, file: !3246, line: 103, baseType: !3303, size: 128)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3286, file: !3246, line: 99, size: 128, elements: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3303, file: !3246, line: 100, baseType: !319, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3303, file: !3246, line: 101, baseType: !331, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3303, file: !3246, line: 102, baseType: !331, size: 32, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3245, file: !3246, line: 111, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 108, size: 128, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3309, file: !3246, line: 109, baseType: !746, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3309, file: !3246, line: 110, baseType: !89, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3245, file: !3246, line: 118, baseType: !3314, size: 128)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !3246, line: 114, size: 128, elements: !3315)
!3315 = !{!3316, !3317, !3318}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3314, file: !3246, line: 115, baseType: !309, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3314, file: !3246, line: 116, baseType: !89, size: 32, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3314, file: !3246, line: 117, baseType: !7, size: 32, offset: 96)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2558, file: !1583, line: 1208, baseType: !3099, size: 448, offset: 17664)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2558, file: !1583, line: 1215, baseType: !366, size: 64, offset: 18112)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2558, file: !1583, line: 1217, baseType: !366, size: 64, offset: 18176)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2558, file: !1583, line: 1219, baseType: !366, size: 64, offset: 18240)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2558, file: !1583, line: 1223, baseType: !3324, size: 64, offset: 18304)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !298, line: 99, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 99, size: 64, elements: !3326)
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3325, file: !298, line: 99, baseType: !318, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2558, file: !1583, line: 1225, baseType: !474, size: 32, offset: 18368)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2558, file: !1583, line: 1226, baseType: !89, size: 32, offset: 18400)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2558, file: !1583, line: 1227, baseType: !89, size: 32, offset: 18432)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2558, file: !1583, line: 1231, baseType: !3332, size: 64, offset: 18496)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1583, line: 1231, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2558, file: !1583, line: 1233, baseType: !414, size: 128, offset: 18560)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2558, file: !1583, line: 1240, baseType: !3336, size: 64, offset: 18688)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1583, line: 62, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2558, file: !1583, line: 1242, baseType: !3339, size: 64, offset: 18752)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1583, line: 1242, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2558, file: !1583, line: 1244, baseType: !414, size: 128, offset: 18816)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2558, file: !1583, line: 1245, baseType: !3343, size: 64, offset: 18944)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1583, line: 51, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2558, file: !1583, line: 1246, baseType: !823, size: 256, offset: 19008)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2558, file: !1583, line: 1247, baseType: !7, size: 32, offset: 19264)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2558, file: !1583, line: 1250, baseType: !3348, size: 64, offset: 19328)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1583, line: 57, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2558, file: !1583, line: 1251, baseType: !823, size: 256, offset: 19392)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2558, file: !1583, line: 1252, baseType: !414, size: 128, offset: 19648)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2558, file: !1583, line: 1259, baseType: !1529, size: 64, offset: 19776)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2558, file: !1583, line: 1260, baseType: !988, size: 16, offset: 19840)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2558, file: !1583, line: 1261, baseType: !988, size: 16, offset: 19856)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2558, file: !1583, line: 1314, baseType: !3356, size: 64, offset: 19904)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3358, line: 62, size: 256, align: 256, elements: !3359)
!3358 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3357, file: !3358, line: 75, baseType: !331, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3357, file: !3358, line: 90, baseType: !331, size: 32, offset: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3357, file: !3358, line: 112, baseType: !367, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3358, line: 132, baseType: !331, size: 32, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3357, file: !3358, line: 140, baseType: !331, size: 32, offset: 160)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3357, file: !3358, line: 149, baseType: !331, size: 32, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3357, file: !3358, line: 154, baseType: !3367, offset: 224)
!3367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, elements: !903)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2558, file: !1583, line: 1315, baseType: !329, size: 32, offset: 19968)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2558, file: !1583, line: 1316, baseType: !329, size: 32, offset: 20000)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2558, file: !1583, line: 1321, baseType: !319, size: 64, offset: 20032)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2558, file: !1583, line: 1325, baseType: !89, size: 32, offset: 20096)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2558, file: !1583, line: 1326, baseType: !89, size: 32, offset: 20128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2558, file: !1583, line: 1327, baseType: !89, size: 32, offset: 20160)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2558, file: !1583, line: 1328, baseType: !89, size: 32, offset: 20192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2558, file: !1583, line: 1329, baseType: !801, size: 128, align: 64, offset: 20224)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2558, file: !1583, line: 1332, baseType: !3377, size: 128, offset: 20352)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3378, line: 51, size: 128, elements: !3379)
!3378 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3379 = !{!3380, !3385, !3386}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3377, file: !3378, line: 60, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3382, line: 7, size: 64, elements: !3383)
!3382 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3381, file: !3382, line: 12, baseType: !314, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3377, file: !3378, line: 63, baseType: !1019, size: 8, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3377, file: !3378, line: 70, baseType: !1019, size: 8, offset: 72)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2558, file: !1583, line: 1335, baseType: !1581, size: 64, offset: 20480)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2558, file: !1583, line: 1337, baseType: !3389, size: 128, offset: 20544)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3378, line: 39, size: 128, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3389, file: !3378, line: 40, baseType: !400, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3389, file: !3378, line: 42, baseType: !331, size: 32, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3389, file: !3378, line: 43, baseType: !331, size: 32, offset: 96)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2558, file: !1583, line: 1340, baseType: !3395, size: 64, offset: 20672)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1583, line: 69, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2558, file: !1583, line: 1351, baseType: !89, size: 32, offset: 20736)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2558, file: !1583, line: 1352, baseType: !89, size: 32, offset: 20768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2558, file: !1583, line: 1354, baseType: !319, size: 64, offset: 20800)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2558, file: !1583, line: 1364, baseType: !366, size: 64, offset: 20864)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2558, file: !1583, line: 1365, baseType: !366, size: 64, offset: 20928)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2558, file: !1583, line: 1412, baseType: !319, size: 64, offset: 20992)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2558, file: !1583, line: 1453, baseType: !3404, size: 64, offset: 21056)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1583, line: 1453, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2558, file: !1583, line: 1457, baseType: !3407, size: 64, offset: 21120)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3409)
!3409 = !{!3410, !3411, !3430, !3433, !3434, !3467, !3477}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3408, file: !81, line: 62, baseType: !80, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !81, line: 64, baseType: !3412, size: 192, offset: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !81, line: 64, size: 192, elements: !3413)
!3413 = !{!3414, !3425}
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !81, line: 65, baseType: !3415, size: 192)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !81, line: 65, size: 192, elements: !3416)
!3416 = !{!3417, !3424}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3415, file: !81, line: 66, baseType: !3418, size: 128)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3419, line: 50, size: 128, elements: !3420)
!3419 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3420 = !{!3421, !3422, !3423}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3418, file: !3419, line: 52, baseType: !319, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3418, file: !3419, line: 54, baseType: !7, size: 32, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3418, file: !3419, line: 55, baseType: !7, size: 32, offset: 96)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3415, file: !81, line: 67, baseType: !319, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !81, line: 70, baseType: !3426, size: 192)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !81, line: 70, size: 192, elements: !3427)
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3426, file: !81, line: 71, baseType: !801, size: 128, align: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3426, file: !81, line: 72, baseType: !319, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3408, file: !81, line: 76, baseType: !3431, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3408, file: !81, line: 77, baseType: !319, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3408, file: !81, line: 79, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3419, line: 25, size: 256, elements: !3437)
!3437 = !{!3438, !3444, !3448}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3419, line: 26, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3419, line: 26, size: 128, elements: !3440)
!3440 = !{!3441, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3439, file: !3419, line: 27, baseType: !3442, size: 128)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 128, elements: !2973)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3439, file: !3419, line: 28, baseType: !3442, size: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3436, file: !3419, line: 31, baseType: !3445, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3419, line: 23, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3419, line: 33, baseType: !3449, size: 64, offset: 192)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3419, line: 33, size: 64, elements: !3450)
!3450 = !{!3451, !3457, !3462}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3449, file: !3419, line: 38, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3449, file: !3419, line: 34, size: 64, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3452, file: !3419, line: 35, baseType: !945, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3452, file: !3419, line: 36, baseType: !553, size: 8, offset: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3452, file: !3419, line: 37, baseType: !553, size: 8, offset: 40)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3449, file: !3419, line: 42, baseType: !3458, size: 16)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3449, file: !3419, line: 39, size: 16, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3458, file: !3419, line: 40, baseType: !553, size: 8)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3458, file: !3419, line: 41, baseType: !553, size: 8, offset: 8)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3449, file: !3419, line: 46, baseType: !3463, size: 16)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3449, file: !3419, line: 43, size: 16, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3463, file: !3419, line: 44, baseType: !553, size: 8)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3463, file: !3419, line: 45, baseType: !553, size: 8, offset: 8)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3408, file: !81, line: 81, baseType: !3468, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3469, file: !81, line: 86, baseType: !3431, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3469, file: !81, line: 87, baseType: !319, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3469, file: !81, line: 88, baseType: !319, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3469, file: !81, line: 89, baseType: !319, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3469, file: !81, line: 90, baseType: !1019, size: 8, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3469, file: !81, line: 92, baseType: !3468, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3408, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2558, file: !1583, line: 1463, baseType: !3479, offset: 21184)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1583, line: 739, elements: !1255)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2558, file: !1583, line: 1470, baseType: !801, size: 128, align: 64, offset: 21184)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2558, file: !1583, line: 1471, baseType: !866, size: 32, offset: 21312)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2558, file: !1583, line: 1472, baseType: !89, size: 32, offset: 21344)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2558, file: !1583, line: 1474, baseType: !2557, size: 64, offset: 21376)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2558, file: !1583, line: 1475, baseType: !2078, size: 320, offset: 21440)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2558, file: !1583, line: 1478, baseType: !3486, size: 64, offset: 21760)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3488, line: 49, size: 512, elements: !3489)
!3488 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3496, !3497, !3498, !3499}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3487, file: !3488, line: 50, baseType: !3486, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3487, file: !3488, line: 51, baseType: !309, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3487, file: !3488, line: 52, baseType: !319, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !3488, line: 53, baseType: !319, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3487, file: !3488, line: 54, baseType: !3495, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3487, file: !3488, line: 56, baseType: !7, size: 32, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3487, file: !3488, line: 58, baseType: !7, size: 32, offset: 352)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3487, file: !3488, line: 59, baseType: !399, size: 64, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3487, file: !3488, line: 60, baseType: !1350, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2558, file: !1583, line: 1482, baseType: !866, size: 32, offset: 21824)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2558, file: !1583, line: 1489, baseType: !309, size: 64, offset: 21888)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2558, file: !1583, line: 1504, baseType: !309, size: 64, offset: 21952)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2558, file: !1583, line: 1505, baseType: !367, size: 64, offset: 22016)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2558, file: !1583, line: 1506, baseType: !366, size: 64, offset: 22080)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2558, file: !1583, line: 1507, baseType: !367, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2558, file: !1583, line: 1508, baseType: !367, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2558, file: !1583, line: 1509, baseType: !367, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2558, file: !1583, line: 1510, baseType: !801, size: 128, align: 64, offset: 22208)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2558, file: !1583, line: 1511, baseType: !89, size: 32, offset: 22336)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2558, file: !1583, line: 1515, baseType: !3511, size: 64, offset: 22400)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !796, line: 56, size: 64, elements: !3512)
!3512 = !{!3513}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3511, file: !796, line: 57, baseType: !799, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2558, file: !1583, line: 1518, baseType: !3511, size: 64, offset: 22464)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2558, file: !1583, line: 1528, baseType: !801, size: 128, align: 64, offset: 22528)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2558, file: !1583, line: 1552, baseType: !3517, size: 35328, offset: 23040)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3518, line: 430, size: 35328, elements: !3519)
!3518 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3519 = !{!3520, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3549, !3550, !3551, !3552, !3553, !3554, !3557, !3558, !3559, !3560}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3517, file: !3518, line: 432, baseType: !3521, size: 192)
!3521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3522, size: 192, elements: !712)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3523, line: 16, size: 64, elements: !3524)
!3523 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3522, file: !3523, line: 17, baseType: !362, size: 16)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3522, file: !3523, line: 18, baseType: !362, size: 16, offset: 16)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3522, file: !3523, line: 19, baseType: !362, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3522, file: !3523, line: 19, baseType: !362, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3522, file: !3523, line: 19, baseType: !362, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3522, file: !3523, line: 19, baseType: !362, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3522, file: !3523, line: 19, baseType: !362, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3522, file: !3523, line: 20, baseType: !362, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3522, file: !3523, line: 20, baseType: !362, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3522, file: !3523, line: 20, baseType: !362, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3522, file: !3523, line: 20, baseType: !362, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3522, file: !3523, line: 20, baseType: !362, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3522, file: !3523, line: 20, baseType: !362, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3517, file: !3518, line: 436, baseType: !319, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3517, file: !3518, line: 440, baseType: !364, size: 16, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3517, file: !3518, line: 441, baseType: !364, size: 16, offset: 272)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3517, file: !3518, line: 442, baseType: !364, size: 16, offset: 288)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3517, file: !3518, line: 443, baseType: !364, size: 16, offset: 304)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3517, file: !3518, line: 447, baseType: !319, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3517, file: !3518, line: 448, baseType: !319, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3517, file: !3518, line: 459, baseType: !3546, size: 256, offset: 448)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3547, size: 256, elements: !884)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3518, line: 428, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3517, file: !3518, line: 461, baseType: !319, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3517, file: !3518, line: 463, baseType: !319, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3517, file: !3518, line: 465, baseType: !319, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3517, file: !3518, line: 466, baseType: !319, size: 64, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3517, file: !3518, line: 467, baseType: !319, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3517, file: !3518, line: 473, baseType: !3555, size: 64, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3518, line: 10, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3517, file: !3518, line: 480, baseType: !319, size: 64, offset: 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3517, file: !3518, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3517, file: !3518, line: 491, baseType: !329, size: 32, offset: 1184)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3517, file: !3518, line: 501, baseType: !3561, size: 33792, offset: 1536)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3562, line: 448, size: 33792, elements: !3563)
!3562 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3563 = !{!3564, !3565, !3566, !3676, !3677, !3683, !3684}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3561, file: !3562, line: 461, baseType: !7, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3561, file: !3562, line: 468, baseType: !319, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3561, file: !3562, line: 476, baseType: !3567, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3562, line: 356, size: 33280, align: 512, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3568, file: !3562, line: 358, baseType: !7, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3568, file: !3562, line: 361, baseType: !7, size: 32, offset: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3568, file: !3562, line: 364, baseType: !366, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3568, file: !3562, line: 367, baseType: !366, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3568, file: !3562, line: 370, baseType: !366, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3568, file: !3562, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3568, file: !3562, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3568, file: !3562, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3568, file: !3562, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3568, file: !3562, line: 397, baseType: !3580, size: 32768, offset: 512)
!3580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3562, line: 348, size: 32768, elements: !3581)
!3581 = !{!3582, !3597, !3634, !3659, !3672}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3580, file: !3562, line: 349, baseType: !3583, size: 896)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3562, line: 12, size: 896, elements: !3584)
!3584 = !{!3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3596}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3583, file: !3562, line: 13, baseType: !329, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3583, file: !3562, line: 14, baseType: !329, size: 32, offset: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3583, file: !3562, line: 15, baseType: !329, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3583, file: !3562, line: 16, baseType: !329, size: 32, offset: 96)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3583, file: !3562, line: 17, baseType: !329, size: 32, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3583, file: !3562, line: 18, baseType: !329, size: 32, offset: 160)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3583, file: !3562, line: 19, baseType: !329, size: 32, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3583, file: !3562, line: 22, baseType: !3593, size: 640, offset: 224)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 640, elements: !3594)
!3594 = !{!3595}
!3595 = !DISubrange(count: 20)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3583, file: !3562, line: 25, baseType: !329, size: 32, offset: 864)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3580, file: !3562, line: 350, baseType: !3598, size: 4096, align: 128)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3562, line: 34, size: 4096, align: 128, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3619, !3620, !3621, !3623, !3625, !3629}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3598, file: !3562, line: 35, baseType: !362, size: 16)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3598, file: !3562, line: 36, baseType: !362, size: 16, offset: 16)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3598, file: !3562, line: 37, baseType: !362, size: 16, offset: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3598, file: !3562, line: 38, baseType: !362, size: 16, offset: 48)
!3604 = !DIDerivedType(tag: DW_TAG_member, scope: !3598, file: !3562, line: 39, baseType: !3605, size: 128, offset: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3598, file: !3562, line: 39, size: 128, elements: !3606)
!3606 = !{!3607, !3612}
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3605, file: !3562, line: 40, baseType: !3608, size: 128)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3605, file: !3562, line: 40, size: 128, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3608, file: !3562, line: 41, baseType: !366, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3608, file: !3562, line: 42, baseType: !366, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, scope: !3605, file: !3562, line: 44, baseType: !3613, size: 128)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3605, file: !3562, line: 44, size: 128, elements: !3614)
!3614 = !{!3615, !3616, !3617, !3618}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3613, file: !3562, line: 45, baseType: !329, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3613, file: !3562, line: 46, baseType: !329, size: 32, offset: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3613, file: !3562, line: 47, baseType: !329, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3613, file: !3562, line: 48, baseType: !329, size: 32, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3598, file: !3562, line: 51, baseType: !329, size: 32, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3598, file: !3562, line: 52, baseType: !329, size: 32, offset: 224)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3598, file: !3562, line: 55, baseType: !3622, size: 1024, offset: 256)
!3622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 1024, elements: !511)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3598, file: !3562, line: 58, baseType: !3624, size: 2048, offset: 1280)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 2048, elements: !716)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3598, file: !3562, line: 60, baseType: !3626, size: 384, offset: 3328)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 384, elements: !3627)
!3627 = !{!3628}
!3628 = !DISubrange(count: 12)
!3629 = !DIDerivedType(tag: DW_TAG_member, scope: !3598, file: !3562, line: 62, baseType: !3630, size: 384, offset: 3712)
!3630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3598, file: !3562, line: 62, size: 384, elements: !3631)
!3631 = !{!3632, !3633}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3630, file: !3562, line: 63, baseType: !3626, size: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3630, file: !3562, line: 64, baseType: !3626, size: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3580, file: !3562, line: 351, baseType: !3635, size: 1088)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3562, line: 79, size: 1088, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3658}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3635, file: !3562, line: 80, baseType: !329, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3635, file: !3562, line: 81, baseType: !329, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3635, file: !3562, line: 82, baseType: !329, size: 32, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3635, file: !3562, line: 83, baseType: !329, size: 32, offset: 96)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3635, file: !3562, line: 84, baseType: !329, size: 32, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3635, file: !3562, line: 85, baseType: !329, size: 32, offset: 160)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3635, file: !3562, line: 86, baseType: !329, size: 32, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3635, file: !3562, line: 88, baseType: !3593, size: 640, offset: 224)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3635, file: !3562, line: 89, baseType: !553, size: 8, offset: 864)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3635, file: !3562, line: 90, baseType: !553, size: 8, offset: 872)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3635, file: !3562, line: 91, baseType: !553, size: 8, offset: 880)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3635, file: !3562, line: 92, baseType: !553, size: 8, offset: 888)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3635, file: !3562, line: 93, baseType: !553, size: 8, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3635, file: !3562, line: 94, baseType: !553, size: 8, offset: 904)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3635, file: !3562, line: 95, baseType: !3652, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3654, line: 11, size: 128, elements: !3655)
!3654 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3655 = !{!3656, !3657}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3653, file: !3654, line: 12, baseType: !746, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3653, file: !3654, line: 13, baseType: !337, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3635, file: !3562, line: 96, baseType: !329, size: 32, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3580, file: !3562, line: 352, baseType: !3660, size: 4608, align: 512)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3562, line: 333, size: 4608, align: 512, elements: !3661)
!3661 = !{!3662, !3663, !3670}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3660, file: !3562, line: 334, baseType: !3598, size: 4096, align: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3660, file: !3562, line: 335, baseType: !3664, size: 512, offset: 4096)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3562, line: 312, size: 512, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3664, file: !3562, line: 313, baseType: !366, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3664, file: !3562, line: 314, baseType: !366, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3664, file: !3562, line: 315, baseType: !3669, size: 384, offset: 128)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, elements: !1006)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3660, file: !3562, line: 336, baseType: !3671, offset: 4608)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, elements: !903)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3580, file: !3562, line: 353, baseType: !3673, size: 32768)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 32768, elements: !3674)
!3674 = !{!3675}
!3675 = !DISubrange(count: 4096)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3561, file: !3562, line: 484, baseType: !3567, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3561, file: !3562, line: 491, baseType: !3678, size: 128, offset: 256)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3562, line: 404, size: 128, elements: !3679)
!3679 = !{!3680, !3681, !3682}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3678, file: !3562, line: 424, baseType: !366, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3678, file: !3562, line: 432, baseType: !7, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3678, file: !3562, line: 440, baseType: !7, size: 32, offset: 96)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3561, file: !3562, line: 498, baseType: !3678, size: 128, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3561, file: !3562, line: 508, baseType: !3568, size: 33280, align: 512, offset: 512)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2540, file: !2541, line: 16, baseType: !888, size: 192, offset: 512)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2540, file: !2541, line: 17, baseType: !545, size: 32, offset: 704)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !621, file: !59, line: 1240, baseType: !309, size: 64, offset: 6912)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !621, file: !59, line: 1243, baseType: !329, size: 32, offset: 6976)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !621, file: !59, line: 1245, baseType: !976, size: 64, offset: 7040)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !621, file: !59, line: 1246, baseType: !976, size: 64, offset: 7104)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !621, file: !59, line: 1248, baseType: !331, size: 32, offset: 7168)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !621, file: !59, line: 1249, baseType: !3693, size: 64, offset: 7232)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !621, file: !59, line: 1252, baseType: !3696, size: 256, offset: 7296)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 256, elements: !511)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !621, file: !59, line: 1253, baseType: !3698, size: 128, offset: 7552)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3699, line: 21, baseType: !3700)
!3699 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3699, line: 19, size: 128, elements: !3701)
!3701 = !{!3702}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3700, file: !3699, line: 20, baseType: !3703, size: 128)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 128, elements: !2973)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !621, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !621, file: !59, line: 1261, baseType: !823, size: 256, offset: 7744)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !621, file: !59, line: 1267, baseType: !583, size: 64, offset: 8000)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !621, file: !59, line: 1269, baseType: !563, size: 64, offset: 8064)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !621, file: !59, line: 1271, baseType: !3709, size: 448, offset: 8128)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2320, line: 63, size: 448, elements: !3710)
!3710 = !{!3711, !3716, !3717, !3718, !3719, !3720, !3721}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3709, file: !2320, line: 64, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!319, !3715, !2318}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3709, file: !2320, line: 66, baseType: !3712, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3709, file: !2320, line: 69, baseType: !746, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3709, file: !2320, line: 70, baseType: !89, size: 32, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3709, file: !2320, line: 71, baseType: !7, size: 32, offset: 224)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3709, file: !2320, line: 74, baseType: !414, size: 128, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3709, file: !2320, line: 85, baseType: !3722, size: 64, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !621, file: !59, line: 1274, baseType: !814, size: 64, offset: 8576)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !621, file: !59, line: 1280, baseType: !814, size: 64, offset: 8640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !621, file: !59, line: 1283, baseType: !89, size: 32, offset: 8704)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !621, file: !59, line: 1286, baseType: !1670, size: 32, offset: 8736)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !621, file: !59, line: 1289, baseType: !2140, size: 64, offset: 8768)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !621, file: !59, line: 1290, baseType: !875, size: 64, offset: 8832)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !621, file: !59, line: 1297, baseType: !1102, size: 64, offset: 8896)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !621, file: !59, line: 1304, baseType: !3731, size: 64, offset: 8960)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3732, line: 49, size: 64, elements: !3733)
!3732 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3733 = !{!3734}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3731, file: !3732, line: 50, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3732, line: 41, size: 512, align: 512, elements: !3737)
!3737 = !{!3738, !3739, !3744}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3736, file: !3732, line: 43, baseType: !525, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3736, file: !3732, line: 45, baseType: !3740, size: 192, offset: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3732, line: 29, size: 192, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3740, file: !3732, line: 30, baseType: !414, size: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3740, file: !3732, line: 32, baseType: !746, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3736, file: !3732, line: 46, baseType: !746, size: 64, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !621, file: !59, line: 1305, baseType: !3731, size: 64, offset: 9024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !621, file: !59, line: 1306, baseType: !801, size: 128, align: 64, offset: 9088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !621, file: !59, line: 1307, baseType: !1389, size: 256, offset: 9216)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !621, file: !59, line: 1309, baseType: !823, size: 256, offset: 9472)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !621, file: !59, line: 1314, baseType: !89, size: 32, offset: 9728)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !621, file: !59, line: 1317, baseType: !525, size: 32, align: 512, offset: 10240)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !621, file: !59, line: 1318, baseType: !414, size: 128, offset: 10304)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !621, file: !59, line: 1320, baseType: !525, size: 32, offset: 10432)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !621, file: !59, line: 1321, baseType: !414, size: 128, offset: 10496)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !615, file: !616, line: 73, baseType: !89, size: 32, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !615, file: !616, line: 74, baseType: !3756, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !927, line: 42, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !565, file: !470, line: 141, baseType: !3760, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!89, !2380, !1019}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !565, file: !470, line: 142, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!468, !468, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !469, file: !470, line: 96, baseType: !620, size: 64, offset: 832)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !469, file: !470, line: 97, baseType: !319, size: 64, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !469, file: !470, line: 98, baseType: !309, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !470, line: 100, baseType: !3773, size: 128, offset: 1024)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !470, line: 100, size: 128, elements: !3774)
!3774 = !{!3775, !3776}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3773, file: !470, line: 101, baseType: !414, size: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3773, file: !470, line: 102, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !469, file: !470, line: 104, baseType: !414, size: 128, offset: 1152)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !469, file: !470, line: 105, baseType: !414, size: 128, offset: 1280)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !469, file: !470, line: 113, baseType: !3781, size: 128, offset: 1408)
!3781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !470, line: 109, size: 128, elements: !3782)
!3782 = !{!3783, !3784, !3785}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3781, file: !470, line: 110, baseType: !879, size: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3781, file: !470, line: 111, baseType: !484, size: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3781, file: !470, line: 112, baseType: !801, size: 128, align: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !462, file: !59, line: 1968, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!583, !468, !431, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3792, line: 10, size: 128, elements: !3793)
!3792 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3793 = !{!3794, !3795}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3791, file: !3792, line: 11, baseType: !1710, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3791, file: !3792, line: 12, baseType: !309, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !462, file: !59, line: 1969, baseType: !3797, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!89, !3756, !431, !89}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !462, file: !59, line: 1970, baseType: !3801, size: 64, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!456, !431, !89, !1019}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !462, file: !59, line: 1972, baseType: !3805, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!89, !468, !609, !89}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !462, file: !59, line: 1974, baseType: !3809, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!89, !3756, !431, !468, !435, !1019}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !462, file: !59, line: 1976, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!89, !468, !431, !468}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !462, file: !59, line: 1977, baseType: !3817, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!89, !431, !468}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !462, file: !59, line: 1978, baseType: !3821, size: 64, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!89, !3756, !431, !468, !583}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !462, file: !59, line: 1980, baseType: !3825, size: 64, offset: 576)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!89, !3756, !431, !468, !435}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !462, file: !59, line: 1982, baseType: !3817, size: 64, offset: 640)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !462, file: !59, line: 1983, baseType: !3830, size: 64, offset: 704)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!89, !3756, !431, !468, !435, !625}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !462, file: !59, line: 1985, baseType: !3834, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!89, !3756, !431, !468, !431, !468, !7}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !462, file: !59, line: 1987, baseType: !3838, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!89, !3756, !468, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3856, !3865, !3866, !3871, !3872, !3873}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3842, file: !59, line: 227, baseType: !7, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3842, file: !59, line: 228, baseType: !435, size: 16, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, scope: !3842, file: !59, line: 241, baseType: !3847, size: 32, offset: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3842, file: !59, line: 241, size: 32, elements: !3848)
!3848 = !{!3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3847, file: !59, line: 242, baseType: !438, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3847, file: !59, line: 243, baseType: !3851, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3852, line: 16, baseType: !3853)
!3852 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3852, line: 14, size: 32, elements: !3854)
!3854 = !{!3855}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3853, file: !3852, line: 15, baseType: !443, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, scope: !3842, file: !59, line: 245, baseType: !3857, size: 32, offset: 96)
!3857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3842, file: !59, line: 245, size: 32, elements: !3858)
!3858 = !{!3859, !3860}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3857, file: !59, line: 246, baseType: !448, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3857, file: !59, line: 247, baseType: !3861, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3852, line: 20, baseType: !3862)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3852, line: 18, size: 32, elements: !3863)
!3863 = !{!3864}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3862, file: !3852, line: 19, baseType: !452, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3842, file: !59, line: 249, baseType: !630, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3842, file: !59, line: 250, baseType: !3867, size: 128, offset: 192)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !977, line: 13, size: 128, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3867, file: !977, line: 14, baseType: !976, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3867, file: !977, line: 15, baseType: !746, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3842, file: !59, line: 251, baseType: !3867, size: 128, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3842, file: !59, line: 252, baseType: !3867, size: 128, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3842, file: !59, line: 259, baseType: !788, size: 64, offset: 576)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !462, file: !59, line: 1988, baseType: !3875, size: 64, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!89, !3756, !2380, !3878, !329, !7}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3880, line: 22, size: 1280, elements: !3881)
!3880 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3879, file: !3880, line: 23, baseType: !329, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3879, file: !3880, line: 24, baseType: !435, size: 16, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3879, file: !3880, line: 25, baseType: !7, size: 32, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3879, file: !3880, line: 26, baseType: !984, size: 32, offset: 96)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3879, file: !3880, line: 27, baseType: !366, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3879, file: !3880, line: 28, baseType: !366, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3879, file: !3880, line: 41, baseType: !366, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3879, file: !3880, line: 42, baseType: !625, size: 32, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3879, file: !3880, line: 43, baseType: !625, size: 32, offset: 352)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3879, file: !3880, line: 44, baseType: !438, size: 32, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3879, file: !3880, line: 45, baseType: !448, size: 32, offset: 416)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3879, file: !3880, line: 46, baseType: !630, size: 64, offset: 448)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3879, file: !3880, line: 47, baseType: !3867, size: 128, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3879, file: !3880, line: 48, baseType: !3867, size: 128, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3879, file: !3880, line: 49, baseType: !3867, size: 128, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3879, file: !3880, line: 50, baseType: !3867, size: 128, offset: 896)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3879, file: !3880, line: 51, baseType: !366, size: 64, offset: 1024)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3879, file: !3880, line: 52, baseType: !366, size: 64, offset: 1088)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3879, file: !3880, line: 53, baseType: !329, size: 32, offset: 1152)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3879, file: !3880, line: 54, baseType: !329, size: 32, offset: 1184)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3879, file: !3880, line: 55, baseType: !366, size: 64, offset: 1216)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !462, file: !59, line: 1990, baseType: !3904, size: 64, offset: 960)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!743, !468, !609, !756}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !462, file: !59, line: 1991, baseType: !3908, size: 64, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!89, !431, !3911, !366, !366}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !462, file: !59, line: 1993, baseType: !3914, size: 64, offset: 1088)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!89, !431, !89}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !462, file: !59, line: 1994, baseType: !3918, size: 64, offset: 1152)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!89, !431, !468, !788, !7, !435}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !462, file: !59, line: 1997, baseType: !3922, size: 64, offset: 1216)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!89, !3756, !431, !788, !435}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !462, file: !59, line: 1999, baseType: !3926, size: 64, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!456, !3756, !468, !89}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !462, file: !59, line: 2001, baseType: !3930, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!89, !3756, !468, !456, !89}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !462, file: !59, line: 2003, baseType: !3934, size: 64, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!89, !3756, !468, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !462, file: !59, line: 2005, baseType: !3940, size: 64, offset: 1472)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!89, !468, !3937}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !462, file: !59, line: 2006, baseType: !3944, size: 64, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!3947, !431}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !3949)
!3949 = !{!3950, !3957}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3948, file: !59, line: 3193, baseType: !3951, size: 128)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3952, line: 296, size: 128, elements: !3953)
!3952 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3951, file: !3952, line: 297, baseType: !525, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3951, file: !3952, line: 299, baseType: !310, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3951, file: !3952, line: 300, baseType: !309, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3948, file: !59, line: 3194, baseType: !329, size: 32, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !432, file: !59, line: 655, baseType: !620, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !432, file: !59, line: 656, baseType: !427, size: 64, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !432, file: !59, line: 659, baseType: !309, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !432, file: !59, line: 663, baseType: !319, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !59, line: 671, baseType: !3963, size: 32, offset: 704)
!3963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !59, line: 671, size: 32, elements: !3964)
!3964 = !{!3965, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3963, file: !59, line: 672, baseType: !3966, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3963, file: !59, line: 673, baseType: !7, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !432, file: !59, line: 675, baseType: !625, size: 32, offset: 736)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !432, file: !59, line: 676, baseType: !630, size: 64, offset: 768)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !432, file: !59, line: 677, baseType: !3867, size: 128, offset: 832)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !432, file: !59, line: 678, baseType: !3867, size: 128, offset: 960)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !432, file: !59, line: 679, baseType: !3867, size: 128, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !432, file: !59, line: 680, baseType: !525, size: 32, offset: 1216)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !432, file: !59, line: 681, baseType: !364, size: 16, offset: 1248)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !432, file: !59, line: 682, baseType: !553, size: 8, offset: 1264)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !432, file: !59, line: 683, baseType: !553, size: 8, offset: 1272)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !432, file: !59, line: 684, baseType: !2453, size: 64, offset: 1280)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !432, file: !59, line: 691, baseType: !319, size: 64, offset: 1344)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !432, file: !59, line: 692, baseType: !960, size: 320, offset: 1408)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !432, file: !59, line: 694, baseType: !319, size: 64, offset: 1728)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !432, file: !59, line: 695, baseType: !319, size: 64, offset: 1792)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !432, file: !59, line: 697, baseType: !879, size: 128, offset: 1856)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !432, file: !59, line: 698, baseType: !414, size: 128, offset: 1984)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !432, file: !59, line: 707, baseType: !414, size: 128, offset: 2112)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !432, file: !59, line: 708, baseType: !414, size: 128, offset: 2240)
!3986 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !59, line: 709, baseType: !3987, size: 128, offset: 2368)
!3987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !59, line: 709, size: 128, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3987, file: !59, line: 710, baseType: !875, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3987, file: !59, line: 711, baseType: !801, size: 128, align: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !432, file: !59, line: 713, baseType: !816, size: 64, offset: 2496)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !432, file: !59, line: 714, baseType: !816, size: 64, offset: 2560)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !432, file: !59, line: 715, baseType: !545, size: 32, offset: 2624)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !432, file: !59, line: 716, baseType: !545, size: 32, offset: 2656)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !432, file: !59, line: 717, baseType: !545, size: 32, offset: 2688)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !432, file: !59, line: 719, baseType: !545, size: 32, offset: 2720)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !59, line: 721, baseType: !3998, size: 64, offset: 2752)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !59, line: 721, size: 64, elements: !3999)
!3999 = !{!4000, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3998, file: !59, line: 722, baseType: !1138, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3998, file: !59, line: 723, baseType: !2207, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !432, file: !59, line: 725, baseType: !4003, size: 64, offset: 2816)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !432, file: !59, line: 726, baseType: !428, size: 1536, align: 64, offset: 2880)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !432, file: !59, line: 727, baseType: !414, size: 128, offset: 4416)
!4007 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !59, line: 728, baseType: !4008, size: 64, offset: 4544)
!4008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !59, line: 728, size: 64, elements: !4009)
!4009 = !{!4010, !4011, !4014, !4015}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4008, file: !59, line: 729, baseType: !1581, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4008, file: !59, line: 730, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4008, file: !59, line: 731, baseType: !609, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4008, file: !59, line: 732, baseType: !7, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !432, file: !59, line: 735, baseType: !331, size: 32, offset: 4608)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !432, file: !59, line: 738, baseType: !331, size: 32, offset: 4640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !432, file: !59, line: 739, baseType: !3693, size: 64, offset: 4672)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !432, file: !59, line: 750, baseType: !309, size: 64, offset: 4736)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !428, file: !59, line: 474, baseType: !3951, size: 128, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !428, file: !59, line: 475, baseType: !960, size: 320, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !428, file: !59, line: 476, baseType: !310, size: 32, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !428, file: !59, line: 477, baseType: !545, size: 32, offset: 544)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !428, file: !59, line: 482, baseType: !2727, size: 128, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !428, file: !59, line: 483, baseType: !319, size: 64, offset: 704)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !428, file: !59, line: 484, baseType: !319, size: 64, offset: 768)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !428, file: !59, line: 485, baseType: !4028, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4030)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !4031)
!4031 = !{!4032, !4036, !4106, !4110, !4114, !4120, !4124, !4128, !4133, !4137, !4141, !4145, !4146, !4150, !4154, !4158, !4163, !4167, !4174, !4175}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4030, file: !59, line: 405, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!89, !400, !2219}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4030, file: !59, line: 406, baseType: !4037, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!89, !788, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !4042)
!4042 = !{!4043, !4073, !4087}
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !30, line: 295, baseType: !4044, size: 512)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !30, line: 295, size: 512, elements: !4045)
!4045 = !{!4046, !4072}
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !30, line: 296, baseType: !4047, size: 448)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4044, file: !30, line: 296, size: 448, elements: !4048)
!4048 = !{!4049, !4050, !4059, !4060, !4061, !4070, !4071}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4047, file: !30, line: 298, baseType: !319, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, scope: !4047, file: !30, line: 299, baseType: !4051, size: 128, offset: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4047, file: !30, line: 299, size: 128, elements: !4052)
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4051, file: !30, line: 300, baseType: !414, size: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, scope: !4051, file: !30, line: 302, baseType: !4055, size: 128)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4051, file: !30, line: 302, size: 128, elements: !4056)
!4056 = !{!4057, !4058}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4055, file: !30, line: 303, baseType: !309, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4055, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4047, file: !30, line: 310, baseType: !427, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4047, file: !30, line: 311, baseType: !319, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, scope: !4047, file: !30, line: 312, baseType: !4062, size: 64, offset: 320)
!4062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4047, file: !30, line: 312, size: 64, elements: !4063)
!4063 = !{!4064, !4065}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4062, file: !30, line: 313, baseType: !309, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4062, file: !30, line: 314, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !4067)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !4068)
!4068 = !{!4069}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4067, file: !30, line: 256, baseType: !319, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4047, file: !30, line: 316, baseType: !545, size: 32, offset: 384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4047, file: !30, line: 317, baseType: !545, size: 32, offset: 416)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4044, file: !30, line: 323, baseType: !401, size: 512, align: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !30, line: 325, baseType: !4074, size: 512, offset: 512)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !30, line: 325, size: 512, elements: !4075)
!4075 = !{!4076, !4086}
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4074, file: !30, line: 326, baseType: !4077, size: 320)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !30, line: 326, size: 320, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4077, file: !30, line: 327, baseType: !319, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4077, file: !30, line: 328, baseType: !319, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4077, file: !30, line: 329, baseType: !319, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4077, file: !30, line: 331, baseType: !545, size: 32, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4077, file: !30, line: 332, baseType: !545, size: 32, offset: 224)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4077, file: !30, line: 333, baseType: !545, size: 32, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4077, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4074, file: !30, line: 339, baseType: !401, size: 512, align: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !30, line: 341, baseType: !4088, size: 512, offset: 1024)
!4088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !30, line: 341, size: 512, elements: !4089)
!4089 = !{!4090, !4099, !4105}
!4090 = !DIDerivedType(tag: DW_TAG_member, scope: !4088, file: !30, line: 342, baseType: !4091, size: 384)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4088, file: !30, line: 342, size: 384, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4091, file: !30, line: 343, baseType: !319, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4091, file: !30, line: 344, baseType: !319, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4091, file: !30, line: 346, baseType: !309, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4091, file: !30, line: 347, baseType: !309, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4091, file: !30, line: 348, baseType: !309, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4091, file: !30, line: 349, baseType: !309, size: 64, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, scope: !4088, file: !30, line: 352, baseType: !4100, size: 256)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4088, file: !30, line: 352, size: 256, elements: !4101)
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4100, file: !30, line: 353, baseType: !319, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4100, file: !30, line: 354, baseType: !319, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4100, file: !30, line: 356, baseType: !414, size: 128, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4088, file: !30, line: 359, baseType: !401, size: 512, align: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4030, file: !59, line: 409, baseType: !4107, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!89, !427, !2219}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4030, file: !59, line: 412, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!1019, !427, !4040}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4030, file: !59, line: 414, baseType: !4115, size: 64, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !4118}
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4030, file: !59, line: 416, baseType: !4121, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!89, !788, !427, !630, !7, !3495, !1597}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4030, file: !59, line: 419, baseType: !4125, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!89, !788, !427, !630, !7, !7, !400, !309}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4030, file: !59, line: 424, baseType: !4129, size: 64, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!4132, !427, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !311, line: 131, baseType: !366)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4030, file: !59, line: 425, baseType: !4134, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !4040, !756, !756}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4030, file: !59, line: 426, baseType: !4138, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!1019, !4040, !310}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4030, file: !59, line: 427, baseType: !4142, size: 64, offset: 640)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4040}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4030, file: !59, line: 428, baseType: !1157, size: 64, offset: 704)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4030, file: !59, line: 433, baseType: !4147, size: 64, offset: 768)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!89, !427, !4040, !4040, !45}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4030, file: !59, line: 435, baseType: !4151, size: 64, offset: 832)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!89, !4040}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4030, file: !59, line: 436, baseType: !4155, size: 64, offset: 896)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!1019, !4040, !756, !756}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4030, file: !59, line: 438, baseType: !4159, size: 64, offset: 960)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !4040, !4162, !4162}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4030, file: !59, line: 439, baseType: !4164, size: 64, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!89, !427, !400}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4030, file: !59, line: 442, baseType: !4168, size: 64, offset: 1088)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!89, !4171, !788, !4173}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4030, file: !59, line: 444, baseType: !1589, size: 64, offset: 1152)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4030, file: !59, line: 445, baseType: !4176, size: 64, offset: 1216)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!89, !1160, !1182}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !59, line: 486, baseType: !319, size: 64, offset: 896)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !428, file: !59, line: 487, baseType: !960, size: 320, offset: 960)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !428, file: !59, line: 488, baseType: !1670, size: 32, offset: 1280)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !428, file: !59, line: 489, baseType: !525, size: 32, offset: 1312)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !428, file: !59, line: 490, baseType: !414, size: 128, offset: 1344)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !428, file: !59, line: 491, baseType: !309, size: 64, offset: 1472)
!4185 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !30, line: 107, baseType: !4186, size: 64, offset: 192)
!4186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !30, line: 107, size: 64, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4186, file: !30, line: 108, baseType: !319, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4186, file: !30, line: 109, baseType: !319, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !408, file: !30, line: 117, baseType: !319, size: 64, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !30, line: 119, baseType: !4192, size: 320)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !30, line: 119, size: 320, elements: !4193)
!4193 = !{!4194, !4195, !4198, !4199, !4200}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4192, file: !30, line: 124, baseType: !319, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4192, file: !30, line: 125, baseType: !4196, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4192, file: !30, line: 126, baseType: !319, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4192, file: !30, line: 127, baseType: !319, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !30, line: 128, baseType: !4201, size: 64, offset: 256)
!4201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4192, file: !30, line: 128, size: 64, elements: !4202)
!4202 = !{!4203, !4204}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4201, file: !30, line: 133, baseType: !319, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4201, file: !30, line: 138, baseType: !814, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !30, line: 141, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !30, line: 141, size: 64, elements: !4207)
!4207 = !{!4208}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4206, file: !30, line: 142, baseType: !319, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !30, line: 144, baseType: !4210, size: 128)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !30, line: 144, size: 128, elements: !4211)
!4211 = !{!4212, !4282}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4210, file: !30, line: 146, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !4215)
!4215 = !{!4216, !4225, !4246, !4247, !4248, !4249, !4250, !4264, !4265, !4266}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4214, file: !14, line: 127, baseType: !4217, size: 384)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4223, !4224}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4217, file: !14, line: 22, baseType: !319, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4217, file: !14, line: 23, baseType: !398, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4217, file: !14, line: 24, baseType: !398, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4217, file: !14, line: 25, baseType: !319, size: 64, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4217, file: !14, line: 26, baseType: !319, size: 64, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4217, file: !14, line: 27, baseType: !319, size: 64, offset: 320)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4214, file: !14, line: 128, baseType: !4226, size: 128, offset: 384)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4227, line: 105, size: 128, elements: !4228)
!4227 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4228 = !{!4229, !4230}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4226, file: !4227, line: 110, baseType: !319, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4226, file: !4227, line: 118, baseType: !4231, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4227, line: 95, size: 448, elements: !4233)
!4233 = !{!4234, !4235, !4241, !4242, !4243, !4244, !4245}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4232, file: !4227, line: 96, baseType: !814, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4232, file: !4227, line: 97, baseType: !4236, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4227, line: 60, baseType: !4238)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{null, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4232, file: !4227, line: 98, baseType: !4236, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4232, file: !4227, line: 99, baseType: !1019, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4232, file: !4227, line: 100, baseType: !1019, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4232, file: !4227, line: 101, baseType: !801, size: 128, align: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4232, file: !4227, line: 102, baseType: !4240, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4214, file: !14, line: 129, baseType: !1835, size: 256, offset: 512)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4214, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4214, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4214, file: !14, line: 132, baseType: !319, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4214, file: !14, line: 133, baseType: !4251, size: 64, offset: 896)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4253)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !4254)
!4254 = !{!4255, !4259, !4260}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4253, file: !14, line: 83, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !400}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4253, file: !14, line: 89, baseType: !1455, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4253, file: !14, line: 100, baseType: !4261, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!89, !4213, !319, !319, !89}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4214, file: !14, line: 134, baseType: !309, size: 64, offset: 960)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4214, file: !14, line: 135, baseType: !89, size: 32, offset: 1024)
!4266 = !DIDerivedType(tag: DW_TAG_member, scope: !4214, file: !14, line: 136, baseType: !4267, size: 128, offset: 1088)
!4267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4214, file: !14, line: 136, size: 128, elements: !4268)
!4268 = !{!4269, !4275}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4267, file: !14, line: 137, baseType: !4270, size: 128)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4271, line: 6, size: 128, elements: !4272)
!4271 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4270, file: !4271, line: 7, baseType: !366, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4270, file: !4271, line: 8, baseType: !366, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, scope: !4267, file: !14, line: 138, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4267, file: !14, line: 138, elements: !4277)
!4277 = !{!4278, !4280}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4276, file: !14, line: 138, baseType: !4279)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4276, file: !14, line: 138, elements: !1255)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4276, file: !14, line: 138, baseType: !4281)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4270, elements: !903)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4210, file: !30, line: 147, baseType: !309, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !405, file: !30, line: 161, baseType: !801, size: 128, align: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !30, line: 164, baseType: !4285, size: 32, offset: 384)
!4285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !30, line: 164, size: 32, elements: !4286)
!4286 = !{!4287, !4288}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4285, file: !30, line: 169, baseType: !545, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4285, file: !30, line: 177, baseType: !7, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !401, file: !30, line: 181, baseType: !545, size: 32, offset: 416)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !585)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !746)
!4294 = !{!4295, !4297, !4326, !4329, !4334, !4339, !4348, !4353, !4355, !4360, !4365, !4367, !4369, !4371, !4373, !4376, !4378, !0, !4380, !4384, !4386, !4391, !4440, !4442, !4444, !4446, !4464, !4466, !4469, !4471, !4500, !4502, !4508}
!4295 = !DIGlobalVariableExpression(var: !4296, expr: !DIExpression())
!4296 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_prof_on314", scope: !2, file: !3, line: 48, type: !309, isLocal: true, isDefinition: true)
!4297 = !DIGlobalVariableExpression(var: !4298, expr: !DIExpression())
!4298 = distinct !DIGlobalVariable(name: "schedstr", scope: !4299, file: !3, line: 59, type: !4323, isLocal: true, isDefinition: true)
!4299 = distinct !DISubprogram(name: "profile_setup", scope: !3, file: !3, line: 57, type: !4300, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!89, !609}
!4302 = !{!4303, !4304, !4305, !4306, !4313, !4314, !4315, !4321, !4322}
!4303 = !DILocalVariable(name: "str", arg: 1, scope: !4299, file: !3, line: 57, type: !609)
!4304 = !DILocalVariable(name: "select", scope: !4299, file: !3, line: 61, type: !583)
!4305 = !DILocalVariable(name: "par", scope: !4299, file: !3, line: 62, type: !89)
!4306 = !DILocalVariable(name: "__UNIQUE_ID___val315", scope: !4307, file: !3, line: 71, type: !89)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 71, column: 16)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 71, column: 16)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 70, column: 37)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 70, column: 13)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 67, column: 13)
!4312 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 64, column: 6)
!4313 = !DILocalVariable(name: "__UNIQUE_ID___lo316", scope: !4307, file: !3, line: 71, type: !89)
!4314 = !DILocalVariable(name: "__UNIQUE_ID___hi317", scope: !4307, file: !3, line: 71, type: !89)
!4315 = !DILocalVariable(name: "__UNIQUE_ID___val318", scope: !4316, file: !3, line: 81, type: !89)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 81, column: 17)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 81, column: 17)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 80, column: 7)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 77, column: 14)
!4320 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 77, column: 6)
!4321 = !DILocalVariable(name: "__UNIQUE_ID___lo319", scope: !4316, file: !3, line: 81, type: !89)
!4322 = !DILocalVariable(name: "__UNIQUE_ID___hi320", scope: !4316, file: !3, line: 81, type: !89)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 72, elements: !4324)
!4324 = !{!4325}
!4325 = !DISubrange(count: 9)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(name: "kvmstr", scope: !4299, file: !3, line: 60, type: !4328, isLocal: true, isDefinition: true)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 32, elements: !884)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !4331, isLocal: true, isDefinition: true)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 320, elements: !4332)
!4332 = !{!4333}
!4333 = !DISubrange(count: 40)
!4334 = !DIGlobalVariableExpression(var: !4335, expr: !DIExpression())
!4335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !4336, isLocal: true, isDefinition: true)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 344, elements: !4337)
!4337 = !{!4338}
!4338 = !DISubrange(count: 43)
!4339 = !DIGlobalVariableExpression(var: !4340, expr: !DIExpression())
!4340 = distinct !DIGlobalVariable(name: "__setup_profile_setup", scope: !2, file: !3, line: 88, type: !4341, isLocal: true, isDefinition: true, align: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4342, line: 324, size: 192, elements: !4343)
!4342 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4343 = !{!4344, !4345, !4347}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4341, file: !4342, line: 325, baseType: !583, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4341, file: !4342, line: 326, baseType: !4346, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4341, file: !4342, line: 327, baseType: !89, size: 32, offset: 128)
!4348 = !DIGlobalVariableExpression(var: !4349, expr: !DIExpression())
!4349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !4350, isLocal: true, isDefinition: true)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 264, elements: !4351)
!4351 = !{!4352}
!4352 = !DISubrange(count: 33)
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_profile_hits327", scope: !2, file: !3, line: 322, type: !309, isLocal: true, isDefinition: true)
!4355 = !DIGlobalVariableExpression(var: !4356, expr: !DIExpression())
!4356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !4357, isLocal: true, isDefinition: true)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 40, elements: !4358)
!4358 = !{!4359}
!4359 = !DISubrange(count: 5)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !4362, isLocal: true, isDefinition: true)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 144, elements: !4363)
!4363 = !{!4364}
!4364 = !DISubrange(count: 18)
!4365 = !DIGlobalVariableExpression(var: !4366, expr: !DIExpression())
!4366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 464, type: !2972, isLocal: true, isDefinition: true)
!4367 = !DIGlobalVariableExpression(var: !4368, expr: !DIExpression())
!4368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !4362, isLocal: true, isDefinition: true)
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !3294, isLocal: true, isDefinition: true)
!4371 = !DIGlobalVariableExpression(var: !4372, expr: !DIExpression())
!4372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_profile__328_491_create_proc_profile4329", scope: !2, file: !3, line: 491, type: !309, isLocal: true, isDefinition: true)
!4373 = !DIGlobalVariableExpression(var: !4374, expr: !DIExpression())
!4374 = distinct !DIGlobalVariable(name: "prof_buffer", scope: !2, file: !3, line: 43, type: !4375, isLocal: true, isDefinition: true)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "prof_len", scope: !2, file: !3, line: 44, type: !319, isLocal: true, isDefinition: true)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(name: "prof_shift", scope: !2, file: !3, line: 45, type: !364, isLocal: true, isDefinition: true)
!4380 = !DIGlobalVariableExpression(var: !4381, expr: !DIExpression())
!4381 = distinct !DIGlobalVariable(name: "prof_cpu_mask", scope: !2, file: !3, line: 50, type: !4382, isLocal: true, isDefinition: true)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !315, line: 913, baseType: !4383)
!4383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 64, elements: !320)
!4384 = !DIGlobalVariableExpression(var: !4385, expr: !DIExpression())
!4385 = distinct !DIGlobalVariable(name: "__setup_str_profile_setup", scope: !2, file: !3, line: 88, type: !4323, isLocal: true, isDefinition: true, align: 8)
!4386 = !DIGlobalVariableExpression(var: !4387, expr: !DIExpression())
!4387 = distinct !DIGlobalVariable(scope: null, file: !288, line: 480, type: !4388, isLocal: true, isDefinition: true)
!4388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 168, elements: !4389)
!4389 = !{!4390}
!4390 = !DISubrange(count: 21)
!4391 = !DIGlobalVariableExpression(var: !4392, expr: !DIExpression())
!4392 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule325", scope: !4393, file: !3, line: 219, type: !309, isLocal: true, isDefinition: true)
!4393 = distinct !DISubprogram(name: "do_profile_hits", scope: !3, file: !3, line: 207, type: !4394, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !89, !309, !7}
!4396 = !{!4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4410, !4411, !4415, !4417, !4419, !4422, !4424, !4427, !4429, !4433, !4434, !4435, !4439}
!4397 = !DILocalVariable(name: "type", arg: 1, scope: !4393, file: !3, line: 207, type: !89)
!4398 = !DILocalVariable(name: "__pc", arg: 2, scope: !4393, file: !3, line: 207, type: !309)
!4399 = !DILocalVariable(name: "nr_hits", arg: 3, scope: !4393, file: !3, line: 207, type: !7)
!4400 = !DILocalVariable(name: "primary", scope: !4393, file: !3, line: 209, type: !319)
!4401 = !DILocalVariable(name: "secondary", scope: !4393, file: !3, line: 209, type: !319)
!4402 = !DILocalVariable(name: "flags", scope: !4393, file: !3, line: 209, type: !319)
!4403 = !DILocalVariable(name: "pc", scope: !4393, file: !3, line: 209, type: !319)
!4404 = !DILocalVariable(name: "i", scope: !4393, file: !3, line: 210, type: !89)
!4405 = !DILocalVariable(name: "j", scope: !4393, file: !3, line: 210, type: !89)
!4406 = !DILocalVariable(name: "cpu", scope: !4393, file: !3, line: 210, type: !89)
!4407 = !DILocalVariable(name: "hits", scope: !4393, file: !3, line: 211, type: !325)
!4408 = !DILocalVariable(name: "__UNIQUE_ID___x323", scope: !4409, file: !3, line: 213, type: !319)
!4409 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 213, column: 7)
!4410 = !DILocalVariable(name: "__UNIQUE_ID___y324", scope: !4409, file: !3, line: 213, type: !319)
!4411 = !DILocalVariable(name: "pscr_ret__", scope: !4412, file: !3, line: 216, type: !89)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 216, column: 8)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 216, column: 8)
!4414 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 216, column: 8)
!4415 = !DILocalVariable(name: "__vpp_verify", scope: !4416, file: !3, line: 216, type: !1350)
!4416 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 216, column: 8)
!4417 = !DILocalVariable(name: "pfo_val__", scope: !4418, file: !3, line: 216, type: !329)
!4418 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 216, column: 8)
!4419 = !DILocalVariable(name: "__vpp_verify", scope: !4420, file: !3, line: 217, type: !1350)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 217, column: 9)
!4421 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 217, column: 9)
!4422 = !DILocalVariable(name: "__ptr", scope: !4423, file: !3, line: 217, type: !319)
!4423 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 217, column: 9)
!4424 = !DILocalVariable(name: "__vpp_verify", scope: !4425, file: !3, line: 217, type: !1350)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 217, column: 40)
!4426 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 217, column: 40)
!4427 = !DILocalVariable(name: "__ptr", scope: !4428, file: !3, line: 217, type: !319)
!4428 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 217, column: 40)
!4429 = !DILocalVariable(name: "__dummy", scope: !4430, file: !3, line: 227, type: !319)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 227, column: 2)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 227, column: 2)
!4432 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 227, column: 2)
!4433 = !DILocalVariable(name: "__dummy2", scope: !4430, file: !3, line: 227, type: !319)
!4434 = !DILabel(scope: !4393, name: "out", file: !3, line: 251)
!4435 = !DILocalVariable(name: "__dummy", scope: !4436, file: !3, line: 252, type: !319)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 252, column: 2)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 252, column: 2)
!4438 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 252, column: 2)
!4439 = !DILocalVariable(name: "__dummy2", scope: !4436, file: !3, line: 252, type: !319)
!4440 = !DIGlobalVariableExpression(var: !4441, expr: !DIExpression())
!4441 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule326", scope: !4393, file: !3, line: 253, type: !309, isLocal: true, isDefinition: true)
!4442 = !DIGlobalVariableExpression(var: !4443, expr: !DIExpression())
!4443 = distinct !DIGlobalVariable(name: "cpu_profile_hits", scope: !2, file: !3, line: 52, type: !324, isLocal: true, isDefinition: true)
!4444 = !DIGlobalVariableExpression(var: !4445, expr: !DIExpression())
!4445 = distinct !DIGlobalVariable(name: "cpu_profile_flip", scope: !2, file: !3, line: 53, type: !89, isLocal: true, isDefinition: true)
!4446 = !DIGlobalVariableExpression(var: !4447, expr: !DIExpression())
!4447 = distinct !DIGlobalVariable(name: "prof_cpu_mask_proc_ops", scope: !2, file: !3, line: 367, type: !4448, isLocal: true, isDefinition: true)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4449)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !4450, line: 29, size: 768, elements: !4451)
!4450 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !4449, file: !4450, line: 30, baseType: !7, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !4449, file: !4450, line: 31, baseType: !1548, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !4449, file: !4450, line: 32, baseType: !1148, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !4449, file: !4450, line: 33, baseType: !1157, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !4449, file: !4450, line: 34, baseType: !1153, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !4449, file: !4450, line: 36, baseType: !1144, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !4449, file: !4450, line: 37, baseType: !1548, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !4449, file: !4450, line: 38, baseType: !1205, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !4449, file: !4450, line: 39, baseType: !1213, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !4449, file: !4450, line: 41, baseType: !1213, size: 64, offset: 576)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !4449, file: !4450, line: 43, baseType: !1218, size: 64, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !4449, file: !4450, line: 44, baseType: !1259, size: 64, offset: 704)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !1005, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(scope: null, file: !4468, line: 223, type: !4331, isLocal: true, isDefinition: true)
!4468 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!4469 = !DIGlobalVariableExpression(var: !4470, expr: !DIExpression())
!4470 = distinct !DIGlobalVariable(name: "profile_proc_ops", scope: !2, file: !3, line: 446, type: !4448, isLocal: true, isDefinition: true)
!4471 = !DIGlobalVariableExpression(var: !4472, expr: !DIExpression())
!4472 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule321", scope: !4473, file: !3, line: 175, type: !309, isLocal: true, isDefinition: true)
!4473 = distinct !DISubprogram(name: "profile_flip_buffers", scope: !3, file: !3, line: 169, type: !2182, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4481, !4483, !4487, !4489, !4491, !4495, !4498}
!4475 = !DILocalVariable(name: "i", scope: !4473, file: !3, line: 171, type: !89)
!4476 = !DILocalVariable(name: "j", scope: !4473, file: !3, line: 171, type: !89)
!4477 = !DILocalVariable(name: "cpu", scope: !4473, file: !3, line: 171, type: !89)
!4478 = !DILocalVariable(name: "__vpp_verify", scope: !4479, file: !3, line: 174, type: !1350)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 174, column: 6)
!4480 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 174, column: 6)
!4481 = !DILocalVariable(name: "__ptr", scope: !4482, file: !3, line: 174, type: !319)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 174, column: 6)
!4483 = !DILocalVariable(name: "pscr_ret__", scope: !4484, file: !3, line: 174, type: !89)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 174, column: 6)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 174, column: 6)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 174, column: 6)
!4487 = !DILocalVariable(name: "__vpp_verify", scope: !4488, file: !3, line: 174, type: !1350)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 174, column: 6)
!4489 = !DILocalVariable(name: "pfo_val__", scope: !4490, file: !3, line: 174, type: !329)
!4490 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 174, column: 6)
!4491 = !DILocalVariable(name: "hits", scope: !4492, file: !3, line: 178, type: !325)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 177, column: 27)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 177, column: 2)
!4494 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 177, column: 2)
!4495 = !DILocalVariable(name: "__vpp_verify", scope: !4496, file: !3, line: 178, type: !1350)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 178, column: 30)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 178, column: 30)
!4498 = !DILocalVariable(name: "__ptr", scope: !4499, file: !3, line: 178, type: !319)
!4499 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 178, column: 30)
!4500 = !DIGlobalVariableExpression(var: !4501, expr: !DIExpression())
!4501 = distinct !DIGlobalVariable(name: "profile_flip_mutex", scope: !2, file: !3, line: 54, type: !823, isLocal: true, isDefinition: true)
!4502 = !DIGlobalVariableExpression(var: !4503, expr: !DIExpression())
!4503 = distinct !DIGlobalVariable(scope: null, file: !4504, line: 249, type: !4505, isLocal: true, isDefinition: true)
!4504 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 224, elements: !4506)
!4506 = !{!4507}
!4507 = !DISubrange(count: 28)
!4508 = !DIGlobalVariableExpression(var: !4509, expr: !DIExpression())
!4509 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule322", scope: !4510, file: !3, line: 198, type: !309, isLocal: true, isDefinition: true)
!4510 = distinct !DISubprogram(name: "profile_discard_flip_buffers", scope: !3, file: !3, line: 192, type: !2182, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513, !4514, !4517, !4519, !4523, !4525, !4527, !4531, !4534}
!4512 = !DILocalVariable(name: "i", scope: !4510, file: !3, line: 194, type: !89)
!4513 = !DILocalVariable(name: "cpu", scope: !4510, file: !3, line: 194, type: !89)
!4514 = !DILocalVariable(name: "__vpp_verify", scope: !4515, file: !3, line: 197, type: !1350)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 197, column: 6)
!4516 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 197, column: 6)
!4517 = !DILocalVariable(name: "__ptr", scope: !4518, file: !3, line: 197, type: !319)
!4518 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 197, column: 6)
!4519 = !DILocalVariable(name: "pscr_ret__", scope: !4520, file: !3, line: 197, type: !89)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 197, column: 6)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 197, column: 6)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 197, column: 6)
!4523 = !DILocalVariable(name: "__vpp_verify", scope: !4524, file: !3, line: 197, type: !1350)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 197, column: 6)
!4525 = !DILocalVariable(name: "pfo_val__", scope: !4526, file: !3, line: 197, type: !329)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 197, column: 6)
!4527 = !DILocalVariable(name: "hits", scope: !4528, file: !3, line: 201, type: !325)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 200, column: 27)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 200, column: 2)
!4530 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 200, column: 2)
!4531 = !DILocalVariable(name: "__vpp_verify", scope: !4532, file: !3, line: 201, type: !1350)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 201, column: 30)
!4533 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 201, column: 30)
!4534 = !DILocalVariable(name: "__ptr", scope: !4535, file: !3, line: 201, type: !319)
!4535 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 201, column: 30)
!4536 = !{!"rsp"}
!4537 = !{i32 7, !"Dwarf Version", i32 5}
!4538 = !{i32 2, !"Debug Info Version", i32 3}
!4539 = !{i32 1, !"wchar_size", i32 2}
!4540 = !{i32 8, !"cf-protection-branch", i32 1}
!4541 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4542 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4543 = !{i32 1, !"Code Model", i32 2}
!4544 = !{i32 1, !"override-stack-alignment", i32 8}
!4545 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4546 = !DILocation(line: 57, column: 25, scope: !4299)
!4547 = !DILocation(line: 61, column: 2, scope: !4299)
!4548 = !DILocation(line: 61, column: 14, scope: !4299)
!4549 = !DILocation(line: 62, column: 2, scope: !4299)
!4550 = !DILocation(line: 62, column: 6, scope: !4299)
!4551 = !DILocation(line: 64, column: 15, scope: !4312)
!4552 = !DILocation(line: 64, column: 7, scope: !4312)
!4553 = !DILocation(line: 64, column: 6, scope: !4299)
!4554 = !DILocation(line: 65, column: 11, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 64, column: 49)
!4556 = !DILocation(line: 66, column: 10, scope: !4555)
!4557 = !DILocation(line: 67, column: 2, scope: !4555)
!4558 = !DILocation(line: 67, column: 22, scope: !4311)
!4559 = !DILocation(line: 67, column: 14, scope: !4311)
!4560 = !DILocation(line: 67, column: 13, scope: !4312)
!4561 = !DILocation(line: 68, column: 11, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 67, column: 52)
!4563 = !DILocation(line: 69, column: 10, scope: !4562)
!4564 = !DILocation(line: 70, column: 2, scope: !4562)
!4565 = !DILocation(line: 70, column: 13, scope: !4310)
!4566 = !DILocation(line: 70, column: 13, scope: !4311)
!4567 = !DILocation(line: 71, column: 16, scope: !4307)
!4568 = !DILocation(line: 71, column: 16, scope: !4308)
!4569 = !DILocation(line: 71, column: 16, scope: !4309)
!4570 = !DILocation(line: 71, column: 14, scope: !4309)
!4571 = !DILocation(line: 72, column: 11, scope: !4309)
!4572 = !DILocation(line: 73, column: 3, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 73, column: 3)
!4574 = !DILocation(line: 73, column: 3, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 73, column: 3)
!4576 = !DILocation(line: 75, column: 2, scope: !4309)
!4577 = !DILocation(line: 77, column: 6, scope: !4320)
!4578 = !DILocation(line: 77, column: 6, scope: !4299)
!4579 = !DILocation(line: 78, column: 7, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 78, column: 7)
!4581 = !DILocation(line: 78, column: 18, scope: !4580)
!4582 = !DILocation(line: 78, column: 11, scope: !4580)
!4583 = !DILocation(line: 78, column: 27, scope: !4580)
!4584 = !DILocation(line: 78, column: 7, scope: !4319)
!4585 = !DILocation(line: 79, column: 18, scope: !4580)
!4586 = !DILocation(line: 79, column: 11, scope: !4580)
!4587 = !DILocation(line: 79, column: 26, scope: !4580)
!4588 = !DILocation(line: 79, column: 8, scope: !4580)
!4589 = !DILocation(line: 79, column: 4, scope: !4580)
!4590 = !DILocation(line: 80, column: 7, scope: !4318)
!4591 = !DILocation(line: 80, column: 7, scope: !4319)
!4592 = !DILocation(line: 81, column: 17, scope: !4316)
!4593 = !DILocation(line: 81, column: 17, scope: !4317)
!4594 = !DILocation(line: 81, column: 17, scope: !4318)
!4595 = !DILocation(line: 81, column: 15, scope: !4318)
!4596 = !DILocation(line: 81, column: 4, scope: !4318)
!4597 = !DILocation(line: 82, column: 3, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 82, column: 3)
!4599 = !DILocation(line: 82, column: 3, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 82, column: 3)
!4601 = !DILocation(line: 84, column: 2, scope: !4319)
!4602 = !DILocation(line: 87, column: 1, scope: !4299)
!4603 = !DILocation(line: 86, column: 2, scope: !4299)
!4604 = !DISubprogram(name: "strncmp", scope: !4605, file: !4605, line: 91, type: !4606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4605 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!89, !583, !583, !757}
!4608 = !DISubprogram(name: "get_option", scope: !4609, file: !4609, line: 207, type: !4610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4609 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!89, !4612, !322}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!4613 = !DISubprogram(name: "_printk", scope: !4614, file: !4614, line: 153, type: !4615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4614 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!89, !583, null}
!4617 = !DISubprogram(name: "strlen", scope: !4605, file: !4605, line: 128, type: !4618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!319, !583}
!4620 = distinct !DISubprogram(name: "profile_init", scope: !3, file: !3, line: 91, type: !1953, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4621)
!4621 = !{!4622}
!4622 = !DILocalVariable(name: "buffer_bytes", scope: !4620, file: !3, line: 93, type: !89)
!4623 = !DILocation(line: 93, column: 2, scope: !4620)
!4624 = !DILocation(line: 93, column: 6, scope: !4620)
!4625 = !DILocation(line: 94, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 94, column: 6)
!4627 = !DILocation(line: 94, column: 6, scope: !4620)
!4628 = !DILocation(line: 95, column: 3, scope: !4626)
!4629 = !DILocation(line: 98, column: 34, scope: !4620)
!4630 = !DILocation(line: 98, column: 31, scope: !4620)
!4631 = !DILocation(line: 98, column: 11, scope: !4620)
!4632 = !DILocation(line: 100, column: 7, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 100, column: 6)
!4634 = !DILocation(line: 100, column: 6, scope: !4620)
!4635 = !DILocation(line: 101, column: 3, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 101, column: 3)
!4637 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 100, column: 17)
!4638 = !DILocation(line: 101, column: 3, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 101, column: 3)
!4640 = !DILocation(line: 102, column: 11, scope: !4637)
!4641 = !DILocation(line: 103, column: 3, scope: !4637)
!4642 = !DILocation(line: 106, column: 17, scope: !4620)
!4643 = !DILocation(line: 106, column: 25, scope: !4620)
!4644 = !DILocation(line: 106, column: 15, scope: !4620)
!4645 = !DILocation(line: 108, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 108, column: 6)
!4647 = !DILocation(line: 108, column: 6, scope: !4620)
!4648 = !DILocation(line: 109, column: 3, scope: !4646)
!4649 = !DILocation(line: 111, column: 2, scope: !4620)
!4650 = !DILocation(line: 113, column: 24, scope: !4620)
!4651 = !DILocation(line: 113, column: 16, scope: !4620)
!4652 = !DILocation(line: 113, column: 14, scope: !4620)
!4653 = !DILocation(line: 114, column: 6, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 114, column: 6)
!4655 = !DILocation(line: 114, column: 6, scope: !4620)
!4656 = !DILocation(line: 115, column: 3, scope: !4654)
!4657 = !DILocation(line: 117, column: 34, scope: !4620)
!4658 = !DILocation(line: 117, column: 16, scope: !4620)
!4659 = !DILocation(line: 117, column: 14, scope: !4620)
!4660 = !DILocation(line: 119, column: 6, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 119, column: 6)
!4662 = !DILocation(line: 119, column: 6, scope: !4620)
!4663 = !DILocation(line: 120, column: 3, scope: !4661)
!4664 = !DILocation(line: 122, column: 24, scope: !4620)
!4665 = !DILocation(line: 122, column: 16, scope: !4620)
!4666 = !DILocation(line: 122, column: 14, scope: !4620)
!4667 = !DILocation(line: 123, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 123, column: 6)
!4669 = !DILocation(line: 123, column: 6, scope: !4620)
!4670 = !DILocation(line: 124, column: 3, scope: !4668)
!4671 = !DILocation(line: 126, column: 2, scope: !4620)
!4672 = !DILocation(line: 127, column: 2, scope: !4620)
!4673 = !DILocation(line: 128, column: 1, scope: !4620)
!4674 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !315, file: !315, line: 918, type: !4675, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4678)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!1019, !4677, !310}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4678 = !{!4679, !4680}
!4679 = !DILocalVariable(name: "mask", arg: 1, scope: !4674, file: !315, line: 918, type: !4677)
!4680 = !DILocalVariable(name: "flags", arg: 2, scope: !4674, file: !315, line: 918, type: !310)
!4681 = !DILocation(line: 918, column: 53, scope: !4674)
!4682 = !DILocation(line: 918, column: 65, scope: !4674)
!4683 = !DILocation(line: 920, column: 2, scope: !4674)
!4684 = distinct !DISubprogram(name: "cpumask_copy", scope: !315, file: !315, line: 737, type: !4685, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4688)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !4687, !312}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!4688 = !{!4689, !4690}
!4689 = !DILocalVariable(name: "dstp", arg: 1, scope: !4684, file: !315, line: 737, type: !4687)
!4690 = !DILocalVariable(name: "srcp", arg: 2, scope: !4684, file: !315, line: 738, type: !312)
!4691 = !DILocation(line: 737, column: 49, scope: !4684)
!4692 = !DILocation(line: 738, column: 27, scope: !4684)
!4693 = !DILocation(line: 740, column: 14, scope: !4684)
!4694 = !DILocation(line: 740, column: 34, scope: !4684)
!4695 = !DILocation(line: 740, column: 2, scope: !4684)
!4696 = !DILocation(line: 741, column: 1, scope: !4684)
!4697 = distinct !DISubprogram(name: "kzalloc", scope: !288, file: !288, line: 719, type: !4698, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4700)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!309, !756, !310}
!4700 = !{!4701, !4702}
!4701 = !DILocalVariable(name: "size", arg: 1, scope: !4697, file: !288, line: 719, type: !756)
!4702 = !DILocalVariable(name: "flags", arg: 2, scope: !4697, file: !288, line: 719, type: !310)
!4703 = !DILocation(line: 719, column: 52, scope: !4697)
!4704 = !DILocation(line: 719, column: 64, scope: !4697)
!4705 = !DILocation(line: 721, column: 17, scope: !4697)
!4706 = !DILocation(line: 721, column: 23, scope: !4697)
!4707 = !DILocation(line: 721, column: 29, scope: !4697)
!4708 = !DILocation(line: 721, column: 9, scope: !4697)
!4709 = !DILocation(line: 721, column: 2, scope: !4697)
!4710 = !DISubprogram(name: "alloc_pages_exact", scope: !4468, file: !4468, line: 292, type: !4698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4711 = !DISubprogram(name: "vzalloc", scope: !3488, file: !3488, line: 141, type: !4712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!309, !319}
!4714 = distinct !DISubprogram(name: "free_cpumask_var", scope: !315, file: !315, line: 946, type: !4715, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4717)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{null, !4687}
!4717 = !{!4718}
!4718 = !DILocalVariable(name: "mask", arg: 1, scope: !4714, file: !315, line: 946, type: !4687)
!4719 = !DILocation(line: 946, column: 51, scope: !4714)
!4720 = !DILocation(line: 948, column: 1, scope: !4714)
!4721 = distinct !DISubprogram(name: "profile_hits", scope: !3, file: !3, line: 316, type: !4394, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4722)
!4722 = !{!4723, !4724, !4725}
!4723 = !DILocalVariable(name: "type", arg: 1, scope: !4721, file: !3, line: 316, type: !89)
!4724 = !DILocalVariable(name: "__pc", arg: 2, scope: !4721, file: !3, line: 316, type: !309)
!4725 = !DILocalVariable(name: "nr_hits", arg: 3, scope: !4721, file: !3, line: 316, type: !7)
!4726 = !DILocation(line: 316, column: 23, scope: !4721)
!4727 = !DILocation(line: 316, column: 35, scope: !4721)
!4728 = !DILocation(line: 316, column: 54, scope: !4721)
!4729 = !DILocation(line: 318, column: 6, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 318, column: 6)
!4731 = !DILocation(line: 318, column: 17, scope: !4730)
!4732 = !DILocation(line: 318, column: 14, scope: !4730)
!4733 = !DILocation(line: 318, column: 22, scope: !4730)
!4734 = !DILocation(line: 318, column: 26, scope: !4730)
!4735 = !DILocation(line: 318, column: 6, scope: !4721)
!4736 = !DILocation(line: 319, column: 3, scope: !4730)
!4737 = !DILocation(line: 320, column: 18, scope: !4721)
!4738 = !DILocation(line: 320, column: 24, scope: !4721)
!4739 = !DILocation(line: 320, column: 30, scope: !4721)
!4740 = !DILocation(line: 320, column: 2, scope: !4721)
!4741 = !DILocation(line: 321, column: 1, scope: !4721)
!4742 = !DILocation(line: 207, column: 33, scope: !4393)
!4743 = !DILocation(line: 207, column: 45, scope: !4393)
!4744 = !DILocation(line: 207, column: 64, scope: !4393)
!4745 = !DILocation(line: 209, column: 2, scope: !4393)
!4746 = !DILocation(line: 209, column: 16, scope: !4393)
!4747 = !DILocation(line: 209, column: 25, scope: !4393)
!4748 = !DILocation(line: 209, column: 36, scope: !4393)
!4749 = !DILocation(line: 209, column: 43, scope: !4393)
!4750 = !DILocation(line: 209, column: 63, scope: !4393)
!4751 = !DILocation(line: 209, column: 48, scope: !4393)
!4752 = !DILocation(line: 210, column: 2, scope: !4393)
!4753 = !DILocation(line: 210, column: 6, scope: !4393)
!4754 = !DILocation(line: 210, column: 9, scope: !4393)
!4755 = !DILocation(line: 210, column: 12, scope: !4393)
!4756 = !DILocation(line: 211, column: 2, scope: !4393)
!4757 = !DILocation(line: 211, column: 22, scope: !4393)
!4758 = !DILocation(line: 213, column: 7, scope: !4409)
!4759 = !DILocation(line: 213, column: 7, scope: !4393)
!4760 = !DILocation(line: 213, column: 5, scope: !4393)
!4761 = !DILocation(line: 214, column: 17, scope: !4393)
!4762 = !DILocation(line: 214, column: 20, scope: !4393)
!4763 = !DILocation(line: 214, column: 44, scope: !4393)
!4764 = !DILocation(line: 214, column: 14, scope: !4393)
!4765 = !DILocation(line: 214, column: 6, scope: !4393)
!4766 = !DILocation(line: 214, column: 4, scope: !4393)
!4767 = !DILocation(line: 215, column: 17, scope: !4393)
!4768 = !DILocation(line: 215, column: 20, scope: !4393)
!4769 = !DILocation(line: 215, column: 15, scope: !4393)
!4770 = !DILocation(line: 215, column: 26, scope: !4393)
!4771 = !DILocation(line: 215, column: 50, scope: !4393)
!4772 = !DILocation(line: 215, column: 12, scope: !4393)
!4773 = !DILocation(line: 216, column: 8, scope: !4414)
!4774 = !DILocation(line: 216, column: 8, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 216, column: 8)
!4776 = !{i64 2154799678}
!4777 = !DILocation(line: 216, column: 8, scope: !4413)
!4778 = !DILocation(line: 216, column: 8, scope: !4412)
!4779 = !DILocation(line: 216, column: 8, scope: !4416)
!4780 = !DILocation(line: 216, column: 8, scope: !4418)
!4781 = !{i64 2154802316}
!4782 = !DILocation(line: 216, column: 6, scope: !4393)
!4783 = !DILocation(line: 217, column: 9, scope: !4421)
!4784 = !DILocation(line: 217, column: 9, scope: !4420)
!4785 = !DILocation(line: 217, column: 9, scope: !4423)
!4786 = !DILocation(line: 217, column: 40, scope: !4426)
!4787 = !DILocation(line: 217, column: 40, scope: !4425)
!4788 = !DILocation(line: 217, column: 40, scope: !4428)
!4789 = !DILocation(line: 217, column: 40, scope: !4393)
!4790 = !DILocation(line: 217, column: 9, scope: !4393)
!4791 = !DILocation(line: 217, column: 7, scope: !4393)
!4792 = !DILocation(line: 218, column: 7, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 218, column: 6)
!4794 = !DILocation(line: 218, column: 6, scope: !4393)
!4795 = !DILocation(line: 219, column: 3, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 218, column: 13)
!4797 = !DILocation(line: 219, column: 3, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 219, column: 3)
!4799 = !{i64 2154804981}
!4800 = !DILocation(line: 219, column: 3, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 219, column: 3)
!4802 = !DILocation(line: 219, column: 3, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 219, column: 3)
!4804 = !{i64 2154805163}
!4805 = !DILocation(line: 220, column: 3, scope: !4796)
!4806 = !DILocation(line: 227, column: 2, scope: !4393)
!4807 = !DILocation(line: 227, column: 2, scope: !4432)
!4808 = !DILocation(line: 227, column: 2, scope: !4430)
!4809 = !DILocation(line: 227, column: 2, scope: !4431)
!4810 = !DILocation(line: 228, column: 2, scope: !4393)
!4811 = !DILocation(line: 229, column: 10, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 229, column: 3)
!4813 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 228, column: 5)
!4814 = !DILocation(line: 229, column: 8, scope: !4812)
!4815 = !DILocation(line: 229, column: 15, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 229, column: 3)
!4817 = !DILocation(line: 229, column: 17, scope: !4816)
!4818 = !DILocation(line: 229, column: 3, scope: !4812)
!4819 = !DILocation(line: 230, column: 8, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 230, column: 8)
!4821 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 229, column: 39)
!4822 = !DILocation(line: 230, column: 13, scope: !4820)
!4823 = !DILocation(line: 230, column: 17, scope: !4820)
!4824 = !DILocation(line: 230, column: 15, scope: !4820)
!4825 = !DILocation(line: 230, column: 20, scope: !4820)
!4826 = !DILocation(line: 230, column: 26, scope: !4820)
!4827 = !DILocation(line: 230, column: 23, scope: !4820)
!4828 = !DILocation(line: 230, column: 8, scope: !4821)
!4829 = !DILocation(line: 231, column: 25, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 230, column: 30)
!4831 = !DILocation(line: 231, column: 5, scope: !4830)
!4832 = !DILocation(line: 231, column: 10, scope: !4830)
!4833 = !DILocation(line: 231, column: 14, scope: !4830)
!4834 = !DILocation(line: 231, column: 12, scope: !4830)
!4835 = !DILocation(line: 231, column: 17, scope: !4830)
!4836 = !DILocation(line: 231, column: 22, scope: !4830)
!4837 = !DILocation(line: 232, column: 5, scope: !4830)
!4838 = !DILocation(line: 233, column: 16, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 233, column: 15)
!4840 = !DILocation(line: 233, column: 21, scope: !4839)
!4841 = !DILocation(line: 233, column: 25, scope: !4839)
!4842 = !DILocation(line: 233, column: 23, scope: !4839)
!4843 = !DILocation(line: 233, column: 28, scope: !4839)
!4844 = !DILocation(line: 233, column: 15, scope: !4820)
!4845 = !DILocation(line: 234, column: 22, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 233, column: 34)
!4847 = !DILocation(line: 234, column: 5, scope: !4846)
!4848 = !DILocation(line: 234, column: 10, scope: !4846)
!4849 = !DILocation(line: 234, column: 14, scope: !4846)
!4850 = !DILocation(line: 234, column: 12, scope: !4846)
!4851 = !DILocation(line: 234, column: 17, scope: !4846)
!4852 = !DILocation(line: 234, column: 20, scope: !4846)
!4853 = !DILocation(line: 235, column: 24, scope: !4846)
!4854 = !DILocation(line: 235, column: 5, scope: !4846)
!4855 = !DILocation(line: 235, column: 10, scope: !4846)
!4856 = !DILocation(line: 235, column: 14, scope: !4846)
!4857 = !DILocation(line: 235, column: 12, scope: !4846)
!4858 = !DILocation(line: 235, column: 17, scope: !4846)
!4859 = !DILocation(line: 235, column: 22, scope: !4846)
!4860 = !DILocation(line: 236, column: 5, scope: !4846)
!4861 = !DILocation(line: 238, column: 3, scope: !4821)
!4862 = !DILocation(line: 229, column: 34, scope: !4816)
!4863 = !DILocation(line: 229, column: 3, scope: !4816)
!4864 = distinct !{!4864, !4818, !4865, !4866, !4867}
!4865 = !DILocation(line: 238, column: 3, scope: !4812)
!4866 = !{!"llvm.loop.mustprogress"}
!4867 = !{!"llvm.loop.unroll.disable"}
!4868 = !DILocation(line: 239, column: 8, scope: !4813)
!4869 = !DILocation(line: 239, column: 12, scope: !4813)
!4870 = !DILocation(line: 239, column: 10, scope: !4813)
!4871 = !DILocation(line: 239, column: 23, scope: !4813)
!4872 = !DILocation(line: 239, column: 7, scope: !4813)
!4873 = !DILocation(line: 239, column: 5, scope: !4813)
!4874 = !DILocation(line: 240, column: 2, scope: !4813)
!4875 = !DILocation(line: 240, column: 11, scope: !4393)
!4876 = !DILocation(line: 240, column: 16, scope: !4393)
!4877 = !DILocation(line: 240, column: 13, scope: !4393)
!4878 = distinct !{!4878, !4810, !4879, !4866, !4867}
!4879 = !DILocation(line: 240, column: 23, scope: !4393)
!4880 = !DILocation(line: 246, column: 13, scope: !4393)
!4881 = !DILocation(line: 246, column: 23, scope: !4393)
!4882 = !DILocation(line: 246, column: 35, scope: !4393)
!4883 = !DILocation(line: 246, column: 2, scope: !4393)
!4884 = !DILocation(line: 247, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 247, column: 2)
!4886 = !DILocation(line: 247, column: 7, scope: !4885)
!4887 = !DILocation(line: 247, column: 14, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 247, column: 2)
!4889 = !DILocation(line: 247, column: 16, scope: !4888)
!4890 = !DILocation(line: 247, column: 2, scope: !4885)
!4891 = !DILocation(line: 248, column: 14, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 247, column: 39)
!4893 = !DILocation(line: 248, column: 19, scope: !4892)
!4894 = !DILocation(line: 248, column: 22, scope: !4892)
!4895 = !DILocation(line: 248, column: 29, scope: !4892)
!4896 = !DILocation(line: 248, column: 41, scope: !4892)
!4897 = !DILocation(line: 248, column: 46, scope: !4892)
!4898 = !DILocation(line: 248, column: 49, scope: !4892)
!4899 = !DILocation(line: 248, column: 3, scope: !4892)
!4900 = !DILocation(line: 249, column: 16, scope: !4892)
!4901 = !DILocation(line: 249, column: 21, scope: !4892)
!4902 = !DILocation(line: 249, column: 24, scope: !4892)
!4903 = !DILocation(line: 249, column: 29, scope: !4892)
!4904 = !DILocation(line: 249, column: 3, scope: !4892)
!4905 = !DILocation(line: 249, column: 8, scope: !4892)
!4906 = !DILocation(line: 249, column: 11, scope: !4892)
!4907 = !DILocation(line: 249, column: 14, scope: !4892)
!4908 = !DILocation(line: 250, column: 2, scope: !4892)
!4909 = !DILocation(line: 247, column: 34, scope: !4888)
!4910 = !DILocation(line: 247, column: 2, scope: !4888)
!4911 = distinct !{!4911, !4890, !4912, !4866, !4867}
!4912 = !DILocation(line: 250, column: 2, scope: !4885)
!4913 = !DILocation(line: 251, column: 1, scope: !4393)
!4914 = !DILocation(line: 252, column: 2, scope: !4393)
!4915 = !DILocation(line: 252, column: 2, scope: !4438)
!4916 = !DILocation(line: 252, column: 2, scope: !4436)
!4917 = !DILocation(line: 252, column: 2, scope: !4437)
!4918 = !DILocation(line: 252, column: 2, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 252, column: 2)
!4920 = !DILocation(line: 253, column: 2, scope: !4393)
!4921 = !DILocation(line: 253, column: 2, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 253, column: 2)
!4923 = !{i64 2154807723}
!4924 = !DILocation(line: 253, column: 2, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 253, column: 2)
!4926 = !DILocation(line: 253, column: 2, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 253, column: 2)
!4928 = !{i64 2154807905}
!4929 = !DILocation(line: 254, column: 1, scope: !4393)
!4930 = distinct !DISubprogram(name: "profile_tick", scope: !3, file: !3, line: 324, type: !3159, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4931)
!4931 = !{!4932, !4933, !4934, !4938, !4940}
!4932 = !DILocalVariable(name: "type", arg: 1, scope: !4930, file: !3, line: 324, type: !89)
!4933 = !DILocalVariable(name: "regs", scope: !4930, file: !3, line: 326, type: !337)
!4934 = !DILocalVariable(name: "pscr_ret__", scope: !4935, file: !3, line: 329, type: !89)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 329, column: 23)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 329, column: 23)
!4937 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 328, column: 6)
!4938 = !DILocalVariable(name: "__vpp_verify", scope: !4939, file: !3, line: 329, type: !1350)
!4939 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 329, column: 23)
!4940 = !DILocalVariable(name: "pfo_val__", scope: !4941, file: !3, line: 329, type: !329)
!4941 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 329, column: 23)
!4942 = !DILocation(line: 324, column: 23, scope: !4930)
!4943 = !DILocation(line: 326, column: 2, scope: !4930)
!4944 = !DILocation(line: 326, column: 18, scope: !4930)
!4945 = !DILocation(line: 326, column: 25, scope: !4930)
!4946 = !DILocation(line: 328, column: 17, scope: !4937)
!4947 = !DILocation(line: 328, column: 7, scope: !4937)
!4948 = !DILocation(line: 328, column: 23, scope: !4937)
!4949 = !DILocation(line: 328, column: 26, scope: !4937)
!4950 = !DILocation(line: 328, column: 59, scope: !4937)
!4951 = !DILocation(line: 329, column: 23, scope: !4936)
!4952 = !DILocation(line: 329, column: 23, scope: !4935)
!4953 = !DILocation(line: 329, column: 23, scope: !4939)
!4954 = !DILocation(line: 329, column: 23, scope: !4941)
!4955 = !{i64 2154821542}
!4956 = !DILocation(line: 329, column: 6, scope: !4937)
!4957 = !DILocation(line: 328, column: 6, scope: !4930)
!4958 = !DILocation(line: 330, column: 15, scope: !4937)
!4959 = !DILocation(line: 330, column: 40, scope: !4937)
!4960 = !DILocation(line: 330, column: 29, scope: !4937)
!4961 = !DILocation(line: 330, column: 21, scope: !4937)
!4962 = !DILocation(line: 330, column: 3, scope: !4937)
!4963 = !DILocation(line: 331, column: 1, scope: !4930)
!4964 = distinct !DISubprogram(name: "get_irq_regs", scope: !4965, file: !4965, line: 19, type: !4966, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4968)
!4965 = !DIFile(filename: "./include/asm-generic/irq_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b19b686e9556a0825595e081e13ea17")
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!337}
!4968 = !{!4969, !4972, !4974}
!4969 = !DILocalVariable(name: "pscr_ret__", scope: !4970, file: !4965, line: 21, type: !337)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !4965, line: 21, column: 9)
!4971 = distinct !DILexicalBlock(scope: !4964, file: !4965, line: 21, column: 9)
!4972 = !DILocalVariable(name: "__vpp_verify", scope: !4973, file: !4965, line: 21, type: !1350)
!4973 = distinct !DILexicalBlock(scope: !4970, file: !4965, line: 21, column: 9)
!4974 = !DILocalVariable(name: "pfo_val__", scope: !4975, file: !4965, line: 21, type: !366)
!4975 = distinct !DILexicalBlock(scope: !4970, file: !4965, line: 21, column: 9)
!4976 = !DILocation(line: 21, column: 9, scope: !4971)
!4977 = !DILocation(line: 21, column: 9, scope: !4970)
!4978 = !DILocation(line: 21, column: 9, scope: !4973)
!4979 = !DILocation(line: 21, column: 9, scope: !4975)
!4980 = !{i64 2154705373}
!4981 = !DILocation(line: 21, column: 2, scope: !4964)
!4982 = distinct !DISubprogram(name: "user_mode", scope: !339, file: !339, line: 209, type: !4983, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!89, !337}
!4985 = !{!4986}
!4986 = !DILocalVariable(name: "regs", arg: 1, scope: !4982, file: !339, line: 209, type: !337)
!4987 = !DILocation(line: 209, column: 54, scope: !4982)
!4988 = !DILocation(line: 214, column: 12, scope: !4982)
!4989 = !DILocation(line: 214, column: 18, scope: !4982)
!4990 = !DILocation(line: 214, column: 21, scope: !4982)
!4991 = !DILocation(line: 214, column: 10, scope: !4982)
!4992 = !DILocation(line: 214, column: 9, scope: !4982)
!4993 = !DILocation(line: 214, column: 2, scope: !4982)
!4994 = distinct !DISubprogram(name: "cpumask_available", scope: !315, file: !315, line: 954, type: !4995, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4997)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!1019, !4687}
!4997 = !{!4998}
!4998 = !DILocalVariable(name: "mask", arg: 1, scope: !4994, file: !315, line: 954, type: !4687)
!4999 = !DILocation(line: 954, column: 52, scope: !4994)
!5000 = !DILocation(line: 956, column: 2, scope: !4994)
!5001 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !315, file: !315, line: 502, type: !5002, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5004)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!1019, !89, !312}
!5004 = !{!5005, !5006}
!5005 = !DILocalVariable(name: "cpu", arg: 1, scope: !5001, file: !315, line: 502, type: !89)
!5006 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5001, file: !315, line: 502, type: !312)
!5007 = !DILocation(line: 502, column: 50, scope: !5001)
!5008 = !DILocation(line: 502, column: 77, scope: !5001)
!5009 = !DILocation(line: 504, column: 9, scope: !5001)
!5010 = !DILocation(line: 504, column: 2, scope: !5001)
!5011 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5012, file: !5012, line: 313, type: !5013, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5015)
!5012 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5013 = !DISubroutineType(types: !5014)
!5014 = !{null, !583}
!5015 = !{!5016}
!5016 = !DILocalVariable(name: "op", arg: 1, scope: !5011, file: !5012, line: 313, type: !583)
!5017 = !DILocation(line: 313, column: 66, scope: !5011)
!5018 = !DILocation(line: 313, column: 72, scope: !5011)
!5019 = distinct !DISubprogram(name: "profile_hit", scope: !5020, file: !5020, line: 51, type: !5021, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5023)
!5020 = !DIFile(filename: "./include/linux/profile.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "891c8d5616dd007cc2ab9d018022f868")
!5021 = !DISubroutineType(types: !5022)
!5022 = !{null, !89, !309}
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "type", arg: 1, scope: !5019, file: !5020, line: 51, type: !89)
!5025 = !DILocalVariable(name: "ip", arg: 2, scope: !5019, file: !5020, line: 51, type: !309)
!5026 = !DILocation(line: 51, column: 36, scope: !5019)
!5027 = !DILocation(line: 51, column: 48, scope: !5019)
!5028 = !DILocation(line: 56, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5019, file: !5020, line: 56, column: 6)
!5030 = !DILocation(line: 56, column: 6, scope: !5019)
!5031 = !DILocation(line: 57, column: 16, scope: !5029)
!5032 = !DILocation(line: 57, column: 22, scope: !5029)
!5033 = !DILocation(line: 57, column: 3, scope: !5029)
!5034 = !DILocation(line: 58, column: 1, scope: !5019)
!5035 = !DISubprogram(name: "profile_pc", scope: !339, file: !339, line: 183, type: !5036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!319, !337}
!5038 = distinct !DISubprogram(name: "create_prof_cpu_mask", scope: !3, file: !3, line: 375, type: !2182, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5039 = !DILocation(line: 378, column: 2, scope: !5038)
!5040 = !DILocation(line: 379, column: 1, scope: !5038)
!5041 = !DISubprogram(name: "proc_create", scope: !4450, file: !4450, line: 110, type: !5042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!5044, !583, !435, !5044, !5046}
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5020, line: 16, flags: DIFlagFwdDecl)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!5047 = distinct !DISubprogram(name: "setup_profiling_timer", scope: !3, file: !3, line: 416, type: !5048, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5050)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!89, !7}
!5050 = !{!5051}
!5051 = !DILocalVariable(name: "mult", arg: 1, scope: !5047, file: !3, line: 416, type: !7)
!5052 = !DILocation(line: 416, column: 43, scope: !5047)
!5053 = !DILocation(line: 418, column: 2, scope: !5047)
!5054 = distinct !DISubprogram(name: "create_proc_profile", scope: !3, file: !3, line: 452, type: !1953, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5055)
!5055 = !{!5056, !5057, !5058, !5059, !5060}
!5056 = !DILocalVariable(name: "entry", scope: !5054, file: !3, line: 454, type: !5044)
!5057 = !DILocalVariable(name: "online_state", scope: !5054, file: !3, line: 456, type: !87)
!5058 = !DILocalVariable(name: "err", scope: !5054, file: !3, line: 459, type: !89)
!5059 = !DILabel(scope: !5054, name: "err_state_onl", file: !3, line: 483)
!5060 = !DILabel(scope: !5054, name: "err_state_prep", file: !3, line: 486)
!5061 = !DILocation(line: 454, column: 2, scope: !5054)
!5062 = !DILocation(line: 454, column: 25, scope: !5054)
!5063 = !DILocation(line: 456, column: 2, scope: !5054)
!5064 = !DILocation(line: 456, column: 19, scope: !5054)
!5065 = !DILocation(line: 459, column: 2, scope: !5054)
!5066 = !DILocation(line: 459, column: 6, scope: !5054)
!5067 = !DILocation(line: 461, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 461, column: 6)
!5069 = !DILocation(line: 461, column: 6, scope: !5054)
!5070 = !DILocation(line: 462, column: 3, scope: !5068)
!5071 = !DILocation(line: 464, column: 8, scope: !5054)
!5072 = !DILocation(line: 464, column: 6, scope: !5054)
!5073 = !DILocation(line: 466, column: 6, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 466, column: 6)
!5075 = !DILocation(line: 466, column: 6, scope: !5054)
!5076 = !DILocation(line: 467, column: 10, scope: !5074)
!5077 = !DILocation(line: 467, column: 3, scope: !5074)
!5078 = !DILocation(line: 469, column: 8, scope: !5054)
!5079 = !DILocation(line: 469, column: 6, scope: !5054)
!5080 = !DILocation(line: 471, column: 6, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 471, column: 6)
!5082 = !DILocation(line: 471, column: 10, scope: !5081)
!5083 = !DILocation(line: 471, column: 6, scope: !5054)
!5084 = !DILocation(line: 472, column: 3, scope: !5081)
!5085 = !DILocation(line: 473, column: 17, scope: !5054)
!5086 = !DILocation(line: 473, column: 15, scope: !5054)
!5087 = !DILocation(line: 474, column: 6, scope: !5054)
!5088 = !DILocation(line: 476, column: 10, scope: !5054)
!5089 = !DILocation(line: 476, column: 8, scope: !5054)
!5090 = !DILocation(line: 478, column: 7, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 478, column: 6)
!5092 = !DILocation(line: 478, column: 6, scope: !5054)
!5093 = !DILocation(line: 479, column: 3, scope: !5091)
!5094 = !DILocation(line: 480, column: 16, scope: !5054)
!5095 = !DILocation(line: 480, column: 28, scope: !5054)
!5096 = !DILocation(line: 480, column: 26, scope: !5054)
!5097 = !DILocation(line: 480, column: 38, scope: !5054)
!5098 = !DILocation(line: 480, column: 2, scope: !5054)
!5099 = !DILocation(line: 482, column: 9, scope: !5054)
!5100 = !DILocation(line: 482, column: 2, scope: !5054)
!5101 = !DILocation(line: 483, column: 1, scope: !5054)
!5102 = !DILocation(line: 485, column: 21, scope: !5054)
!5103 = !DILocation(line: 485, column: 2, scope: !5054)
!5104 = !DILocation(line: 486, column: 1, scope: !5054)
!5105 = !DILocation(line: 487, column: 2, scope: !5054)
!5106 = !DILocation(line: 489, column: 9, scope: !5054)
!5107 = !DILocation(line: 489, column: 2, scope: !5054)
!5108 = !DILocation(line: 490, column: 1, scope: !5054)
!5109 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !88, file: !88, line: 283, type: !5110, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5113)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!89, !87, !583, !5112, !5112}
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5113 = !{!5114, !5115, !5116, !5117}
!5114 = !DILocalVariable(name: "state", arg: 1, scope: !5109, file: !88, line: 283, type: !87)
!5115 = !DILocalVariable(name: "name", arg: 2, scope: !5109, file: !88, line: 284, type: !583)
!5116 = !DILocalVariable(name: "startup", arg: 3, scope: !5109, file: !88, line: 285, type: !5112)
!5117 = !DILocalVariable(name: "teardown", arg: 4, scope: !5109, file: !88, line: 286, type: !5112)
!5118 = !DILocation(line: 283, column: 54, scope: !5109)
!5119 = !DILocation(line: 284, column: 21, scope: !5109)
!5120 = !DILocation(line: 285, column: 15, scope: !5109)
!5121 = !DILocation(line: 286, column: 15, scope: !5109)
!5122 = !DILocation(line: 288, column: 29, scope: !5109)
!5123 = !DILocation(line: 288, column: 36, scope: !5109)
!5124 = !DILocation(line: 288, column: 48, scope: !5109)
!5125 = !DILocation(line: 288, column: 57, scope: !5109)
!5126 = !DILocation(line: 288, column: 9, scope: !5109)
!5127 = !DILocation(line: 288, column: 2, scope: !5109)
!5128 = distinct !DISubprogram(name: "profile_prepare_cpu", scope: !3, file: !3, line: 274, type: !5048, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5129 = !{!5130, !5131, !5132, !5133, !5134, !5137, !5139, !5146, !5148, !5151}
!5130 = !DILocalVariable(name: "cpu", arg: 1, scope: !5128, file: !3, line: 274, type: !7)
!5131 = !DILocalVariable(name: "i", scope: !5128, file: !3, line: 276, type: !89)
!5132 = !DILocalVariable(name: "node", scope: !5128, file: !3, line: 276, type: !89)
!5133 = !DILocalVariable(name: "page", scope: !5128, file: !3, line: 277, type: !400)
!5134 = !DILocalVariable(name: "__vpp_verify", scope: !5135, file: !3, line: 279, type: !1350)
!5135 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 279, column: 2)
!5136 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 279, column: 2)
!5137 = !DILocalVariable(name: "__ptr", scope: !5138, file: !3, line: 279, type: !319)
!5138 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 279, column: 2)
!5139 = !DILocalVariable(name: "__vpp_verify", scope: !5140, file: !3, line: 282, type: !1350)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 282, column: 7)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 282, column: 7)
!5142 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 282, column: 7)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 281, column: 26)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 281, column: 2)
!5145 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 281, column: 2)
!5146 = !DILocalVariable(name: "__ptr", scope: !5147, file: !3, line: 282, type: !319)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 282, column: 7)
!5148 = !DILocalVariable(name: "__vpp_verify", scope: !5149, file: !3, line: 290, type: !1350)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 290, column: 3)
!5150 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 290, column: 3)
!5151 = !DILocalVariable(name: "__ptr", scope: !5152, file: !3, line: 290, type: !319)
!5152 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 290, column: 3)
!5153 = !DILocation(line: 274, column: 45, scope: !5128)
!5154 = !DILocation(line: 276, column: 2, scope: !5128)
!5155 = !DILocation(line: 276, column: 6, scope: !5128)
!5156 = !DILocation(line: 276, column: 9, scope: !5128)
!5157 = !DILocation(line: 276, column: 27, scope: !5128)
!5158 = !DILocation(line: 276, column: 16, scope: !5128)
!5159 = !DILocation(line: 277, column: 2, scope: !5128)
!5160 = !DILocation(line: 277, column: 15, scope: !5128)
!5161 = !DILocation(line: 279, column: 2, scope: !5136)
!5162 = !DILocation(line: 279, column: 2, scope: !5135)
!5163 = !DILocation(line: 279, column: 2, scope: !5138)
!5164 = !DILocation(line: 279, column: 33, scope: !5128)
!5165 = !DILocation(line: 281, column: 9, scope: !5145)
!5166 = !DILocation(line: 281, column: 7, scope: !5145)
!5167 = !DILocation(line: 281, column: 14, scope: !5144)
!5168 = !DILocation(line: 281, column: 16, scope: !5144)
!5169 = !DILocation(line: 281, column: 2, scope: !5145)
!5170 = !DILocation(line: 282, column: 7, scope: !5141)
!5171 = !DILocation(line: 282, column: 7, scope: !5140)
!5172 = !DILocation(line: 282, column: 7, scope: !5147)
!5173 = !DILocation(line: 282, column: 38, scope: !5142)
!5174 = !DILocation(line: 282, column: 7, scope: !5142)
!5175 = !DILocation(line: 282, column: 7, scope: !5143)
!5176 = !DILocation(line: 283, column: 4, scope: !5142)
!5177 = !DILocation(line: 285, column: 29, scope: !5143)
!5178 = !DILocation(line: 285, column: 10, scope: !5143)
!5179 = !DILocation(line: 285, column: 8, scope: !5143)
!5180 = !DILocation(line: 286, column: 8, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 286, column: 7)
!5182 = !DILocation(line: 286, column: 7, scope: !5143)
!5183 = !DILocation(line: 287, column: 21, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 286, column: 14)
!5185 = !DILocation(line: 287, column: 4, scope: !5184)
!5186 = !DILocation(line: 288, column: 4, scope: !5184)
!5187 = !DILocation(line: 290, column: 39, scope: !5143)
!5188 = !DILocation(line: 290, column: 3, scope: !5150)
!5189 = !DILocation(line: 290, column: 3, scope: !5149)
!5190 = !DILocation(line: 290, column: 3, scope: !5152)
!5191 = !DILocation(line: 290, column: 34, scope: !5143)
!5192 = !DILocation(line: 290, column: 3, scope: !5143)
!5193 = !DILocation(line: 290, column: 37, scope: !5143)
!5194 = !DILocation(line: 292, column: 2, scope: !5143)
!5195 = !DILocation(line: 281, column: 22, scope: !5144)
!5196 = !DILocation(line: 281, column: 2, scope: !5144)
!5197 = distinct !{!5197, !5169, !5198, !4866, !4867}
!5198 = !DILocation(line: 292, column: 2, scope: !5145)
!5199 = !DILocation(line: 293, column: 2, scope: !5128)
!5200 = !DILocation(line: 294, column: 1, scope: !5128)
!5201 = distinct !DISubprogram(name: "profile_dead_cpu", scope: !3, file: !3, line: 256, type: !5048, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5202)
!5202 = !{!5203, !5204, !5205, !5206, !5213, !5215, !5219, !5221, !5224}
!5203 = !DILocalVariable(name: "cpu", arg: 1, scope: !5201, file: !3, line: 256, type: !7)
!5204 = !DILocalVariable(name: "page", scope: !5201, file: !3, line: 258, type: !400)
!5205 = !DILocalVariable(name: "i", scope: !5201, file: !3, line: 259, type: !89)
!5206 = !DILocalVariable(name: "__vpp_verify", scope: !5207, file: !3, line: 265, type: !1350)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 265, column: 7)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 265, column: 7)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 265, column: 7)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 264, column: 26)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 264, column: 2)
!5212 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 264, column: 2)
!5213 = !DILocalVariable(name: "__ptr", scope: !5214, file: !3, line: 265, type: !319)
!5214 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 265, column: 7)
!5215 = !DILocalVariable(name: "__vpp_verify", scope: !5216, file: !3, line: 266, type: !1350)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 266, column: 11)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 266, column: 11)
!5218 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 265, column: 42)
!5219 = !DILocalVariable(name: "__ptr", scope: !5220, file: !3, line: 266, type: !319)
!5220 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 266, column: 11)
!5221 = !DILocalVariable(name: "__vpp_verify", scope: !5222, file: !3, line: 267, type: !1350)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 267, column: 4)
!5223 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 267, column: 4)
!5224 = !DILocalVariable(name: "__ptr", scope: !5225, file: !3, line: 267, type: !319)
!5225 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 267, column: 4)
!5226 = !DILocation(line: 256, column: 42, scope: !5201)
!5227 = !DILocation(line: 258, column: 2, scope: !5201)
!5228 = !DILocation(line: 258, column: 15, scope: !5201)
!5229 = !DILocation(line: 259, column: 2, scope: !5201)
!5230 = !DILocation(line: 259, column: 6, scope: !5201)
!5231 = !DILocation(line: 261, column: 6, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 261, column: 6)
!5233 = !DILocation(line: 261, column: 6, scope: !5201)
!5234 = !DILocation(line: 262, column: 21, scope: !5232)
!5235 = !DILocation(line: 262, column: 3, scope: !5232)
!5236 = !DILocation(line: 264, column: 9, scope: !5212)
!5237 = !DILocation(line: 264, column: 7, scope: !5212)
!5238 = !DILocation(line: 264, column: 14, scope: !5211)
!5239 = !DILocation(line: 264, column: 16, scope: !5211)
!5240 = !DILocation(line: 264, column: 2, scope: !5212)
!5241 = !DILocation(line: 265, column: 7, scope: !5208)
!5242 = !DILocation(line: 265, column: 7, scope: !5207)
!5243 = !DILocation(line: 265, column: 7, scope: !5214)
!5244 = !DILocation(line: 265, column: 38, scope: !5209)
!5245 = !DILocation(line: 265, column: 7, scope: !5209)
!5246 = !DILocation(line: 265, column: 7, scope: !5210)
!5247 = !DILocation(line: 266, column: 11, scope: !5218)
!5248 = !DILocation(line: 266, column: 11, scope: !5217)
!5249 = !DILocation(line: 266, column: 11, scope: !5216)
!5250 = !DILocation(line: 266, column: 11, scope: !5220)
!5251 = !DILocation(line: 266, column: 9, scope: !5218)
!5252 = !DILocation(line: 267, column: 4, scope: !5223)
!5253 = !DILocation(line: 267, column: 4, scope: !5222)
!5254 = !DILocation(line: 267, column: 4, scope: !5225)
!5255 = !DILocation(line: 267, column: 35, scope: !5218)
!5256 = !DILocation(line: 267, column: 4, scope: !5218)
!5257 = !DILocation(line: 267, column: 38, scope: !5218)
!5258 = !DILocation(line: 268, column: 4, scope: !5218)
!5259 = !DILocation(line: 269, column: 3, scope: !5218)
!5260 = !DILocation(line: 270, column: 2, scope: !5210)
!5261 = !DILocation(line: 264, column: 22, scope: !5211)
!5262 = !DILocation(line: 264, column: 2, scope: !5211)
!5263 = distinct !{!5263, !5240, !5264, !4866, !4867}
!5264 = !DILocation(line: 270, column: 2, scope: !5212)
!5265 = !DILocation(line: 272, column: 1, scope: !5201)
!5266 = !DILocation(line: 271, column: 2, scope: !5201)
!5267 = distinct !DISubprogram(name: "profile_online_cpu", scope: !3, file: !3, line: 296, type: !5048, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5268)
!5268 = !{!5269}
!5269 = !DILocalVariable(name: "cpu", arg: 1, scope: !5267, file: !3, line: 296, type: !7)
!5270 = !DILocation(line: 296, column: 44, scope: !5267)
!5271 = !DILocation(line: 298, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 298, column: 6)
!5273 = !DILocation(line: 298, column: 6, scope: !5267)
!5274 = !DILocation(line: 299, column: 19, scope: !5272)
!5275 = !DILocation(line: 299, column: 3, scope: !5272)
!5276 = !DILocation(line: 301, column: 2, scope: !5267)
!5277 = !DISubprogram(name: "proc_set_size", scope: !4450, file: !4450, line: 111, type: !5278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !5044, !630}
!5280 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !88, file: !88, line: 444, type: !5281, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5283)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !87}
!5283 = !{!5284}
!5284 = !DILocalVariable(name: "state", arg: 1, scope: !5280, file: !88, line: 444, type: !87)
!5285 = !DILocation(line: 444, column: 56, scope: !5280)
!5286 = !DILocation(line: 446, column: 23, scope: !5280)
!5287 = !DILocation(line: 446, column: 2, scope: !5280)
!5288 = !DILocation(line: 447, column: 1, scope: !5280)
!5289 = distinct !DISubprogram(name: "__initstub__kmod_profile__328_491_create_proc_profile4", scope: !3, file: !3, line: 491, type: !1953, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5290 = !DILocation(line: 491, column: 1, scope: !5289)
!5291 = distinct !DISubprogram(name: "bitmap_copy", scope: !5292, file: !5292, line: 266, type: !5293, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5295)
!5292 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !395, !397, !7}
!5295 = !{!5296, !5297, !5298, !5299}
!5296 = !DILocalVariable(name: "dst", arg: 1, scope: !5291, file: !5292, line: 266, type: !395)
!5297 = !DILocalVariable(name: "src", arg: 2, scope: !5291, file: !5292, line: 266, type: !397)
!5298 = !DILocalVariable(name: "nbits", arg: 3, scope: !5291, file: !5292, line: 267, type: !7)
!5299 = !DILocalVariable(name: "len", scope: !5291, file: !5292, line: 269, type: !7)
!5300 = !DILocation(line: 266, column: 47, scope: !5291)
!5301 = !DILocation(line: 266, column: 73, scope: !5291)
!5302 = !DILocation(line: 267, column: 17, scope: !5291)
!5303 = !DILocation(line: 269, column: 2, scope: !5291)
!5304 = !DILocation(line: 269, column: 15, scope: !5291)
!5305 = !DILocation(line: 269, column: 21, scope: !5291)
!5306 = !DILocation(line: 271, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5291, file: !5292, line: 271, column: 6)
!5308 = !DILocation(line: 271, column: 6, scope: !5291)
!5309 = !DILocation(line: 272, column: 11, scope: !5307)
!5310 = !DILocation(line: 272, column: 10, scope: !5307)
!5311 = !DILocation(line: 272, column: 4, scope: !5307)
!5312 = !DILocation(line: 272, column: 8, scope: !5307)
!5313 = !DILocation(line: 272, column: 3, scope: !5307)
!5314 = !DILocation(line: 274, column: 10, scope: !5307)
!5315 = !DILocation(line: 274, column: 15, scope: !5307)
!5316 = !DILocation(line: 274, column: 20, scope: !5307)
!5317 = !DILocation(line: 274, column: 3, scope: !5307)
!5318 = !DILocation(line: 275, column: 1, scope: !5291)
!5319 = distinct !DISubprogram(name: "kmalloc", scope: !288, file: !288, line: 591, type: !4698, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5320 = !{!5321, !5322, !5323}
!5321 = !DILocalVariable(name: "size", arg: 1, scope: !5319, file: !288, line: 591, type: !756)
!5322 = !DILocalVariable(name: "flags", arg: 2, scope: !5319, file: !288, line: 591, type: !310)
!5323 = !DILocalVariable(name: "index", scope: !5324, file: !288, line: 594, type: !7)
!5324 = distinct !DILexicalBlock(scope: !5325, file: !288, line: 593, column: 42)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !288, line: 593, column: 6)
!5326 = !DILocation(line: 591, column: 61, scope: !5319)
!5327 = !DILocation(line: 591, column: 73, scope: !5319)
!5328 = !DILocation(line: 593, column: 27, scope: !5325)
!5329 = !DILocation(line: 593, column: 6, scope: !5325)
!5330 = !DILocation(line: 593, column: 33, scope: !5325)
!5331 = !DILocation(line: 593, column: 36, scope: !5325)
!5332 = !DILocation(line: 593, column: 6, scope: !5319)
!5333 = !DILocation(line: 594, column: 3, scope: !5324)
!5334 = !DILocation(line: 594, column: 16, scope: !5324)
!5335 = !DILocation(line: 596, column: 7, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5324, file: !288, line: 596, column: 7)
!5337 = !DILocation(line: 596, column: 12, scope: !5336)
!5338 = !DILocation(line: 596, column: 7, scope: !5324)
!5339 = !DILocation(line: 597, column: 25, scope: !5336)
!5340 = !DILocation(line: 597, column: 31, scope: !5336)
!5341 = !DILocation(line: 597, column: 11, scope: !5336)
!5342 = !DILocation(line: 597, column: 4, scope: !5336)
!5343 = !DILocation(line: 599, column: 11, scope: !5324)
!5344 = !DILocation(line: 599, column: 9, scope: !5324)
!5345 = !DILocation(line: 601, column: 33, scope: !5324)
!5346 = !DILocation(line: 601, column: 40, scope: !5324)
!5347 = !DILocation(line: 601, column: 20, scope: !5324)
!5348 = !DILocation(line: 601, column: 5, scope: !5324)
!5349 = !DILocation(line: 601, column: 51, scope: !5324)
!5350 = !DILocation(line: 602, column: 5, scope: !5324)
!5351 = !DILocation(line: 602, column: 12, scope: !5324)
!5352 = !DILocation(line: 600, column: 10, scope: !5324)
!5353 = !DILocation(line: 600, column: 3, scope: !5324)
!5354 = !DILocation(line: 603, column: 2, scope: !5325)
!5355 = !DILocation(line: 604, column: 19, scope: !5319)
!5356 = !DILocation(line: 604, column: 25, scope: !5319)
!5357 = !DILocation(line: 604, column: 9, scope: !5319)
!5358 = !DILocation(line: 604, column: 2, scope: !5319)
!5359 = !DILocation(line: 605, column: 1, scope: !5319)
!5360 = !DISubprogram(name: "kmalloc_large", scope: !288, file: !288, line: 531, type: !4698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5361 = distinct !DISubprogram(name: "__kmalloc_index", scope: !288, file: !288, line: 444, type: !5362, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5364)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!7, !756, !1019}
!5364 = !{!5365, !5366}
!5365 = !DILocalVariable(name: "size", arg: 1, scope: !5361, file: !288, line: 444, type: !756)
!5366 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5361, file: !288, line: 445, type: !1019)
!5367 = !DILocation(line: 444, column: 60, scope: !5361)
!5368 = !DILocation(line: 445, column: 16, scope: !5361)
!5369 = !DILocation(line: 447, column: 7, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 447, column: 6)
!5371 = !DILocation(line: 447, column: 6, scope: !5361)
!5372 = !DILocation(line: 448, column: 3, scope: !5370)
!5373 = !DILocation(line: 450, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 450, column: 6)
!5375 = !DILocation(line: 450, column: 11, scope: !5374)
!5376 = !DILocation(line: 450, column: 6, scope: !5361)
!5377 = !DILocation(line: 451, column: 3, scope: !5374)
!5378 = !DILocation(line: 453, column: 32, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 453, column: 6)
!5380 = !DILocation(line: 453, column: 37, scope: !5379)
!5381 = !DILocation(line: 453, column: 42, scope: !5379)
!5382 = !DILocation(line: 453, column: 45, scope: !5379)
!5383 = !DILocation(line: 453, column: 50, scope: !5379)
!5384 = !DILocation(line: 453, column: 6, scope: !5361)
!5385 = !DILocation(line: 454, column: 3, scope: !5379)
!5386 = !DILocation(line: 455, column: 32, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 455, column: 6)
!5388 = !DILocation(line: 455, column: 37, scope: !5387)
!5389 = !DILocation(line: 455, column: 43, scope: !5387)
!5390 = !DILocation(line: 455, column: 46, scope: !5387)
!5391 = !DILocation(line: 455, column: 51, scope: !5387)
!5392 = !DILocation(line: 455, column: 6, scope: !5361)
!5393 = !DILocation(line: 456, column: 3, scope: !5387)
!5394 = !DILocation(line: 457, column: 6, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 457, column: 6)
!5396 = !DILocation(line: 457, column: 11, scope: !5395)
!5397 = !DILocation(line: 457, column: 6, scope: !5361)
!5398 = !DILocation(line: 457, column: 26, scope: !5395)
!5399 = !DILocation(line: 458, column: 6, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 458, column: 6)
!5401 = !DILocation(line: 458, column: 11, scope: !5400)
!5402 = !DILocation(line: 458, column: 6, scope: !5361)
!5403 = !DILocation(line: 458, column: 26, scope: !5400)
!5404 = !DILocation(line: 459, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 459, column: 6)
!5406 = !DILocation(line: 459, column: 11, scope: !5405)
!5407 = !DILocation(line: 459, column: 6, scope: !5361)
!5408 = !DILocation(line: 459, column: 26, scope: !5405)
!5409 = !DILocation(line: 460, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 460, column: 6)
!5411 = !DILocation(line: 460, column: 11, scope: !5410)
!5412 = !DILocation(line: 460, column: 6, scope: !5361)
!5413 = !DILocation(line: 460, column: 26, scope: !5410)
!5414 = !DILocation(line: 461, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 461, column: 6)
!5416 = !DILocation(line: 461, column: 11, scope: !5415)
!5417 = !DILocation(line: 461, column: 6, scope: !5361)
!5418 = !DILocation(line: 461, column: 26, scope: !5415)
!5419 = !DILocation(line: 462, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 462, column: 6)
!5421 = !DILocation(line: 462, column: 11, scope: !5420)
!5422 = !DILocation(line: 462, column: 6, scope: !5361)
!5423 = !DILocation(line: 462, column: 26, scope: !5420)
!5424 = !DILocation(line: 463, column: 6, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 463, column: 6)
!5426 = !DILocation(line: 463, column: 11, scope: !5425)
!5427 = !DILocation(line: 463, column: 6, scope: !5361)
!5428 = !DILocation(line: 463, column: 26, scope: !5425)
!5429 = !DILocation(line: 464, column: 6, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 464, column: 6)
!5431 = !DILocation(line: 464, column: 11, scope: !5430)
!5432 = !DILocation(line: 464, column: 6, scope: !5361)
!5433 = !DILocation(line: 464, column: 26, scope: !5430)
!5434 = !DILocation(line: 465, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 465, column: 6)
!5436 = !DILocation(line: 465, column: 11, scope: !5435)
!5437 = !DILocation(line: 465, column: 6, scope: !5361)
!5438 = !DILocation(line: 465, column: 26, scope: !5435)
!5439 = !DILocation(line: 466, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 466, column: 6)
!5441 = !DILocation(line: 466, column: 11, scope: !5440)
!5442 = !DILocation(line: 466, column: 6, scope: !5361)
!5443 = !DILocation(line: 466, column: 26, scope: !5440)
!5444 = !DILocation(line: 467, column: 6, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 467, column: 6)
!5446 = !DILocation(line: 467, column: 11, scope: !5445)
!5447 = !DILocation(line: 467, column: 6, scope: !5361)
!5448 = !DILocation(line: 467, column: 26, scope: !5445)
!5449 = !DILocation(line: 468, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 468, column: 6)
!5451 = !DILocation(line: 468, column: 11, scope: !5450)
!5452 = !DILocation(line: 468, column: 6, scope: !5361)
!5453 = !DILocation(line: 468, column: 26, scope: !5450)
!5454 = !DILocation(line: 469, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 469, column: 6)
!5456 = !DILocation(line: 469, column: 11, scope: !5455)
!5457 = !DILocation(line: 469, column: 6, scope: !5361)
!5458 = !DILocation(line: 469, column: 26, scope: !5455)
!5459 = !DILocation(line: 470, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 470, column: 6)
!5461 = !DILocation(line: 470, column: 11, scope: !5460)
!5462 = !DILocation(line: 470, column: 6, scope: !5361)
!5463 = !DILocation(line: 470, column: 26, scope: !5460)
!5464 = !DILocation(line: 471, column: 6, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 471, column: 6)
!5466 = !DILocation(line: 471, column: 11, scope: !5465)
!5467 = !DILocation(line: 471, column: 6, scope: !5361)
!5468 = !DILocation(line: 471, column: 26, scope: !5465)
!5469 = !DILocation(line: 472, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 472, column: 6)
!5471 = !DILocation(line: 472, column: 11, scope: !5470)
!5472 = !DILocation(line: 472, column: 6, scope: !5361)
!5473 = !DILocation(line: 472, column: 26, scope: !5470)
!5474 = !DILocation(line: 473, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 473, column: 6)
!5476 = !DILocation(line: 473, column: 11, scope: !5475)
!5477 = !DILocation(line: 473, column: 6, scope: !5361)
!5478 = !DILocation(line: 473, column: 26, scope: !5475)
!5479 = !DILocation(line: 474, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 474, column: 6)
!5481 = !DILocation(line: 474, column: 11, scope: !5480)
!5482 = !DILocation(line: 474, column: 6, scope: !5361)
!5483 = !DILocation(line: 474, column: 27, scope: !5480)
!5484 = !DILocation(line: 475, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 475, column: 6)
!5486 = !DILocation(line: 475, column: 11, scope: !5485)
!5487 = !DILocation(line: 475, column: 6, scope: !5361)
!5488 = !DILocation(line: 475, column: 32, scope: !5485)
!5489 = !DILocation(line: 477, column: 50, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5361, file: !288, line: 477, column: 6)
!5491 = !{i8 0, i8 2}
!5492 = !DILocation(line: 477, column: 6, scope: !5361)
!5493 = !DILocation(line: 478, column: 3, scope: !5490)
!5494 = !DILocation(line: 478, column: 3, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !288, line: 478, column: 3)
!5496 = distinct !DILexicalBlock(scope: !5490, file: !288, line: 478, column: 3)
!5497 = !{i32 -2142307790}
!5498 = !DILocation(line: 478, column: 3, scope: !5496)
!5499 = !DILocation(line: 480, column: 3, scope: !5490)
!5500 = !DILocation(line: 480, column: 3, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5490, file: !288, line: 480, column: 3)
!5502 = !DILocation(line: 480, column: 3, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5501, file: !288, line: 480, column: 3)
!5504 = !DILocation(line: 480, column: 3, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5501, file: !288, line: 480, column: 3)
!5506 = !{i64 2152659709, i64 2152659738, i64 2152659784, i64 2152659842, i64 2152659896, i64 2152659950, i64 2152660005, i64 2152660036}
!5507 = !DILocation(line: 483, column: 2, scope: !5361)
!5508 = !DILocation(line: 484, column: 1, scope: !5361)
!5509 = !DISubprogram(name: "kmalloc_trace", scope: !288, file: !288, line: 525, type: !5510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!309, !5512, !310, !756}
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5514, line: 11, flags: DIFlagFwdDecl)
!5514 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5515 = distinct !DISubprogram(name: "kmalloc_type", scope: !288, file: !288, line: 401, type: !5516, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5518)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!287, !310, !319}
!5518 = !{!5519, !5520}
!5519 = !DILocalVariable(name: "flags", arg: 1, scope: !5515, file: !288, line: 401, type: !310)
!5520 = !DILocalVariable(name: "caller", arg: 2, scope: !5515, file: !288, line: 401, type: !319)
!5521 = !DILocation(line: 401, column: 67, scope: !5515)
!5522 = !DILocation(line: 401, column: 88, scope: !5515)
!5523 = !DILocation(line: 407, column: 6, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5515, file: !288, line: 407, column: 6)
!5525 = !DILocation(line: 407, column: 6, scope: !5515)
!5526 = !DILocation(line: 413, column: 3, scope: !5524)
!5527 = !DILocation(line: 423, column: 38, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5515, file: !288, line: 423, column: 6)
!5529 = !DILocation(line: 423, column: 44, scope: !5528)
!5530 = !DILocation(line: 423, column: 6, scope: !5515)
!5531 = !DILocation(line: 424, column: 3, scope: !5528)
!5532 = !DILocation(line: 426, column: 3, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5515, file: !288, line: 425, column: 6)
!5534 = !DILocation(line: 429, column: 1, scope: !5515)
!5535 = !DISubprogram(name: "__kmalloc", scope: !288, file: !288, line: 488, type: !4698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5536 = !DISubprogram(name: "__compiletime_assert_206", scope: !288, file: !288, line: 478, type: !2182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5537 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5538, file: !5538, line: 78, type: !3159, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5538 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5539 = !{!5540, !5541, !5543}
!5540 = !DILocalVariable(name: "val", arg: 1, scope: !5537, file: !5538, line: 78, type: !89)
!5541 = !DILocalVariable(name: "pao_ID__", scope: !5542, file: !5538, line: 80, type: !2042)
!5542 = distinct !DILexicalBlock(scope: !5537, file: !5538, line: 80, column: 2)
!5543 = !DILocalVariable(name: "pto_val__", scope: !5544, file: !5538, line: 80, type: !329)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !5538, line: 80, column: 2)
!5545 = distinct !DILexicalBlock(scope: !5546, file: !5538, line: 80, column: 2)
!5546 = distinct !DILexicalBlock(scope: !5542, file: !5538, line: 80, column: 2)
!5547 = !DILocation(line: 78, column: 53, scope: !5537)
!5548 = !DILocation(line: 80, column: 2, scope: !5537)
!5549 = !DILocation(line: 80, column: 2, scope: !5542)
!5550 = !DILocation(line: 80, column: 2, scope: !5546)
!5551 = !DILocation(line: 80, column: 2, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5546, file: !5538, line: 80, column: 2)
!5553 = !{i64 2149683847}
!5554 = !DILocation(line: 80, column: 2, scope: !5545)
!5555 = !DILocation(line: 80, column: 2, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5545, file: !5538, line: 80, column: 2)
!5557 = !{i64 2149684142}
!5558 = !DILocation(line: 80, column: 2, scope: !5544)
!5559 = !{i64 2149684847}
!5560 = !DILocation(line: 81, column: 1, scope: !5537)
!5561 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5538, file: !5538, line: 93, type: !1693, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5562 = !{!5563}
!5563 = !DILocalVariable(name: "c", scope: !5564, file: !5538, line: 95, type: !1019)
!5564 = distinct !DILexicalBlock(scope: !5561, file: !5538, line: 95, column: 9)
!5565 = !DILocation(line: 95, column: 9, scope: !5564)
!5566 = !{i64 2149688203, i64 2149688296}
!5567 = !DILocation(line: 95, column: 9, scope: !5561)
!5568 = !DILocation(line: 95, column: 2, scope: !5561)
!5569 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5570, file: !5570, line: 101, type: !5571, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5573)
!5570 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!319}
!5573 = !{!5574}
!5574 = !DILocalVariable(name: "flags", scope: !5569, file: !5570, line: 103, type: !319)
!5575 = !DILocation(line: 103, column: 2, scope: !5569)
!5576 = !DILocation(line: 103, column: 16, scope: !5569)
!5577 = !DILocation(line: 103, column: 24, scope: !5569)
!5578 = !DILocation(line: 104, column: 2, scope: !5569)
!5579 = !DILocation(line: 105, column: 9, scope: !5569)
!5580 = !DILocation(line: 106, column: 1, scope: !5569)
!5581 = !DILocation(line: 105, column: 2, scope: !5569)
!5582 = distinct !DISubprogram(name: "atomic_add", scope: !5583, file: !5583, line: 102, type: !5584, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5586)
!5583 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !89, !4375}
!5586 = !{!5587, !5588}
!5587 = !DILocalVariable(name: "i", arg: 1, scope: !5582, file: !5583, line: 102, type: !89)
!5588 = !DILocalVariable(name: "v", arg: 2, scope: !5582, file: !5583, line: 102, type: !4375)
!5589 = !DILocation(line: 102, column: 16, scope: !5582)
!5590 = !DILocation(line: 102, column: 29, scope: !5582)
!5591 = !DILocation(line: 104, column: 31, scope: !5582)
!5592 = !DILocation(line: 104, column: 2, scope: !5582)
!5593 = !DILocation(line: 105, column: 17, scope: !5582)
!5594 = !DILocation(line: 105, column: 20, scope: !5582)
!5595 = !DILocation(line: 105, column: 2, scope: !5582)
!5596 = !DILocation(line: 106, column: 1, scope: !5582)
!5597 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5570, file: !5570, line: 132, type: !5598, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{null, !319}
!5600 = !{!5601}
!5601 = !DILocalVariable(name: "flags", arg: 1, scope: !5597, file: !5570, line: 132, type: !319)
!5602 = !DILocation(line: 132, column: 66, scope: !5597)
!5603 = !DILocation(line: 134, column: 32, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5597, file: !5570, line: 134, column: 6)
!5605 = !DILocation(line: 134, column: 7, scope: !5604)
!5606 = !DILocation(line: 134, column: 6, scope: !5597)
!5607 = !DILocation(line: 135, column: 3, scope: !5604)
!5608 = !DILocation(line: 136, column: 1, scope: !5597)
!5609 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5570, file: !5570, line: 65, type: !5571, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5610 = !DILocation(line: 67, column: 9, scope: !5609)
!5611 = !DILocation(line: 67, column: 2, scope: !5609)
!5612 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5570, file: !5570, line: 70, type: !2182, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5613 = !DILocation(line: 72, column: 2, scope: !5612)
!5614 = !DILocation(line: 73, column: 1, scope: !5612)
!5615 = distinct !DISubprogram(name: "native_save_fl", scope: !5570, file: !5570, line: 17, type: !5571, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617}
!5617 = !DILocalVariable(name: "flags", scope: !5615, file: !5570, line: 19, type: !319)
!5618 = !DILocation(line: 19, column: 2, scope: !5615)
!5619 = !DILocation(line: 19, column: 16, scope: !5615)
!5620 = !DILocation(line: 26, column: 2, scope: !5615)
!5621 = !{i64 2110769, i64 2110790}
!5622 = !DILocation(line: 32, column: 9, scope: !5615)
!5623 = !DILocation(line: 33, column: 1, scope: !5615)
!5624 = !DILocation(line: 32, column: 2, scope: !5615)
!5625 = distinct !DISubprogram(name: "native_irq_disable", scope: !5570, file: !5570, line: 35, type: !2182, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5626 = !DILocation(line: 37, column: 2, scope: !5625)
!5627 = !{i64 2110973}
!5628 = !DILocation(line: 38, column: 1, scope: !5625)
!5629 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5630, file: !5630, line: 94, type: !5631, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5630 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !5633, !756}
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5634, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5635)
!5635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5636 = !{!5637, !5638}
!5637 = !DILocalVariable(name: "v", arg: 1, scope: !5629, file: !5630, line: 94, type: !5633)
!5638 = !DILocalVariable(name: "size", arg: 2, scope: !5629, file: !5630, line: 94, type: !756)
!5639 = !DILocation(line: 94, column: 79, scope: !5629)
!5640 = !DILocation(line: 94, column: 89, scope: !5629)
!5641 = !DILocation(line: 96, column: 20, scope: !5629)
!5642 = !DILocation(line: 96, column: 23, scope: !5629)
!5643 = !DILocation(line: 96, column: 2, scope: !5629)
!5644 = !DILocation(line: 97, column: 2, scope: !5629)
!5645 = !DILocation(line: 98, column: 1, scope: !5629)
!5646 = distinct !DISubprogram(name: "raw_atomic_add", scope: !5647, file: !5647, line: 531, type: !5584, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5648)
!5647 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5648 = !{!5649, !5650}
!5649 = !DILocalVariable(name: "i", arg: 1, scope: !5646, file: !5647, line: 531, type: !89)
!5650 = !DILocalVariable(name: "v", arg: 2, scope: !5646, file: !5647, line: 531, type: !4375)
!5651 = !DILocation(line: 531, column: 20, scope: !5646)
!5652 = !DILocation(line: 531, column: 33, scope: !5646)
!5653 = !DILocation(line: 533, column: 18, scope: !5646)
!5654 = !DILocation(line: 533, column: 21, scope: !5646)
!5655 = !DILocation(line: 533, column: 2, scope: !5646)
!5656 = !DILocation(line: 534, column: 1, scope: !5646)
!5657 = distinct !DISubprogram(name: "kasan_check_write", scope: !5658, file: !5658, line: 44, type: !5659, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5661)
!5658 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5659 = !DISubroutineType(types: !5660)
!5660 = !{!1019, !5633, !7}
!5661 = !{!5662, !5663}
!5662 = !DILocalVariable(name: "p", arg: 1, scope: !5657, file: !5658, line: 44, type: !5633)
!5663 = !DILocalVariable(name: "size", arg: 2, scope: !5657, file: !5658, line: 44, type: !7)
!5664 = !DILocation(line: 44, column: 59, scope: !5657)
!5665 = !DILocation(line: 44, column: 75, scope: !5657)
!5666 = !DILocation(line: 46, column: 2, scope: !5657)
!5667 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5668, file: !5668, line: 229, type: !5669, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5671)
!5668 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5669 = !DISubroutineType(types: !5670)
!5670 = !{null, !5633, !756, !89}
!5671 = !{!5672, !5673, !5674}
!5672 = !DILocalVariable(name: "ptr", arg: 1, scope: !5667, file: !5668, line: 229, type: !5633)
!5673 = !DILocalVariable(name: "size", arg: 2, scope: !5667, file: !5668, line: 229, type: !756)
!5674 = !DILocalVariable(name: "type", arg: 3, scope: !5667, file: !5668, line: 230, type: !89)
!5675 = !DILocation(line: 229, column: 60, scope: !5667)
!5676 = !DILocation(line: 229, column: 72, scope: !5667)
!5677 = !DILocation(line: 230, column: 15, scope: !5667)
!5678 = !DILocation(line: 230, column: 23, scope: !5667)
!5679 = distinct !DISubprogram(name: "arch_atomic_add", scope: !5680, file: !5680, line: 31, type: !5584, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5681)
!5680 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5681 = !{!5682, !5683}
!5682 = !DILocalVariable(name: "i", arg: 1, scope: !5679, file: !5680, line: 31, type: !89)
!5683 = !DILocalVariable(name: "v", arg: 2, scope: !5679, file: !5680, line: 31, type: !4375)
!5684 = !DILocation(line: 31, column: 49, scope: !5679)
!5685 = !DILocation(line: 31, column: 62, scope: !5679)
!5686 = !DILocation(line: 34, column: 16, scope: !5679)
!5687 = !DILocation(line: 34, column: 19, scope: !5679)
!5688 = !DILocation(line: 35, column: 16, scope: !5679)
!5689 = !DILocation(line: 33, column: 2, scope: !5679)
!5690 = !{i64 2148254939, i64 2148254978, i64 2148254999, i64 2148255036, i64 2148255059, i64 2148254929}
!5691 = !DILocation(line: 36, column: 1, scope: !5679)
!5692 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !5570, file: !5570, line: 120, type: !5693, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5695)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!89, !319}
!5695 = !{!5696}
!5696 = !DILocalVariable(name: "flags", arg: 1, scope: !5692, file: !5570, line: 120, type: !319)
!5697 = !DILocation(line: 120, column: 67, scope: !5692)
!5698 = !DILocation(line: 122, column: 11, scope: !5692)
!5699 = !DILocation(line: 122, column: 17, scope: !5692)
!5700 = !DILocation(line: 122, column: 9, scope: !5692)
!5701 = !DILocation(line: 122, column: 2, scope: !5692)
!5702 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5570, file: !5570, line: 75, type: !2182, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5703 = !DILocation(line: 77, column: 2, scope: !5702)
!5704 = !DILocation(line: 78, column: 1, scope: !5702)
!5705 = distinct !DISubprogram(name: "native_irq_enable", scope: !5570, file: !5570, line: 40, type: !2182, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5706 = !DILocation(line: 42, column: 2, scope: !5705)
!5707 = !{i64 2111065}
!5708 = !DILocation(line: 43, column: 1, scope: !5705)
!5709 = distinct !DISubprogram(name: "_test_bit", scope: !5710, file: !5710, line: 139, type: !5711, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5716)
!5710 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!1019, !319, !5713}
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5715)
!5715 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !319)
!5716 = !{!5717, !5718}
!5717 = !DILocalVariable(name: "nr", arg: 1, scope: !5709, file: !5710, line: 139, type: !319)
!5718 = !DILocalVariable(name: "addr", arg: 2, scope: !5709, file: !5710, line: 139, type: !5713)
!5719 = !DILocation(line: 139, column: 25, scope: !5709)
!5720 = !DILocation(line: 139, column: 59, scope: !5709)
!5721 = !DILocation(line: 141, column: 25, scope: !5709)
!5722 = !DILocation(line: 141, column: 32, scope: !5709)
!5723 = !DILocation(line: 141, column: 30, scope: !5709)
!5724 = !DILocation(line: 141, column: 2, scope: !5709)
!5725 = !DILocation(line: 142, column: 23, scope: !5709)
!5726 = !DILocation(line: 142, column: 27, scope: !5709)
!5727 = !DILocation(line: 142, column: 9, scope: !5709)
!5728 = !DILocation(line: 142, column: 2, scope: !5709)
!5729 = distinct !DISubprogram(name: "cpumask_check", scope: !315, file: !315, line: 148, type: !5730, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5732)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!7, !7}
!5732 = !{!5733}
!5733 = !DILocalVariable(name: "cpu", arg: 1, scope: !5729, file: !315, line: 148, type: !7)
!5734 = !DILocation(line: 148, column: 64, scope: !5729)
!5735 = !DILocation(line: 150, column: 20, scope: !5729)
!5736 = !DILocation(line: 150, column: 2, scope: !5729)
!5737 = !DILocation(line: 151, column: 9, scope: !5729)
!5738 = !DILocation(line: 151, column: 2, scope: !5729)
!5739 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5630, file: !5630, line: 66, type: !5631, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5740)
!5740 = !{!5741, !5742}
!5741 = !DILocalVariable(name: "v", arg: 1, scope: !5739, file: !5630, line: 66, type: !5633)
!5742 = !DILocalVariable(name: "size", arg: 2, scope: !5739, file: !5630, line: 66, type: !756)
!5743 = !DILocation(line: 66, column: 73, scope: !5739)
!5744 = !DILocation(line: 66, column: 83, scope: !5739)
!5745 = !DILocation(line: 68, column: 19, scope: !5739)
!5746 = !DILocation(line: 68, column: 22, scope: !5739)
!5747 = !DILocation(line: 68, column: 2, scope: !5739)
!5748 = !DILocation(line: 69, column: 2, scope: !5739)
!5749 = !DILocation(line: 70, column: 1, scope: !5739)
!5750 = distinct !DISubprogram(name: "arch_test_bit", scope: !5751, file: !5751, line: 237, type: !5711, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5752)
!5751 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5752 = !{!5753, !5754}
!5753 = !DILocalVariable(name: "nr", arg: 1, scope: !5750, file: !5751, line: 237, type: !319)
!5754 = !DILocalVariable(name: "addr", arg: 2, scope: !5750, file: !5751, line: 237, type: !5713)
!5755 = !DILocation(line: 237, column: 29, scope: !5750)
!5756 = !DILocation(line: 237, column: 63, scope: !5750)
!5757 = !DILocation(line: 239, column: 30, scope: !5750)
!5758 = !DILocation(line: 239, column: 9, scope: !5750)
!5759 = !DILocation(line: 239, column: 54, scope: !5750)
!5760 = !DILocation(line: 239, column: 58, scope: !5750)
!5761 = !DILocation(line: 239, column: 36, scope: !5750)
!5762 = !DILocation(line: 240, column: 26, scope: !5750)
!5763 = !DILocation(line: 240, column: 30, scope: !5750)
!5764 = !DILocation(line: 240, column: 8, scope: !5750)
!5765 = !DILocation(line: 239, column: 2, scope: !5750)
!5766 = distinct !DISubprogram(name: "kasan_check_read", scope: !5658, file: !5658, line: 40, type: !5659, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5767)
!5767 = !{!5768, !5769}
!5768 = !DILocalVariable(name: "p", arg: 1, scope: !5766, file: !5658, line: 40, type: !5633)
!5769 = !DILocalVariable(name: "size", arg: 2, scope: !5766, file: !5658, line: 40, type: !7)
!5770 = !DILocation(line: 40, column: 58, scope: !5766)
!5771 = !DILocation(line: 40, column: 74, scope: !5766)
!5772 = !DILocation(line: 42, column: 2, scope: !5766)
!5773 = distinct !DISubprogram(name: "constant_test_bit", scope: !5751, file: !5751, line: 204, type: !5774, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5776)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!1019, !746, !5713}
!5776 = !{!5777, !5778}
!5777 = !DILocalVariable(name: "nr", arg: 1, scope: !5773, file: !5751, line: 204, type: !746)
!5778 = !DILocalVariable(name: "addr", arg: 2, scope: !5773, file: !5751, line: 204, type: !5713)
!5779 = !DILocation(line: 204, column: 52, scope: !5773)
!5780 = !DILocation(line: 204, column: 86, scope: !5773)
!5781 = !DILocation(line: 206, column: 19, scope: !5773)
!5782 = !DILocation(line: 206, column: 22, scope: !5773)
!5783 = !DILocation(line: 206, column: 15, scope: !5773)
!5784 = !DILocation(line: 207, column: 4, scope: !5773)
!5785 = !DILocation(line: 207, column: 9, scope: !5773)
!5786 = !DILocation(line: 207, column: 12, scope: !5773)
!5787 = !DILocation(line: 206, column: 44, scope: !5773)
!5788 = !DILocation(line: 207, column: 37, scope: !5773)
!5789 = !DILocation(line: 206, column: 2, scope: !5773)
!5790 = distinct !DISubprogram(name: "variable_test_bit", scope: !5751, file: !5751, line: 224, type: !5774, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5791)
!5791 = !{!5792, !5793, !5794}
!5792 = !DILocalVariable(name: "nr", arg: 1, scope: !5790, file: !5751, line: 224, type: !746)
!5793 = !DILocalVariable(name: "addr", arg: 2, scope: !5790, file: !5751, line: 224, type: !5713)
!5794 = !DILocalVariable(name: "oldbit", scope: !5790, file: !5751, line: 226, type: !1019)
!5795 = !DILocation(line: 224, column: 52, scope: !5790)
!5796 = !DILocation(line: 224, column: 86, scope: !5790)
!5797 = !DILocation(line: 226, column: 2, scope: !5790)
!5798 = !DILocation(line: 226, column: 7, scope: !5790)
!5799 = !DILocation(line: 231, column: 33, scope: !5790)
!5800 = !DILocation(line: 231, column: 46, scope: !5790)
!5801 = !DILocation(line: 228, column: 2, scope: !5790)
!5802 = !{i64 2147805321, i64 2147805395}
!5803 = !DILocation(line: 233, column: 9, scope: !5790)
!5804 = !DILocation(line: 234, column: 1, scope: !5790)
!5805 = !DILocation(line: 233, column: 2, scope: !5790)
!5806 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !315, file: !315, line: 140, type: !5807, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5809)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{null, !7, !7}
!5809 = !{!5810, !5811}
!5810 = !DILocalVariable(name: "cpu", arg: 1, scope: !5806, file: !315, line: 140, type: !7)
!5811 = !DILocalVariable(name: "bits", arg: 2, scope: !5806, file: !315, line: 140, type: !7)
!5812 = !DILocation(line: 140, column: 60, scope: !5806)
!5813 = !DILocation(line: 140, column: 78, scope: !5806)
!5814 = !DILocation(line: 145, column: 1, scope: !5806)
!5815 = distinct !DISubprogram(name: "prof_cpu_mask_proc_open", scope: !3, file: !3, line: 344, type: !1549, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5816 = !{!5817, !5818}
!5817 = !DILocalVariable(name: "inode", arg: 1, scope: !5815, file: !3, line: 344, type: !431)
!5818 = !DILocalVariable(name: "file", arg: 2, scope: !5815, file: !3, line: 344, type: !788)
!5819 = !DILocation(line: 344, column: 50, scope: !5815)
!5820 = !DILocation(line: 344, column: 70, scope: !5815)
!5821 = !DILocation(line: 346, column: 21, scope: !5815)
!5822 = !DILocation(line: 346, column: 9, scope: !5815)
!5823 = !DILocation(line: 346, column: 2, scope: !5815)
!5824 = distinct !DISubprogram(name: "prof_cpu_mask_proc_write", scope: !3, file: !3, line: 349, type: !1154, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5825)
!5825 = !{!5826, !5827, !5828, !5829, !5830, !5831}
!5826 = !DILocalVariable(name: "file", arg: 1, scope: !5824, file: !3, line: 349, type: !788)
!5827 = !DILocalVariable(name: "buffer", arg: 2, scope: !5824, file: !3, line: 350, type: !583)
!5828 = !DILocalVariable(name: "count", arg: 3, scope: !5824, file: !3, line: 350, type: !756)
!5829 = !DILocalVariable(name: "pos", arg: 4, scope: !5824, file: !3, line: 350, type: !1151)
!5830 = !DILocalVariable(name: "new_value", scope: !5824, file: !3, line: 352, type: !4382)
!5831 = !DILocalVariable(name: "err", scope: !5824, file: !3, line: 353, type: !89)
!5832 = !DILocation(line: 349, column: 54, scope: !5824)
!5833 = !DILocation(line: 350, column: 21, scope: !5824)
!5834 = !DILocation(line: 350, column: 36, scope: !5824)
!5835 = !DILocation(line: 350, column: 51, scope: !5824)
!5836 = !DILocation(line: 352, column: 2, scope: !5824)
!5837 = !DILocation(line: 352, column: 16, scope: !5824)
!5838 = !DILocation(line: 353, column: 2, scope: !5824)
!5839 = !DILocation(line: 353, column: 6, scope: !5824)
!5840 = !DILocation(line: 355, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 355, column: 6)
!5842 = !DILocation(line: 355, column: 6, scope: !5824)
!5843 = !DILocation(line: 356, column: 3, scope: !5841)
!5844 = !DILocation(line: 358, column: 27, scope: !5824)
!5845 = !DILocation(line: 358, column: 35, scope: !5824)
!5846 = !DILocation(line: 358, column: 42, scope: !5824)
!5847 = !DILocation(line: 358, column: 8, scope: !5824)
!5848 = !DILocation(line: 358, column: 6, scope: !5824)
!5849 = !DILocation(line: 359, column: 7, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 359, column: 6)
!5851 = !DILocation(line: 359, column: 6, scope: !5824)
!5852 = !DILocation(line: 360, column: 31, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 359, column: 12)
!5854 = !DILocation(line: 360, column: 3, scope: !5853)
!5855 = !DILocation(line: 361, column: 9, scope: !5853)
!5856 = !DILocation(line: 361, column: 7, scope: !5853)
!5857 = !DILocation(line: 362, column: 2, scope: !5853)
!5858 = !DILocation(line: 363, column: 19, scope: !5824)
!5859 = !DILocation(line: 363, column: 2, scope: !5824)
!5860 = !DILocation(line: 364, column: 9, scope: !5824)
!5861 = !DILocation(line: 364, column: 2, scope: !5824)
!5862 = !DILocation(line: 365, column: 1, scope: !5824)
!5863 = !DISubprogram(name: "single_open", scope: !1608, file: !1608, line: 166, type: !5864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!89, !788, !1636, !309}
!5866 = distinct !DISubprogram(name: "prof_cpu_mask_proc_show", scope: !3, file: !3, line: 338, type: !1637, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5867)
!5867 = !{!5868, !5869}
!5868 = !DILocalVariable(name: "m", arg: 1, scope: !5866, file: !3, line: 338, type: !1606)
!5869 = !DILocalVariable(name: "v", arg: 2, scope: !5866, file: !3, line: 338, type: !309)
!5870 = !DILocation(line: 338, column: 53, scope: !5866)
!5871 = !DILocation(line: 338, column: 62, scope: !5866)
!5872 = !DILocation(line: 340, column: 13, scope: !5866)
!5873 = !DILocation(line: 340, column: 26, scope: !5866)
!5874 = !DILocation(line: 340, column: 2, scope: !5866)
!5875 = !DILocation(line: 341, column: 2, scope: !5866)
!5876 = !DISubprogram(name: "seq_printf", scope: !1608, file: !1608, line: 119, type: !5877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{null, !1606, !583, null}
!5879 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !315, file: !315, line: 929, type: !4675, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5880 = !{!5881, !5882}
!5881 = !DILocalVariable(name: "mask", arg: 1, scope: !5879, file: !315, line: 929, type: !4677)
!5882 = !DILocalVariable(name: "flags", arg: 2, scope: !5879, file: !315, line: 929, type: !310)
!5883 = !DILocation(line: 929, column: 54, scope: !5879)
!5884 = !DILocation(line: 929, column: 66, scope: !5879)
!5885 = !DILocation(line: 931, column: 17, scope: !5879)
!5886 = !DILocation(line: 931, column: 16, scope: !5879)
!5887 = !DILocation(line: 931, column: 2, scope: !5879)
!5888 = !DILocation(line: 932, column: 2, scope: !5879)
!5889 = distinct !DISubprogram(name: "cpumask_parse_user", scope: !315, file: !315, line: 774, type: !5890, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5892)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!89, !583, !89, !4687}
!5892 = !{!5893, !5894, !5895}
!5893 = !DILocalVariable(name: "buf", arg: 1, scope: !5889, file: !315, line: 774, type: !583)
!5894 = !DILocalVariable(name: "len", arg: 2, scope: !5889, file: !315, line: 774, type: !89)
!5895 = !DILocalVariable(name: "dstp", arg: 3, scope: !5889, file: !315, line: 775, type: !4687)
!5896 = !DILocation(line: 774, column: 57, scope: !5889)
!5897 = !DILocation(line: 774, column: 66, scope: !5889)
!5898 = !DILocation(line: 775, column: 26, scope: !5889)
!5899 = !DILocation(line: 777, column: 27, scope: !5889)
!5900 = !DILocation(line: 777, column: 32, scope: !5889)
!5901 = !DILocation(line: 777, column: 37, scope: !5889)
!5902 = !DILocation(line: 777, column: 57, scope: !5889)
!5903 = !DILocation(line: 777, column: 9, scope: !5889)
!5904 = !DILocation(line: 777, column: 2, scope: !5889)
!5905 = distinct !DISubprogram(name: "cpumask_clear", scope: !315, file: !315, line: 552, type: !4715, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5906)
!5906 = !{!5907}
!5907 = !DILocalVariable(name: "dstp", arg: 1, scope: !5905, file: !315, line: 552, type: !4687)
!5908 = !DILocation(line: 552, column: 50, scope: !5905)
!5909 = !DILocation(line: 554, column: 14, scope: !5905)
!5910 = !DILocation(line: 554, column: 2, scope: !5905)
!5911 = !DILocation(line: 555, column: 1, scope: !5905)
!5912 = distinct !DISubprogram(name: "bitmap_zero", scope: !5292, file: !5292, line: 246, type: !5913, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5915)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !395, !7}
!5915 = !{!5916, !5917, !5918}
!5916 = !DILocalVariable(name: "dst", arg: 1, scope: !5912, file: !5292, line: 246, type: !395)
!5917 = !DILocalVariable(name: "nbits", arg: 2, scope: !5912, file: !5292, line: 246, type: !7)
!5918 = !DILocalVariable(name: "len", scope: !5912, file: !5292, line: 248, type: !7)
!5919 = !DILocation(line: 246, column: 47, scope: !5912)
!5920 = !DILocation(line: 246, column: 65, scope: !5912)
!5921 = !DILocation(line: 248, column: 2, scope: !5912)
!5922 = !DILocation(line: 248, column: 15, scope: !5912)
!5923 = !DILocation(line: 248, column: 21, scope: !5912)
!5924 = !DILocation(line: 250, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5912, file: !5292, line: 250, column: 6)
!5926 = !DILocation(line: 250, column: 6, scope: !5912)
!5927 = !DILocation(line: 251, column: 4, scope: !5925)
!5928 = !DILocation(line: 251, column: 8, scope: !5925)
!5929 = !DILocation(line: 251, column: 3, scope: !5925)
!5930 = !DILocation(line: 253, column: 10, scope: !5925)
!5931 = !DILocation(line: 253, column: 18, scope: !5925)
!5932 = !DILocation(line: 253, column: 3, scope: !5925)
!5933 = !DILocation(line: 254, column: 1, scope: !5912)
!5934 = !DISubprogram(name: "bitmap_parse_user", scope: !5292, file: !5292, line: 209, type: !5935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!89, !583, !7, !395, !89}
!5937 = !DISubprogram(name: "__cpuhp_setup_state", scope: !88, file: !88, line: 263, type: !5938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!89, !87, !583, !1019, !5112, !5112, !1019}
!5940 = distinct !DISubprogram(name: "cpu_to_mem", scope: !5941, file: !5941, line: 175, type: !1574, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5941 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!5942 = !{!5943}
!5943 = !DILocalVariable(name: "cpu", arg: 1, scope: !5940, file: !5941, line: 175, type: !89)
!5944 = !DILocation(line: 175, column: 34, scope: !5940)
!5945 = !DILocation(line: 177, column: 21, scope: !5940)
!5946 = !DILocation(line: 177, column: 9, scope: !5940)
!5947 = !DILocation(line: 177, column: 2, scope: !5940)
!5948 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !4468, file: !4468, line: 232, type: !5949, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5951)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!400, !89, !310, !7}
!5951 = !{!5952, !5953, !5954}
!5952 = !DILocalVariable(name: "nid", arg: 1, scope: !5948, file: !4468, line: 232, type: !89)
!5953 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5948, file: !4468, line: 232, type: !310)
!5954 = !DILocalVariable(name: "order", arg: 3, scope: !5948, file: !4468, line: 232, type: !7)
!5955 = !DILocation(line: 232, column: 24, scope: !5948)
!5956 = !DILocation(line: 232, column: 35, scope: !5948)
!5957 = !DILocation(line: 232, column: 58, scope: !5948)
!5958 = !DILocation(line: 235, column: 23, scope: !5948)
!5959 = !DILocation(line: 235, column: 28, scope: !5948)
!5960 = !DILocation(line: 235, column: 2, scope: !5948)
!5961 = !DILocation(line: 237, column: 23, scope: !5948)
!5962 = !DILocation(line: 237, column: 33, scope: !5948)
!5963 = !DILocation(line: 237, column: 40, scope: !5948)
!5964 = !DILocation(line: 237, column: 9, scope: !5948)
!5965 = !DILocation(line: 237, column: 2, scope: !5948)
!5966 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1435, file: !1435, line: 2176, type: !5967, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5971)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!309, !5969}
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5970, size: 64)
!5970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!5971 = !{!5972}
!5972 = !DILocalVariable(name: "page", arg: 1, scope: !5966, file: !1435, line: 2176, type: !5969)
!5973 = !DILocation(line: 2176, column: 69, scope: !5966)
!5974 = !DILocation(line: 2178, column: 9, scope: !5966)
!5975 = !DILocation(line: 2178, column: 2, scope: !5966)
!5976 = distinct !DISubprogram(name: "cpu_to_node", scope: !5941, file: !5941, line: 94, type: !1574, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5977)
!5977 = !{!5978, !5979, !5982}
!5978 = !DILocalVariable(name: "cpu", arg: 1, scope: !5976, file: !5941, line: 94, type: !89)
!5979 = !DILocalVariable(name: "__vpp_verify", scope: !5980, file: !5941, line: 96, type: !1350)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !5941, line: 96, column: 9)
!5981 = distinct !DILexicalBlock(scope: !5976, file: !5941, line: 96, column: 9)
!5982 = !DILocalVariable(name: "__ptr", scope: !5983, file: !5941, line: 96, type: !319)
!5983 = distinct !DILexicalBlock(scope: !5981, file: !5941, line: 96, column: 9)
!5984 = !DILocation(line: 94, column: 35, scope: !5976)
!5985 = !DILocation(line: 96, column: 9, scope: !5981)
!5986 = !DILocation(line: 96, column: 9, scope: !5980)
!5987 = !DILocation(line: 96, column: 9, scope: !5983)
!5988 = !DILocation(line: 96, column: 9, scope: !5976)
!5989 = !DILocation(line: 96, column: 2, scope: !5976)
!5990 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !4468, file: !4468, line: 213, type: !5991, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5993)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{null, !89, !310}
!5993 = !{!5994, !5995, !5996}
!5994 = !DILocalVariable(name: "this_node", arg: 1, scope: !5990, file: !4468, line: 213, type: !89)
!5995 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5990, file: !4468, line: 213, type: !310)
!5996 = !DILocalVariable(name: "warn_gfp", scope: !5990, file: !4468, line: 215, type: !310)
!5997 = !DILocation(line: 213, column: 45, scope: !5990)
!5998 = !DILocation(line: 213, column: 62, scope: !5990)
!5999 = !DILocation(line: 215, column: 2, scope: !5990)
!6000 = !DILocation(line: 215, column: 8, scope: !5990)
!6001 = !DILocation(line: 215, column: 19, scope: !5990)
!6002 = !DILocation(line: 215, column: 28, scope: !5990)
!6003 = !DILocation(line: 217, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5990, file: !4468, line: 217, column: 6)
!6005 = !DILocation(line: 217, column: 15, scope: !6004)
!6006 = !DILocation(line: 217, column: 6, scope: !5990)
!6007 = !DILocation(line: 218, column: 3, scope: !6004)
!6008 = !DILocation(line: 220, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5990, file: !4468, line: 220, column: 6)
!6010 = !DILocation(line: 220, column: 6, scope: !5990)
!6011 = !DILocation(line: 221, column: 3, scope: !6009)
!6012 = !DILocation(line: 223, column: 2, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5990, file: !4468, line: 223, column: 2)
!6014 = !DILocation(line: 223, column: 2, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6013, file: !4468, line: 223, column: 2)
!6016 = !DILocation(line: 224, column: 2, scope: !5990)
!6017 = !DILocation(line: 225, column: 1, scope: !5990)
!6018 = !DISubprogram(name: "__alloc_pages", scope: !4468, file: !4468, line: 177, type: !6019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!400, !310, !7, !89, !6021}
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!6022 = distinct !DISubprogram(name: "node_state", scope: !298, file: !298, line: 421, type: !6023, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{!89, !89, !297}
!6025 = !{!6026, !6027}
!6026 = !DILocalVariable(name: "node", arg: 1, scope: !6022, file: !298, line: 421, type: !89)
!6027 = !DILocalVariable(name: "state", arg: 2, scope: !6022, file: !298, line: 421, type: !297)
!6028 = !DILocation(line: 421, column: 34, scope: !6022)
!6029 = !DILocation(line: 421, column: 57, scope: !6022)
!6030 = !DILocation(line: 423, column: 9, scope: !6022)
!6031 = !DILocation(line: 423, column: 2, scope: !6022)
!6032 = !DISubprogram(name: "dump_stack", scope: !4614, file: !4614, line: 193, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = distinct !DISubprogram(name: "const_test_bit", scope: !6034, file: !6034, line: 166, type: !5711, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!6034 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6035 = !{!6036, !6037, !6038, !6039, !6040}
!6036 = !DILocalVariable(name: "nr", arg: 1, scope: !6033, file: !6034, line: 166, type: !319)
!6037 = !DILocalVariable(name: "addr", arg: 2, scope: !6033, file: !6034, line: 166, type: !5713)
!6038 = !DILocalVariable(name: "p", scope: !6033, file: !6034, line: 168, type: !397)
!6039 = !DILocalVariable(name: "mask", scope: !6033, file: !6034, line: 169, type: !319)
!6040 = !DILocalVariable(name: "val", scope: !6033, file: !6034, line: 170, type: !319)
!6041 = !DILocation(line: 166, column: 30, scope: !6033)
!6042 = !DILocation(line: 166, column: 64, scope: !6033)
!6043 = !DILocation(line: 168, column: 2, scope: !6033)
!6044 = !DILocation(line: 168, column: 23, scope: !6033)
!6045 = !DILocation(line: 168, column: 50, scope: !6033)
!6046 = !DILocation(line: 168, column: 57, scope: !6033)
!6047 = !DILocation(line: 168, column: 55, scope: !6033)
!6048 = !DILocation(line: 169, column: 2, scope: !6033)
!6049 = !DILocation(line: 169, column: 16, scope: !6033)
!6050 = !DILocation(line: 169, column: 23, scope: !6033)
!6051 = !DILocation(line: 170, column: 2, scope: !6033)
!6052 = !DILocation(line: 170, column: 16, scope: !6033)
!6053 = !DILocation(line: 170, column: 23, scope: !6033)
!6054 = !DILocation(line: 170, column: 22, scope: !6033)
!6055 = !DILocation(line: 172, column: 12, scope: !6033)
!6056 = !DILocation(line: 172, column: 18, scope: !6033)
!6057 = !DILocation(line: 172, column: 16, scope: !6033)
!6058 = !DILocation(line: 172, column: 10, scope: !6033)
!6059 = !DILocation(line: 172, column: 9, scope: !6033)
!6060 = !DILocation(line: 173, column: 1, scope: !6033)
!6061 = !DILocation(line: 172, column: 2, scope: !6033)
!6062 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !315, file: !315, line: 485, type: !6063, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6065)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{null, !89, !4687}
!6065 = !{!6066, !6067}
!6066 = !DILocalVariable(name: "cpu", arg: 1, scope: !6062, file: !315, line: 485, type: !89)
!6067 = !DILocalVariable(name: "dstp", arg: 2, scope: !6062, file: !315, line: 485, type: !4687)
!6068 = !DILocation(line: 485, column: 51, scope: !6062)
!6069 = !DILocation(line: 485, column: 72, scope: !6062)
!6070 = !DILocation(line: 487, column: 26, scope: !6062)
!6071 = !DILocation(line: 487, column: 12, scope: !6062)
!6072 = !DILocation(line: 487, column: 32, scope: !6062)
!6073 = !DILocation(line: 487, column: 2, scope: !6062)
!6074 = !DILocation(line: 488, column: 1, scope: !6062)
!6075 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6076, file: !6076, line: 22, type: !6077, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6079)
!6076 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!319, !319}
!6079 = !{!6080, !6081}
!6080 = !DILocalVariable(name: "x", arg: 1, scope: !6075, file: !6076, line: 22, type: !319)
!6081 = !DILocalVariable(name: "y", scope: !6075, file: !6076, line: 24, type: !319)
!6082 = !DILocation(line: 22, column: 72, scope: !6075)
!6083 = !DILocation(line: 24, column: 2, scope: !6075)
!6084 = !DILocation(line: 24, column: 16, scope: !6075)
!6085 = !DILocation(line: 24, column: 20, scope: !6075)
!6086 = !DILocation(line: 24, column: 22, scope: !6075)
!6087 = !DILocation(line: 27, column: 6, scope: !6075)
!6088 = !DILocation(line: 27, column: 12, scope: !6075)
!6089 = !DILocation(line: 27, column: 16, scope: !6075)
!6090 = !DILocation(line: 27, column: 14, scope: !6075)
!6091 = !DILocation(line: 27, column: 11, scope: !6075)
!6092 = !DILocation(line: 27, column: 21, scope: !6075)
!6093 = !DILocation(line: 27, column: 55, scope: !6075)
!6094 = !DILocation(line: 27, column: 53, scope: !6075)
!6095 = !DILocation(line: 27, column: 8, scope: !6075)
!6096 = !DILocation(line: 27, column: 4, scope: !6075)
!6097 = !DILocation(line: 29, column: 9, scope: !6075)
!6098 = !DILocation(line: 30, column: 1, scope: !6075)
!6099 = !DILocation(line: 29, column: 2, scope: !6075)
!6100 = !DISubprogram(name: "__free_pages", scope: !4468, file: !4468, line: 302, type: !6101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{null, !400, !7}
!6103 = distinct !DISubprogram(name: "clear_bit", scope: !6104, file: !6104, line: 39, type: !6105, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6108)
!6104 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6105 = !DISubroutineType(types: !6106)
!6106 = !{null, !746, !6107}
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!6108 = !{!6109, !6110}
!6109 = !DILocalVariable(name: "nr", arg: 1, scope: !6103, file: !6104, line: 39, type: !746)
!6110 = !DILocalVariable(name: "addr", arg: 2, scope: !6103, file: !6104, line: 39, type: !6107)
!6111 = !DILocation(line: 39, column: 44, scope: !6103)
!6112 = !DILocation(line: 39, column: 72, scope: !6103)
!6113 = !DILocation(line: 41, column: 26, scope: !6103)
!6114 = !DILocation(line: 41, column: 33, scope: !6103)
!6115 = !DILocation(line: 41, column: 31, scope: !6103)
!6116 = !DILocation(line: 41, column: 2, scope: !6103)
!6117 = !DILocation(line: 42, column: 17, scope: !6103)
!6118 = !DILocation(line: 42, column: 21, scope: !6103)
!6119 = !DILocation(line: 42, column: 2, scope: !6103)
!6120 = !DILocation(line: 43, column: 1, scope: !6103)
!6121 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5630, file: !5630, line: 80, type: !5631, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6122)
!6122 = !{!6123, !6124}
!6123 = !DILocalVariable(name: "v", arg: 1, scope: !6121, file: !5630, line: 80, type: !5633)
!6124 = !DILocalVariable(name: "size", arg: 2, scope: !6121, file: !5630, line: 80, type: !756)
!6125 = !DILocation(line: 80, column: 74, scope: !6121)
!6126 = !DILocation(line: 80, column: 84, scope: !6121)
!6127 = !DILocation(line: 82, column: 20, scope: !6121)
!6128 = !DILocation(line: 82, column: 23, scope: !6121)
!6129 = !DILocation(line: 82, column: 2, scope: !6121)
!6130 = !DILocation(line: 83, column: 2, scope: !6121)
!6131 = !DILocation(line: 84, column: 1, scope: !6121)
!6132 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5751, file: !5751, line: 72, type: !6105, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6133 = !{!6134, !6135}
!6134 = !DILocalVariable(name: "nr", arg: 1, scope: !6132, file: !5751, line: 72, type: !746)
!6135 = !DILocalVariable(name: "addr", arg: 2, scope: !6132, file: !5751, line: 72, type: !6107)
!6136 = !DILocation(line: 72, column: 21, scope: !6132)
!6137 = !DILocation(line: 72, column: 49, scope: !6132)
!6138 = !DILocation(line: 74, column: 27, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6132, file: !5751, line: 74, column: 6)
!6140 = !DILocation(line: 74, column: 6, scope: !6139)
!6141 = !DILocation(line: 74, column: 6, scope: !6132)
!6142 = !DILocation(line: 76, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6139, file: !5751, line: 74, column: 32)
!6144 = !DILocation(line: 77, column: 13, scope: !6143)
!6145 = !DILocation(line: 77, column: 12, scope: !6143)
!6146 = !DILocation(line: 75, column: 3, scope: !6143)
!6147 = !{i64 2147792997, i64 2147793036, i64 2147793057, i64 2147793094, i64 2147793117, i64 2147792987}
!6148 = !DILocation(line: 78, column: 2, scope: !6143)
!6149 = !DILocation(line: 80, column: 8, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6139, file: !5751, line: 78, column: 9)
!6151 = !DILocation(line: 80, column: 32, scope: !6150)
!6152 = !DILocation(line: 79, column: 3, scope: !6150)
!6153 = !{i64 2147793282, i64 2147793321, i64 2147793342, i64 2147793379, i64 2147793402, i64 2147793272}
!6154 = !DILocation(line: 82, column: 1, scope: !6132)
!6155 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !315, file: !315, line: 469, type: !6156, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6158)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{null, !7, !4687}
!6158 = !{!6159, !6160}
!6159 = !DILocalVariable(name: "cpu", arg: 1, scope: !6155, file: !315, line: 469, type: !7)
!6160 = !DILocalVariable(name: "dstp", arg: 2, scope: !6155, file: !315, line: 469, type: !4687)
!6161 = !DILocation(line: 469, column: 58, scope: !6155)
!6162 = !DILocation(line: 469, column: 79, scope: !6155)
!6163 = !DILocation(line: 471, column: 24, scope: !6155)
!6164 = !DILocation(line: 471, column: 10, scope: !6155)
!6165 = !DILocation(line: 471, column: 30, scope: !6155)
!6166 = !DILocation(line: 471, column: 2, scope: !6155)
!6167 = !DILocation(line: 472, column: 1, scope: !6155)
!6168 = distinct !DISubprogram(name: "set_bit", scope: !6104, file: !6104, line: 26, type: !6105, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6169)
!6169 = !{!6170, !6171}
!6170 = !DILocalVariable(name: "nr", arg: 1, scope: !6168, file: !6104, line: 26, type: !746)
!6171 = !DILocalVariable(name: "addr", arg: 2, scope: !6168, file: !6104, line: 26, type: !6107)
!6172 = !DILocation(line: 26, column: 42, scope: !6168)
!6173 = !DILocation(line: 26, column: 70, scope: !6168)
!6174 = !DILocation(line: 28, column: 26, scope: !6168)
!6175 = !DILocation(line: 28, column: 33, scope: !6168)
!6176 = !DILocation(line: 28, column: 31, scope: !6168)
!6177 = !DILocation(line: 28, column: 2, scope: !6168)
!6178 = !DILocation(line: 29, column: 15, scope: !6168)
!6179 = !DILocation(line: 29, column: 19, scope: !6168)
!6180 = !DILocation(line: 29, column: 2, scope: !6168)
!6181 = !DILocation(line: 30, column: 1, scope: !6168)
!6182 = distinct !DISubprogram(name: "arch_set_bit", scope: !5751, file: !5751, line: 52, type: !6105, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6183 = !{!6184, !6185}
!6184 = !DILocalVariable(name: "nr", arg: 1, scope: !6182, file: !5751, line: 52, type: !746)
!6185 = !DILocalVariable(name: "addr", arg: 2, scope: !6182, file: !5751, line: 52, type: !6107)
!6186 = !DILocation(line: 52, column: 19, scope: !6182)
!6187 = !DILocation(line: 52, column: 47, scope: !6182)
!6188 = !DILocation(line: 54, column: 27, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6182, file: !5751, line: 54, column: 6)
!6190 = !DILocation(line: 54, column: 6, scope: !6189)
!6191 = !DILocation(line: 54, column: 6, scope: !6182)
!6192 = !DILocation(line: 56, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !5751, line: 54, column: 32)
!6194 = !DILocation(line: 57, column: 12, scope: !6193)
!6195 = !DILocation(line: 55, column: 3, scope: !6193)
!6196 = !{i64 2147791709, i64 2147791748, i64 2147791769, i64 2147791806, i64 2147791829, i64 2147791699}
!6197 = !DILocation(line: 59, column: 2, scope: !6193)
!6198 = !DILocation(line: 61, column: 8, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6189, file: !5751, line: 59, column: 9)
!6200 = !DILocation(line: 61, column: 32, scope: !6199)
!6201 = !DILocation(line: 60, column: 3, scope: !6199)
!6202 = !{i64 2147791994, i64 2147792033, i64 2147792054, i64 2147792091, i64 2147792114, i64 2147791984}
!6203 = !DILocation(line: 63, column: 1, scope: !6182)
!6204 = distinct !DISubprogram(name: "read_profile", scope: !3, file: !3, line: 388, type: !1149, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6205)
!6205 = !{!6206, !6207, !6208, !6209, !6210, !6211, !6212, !6213, !6214, !6219, !6220, !6221, !6222}
!6206 = !DILocalVariable(name: "file", arg: 1, scope: !6204, file: !3, line: 388, type: !788)
!6207 = !DILocalVariable(name: "buf", arg: 2, scope: !6204, file: !3, line: 388, type: !609)
!6208 = !DILocalVariable(name: "count", arg: 3, scope: !6204, file: !3, line: 388, type: !756)
!6209 = !DILocalVariable(name: "ppos", arg: 4, scope: !6204, file: !3, line: 388, type: !1151)
!6210 = !DILocalVariable(name: "p", scope: !6204, file: !3, line: 390, type: !319)
!6211 = !DILocalVariable(name: "read", scope: !6204, file: !3, line: 391, type: !743)
!6212 = !DILocalVariable(name: "pnt", scope: !6204, file: !3, line: 392, type: !609)
!6213 = !DILocalVariable(name: "sample_step", scope: !6204, file: !3, line: 393, type: !319)
!6214 = !DILocalVariable(name: "__ret_pu", scope: !6215, file: !3, line: 403, type: !89)
!6215 = distinct !DILexicalBlock(scope: !6216, file: !3, line: 403, column: 7)
!6216 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 403, column: 7)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 403, column: 7)
!6218 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 402, column: 48)
!6219 = !DILocalVariable(name: "__ptr_pu", scope: !6215, file: !3, line: 403, type: !309)
!6220 = !DILocalVariable(name: "__val_pu", scope: !6215, file: !3, line: 403, type: !585)
!6221 = !DILocalVariable(name: "__x", scope: !6215, file: !3, line: 403, type: !585)
!6222 = !DILocalVariable(name: "__ptr", scope: !6215, file: !3, line: 403, type: !609)
!6223 = !DILocation(line: 388, column: 27, scope: !6204)
!6224 = !DILocation(line: 388, column: 46, scope: !6204)
!6225 = !DILocation(line: 388, column: 58, scope: !6204)
!6226 = !DILocation(line: 388, column: 73, scope: !6204)
!6227 = !DILocation(line: 390, column: 2, scope: !6204)
!6228 = !DILocation(line: 390, column: 16, scope: !6204)
!6229 = !DILocation(line: 390, column: 21, scope: !6204)
!6230 = !DILocation(line: 390, column: 20, scope: !6204)
!6231 = !DILocation(line: 391, column: 2, scope: !6204)
!6232 = !DILocation(line: 391, column: 10, scope: !6204)
!6233 = !DILocation(line: 392, column: 2, scope: !6204)
!6234 = !DILocation(line: 392, column: 8, scope: !6204)
!6235 = !DILocation(line: 393, column: 2, scope: !6204)
!6236 = !DILocation(line: 393, column: 16, scope: !6204)
!6237 = !DILocation(line: 393, column: 37, scope: !6204)
!6238 = !DILocation(line: 393, column: 34, scope: !6204)
!6239 = !DILocation(line: 395, column: 2, scope: !6204)
!6240 = !DILocation(line: 396, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 396, column: 6)
!6242 = !DILocation(line: 396, column: 12, scope: !6241)
!6243 = !DILocation(line: 396, column: 20, scope: !6241)
!6244 = !DILocation(line: 396, column: 23, scope: !6241)
!6245 = !DILocation(line: 396, column: 8, scope: !6241)
!6246 = !DILocation(line: 396, column: 6, scope: !6204)
!6247 = !DILocation(line: 397, column: 3, scope: !6241)
!6248 = !DILocation(line: 398, column: 6, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 398, column: 6)
!6250 = !DILocation(line: 398, column: 15, scope: !6249)
!6251 = !DILocation(line: 398, column: 23, scope: !6249)
!6252 = !DILocation(line: 398, column: 26, scope: !6249)
!6253 = !DILocation(line: 398, column: 50, scope: !6249)
!6254 = !DILocation(line: 398, column: 48, scope: !6249)
!6255 = !DILocation(line: 398, column: 12, scope: !6249)
!6256 = !DILocation(line: 398, column: 6, scope: !6204)
!6257 = !DILocation(line: 399, column: 12, scope: !6249)
!6258 = !DILocation(line: 399, column: 20, scope: !6249)
!6259 = !DILocation(line: 399, column: 23, scope: !6249)
!6260 = !DILocation(line: 399, column: 47, scope: !6249)
!6261 = !DILocation(line: 399, column: 45, scope: !6249)
!6262 = !DILocation(line: 399, column: 9, scope: !6249)
!6263 = !DILocation(line: 399, column: 3, scope: !6249)
!6264 = !DILocation(line: 400, column: 7, scope: !6204)
!6265 = !DILocation(line: 402, column: 2, scope: !6204)
!6266 = !DILocation(line: 402, column: 9, scope: !6204)
!6267 = !DILocation(line: 402, column: 11, scope: !6204)
!6268 = !DILocation(line: 402, column: 34, scope: !6204)
!6269 = !DILocation(line: 402, column: 37, scope: !6204)
!6270 = !DILocation(line: 402, column: 43, scope: !6204)
!6271 = !DILocation(line: 0, scope: !6204)
!6272 = !DILocation(line: 403, column: 7, scope: !6216)
!6273 = !DILocation(line: 403, column: 7, scope: !6215)
!6274 = !{i64 2154857389}
!6275 = !DILocation(line: 403, column: 7, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 403, column: 7)
!6277 = !DILocation(line: 403, column: 7, scope: !6217)
!6278 = !DILocation(line: 403, column: 7, scope: !6218)
!6279 = !DILocation(line: 404, column: 4, scope: !6217)
!6280 = !DILocation(line: 405, column: 6, scope: !6218)
!6281 = !DILocation(line: 405, column: 11, scope: !6218)
!6282 = !DILocation(line: 405, column: 20, scope: !6218)
!6283 = !DILocation(line: 405, column: 28, scope: !6218)
!6284 = distinct !{!6284, !6265, !6285, !4866, !4867}
!6285 = !DILocation(line: 406, column: 2, scope: !6204)
!6286 = !DILocation(line: 407, column: 16, scope: !6204)
!6287 = !DILocation(line: 407, column: 30, scope: !6204)
!6288 = !DILocation(line: 407, column: 28, scope: !6204)
!6289 = !DILocation(line: 407, column: 32, scope: !6204)
!6290 = !DILocation(line: 407, column: 6, scope: !6204)
!6291 = !DILocation(line: 408, column: 19, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 408, column: 6)
!6293 = !DILocation(line: 408, column: 32, scope: !6292)
!6294 = !DILocation(line: 408, column: 37, scope: !6292)
!6295 = !DILocation(line: 408, column: 6, scope: !6292)
!6296 = !DILocation(line: 408, column: 6, scope: !6204)
!6297 = !DILocation(line: 409, column: 3, scope: !6292)
!6298 = !DILocation(line: 410, column: 10, scope: !6204)
!6299 = !DILocation(line: 410, column: 7, scope: !6204)
!6300 = !DILocation(line: 411, column: 11, scope: !6204)
!6301 = !DILocation(line: 411, column: 3, scope: !6204)
!6302 = !DILocation(line: 411, column: 8, scope: !6204)
!6303 = !DILocation(line: 412, column: 9, scope: !6204)
!6304 = !DILocation(line: 412, column: 2, scope: !6204)
!6305 = !DILocation(line: 413, column: 1, scope: !6204)
!6306 = distinct !DISubprogram(name: "write_profile", scope: !3, file: !3, line: 427, type: !1154, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6307)
!6307 = !{!6308, !6309, !6310, !6311, !6312}
!6308 = !DILocalVariable(name: "file", arg: 1, scope: !6306, file: !3, line: 427, type: !788)
!6309 = !DILocalVariable(name: "buf", arg: 2, scope: !6306, file: !3, line: 427, type: !583)
!6310 = !DILocalVariable(name: "count", arg: 3, scope: !6306, file: !3, line: 428, type: !756)
!6311 = !DILocalVariable(name: "ppos", arg: 4, scope: !6306, file: !3, line: 428, type: !1151)
!6312 = !DILocalVariable(name: "multiplier", scope: !6313, file: !3, line: 432, type: !7)
!6313 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 431, column: 28)
!6314 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 431, column: 6)
!6315 = !DILocation(line: 427, column: 43, scope: !6306)
!6316 = !DILocation(line: 427, column: 68, scope: !6306)
!6317 = !DILocation(line: 428, column: 16, scope: !6306)
!6318 = !DILocation(line: 428, column: 31, scope: !6306)
!6319 = !DILocation(line: 431, column: 6, scope: !6314)
!6320 = !DILocation(line: 431, column: 12, scope: !6314)
!6321 = !DILocation(line: 431, column: 6, scope: !6306)
!6322 = !DILocation(line: 432, column: 3, scope: !6313)
!6323 = !DILocation(line: 432, column: 16, scope: !6313)
!6324 = !DILocation(line: 434, column: 35, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 434, column: 7)
!6326 = !DILocation(line: 434, column: 7, scope: !6325)
!6327 = !DILocation(line: 434, column: 7, scope: !6313)
!6328 = !DILocation(line: 435, column: 4, scope: !6325)
!6329 = !DILocation(line: 437, column: 29, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6313, file: !3, line: 437, column: 7)
!6331 = !DILocation(line: 437, column: 7, scope: !6330)
!6332 = !DILocation(line: 437, column: 7, scope: !6313)
!6333 = !DILocation(line: 438, column: 4, scope: !6330)
!6334 = !DILocation(line: 439, column: 2, scope: !6314)
!6335 = !DILocation(line: 439, column: 2, scope: !6313)
!6336 = !DILocation(line: 441, column: 2, scope: !6306)
!6337 = !DILocation(line: 442, column: 9, scope: !6306)
!6338 = !DILocation(line: 442, column: 25, scope: !6306)
!6339 = !DILocation(line: 442, column: 34, scope: !6306)
!6340 = !DILocation(line: 442, column: 2, scope: !6306)
!6341 = !DILocation(line: 443, column: 9, scope: !6306)
!6342 = !DILocation(line: 443, column: 2, scope: !6306)
!6343 = !DILocation(line: 444, column: 1, scope: !6306)
!6344 = !DILocation(line: 171, column: 2, scope: !4473)
!6345 = !DILocation(line: 171, column: 6, scope: !4473)
!6346 = !DILocation(line: 171, column: 9, scope: !4473)
!6347 = !DILocation(line: 171, column: 12, scope: !4473)
!6348 = !DILocation(line: 173, column: 2, scope: !4473)
!6349 = !DILocation(line: 174, column: 6, scope: !4480)
!6350 = !DILocation(line: 174, column: 6, scope: !4479)
!6351 = !DILocation(line: 174, column: 6, scope: !4482)
!6352 = !DILocation(line: 174, column: 6, scope: !4486)
!6353 = !DILocation(line: 174, column: 6, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 174, column: 6)
!6355 = !{i64 2154767718}
!6356 = !DILocation(line: 174, column: 6, scope: !4485)
!6357 = !DILocation(line: 174, column: 6, scope: !4484)
!6358 = !DILocation(line: 174, column: 6, scope: !4488)
!6359 = !DILocation(line: 174, column: 6, scope: !4490)
!6360 = !{i64 2154768656}
!6361 = !DILocation(line: 174, column: 6, scope: !4473)
!6362 = !DILocation(line: 174, column: 4, scope: !4473)
!6363 = !DILocation(line: 175, column: 2, scope: !4473)
!6364 = !DILocation(line: 175, column: 2, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 175, column: 2)
!6366 = !{i64 2154769390}
!6367 = !DILocation(line: 175, column: 2, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 175, column: 2)
!6369 = !DILocation(line: 175, column: 2, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 175, column: 2)
!6371 = !{i64 2154769572}
!6372 = !DILocation(line: 176, column: 2, scope: !4473)
!6373 = !DILocation(line: 177, column: 2, scope: !4494)
!6374 = !DILocation(line: 177, column: 2, scope: !4493)
!6375 = !DILocation(line: 178, column: 3, scope: !4492)
!6376 = !DILocation(line: 178, column: 23, scope: !4492)
!6377 = !DILocation(line: 178, column: 30, scope: !4497)
!6378 = !DILocation(line: 178, column: 30, scope: !4496)
!6379 = !DILocation(line: 178, column: 30, scope: !4499)
!6380 = !DILocation(line: 178, column: 61, scope: !4492)
!6381 = !DILocation(line: 178, column: 30, scope: !4492)
!6382 = !DILocation(line: 179, column: 10, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 179, column: 3)
!6384 = !DILocation(line: 179, column: 8, scope: !6383)
!6385 = !DILocation(line: 179, column: 15, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 179, column: 3)
!6387 = !DILocation(line: 179, column: 17, scope: !6386)
!6388 = !DILocation(line: 179, column: 3, scope: !6383)
!6389 = !DILocation(line: 180, column: 9, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 180, column: 8)
!6391 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 179, column: 40)
!6392 = !DILocation(line: 180, column: 14, scope: !6390)
!6393 = !DILocation(line: 180, column: 17, scope: !6390)
!6394 = !DILocation(line: 180, column: 8, scope: !6391)
!6395 = !DILocation(line: 181, column: 9, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 181, column: 9)
!6397 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 180, column: 23)
!6398 = !DILocation(line: 181, column: 14, scope: !6396)
!6399 = !DILocation(line: 181, column: 17, scope: !6396)
!6400 = !DILocation(line: 181, column: 9, scope: !6397)
!6401 = !DILocation(line: 182, column: 6, scope: !6396)
!6402 = !DILocation(line: 182, column: 11, scope: !6396)
!6403 = !DILocation(line: 182, column: 14, scope: !6396)
!6404 = !DILocation(line: 182, column: 17, scope: !6396)
!6405 = !DILocation(line: 183, column: 5, scope: !6397)
!6406 = !DILocation(line: 185, column: 15, scope: !6391)
!6407 = !DILocation(line: 185, column: 20, scope: !6391)
!6408 = !DILocation(line: 185, column: 23, scope: !6391)
!6409 = !DILocation(line: 185, column: 30, scope: !6391)
!6410 = !DILocation(line: 185, column: 42, scope: !6391)
!6411 = !DILocation(line: 185, column: 47, scope: !6391)
!6412 = !DILocation(line: 185, column: 50, scope: !6391)
!6413 = !DILocation(line: 185, column: 4, scope: !6391)
!6414 = !DILocation(line: 186, column: 19, scope: !6391)
!6415 = !DILocation(line: 186, column: 24, scope: !6391)
!6416 = !DILocation(line: 186, column: 27, scope: !6391)
!6417 = !DILocation(line: 186, column: 30, scope: !6391)
!6418 = !DILocation(line: 186, column: 4, scope: !6391)
!6419 = !DILocation(line: 186, column: 9, scope: !6391)
!6420 = !DILocation(line: 186, column: 12, scope: !6391)
!6421 = !DILocation(line: 186, column: 17, scope: !6391)
!6422 = !DILocation(line: 187, column: 3, scope: !6391)
!6423 = !DILocation(line: 179, column: 35, scope: !6386)
!6424 = !DILocation(line: 179, column: 3, scope: !6386)
!6425 = distinct !{!6425, !6388, !6426, !4866, !4867}
!6426 = !DILocation(line: 187, column: 3, scope: !6383)
!6427 = !DILocation(line: 188, column: 2, scope: !4493)
!6428 = !DILocation(line: 188, column: 2, scope: !4492)
!6429 = distinct !{!6429, !6373, !6430, !4866, !4867}
!6430 = !DILocation(line: 188, column: 2, scope: !4494)
!6431 = !DILocation(line: 189, column: 2, scope: !4473)
!6432 = !DILocation(line: 190, column: 1, scope: !4473)
!6433 = distinct !DISubprogram(name: "might_fault", scope: !4609, file: !4609, line: 202, type: !2182, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6434 = !DILocation(line: 202, column: 40, scope: !6433)
!6435 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6436, file: !6436, line: 76, type: !6437, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6439)
!6436 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6437 = !DISubroutineType(types: !6438)
!6438 = !{null, !309, !1350, !756, !756}
!6439 = !{!6440, !6441, !6442, !6443}
!6440 = !DILocalVariable(name: "to", arg: 1, scope: !6435, file: !6436, line: 76, type: !309)
!6441 = !DILocalVariable(name: "from", arg: 2, scope: !6435, file: !6436, line: 76, type: !1350)
!6442 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6435, file: !6436, line: 77, type: !756)
!6443 = !DILocalVariable(name: "left", arg: 4, scope: !6435, file: !6436, line: 77, type: !756)
!6444 = !DILocation(line: 76, column: 52, scope: !6435)
!6445 = !DILocation(line: 76, column: 68, scope: !6435)
!6446 = !DILocation(line: 77, column: 18, scope: !6435)
!6447 = !DILocation(line: 77, column: 34, scope: !6435)
!6448 = !DILocation(line: 79, column: 1, scope: !6435)
!6449 = distinct !DISubprogram(name: "copy_to_user", scope: !6450, file: !6450, line: 188, type: !6451, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6453)
!6450 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!319, !309, !1350, !319}
!6453 = !{!6454, !6455, !6456}
!6454 = !DILocalVariable(name: "to", arg: 1, scope: !6449, file: !6450, line: 188, type: !309)
!6455 = !DILocalVariable(name: "from", arg: 2, scope: !6449, file: !6450, line: 188, type: !1350)
!6456 = !DILocalVariable(name: "n", arg: 3, scope: !6449, file: !6450, line: 188, type: !319)
!6457 = !DILocation(line: 188, column: 27, scope: !6449)
!6458 = !DILocation(line: 188, column: 43, scope: !6449)
!6459 = !DILocation(line: 188, column: 63, scope: !6449)
!6460 = !DILocation(line: 190, column: 22, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6449, file: !6450, line: 190, column: 6)
!6462 = !DILocation(line: 190, column: 28, scope: !6461)
!6463 = !DILocation(line: 190, column: 6, scope: !6461)
!6464 = !DILocation(line: 190, column: 6, scope: !6449)
!6465 = !DILocation(line: 191, column: 21, scope: !6461)
!6466 = !DILocation(line: 191, column: 25, scope: !6461)
!6467 = !DILocation(line: 191, column: 31, scope: !6461)
!6468 = !DILocation(line: 191, column: 7, scope: !6461)
!6469 = !DILocation(line: 191, column: 5, scope: !6461)
!6470 = !DILocation(line: 191, column: 3, scope: !6461)
!6471 = !DILocation(line: 192, column: 9, scope: !6449)
!6472 = !DILocation(line: 192, column: 2, scope: !6449)
!6473 = !DISubprogram(name: "mutex_lock", scope: !824, file: !824, line: 227, type: !6474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{null, !6476}
!6476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!6477 = distinct !DISubprogram(name: "on_each_cpu", scope: !6478, file: !6478, line: 69, type: !6479, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6482)
!6478 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!6479 = !DISubroutineType(types: !6480)
!6480 = !{null, !6481, !309, !89}
!6481 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !6478, line: 17, baseType: !1710)
!6482 = !{!6483, !6484, !6485}
!6483 = !DILocalVariable(name: "func", arg: 1, scope: !6477, file: !6478, line: 69, type: !6481)
!6484 = !DILocalVariable(name: "info", arg: 2, scope: !6477, file: !6478, line: 69, type: !309)
!6485 = !DILocalVariable(name: "wait", arg: 3, scope: !6477, file: !6478, line: 69, type: !89)
!6486 = !DILocation(line: 69, column: 48, scope: !6477)
!6487 = !DILocation(line: 69, column: 60, scope: !6477)
!6488 = !DILocation(line: 69, column: 70, scope: !6477)
!6489 = !DILocation(line: 71, column: 30, scope: !6477)
!6490 = !DILocation(line: 71, column: 36, scope: !6477)
!6491 = !DILocation(line: 71, column: 42, scope: !6477)
!6492 = !DILocation(line: 71, column: 2, scope: !6477)
!6493 = !DILocation(line: 72, column: 1, scope: !6477)
!6494 = distinct !DISubprogram(name: "__profile_flip_buffers", scope: !3, file: !3, line: 162, type: !1711, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6495)
!6495 = !{!6496, !6497, !6498, !6501, !6503, !6505, !6508, !6510, !6513}
!6496 = !DILocalVariable(name: "unused", arg: 1, scope: !6494, file: !3, line: 162, type: !309)
!6497 = !DILocalVariable(name: "cpu", scope: !6494, file: !3, line: 164, type: !89)
!6498 = !DILocalVariable(name: "pscr_ret__", scope: !6499, file: !3, line: 164, type: !89)
!6499 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 164, column: 12)
!6500 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 164, column: 12)
!6501 = !DILocalVariable(name: "__vpp_verify", scope: !6502, file: !3, line: 164, type: !1350)
!6502 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 164, column: 12)
!6503 = !DILocalVariable(name: "pfo_val__", scope: !6504, file: !3, line: 164, type: !329)
!6504 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 164, column: 12)
!6505 = !DILocalVariable(name: "__vpp_verify", scope: !6506, file: !3, line: 166, type: !1350)
!6506 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 166, column: 36)
!6507 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 166, column: 36)
!6508 = !DILocalVariable(name: "__ptr", scope: !6509, file: !3, line: 166, type: !319)
!6509 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 166, column: 36)
!6510 = !DILocalVariable(name: "__vpp_verify", scope: !6511, file: !3, line: 166, type: !1350)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 166, column: 2)
!6512 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 166, column: 2)
!6513 = !DILocalVariable(name: "__ptr", scope: !6514, file: !3, line: 166, type: !319)
!6514 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 166, column: 2)
!6515 = !DILocation(line: 162, column: 42, scope: !6494)
!6516 = !DILocation(line: 164, column: 2, scope: !6494)
!6517 = !DILocation(line: 164, column: 6, scope: !6494)
!6518 = !DILocation(line: 164, column: 12, scope: !6500)
!6519 = !DILocation(line: 164, column: 12, scope: !6499)
!6520 = !DILocation(line: 164, column: 12, scope: !6502)
!6521 = !DILocation(line: 164, column: 12, scope: !6504)
!6522 = !{i64 2154754402}
!6523 = !DILocation(line: 166, column: 36, scope: !6507)
!6524 = !DILocation(line: 166, column: 36, scope: !6506)
!6525 = !DILocation(line: 166, column: 36, scope: !6509)
!6526 = !DILocation(line: 166, column: 36, scope: !6494)
!6527 = !DILocation(line: 166, column: 35, scope: !6494)
!6528 = !DILocation(line: 166, column: 2, scope: !6512)
!6529 = !DILocation(line: 166, column: 2, scope: !6511)
!6530 = !DILocation(line: 166, column: 2, scope: !6514)
!6531 = !DILocation(line: 166, column: 33, scope: !6494)
!6532 = !DILocation(line: 167, column: 1, scope: !6494)
!6533 = distinct !DISubprogram(name: "find_next_bit", scope: !6534, file: !6534, line: 54, type: !6535, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6537)
!6534 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6535 = !DISubroutineType(types: !6536)
!6536 = !{!319, !397, !319, !319}
!6537 = !{!6538, !6539, !6540, !6541}
!6538 = !DILocalVariable(name: "addr", arg: 1, scope: !6533, file: !6534, line: 54, type: !397)
!6539 = !DILocalVariable(name: "size", arg: 2, scope: !6533, file: !6534, line: 54, type: !319)
!6540 = !DILocalVariable(name: "offset", arg: 3, scope: !6533, file: !6534, line: 55, type: !319)
!6541 = !DILocalVariable(name: "val", scope: !6542, file: !6534, line: 58, type: !319)
!6542 = distinct !DILexicalBlock(scope: !6543, file: !6534, line: 57, column: 31)
!6543 = distinct !DILexicalBlock(scope: !6533, file: !6534, line: 57, column: 6)
!6544 = !DILocation(line: 54, column: 50, scope: !6533)
!6545 = !DILocation(line: 54, column: 70, scope: !6533)
!6546 = !DILocation(line: 55, column: 22, scope: !6533)
!6547 = !DILocation(line: 57, column: 6, scope: !6543)
!6548 = !DILocation(line: 57, column: 6, scope: !6533)
!6549 = !DILocation(line: 58, column: 3, scope: !6542)
!6550 = !DILocation(line: 58, column: 17, scope: !6542)
!6551 = !DILocation(line: 60, column: 7, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6542, file: !6534, line: 60, column: 7)
!6553 = !DILocation(line: 60, column: 7, scope: !6542)
!6554 = !DILocation(line: 61, column: 11, scope: !6552)
!6555 = !DILocation(line: 61, column: 4, scope: !6552)
!6556 = !DILocation(line: 63, column: 10, scope: !6542)
!6557 = !DILocation(line: 63, column: 9, scope: !6542)
!6558 = !DILocation(line: 63, column: 17, scope: !6542)
!6559 = !DILocation(line: 63, column: 15, scope: !6542)
!6560 = !DILocation(line: 63, column: 7, scope: !6542)
!6561 = !DILocation(line: 64, column: 10, scope: !6542)
!6562 = !DILocation(line: 64, column: 16, scope: !6542)
!6563 = !DILocation(line: 64, column: 29, scope: !6542)
!6564 = !DILocation(line: 64, column: 3, scope: !6542)
!6565 = !DILocation(line: 65, column: 2, scope: !6543)
!6566 = !DILocation(line: 67, column: 24, scope: !6533)
!6567 = !DILocation(line: 67, column: 30, scope: !6533)
!6568 = !DILocation(line: 67, column: 36, scope: !6533)
!6569 = !DILocation(line: 67, column: 9, scope: !6533)
!6570 = !DILocation(line: 67, column: 2, scope: !6533)
!6571 = !DILocation(line: 68, column: 1, scope: !6533)
!6572 = !DISubprogram(name: "mutex_unlock", scope: !824, file: !824, line: 246, type: !6474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6573 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !6478, file: !6478, line: 53, type: !6574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6574 = !DISubroutineType(types: !6575)
!6575 = !{null, !6576, !6481, !309, !1019, !312}
!6576 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !6478, line: 18, baseType: !6577)
!6577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6578, size: 64)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{!1019, !89, !309}
!6580 = distinct !DISubprogram(name: "variable__ffs", scope: !5751, file: !5751, line: 250, type: !6077, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6581)
!6581 = !{!6582}
!6582 = !DILocalVariable(name: "word", arg: 1, scope: !6580, file: !5751, line: 250, type: !319)
!6583 = !DILocation(line: 250, column: 66, scope: !6580)
!6584 = !DILocation(line: 254, column: 11, scope: !6580)
!6585 = !DILocation(line: 252, column: 2, scope: !6580)
!6586 = !{i64 300396}
!6587 = !DILocation(line: 255, column: 9, scope: !6580)
!6588 = !DILocation(line: 255, column: 2, scope: !6580)
!6589 = !DISubprogram(name: "_find_next_bit", scope: !6534, file: !6534, line: 11, type: !6535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6590 = distinct !DISubprogram(name: "check_copy_size", scope: !4504, file: !4504, line: 237, type: !6591, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6593)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{!1019, !1350, !756, !1019}
!6593 = !{!6594, !6595, !6596, !6597, !6598, !6601}
!6594 = !DILocalVariable(name: "addr", arg: 1, scope: !6590, file: !4504, line: 237, type: !1350)
!6595 = !DILocalVariable(name: "bytes", arg: 2, scope: !6590, file: !4504, line: 237, type: !756)
!6596 = !DILocalVariable(name: "is_source", arg: 3, scope: !6590, file: !4504, line: 237, type: !1019)
!6597 = !DILocalVariable(name: "sz", scope: !6590, file: !4504, line: 239, type: !89)
!6598 = !DILocalVariable(name: "__ret_warn_on", scope: !6599, file: !4504, line: 249, type: !89)
!6599 = distinct !DILexicalBlock(scope: !6600, file: !4504, line: 249, column: 6)
!6600 = distinct !DILexicalBlock(scope: !6590, file: !4504, line: 249, column: 6)
!6601 = !DILocalVariable(name: "__flags", scope: !6602, file: !4504, line: 249, type: !89)
!6602 = distinct !DILexicalBlock(scope: !6603, file: !4504, line: 249, column: 6)
!6603 = distinct !DILexicalBlock(scope: !6599, file: !4504, line: 249, column: 6)
!6604 = !DILocation(line: 237, column: 29, scope: !6590)
!6605 = !DILocation(line: 237, column: 42, scope: !6590)
!6606 = !DILocation(line: 237, column: 54, scope: !6590)
!6607 = !DILocation(line: 239, column: 2, scope: !6590)
!6608 = !DILocation(line: 239, column: 6, scope: !6590)
!6609 = !DILocation(line: 239, column: 33, scope: !6590)
!6610 = !DILocation(line: 239, column: 11, scope: !6590)
!6611 = !DILocation(line: 240, column: 6, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6590, file: !4504, line: 240, column: 6)
!6613 = !DILocation(line: 0, scope: !6612)
!6614 = !DILocation(line: 240, column: 6, scope: !6590)
!6615 = !DILocation(line: 241, column: 29, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6617, file: !4504, line: 241, column: 7)
!6617 = distinct !DILexicalBlock(scope: !6612, file: !4504, line: 240, column: 39)
!6618 = !DILocation(line: 241, column: 8, scope: !6616)
!6619 = !DILocation(line: 241, column: 7, scope: !6617)
!6620 = !DILocation(line: 242, column: 18, scope: !6616)
!6621 = !DILocation(line: 242, column: 22, scope: !6616)
!6622 = !DILocation(line: 242, column: 4, scope: !6616)
!6623 = !DILocation(line: 243, column: 12, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6616, file: !4504, line: 243, column: 12)
!6625 = !DILocation(line: 243, column: 12, scope: !6616)
!6626 = !DILocation(line: 244, column: 4, scope: !6624)
!6627 = !{i32 1767072}
!6628 = !DILocation(line: 246, column: 4, scope: !6624)
!6629 = !{i32 1767101}
!6630 = !DILocation(line: 247, column: 3, scope: !6617)
!6631 = !DILocation(line: 249, column: 6, scope: !6599)
!6632 = !DILocation(line: 249, column: 6, scope: !6603)
!6633 = !DILocation(line: 249, column: 6, scope: !6602)
!6634 = !DILocation(line: 249, column: 6, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6602, file: !4504, line: 249, column: 6)
!6636 = !DILocation(line: 249, column: 6, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6602, file: !4504, line: 249, column: 6)
!6638 = !{i64 2149672276, i64 2149672305, i64 2149672351, i64 2149672409, i64 2149672463, i64 2149672517, i64 2149672572, i64 2149672603, i64 2149672911, i64 2149672917, i64 2149672964, i64 2149672987, i64 2149673013}
!6639 = !DILocation(line: 249, column: 6, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6602, file: !4504, line: 249, column: 6)
!6641 = !DILocation(line: 249, column: 6, scope: !6600)
!6642 = !DILocation(line: 249, column: 6, scope: !6590)
!6643 = !DILocation(line: 250, column: 3, scope: !6600)
!6644 = !DILocation(line: 251, column: 20, scope: !6590)
!6645 = !DILocation(line: 251, column: 26, scope: !6590)
!6646 = !DILocation(line: 251, column: 33, scope: !6590)
!6647 = !DILocation(line: 251, column: 2, scope: !6590)
!6648 = !DILocation(line: 252, column: 2, scope: !6590)
!6649 = !DILocation(line: 253, column: 1, scope: !6590)
!6650 = !DISubprogram(name: "_copy_to_user", scope: !6450, file: !6450, line: 176, type: !6451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6651 = distinct !DISubprogram(name: "copy_overflow", scope: !4504, file: !4504, line: 230, type: !6652, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6654)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{null, !89, !319}
!6654 = !{!6655, !6656}
!6655 = !DILocalVariable(name: "size", arg: 1, scope: !6651, file: !4504, line: 230, type: !89)
!6656 = !DILocalVariable(name: "count", arg: 2, scope: !6651, file: !4504, line: 230, type: !319)
!6657 = !DILocation(line: 230, column: 38, scope: !6651)
!6658 = !DILocation(line: 230, column: 58, scope: !6651)
!6659 = !DILocation(line: 233, column: 19, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6651, file: !4504, line: 232, column: 6)
!6661 = !DILocation(line: 233, column: 25, scope: !6660)
!6662 = !DILocation(line: 233, column: 3, scope: !6660)
!6663 = !DILocation(line: 234, column: 1, scope: !6651)
!6664 = !DISubprogram(name: "__bad_copy_from", scope: !4504, file: !4504, line: 224, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6665 = !DISubprogram(name: "__bad_copy_to", scope: !4504, file: !4504, line: 226, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6666 = distinct !DISubprogram(name: "check_object_size", scope: !4504, file: !4504, line: 218, type: !6667, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6669)
!6667 = !DISubroutineType(types: !6668)
!6668 = !{null, !1350, !319, !1019}
!6669 = !{!6670, !6671, !6672}
!6670 = !DILocalVariable(name: "ptr", arg: 1, scope: !6666, file: !4504, line: 218, type: !1350)
!6671 = !DILocalVariable(name: "n", arg: 2, scope: !6666, file: !4504, line: 218, type: !319)
!6672 = !DILocalVariable(name: "to_user", arg: 3, scope: !6666, file: !4504, line: 219, type: !1019)
!6673 = !DILocation(line: 218, column: 50, scope: !6666)
!6674 = !DILocation(line: 218, column: 69, scope: !6666)
!6675 = !DILocation(line: 219, column: 15, scope: !6666)
!6676 = !DILocation(line: 220, column: 3, scope: !6666)
!6677 = !DISubprogram(name: "__copy_overflow", scope: !4504, file: !4504, line: 228, type: !6652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6678 = distinct !DISubprogram(name: "copy_from_user", scope: !6450, file: !6450, line: 180, type: !6451, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6679 = !{!6680, !6681, !6682}
!6680 = !DILocalVariable(name: "to", arg: 1, scope: !6678, file: !6450, line: 180, type: !309)
!6681 = !DILocalVariable(name: "from", arg: 2, scope: !6678, file: !6450, line: 180, type: !1350)
!6682 = !DILocalVariable(name: "n", arg: 3, scope: !6678, file: !6450, line: 180, type: !319)
!6683 = !DILocation(line: 180, column: 22, scope: !6678)
!6684 = !DILocation(line: 180, column: 45, scope: !6678)
!6685 = !DILocation(line: 180, column: 65, scope: !6678)
!6686 = !DILocation(line: 182, column: 22, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6678, file: !6450, line: 182, column: 6)
!6688 = !DILocation(line: 182, column: 26, scope: !6687)
!6689 = !DILocation(line: 182, column: 6, scope: !6687)
!6690 = !DILocation(line: 182, column: 6, scope: !6678)
!6691 = !DILocation(line: 183, column: 23, scope: !6687)
!6692 = !DILocation(line: 183, column: 27, scope: !6687)
!6693 = !DILocation(line: 183, column: 33, scope: !6687)
!6694 = !DILocation(line: 183, column: 7, scope: !6687)
!6695 = !DILocation(line: 183, column: 5, scope: !6687)
!6696 = !DILocation(line: 183, column: 3, scope: !6687)
!6697 = !DILocation(line: 184, column: 9, scope: !6678)
!6698 = !DILocation(line: 184, column: 2, scope: !6678)
!6699 = !DILocation(line: 194, column: 2, scope: !4510)
!6700 = !DILocation(line: 194, column: 6, scope: !4510)
!6701 = !DILocation(line: 194, column: 9, scope: !4510)
!6702 = !DILocation(line: 196, column: 2, scope: !4510)
!6703 = !DILocation(line: 197, column: 6, scope: !4516)
!6704 = !DILocation(line: 197, column: 6, scope: !4515)
!6705 = !DILocation(line: 197, column: 6, scope: !4518)
!6706 = !DILocation(line: 197, column: 6, scope: !4522)
!6707 = !DILocation(line: 197, column: 6, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 197, column: 6)
!6709 = !{i64 2154783484}
!6710 = !DILocation(line: 197, column: 6, scope: !4521)
!6711 = !DILocation(line: 197, column: 6, scope: !4520)
!6712 = !DILocation(line: 197, column: 6, scope: !4524)
!6713 = !DILocation(line: 197, column: 6, scope: !4526)
!6714 = !{i64 2154784422}
!6715 = !DILocation(line: 197, column: 6, scope: !4510)
!6716 = !DILocation(line: 197, column: 4, scope: !4510)
!6717 = !DILocation(line: 198, column: 2, scope: !4510)
!6718 = !DILocation(line: 198, column: 2, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 198, column: 2)
!6720 = !{i64 2154785156}
!6721 = !DILocation(line: 198, column: 2, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6719, file: !3, line: 198, column: 2)
!6723 = !DILocation(line: 198, column: 2, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 198, column: 2)
!6725 = !{i64 2154785338}
!6726 = !DILocation(line: 199, column: 2, scope: !4510)
!6727 = !DILocation(line: 200, column: 2, scope: !4530)
!6728 = !DILocation(line: 200, column: 2, scope: !4529)
!6729 = !DILocation(line: 201, column: 3, scope: !4528)
!6730 = !DILocation(line: 201, column: 23, scope: !4528)
!6731 = !DILocation(line: 201, column: 30, scope: !4533)
!6732 = !DILocation(line: 201, column: 30, scope: !4532)
!6733 = !DILocation(line: 201, column: 30, scope: !4535)
!6734 = !DILocation(line: 201, column: 61, scope: !4528)
!6735 = !DILocation(line: 201, column: 30, scope: !4528)
!6736 = !DILocation(line: 202, column: 10, scope: !4528)
!6737 = !DILocation(line: 202, column: 3, scope: !4528)
!6738 = !DILocation(line: 203, column: 2, scope: !4529)
!6739 = !DILocation(line: 203, column: 2, scope: !4528)
!6740 = distinct !{!6740, !6727, !6741, !4866, !4867}
!6741 = !DILocation(line: 203, column: 2, scope: !4530)
!6742 = !DILocation(line: 204, column: 2, scope: !4510)
!6743 = !DILocation(line: 205, column: 1, scope: !4510)
!6744 = !DISubprogram(name: "_copy_from_user", scope: !6450, file: !6450, line: 158, type: !6451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6745 = !DISubprogram(name: "__cpuhp_remove_state", scope: !88, file: !88, line: 434, type: !6746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{null, !87, !1019}
