; ModuleID = 'arch/x86/kernel/cpuid.c'
source_filename = "arch/x86/kernel/cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_cpuid__267_179_cpuid_init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpuid__267_179_cpuid_init6:\09\09\09"
module asm ".long\09__initstub__kmod_cpuid__267_179_cpuid_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpuinfo_x86 = type { %union.anon.20, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.22, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.20 = type { i32 }
%union.anon.22 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.cpuid_regs_done = type { %struct.cpuid_regs, %struct.completion }
%struct.cpuid_regs = type { i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@__UNIQUE_ID___addressable___initstub__kmod_cpuid__267_179_cpuid_init6268 = internal global ptr @__initstub__kmod_cpuid__267_179_cpuid_init6, section ".discard.addressable", align 8, !dbg !0
@cpuhp_cpuid_state = internal global i32 0, align 4, !dbg !4188
@cpuid_class = internal constant %struct.class { ptr @.str.6, ptr null, ptr null, ptr null, ptr @cpuid_devnode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4222
@.str = private unnamed_addr constant [10 x i8] c"cpu/cpuid\00", align 1, !dbg !4159
@__exitcall_cpuid_exit = internal global ptr @cpuid_exit, section ".exitcall.exit", align 8, !dbg !4164
@__UNIQUE_ID_author269 = internal constant [44 x i8] c"cpuid.author=H. Peter Anvin <hpa@zytor.com>\00", section ".modinfo", align 1, !dbg !4168
@__UNIQUE_ID_description270 = internal constant [43 x i8] c"cpuid.description=x86 generic CPUID driver\00", section ".modinfo", align 1, !dbg !4173
@__UNIQUE_ID_file271 = internal constant [33 x i8] c"cpuid.file=arch/x86/kernel/cpuid\00", section ".modinfo", align 1, !dbg !4178
@__UNIQUE_ID_license272 = internal constant [18 x i8] c"cpuid.license=GPL\00", section ".modinfo", align 1, !dbg !4183
@cpuid_fops = internal constant %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @cpuid_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @cpuid_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4198
@.str.1 = private unnamed_addr constant [43 x i8] c"\013cpuid: unable to get major %d for cpuid\0A\00", align 1, !dbg !4190
@.str.2 = private unnamed_addr constant [17 x i8] c"x86/cpuid:online\00", align 1, !dbg !4193
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4200
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !4207
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4212
@nr_cpu_ids = external dso_local global i32, align 4
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1, !dbg !4218
@.str.6 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1, !dbg !4220
@.str.7 = private unnamed_addr constant [13 x i8] c"cpu/%u/cpuid\00", align 1, !dbg !4573
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_cpuid__267_179_cpuid_init6268, ptr @cpuid_exit, ptr @__exitcall_cpuid_exit, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_cpuid__267_179_cpuid_init6() #0 section ".init.text" align 16 !dbg !4587 {
entry:
  %call = call i32 @cpuid_init() #15, !dbg !4588
  ret i32 %call, !dbg !4588
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cpuid_init() #0 section ".init.text" align 16 !dbg !4589 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4594
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4591, metadata !DIExpression()), !dbg !4595
  %call = call i32 @__register_chrdev(i32 noundef 203, i32 noundef 0, i32 noundef 64, ptr noundef @.str, ptr noundef @cpuid_fops) #17, !dbg !4596
  %tobool = icmp ne i32 %call, 0, !dbg !4596
  br i1 %tobool, label %if.then, label %if.end, !dbg !4598

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4599

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4602

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4602

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef 203) #15, !dbg !4599
  store i32 %call1, ptr %tmp, align 4, !dbg !4602
  %0 = load i32, ptr %tmp, align 4, !dbg !4599
  store i32 -16, ptr %retval, align 4, !dbg !4604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4604

if.end:                                           ; preds = %entry
  %call2 = call i32 @class_register(ptr noundef @cpuid_class) #17, !dbg !4605
  store i32 %call2, ptr %err, align 4, !dbg !4606
  %1 = load i32, ptr %err, align 4, !dbg !4607
  %tobool3 = icmp ne i32 %1, 0, !dbg !4607
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4609

if.then4:                                         ; preds = %if.end
  br label %out_chrdev, !dbg !4610

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.2, ptr noundef @cpuid_device_create, ptr noundef @cpuid_device_destroy) #17, !dbg !4611
  store i32 %call6, ptr %err, align 4, !dbg !4612
  %2 = load i32, ptr %err, align 4, !dbg !4613
  %cmp = icmp slt i32 %2, 0, !dbg !4615
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4616

if.then7:                                         ; preds = %if.end5
  br label %out_class, !dbg !4617

if.end8:                                          ; preds = %if.end5
  %3 = load i32, ptr %err, align 4, !dbg !4618
  store i32 %3, ptr @cpuhp_cpuid_state, align 4, !dbg !4619
  store i32 0, ptr %retval, align 4, !dbg !4620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4620

out_class:                                        ; preds = %if.then7
  call void @llvm.dbg.label(metadata !4592), !dbg !4621
  call void @class_unregister(ptr noundef @cpuid_class) #17, !dbg !4622
  br label %out_chrdev, !dbg !4622

out_chrdev:                                       ; preds = %out_class, %if.then4
  call void @llvm.dbg.label(metadata !4593), !dbg !4623
  call void @__unregister_chrdev(i32 noundef 203, i32 noundef 0, i32 noundef 64, ptr noundef @.str) #17, !dbg !4624
  %4 = load i32, ptr %err, align 4, !dbg !4625
  store i32 %4, ptr %retval, align 4, !dbg !4626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4626

cleanup:                                          ; preds = %out_chrdev, %if.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4627
  %5 = load i32, ptr %retval, align 4, !dbg !4627
  ret i32 %5, !dbg !4627
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cpuid_exit() #0 section ".exit.text" align 16 !dbg !4628 {
entry:
  %0 = load i32, ptr @cpuhp_cpuid_state, align 4, !dbg !4629
  call void @cpuhp_remove_state(i32 noundef %0) #17, !dbg !4630
  call void @class_unregister(ptr noundef @cpuid_class) #17, !dbg !4631
  call void @__unregister_chrdev(i32 noundef 203, i32 noundef 0, i32 noundef 64, ptr noundef @.str) #17, !dbg !4632
  ret void, !dbg !4633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state(i32 noundef %state) #1 align 16 !dbg !4634 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  %0 = load i32, ptr %state.addr, align 4, !dbg !4640
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext true) #17, !dbg !4641
  ret void, !dbg !4642
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4643 dso_local void @class_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4644 dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4647 dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4650 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4654 dso_local i32 @class_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #1 align 16 !dbg !4657 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4664, metadata !DIExpression()), !dbg !4668
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4665, metadata !DIExpression()), !dbg !4669
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !4666, metadata !DIExpression()), !dbg !4670
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !4667, metadata !DIExpression()), !dbg !4671
  %0 = load i32, ptr %state.addr, align 4, !dbg !4672
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4673
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !4674
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !4675
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #17, !dbg !4676
  ret i32 %call, !dbg !4677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_device_create(i32 noundef %cpu) #6 align 16 !dbg !4678 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4680, metadata !DIExpression()), !dbg !4682
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !4683
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4681, metadata !DIExpression()), !dbg !4684
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4685
  %or = or i32 212860928, %0, !dbg !4685
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4686
  %call = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef @cpuid_class, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef @.str.5, i32 noundef %1) #17, !dbg !4687
  store ptr %call, ptr %dev, align 8, !dbg !4688
  %2 = load ptr, ptr %dev, align 8, !dbg !4689
  %call1 = call i32 @PTR_ERR_OR_ZERO(ptr noundef %2) #17, !dbg !4690
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !4691
  ret i32 %call1, !dbg !4692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_device_destroy(i32 noundef %cpu) #6 align 16 !dbg !4693 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4697
  %or = or i32 212860928, %0, !dbg !4697
  call void @device_destroy(ptr noundef @cpuid_class, i32 noundef %or) #17, !dbg !4698
  ret i32 0, !dbg !4699
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpuid_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #6 align 16 !dbg !4700 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cmd = alloca %struct.cpuid_regs_done, align 8
  %cpu = alloca i32, align 4
  %pos = alloca i64, align 8
  %bytes = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %csd = alloca %struct.__call_single_data, align 32
  %.compoundliteral = alloca %struct.__call_single_data, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4702, metadata !DIExpression()), !dbg !4735
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4703, metadata !DIExpression()), !dbg !4736
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4704, metadata !DIExpression()), !dbg !4737
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4705, metadata !DIExpression()), !dbg !4738
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !4739
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4706, metadata !DIExpression()), !dbg !4740
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4741
  store ptr %0, ptr %tmp, align 8, !dbg !4740
  call void @llvm.lifetime.start.p0(i64 48, ptr %cmd) #16, !dbg !4742
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !4707, metadata !DIExpression()), !dbg !4743
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4719, metadata !DIExpression()), !dbg !4745
  %1 = load ptr, ptr %file.addr, align 8, !dbg !4746
  %call = call ptr @file_inode(ptr noundef %1) #17, !dbg !4747
  %call1 = call i32 @iminor(ptr noundef %call) #17, !dbg !4748
  store i32 %call1, ptr %cpu, align 4, !dbg !4745
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !4749
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4720, metadata !DIExpression()), !dbg !4750
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !4751
  %3 = load i64, ptr %2, align 8, !dbg !4752
  store i64 %3, ptr %pos, align 8, !dbg !4750
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4753
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4721, metadata !DIExpression()), !dbg !4754
  store i64 0, ptr %bytes, align 8, !dbg !4754
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4722, metadata !DIExpression()), !dbg !4756
  store i32 0, ptr %err, align 4, !dbg !4756
  %4 = load i64, ptr %count.addr, align 8, !dbg !4757
  %rem = urem i64 %4, 16, !dbg !4759
  %tobool = icmp ne i64 %rem, 0, !dbg !4759
  br i1 %tobool, label %if.then, label %if.end, !dbg !4760

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !4761

if.end:                                           ; preds = %entry
  %done = getelementptr inbounds %struct.cpuid_regs_done, ptr %cmd, i32 0, i32 1, !dbg !4762
  call void @init_completion(ptr noundef %done) #17, !dbg !4763
  br label %for.cond, !dbg !4764

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %count.addr, align 8, !dbg !4765
  %tobool2 = icmp ne i64 %5, 0, !dbg !4766
  br i1 %tobool2, label %for.body, label %for.end, !dbg !4766

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %csd) #16, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %csd, metadata !4723, metadata !DIExpression()), !dbg !4768
  br label %do.body, !dbg !4769

do.body:                                          ; preds = %for.body
  %node = getelementptr inbounds %struct.__call_single_data, ptr %.compoundliteral, i32 0, i32 0, !dbg !4770
  call void @llvm.memset.p0.i64(ptr align 8 %node, i8 0, i64 16, i1 false), !dbg !4770
  %func = getelementptr inbounds %struct.__call_single_data, ptr %.compoundliteral, i32 0, i32 1, !dbg !4770
  store ptr @cpuid_smp_cpuid, ptr %func, align 8, !dbg !4770
  %info = getelementptr inbounds %struct.__call_single_data, ptr %.compoundliteral, i32 0, i32 2, !dbg !4770
  store ptr %cmd, ptr %info, align 8, !dbg !4770
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %csd, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !4770
  br label %do.cond, !dbg !4770

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4770

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %pos, align 8, !dbg !4772
  %conv = trunc i64 %6 to i32, !dbg !4772
  %regs = getelementptr inbounds %struct.cpuid_regs_done, ptr %cmd, i32 0, i32 0, !dbg !4773
  %eax = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 0, !dbg !4774
  store i32 %conv, ptr %eax, align 8, !dbg !4775
  %7 = load i64, ptr %pos, align 8, !dbg !4776
  %shr = lshr i64 %7, 32, !dbg !4777
  %conv3 = trunc i64 %shr to i32, !dbg !4776
  %regs4 = getelementptr inbounds %struct.cpuid_regs_done, ptr %cmd, i32 0, i32 0, !dbg !4778
  %ecx = getelementptr inbounds %struct.cpuid_regs, ptr %regs4, i32 0, i32 2, !dbg !4779
  store i32 %conv3, ptr %ecx, align 8, !dbg !4780
  %8 = load i32, ptr %cpu, align 4, !dbg !4781
  %call5 = call i32 @smp_call_function_single_async(i32 noundef %8, ptr noundef %csd) #17, !dbg !4782
  store i32 %call5, ptr %err, align 4, !dbg !4783
  %9 = load i32, ptr %err, align 4, !dbg !4784
  %tobool6 = icmp ne i32 %9, 0, !dbg !4784
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4786

if.then7:                                         ; preds = %do.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4787

if.end8:                                          ; preds = %do.end
  %done9 = getelementptr inbounds %struct.cpuid_regs_done, ptr %cmd, i32 0, i32 1, !dbg !4788
  call void @wait_for_completion(ptr noundef %done9) #17, !dbg !4789
  %10 = load ptr, ptr %tmp, align 8, !dbg !4790
  %regs10 = getelementptr inbounds %struct.cpuid_regs_done, ptr %cmd, i32 0, i32 0, !dbg !4792
  %call11 = call i64 @copy_to_user(ptr noundef %10, ptr noundef %regs10, i64 noundef 16) #17, !dbg !4793
  %tobool12 = icmp ne i64 %call11, 0, !dbg !4793
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4794

if.then13:                                        ; preds = %if.end8
  store i32 -14, ptr %err, align 4, !dbg !4795
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4797

if.end14:                                         ; preds = %if.end8
  %11 = load ptr, ptr %tmp, align 8, !dbg !4798
  %add.ptr = getelementptr i8, ptr %11, i64 16, !dbg !4798
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4798
  %12 = load i64, ptr %bytes, align 8, !dbg !4799
  %add = add i64 %12, 16, !dbg !4799
  store i64 %add, ptr %bytes, align 8, !dbg !4799
  %13 = load i64, ptr %pos, align 8, !dbg !4800
  %inc = add i64 %13, 1, !dbg !4800
  store i64 %inc, ptr %pos, align 8, !dbg !4800
  %14 = load ptr, ptr %ppos.addr, align 8, !dbg !4801
  store i64 %inc, ptr %14, align 8, !dbg !4802
  %done15 = getelementptr inbounds %struct.cpuid_regs_done, ptr %cmd, i32 0, i32 1, !dbg !4803
  call void @reinit_completion(ptr noundef %done15) #17, !dbg !4804
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4805
  br label %cleanup, !dbg !4805

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then7
  call void @llvm.lifetime.end.p0(i64 32, ptr %csd) #16, !dbg !4805
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4806

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %count.addr, align 8, !dbg !4807
  %sub = sub i64 %15, 16, !dbg !4807
  store i64 %sub, ptr %count.addr, align 8, !dbg !4807
  br label %for.cond, !dbg !4808, !llvm.loop !4809

for.end:                                          ; preds = %cleanup, %for.cond
  %16 = load i64, ptr %bytes, align 8, !dbg !4813
  %tobool16 = icmp ne i64 %16, 0, !dbg !4813
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !4813

cond.true:                                        ; preds = %for.end
  %17 = load i64, ptr %bytes, align 8, !dbg !4814
  br label %cond.end, !dbg !4813

cond.false:                                       ; preds = %for.end
  %18 = load i32, ptr %err, align 4, !dbg !4815
  %conv17 = sext i32 %18 to i64, !dbg !4815
  br label %cond.end, !dbg !4813

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %conv17, %cond.false ], !dbg !4813
  store i64 %cond, ptr %retval, align 8, !dbg !4816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !4816

cleanup18:                                        ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4817
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4817
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !4817
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !4817
  call void @llvm.lifetime.end.p0(i64 48, ptr %cmd) #16, !dbg !4817
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !4817
  %19 = load i64, ptr %retval, align 8, !dbg !4817
  ret i64 %19, !dbg !4817

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_open(ptr noundef %inode, ptr noundef %file) #6 align 16 !dbg !4818 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4820, metadata !DIExpression()), !dbg !4829
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4821, metadata !DIExpression()), !dbg !4830
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !4831
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4822, metadata !DIExpression()), !dbg !4832
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #16, !dbg !4833
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4823, metadata !DIExpression()), !dbg !4834
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4835
  %call = call ptr @file_inode(ptr noundef %0) #17, !dbg !4836
  %call1 = call i32 @iminor(ptr noundef %call) #17, !dbg !4837
  store i32 %call1, ptr %cpu, align 4, !dbg !4838
  %1 = load i32, ptr %cpu, align 4, !dbg !4839
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4841
  %cmp = icmp uge i32 %1, %2, !dbg !4842
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4843

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %cpu, align 4, !dbg !4844
  %call2 = call zeroext i1 @cpu_online(i32 noundef %3) #17, !dbg !4845
  br i1 %call2, label %if.end, label %if.then, !dbg !4846

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4, !dbg !4847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4847

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !4848

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4824, metadata !DIExpression()), !dbg !4849
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4849
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !4849
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4848
  br label %do.cond, !dbg !4849

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4849

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !4850
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4827, metadata !DIExpression()), !dbg !4850
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4850
  %5 = load i64, ptr %__ptr, align 8, !dbg !4850
  %6 = load i32, ptr %cpu, align 4, !dbg !4850
  %idxprom = zext i32 %6 to i64, !dbg !4850
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4850
  %7 = load i64, ptr %arrayidx, align 8, !dbg !4850
  %add = add i64 %5, %7, !dbg !4850
  %8 = inttoptr i64 %add to ptr, !dbg !4850
  store ptr %8, ptr %tmp3, align 8, !dbg !4850
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !4848
  %9 = load ptr, ptr %tmp3, align 8, !dbg !4850
  store ptr %9, ptr %tmp, align 8, !dbg !4849
  %10 = load ptr, ptr %tmp, align 8, !dbg !4848
  store ptr %10, ptr %c, align 8, !dbg !4851
  %11 = load ptr, ptr %c, align 8, !dbg !4852
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 9, !dbg !4854
  %12 = load i32, ptr %cpuid_level, align 8, !dbg !4854
  %cmp4 = icmp slt i32 %12, 0, !dbg !4855
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4856

if.then5:                                         ; preds = %do.end
  store i32 -5, ptr %retval, align 4, !dbg !4857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4857

if.end6:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !4858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4858

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #16, !dbg !4859
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !4859
  %13 = load i32, ptr %retval, align 4, !dbg !4859
  ret i32 %13, !dbg !4859
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #1 align 16 !dbg !4860 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4866
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !4866
  %1 = load i32, ptr %i_rdev, align 4, !dbg !4866
  %and = and i32 %1, 1048575, !dbg !4866
  ret i32 %and, !dbg !4867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #1 align 16 !dbg !4868 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4876
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !4877
  %1 = load ptr, ptr %f_inode, align 8, !dbg !4877
  ret ptr %1, !dbg !4878
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #1 align 16 !dbg !4202 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4206, metadata !DIExpression()), !dbg !4879
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4880
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !4881
  store i32 0, ptr %done, align 8, !dbg !4882
  br label %do.body, !dbg !4883

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !4884
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !4884
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.3, ptr noundef @init_completion.__key) #17, !dbg !4884
  br label %do.end, !dbg !4884

do.end:                                           ; preds = %do.body
  ret void, !dbg !4886
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid_smp_cpuid(ptr noundef %cmd_block) #6 align 16 !dbg !4887 {
entry:
  %cmd_block.addr = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  store ptr %cmd_block, ptr %cmd_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd_block.addr, metadata !4889, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #16, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !4890, metadata !DIExpression()), !dbg !4894
  %0 = load ptr, ptr %cmd_block.addr, align 8, !dbg !4895
  store ptr %0, ptr %cmd, align 8, !dbg !4894
  %1 = load ptr, ptr %cmd, align 8, !dbg !4896
  %regs = getelementptr inbounds %struct.cpuid_regs_done, ptr %1, i32 0, i32 0, !dbg !4897
  %eax = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 0, !dbg !4898
  %2 = load i32, ptr %eax, align 8, !dbg !4898
  %3 = load ptr, ptr %cmd, align 8, !dbg !4899
  %regs1 = getelementptr inbounds %struct.cpuid_regs_done, ptr %3, i32 0, i32 0, !dbg !4900
  %ecx = getelementptr inbounds %struct.cpuid_regs, ptr %regs1, i32 0, i32 2, !dbg !4901
  %4 = load i32, ptr %ecx, align 8, !dbg !4901
  %5 = load ptr, ptr %cmd, align 8, !dbg !4902
  %regs2 = getelementptr inbounds %struct.cpuid_regs_done, ptr %5, i32 0, i32 0, !dbg !4903
  %eax3 = getelementptr inbounds %struct.cpuid_regs, ptr %regs2, i32 0, i32 0, !dbg !4904
  %6 = load ptr, ptr %cmd, align 8, !dbg !4905
  %regs4 = getelementptr inbounds %struct.cpuid_regs_done, ptr %6, i32 0, i32 0, !dbg !4906
  %ebx = getelementptr inbounds %struct.cpuid_regs, ptr %regs4, i32 0, i32 1, !dbg !4907
  %7 = load ptr, ptr %cmd, align 8, !dbg !4908
  %regs5 = getelementptr inbounds %struct.cpuid_regs_done, ptr %7, i32 0, i32 0, !dbg !4909
  %ecx6 = getelementptr inbounds %struct.cpuid_regs, ptr %regs5, i32 0, i32 2, !dbg !4910
  %8 = load ptr, ptr %cmd, align 8, !dbg !4911
  %regs7 = getelementptr inbounds %struct.cpuid_regs_done, ptr %8, i32 0, i32 0, !dbg !4912
  %edx = getelementptr inbounds %struct.cpuid_regs, ptr %regs7, i32 0, i32 3, !dbg !4913
  call void @cpuid_count(i32 noundef %2, i32 noundef %4, ptr noundef %eax3, ptr noundef %ebx, ptr noundef %ecx6, ptr noundef %edx) #17, !dbg !4914
  %9 = load ptr, ptr %cmd, align 8, !dbg !4915
  %done = getelementptr inbounds %struct.cpuid_regs_done, ptr %9, i32 0, i32 1, !dbg !4916
  call void @complete(ptr noundef %done) #17, !dbg !4917
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #16, !dbg !4918
  ret void, !dbg !4918
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4919 dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4923 dso_local void @wait_for_completion(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !4924 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4929, metadata !DIExpression()), !dbg !4932
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4930, metadata !DIExpression()), !dbg !4933
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4931, metadata !DIExpression()), !dbg !4934
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4935
  %1 = load i64, ptr %n.addr, align 8, !dbg !4937
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !4938
  br i1 %call, label %if.then, label %if.end, !dbg !4939

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4940
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4941
  %4 = load i64, ptr %n.addr, align 8, !dbg !4942
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !4943
  store i64 %call1, ptr %n.addr, align 8, !dbg !4944
  br label %if.end, !dbg !4945

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4946
  ret i64 %5, !dbg !4947
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reinit_completion(ptr noundef %x) #1 align 16 !dbg !4948 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4952
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !4953
  store i32 0, ptr %done, align 8, !dbg !4954
  ret void, !dbg !4955
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4956 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid_count(i32 noundef %op, i32 noundef %count, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #1 align 16 !dbg !4961 {
entry:
  %op.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4965, metadata !DIExpression()), !dbg !4971
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4966, metadata !DIExpression()), !dbg !4972
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !4967, metadata !DIExpression()), !dbg !4973
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !4968, metadata !DIExpression()), !dbg !4974
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !4969, metadata !DIExpression()), !dbg !4975
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !4970, metadata !DIExpression()), !dbg !4976
  %0 = load i32, ptr %op.addr, align 4, !dbg !4977
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !4978
  store i32 %0, ptr %1, align 4, !dbg !4979
  %2 = load i32, ptr %count.addr, align 4, !dbg !4980
  %3 = load ptr, ptr %ecx.addr, align 8, !dbg !4981
  store i32 %2, ptr %3, align 4, !dbg !4982
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !4983
  %5 = load ptr, ptr %ebx.addr, align 8, !dbg !4984
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !4985
  %7 = load ptr, ptr %edx.addr, align 8, !dbg !4986
  call void @native_cpuid(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #17, !dbg !4987
  ret void, !dbg !4988
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4989 dso_local void @complete(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #1 align 16 !dbg !4990 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !4994, metadata !DIExpression()), !dbg !4998
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !4995, metadata !DIExpression()), !dbg !4999
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !4996, metadata !DIExpression()), !dbg !5000
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !4997, metadata !DIExpression()), !dbg !5001
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !5002
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !5003
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !5004
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !5005
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !5006
  %5 = load i32, ptr %4, align 4, !dbg !5007
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !5008
  %7 = load i32, ptr %6, align 4, !dbg !5009
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #16, !dbg !5010, !srcloc !5011
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !5010
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !5010
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !5010
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !5010
  store i32 %asmresult, ptr %0, align 4, !dbg !5010
  store i32 %asmresult1, ptr %1, align 4, !dbg !5010
  store i32 %asmresult2, ptr %2, align 4, !dbg !5010
  store i32 %asmresult3, ptr %3, align 4, !dbg !5010
  ret void, !dbg !5012
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #9 align 16 !dbg !5013 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5017, metadata !DIExpression()), !dbg !5027
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5018, metadata !DIExpression()), !dbg !5028
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5019, metadata !DIExpression()), !dbg !5029
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5020, metadata !DIExpression()), !dbg !5031
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5032
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5033
  %conv = trunc i64 %1 to i32, !dbg !5033
  store i32 %conv, ptr %sz, align 4, !dbg !5031
  %2 = load i32, ptr %sz, align 4, !dbg !5034
  %cmp = icmp sge i32 %2, 0, !dbg !5034
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5034

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5034
  %conv2 = sext i32 %3 to i64, !dbg !5034
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5034
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5034
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5036
  %lnot = xor i1 %5, true, !dbg !5034
  %lnot5 = xor i1 %lnot, true, !dbg !5034
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5034
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5034
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5034
  %tobool = icmp ne i64 %expval, 0, !dbg !5034
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5037

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5038
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5041
  br i1 %7, label %if.else, label %if.then7, !dbg !5042

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5043
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5044
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !5045
  br label %if.end11, !dbg !5045

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5046, !range !5048, !noundef !707
  %tobool8 = trunc i8 %10 to i1, !dbg !5046
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5049

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !5050, !srcloc !5051
  br label %if.end, !dbg !5050

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !5052, !srcloc !5053
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5054

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5021, metadata !DIExpression()), !dbg !5055
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5055
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5055
  %lnot15 = xor i1 %cmp13, true, !dbg !5055
  %lnot17 = xor i1 %lnot15, true, !dbg !5055
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5055
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5055
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5056
  %tobool19 = icmp ne i32 %12, 0, !dbg !5056
  %lnot20 = xor i1 %tobool19, true, !dbg !5056
  %lnot22 = xor i1 %lnot20, true, !dbg !5056
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5056
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5056
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5056
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5056
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5055

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5056

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5024, metadata !DIExpression()), !dbg !5057
  store i32 2307, ptr %__flags, align 4, !dbg !5057
  br label %do.body28, !dbg !5057

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5058

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5058

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5057

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5060
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 249, i32 %13, i64 12) #16, !dbg !5060, !srcloc !5062
  br label %do.cond30, !dbg !5060

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5060

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5057

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5063

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5063

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5056
  br label %do.cond35, !dbg !5057

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5057

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5057

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5055
  %tobool38 = icmp ne i32 %14, 0, !dbg !5055
  %lnot39 = xor i1 %tobool38, true, !dbg !5055
  %lnot41 = xor i1 %lnot39, true, !dbg !5055
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5055
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5055
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5055
  store i64 %expval44, ptr %tmp, align 8, !dbg !5056
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5065
  %15 = load i64, ptr %tmp, align 8, !dbg !5055
  %tobool45 = icmp ne i64 %15, 0, !dbg !5065
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5066

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5067

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5068
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5069
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5070, !range !5048, !noundef !707
  %tobool48 = trunc i8 %18 to i1, !dbg !5070
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !5071
  store i1 true, ptr %retval, align 1, !dbg !5072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5072

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !5073
  %19 = load i1, ptr %retval, align 1, !dbg !5073
  ret i1 %19, !dbg !5073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5074 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #1 align 16 !dbg !5075 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5079, metadata !DIExpression()), !dbg !5081
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5080, metadata !DIExpression()), !dbg !5082
  %0 = load i32, ptr %size.addr, align 4, !dbg !5083
  %1 = load i64, ptr %count.addr, align 8, !dbg !5085
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !5086
  ret void, !dbg !5087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5088 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5089 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #1 align 16 !dbg !5090 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5094, metadata !DIExpression()), !dbg !5097
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5095, metadata !DIExpression()), !dbg !5098
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5096, metadata !DIExpression()), !dbg !5099
  ret void, !dbg !5100
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5101 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #1 align 16 !dbg !5102 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5108
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #17, !dbg !5109
  ret i1 %call, !dbg !5110
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #9 align 16 !dbg !5111 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5115, metadata !DIExpression()), !dbg !5117
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5116, metadata !DIExpression()), !dbg !5118
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5119
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !5119
  %conv = zext i32 %call to i64, !dbg !5119
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5119
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5119
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5119
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !5119
  ret i1 %call1, !dbg !5120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5121 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5129, metadata !DIExpression()), !dbg !5131
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5130, metadata !DIExpression()), !dbg !5132
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5133
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5134
  %div = udiv i64 %1, 64, !dbg !5134
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5135
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5136
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5137
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5138
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5139
  ret i1 %call, !dbg !5140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #9 align 16 !dbg !5141 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5147
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #17, !dbg !5148
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5149
  ret i32 %1, !dbg !5150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5151 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5159, metadata !DIExpression()), !dbg !5161
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5160, metadata !DIExpression()), !dbg !5162
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5163
  %1 = load i64, ptr %size.addr, align 8, !dbg !5164
  %conv = trunc i64 %1 to i32, !dbg !5164
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5165
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5166
  %3 = load i64, ptr %size.addr, align 8, !dbg !5166
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5166
  ret void, !dbg !5167
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5168 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5171, metadata !DIExpression()), !dbg !5173
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5172, metadata !DIExpression()), !dbg !5174
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5175
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5176
  br i1 %1, label %cond.true, label %cond.false, !dbg !5176

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5177
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5178
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5179
  %conv = zext i1 %call to i32, !dbg !5179
  br label %cond.end, !dbg !5176

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5180
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5181
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !5182
  %conv2 = zext i1 %call1 to i32, !dbg !5182
  br label %cond.end, !dbg !5176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5176
  %tobool = icmp ne i32 %cond, 0, !dbg !5176
  ret i1 %tobool, !dbg !5183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !5184 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5189, metadata !DIExpression()), !dbg !5191
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5190, metadata !DIExpression()), !dbg !5192
  ret i1 true, !dbg !5193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #1 align 16 !dbg !5194 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5199, metadata !DIExpression()), !dbg !5202
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5200, metadata !DIExpression()), !dbg !5203
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5201, metadata !DIExpression()), !dbg !5204
  ret void, !dbg !5205
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5206 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5210, metadata !DIExpression()), !dbg !5212
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5211, metadata !DIExpression()), !dbg !5213
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5214
  %and = and i64 %0, 63, !dbg !5215
  %shl = shl i64 1, %and, !dbg !5216
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5217
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5218
  %shr = ashr i64 %2, 6, !dbg !5219
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5217
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5217
  %and1 = and i64 %shl, %3, !dbg !5220
  %cmp = icmp ne i64 %and1, 0, !dbg !5221
  ret i1 %cmp, !dbg !5222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5223 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5225, metadata !DIExpression()), !dbg !5228
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5226, metadata !DIExpression()), !dbg !5229
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5230
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5227, metadata !DIExpression()), !dbg !5231
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5232
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5233
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5234, !srcloc !5235
  %3 = icmp ult i8 %2, 2, !dbg !5234
  call void @llvm.assume(i1 %3), !dbg !5234
  store i8 %2, ptr %oldbit, align 1, !dbg !5234
  %4 = load i8, ptr %oldbit, align 1, !dbg !5236, !range !5048, !noundef !707
  %tobool = trunc i8 %4 to i1, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5237
  ret i1 %tobool, !dbg !5238
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #9 align 16 !dbg !5239 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5243, metadata !DIExpression()), !dbg !5245
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5244, metadata !DIExpression()), !dbg !5246
  ret void, !dbg !5247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5248 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5251 dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PTR_ERR_OR_ZERO(ptr noundef %ptr) #1 align 16 !dbg !5254 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5259, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5261
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #17, !dbg !5263
  br i1 %call, label %if.then, label %if.else, !dbg !5264

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5265
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #17, !dbg !5266
  %conv = trunc i64 %call1 to i32, !dbg !5266
  store i32 %conv, ptr %retval, align 4, !dbg !5267
  br label %return, !dbg !5267

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5269
  ret i32 %2, !dbg !5269
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #1 align 16 !dbg !5270 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5276
  %1 = ptrtoint ptr %0 to i64, !dbg !5276
  %2 = inttoptr i64 %1 to ptr, !dbg !5276
  %3 = ptrtoint ptr %2 to i64, !dbg !5276
  %cmp = icmp uge i64 %3, -4095, !dbg !5276
  %lnot = xor i1 %cmp, true, !dbg !5276
  %lnot1 = xor i1 %lnot, true, !dbg !5276
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5276
  %conv = sext i32 %lnot.ext to i64, !dbg !5276
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5276
  %tobool = icmp ne i64 %expval, 0, !dbg !5276
  ret i1 %tobool, !dbg !5277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #1 align 16 !dbg !5278 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5284
  %1 = ptrtoint ptr %0 to i64, !dbg !5285
  ret i64 %1, !dbg !5286
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5287 dso_local void @device_destroy(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5290 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cpuid_devnode(ptr noundef %dev, ptr noundef %mode) #6 align 16 !dbg !5293 {
entry:
  %dev.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5295, metadata !DIExpression()), !dbg !5297
  store ptr %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5296, metadata !DIExpression()), !dbg !5298
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5299
  %devt = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26, !dbg !5299
  %1 = load i32, ptr %devt, align 4, !dbg !5299
  %and = and i32 %1, 1048575, !dbg !5299
  %call = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.7, i32 noundef %and) #17, !dbg !5300
  ret ptr %call, !dbg !5301
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5302 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585}
!llvm.ident = !{!4586}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_cpuid__267_179_cpuid_init6268", scope: !2, file: !3, line: 179, type: !317, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.cpuid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpuid\22 -D KBUILD_BASENAME=\22cpuid\22 -D KBUILD_MODNAME=\22cpuid\22 -D __KBUILD_MODNAME=kmod_cpuid -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpuid.ll arch/x86/kernel/cpuid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !316, globals: !4158, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpuid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e73aec48454603635f93524d874408e3")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117, !311}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !118, line: 57, baseType: !85, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!120 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!121 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!122 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!123 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!124 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!125 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!126 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!127 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!128 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!129 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!130 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!131 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!132 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!133 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!134 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!135 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!136 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!137 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!138 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!139 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!140 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!141 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!142 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!143 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!144 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!145 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!146 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!147 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!148 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!149 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!150 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!151 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!152 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!153 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!154 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!155 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!156 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!157 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!158 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!159 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!160 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!161 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!162 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!163 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!164 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!165 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!166 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!167 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!168 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!169 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!170 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!171 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!172 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!173 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!174 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!175 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!176 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!177 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!178 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!179 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!180 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!181 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!182 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!183 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!184 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!185 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!186 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!187 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!188 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!189 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!190 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!191 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!192 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!193 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!194 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!195 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!196 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!197 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!198 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!199 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!200 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!201 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!202 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!203 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!204 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!205 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!206 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!207 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!208 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!209 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!210 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!211 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!212 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!213 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!214 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!215 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!216 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!217 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!218 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!219 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!220 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!221 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!222 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!223 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!224 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!225 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!226 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!227 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!228 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!229 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!230 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!231 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!232 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!233 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!234 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!235 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!236 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!237 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!238 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!239 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!240 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!241 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!242 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!243 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!244 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!245 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!246 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!247 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!248 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!249 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!250 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!251 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!252 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!253 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!254 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!255 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!256 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!257 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!258 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!259 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!260 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!261 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!262 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!263 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!264 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!265 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!266 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!267 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!268 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!269 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!270 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!271 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!272 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!273 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!274 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!275 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!276 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!277 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!278 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!279 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!280 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!281 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!282 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!283 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!284 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!285 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!286 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!287 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!288 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!289 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!290 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!291 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!292 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!293 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!294 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!295 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!296 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!297 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!298 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!299 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!300 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!301 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!302 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!303 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!304 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!305 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!306 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!307 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!308 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!309 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!310 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !312, line: 10, baseType: !7, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!313 = !{!314, !315}
!314 = !DIEnumerator(name: "false", value: 0)
!315 = !DIEnumerator(name: "true", value: 1)
!316 = !{!317, !318, !7, !85, !4096, !473, !4156, !4081, !459, !868}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !320)
!320 = !{!321, !322, !329, !334, !3772, !3798, !3799, !3800, !3801, !3805, !3808, !3809, !3810, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3877, !3881, !3899, !3916, !3917, !3918, !3919, !3928, !3951, !3952, !3955, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3969, !3970, !4056, !4064, !4065, !4066, !4068, !4072, !4073, !4077, !4078, !4079, !4080, !4082, !4083, !4084, !4091, !4092, !4093, !4095}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !21, line: 403, baseType: !20, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !319, file: !21, line: 406, baseType: !323, size: 128, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !324, line: 190, size: 128, elements: !325)
!324 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !324, line: 191, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !323, file: !324, line: 191, baseType: !327, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !21, line: 409, baseType: !330, size: 448, offset: 192)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 448, elements: !332)
!331 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!332 = !{!333}
!333 = !DISubrange(count: 56)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !319, file: !21, line: 417, baseType: !335, size: 768, offset: 640)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !336)
!336 = !{!337, !3766, !3767, !3768, !3771}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !335, file: !21, line: 46, baseType: !338, size: 512)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !339, line: 64, size: 512, elements: !340)
!339 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!340 = !{!341, !344, !345, !347, !436, !3653, !3756, !3761, !3762, !3763, !3764, !3765}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !339, line: 65, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !338, file: !339, line: 66, baseType: !323, size: 128, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !338, file: !339, line: 67, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !338, file: !339, line: 68, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !339, line: 168, size: 768, elements: !350)
!350 = !{!351, !352, !395, !396}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !349, file: !339, line: 169, baseType: !323, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !349, file: !339, line: 170, baseType: !353, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !354, line: 29, baseType: !355)
!354 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !354, line: 17, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !354, line: 18, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !354, line: 18, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !358, file: !354, line: 19, baseType: !361, size: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !362, line: 14, size: 32, elements: !363)
!362 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !361, file: !362, line: 15, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !366, line: 44, baseType: !367)
!366 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !366, line: 14, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !366, line: 15, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !366, line: 15, size: 32, elements: !371)
!371 = !{!372, !377, !387}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !366, line: 16, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !324, line: 174, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 172, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !374, file: !324, line: 173, baseType: !85, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !366, line: 24, baseType: !378, size: 16)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !366, line: 24, size: 16, elements: !379)
!379 = !{!380, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !378, file: !366, line: 25, baseType: !381, size: 8)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !382, line: 17, baseType: !383)
!382 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !384, line: 21, baseType: !385)
!384 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!385 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !378, file: !366, line: 26, baseType: !381, size: 8, offset: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !366, line: 28, baseType: !388, size: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !366, line: 28, size: 32, elements: !389)
!389 = !{!390, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !388, file: !366, line: 29, baseType: !391, size: 16)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !382, line: 19, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !384, line: 24, baseType: !393)
!393 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !388, file: !366, line: 30, baseType: !391, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !349, file: !339, line: 171, baseType: !338, size: 512, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !349, file: !339, line: 172, baseType: !397, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !339, line: 133, size: 192, elements: !400)
!400 = !{!401, !408, !413}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !399, file: !339, line: 134, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!85, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !339, line: 135, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!342, !406}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !399, file: !339, line: 136, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!85, !406, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !339, line: 125, size: 20736, elements: !420)
!420 = !{!421, !426, !430, !431, !435}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !419, file: !339, line: 126, baseType: !422, size: 192)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !424)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!424 = !{!425}
!425 = !DISubrange(count: 3)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !419, file: !339, line: 127, baseType: !427, size: 4096, offset: 192)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 4096, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !419, file: !339, line: 128, baseType: !85, size: 32, offset: 4288)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !419, file: !339, line: 129, baseType: !432, size: 16384, offset: 4320)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 16384, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 2048)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !419, file: !339, line: 130, baseType: !85, size: 32, offset: 20704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !338, file: !339, line: 69, baseType: !437, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !339, line: 116, size: 384, elements: !440)
!440 = !{!441, !445, !474, !3615, !3643, !3647}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !439, file: !339, line: 117, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !346}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !439, file: !339, line: 118, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !449, line: 254, size: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!450 = !{!451, !466}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !448, file: !449, line: 255, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !346, !460, !423}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !324, line: 66, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !457, line: 73, baseType: !458)
!457 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !457, line: 15, baseType: !459)
!459 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !449, line: 30, size: 128, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !461, file: !449, line: 31, baseType: !342, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !461, file: !449, line: 32, baseType: !465, size: 16, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !324, line: 24, baseType: !393)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !448, file: !449, line: 256, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!455, !346, !460, !342, !470}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !324, line: 61, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !457, line: 72, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !457, line: 16, baseType: !473)
!473 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !439, file: !339, line: 119, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !449, line: 84, size: 320, elements: !479)
!479 = !{!480, !481, !485, !3611, !3613}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !449, line: 85, baseType: !342, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !478, file: !449, line: 86, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!465, !346, !460, !85}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !478, file: !449, line: 88, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!465, !346, !489, !85}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !449, line: 175, size: 512, elements: !491)
!491 = !{!492, !493, !494, !495, !3602, !3606, !3607}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !490, file: !449, line: 176, baseType: !461, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !490, file: !449, line: 177, baseType: !470, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !490, file: !449, line: 178, baseType: !317, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !490, file: !449, line: 179, baseType: !496, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !501)
!501 = !{!502, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3596, !3597, !3598, !3599, !3600, !3601}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !500, file: !28, line: 473, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !505)
!505 = !{!506, !507, !508, !516, !517, !524, !525, !528, !529, !3374, !3375, !3376, !3377, !3378, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3418, !3421, !3422, !3423, !3432, !3433, !3434, !3435}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !504, file: !28, line: 642, baseType: !465, size: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !504, file: !28, line: 643, baseType: !393, size: 16, offset: 16)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !504, file: !28, line: 644, baseType: !509, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !510, line: 23, baseType: !511)
!510 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 21, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !511, file: !510, line: 22, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !324, line: 37, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !457, line: 49, baseType: !7)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !504, file: !28, line: 645, baseType: !323, size: 128, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !504, file: !28, line: 646, baseType: !518, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !510, line: 28, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 26, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !519, file: !510, line: 27, baseType: !522, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !324, line: 38, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !457, line: 50, baseType: !7)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !504, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !504, file: !28, line: 650, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !504, file: !28, line: 651, baseType: !526, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !504, file: !28, line: 654, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !533)
!533 = !{!534, !3199, !3212, !3216, !3220, !3224, !3228, !3232, !3236, !3240, !3244, !3245, !3249, !3253, !3290, !3319, !3323, !3329, !3333, !3337, !3341, !3345, !3349, !3355, !3359}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !532, file: !28, line: 1967, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !503, !538, !7}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !540, line: 82, size: 1536, elements: !541)
!540 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!541 = !{!542, !543, !553, !561, !562, !582, !583, !587, !600, !3183, !3184, !3185, !3186, !3191, !3192, !3193}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !539, file: !540, line: 84, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !539, file: !540, line: 85, baseType: !544, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !545, line: 275, baseType: !546)
!545 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !545, line: 275, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !546, file: !545, line: 275, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !545, line: 69, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !545, line: 64, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !550, file: !545, line: 65, baseType: !7, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !539, file: !540, line: 86, baseType: !554, size: 128, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !555, line: 38, size: 128, elements: !556)
!555 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!556 = !{!557, !559}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !555, line: 39, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !554, file: !555, line: 39, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !539, file: !540, line: 87, baseType: !538, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !539, file: !540, line: 88, baseType: !563, size: 128, offset: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !540, line: 49, size: 128, elements: !564)
!564 = !{!565, !579}
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !540, line: 50, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !540, line: 50, size: 64, elements: !567)
!567 = !{!568, !575}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !540, line: 51, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !566, file: !540, line: 51, size: 64, elements: !570)
!570 = !{!571, !574}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !569, file: !540, line: 52, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !382, line: 21, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !384, line: 27, baseType: !7)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !569, file: !540, line: 52, baseType: !572, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !566, file: !540, line: 54, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !382, line: 23, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !384, line: 31, baseType: !578)
!578 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !540, line: 56, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !539, file: !540, line: 89, baseType: !503, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !539, file: !540, line: 91, baseType: !584, size: 256, offset: 448)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !539, file: !540, line: 94, baseType: !588, size: 64, offset: 704)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !589, line: 25, size: 64, elements: !590)
!589 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !589, line: 26, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 26, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !592, file: !589, line: 28, baseType: !577, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !589, line: 30, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !589, line: 30, size: 64, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !589, line: 31, baseType: !353, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !589, line: 32, baseType: !85, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !539, file: !540, line: 95, baseType: !601, size: 64, offset: 768)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !540, line: 128, size: 1024, align: 512, elements: !604)
!604 = !{!605, !609, !610, !617, !623, !627, !631, !635, !636, !640, !644, !3173, !3177}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !603, file: !540, line: 129, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!85, !538, !7}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !603, file: !540, line: 130, baseType: !606, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !603, file: !540, line: 131, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!85, !614, !616}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !603, file: !540, line: 132, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!85, !614, !7, !342, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !603, file: !540, line: 134, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!85, !614}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !603, file: !540, line: 135, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!85, !538}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !603, file: !540, line: 136, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !538}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !603, file: !540, line: 137, baseType: !632, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !603, file: !540, line: 138, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !538, !503}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !603, file: !540, line: 139, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!423, !538, !423, !85}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !603, file: !540, line: 140, baseType: !645, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !3172}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !650, line: 70, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!651 = !{!652, !653, !3168, !3169}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !649, file: !650, line: 71, baseType: !538, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !649, file: !650, line: 72, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !656)
!656 = !{!657, !658, !661, !662, !663, !667, !716, !878, !918, !1008, !1012, !1013, !1014, !1015, !1016, !1025, !1026, !1027, !1028, !1033, !1037, !1038, !1041, !1044, !1047, !1050, !1051, !1052, !1093, !3099, !3100, !3101, !3102, !3103, !3104, !3107, !3109, !3116, !3117, !3118, !3119, !3120, !3135, !3136, !3137, !3138, !3139, !3142, !3143, !3144, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !655, file: !28, line: 1191, baseType: !323, size: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !655, file: !28, line: 1192, baseType: !659, size: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !324, line: 21, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !324, line: 18, baseType: !572)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !655, file: !28, line: 1193, baseType: !385, size: 8, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !655, file: !28, line: 1194, baseType: !473, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !655, file: !28, line: 1195, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !324, line: 52, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !457, line: 88, baseType: !666)
!666 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !655, file: !28, line: 1196, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !670)
!670 = !{!671, !672, !673, !680, !684, !688, !692, !693, !694, !704, !708, !709, !710, !712, !713, !714, !715}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !669, file: !28, line: 2367, baseType: !342, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !669, file: !28, line: 2368, baseType: !85, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !669, file: !28, line: 2376, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!85, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !679, line: 32, flags: DIFlagFwdDecl)
!679 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !669, file: !28, line: 2377, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !669, file: !28, line: 2378, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!538, !668, !85, !342, !317}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !669, file: !28, line: 2380, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !654}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !669, file: !28, line: 2381, baseType: !318, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !28, line: 2382, baseType: !668, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !669, file: !28, line: 2383, baseType: !695, size: 64, offset: 512)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !324, line: 194, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !695, file: !324, line: 195, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !324, line: 198, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !324, line: 199, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !699, file: !324, line: 199, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !669, file: !28, line: 2385, baseType: !705, offset: 576)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !706, line: 206, elements: !707)
!706 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!707 = !{}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !669, file: !28, line: 2386, baseType: !705, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !669, file: !28, line: 2387, baseType: !705, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !669, file: !28, line: 2388, baseType: !711, offset: 576)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, elements: !424)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !669, file: !28, line: 2390, baseType: !705, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !669, file: !28, line: 2391, baseType: !705, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !669, file: !28, line: 2392, baseType: !705, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !669, file: !28, line: 2393, baseType: !705, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !655, file: !28, line: 1197, baseType: !717, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !720)
!720 = !{!721, !725, !729, !730, !734, !740, !744, !745, !746, !750, !754, !758, !759, !760, !766, !771, !772, !779, !780, !781, !782, !786, !790, !859, !876, !877}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !719, file: !28, line: 2058, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!503, !654}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !719, file: !28, line: 2059, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !503}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !719, file: !28, line: 2060, baseType: !726, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !719, file: !28, line: 2062, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !503, !85}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !719, file: !28, line: 2063, baseType: !735, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!85, !503, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !719, file: !28, line: 2064, baseType: !741, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!85, !503}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !719, file: !28, line: 2065, baseType: !726, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !719, file: !28, line: 2066, baseType: !689, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !719, file: !28, line: 2067, baseType: !747, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!85, !654, !85}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !719, file: !28, line: 2068, baseType: !751, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!85, !654, !27}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !719, file: !28, line: 2069, baseType: !755, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!85, !654}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !719, file: !28, line: 2070, baseType: !751, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !719, file: !28, line: 2071, baseType: !755, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !719, file: !28, line: 2072, baseType: !761, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!85, !538, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !719, file: !28, line: 2073, baseType: !767, size: 64, offset: 896)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!85, !654, !770, !423}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !719, file: !28, line: 2074, baseType: !689, size: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !719, file: !28, line: 2076, baseType: !773, size: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!85, !776, !538}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !778, line: 66, flags: DIFlagFwdDecl)
!778 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!779 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !719, file: !28, line: 2077, baseType: !773, size: 64, offset: 1088)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !719, file: !28, line: 2078, baseType: !773, size: 64, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !719, file: !28, line: 2079, baseType: !773, size: 64, offset: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !719, file: !28, line: 2081, baseType: !783, size: 64, offset: 1280)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!455, !654, !85, !423, !470, !664}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !719, file: !28, line: 2082, baseType: !787, size: 64, offset: 1344)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!455, !654, !85, !342, !470, !664}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !719, file: !28, line: 2083, baseType: !791, size: 64, offset: 1408)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !503}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !823, !824, !825, !826, !842, !843, !844}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !796, file: !33, line: 297, baseType: !699, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !796, file: !33, line: 298, baseType: !323, size: 128, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !796, file: !33, line: 299, baseType: !323, size: 128, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !796, file: !33, line: 300, baseType: !323, size: 128, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !796, file: !33, line: 301, baseType: !803, size: 256, offset: 512)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !804, line: 66, size: 256, elements: !805)
!804 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!805 = !{!806, !815, !817, !822}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !803, file: !804, line: 67, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !808, line: 13, baseType: !809)
!808 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !324, line: 181, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 179, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !810, file: !324, line: 180, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !382, line: 22, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !384, line: 30, baseType: !666)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !803, file: !804, line: 68, baseType: !816, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !362, line: 23, baseType: !361)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !803, file: !804, line: 70, baseType: !818, size: 32, offset: 96)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !819, line: 15, size: 32, elements: !820)
!819 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !818, file: !819, line: 20, baseType: !373, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !803, file: !804, line: 72, baseType: !323, size: 128, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !796, file: !33, line: 302, baseType: !353, size: 32, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !796, file: !33, line: 303, baseType: !373, size: 32, offset: 800)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !796, file: !33, line: 304, baseType: !654, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !796, file: !33, line: 305, baseType: !827, size: 64, offset: 896)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !828)
!828 = !{!829, !841}
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !827, file: !33, line: 69, baseType: !830, size: 32)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !827, file: !33, line: 69, size: 32, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !830, file: !33, line: 70, baseType: !509, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !830, file: !33, line: 71, baseType: !518, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !830, file: !33, line: 72, baseType: !835, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !836, line: 24, baseType: !837)
!836 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !836, line: 22, size: 32, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !837, file: !836, line: 23, baseType: !840, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !836, line: 20, baseType: !515)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !827, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !796, file: !33, line: 306, baseType: !664, size: 64, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !796, file: !33, line: 307, baseType: !473, size: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !796, file: !33, line: 308, baseType: !845, size: 576, offset: 1088)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !846)
!846 = !{!847, !849, !850, !851, !852, !853, !854, !855, !858}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !845, file: !33, line: 206, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !666)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !845, file: !33, line: 207, baseType: !848, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !845, file: !33, line: 208, baseType: !848, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !845, file: !33, line: 209, baseType: !848, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !845, file: !33, line: 210, baseType: !848, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !845, file: !33, line: 211, baseType: !848, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !845, file: !33, line: 212, baseType: !848, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !845, file: !33, line: 213, baseType: !856, size: 64, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !857, line: 8, baseType: !814)
!857 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !845, file: !33, line: 214, baseType: !856, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !719, file: !28, line: 2085, baseType: !860, size: 64, offset: 1472)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!459, !654, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !865, line: 15, size: 256, elements: !866)
!865 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!866 = !{!867, !869, !870, !871, !872}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !864, file: !865, line: 16, baseType: !868, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !324, line: 154, baseType: !7)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !864, file: !865, line: 19, baseType: !85, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !864, file: !865, line: 26, baseType: !473, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !864, file: !865, line: 33, baseType: !473, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !864, file: !865, line: 36, baseType: !873, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !875, line: 33, flags: DIFlagFwdDecl)
!875 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!876 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !719, file: !28, line: 2087, baseType: !860, size: 64, offset: 1536)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !719, file: !28, line: 2089, baseType: !689, size: 64, offset: 1600)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !655, file: !28, line: 1198, baseType: !879, size: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !882)
!882 = !{!883, !887, !891, !895, !896, !897, !898, !899, !904, !909, !913}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !881, file: !33, line: 325, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!85, !795}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !881, file: !33, line: 326, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!795, !654, !85}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !881, file: !33, line: 327, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !795}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !881, file: !33, line: 328, baseType: !884, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !881, file: !33, line: 329, baseType: !884, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !881, file: !33, line: 330, baseType: !884, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !881, file: !33, line: 331, baseType: !747, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !881, file: !33, line: 334, baseType: !900, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!903, !503}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !881, file: !33, line: 335, baseType: !905, size: 64, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!85, !503, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !881, file: !33, line: 337, baseType: !910, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!85, !503, !903}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !881, file: !33, line: 339, baseType: !914, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!85, !654, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !655, file: !28, line: 1199, baseType: !919, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !922)
!922 = !{!923, !934, !935, !939, !940, !941, !956, !979, !983, !984, !1007}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !921, file: !33, line: 431, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!85, !654, !85, !85, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !930, line: 8, size: 128, elements: !931)
!930 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !929, file: !930, line: 9, baseType: !648, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !929, file: !930, line: 10, baseType: !538, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !921, file: !33, line: 432, baseType: !747, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !921, file: !33, line: 433, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!85, !654, !7}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !921, file: !33, line: 434, baseType: !936, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !921, file: !33, line: 435, baseType: !747, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !921, file: !33, line: 436, baseType: !942, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!85, !654, !85, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !946, file: !33, line: 418, baseType: !85, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !946, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !946, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !946, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !946, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !946, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !946, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !946, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !921, file: !33, line: 437, baseType: !957, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!85, !654, !827, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !961, file: !33, line: 346, baseType: !85, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !961, file: !33, line: 347, baseType: !576, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !961, file: !33, line: 348, baseType: !576, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !961, file: !33, line: 349, baseType: !576, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !961, file: !33, line: 350, baseType: !576, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !961, file: !33, line: 351, baseType: !576, size: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !961, file: !33, line: 352, baseType: !576, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !961, file: !33, line: 353, baseType: !813, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !961, file: !33, line: 355, baseType: !813, size: 64, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !961, file: !33, line: 356, baseType: !85, size: 32, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !961, file: !33, line: 357, baseType: !85, size: 32, offset: 608)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !961, file: !33, line: 358, baseType: !576, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !961, file: !33, line: 359, baseType: !576, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !961, file: !33, line: 360, baseType: !576, size: 64, offset: 768)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !961, file: !33, line: 361, baseType: !813, size: 64, offset: 832)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !961, file: !33, line: 362, baseType: !85, size: 32, offset: 896)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !921, file: !33, line: 438, baseType: !980, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!85, !654, !917, !960}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !921, file: !33, line: 440, baseType: !957, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !921, file: !33, line: 441, baseType: !985, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!85, !654, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !989, file: !33, line: 412, baseType: !7, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !989, file: !33, line: 413, baseType: !993, size: 1344, offset: 64)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 1344, elements: !424)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1006}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !33, line: 398, baseType: !7, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !994, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !994, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !994, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !994, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !994, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !994, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !994, file: !33, line: 406, baseType: !578, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !994, file: !33, line: 407, baseType: !1005, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !324, line: 132, baseType: !576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !994, file: !33, line: 408, baseType: !1005, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !921, file: !33, line: 442, baseType: !936, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !655, file: !28, line: 1200, baseType: !1009, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !655, file: !28, line: 1201, baseType: !473, size: 64, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !655, file: !28, line: 1202, baseType: !473, size: 64, offset: 704)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !655, file: !28, line: 1203, baseType: !473, size: 64, offset: 768)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !655, file: !28, line: 1204, baseType: !538, size: 64, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !655, file: !28, line: 1205, baseType: !1017, size: 320, offset: 896)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1018, line: 48, size: 320, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1019 = !{!1020, !1021, !1022, !1023, !1024}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1017, file: !1018, line: 49, baseType: !807, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1017, file: !1018, line: 55, baseType: !807, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1017, file: !1018, line: 57, baseType: !818, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1017, file: !1018, line: 59, baseType: !816, size: 32, offset: 160)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1017, file: !1018, line: 60, baseType: !323, size: 128, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !655, file: !28, line: 1206, baseType: !85, size: 32, offset: 1216)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !655, file: !28, line: 1207, baseType: !373, size: 32, offset: 1248)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !655, file: !28, line: 1209, baseType: !317, size: 64, offset: 1280)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !655, file: !28, line: 1211, baseType: !1029, size: 64, offset: 1344)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !655, file: !28, line: 1223, baseType: !1034, size: 64, offset: 1408)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !555, line: 34, size: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1034, file: !555, line: 35, baseType: !558, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !655, file: !28, line: 1224, baseType: !323, size: 128, offset: 1472)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !655, file: !28, line: 1225, baseType: !1039, size: 64, offset: 1600)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !655, file: !28, line: 1226, baseType: !1042, size: 64, offset: 1664)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !655, file: !28, line: 1227, baseType: !1045, size: 64, offset: 1728)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !655, file: !28, line: 1228, baseType: !1048, size: 64, offset: 1792)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !655, file: !28, line: 1229, baseType: !699, size: 128, offset: 1856)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !655, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !655, file: !28, line: 1231, baseType: !1053, size: 2496, offset: 2048)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1059, !1091}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !33, line: 522, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1053, file: !33, line: 523, baseType: !1017, size: 320, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1053, file: !33, line: 524, baseType: !1058, size: 192, offset: 384)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !424)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1053, file: !33, line: 525, baseType: !1060, size: 1728, offset: 576)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 1728, elements: !424)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1062)
!1062 = !{!1063, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1061, file: !33, line: 223, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1066)
!1066 = !{!1067, !1068, !1081, !1082}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1065, file: !33, line: 446, baseType: !85, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1065, file: !33, line: 447, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1071, file: !33, line: 313, baseType: !747, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1071, file: !33, line: 314, baseType: !747, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1071, file: !33, line: 315, baseType: !747, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1071, file: !33, line: 316, baseType: !747, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1071, file: !33, line: 317, baseType: !884, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1071, file: !33, line: 318, baseType: !884, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1071, file: !33, line: 319, baseType: !884, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1071, file: !33, line: 320, baseType: !914, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1065, file: !33, line: 448, baseType: !318, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1065, file: !33, line: 449, baseType: !1064, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1061, file: !33, line: 224, baseType: !85, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1061, file: !33, line: 226, baseType: !323, size: 128, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1061, file: !33, line: 227, baseType: !473, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1061, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1061, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1061, file: !33, line: 230, baseType: !848, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1061, file: !33, line: 231, baseType: !848, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1061, file: !33, line: 232, baseType: !317, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1053, file: !33, line: 526, baseType: !1092, size: 192, offset: 2304)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 192, elements: !424)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !655, file: !28, line: 1233, baseType: !1094, size: 2368, offset: 4544)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1094, file: !28, line: 1185, baseType: !393, size: 16)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1094, file: !28, line: 1186, baseType: !393, size: 16, offset: 16)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1094, file: !28, line: 1187, baseType: !1099, size: 2304, offset: 64)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 2304, elements: !424)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1101, line: 12, size: 768, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1102 = !{!1103, !1125, !1127, !3097, !3098}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1100, file: !1101, line: 13, baseType: !1104, size: 384)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1105, line: 17, size: 384, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1106 = !{!1107, !1108, !1109, !1116}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1104, file: !1105, line: 18, baseType: !85, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1104, file: !1105, line: 19, baseType: !85, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1104, file: !1105, line: 20, baseType: !1110, size: 192, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1111, line: 41, baseType: !1112)
!1111 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1111, line: 37, size: 192, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1112, file: !1111, line: 38, baseType: !353, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1112, file: !1111, line: 39, baseType: !323, size: 128, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1104, file: !1105, line: 22, baseType: !1117, size: 128, align: 64, offset: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !324, line: 232, size: 128, align: 64, elements: !1118)
!1118 = !{!1119, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !324, line: 233, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1117, file: !324, line: 234, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1120}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1100, file: !1101, line: 14, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1100, file: !1101, line: 15, baseType: !1128, size: 64, offset: 448)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1129, line: 16, size: 64, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1128, file: !1129, line: 17, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !778, line: 746, size: 58368, elements: !1134)
!1134 = !{!1135, !1143, !1144, !1145, !1151, !1152, !1153, !1154, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1232, !1243, !1338, !1342, !1345, !1376, !1377, !1378, !1379, !1390, !1392, !1393, !1394, !1395, !1396, !1397, !1408, !1409, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1426, !1427, !1434, !1435, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2197, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2212, !2213, !2214, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2256, !2262, !2263, !2264, !2265, !2266, !2270, !2273, !2280, !2285, !2288, !2291, !2294, !2298, !2438, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2478, !2479, !2480, !2489, !2497, !2498, !2499, !2500, !2501, !2506, !2507, !2508, !2511, !2512, !2515, !2518, !2521, !2529, !2532, !2533, !2619, !2620, !2621, !2622, !2623, !2629, !2630, !2631, !2632, !2635, !2636, !2639, !2642, !2643, !2646, !2647, !2648, !2651, !2652, !2653, !2654, !2655, !2656, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2688, !2689, !2755, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2767, !2839, !2841, !2842, !2843, !2844, !2845, !2857, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2874, !2875, !2876}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1133, file: !778, line: 752, baseType: !1136, size: 192)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1137, line: 56, size: 192, elements: !1138)
!1137 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1137, line: 57, baseType: !473, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1136, file: !1137, line: 58, baseType: !473, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1136, file: !1137, line: 59, baseType: !572, size: 32, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1136, file: !1137, line: 61, baseType: !572, size: 32, offset: 160)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1133, file: !778, line: 754, baseType: !7, size: 32, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1133, file: !778, line: 767, baseType: !317, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1133, file: !778, line: 768, baseType: !1146, size: 32, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1147, line: 113, baseType: !1148)
!1147 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1147, line: 111, size: 32, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1148, file: !1147, line: 112, baseType: !373, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !778, line: 770, baseType: !7, size: 32, offset: 352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1133, file: !778, line: 771, baseType: !7, size: 32, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1133, file: !778, line: 774, baseType: !85, size: 32, offset: 416)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1133, file: !778, line: 775, baseType: !1155, size: 128, offset: 448)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1156, line: 58, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1157 = !{!1158, !1164, !1169, !1170}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1155, file: !1156, line: 59, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1160, line: 60, size: 64, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1159, file: !1160, line: 61, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !1156, line: 60, baseType: !1165, size: 32, offset: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !1156, line: 60, size: 32, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1165, file: !1156, line: 61, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1165, file: !1156, line: 62, baseType: !373, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1155, file: !1156, line: 65, baseType: !391, size: 16, offset: 96)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1155, file: !1156, line: 65, baseType: !391, size: 16, offset: 112)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1133, file: !778, line: 776, baseType: !7, size: 32, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1133, file: !778, line: 777, baseType: !473, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1133, file: !778, line: 778, baseType: !1132, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1133, file: !778, line: 787, baseType: !85, size: 32, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1133, file: !778, line: 788, baseType: !85, size: 32, offset: 800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1133, file: !778, line: 790, baseType: !85, size: 32, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1133, file: !778, line: 792, baseType: !85, size: 32, offset: 864)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1133, file: !778, line: 793, baseType: !85, size: 32, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1133, file: !778, line: 794, baseType: !85, size: 32, offset: 928)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1133, file: !778, line: 795, baseType: !7, size: 32, offset: 960)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1133, file: !778, line: 797, baseType: !1182, size: 2048, offset: 1024)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !778, line: 551, size: 2048, elements: !1183)
!1183 = !{!1184, !1189, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1211, !1214, !1215, !1216}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1182, file: !778, line: 553, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !778, line: 411, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1185, file: !778, line: 412, baseType: !473, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1185, file: !778, line: 413, baseType: !572, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1182, file: !778, line: 554, baseType: !1190, size: 192, align: 64, offset: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1191, line: 5, size: 192, align: 64, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1192 = !{!1193, !1194, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1190, file: !1191, line: 6, baseType: !473, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1190, file: !1191, line: 7, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1190, file: !1191, line: 8, baseType: !1195, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1182, file: !778, line: 555, baseType: !576, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1182, file: !778, line: 556, baseType: !576, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1182, file: !778, line: 558, baseType: !323, size: 128, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1182, file: !778, line: 559, baseType: !7, size: 32, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1182, file: !778, line: 561, baseType: !576, size: 64, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1182, file: !778, line: 562, baseType: !576, size: 64, offset: 704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1182, file: !778, line: 563, baseType: !576, size: 64, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1182, file: !778, line: 564, baseType: !576, size: 64, offset: 832)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1182, file: !778, line: 565, baseType: !813, size: 64, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1182, file: !778, line: 566, baseType: !576, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1182, file: !778, line: 568, baseType: !576, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1182, file: !778, line: 571, baseType: !85, size: 32, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1182, file: !778, line: 572, baseType: !1210, size: 64, offset: 1152)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1182, file: !778, line: 574, baseType: !1212, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !778, line: 49, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1182, file: !778, line: 576, baseType: !1212, size: 64, offset: 1280)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1182, file: !778, line: 578, baseType: !473, size: 64, offset: 1344)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1182, file: !778, line: 588, baseType: !1217, size: 512, align: 512, offset: 1536)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !778, line: 497, size: 512, align: 512, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1217, file: !778, line: 498, baseType: !576, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1217, file: !778, line: 499, baseType: !576, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1217, file: !778, line: 500, baseType: !576, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1217, file: !778, line: 501, baseType: !572, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1217, file: !778, line: 502, baseType: !572, size: 32, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1217, file: !778, line: 503, baseType: !473, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1217, file: !778, line: 504, baseType: !473, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1217, file: !778, line: 505, baseType: !473, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1217, file: !778, line: 506, baseType: !1228, size: 64, align: 64, offset: 448)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !778, line: 445, size: 64, align: 64, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1228, file: !778, line: 446, baseType: !7, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1228, file: !778, line: 447, baseType: !7, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1133, file: !778, line: 798, baseType: !1233, size: 384, offset: 3072)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !778, line: 592, size: 384, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1233, file: !778, line: 593, baseType: !323, size: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1233, file: !778, line: 594, baseType: !473, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1233, file: !778, line: 595, baseType: !473, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1233, file: !778, line: 596, baseType: !7, size: 32, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1233, file: !778, line: 597, baseType: !393, size: 16, offset: 288)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1233, file: !778, line: 598, baseType: !393, size: 16, offset: 304)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1233, file: !778, line: 600, baseType: !1242, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1133, file: !778, line: 799, baseType: !1244, size: 1792, offset: 3456)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !778, line: 610, size: 1792, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1335, !1336}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1244, file: !778, line: 611, baseType: !1190, size: 192, align: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1244, file: !778, line: 618, baseType: !576, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1244, file: !778, line: 619, baseType: !576, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1244, file: !778, line: 620, baseType: !576, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1244, file: !778, line: 621, baseType: !576, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1244, file: !778, line: 622, baseType: !576, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1244, file: !778, line: 629, baseType: !813, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1244, file: !778, line: 630, baseType: !576, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !778, line: 631, baseType: !7, size: 32, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1244, file: !778, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1244, file: !778, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1244, file: !778, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1244, file: !778, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1244, file: !778, line: 662, baseType: !1260, size: 512, offset: 704)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1261)
!1261 = !{!1262, !1270, !1271, !1276, !1331, !1332, !1333, !1334}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1260, file: !39, line: 119, baseType: !1263, size: 256)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1264, line: 9, size: 256, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1263, file: !1264, line: 10, baseType: !1190, size: 192, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1263, file: !1264, line: 11, baseType: !1268, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1269, line: 29, baseType: !813)
!1269 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1260, file: !39, line: 120, baseType: !1268, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1260, file: !39, line: 121, baseType: !1272, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!38, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1260, file: !39, line: 122, baseType: !1277, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1279)
!1279 = !{!1280, !1305, !1306, !1309, !1314, !1315, !1326, !1330}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1278, file: !39, line: 160, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1282, file: !39, line: 216, baseType: !816, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1282, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1282, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1282, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1282, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1282, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1282, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1282, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1282, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1282, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1282, file: !39, line: 227, baseType: !393, size: 16, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1282, file: !39, line: 228, baseType: !393, size: 16, offset: 208)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1282, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1282, file: !39, line: 235, baseType: !1268, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1282, file: !39, line: 236, baseType: !1275, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1282, file: !39, line: 237, baseType: !1268, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1282, file: !39, line: 238, baseType: !1275, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1282, file: !39, line: 239, baseType: !1302, size: 4096, align: 512, offset: 512)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 4096, align: 512, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 8)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1278, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1278, file: !39, line: 162, baseType: !1307, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !324, line: 32, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !457, line: 96, baseType: !85)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1278, file: !39, line: 163, baseType: !1310, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !545, line: 274, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !545, line: 274, size: 32, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1311, file: !545, line: 274, baseType: !549, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1278, file: !39, line: 164, baseType: !1275, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1278, file: !39, line: 165, baseType: !1316, size: 128, offset: 256)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1264, line: 14, size: 128, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1316, file: !1264, line: 15, baseType: !1319, size: 128)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1191, line: 26, size: 128, elements: !1320)
!1320 = !{!1321, !1325}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1319, file: !1191, line: 27, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1191, line: 12, size: 64, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1322, file: !1191, line: 13, baseType: !1195, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1319, file: !1191, line: 28, baseType: !1195, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1278, file: !39, line: 166, baseType: !1327, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!1268}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1278, file: !39, line: 167, baseType: !1268, size: 64, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !39, line: 123, baseType: !381, size: 8, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1260, file: !39, line: 124, baseType: !381, size: 8, offset: 456)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1260, file: !39, line: 125, baseType: !381, size: 8, offset: 464)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1260, file: !39, line: 126, baseType: !381, size: 8, offset: 472)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1244, file: !778, line: 671, baseType: !1260, size: 512, offset: 1216)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1244, file: !778, line: 679, baseType: !1337, size: 64, offset: 1728)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1133, file: !778, line: 800, baseType: !1339, size: 64, offset: 5248)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !778, line: 800, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1133, file: !778, line: 809, baseType: !1343, size: 64, offset: 5312)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !778, line: 70, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1133, file: !778, line: 825, baseType: !1346, size: 2048, align: 512, offset: 5632)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !778, line: 509, size: 2048, align: 512, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1346, file: !778, line: 511, baseType: !576, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1346, file: !778, line: 512, baseType: !576, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1346, file: !778, line: 513, baseType: !576, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1346, file: !778, line: 514, baseType: !576, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1346, file: !778, line: 515, baseType: !576, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1346, file: !778, line: 516, baseType: !576, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1346, file: !778, line: 518, baseType: !576, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1346, file: !778, line: 519, baseType: !576, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1346, file: !778, line: 520, baseType: !813, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1346, file: !778, line: 522, baseType: !576, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1346, file: !778, line: 523, baseType: !576, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1346, file: !778, line: 524, baseType: !813, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1346, file: !778, line: 526, baseType: !813, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1346, file: !778, line: 527, baseType: !576, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1346, file: !778, line: 529, baseType: !576, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1346, file: !778, line: 530, baseType: !576, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1346, file: !778, line: 531, baseType: !576, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1346, file: !778, line: 532, baseType: !576, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1346, file: !778, line: 533, baseType: !576, size: 64, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1346, file: !778, line: 535, baseType: !576, size: 64, offset: 1216)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1346, file: !778, line: 536, baseType: !576, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1346, file: !778, line: 537, baseType: !576, size: 64, offset: 1344)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1346, file: !778, line: 538, baseType: !576, size: 64, offset: 1408)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1346, file: !778, line: 539, baseType: !576, size: 64, offset: 1472)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1346, file: !778, line: 540, baseType: !576, size: 64, offset: 1536)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1346, file: !778, line: 541, baseType: !576, size: 64, offset: 1600)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1346, file: !778, line: 542, baseType: !576, size: 64, offset: 1664)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1346, file: !778, line: 543, baseType: !576, size: 64, offset: 1728)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1133, file: !778, line: 833, baseType: !7, size: 32, offset: 7680)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1133, file: !778, line: 836, baseType: !7, size: 32, offset: 7712)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1133, file: !778, line: 837, baseType: !85, size: 32, offset: 7744)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1133, file: !778, line: 838, baseType: !1380, size: 64, offset: 7808)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1383, line: 19, baseType: !1384)
!1383 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1383, line: 19, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1384, file: !1383, line: 19, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 64, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 1)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1133, file: !778, line: 839, baseType: !1391, size: 64, offset: 7872)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1133, file: !778, line: 840, baseType: !1382, size: 64, offset: 7936)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1133, file: !778, line: 841, baseType: !317, size: 64, offset: 8000)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1133, file: !778, line: 843, baseType: !393, size: 16, offset: 8064)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1133, file: !778, line: 845, baseType: !393, size: 16, offset: 8080)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1133, file: !778, line: 848, baseType: !85, size: 32, offset: 8096)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1133, file: !778, line: 849, baseType: !1398, size: 32, offset: 8128)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !778, line: 718, size: 32, elements: !1399)
!1399 = !{!1400, !1407}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1398, file: !778, line: 724, baseType: !1401, size: 32)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !778, line: 719, size: 32, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1401, file: !778, line: 720, baseType: !381, size: 8)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1401, file: !778, line: 721, baseType: !381, size: 8, offset: 8)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1401, file: !778, line: 722, baseType: !381, size: 8, offset: 16)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1401, file: !778, line: 723, baseType: !381, size: 8, offset: 24)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1398, file: !778, line: 725, baseType: !572, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1133, file: !778, line: 850, baseType: !323, size: 128, offset: 8192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1133, file: !778, line: 851, baseType: !1410, size: 64, offset: 8320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !778, line: 60, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1133, file: !778, line: 855, baseType: !473, size: 64, offset: 8384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1133, file: !778, line: 856, baseType: !381, size: 8, offset: 8448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1133, file: !778, line: 857, baseType: !381, size: 8, offset: 8456)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1133, file: !778, line: 858, baseType: !85, size: 32, offset: 8480)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1133, file: !778, line: 859, baseType: !323, size: 128, offset: 8512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1133, file: !778, line: 860, baseType: !85, size: 32, offset: 8640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1133, file: !778, line: 861, baseType: !323, size: 128, offset: 8704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1133, file: !778, line: 873, baseType: !1420, size: 256, offset: 8832)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !778, line: 376, size: 256, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1420, file: !778, line: 381, baseType: !473, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1420, file: !778, line: 384, baseType: !578, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1420, file: !778, line: 389, baseType: !578, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1420, file: !778, line: 392, baseType: !578, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1133, file: !778, line: 875, baseType: !323, size: 128, offset: 9088)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1133, file: !778, line: 877, baseType: !1428, size: 320, offset: 9216)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1429, line: 86, size: 320, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1428, file: !1429, line: 87, baseType: !85, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1428, file: !1429, line: 88, baseType: !323, size: 128, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1428, file: !1429, line: 89, baseType: !323, size: 128, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1133, file: !778, line: 878, baseType: !1190, size: 192, align: 64, offset: 9536)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1133, file: !778, line: 881, baseType: !1436, size: 64, offset: 9728)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !875, line: 733, size: 10240, elements: !1438)
!1438 = !{!1439, !2111}
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !875, line: 734, baseType: !1440, size: 10240)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !875, line: 734, size: 10240, elements: !1441)
!1441 = !{!1442, !1446, !1459, !1975, !1976, !1977, !1978, !1979, !1980, !1987, !1988, !1989, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2028, !2030, !2033, !2080, !2081, !2082, !2085, !2086, !2087, !2090, !2091, !2092, !2098, !2099}
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !875, line: 739, baseType: !1443, size: 512, align: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1440, file: !875, line: 739, size: 512, align: 512, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1443, file: !875, line: 747, baseType: !373, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1440, file: !875, line: 750, baseType: !1447, size: 128, offset: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1448, line: 218, size: 128, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1449 = !{!1450, !1457, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1448, line: 219, baseType: !1451, size: 32)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !1448, line: 219, size: 32, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1451, file: !1448, line: 220, baseType: !353, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1451, file: !1448, line: 221, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1448, line: 197, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 197, elements: !707)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1447, file: !1448, line: 223, baseType: !7, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1447, file: !1448, line: 224, baseType: !317, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1440, file: !875, line: 752, baseType: !1460, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!473, !1463, !473, !473, !473, !473}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1465)
!1465 = !{!1466, !1472, !1473, !1475, !1476, !1477, !1478, !1479, !1531, !1726, !1735, !1736, !1737, !1965, !1966, !1967, !1968, !1970, !1971, !1974}
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !28, line: 995, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !28, line: 995, size: 128, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1467, file: !28, line: 996, baseType: !1159, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1467, file: !28, line: 997, baseType: !1117, size: 128, align: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1467, file: !28, line: 998, baseType: !7, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1464, file: !28, line: 1005, baseType: !353, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1464, file: !28, line: 1006, baseType: !1474, size: 32, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !324, line: 156, baseType: !7)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1464, file: !28, line: 1007, baseType: !807, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1464, file: !28, line: 1008, baseType: !803, size: 256, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1464, file: !28, line: 1009, baseType: !664, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1464, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1464, file: !28, line: 1011, baseType: !1480, size: 256, offset: 640)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1481)
!1481 = !{!1482, !1503, !1527, !1528, !1529, !1530}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1480, file: !28, line: 949, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1484, line: 34, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 25, size: 64, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1485, file: !1484, line: 26, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1489, line: 27, baseType: !1490)
!1489 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1489, line: 13, size: 64, elements: !1491)
!1491 = !{!1492, !1502}
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !1489, line: 14, baseType: !1493, size: 32)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1490, file: !1489, line: 14, size: 32, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1493, file: !1489, line: 15, baseType: !373, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1489, line: 16, baseType: !1497, size: 32)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !1489, line: 16, size: 32, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1497, file: !1489, line: 18, baseType: !381, size: 8)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1497, file: !1489, line: 19, baseType: !1501, size: 24, offset: 8)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 24, elements: !424)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1490, file: !1489, line: 26, baseType: !365, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1480, file: !28, line: 950, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1514, !1515, !1516, !1517}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1505, file: !13, line: 61, baseType: !1146, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1505, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !13, line: 63, baseType: !353, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1505, file: !13, line: 65, baseType: !1511, size: 256, offset: 128)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 256, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 4)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1505, file: !13, line: 66, baseType: !695, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1505, file: !13, line: 68, baseType: !1110, size: 192, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !13, line: 69, baseType: !1117, size: 128, align: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1505, file: !13, line: 70, baseType: !1518, offset: 768)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, elements: !1525)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1519, file: !13, line: 55, baseType: !85, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1519, file: !13, line: 56, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1525 = !{!1526}
!1526 = !DISubrange(count: -1)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1480, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1480, file: !28, line: 952, baseType: !509, size: 32, offset: 160)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1480, file: !28, line: 952, baseType: !509, size: 32, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1480, file: !28, line: 953, baseType: !85, size: 32, offset: 224)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1464, file: !28, line: 1012, baseType: !1532, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1535, line: 110, size: 1472, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1553, !1554, !1555, !1556, !1557, !1558, !1671, !1672, !1673, !1674, !1675, !1706, !1709, !1713, !1721}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1534, file: !1535, line: 111, baseType: !807, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1534, file: !1535, line: 112, baseType: !509, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1534, file: !1535, line: 113, baseType: !518, size: 32, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1534, file: !1535, line: 114, baseType: !509, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1534, file: !1535, line: 115, baseType: !518, size: 32, offset: 160)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1534, file: !1535, line: 116, baseType: !509, size: 32, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1534, file: !1535, line: 117, baseType: !518, size: 32, offset: 224)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1534, file: !1535, line: 118, baseType: !509, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1534, file: !1535, line: 119, baseType: !518, size: 32, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1534, file: !1535, line: 120, baseType: !7, size: 32, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1534, file: !1535, line: 121, baseType: !1548, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1549, line: 24, baseType: !1550)
!1549 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1549, line: 24, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1550, file: !1549, line: 24, baseType: !576, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1534, file: !1535, line: 122, baseType: !1548, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1534, file: !1535, line: 123, baseType: !1548, size: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1534, file: !1535, line: 124, baseType: !1548, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1534, file: !1535, line: 125, baseType: !1548, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1534, file: !1535, line: 127, baseType: !385, size: 8, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1534, file: !1535, line: 129, baseType: !1559, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1561, line: 195, size: 1728, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1562 = !{!1563, !1564, !1569, !1574, !1575, !1578, !1579, !1584, !1585, !1586, !1587, !1590, !1591, !1592, !1594, !1595, !1635, !1656}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1560, file: !1561, line: 196, baseType: !1146, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1560, file: !1561, line: 197, baseType: !1565, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1561, line: 28, baseType: !1566)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !324, line: 104, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !382, line: 20, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !384, line: 26, baseType: !85)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 198, baseType: !1570, size: 192, offset: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 198, size: 192, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1570, file: !1561, line: 199, baseType: !323, size: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1570, file: !1561, line: 200, baseType: !1190, size: 192, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1560, file: !1561, line: 205, baseType: !1017, size: 320, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1560, file: !1561, line: 206, baseType: !1576, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1561, line: 206, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1560, file: !1561, line: 207, baseType: !317, size: 64, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 208, baseType: !1580, size: 64, offset: 704)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 208, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1580, file: !1561, line: 209, baseType: !856, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1580, file: !1561, line: 210, baseType: !856, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1560, file: !1561, line: 212, baseType: !856, size: 64, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !1561, line: 213, baseType: !509, size: 32, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1560, file: !1561, line: 214, baseType: !518, size: 32, offset: 864)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1560, file: !1561, line: 215, baseType: !1588, size: 32, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1561, line: 31, baseType: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !324, line: 110, baseType: !572)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1560, file: !1561, line: 216, baseType: !393, size: 16, offset: 928)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1560, file: !1561, line: 217, baseType: !393, size: 16, offset: 944)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1560, file: !1561, line: 221, baseType: !1593, size: 16, offset: 960)
!1593 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !1561, line: 228, baseType: !473, size: 64, offset: 1024)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 245, baseType: !1596, size: 320, offset: 1088)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 245, size: 320, elements: !1597)
!1597 = !{!1598, !1627}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1596, file: !1561, line: 246, baseType: !1599, size: 320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1561, line: 114, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1614, !1617, !1626}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1599, file: !1561, line: 116, baseType: !473, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1561, line: 117, baseType: !1603, size: 64, offset: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1561, line: 117, size: 64, elements: !1604)
!1604 = !{!1605, !1613}
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1561, line: 118, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !1561, line: 118, size: 64, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1606, file: !1561, line: 120, baseType: !391, size: 16)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1606, file: !1561, line: 121, baseType: !1610, size: 48, offset: 16)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 48, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 6)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1603, file: !1561, line: 127, baseType: !473, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1599, file: !1561, line: 129, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1561, line: 102, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1599, file: !1561, line: 130, baseType: !1618, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1561, line: 108, size: 192, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1619, file: !1561, line: 109, baseType: !1117, size: 128, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1619, file: !1561, line: 110, baseType: !1146, size: 32, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1619, file: !1561, line: 111, baseType: !1624, size: 8, offset: 160)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !324, line: 35, baseType: !1625)
!1625 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1599, file: !1561, line: 131, baseType: !342, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1561, line: 247, baseType: !1628, size: 320)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1596, file: !1561, line: 247, size: 320, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1634}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1628, file: !1561, line: 248, baseType: !473, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1628, file: !1561, line: 249, baseType: !473, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1628, file: !1561, line: 250, baseType: !1615, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1628, file: !1561, line: 251, baseType: !1618, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1628, file: !1561, line: 252, baseType: !423, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 260, baseType: !1636, size: 256, offset: 1408)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 260, size: 256, elements: !1637)
!1637 = !{!1638, !1644}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1636, file: !1561, line: 261, baseType: !1639, size: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1561, line: 134, size: 256, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1639, file: !1561, line: 135, baseType: !317, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1639, file: !1561, line: 136, baseType: !1643, size: 256)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 256, elements: !1512)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1561, line: 262, baseType: !1645, size: 256)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1561, line: 262, size: 256, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1645, file: !1561, line: 264, baseType: !323, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1645, file: !1561, line: 265, baseType: !1649, size: 128, offset: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1650, line: 22, size: 128, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1651 = !{!1652, !1655}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1649, file: !1650, line: 23, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1650, line: 23, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1649, file: !1650, line: 24, baseType: !473, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1560, file: !1561, line: 280, baseType: !1657, size: 64, offset: 1664)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1561, line: 176, size: 192, elements: !1659)
!1659 = !{!1660, !1669, !1670}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1658, file: !1561, line: 177, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1561, line: 171, baseType: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!85, !1559, !1665, !1667, !1559}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1658, file: !1561, line: 178, baseType: !1559, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1658, file: !1561, line: 179, baseType: !1615, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1534, file: !1535, line: 130, baseType: !1559, size: 64, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1534, file: !1535, line: 131, baseType: !1559, size: 64, offset: 896)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1534, file: !1535, line: 132, baseType: !1559, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1534, file: !1535, line: 135, baseType: !317, size: 64, offset: 1024)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1534, file: !1535, line: 137, baseType: !1676, size: 64, offset: 1088)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1678, line: 14, size: 1088, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1679 = !{!1680, !1681, !1690, !1691, !1692, !1693, !1694, !1695}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1677, file: !1678, line: 15, baseType: !1146, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1677, file: !1678, line: 17, baseType: !1682, size: 320, offset: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1683, line: 22, size: 320, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1682, file: !1683, line: 23, baseType: !816, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1682, file: !1683, line: 24, baseType: !813, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1682, file: !1683, line: 26, baseType: !323, size: 128, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1682, file: !1683, line: 28, baseType: !1689, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1677, file: !1678, line: 19, baseType: !473, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1677, file: !1678, line: 20, baseType: !807, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1677, file: !1678, line: 23, baseType: !699, size: 128, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1677, file: !1678, line: 24, baseType: !509, size: 32, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1677, file: !1678, line: 29, baseType: !807, size: 64, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1677, file: !1678, line: 36, baseType: !1696, size: 320, offset: 768)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1697, line: 15, size: 320, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1696, file: !1697, line: 16, baseType: !816, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1696, file: !1697, line: 18, baseType: !85, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1696, file: !1697, line: 19, baseType: !85, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1696, file: !1697, line: 20, baseType: !85, size: 32, offset: 96)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1696, file: !1697, line: 21, baseType: !85, size: 32, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1696, file: !1697, line: 22, baseType: !473, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1697, line: 23, baseType: !473, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1534, file: !1535, line: 138, baseType: !1707, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !510, line: 18, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1534, file: !1535, line: 139, baseType: !1710, size: 64, offset: 1216)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1712, line: 16, flags: DIFlagFwdDecl)
!1712 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1534, file: !1535, line: 140, baseType: !1714, size: 64, offset: 1280)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1535, line: 25, size: 64, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1715, file: !1535, line: 26, baseType: !373, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1715, file: !1535, line: 27, baseType: !85, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1715, file: !1535, line: 28, baseType: !1720, offset: 64)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, elements: !1525)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !1535, line: 142, baseType: !1722, size: 128, offset: 1344)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !1535, line: 142, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1722, file: !1535, line: 143, baseType: !85, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1722, file: !1535, line: 144, baseType: !1117, size: 128, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1464, file: !28, line: 1013, baseType: !1727, size: 256, offset: 960)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1727, file: !28, line: 971, baseType: !473, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1727, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1727, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1727, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1727, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1727, file: !28, line: 976, baseType: !664, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1464, file: !28, line: 1014, baseType: !929, size: 128, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1464, file: !28, line: 1015, baseType: !503, size: 64, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1464, file: !28, line: 1016, baseType: !1738, size: 64, offset: 1408)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1741)
!1741 = !{!1742, !1743, !1747, !1752, !1756, !1784, !1785, !1791, !1804, !1821, !1825, !1826, !1887, !1888, !1892, !1897, !1898, !1902, !1906, !1912, !1913, !1917, !1918, !1924, !1928, !1932, !1938, !1942, !1946, !1950, !1954, !1955, !1961}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1740, file: !28, line: 1915, baseType: !318, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1740, file: !28, line: 1916, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!664, !1463, !664, !85}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1740, file: !28, line: 1917, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!455, !1463, !423, !470, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1740, file: !28, line: 1918, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!455, !1463, !342, !470, !1751}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1740, file: !28, line: 1919, baseType: !1757, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!455, !1760, !1782}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1769, !1770, !1771, !1772}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1761, file: !28, line: 374, baseType: !1463, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1761, file: !28, line: 375, baseType: !664, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1761, file: !28, line: 376, baseType: !1766, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1760, !459}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1761, file: !28, line: 377, baseType: !317, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1761, file: !28, line: 378, baseType: !85, size: 32, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1761, file: !28, line: 379, baseType: !391, size: 16, offset: 288)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !28, line: 380, baseType: !1773, size: 64, offset: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !28, line: 380, size: 64, elements: !1774)
!1774 = !{!1775, !1778}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1773, file: !28, line: 386, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1773, file: !28, line: 395, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!455, !317}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1740, file: !28, line: 1920, baseType: !1757, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1740, file: !28, line: 1921, baseType: !1786, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!85, !1760, !1789, !7}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1740, file: !28, line: 1923, baseType: !1792, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!85, !1463, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1797)
!1797 = !{!1798, !1803}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1796, file: !28, line: 1859, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1624, !1795, !342, !85, !664, !576, !7}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1796, file: !28, line: 1860, baseType: !664, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1740, file: !28, line: 1924, baseType: !1805, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!1808, !1463, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1809, line: 59, baseType: !7)
!1809 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1812, line: 37, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1813 = !{!1814, !1820}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1811, file: !1812, line: 38, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1812, line: 31, baseType: !1816)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1463, !1819, !1810}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1811, file: !1812, line: 39, baseType: !1808, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1740, file: !28, line: 1925, baseType: !1822, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!459, !1463, !7, !473}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1740, file: !28, line: 1926, baseType: !1822, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1740, file: !28, line: 1927, baseType: !1827, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!85, !1463, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !875, line: 625, size: 1344, elements: !1832)
!1832 = !{!1833, !1842, !1843, !1851, !1858, !1859, !1864, !1865, !1870, !1871, !1874, !1878, !1879, !1880, !1881, !1882, !1885}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !875, line: 628, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !875, line: 628, size: 128, elements: !1835)
!1835 = !{!1836, !1841}
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !875, line: 629, baseType: !1837, size: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !875, line: 629, size: 128, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1837, file: !875, line: 631, baseType: !473, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1837, file: !875, line: 632, baseType: !473, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1834, file: !875, line: 635, baseType: !1117, size: 128, align: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1831, file: !875, line: 639, baseType: !1436, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1831, file: !875, line: 640, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1845, line: 297, baseType: !1846)
!1845 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1845, line: 297, size: 64, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1846, file: !1845, line: 297, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1850, line: 19, baseType: !473)
!1850 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !875, line: 646, baseType: !1852, size: 64, offset: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !875, line: 646, size: 64, elements: !1853)
!1853 = !{!1854, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1852, file: !875, line: 647, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !875, line: 542, baseType: !473)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1852, file: !875, line: 648, baseType: !1856, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1831, file: !875, line: 666, baseType: !85, size: 32, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1831, file: !875, line: 667, baseType: !1860, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !875, line: 579, size: 320, elements: !1862)
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !875, line: 580, baseType: !1017, size: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1831, file: !875, line: 670, baseType: !1624, size: 8, offset: 448)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1831, file: !875, line: 681, baseType: !1866, size: 256, offset: 512)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !875, line: 678, size: 256, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1866, file: !875, line: 679, baseType: !1190, size: 192, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1866, file: !875, line: 680, baseType: !473, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1831, file: !875, line: 689, baseType: !323, size: 128, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1831, file: !875, line: 691, baseType: !1872, size: 64, offset: 896)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !875, line: 691, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1831, file: !875, line: 694, baseType: !1875, size: 64, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !875, line: 694, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1831, file: !875, line: 697, baseType: !473, size: 64, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1831, file: !875, line: 699, baseType: !1463, size: 64, offset: 1088)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1831, file: !875, line: 700, baseType: !317, size: 64, offset: 1152)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1831, file: !875, line: 711, baseType: !807, size: 64, offset: 1216)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1831, file: !875, line: 717, baseType: !1883, size: 64, offset: 1280)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !875, line: 717, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1831, file: !875, line: 722, baseType: !1886, offset: 1344)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !875, line: 570, elements: !707)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1740, file: !28, line: 1928, baseType: !473, size: 64, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1740, file: !28, line: 1929, baseType: !1889, size: 64, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!85, !503, !1463}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1740, file: !28, line: 1930, baseType: !1893, size: 64, offset: 896)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!85, !1463, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !317)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1740, file: !28, line: 1931, baseType: !1889, size: 64, offset: 960)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1740, file: !28, line: 1932, baseType: !1899, size: 64, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!85, !1463, !664, !664, !85}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1740, file: !28, line: 1933, baseType: !1903, size: 64, offset: 1088)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!85, !85, !1463, !85}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !28, line: 1934, baseType: !1907, size: 64, offset: 1152)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!85, !1463, !85, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1740, file: !28, line: 1935, baseType: !1460, size: 64, offset: 1216)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1740, file: !28, line: 1936, baseType: !1914, size: 64, offset: 1280)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!85, !85}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1740, file: !28, line: 1937, baseType: !1907, size: 64, offset: 1344)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1740, file: !28, line: 1938, baseType: !1919, size: 64, offset: 1408)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!455, !1922, !1463, !1751, !470, !7}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !778, line: 59, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1740, file: !28, line: 1939, baseType: !1925, size: 64, offset: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!455, !1463, !1751, !1922, !470, !7}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1740, file: !28, line: 1940, baseType: !1929, size: 64, offset: 1536)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1463}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1740, file: !28, line: 1941, baseType: !1933, size: 64, offset: 1600)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!85, !1463, !85, !1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1740, file: !28, line: 1942, baseType: !1939, size: 64, offset: 1664)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!459, !1463, !85, !664, !664}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1740, file: !28, line: 1944, baseType: !1943, size: 64, offset: 1728)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !776, !1463}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1740, file: !28, line: 1948, baseType: !1947, size: 64, offset: 1792)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!455, !1463, !664, !1463, !664, !470, !7}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1740, file: !28, line: 1950, baseType: !1951, size: 64, offset: 1856)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!664, !1463, !664, !1463, !664, !664, !7}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1740, file: !28, line: 1953, baseType: !1899, size: 64, offset: 1920)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1740, file: !28, line: 1954, baseType: !1956, size: 64, offset: 1984)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!85, !1959, !7}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1740, file: !28, line: 1955, baseType: !1962, size: 64, offset: 2048)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!85, !1959, !1789, !7}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1464, file: !28, line: 1018, baseType: !576, size: 64, offset: 1472)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1464, file: !28, line: 1020, baseType: !317, size: 64, offset: 1536)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1464, file: !28, line: 1023, baseType: !317, size: 64, offset: 1600)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1464, file: !28, line: 1027, baseType: !1969, size: 64, offset: 1664)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1464, file: !28, line: 1029, baseType: !499, size: 64, offset: 1728)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1464, file: !28, line: 1030, baseType: !1972, size: 32, offset: 1792)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1973, line: 8, baseType: !572)
!1973 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1464, file: !28, line: 1031, baseType: !1972, size: 32, offset: 1824)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1440, file: !875, line: 756, baseType: !473, size: 64, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1440, file: !875, line: 757, baseType: !473, size: 64, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1440, file: !875, line: 760, baseType: !473, size: 64, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1440, file: !875, line: 761, baseType: !473, size: 64, offset: 896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1440, file: !875, line: 763, baseType: !473, size: 64, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1440, file: !875, line: 764, baseType: !1981, size: 64, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1845, line: 299, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1845, line: 299, size: 64, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1983, file: !1845, line: 299, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1850, line: 18, baseType: !473)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1440, file: !875, line: 773, baseType: !373, size: 32, offset: 1088)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1440, file: !875, line: 785, baseType: !373, size: 32, offset: 1120)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1440, file: !875, line: 795, baseType: !1990, size: 64, offset: 1152)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !875, line: 726, size: 128, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1991, file: !875, line: 727, baseType: !576, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1991, file: !875, line: 728, baseType: !85, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1440, file: !875, line: 801, baseType: !473, size: 64, offset: 1216)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1440, file: !875, line: 804, baseType: !807, size: 64, offset: 1280)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1440, file: !875, line: 806, baseType: !85, size: 32, offset: 1344)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1440, file: !875, line: 808, baseType: !353, size: 32, offset: 1376)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1440, file: !875, line: 823, baseType: !1017, size: 320, offset: 1408)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1440, file: !875, line: 825, baseType: !323, size: 128, offset: 1728)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1440, file: !875, line: 845, baseType: !85, size: 32, offset: 1856)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1440, file: !875, line: 849, baseType: !473, size: 64, offset: 1920)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1440, file: !875, line: 850, baseType: !473, size: 64, offset: 1984)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1440, file: !875, line: 852, baseType: !473, size: 64, offset: 2048)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1440, file: !875, line: 853, baseType: !473, size: 64, offset: 2112)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1440, file: !875, line: 854, baseType: !809, size: 64, offset: 2176)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1440, file: !875, line: 855, baseType: !473, size: 64, offset: 2240)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1440, file: !875, line: 856, baseType: !473, size: 64, offset: 2304)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1440, file: !875, line: 857, baseType: !473, size: 64, offset: 2368)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1440, file: !875, line: 858, baseType: !473, size: 64, offset: 2432)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1440, file: !875, line: 865, baseType: !549, size: 32, offset: 2496)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1440, file: !875, line: 867, baseType: !353, size: 32, offset: 2528)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1440, file: !875, line: 869, baseType: !473, size: 64, offset: 2560)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1440, file: !875, line: 869, baseType: !473, size: 64, offset: 2624)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1440, file: !875, line: 869, baseType: !473, size: 64, offset: 2688)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1440, file: !875, line: 869, baseType: !473, size: 64, offset: 2752)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1440, file: !875, line: 870, baseType: !473, size: 64, offset: 2816)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1440, file: !875, line: 870, baseType: !473, size: 64, offset: 2880)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1440, file: !875, line: 870, baseType: !473, size: 64, offset: 2944)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1440, file: !875, line: 871, baseType: !473, size: 64, offset: 3008)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1440, file: !875, line: 871, baseType: !473, size: 64, offset: 3072)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1440, file: !875, line: 871, baseType: !473, size: 64, offset: 3136)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1440, file: !875, line: 871, baseType: !473, size: 64, offset: 3200)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1440, file: !875, line: 873, baseType: !2025, size: 3328, offset: 3264)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 3328, elements: !2026)
!2026 = !{!2027}
!2027 = !DISubrange(count: 52)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1440, file: !875, line: 875, baseType: !2029, size: 1280, offset: 6592)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1682, size: 1280, elements: !1512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1440, file: !875, line: 877, baseType: !2031, size: 64, offset: 7872)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !875, line: 877, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1440, file: !875, line: 880, baseType: !2034, size: 1088, offset: 7936)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2035, line: 72, baseType: !2036)
!2035 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2035, line: 23, size: 1088, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2045, !2046, !2047, !2048, !2075, !2076, !2077}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2036, file: !2035, line: 28, baseType: !576, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2036, file: !2035, line: 38, baseType: !809, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2036, file: !2035, line: 40, baseType: !473, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2036, file: !2035, line: 43, baseType: !1017, size: 320, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2036, file: !2035, line: 44, baseType: !2043, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2035, line: 44, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2035, line: 48, baseType: !473, size: 64, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !2035, line: 59, baseType: !803, size: 256, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2036, file: !2035, line: 60, baseType: !317, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2036, file: !2035, line: 61, baseType: !2049, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2052, line: 13, size: 1216, elements: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2051, file: !2052, line: 14, baseType: !317, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2051, file: !2052, line: 15, baseType: !473, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2051, file: !2052, line: 17, baseType: !473, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2051, file: !2052, line: 17, baseType: !473, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2051, file: !2052, line: 18, baseType: !473, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2051, file: !2052, line: 18, baseType: !473, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2051, file: !2052, line: 19, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2051, file: !2052, line: 21, baseType: !459, size: 64, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2051, file: !2052, line: 23, baseType: !459, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2051, file: !2052, line: 24, baseType: !459, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2051, file: !2052, line: 25, baseType: !459, size: 64, offset: 640)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2051, file: !2052, line: 26, baseType: !459, size: 64, offset: 704)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2051, file: !2052, line: 27, baseType: !459, size: 64, offset: 768)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2051, file: !2052, line: 28, baseType: !459, size: 64, offset: 832)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2051, file: !2052, line: 29, baseType: !459, size: 64, offset: 896)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2051, file: !2052, line: 30, baseType: !459, size: 64, offset: 960)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2051, file: !2052, line: 31, baseType: !459, size: 64, offset: 1024)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2051, file: !2052, line: 32, baseType: !459, size: 64, offset: 1088)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2051, file: !2052, line: 33, baseType: !459, size: 64, offset: 1152)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2036, file: !2035, line: 63, baseType: !373, size: 32, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2036, file: !2035, line: 69, baseType: !391, size: 16, offset: 1056)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2036, file: !2035, line: 70, baseType: !2078, size: 16, offset: 1072)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !382, line: 18, baseType: !2079)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !384, line: 23, baseType: !1593)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !875, line: 882, baseType: !473, size: 64, offset: 9024)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1440, file: !875, line: 885, baseType: !353, size: 32, offset: 9088)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1440, file: !875, line: 886, baseType: !2083, size: 64, offset: 9152)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !875, line: 732, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1440, file: !875, line: 901, baseType: !1707, size: 64, offset: 9216)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1440, file: !875, line: 904, baseType: !1463, size: 64, offset: 9280)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1440, file: !875, line: 906, baseType: !2088, size: 64, offset: 9344)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !875, line: 906, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1440, file: !875, line: 930, baseType: !373, size: 32, offset: 9408)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1440, file: !875, line: 933, baseType: !373, size: 32, offset: 9440)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1440, file: !875, line: 935, baseType: !2093, size: 64, offset: 9472)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !2094)
!2094 = !{!2095}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2093, file: !57, line: 104, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1440, file: !875, line: 940, baseType: !807, size: 64, offset: 9536)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1440, file: !875, line: 942, baseType: !2100, size: 256, offset: 9600)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2101, line: 98, size: 256, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2100, file: !2101, line: 99, baseType: !807, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2100, file: !2101, line: 100, baseType: !323, size: 128, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2100, file: !2101, line: 101, baseType: !2106, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2101, line: 21, baseType: !2107)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1437, file: !875, line: 986, baseType: !2112, offset: 10240)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, elements: !1525)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1133, file: !778, line: 882, baseType: !1436, size: 64, offset: 9792)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1133, file: !778, line: 884, baseType: !85, size: 32, offset: 9856)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1133, file: !778, line: 885, baseType: !85, size: 32, offset: 9888)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1133, file: !778, line: 886, baseType: !85, size: 32, offset: 9920)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1133, file: !778, line: 888, baseType: !85, size: 32, offset: 9952)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1133, file: !778, line: 890, baseType: !473, size: 64, offset: 9984)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1133, file: !778, line: 893, baseType: !7, size: 32, offset: 10048)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1133, file: !778, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1133, file: !778, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1133, file: !778, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1133, file: !778, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1133, file: !778, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1133, file: !778, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1133, file: !778, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1133, file: !778, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1133, file: !778, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1133, file: !778, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1133, file: !778, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1133, file: !778, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1133, file: !778, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1133, file: !778, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1133, file: !778, line: 969, baseType: !473, size: 64, offset: 10176)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1133, file: !778, line: 971, baseType: !2136, size: 448, offset: 10240)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2137)
!2137 = !{!2138, !2139, !2144}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2136, file: !44, line: 26, baseType: !473, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2136, file: !44, line: 27, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!459, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !44, line: 28, baseType: !2145, size: 320, offset: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2136, file: !44, line: 28, size: 320, elements: !2146)
!2146 = !{!2147, !2157, !2182}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2145, file: !44, line: 37, baseType: !2148, size: 320)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2145, file: !44, line: 30, size: 320, elements: !2149)
!2149 = !{!2150, !2152, !2153, !2154, !2155, !2156}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2148, file: !44, line: 31, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2148, file: !44, line: 32, baseType: !572, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !44, line: 33, baseType: !572, size: 32, offset: 96)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2148, file: !44, line: 34, baseType: !572, size: 32, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2148, file: !44, line: 35, baseType: !576, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2148, file: !44, line: 36, baseType: !2151, size: 64, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2145, file: !44, line: 47, baseType: !2158, size: 192)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2145, file: !44, line: 39, size: 192, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2181}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2158, file: !44, line: 40, baseType: !1307, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2158, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !44, line: 42, baseType: !2163, size: 64, offset: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2158, file: !44, line: 42, size: 64, elements: !2164)
!2164 = !{!2165, !2173}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2163, file: !44, line: 43, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2168, line: 7, size: 128, elements: !2169)
!2168 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2169 = !{!2170, !2172}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2167, file: !2168, line: 8, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !457, line: 93, baseType: !666)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2167, file: !2168, line: 9, baseType: !666, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2163, file: !44, line: 44, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2176, line: 7, size: 64, elements: !2177)
!2176 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2177 = !{!2178, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2175, file: !2176, line: 8, baseType: !2179, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2176, line: 5, baseType: !1567)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2175, file: !2176, line: 9, baseType: !1567, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2158, file: !44, line: 46, baseType: !576, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2145, file: !44, line: 55, baseType: !2183, size: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2145, file: !44, line: 49, size: 256, elements: !2184)
!2184 = !{!2185, !2193, !2194, !2195, !2196}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2183, file: !44, line: 50, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2188, line: 36, size: 64, elements: !2189)
!2188 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2189 = !{!2190, !2191, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2187, file: !2188, line: 37, baseType: !85, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2187, file: !2188, line: 38, baseType: !1593, size: 16, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2187, file: !2188, line: 39, baseType: !1593, size: 16, offset: 48)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2183, file: !44, line: 51, baseType: !85, size: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2183, file: !44, line: 52, baseType: !85, size: 32, offset: 96)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2183, file: !44, line: 53, baseType: !473, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2183, file: !44, line: 54, baseType: !473, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1133, file: !778, line: 973, baseType: !2198, size: 32, offset: 10688)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !324, line: 27, baseType: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !457, line: 28, baseType: !85)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1133, file: !778, line: 974, baseType: !2198, size: 32, offset: 10720)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1133, file: !778, line: 978, baseType: !473, size: 64, offset: 10752)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1133, file: !778, line: 987, baseType: !1132, size: 64, offset: 10816)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1133, file: !778, line: 990, baseType: !1132, size: 64, offset: 10880)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1133, file: !778, line: 995, baseType: !323, size: 128, offset: 10944)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1133, file: !778, line: 996, baseType: !323, size: 128, offset: 11072)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1133, file: !778, line: 997, baseType: !1132, size: 64, offset: 11200)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1133, file: !778, line: 1005, baseType: !323, size: 128, offset: 11264)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1133, file: !778, line: 1006, baseType: !323, size: 128, offset: 11392)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1133, file: !778, line: 1009, baseType: !1504, size: 64, offset: 11520)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1133, file: !778, line: 1010, baseType: !2211, size: 512, offset: 11584)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !1512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1133, file: !778, line: 1011, baseType: !323, size: 128, offset: 12096)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1133, file: !778, line: 1012, baseType: !323, size: 128, offset: 12224)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1133, file: !778, line: 1014, baseType: !2215, size: 64, offset: 12352)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2217, line: 26, size: 256, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2216, file: !2217, line: 27, baseType: !7, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2216, file: !2217, line: 28, baseType: !2221, size: 192, offset: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2222, line: 43, size: 192, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2221, file: !2222, line: 44, baseType: !816, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2221, file: !2222, line: 45, baseType: !323, size: 128, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1133, file: !778, line: 1017, baseType: !770, size: 64, offset: 12416)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1133, file: !778, line: 1020, baseType: !770, size: 64, offset: 12480)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1133, file: !778, line: 1023, baseType: !317, size: 64, offset: 12544)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1133, file: !778, line: 1025, baseType: !576, size: 64, offset: 12608)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1133, file: !778, line: 1026, baseType: !576, size: 64, offset: 12672)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1133, file: !778, line: 1031, baseType: !576, size: 64, offset: 12736)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1133, file: !778, line: 1032, baseType: !2233, size: 192, offset: 12800)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !778, line: 324, size: 192, elements: !2234)
!2234 = !{!2235, !2236, !2237}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2233, file: !778, line: 326, baseType: !576, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2233, file: !778, line: 327, baseType: !576, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2233, file: !778, line: 328, baseType: !816, size: 32, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1133, file: !778, line: 1041, baseType: !473, size: 64, offset: 12992)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1133, file: !778, line: 1042, baseType: !473, size: 64, offset: 13056)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1133, file: !778, line: 1045, baseType: !576, size: 64, offset: 13120)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1133, file: !778, line: 1048, baseType: !576, size: 64, offset: 13184)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1133, file: !778, line: 1051, baseType: !473, size: 64, offset: 13248)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1133, file: !778, line: 1052, baseType: !473, size: 64, offset: 13312)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1133, file: !778, line: 1055, baseType: !2245, size: 640, offset: 13376)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2246, line: 132, size: 640, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2247 = !{!2248, !2254, !2255}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2245, file: !2246, line: 133, baseType: !2249, size: 576)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2250, size: 576, elements: !424)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2246, line: 117, size: 192, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2250, file: !2246, line: 118, baseType: !576, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2250, file: !2246, line: 119, baseType: !1316, size: 128, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2245, file: !2246, line: 134, baseType: !7, size: 32, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2245, file: !2246, line: 135, baseType: !7, size: 32, offset: 608)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1133, file: !778, line: 1058, baseType: !2257, size: 448, offset: 14016)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2246, line: 144, size: 448, elements: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2257, file: !2246, line: 145, baseType: !1117, size: 128, align: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2257, file: !2246, line: 146, baseType: !803, size: 256, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2257, file: !2246, line: 147, baseType: !7, size: 32, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1133, file: !778, line: 1064, baseType: !1532, size: 64, offset: 14464)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1133, file: !778, line: 1067, baseType: !1532, size: 64, offset: 14528)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1133, file: !778, line: 1070, baseType: !1532, size: 64, offset: 14592)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1133, file: !778, line: 1074, baseType: !1559, size: 64, offset: 14656)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1133, file: !778, line: 1084, baseType: !2267, size: 128, offset: 14720)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: 16)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1133, file: !778, line: 1086, baseType: !2271, size: 64, offset: 14848)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !778, line: 55, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1133, file: !778, line: 1089, baseType: !2274, size: 64, offset: 14912)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2275, line: 12, size: 64, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2276 = !{!2277}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2274, file: !2275, line: 13, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2275, line: 8, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1133, file: !778, line: 1090, baseType: !2281, size: 128, offset: 14976)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2282, line: 13, size: 128, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2281, file: !2282, line: 14, baseType: !323, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1133, file: !778, line: 1097, baseType: !2286, size: 64, offset: 15104)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !778, line: 50, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1133, file: !778, line: 1100, baseType: !2289, size: 64, offset: 15168)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !778, line: 1100, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1133, file: !778, line: 1103, baseType: !2292, size: 64, offset: 15232)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !778, line: 53, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1133, file: !778, line: 1107, baseType: !2295, size: 64, offset: 15296)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2297, line: 35, flags: DIFlagFwdDecl)
!2297 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1133, file: !778, line: 1110, baseType: !2299, size: 64, offset: 15360)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2301, line: 93, size: 8768, elements: !2302)
!2301 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2352, !2361, !2362, !2364, !2365, !2366, !2369, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2407, !2408, !2415, !2425, !2428, !2429, !2432, !2433, !2434, !2435, !2436, !2437}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2300, file: !2301, line: 94, baseType: !1146, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2300, file: !2301, line: 95, baseType: !373, size: 32, offset: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2300, file: !2301, line: 96, baseType: !85, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2300, file: !2301, line: 97, baseType: !85, size: 32, offset: 96)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2300, file: !2301, line: 98, baseType: !323, size: 128, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2300, file: !2301, line: 100, baseType: !1110, size: 192, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2300, file: !2301, line: 103, baseType: !1132, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2300, file: !2301, line: 106, baseType: !2311, size: 192, offset: 512)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1712, line: 32, size: 192, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2311, file: !1712, line: 33, baseType: !323, size: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2311, file: !1712, line: 34, baseType: !2315, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2316, line: 25, baseType: !2317)
!2316 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2316, line: 23, size: 64, elements: !2318)
!2318 = !{!2319}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2317, file: !2316, line: 24, baseType: !1387, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2300, file: !2301, line: 109, baseType: !695, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2300, file: !2301, line: 112, baseType: !85, size: 32, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2300, file: !2301, line: 114, baseType: !85, size: 32, offset: 800)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2300, file: !2301, line: 115, baseType: !1132, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2300, file: !2301, line: 118, baseType: !85, size: 32, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2300, file: !2301, line: 119, baseType: !7, size: 32, offset: 928)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2300, file: !2301, line: 121, baseType: !2327, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2301, line: 80, size: 448, elements: !2329)
!2329 = !{!2330, !2331, !2337}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2328, file: !2301, line: 81, baseType: !373, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2328, file: !2301, line: 82, baseType: !2332, size: 128, offset: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2301, line: 75, size: 128, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2332, file: !2301, line: 76, baseType: !1132, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2332, file: !2301, line: 77, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2328, file: !2301, line: 83, baseType: !2216, size: 256, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2300, file: !2301, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2300, file: !2301, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2300, file: !2301, line: 138, baseType: !7, size: 32, offset: 1056)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2300, file: !2301, line: 139, baseType: !323, size: 128, offset: 1088)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2300, file: !2301, line: 142, baseType: !1260, size: 512, offset: 1216)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2300, file: !2301, line: 143, baseType: !1268, size: 64, offset: 1728)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2300, file: !2301, line: 150, baseType: !2345, size: 256, offset: 1792)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2346, size: 256, elements: !2350)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2301, line: 38, size: 128, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2346, file: !2301, line: 39, baseType: !576, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2346, file: !2301, line: 40, baseType: !576, size: 64, offset: 64)
!2350 = !{!2351}
!2351 = !DISubrange(count: 2)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2300, file: !2301, line: 156, baseType: !2353, size: 192, offset: 2048)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2301, line: 66, size: 192, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2353, file: !2301, line: 67, baseType: !2356, size: 192)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2301, line: 47, size: 192, elements: !2357)
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2356, file: !2301, line: 48, baseType: !809, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2356, file: !2301, line: 49, baseType: !809, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2356, file: !2301, line: 50, baseType: !809, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2300, file: !2301, line: 160, baseType: !2245, size: 640, offset: 2240)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2300, file: !2301, line: 163, baseType: !2363, size: 256, offset: 2880)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 256, elements: !1512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2300, file: !2301, line: 169, baseType: !1504, size: 64, offset: 3136)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2300, file: !2301, line: 172, baseType: !85, size: 32, offset: 3200)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2300, file: !2301, line: 174, baseType: !2367, size: 64, offset: 3264)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2301, line: 174, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2300, file: !2301, line: 185, baseType: !2370, size: 64, offset: 3328)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !545, line: 860, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 853, size: 64, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2371, file: !545, line: 858, baseType: !544, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2371, file: !545, line: 859, baseType: !353, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2300, file: !2301, line: 186, baseType: !576, size: 64, offset: 3392)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2300, file: !2301, line: 186, baseType: !576, size: 64, offset: 3456)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2300, file: !2301, line: 186, baseType: !576, size: 64, offset: 3520)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2300, file: !2301, line: 186, baseType: !576, size: 64, offset: 3584)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2300, file: !2301, line: 187, baseType: !576, size: 64, offset: 3648)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2300, file: !2301, line: 188, baseType: !576, size: 64, offset: 3712)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2300, file: !2301, line: 189, baseType: !2233, size: 192, offset: 3776)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2300, file: !2301, line: 190, baseType: !473, size: 64, offset: 3968)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2300, file: !2301, line: 190, baseType: !473, size: 64, offset: 4032)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2300, file: !2301, line: 190, baseType: !473, size: 64, offset: 4096)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2300, file: !2301, line: 190, baseType: !473, size: 64, offset: 4160)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2300, file: !2301, line: 191, baseType: !473, size: 64, offset: 4224)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2300, file: !2301, line: 191, baseType: !473, size: 64, offset: 4288)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2300, file: !2301, line: 191, baseType: !473, size: 64, offset: 4352)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2300, file: !2301, line: 191, baseType: !473, size: 64, offset: 4416)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2300, file: !2301, line: 192, baseType: !473, size: 64, offset: 4480)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2300, file: !2301, line: 192, baseType: !473, size: 64, offset: 4544)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2300, file: !2301, line: 192, baseType: !473, size: 64, offset: 4608)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2300, file: !2301, line: 192, baseType: !473, size: 64, offset: 4672)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2300, file: !2301, line: 193, baseType: !473, size: 64, offset: 4736)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2300, file: !2301, line: 193, baseType: !473, size: 64, offset: 4800)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2300, file: !2301, line: 194, baseType: !2397, size: 448, offset: 4864)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2398, line: 12, size: 448, elements: !2399)
!2398 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2397, file: !2398, line: 15, baseType: !576, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2397, file: !2398, line: 17, baseType: !576, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2397, file: !2398, line: 19, baseType: !576, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2397, file: !2398, line: 21, baseType: !576, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2397, file: !2398, line: 29, baseType: !576, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2397, file: !2398, line: 35, baseType: !576, size: 64, offset: 320)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2397, file: !2398, line: 44, baseType: !576, size: 64, offset: 384)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2300, file: !2301, line: 202, baseType: !578, size: 64, offset: 5312)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2300, file: !2301, line: 213, baseType: !2409, size: 2048, offset: 5376)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2410, size: 2048, elements: !2268)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2411, line: 43, size: 128, elements: !2412)
!2411 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2410, file: !2411, line: 44, baseType: !472, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2410, file: !2411, line: 45, baseType: !472, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2300, file: !2301, line: 216, baseType: !2416, size: 448, offset: 7424)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2301, line: 30, size: 448, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2416, file: !2301, line: 31, baseType: !85, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2416, file: !2301, line: 32, baseType: !459, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2416, file: !2301, line: 33, baseType: !473, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2416, file: !2301, line: 34, baseType: !576, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2416, file: !2301, line: 34, baseType: !576, size: 64, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2416, file: !2301, line: 35, baseType: !473, size: 64, offset: 320)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2416, file: !2301, line: 35, baseType: !473, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2300, file: !2301, line: 219, baseType: !2426, size: 64, offset: 7872)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2301, line: 219, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2300, file: !2301, line: 222, baseType: !7, size: 32, offset: 7936)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2300, file: !2301, line: 223, baseType: !2430, size: 64, offset: 8000)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2301, line: 223, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2300, file: !2301, line: 230, baseType: !1624, size: 8, offset: 8064)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2300, file: !2301, line: 231, baseType: !1593, size: 16, offset: 8080)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2300, file: !2301, line: 232, baseType: !1593, size: 16, offset: 8096)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2300, file: !2301, line: 234, baseType: !1436, size: 64, offset: 8128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2300, file: !2301, line: 237, baseType: !803, size: 256, offset: 8192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2300, file: !2301, line: 243, baseType: !1017, size: 320, offset: 8448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1133, file: !778, line: 1111, baseType: !2439, size: 64, offset: 15424)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2301, line: 20, size: 16640, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2440, file: !2301, line: 21, baseType: !353, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2440, file: !2301, line: 22, baseType: !1146, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2440, file: !2301, line: 23, baseType: !1110, size: 192, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2440, file: !2301, line: 24, baseType: !2446, size: 16384, offset: 256)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 16384, elements: !428)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1712, line: 51, size: 256, elements: !2448)
!2448 = !{!2449}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2447, file: !1712, line: 52, baseType: !2450, size: 256)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1712, line: 37, size: 256, elements: !2451)
!2451 = !{!2452, !2459, !2460, !2466}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2450, file: !1712, line: 39, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2454, line: 83, baseType: !2455)
!2454 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2454, line: 82, baseType: !2457)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !85}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2450, file: !1712, line: 40, baseType: !473, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2450, file: !1712, line: 46, baseType: !2461, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2454, line: 86, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2454, line: 85, baseType: !2464)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2450, file: !1712, line: 48, baseType: !2315, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1133, file: !778, line: 1112, baseType: !2315, size: 64, offset: 15488)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1133, file: !778, line: 1113, baseType: !2315, size: 64, offset: 15552)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1133, file: !778, line: 1115, baseType: !2315, size: 64, offset: 15616)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1133, file: !778, line: 1116, baseType: !2311, size: 192, offset: 15680)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1133, file: !778, line: 1117, baseType: !473, size: 64, offset: 15872)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1133, file: !778, line: 1118, baseType: !470, size: 64, offset: 15936)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1133, file: !778, line: 1119, baseType: !7, size: 32, offset: 16000)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1133, file: !778, line: 1121, baseType: !1120, size: 64, offset: 16064)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1133, file: !778, line: 1125, baseType: !2476, size: 64, offset: 16128)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !778, line: 43, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1133, file: !778, line: 1127, baseType: !509, size: 32, offset: 16192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1133, file: !778, line: 1128, baseType: !7, size: 32, offset: 16224)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1133, file: !778, line: 1130, baseType: !2481, size: 128, offset: 16256)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2482, line: 37, size: 128, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2481, file: !2482, line: 38, baseType: !85, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2481, file: !2482, line: 39, baseType: !373, size: 32, offset: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2481, file: !2482, line: 40, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2482, line: 24, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1133, file: !778, line: 1131, baseType: !2490, size: 256, offset: 16384)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2491, line: 12, size: 256, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2492 = !{!2493, !2494, !2495, !2496}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2490, file: !2491, line: 13, baseType: !423, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2490, file: !2491, line: 14, baseType: !473, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2490, file: !2491, line: 15, baseType: !473, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2490, file: !2491, line: 16, baseType: !1624, size: 8, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1133, file: !778, line: 1134, baseType: !576, size: 64, offset: 16640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1133, file: !778, line: 1135, baseType: !576, size: 64, offset: 16704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1133, file: !778, line: 1138, baseType: !353, size: 32, offset: 16768)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1133, file: !778, line: 1141, baseType: !816, size: 32, offset: 16800)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1133, file: !778, line: 1143, baseType: !2502, size: 64, offset: 16832)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !778, line: 735, size: 64, elements: !2503)
!2503 = !{!2504}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2502, file: !778, line: 736, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1133, file: !778, line: 1147, baseType: !1319, size: 128, offset: 16896)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1133, file: !778, line: 1149, baseType: !1132, size: 64, offset: 17024)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1133, file: !778, line: 1151, baseType: !2509, size: 64, offset: 17088)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !778, line: 1151, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1133, file: !778, line: 1188, baseType: !317, size: 64, offset: 17152)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1133, file: !778, line: 1191, baseType: !2513, size: 64, offset: 17216)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !778, line: 44, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1133, file: !778, line: 1194, baseType: !2516, size: 64, offset: 17280)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !778, line: 45, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1133, file: !778, line: 1197, baseType: !2519, size: 64, offset: 17344)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !778, line: 61, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1133, file: !778, line: 1199, baseType: !2522, size: 64, offset: 17408)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2524, line: 99, size: 128, elements: !2525)
!2524 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2525 = !{!2526, !2527, !2528}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2523, file: !2524, line: 100, baseType: !807, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2523, file: !2524, line: 101, baseType: !373, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2523, file: !2524, line: 103, baseType: !393, size: 16, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1133, file: !778, line: 1202, baseType: !2530, size: 64, offset: 17472)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !778, line: 48, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1133, file: !778, line: 1205, baseType: !473, size: 64, offset: 17536)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1133, file: !778, line: 1206, baseType: !2534, size: 64, offset: 17600)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1712, line: 14, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1712, line: 12, size: 384, elements: !2537)
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !1712, line: 13, baseType: !2539, size: 384)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !1712, line: 13, size: 384, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2539, file: !1712, line: 13, baseType: !85, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2539, file: !1712, line: 13, baseType: !85, size: 32, offset: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2539, file: !1712, line: 13, baseType: !85, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2539, file: !1712, line: 13, baseType: !2545, size: 256, offset: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2546, line: 37, size: 256, elements: !2547)
!2546 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2547 = !{!2548, !2553, !2566, !2572, !2581, !2608, !2613}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2545, file: !2546, line: 42, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 39, size: 64, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2549, file: !2546, line: 40, baseType: !2199, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2549, file: !2546, line: 41, baseType: !515, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2545, file: !2546, line: 50, baseType: !2554, size: 192)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 45, size: 192, elements: !2555)
!2555 = !{!2556, !2558, !2559, !2565}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2554, file: !2546, line: 46, baseType: !2557, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !457, line: 95, baseType: !85)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2554, file: !2546, line: 47, baseType: !85, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2554, file: !2546, line: 48, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2546, line: 11, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2546, line: 8, size: 64, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2561, file: !2546, line: 9, baseType: !85, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2561, file: !2546, line: 10, baseType: !317, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2554, file: !2546, line: 49, baseType: !85, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2545, file: !2546, line: 57, baseType: !2567, size: 128)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 53, size: 128, elements: !2568)
!2568 = !{!2569, !2570, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2567, file: !2546, line: 54, baseType: !2199, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2567, file: !2546, line: 55, baseType: !515, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2567, file: !2546, line: 56, baseType: !2560, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2545, file: !2546, line: 66, baseType: !2573, size: 256)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 60, size: 256, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2580}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2573, file: !2546, line: 61, baseType: !2199, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2573, file: !2546, line: 62, baseType: !515, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2573, file: !2546, line: 63, baseType: !85, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2573, file: !2546, line: 64, baseType: !2579, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !457, line: 94, baseType: !458)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2573, file: !2546, line: 65, baseType: !2579, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2545, file: !2546, line: 105, baseType: !2582, size: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 69, size: 256, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2582, file: !2546, line: 70, baseType: !317, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2582, file: !2546, line: 79, baseType: !2586, size: 192, offset: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2582, file: !2546, line: 79, size: 192, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2597, !2602}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2586, file: !2546, line: 81, baseType: !85, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2586, file: !2546, line: 86, baseType: !1593, size: 16)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2586, file: !2546, line: 92, baseType: !2591, size: 192)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2546, line: 88, size: 192, elements: !2592)
!2592 = !{!2593, !2595, !2596}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2591, file: !2546, line: 89, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 64, elements: !1303)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2591, file: !2546, line: 90, baseType: !317, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2591, file: !2546, line: 91, baseType: !317, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2586, file: !2546, line: 97, baseType: !2598, size: 96)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2546, line: 94, size: 96, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2598, file: !2546, line: 95, baseType: !2594, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2598, file: !2546, line: 96, baseType: !573, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2586, file: !2546, line: 103, baseType: !2603, size: 128)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2546, line: 99, size: 128, elements: !2604)
!2604 = !{!2605, !2606, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2603, file: !2546, line: 100, baseType: !473, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2603, file: !2546, line: 101, baseType: !573, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2603, file: !2546, line: 102, baseType: !573, size: 32, offset: 96)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2545, file: !2546, line: 111, baseType: !2609, size: 128)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 108, size: 128, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2609, file: !2546, line: 109, baseType: !459, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2609, file: !2546, line: 110, baseType: !85, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2545, file: !2546, line: 118, baseType: !2614, size: 128)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 114, size: 128, elements: !2615)
!2615 = !{!2616, !2617, !2618}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2614, file: !2546, line: 115, baseType: !317, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2614, file: !2546, line: 116, baseType: !85, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2614, file: !2546, line: 117, baseType: !7, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1133, file: !778, line: 1208, baseType: !2397, size: 448, offset: 17664)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1133, file: !778, line: 1215, baseType: !576, size: 64, offset: 18112)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1133, file: !778, line: 1217, baseType: !576, size: 64, offset: 18176)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1133, file: !778, line: 1219, baseType: !576, size: 64, offset: 18240)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1133, file: !778, line: 1223, baseType: !2624, size: 64, offset: 18304)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2625, line: 99, baseType: !2626)
!2625 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2625, line: 99, size: 64, elements: !2627)
!2627 = !{!2628}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2626, file: !2625, line: 99, baseType: !1387, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1133, file: !778, line: 1225, baseType: !544, size: 32, offset: 18368)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1133, file: !778, line: 1226, baseType: !85, size: 32, offset: 18400)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1133, file: !778, line: 1227, baseType: !85, size: 32, offset: 18432)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1133, file: !778, line: 1231, baseType: !2633, size: 64, offset: 18496)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !778, line: 1231, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1133, file: !778, line: 1233, baseType: !323, size: 128, offset: 18560)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1133, file: !778, line: 1240, baseType: !2637, size: 64, offset: 18688)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !778, line: 62, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1133, file: !778, line: 1242, baseType: !2640, size: 64, offset: 18752)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !778, line: 1242, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1133, file: !778, line: 1244, baseType: !323, size: 128, offset: 18816)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1133, file: !778, line: 1245, baseType: !2644, size: 64, offset: 18944)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !778, line: 51, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1133, file: !778, line: 1246, baseType: !803, size: 256, offset: 19008)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1133, file: !778, line: 1247, baseType: !7, size: 32, offset: 19264)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1133, file: !778, line: 1250, baseType: !2649, size: 64, offset: 19328)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !778, line: 57, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1133, file: !778, line: 1251, baseType: !803, size: 256, offset: 19392)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1133, file: !778, line: 1252, baseType: !323, size: 128, offset: 19648)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1133, file: !778, line: 1259, baseType: !1883, size: 64, offset: 19776)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1133, file: !778, line: 1260, baseType: !1593, size: 16, offset: 19840)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1133, file: !778, line: 1261, baseType: !1593, size: 16, offset: 19856)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1133, file: !778, line: 1314, baseType: !2657, size: 64, offset: 19904)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2659, line: 62, size: 256, align: 256, elements: !2660)
!2659 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666, !2667}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2658, file: !2659, line: 75, baseType: !573, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2658, file: !2659, line: 90, baseType: !573, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2658, file: !2659, line: 112, baseType: !577, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2658, file: !2659, line: 132, baseType: !573, size: 32, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2658, file: !2659, line: 140, baseType: !573, size: 32, offset: 160)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2658, file: !2659, line: 149, baseType: !573, size: 32, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2658, file: !2659, line: 154, baseType: !2668, offset: 224)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, elements: !1525)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1133, file: !778, line: 1315, baseType: !572, size: 32, offset: 19968)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1133, file: !778, line: 1316, baseType: !572, size: 32, offset: 20000)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1133, file: !778, line: 1321, baseType: !473, size: 64, offset: 20032)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1133, file: !778, line: 1325, baseType: !85, size: 32, offset: 20096)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1133, file: !778, line: 1326, baseType: !85, size: 32, offset: 20128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1133, file: !778, line: 1327, baseType: !85, size: 32, offset: 20160)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1133, file: !778, line: 1328, baseType: !85, size: 32, offset: 20192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1133, file: !778, line: 1329, baseType: !1117, size: 128, align: 64, offset: 20224)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1133, file: !778, line: 1332, baseType: !2678, size: 128, offset: 20352)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2679, line: 51, size: 128, elements: !2680)
!2679 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2680 = !{!2681, !2686, !2687}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2678, file: !2679, line: 60, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2683, line: 7, size: 64, elements: !2684)
!2683 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2682, file: !2683, line: 12, baseType: !1384, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2678, file: !2679, line: 63, baseType: !1624, size: 8, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2678, file: !2679, line: 70, baseType: !1624, size: 8, offset: 72)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1133, file: !778, line: 1335, baseType: !1922, size: 64, offset: 20480)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1133, file: !778, line: 1337, baseType: !2690, size: 128, offset: 20544)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2679, line: 39, size: 128, elements: !2691)
!2691 = !{!2692, !2753, !2754}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2690, file: !2679, line: 40, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !875, line: 74, size: 512, align: 128, elements: !2695)
!2695 = !{!2696, !2697, !2747, !2752}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !875, line: 75, baseType: !473, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !875, line: 83, baseType: !2698, size: 320, offset: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2694, file: !875, line: 83, size: 320, elements: !2699)
!2699 = !{!2700, !2721, !2735, !2739, !2746}
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !875, line: 84, baseType: !2701, size: 320)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !875, line: 84, size: 320, elements: !2702)
!2702 = !{!2703, !2714, !2715, !2720}
!2703 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !875, line: 90, baseType: !2704, size: 128)
!2704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2701, file: !875, line: 90, size: 128, elements: !2705)
!2705 = !{!2706, !2707, !2712, !2713}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2704, file: !875, line: 91, baseType: !323, size: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !875, line: 94, baseType: !2708, size: 128)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2704, file: !875, line: 94, size: 128, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2708, file: !875, line: 96, baseType: !317, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2708, file: !875, line: 98, baseType: !7, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2704, file: !875, line: 102, baseType: !323, size: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2704, file: !875, line: 103, baseType: !323, size: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2701, file: !875, line: 106, baseType: !499, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !875, line: 107, baseType: !2716, size: 64, offset: 192)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2701, file: !875, line: 107, size: 64, elements: !2717)
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2716, file: !875, line: 108, baseType: !473, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2716, file: !875, line: 109, baseType: !473, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2701, file: !875, line: 117, baseType: !473, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !875, line: 119, baseType: !2722, size: 320)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !875, line: 119, size: 320, elements: !2723)
!2723 = !{!2724, !2725, !2728, !2729, !2730}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2722, file: !875, line: 124, baseType: !473, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2722, file: !875, line: 125, baseType: !2726, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !875, line: 125, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2722, file: !875, line: 126, baseType: !473, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2722, file: !875, line: 127, baseType: !473, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2722, file: !875, line: 128, baseType: !2731, size: 64, offset: 256)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2722, file: !875, line: 128, size: 64, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2731, file: !875, line: 133, baseType: !473, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2731, file: !875, line: 138, baseType: !807, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !875, line: 141, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !875, line: 141, size: 64, elements: !2737)
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2736, file: !875, line: 142, baseType: !473, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !875, line: 144, baseType: !2740, size: 128)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !875, line: 144, size: 128, elements: !2741)
!2741 = !{!2742, !2745}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2740, file: !875, line: 146, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !875, line: 146, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2740, file: !875, line: 147, baseType: !317, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2698, file: !875, line: 161, baseType: !1117, size: 128, align: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !875, line: 164, baseType: !2748, size: 32, offset: 384)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2694, file: !875, line: 164, size: 32, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2748, file: !875, line: 169, baseType: !373, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2748, file: !875, line: 177, baseType: !7, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2694, file: !875, line: 181, baseType: !373, size: 32, offset: 416)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2690, file: !2679, line: 42, baseType: !573, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2690, file: !2679, line: 43, baseType: !573, size: 32, offset: 96)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1133, file: !778, line: 1340, baseType: !2756, size: 64, offset: 20672)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !778, line: 69, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1133, file: !778, line: 1351, baseType: !85, size: 32, offset: 20736)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1133, file: !778, line: 1352, baseType: !85, size: 32, offset: 20768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1133, file: !778, line: 1354, baseType: !473, size: 64, offset: 20800)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1133, file: !778, line: 1364, baseType: !576, size: 64, offset: 20864)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1133, file: !778, line: 1365, baseType: !576, size: 64, offset: 20928)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1133, file: !778, line: 1412, baseType: !473, size: 64, offset: 20992)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1133, file: !778, line: 1453, baseType: !2765, size: 64, offset: 21056)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !778, line: 1453, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1133, file: !778, line: 1457, baseType: !2768, size: 64, offset: 21120)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !2770)
!2770 = !{!2771, !2772, !2791, !2794, !2795, !2828, !2838}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2769, file: !57, line: 62, baseType: !56, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !57, line: 64, baseType: !2773, size: 192, offset: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2769, file: !57, line: 64, size: 192, elements: !2774)
!2774 = !{!2775, !2786}
!2775 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !57, line: 65, baseType: !2776, size: 192)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !57, line: 65, size: 192, elements: !2777)
!2777 = !{!2778, !2785}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2776, file: !57, line: 66, baseType: !2779, size: 128)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2780, line: 50, size: 128, elements: !2781)
!2780 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2779, file: !2780, line: 52, baseType: !473, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2779, file: !2780, line: 54, baseType: !7, size: 32, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2779, file: !2780, line: 55, baseType: !7, size: 32, offset: 96)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2776, file: !57, line: 67, baseType: !473, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !57, line: 70, baseType: !2787, size: 192)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !57, line: 70, size: 192, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2787, file: !57, line: 71, baseType: !1117, size: 128, align: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2787, file: !57, line: 72, baseType: !473, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2769, file: !57, line: 76, baseType: !2792, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2769, file: !57, line: 77, baseType: !473, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2769, file: !57, line: 79, baseType: !2796, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2780, line: 25, size: 256, elements: !2798)
!2798 = !{!2799, !2805, !2809}
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !2780, line: 26, baseType: !2800, size: 128)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2797, file: !2780, line: 26, size: 128, elements: !2801)
!2801 = !{!2802, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2800, file: !2780, line: 27, baseType: !2803, size: 128)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, elements: !2268)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2800, file: !2780, line: 28, baseType: !2803, size: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2797, file: !2780, line: 31, baseType: !2806, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2780, line: 23, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !2780, line: 33, baseType: !2810, size: 64, offset: 192)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2797, file: !2780, line: 33, size: 64, elements: !2811)
!2811 = !{!2812, !2818, !2823}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2810, file: !2780, line: 38, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !2780, line: 34, size: 64, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2813, file: !2780, line: 35, baseType: !1567, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2813, file: !2780, line: 36, baseType: !381, size: 8, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2813, file: !2780, line: 37, baseType: !381, size: 8, offset: 40)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2810, file: !2780, line: 42, baseType: !2819, size: 16)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !2780, line: 39, size: 16, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2819, file: !2780, line: 40, baseType: !381, size: 8)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2819, file: !2780, line: 41, baseType: !381, size: 8, offset: 8)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2810, file: !2780, line: 46, baseType: !2824, size: 16)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !2780, line: 43, size: 16, elements: !2825)
!2825 = !{!2826, !2827}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2824, file: !2780, line: 44, baseType: !381, size: 8)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2824, file: !2780, line: 45, baseType: !381, size: 8, offset: 8)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2769, file: !57, line: 81, baseType: !2829, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2830, file: !57, line: 86, baseType: !2792, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2830, file: !57, line: 87, baseType: !473, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2830, file: !57, line: 88, baseType: !473, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2830, file: !57, line: 89, baseType: !473, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2830, file: !57, line: 90, baseType: !1624, size: 8, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2830, file: !57, line: 92, baseType: !2829, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2769, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1133, file: !778, line: 1463, baseType: !2840, offset: 21184)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !778, line: 739, elements: !707)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1133, file: !778, line: 1470, baseType: !1117, size: 128, align: 64, offset: 21184)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1133, file: !778, line: 1471, baseType: !1146, size: 32, offset: 21312)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1133, file: !778, line: 1472, baseType: !85, size: 32, offset: 21344)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1133, file: !778, line: 1474, baseType: !1132, size: 64, offset: 21376)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1133, file: !778, line: 1475, baseType: !2846, size: 320, offset: 21440)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2847, line: 11, size: 320, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2848 = !{!2849, !2850, !2851, !2856}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2846, file: !2847, line: 16, baseType: !699, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2846, file: !2847, line: 17, baseType: !473, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2846, file: !2847, line: 18, baseType: !2852, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2846, file: !2847, line: 19, baseType: !572, size: 32, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1133, file: !778, line: 1478, baseType: !2858, size: 64, offset: 21760)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !778, line: 1478, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1133, file: !778, line: 1482, baseType: !1146, size: 32, offset: 21824)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1133, file: !778, line: 1489, baseType: !317, size: 64, offset: 21888)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1133, file: !778, line: 1504, baseType: !317, size: 64, offset: 21952)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1133, file: !778, line: 1505, baseType: !577, size: 64, offset: 22016)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1133, file: !778, line: 1506, baseType: !576, size: 64, offset: 22080)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1133, file: !778, line: 1507, baseType: !577, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1133, file: !778, line: 1508, baseType: !577, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1133, file: !778, line: 1509, baseType: !577, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1133, file: !778, line: 1510, baseType: !1117, size: 128, align: 64, offset: 22208)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1133, file: !778, line: 1511, baseType: !85, size: 32, offset: 22336)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1133, file: !778, line: 1515, baseType: !2871, size: 64, offset: 22400)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1160, line: 56, size: 64, elements: !2872)
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2871, file: !1160, line: 57, baseType: !1163, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1133, file: !778, line: 1518, baseType: !2871, size: 64, offset: 22464)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1133, file: !778, line: 1528, baseType: !1117, size: 128, align: 64, offset: 22528)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1133, file: !778, line: 1552, baseType: !2877, size: 35328, offset: 23040)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2878, line: 430, size: 35328, elements: !2879)
!2878 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2879 = !{!2880, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2909, !2910, !2911, !2912, !2913, !2914, !2917, !2918, !2919, !2920}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2877, file: !2878, line: 432, baseType: !2881, size: 192)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2882, size: 192, elements: !424)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2883, line: 16, size: 64, elements: !2884)
!2883 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2884 = !{!2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2882, file: !2883, line: 17, baseType: !391, size: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2882, file: !2883, line: 18, baseType: !391, size: 16, offset: 16)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2882, file: !2883, line: 19, baseType: !391, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2882, file: !2883, line: 19, baseType: !391, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2882, file: !2883, line: 19, baseType: !391, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2882, file: !2883, line: 19, baseType: !391, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2882, file: !2883, line: 19, baseType: !391, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2882, file: !2883, line: 20, baseType: !391, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2882, file: !2883, line: 20, baseType: !391, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2882, file: !2883, line: 20, baseType: !391, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2882, file: !2883, line: 20, baseType: !391, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2882, file: !2883, line: 20, baseType: !391, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2882, file: !2883, line: 20, baseType: !391, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2877, file: !2878, line: 436, baseType: !473, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2877, file: !2878, line: 440, baseType: !393, size: 16, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2877, file: !2878, line: 441, baseType: !393, size: 16, offset: 272)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2877, file: !2878, line: 442, baseType: !393, size: 16, offset: 288)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2877, file: !2878, line: 443, baseType: !393, size: 16, offset: 304)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2877, file: !2878, line: 447, baseType: !473, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2877, file: !2878, line: 448, baseType: !473, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2877, file: !2878, line: 459, baseType: !2906, size: 256, offset: 448)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2907, size: 256, elements: !1512)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2878, line: 428, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2877, file: !2878, line: 461, baseType: !473, size: 64, offset: 704)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2877, file: !2878, line: 463, baseType: !473, size: 64, offset: 768)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2877, file: !2878, line: 465, baseType: !473, size: 64, offset: 832)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2877, file: !2878, line: 466, baseType: !473, size: 64, offset: 896)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2877, file: !2878, line: 467, baseType: !473, size: 64, offset: 960)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2877, file: !2878, line: 473, baseType: !2915, size: 64, offset: 1024)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2878, line: 10, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2877, file: !2878, line: 480, baseType: !473, size: 64, offset: 1088)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2877, file: !2878, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2877, file: !2878, line: 491, baseType: !572, size: 32, offset: 1184)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2877, file: !2878, line: 501, baseType: !2921, size: 33792, offset: 1536)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2922, line: 448, size: 33792, elements: !2923)
!2922 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2923 = !{!2924, !2925, !2926, !3088, !3089, !3095, !3096}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2921, file: !2922, line: 461, baseType: !7, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2921, file: !2922, line: 468, baseType: !473, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2921, file: !2922, line: 476, baseType: !2927, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2922, line: 356, size: 33280, align: 512, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2928, file: !2922, line: 358, baseType: !7, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2928, file: !2922, line: 361, baseType: !7, size: 32, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2928, file: !2922, line: 364, baseType: !576, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2928, file: !2922, line: 367, baseType: !576, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2928, file: !2922, line: 370, baseType: !576, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2928, file: !2922, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2928, file: !2922, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2928, file: !2922, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2928, file: !2922, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2928, file: !2922, line: 397, baseType: !2940, size: 32768, offset: 512)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2922, line: 348, size: 32768, elements: !2941)
!2941 = !{!2942, !2957, !2994, !3071, !3084}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2940, file: !2922, line: 349, baseType: !2943, size: 896)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2922, line: 12, size: 896, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2956}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2943, file: !2922, line: 13, baseType: !572, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2943, file: !2922, line: 14, baseType: !572, size: 32, offset: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2943, file: !2922, line: 15, baseType: !572, size: 32, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2943, file: !2922, line: 16, baseType: !572, size: 32, offset: 96)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2943, file: !2922, line: 17, baseType: !572, size: 32, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2943, file: !2922, line: 18, baseType: !572, size: 32, offset: 160)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2943, file: !2922, line: 19, baseType: !572, size: 32, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2943, file: !2922, line: 22, baseType: !2953, size: 640, offset: 224)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 640, elements: !2954)
!2954 = !{!2955}
!2955 = !DISubrange(count: 20)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2943, file: !2922, line: 25, baseType: !572, size: 32, offset: 864)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2940, file: !2922, line: 350, baseType: !2958, size: 4096, align: 128)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2922, line: 34, size: 4096, align: 128, elements: !2959)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2979, !2980, !2981, !2983, !2985, !2989}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2958, file: !2922, line: 35, baseType: !391, size: 16)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2958, file: !2922, line: 36, baseType: !391, size: 16, offset: 16)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2958, file: !2922, line: 37, baseType: !391, size: 16, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2958, file: !2922, line: 38, baseType: !391, size: 16, offset: 48)
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !2922, line: 39, baseType: !2965, size: 128, offset: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2958, file: !2922, line: 39, size: 128, elements: !2966)
!2966 = !{!2967, !2972}
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !2922, line: 40, baseType: !2968, size: 128)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2922, line: 40, size: 128, elements: !2969)
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2968, file: !2922, line: 41, baseType: !576, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2968, file: !2922, line: 42, baseType: !576, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !2922, line: 44, baseType: !2973, size: 128)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2922, line: 44, size: 128, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2973, file: !2922, line: 45, baseType: !572, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2973, file: !2922, line: 46, baseType: !572, size: 32, offset: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2973, file: !2922, line: 47, baseType: !572, size: 32, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2973, file: !2922, line: 48, baseType: !572, size: 32, offset: 96)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2958, file: !2922, line: 51, baseType: !572, size: 32, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2958, file: !2922, line: 52, baseType: !572, size: 32, offset: 224)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2958, file: !2922, line: 55, baseType: !2982, size: 1024, offset: 256)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 1024, elements: !585)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2958, file: !2922, line: 58, baseType: !2984, size: 2048, offset: 1280)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 2048, elements: !428)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2958, file: !2922, line: 60, baseType: !2986, size: 384, offset: 3328)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 384, elements: !2987)
!2987 = !{!2988}
!2988 = !DISubrange(count: 12)
!2989 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !2922, line: 62, baseType: !2990, size: 384, offset: 3712)
!2990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2958, file: !2922, line: 62, size: 384, elements: !2991)
!2991 = !{!2992, !2993}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2990, file: !2922, line: 63, baseType: !2986, size: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2990, file: !2922, line: 64, baseType: !2986, size: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2940, file: !2922, line: 351, baseType: !2995, size: 1088)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2922, line: 79, size: 1088, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3070}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2995, file: !2922, line: 80, baseType: !572, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2995, file: !2922, line: 81, baseType: !572, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2995, file: !2922, line: 82, baseType: !572, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2995, file: !2922, line: 83, baseType: !572, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2995, file: !2922, line: 84, baseType: !572, size: 32, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2995, file: !2922, line: 85, baseType: !572, size: 32, offset: 160)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2995, file: !2922, line: 86, baseType: !572, size: 32, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2995, file: !2922, line: 88, baseType: !2953, size: 640, offset: 224)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2995, file: !2922, line: 89, baseType: !381, size: 8, offset: 864)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2995, file: !2922, line: 90, baseType: !381, size: 8, offset: 872)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2995, file: !2922, line: 91, baseType: !381, size: 8, offset: 880)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2995, file: !2922, line: 92, baseType: !381, size: 8, offset: 888)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2995, file: !2922, line: 93, baseType: !381, size: 8, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2995, file: !2922, line: 94, baseType: !381, size: 8, offset: 904)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2995, file: !2922, line: 95, baseType: !3012, size: 64, offset: 960)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3014, line: 11, size: 128, elements: !3015)
!3014 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3013, file: !3014, line: 12, baseType: !459, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3013, file: !3014, line: 13, baseType: !3018, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3020, line: 103, size: 1344, elements: !3021)
!3020 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3050, !3051, !3052}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3019, file: !3020, line: 109, baseType: !473, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3019, file: !3020, line: 110, baseType: !473, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3019, file: !3020, line: 111, baseType: !473, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3019, file: !3020, line: 112, baseType: !473, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3019, file: !3020, line: 113, baseType: !473, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3019, file: !3020, line: 114, baseType: !473, size: 64, offset: 320)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3019, file: !3020, line: 117, baseType: !473, size: 64, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3019, file: !3020, line: 118, baseType: !473, size: 64, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3019, file: !3020, line: 119, baseType: !473, size: 64, offset: 512)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3019, file: !3020, line: 120, baseType: !473, size: 64, offset: 576)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3019, file: !3020, line: 121, baseType: !473, size: 64, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3019, file: !3020, line: 122, baseType: !473, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3019, file: !3020, line: 123, baseType: !473, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3019, file: !3020, line: 124, baseType: !473, size: 64, offset: 832)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3019, file: !3020, line: 125, baseType: !473, size: 64, offset: 896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3019, file: !3020, line: 139, baseType: !473, size: 64, offset: 960)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3019, file: !3020, line: 142, baseType: !473, size: 64, offset: 1024)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !3019, file: !3020, line: 144, baseType: !3040, size: 64, offset: 1088)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3019, file: !3020, line: 144, size: 64, elements: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3040, file: !3020, line: 146, baseType: !391, size: 16)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3040, file: !3020, line: 148, baseType: !576, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3040, file: !3020, line: 150, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3020, line: 59, size: 64, elements: !3046)
!3046 = !{!3047, !3048, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3045, file: !3020, line: 61, baseType: !576, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3045, file: !3020, line: 63, baseType: !576, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3045, file: !3020, line: 65, baseType: !576, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !3020, line: 153, baseType: !473, size: 64, offset: 1152)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3019, file: !3020, line: 154, baseType: !473, size: 64, offset: 1216)
!3052 = !DIDerivedType(tag: DW_TAG_member, scope: !3019, file: !3020, line: 156, baseType: !3053, size: 64, offset: 1280)
!3053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3019, file: !3020, line: 156, size: 64, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3053, file: !3020, line: 158, baseType: !391, size: 16)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3053, file: !3020, line: 160, baseType: !576, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3053, file: !3020, line: 162, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3020, line: 69, size: 64, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3058, file: !3020, line: 71, baseType: !576, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3058, file: !3020, line: 73, baseType: !576, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3058, file: !3020, line: 75, baseType: !576, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3058, file: !3020, line: 77, baseType: !576, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3058, file: !3020, line: 80, baseType: !576, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3058, file: !3020, line: 83, baseType: !576, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3058, file: !3020, line: 86, baseType: !576, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3058, file: !3020, line: 88, baseType: !576, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3058, file: !3020, line: 93, baseType: !576, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3058, file: !3020, line: 100, baseType: !576, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2995, file: !2922, line: 96, baseType: !572, size: 32, offset: 1024)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2940, file: !2922, line: 352, baseType: !3072, size: 4608, align: 512)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2922, line: 333, size: 4608, align: 512, elements: !3073)
!3073 = !{!3074, !3075, !3082}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3072, file: !2922, line: 334, baseType: !2958, size: 4096, align: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3072, file: !2922, line: 335, baseType: !3076, size: 512, offset: 4096)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2922, line: 312, size: 512, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3076, file: !2922, line: 313, baseType: !576, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3076, file: !2922, line: 314, baseType: !576, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3076, file: !2922, line: 315, baseType: !3081, size: 384, offset: 128)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 384, elements: !1611)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3072, file: !2922, line: 336, baseType: !3083, offset: 4608)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, elements: !1525)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2940, file: !2922, line: 353, baseType: !3085, size: 32768)
!3085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 32768, elements: !3086)
!3086 = !{!3087}
!3087 = !DISubrange(count: 4096)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2921, file: !2922, line: 484, baseType: !2927, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2921, file: !2922, line: 491, baseType: !3090, size: 128, offset: 256)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2922, line: 404, size: 128, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3090, file: !2922, line: 424, baseType: !576, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3090, file: !2922, line: 432, baseType: !7, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3090, file: !2922, line: 440, baseType: !7, size: 32, offset: 96)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2921, file: !2922, line: 498, baseType: !3090, size: 128, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2921, file: !2922, line: 508, baseType: !2928, size: 33280, align: 512, offset: 512)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1100, file: !1101, line: 16, baseType: !1110, size: 192, offset: 512)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1100, file: !1101, line: 17, baseType: !373, size: 32, offset: 704)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !655, file: !28, line: 1240, baseType: !317, size: 64, offset: 6912)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !655, file: !28, line: 1243, baseType: !572, size: 32, offset: 6976)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !655, file: !28, line: 1245, baseType: !856, size: 64, offset: 7040)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !655, file: !28, line: 1246, baseType: !856, size: 64, offset: 7104)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !655, file: !28, line: 1248, baseType: !573, size: 32, offset: 7168)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !655, file: !28, line: 1249, baseType: !3105, size: 64, offset: 7232)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !655, file: !28, line: 1252, baseType: !3108, size: 256, offset: 7296)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !585)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !655, file: !28, line: 1253, baseType: !3110, size: 128, offset: 7552)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3111, line: 21, baseType: !3112)
!3111 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3111, line: 19, size: 128, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3112, file: !3111, line: 20, baseType: !3115, size: 128)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 128, elements: !2268)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !655, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !655, file: !28, line: 1261, baseType: !803, size: 256, offset: 7744)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !655, file: !28, line: 1267, baseType: !342, size: 64, offset: 8000)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !655, file: !28, line: 1269, baseType: !601, size: 64, offset: 8064)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !655, file: !28, line: 1271, baseType: !3121, size: 448, offset: 8128)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !865, line: 63, size: 448, elements: !3122)
!3122 = !{!3123, !3128, !3129, !3130, !3131, !3132, !3133}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3121, file: !865, line: 64, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!473, !3127, !863}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3121, file: !865, line: 66, baseType: !3124, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3121, file: !865, line: 69, baseType: !459, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3121, file: !865, line: 70, baseType: !85, size: 32, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3121, file: !865, line: 71, baseType: !7, size: 32, offset: 224)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3121, file: !865, line: 74, baseType: !323, size: 128, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3121, file: !865, line: 85, baseType: !3134, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !655, file: !28, line: 1274, baseType: !807, size: 64, offset: 8576)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !655, file: !28, line: 1280, baseType: !807, size: 64, offset: 8640)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !655, file: !28, line: 1283, baseType: !85, size: 32, offset: 8704)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !655, file: !28, line: 1286, baseType: !1972, size: 32, offset: 8736)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !655, file: !28, line: 1289, baseType: !3140, size: 64, offset: 8768)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2101, line: 18, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !655, file: !28, line: 1290, baseType: !695, size: 64, offset: 8832)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !655, file: !28, line: 1297, baseType: !1707, size: 64, offset: 8896)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !655, file: !28, line: 1304, baseType: !3145, size: 64, offset: 8960)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3146, line: 49, size: 64, elements: !3147)
!3146 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3145, file: !3146, line: 50, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3146, line: 41, size: 512, align: 512, elements: !3151)
!3151 = !{!3152, !3153, !3158}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3150, file: !3146, line: 43, baseType: !353, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3150, file: !3146, line: 45, baseType: !3154, size: 192, offset: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3146, line: 29, size: 192, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3154, file: !3146, line: 30, baseType: !323, size: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3154, file: !3146, line: 32, baseType: !459, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3150, file: !3146, line: 46, baseType: !459, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !655, file: !28, line: 1305, baseType: !3145, size: 64, offset: 9024)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !655, file: !28, line: 1306, baseType: !1117, size: 128, align: 64, offset: 9088)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !655, file: !28, line: 1307, baseType: !2100, size: 256, offset: 9216)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !655, file: !28, line: 1309, baseType: !803, size: 256, offset: 9472)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !655, file: !28, line: 1314, baseType: !85, size: 32, offset: 9728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !655, file: !28, line: 1317, baseType: !353, size: 32, align: 512, offset: 10240)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !655, file: !28, line: 1318, baseType: !323, size: 128, offset: 10304)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !655, file: !28, line: 1320, baseType: !353, size: 32, offset: 10432)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !655, file: !28, line: 1321, baseType: !323, size: 128, offset: 10496)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !649, file: !650, line: 73, baseType: !85, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !649, file: !650, line: 74, baseType: !3170, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1549, line: 42, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !603, file: !540, line: 141, baseType: !3174, size: 64, offset: 704)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!85, !927, !1624}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !603, file: !540, line: 142, baseType: !3178, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!538, !538, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !539, file: !540, line: 96, baseType: !654, size: 64, offset: 832)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !539, file: !540, line: 97, baseType: !473, size: 64, offset: 896)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !539, file: !540, line: 98, baseType: !317, size: 64, offset: 960)
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !540, line: 100, baseType: !3187, size: 128, offset: 1024)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 100, size: 128, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3187, file: !540, line: 101, baseType: !323, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3187, file: !540, line: 102, baseType: !1819, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !539, file: !540, line: 104, baseType: !323, size: 128, offset: 1152)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !539, file: !540, line: 105, baseType: !323, size: 128, offset: 1280)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !539, file: !540, line: 113, baseType: !3194, size: 128, offset: 1408)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 109, size: 128, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3194, file: !540, line: 110, baseType: !699, size: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3194, file: !540, line: 111, baseType: !554, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3194, file: !540, line: 112, baseType: !1117, size: 128, align: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !532, file: !28, line: 1968, baseType: !3200, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!342, !538, !503, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3205, line: 10, size: 128, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3206 = !{!3207, !3211}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3204, file: !3205, line: 11, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !317}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3204, file: !3205, line: 12, baseType: !317, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !532, file: !28, line: 1969, baseType: !3213, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!85, !3170, !503, !85}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !532, file: !28, line: 1970, baseType: !3217, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!526, !503, !85, !1624}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !532, file: !28, line: 1972, baseType: !3221, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!85, !538, !423, !85}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !532, file: !28, line: 1974, baseType: !3225, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!85, !3170, !503, !538, !465, !1624}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !532, file: !28, line: 1976, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!85, !538, !503, !538}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !532, file: !28, line: 1977, baseType: !3233, size: 64, offset: 448)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!85, !503, !538}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !532, file: !28, line: 1978, baseType: !3237, size: 64, offset: 512)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!85, !3170, !503, !538, !342}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !532, file: !28, line: 1980, baseType: !3241, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!85, !3170, !503, !538, !465}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !532, file: !28, line: 1982, baseType: !3233, size: 64, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !532, file: !28, line: 1983, baseType: !3246, size: 64, offset: 704)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!85, !3170, !503, !538, !465, !659}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !532, file: !28, line: 1985, baseType: !3250, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!85, !3170, !503, !538, !503, !538, !7}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !532, file: !28, line: 1987, baseType: !3254, size: 64, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!85, !3170, !538, !3257}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3272, !3281, !3282, !3287, !3288, !3289}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3258, file: !28, line: 227, baseType: !7, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3258, file: !28, line: 228, baseType: !465, size: 16, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !28, line: 241, baseType: !3263, size: 32, offset: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !28, line: 241, size: 32, elements: !3264)
!3264 = !{!3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3263, file: !28, line: 242, baseType: !509, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3263, file: !28, line: 243, baseType: !3267, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3268, line: 16, baseType: !3269)
!3268 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3268, line: 14, size: 32, elements: !3270)
!3270 = !{!3271}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3269, file: !3268, line: 15, baseType: !514, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !28, line: 245, baseType: !3273, size: 32, offset: 96)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !28, line: 245, size: 32, elements: !3274)
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3273, file: !28, line: 246, baseType: !518, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3273, file: !28, line: 247, baseType: !3277, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3268, line: 20, baseType: !3278)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3268, line: 18, size: 32, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3278, file: !3268, line: 19, baseType: !522, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3258, file: !28, line: 249, baseType: !664, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3258, file: !28, line: 250, baseType: !3283, size: 128, offset: 192)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !857, line: 13, size: 128, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3283, file: !857, line: 14, baseType: !856, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3283, file: !857, line: 15, baseType: !459, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3258, file: !28, line: 251, baseType: !3283, size: 128, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3258, file: !28, line: 252, baseType: !3283, size: 128, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3258, file: !28, line: 259, baseType: !1463, size: 64, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !532, file: !28, line: 1988, baseType: !3291, size: 64, offset: 896)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!85, !3170, !927, !3294, !572, !7}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3296, line: 22, size: 1280, elements: !3297)
!3296 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3295, file: !3296, line: 23, baseType: !572, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3295, file: !3296, line: 24, baseType: !465, size: 16, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3295, file: !3296, line: 25, baseType: !7, size: 32, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3295, file: !3296, line: 26, baseType: !1589, size: 32, offset: 96)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3295, file: !3296, line: 27, baseType: !576, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3295, file: !3296, line: 28, baseType: !576, size: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3295, file: !3296, line: 41, baseType: !576, size: 64, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3295, file: !3296, line: 42, baseType: !659, size: 32, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3295, file: !3296, line: 43, baseType: !659, size: 32, offset: 352)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3295, file: !3296, line: 44, baseType: !509, size: 32, offset: 384)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3295, file: !3296, line: 45, baseType: !518, size: 32, offset: 416)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3295, file: !3296, line: 46, baseType: !664, size: 64, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3295, file: !3296, line: 47, baseType: !3283, size: 128, offset: 512)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3295, file: !3296, line: 48, baseType: !3283, size: 128, offset: 640)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3295, file: !3296, line: 49, baseType: !3283, size: 128, offset: 768)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3295, file: !3296, line: 50, baseType: !3283, size: 128, offset: 896)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3295, file: !3296, line: 51, baseType: !576, size: 64, offset: 1024)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3295, file: !3296, line: 52, baseType: !576, size: 64, offset: 1088)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3295, file: !3296, line: 53, baseType: !572, size: 32, offset: 1152)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3295, file: !3296, line: 54, baseType: !572, size: 32, offset: 1184)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3295, file: !3296, line: 55, baseType: !576, size: 64, offset: 1216)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !532, file: !28, line: 1990, baseType: !3320, size: 64, offset: 960)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!455, !538, !423, !470}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !532, file: !28, line: 1991, baseType: !3324, size: 64, offset: 1024)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!85, !503, !3327, !576, !576}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !532, file: !28, line: 1993, baseType: !3330, size: 64, offset: 1088)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!85, !503, !85}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !532, file: !28, line: 1994, baseType: !3334, size: 64, offset: 1152)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!85, !503, !538, !1463, !7, !465}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !532, file: !28, line: 1997, baseType: !3338, size: 64, offset: 1216)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!85, !3170, !503, !1463, !465}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !532, file: !28, line: 1999, baseType: !3342, size: 64, offset: 1280)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!526, !3170, !538, !85}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !532, file: !28, line: 2001, baseType: !3346, size: 64, offset: 1344)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!85, !3170, !538, !526, !85}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !532, file: !28, line: 2003, baseType: !3350, size: 64, offset: 1408)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!85, !3170, !538, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !532, file: !28, line: 2005, baseType: !3356, size: 64, offset: 1472)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!85, !538, !3353}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !532, file: !28, line: 2006, baseType: !3360, size: 64, offset: 1536)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!3363, !503}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3365)
!3365 = !{!3366, !3373}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3364, file: !28, line: 3193, baseType: !3367, size: 128)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3368, line: 296, size: 128, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3369 = !{!3370, !3371, !3372}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3367, file: !3368, line: 297, baseType: !353, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3367, file: !3368, line: 299, baseType: !868, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3367, file: !3368, line: 300, baseType: !317, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3364, file: !28, line: 3194, baseType: !572, size: 32, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !504, file: !28, line: 655, baseType: !654, size: 64, offset: 448)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !504, file: !28, line: 656, baseType: !499, size: 64, offset: 512)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !504, file: !28, line: 659, baseType: !317, size: 64, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !504, file: !28, line: 663, baseType: !473, size: 64, offset: 640)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !28, line: 671, baseType: !3379, size: 32, offset: 704)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !28, line: 671, size: 32, elements: !3380)
!3380 = !{!3381, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3379, file: !28, line: 672, baseType: !3382, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3379, file: !28, line: 673, baseType: !7, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !504, file: !28, line: 675, baseType: !659, size: 32, offset: 736)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !504, file: !28, line: 676, baseType: !664, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !504, file: !28, line: 677, baseType: !3283, size: 128, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !504, file: !28, line: 678, baseType: !3283, size: 128, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !504, file: !28, line: 679, baseType: !3283, size: 128, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !504, file: !28, line: 680, baseType: !353, size: 32, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !504, file: !28, line: 681, baseType: !393, size: 16, offset: 1248)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !504, file: !28, line: 682, baseType: !381, size: 8, offset: 1264)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !504, file: !28, line: 683, baseType: !381, size: 8, offset: 1272)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !504, file: !28, line: 684, baseType: !1005, size: 64, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !504, file: !28, line: 691, baseType: !473, size: 64, offset: 1344)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !504, file: !28, line: 692, baseType: !1017, size: 320, offset: 1408)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !504, file: !28, line: 694, baseType: !473, size: 64, offset: 1728)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !504, file: !28, line: 695, baseType: !473, size: 64, offset: 1792)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !504, file: !28, line: 697, baseType: !699, size: 128, offset: 1856)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !504, file: !28, line: 698, baseType: !323, size: 128, offset: 1984)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !504, file: !28, line: 707, baseType: !323, size: 128, offset: 2112)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !504, file: !28, line: 708, baseType: !323, size: 128, offset: 2240)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !28, line: 709, baseType: !3403, size: 128, offset: 2368)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !28, line: 709, size: 128, elements: !3404)
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3403, file: !28, line: 710, baseType: !695, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3403, file: !28, line: 711, baseType: !1117, size: 128, align: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !504, file: !28, line: 713, baseType: !809, size: 64, offset: 2496)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !504, file: !28, line: 714, baseType: !809, size: 64, offset: 2560)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !504, file: !28, line: 715, baseType: !373, size: 32, offset: 2624)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !504, file: !28, line: 716, baseType: !373, size: 32, offset: 2656)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !504, file: !28, line: 717, baseType: !373, size: 32, offset: 2688)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !504, file: !28, line: 719, baseType: !373, size: 32, offset: 2720)
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !28, line: 721, baseType: !3414, size: 64, offset: 2752)
!3414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !28, line: 721, size: 64, elements: !3415)
!3415 = !{!3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3414, file: !28, line: 722, baseType: !1738, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3414, file: !28, line: 723, baseType: !726, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !504, file: !28, line: 725, baseType: !3419, size: 64, offset: 2816)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !504, file: !28, line: 726, baseType: !500, size: 1536, align: 64, offset: 2880)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !504, file: !28, line: 727, baseType: !323, size: 128, offset: 4416)
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !28, line: 728, baseType: !3424, size: 64, offset: 4544)
!3424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !28, line: 728, size: 64, elements: !3425)
!3425 = !{!3426, !3427, !3430, !3431}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3424, file: !28, line: 729, baseType: !1922, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3424, file: !28, line: 730, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3424, file: !28, line: 731, baseType: !423, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3424, file: !28, line: 732, baseType: !7, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !504, file: !28, line: 735, baseType: !573, size: 32, offset: 4608)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !504, file: !28, line: 738, baseType: !573, size: 32, offset: 4640)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !504, file: !28, line: 739, baseType: !3105, size: 64, offset: 4672)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !504, file: !28, line: 750, baseType: !317, size: 64, offset: 4736)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !500, file: !28, line: 474, baseType: !3367, size: 128, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !500, file: !28, line: 475, baseType: !1017, size: 320, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !500, file: !28, line: 476, baseType: !868, size: 32, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !500, file: !28, line: 477, baseType: !373, size: 32, offset: 544)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !500, file: !28, line: 482, baseType: !1319, size: 128, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !500, file: !28, line: 483, baseType: !473, size: 64, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !500, file: !28, line: 484, baseType: !473, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !500, file: !28, line: 485, baseType: !3444, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3447)
!3447 = !{!3448, !3452, !3522, !3526, !3530, !3536, !3541, !3545, !3550, !3554, !3558, !3562, !3563, !3567, !3571, !3575, !3580, !3584, !3591, !3592}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3446, file: !28, line: 405, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!85, !2693, !738}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3446, file: !28, line: 406, baseType: !3453, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!85, !1463, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !875, line: 293, size: 1536, elements: !3458)
!3458 = !{!3459, !3489, !3503}
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !875, line: 295, baseType: !3460, size: 512)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3457, file: !875, line: 295, size: 512, elements: !3461)
!3461 = !{!3462, !3488}
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !3460, file: !875, line: 296, baseType: !3463, size: 448)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3460, file: !875, line: 296, size: 448, elements: !3464)
!3464 = !{!3465, !3466, !3475, !3476, !3477, !3486, !3487}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3463, file: !875, line: 298, baseType: !473, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !875, line: 299, baseType: !3467, size: 128, offset: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !875, line: 299, size: 128, elements: !3468)
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3467, file: !875, line: 300, baseType: !323, size: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3467, file: !875, line: 302, baseType: !3471, size: 128)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3467, file: !875, line: 302, size: 128, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3471, file: !875, line: 303, baseType: !317, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3471, file: !875, line: 305, baseType: !7, size: 32, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3463, file: !875, line: 310, baseType: !499, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3463, file: !875, line: 311, baseType: !473, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !875, line: 312, baseType: !3478, size: 64, offset: 320)
!3478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !875, line: 312, size: 64, elements: !3479)
!3479 = !{!3480, !3481}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3478, file: !875, line: 313, baseType: !317, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3478, file: !875, line: 314, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !875, line: 257, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !875, line: 255, size: 64, elements: !3484)
!3484 = !{!3485}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3483, file: !875, line: 256, baseType: !473, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3463, file: !875, line: 316, baseType: !373, size: 32, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3463, file: !875, line: 317, baseType: !373, size: 32, offset: 416)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3460, file: !875, line: 323, baseType: !2694, size: 512, align: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !875, line: 325, baseType: !3490, size: 512, offset: 512)
!3490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3457, file: !875, line: 325, size: 512, elements: !3491)
!3491 = !{!3492, !3502}
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !875, line: 326, baseType: !3493, size: 320)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3490, file: !875, line: 326, size: 320, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3493, file: !875, line: 327, baseType: !473, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3493, file: !875, line: 328, baseType: !473, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3493, file: !875, line: 329, baseType: !473, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3493, file: !875, line: 331, baseType: !373, size: 32, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3493, file: !875, line: 332, baseType: !373, size: 32, offset: 224)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3493, file: !875, line: 333, baseType: !373, size: 32, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3493, file: !875, line: 335, baseType: !7, size: 32, offset: 288)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3490, file: !875, line: 339, baseType: !2694, size: 512, align: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !875, line: 341, baseType: !3504, size: 512, offset: 1024)
!3504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3457, file: !875, line: 341, size: 512, elements: !3505)
!3505 = !{!3506, !3515, !3521}
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !875, line: 342, baseType: !3507, size: 384)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3504, file: !875, line: 342, size: 384, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3507, file: !875, line: 343, baseType: !473, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3507, file: !875, line: 344, baseType: !473, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3507, file: !875, line: 346, baseType: !317, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3507, file: !875, line: 347, baseType: !317, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3507, file: !875, line: 348, baseType: !317, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3507, file: !875, line: 349, baseType: !317, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !875, line: 352, baseType: !3516, size: 256)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3504, file: !875, line: 352, size: 256, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3516, file: !875, line: 353, baseType: !473, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3516, file: !875, line: 354, baseType: !473, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3516, file: !875, line: 356, baseType: !323, size: 128, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3504, file: !875, line: 359, baseType: !2694, size: 512, align: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3446, file: !28, line: 409, baseType: !3523, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!85, !499, !738}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3446, file: !28, line: 412, baseType: !3527, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!1624, !499, !3456}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3446, file: !28, line: 414, baseType: !3531, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3446, file: !28, line: 416, baseType: !3537, size: 64, offset: 320)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!85, !1463, !499, !664, !7, !3540, !1937}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3446, file: !28, line: 419, baseType: !3542, size: 64, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!85, !1463, !499, !664, !7, !7, !2693, !317}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3446, file: !28, line: 424, baseType: !3546, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!3549, !499, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !324, line: 131, baseType: !576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3446, file: !28, line: 425, baseType: !3551, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3456, !470, !470}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3446, file: !28, line: 426, baseType: !3555, size: 64, offset: 576)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!1624, !3456, !868}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3446, file: !28, line: 427, baseType: !3559, size: 64, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !3456}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3446, file: !28, line: 428, baseType: !1757, size: 64, offset: 704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3446, file: !28, line: 433, baseType: !3564, size: 64, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!85, !499, !3456, !3456, !49}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3446, file: !28, line: 435, baseType: !3568, size: 64, offset: 832)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!85, !3456}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3446, file: !28, line: 436, baseType: !3572, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!1624, !3456, !470, !470}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3446, file: !28, line: 438, baseType: !3576, size: 64, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3456, !3579, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3446, file: !28, line: 439, baseType: !3581, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!85, !499, !2693}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3446, file: !28, line: 442, baseType: !3585, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!85, !3588, !1463, !3590}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3446, file: !28, line: 444, baseType: !1929, size: 64, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3446, file: !28, line: 445, baseType: !3593, size: 64, offset: 1216)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!85, !1760, !1782}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !28, line: 486, baseType: !473, size: 64, offset: 896)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !500, file: !28, line: 487, baseType: !1017, size: 320, offset: 960)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !500, file: !28, line: 488, baseType: !1972, size: 32, offset: 1280)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !500, file: !28, line: 489, baseType: !353, size: 32, offset: 1312)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !500, file: !28, line: 490, baseType: !323, size: 128, offset: 1344)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !500, file: !28, line: 491, baseType: !317, size: 64, offset: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !490, file: !449, line: 180, baseType: !3603, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!455, !1463, !346, !489, !423, !664, !470}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !490, file: !449, line: 182, baseType: !3603, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !490, file: !449, line: 184, baseType: !3608, size: 64, offset: 448)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!85, !1463, !346, !489, !1830}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !478, file: !449, line: 90, baseType: !3612, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !478, file: !449, line: 91, baseType: !3614, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !439, file: !339, line: 120, baseType: !3616, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!3619, !406}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3621)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3622)
!3622 = !{!3623, !3624, !3628, !3632, !3638, !3642}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3621, file: !6, line: 40, baseType: !5, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3621, file: !6, line: 41, baseType: !3625, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!1624}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3621, file: !6, line: 42, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!317}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3621, file: !6, line: 43, baseType: !3633, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!2061, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3621, file: !6, line: 44, baseType: !3639, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!2061}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3621, file: !6, line: 45, baseType: !3208, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !439, file: !339, line: 121, baseType: !3644, size: 64, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!2061, !406}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !439, file: !339, line: 122, baseType: !3648, size: 64, offset: 320)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !406, !3651, !3652}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !338, file: !339, line: 70, baseType: !3654, size: 64, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !679, line: 190, size: 1152, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3748, !3749, !3750, !3751, !3752, !3755}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3655, file: !679, line: 191, baseType: !373, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3655, file: !679, line: 192, baseType: !373, size: 32, offset: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3655, file: !679, line: 202, baseType: !3654, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3655, file: !679, line: 203, baseType: !342, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3655, file: !679, line: 205, baseType: !1190, size: 192, align: 64, offset: 192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3655, file: !679, line: 207, baseType: !2061, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3655, file: !679, line: 208, baseType: !7, size: 32, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !679, line: 209, baseType: !3665, size: 256, offset: 512)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !679, line: 209, size: 256, elements: !3666)
!3666 = !{!3667, !3676, !3680}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3665, file: !679, line: 210, baseType: !3668, size: 256)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !679, line: 153, size: 256, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3675}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3668, file: !679, line: 154, baseType: !473, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3668, file: !679, line: 156, baseType: !1322, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3668, file: !679, line: 162, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !679, line: 162, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3668, file: !679, line: 167, baseType: !473, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3665, file: !679, line: 211, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !679, line: 170, size: 64, elements: !3678)
!3678 = !{!3679}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3677, file: !679, line: 171, baseType: !3654, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3665, file: !679, line: 212, baseType: !3681, size: 256)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !679, line: 174, size: 256, elements: !3682)
!3682 = !{!3683, !3743, !3746, !3747}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3681, file: !679, line: 175, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !679, line: 271, size: 768, elements: !3687)
!3687 = !{!3688, !3708, !3712, !3716, !3720, !3724, !3728, !3732, !3733, !3734, !3735, !3739}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3686, file: !679, line: 276, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!85, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !679, line: 251, size: 1216, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3693, file: !679, line: 253, baseType: !3654, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3693, file: !679, line: 254, baseType: !1463, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3693, file: !679, line: 255, baseType: !776, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3693, file: !679, line: 256, baseType: !317, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3693, file: !679, line: 259, baseType: !803, size: 256, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3693, file: !679, line: 260, baseType: !803, size: 256, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3693, file: !679, line: 261, baseType: !85, size: 32, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3693, file: !679, line: 262, baseType: !323, size: 128, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3693, file: !679, line: 263, baseType: !423, size: 64, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3693, file: !679, line: 265, baseType: !470, size: 64, offset: 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3693, file: !679, line: 266, baseType: !1624, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3693, file: !679, line: 267, baseType: !1624, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3693, file: !679, line: 268, baseType: !1875, size: 64, offset: 1152)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3686, file: !679, line: 277, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3692}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3686, file: !679, line: 290, baseType: !3713, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!85, !776, !317}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3686, file: !679, line: 292, baseType: !3717, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!317, !776, !1751}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3686, file: !679, line: 293, baseType: !3721, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!317, !776, !317, !1751}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3686, file: !679, line: 294, baseType: !3725, size: 64, offset: 320)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !776, !317}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3686, file: !679, line: 296, baseType: !3729, size: 64, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!455, !3692, !423, !470, !664}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3686, file: !679, line: 306, baseType: !470, size: 64, offset: 448)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3686, file: !679, line: 313, baseType: !1624, size: 8, offset: 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3686, file: !679, line: 314, baseType: !3729, size: 64, offset: 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3686, file: !679, line: 317, baseType: !3736, size: 64, offset: 640)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!1808, !3692, !1810}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3686, file: !679, line: 320, baseType: !3740, size: 64, offset: 704)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!85, !3692, !1830}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3681, file: !679, line: 176, baseType: !3744, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !679, line: 35, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3681, file: !679, line: 177, baseType: !664, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3681, file: !679, line: 178, baseType: !3654, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3655, file: !679, line: 215, baseType: !317, size: 64, offset: 768)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3655, file: !679, line: 221, baseType: !576, size: 64, offset: 832)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3655, file: !679, line: 223, baseType: !393, size: 16, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3655, file: !679, line: 224, baseType: !465, size: 16, offset: 912)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3655, file: !679, line: 225, baseType: !3753, size: 64, offset: 960)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !679, line: 36, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3655, file: !679, line: 227, baseType: !1117, size: 128, align: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !338, file: !339, line: 71, baseType: !3757, size: 32, offset: 448)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3758, line: 19, size: 32, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3757, file: !3758, line: 20, baseType: !1146, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !338, file: !339, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !338, file: !339, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !338, file: !339, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !338, file: !339, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !338, file: !339, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !335, file: !21, line: 47, baseType: !318, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !335, file: !21, line: 48, baseType: !346, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !335, file: !21, line: 49, baseType: !3769, size: 64, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !335, file: !21, line: 50, baseType: !2215, size: 64, offset: 704)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !319, file: !21, line: 418, baseType: !3773, size: 64, offset: 1408)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !3775)
!3775 = !{!3776, !3777, !3782, !3786, !3790, !3794}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3774, file: !21, line: 54, baseType: !461, size: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3774, file: !21, line: 55, baseType: !3778, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!455, !3773, !3781, !423}
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3774, file: !21, line: 57, baseType: !3783, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!455, !3773, !3781, !342, !470}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3774, file: !21, line: 59, baseType: !3787, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !318, !342}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3774, file: !21, line: 60, baseType: !3791, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!85, !318}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3774, file: !21, line: 61, baseType: !3795, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !318}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !319, file: !21, line: 419, baseType: !342, size: 64, offset: 1472)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !319, file: !21, line: 420, baseType: !342, size: 64, offset: 1536)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !319, file: !21, line: 421, baseType: !346, size: 64, offset: 1600)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !319, file: !21, line: 424, baseType: !3802, size: 64, offset: 1664)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !319, file: !21, line: 425, baseType: !3806, size: 64, offset: 1728)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !319, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !319, file: !21, line: 435, baseType: !803, size: 256, offset: 1856)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !319, file: !21, line: 437, baseType: !3811, size: 64, offset: 2112)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3813, line: 69, size: 320, elements: !3814)
!3813 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3814 = !{!3815, !3816, !3817, !3834, !3836, !3840, !3841}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3812, file: !3813, line: 70, baseType: !342, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3812, file: !3813, line: 71, baseType: !318, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3812, file: !3813, line: 72, baseType: !3818, size: 64, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3813, line: 47, size: 256, elements: !3821)
!3821 = !{!3822, !3823, !3829, !3833}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !3813, line: 49, baseType: !7, size: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3820, file: !3813, line: 51, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!85, !342, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3812)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3820, file: !3813, line: 53, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!85, !423, !3827}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3820, file: !3813, line: 55, baseType: !3208, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3812, file: !3813, line: 73, baseType: !3835, size: 16, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3812, file: !3813, line: 74, baseType: !3837, size: 8, offset: 208)
!3837 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !382, line: 16, baseType: !3838)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !384, line: 20, baseType: !3839)
!3839 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3812, file: !3813, line: 75, baseType: !381, size: 8, offset: 216)
!3841 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !3813, line: 76, baseType: !3842, size: 64, offset: 256)
!3842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3812, file: !3813, line: 76, size: 64, elements: !3843)
!3843 = !{!3844, !3845, !3852}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3842, file: !3813, line: 77, baseType: !317, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3842, file: !3813, line: 78, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3813, line: 86, size: 128, elements: !3849)
!3849 = !{!3850, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3848, file: !3813, line: 87, baseType: !7, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3848, file: !3813, line: 88, baseType: !423, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3842, file: !3813, line: 79, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3855)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3813, line: 92, size: 256, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3855, file: !3813, line: 94, baseType: !7, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3855, file: !3813, line: 95, baseType: !7, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3855, file: !3813, line: 96, baseType: !1126, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3855, file: !3813, line: 97, baseType: !3818, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3855, file: !3813, line: 98, baseType: !317, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !319, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !319, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !319, file: !21, line: 442, baseType: !3802, size: 64, offset: 2240)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !319, file: !21, line: 443, baseType: !3806, size: 64, offset: 2304)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !319, file: !21, line: 444, baseType: !1624, size: 8, offset: 2368)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !319, file: !21, line: 451, baseType: !1624, size: 8, offset: 2376)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !319, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !319, file: !21, line: 455, baseType: !3870, size: 64, offset: 2432)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3872, line: 23, size: 96, elements: !3873)
!3872 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3873 = !{!3874, !3875, !3876}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3871, file: !3872, line: 24, baseType: !85, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3871, file: !3872, line: 24, baseType: !85, size: 32, offset: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3871, file: !3872, line: 24, baseType: !85, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !319, file: !21, line: 458, baseType: !3878, size: 64, offset: 2496)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!85}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !319, file: !21, line: 460, baseType: !3882, size: 4032, align: 512, offset: 2560)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3883, size: 4032, elements: !3897)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !3884)
!3884 = !{!3885, !3886, !3887}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3883, file: !21, line: 363, baseType: !317, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3883, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3883, file: !21, line: 367, baseType: !3888, size: 448, offset: 128)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3888, file: !21, line: 320, baseType: !318, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3888, file: !21, line: 321, baseType: !3892, size: 384, offset: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3893, line: 40, size: 384, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3894 = !{!3895}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3892, file: !3893, line: 41, baseType: !3896, size: 384, align: 64)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 384, align: 64, elements: !2350)
!3897 = !{!3898}
!3898 = !DISubrange(count: 7)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !319, file: !21, line: 463, baseType: !3900, size: 192, offset: 6592)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3901, line: 8, size: 192, elements: !3902)
!3901 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3902 = !{!3903, !3904, !3905}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3900, file: !3901, line: 10, baseType: !7, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3900, file: !3901, line: 11, baseType: !770, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3900, file: !3901, line: 12, baseType: !3906, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3908, line: 59, size: 48, elements: !3909)
!3908 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3907, file: !3908, line: 60, baseType: !2078, size: 16)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3907, file: !3908, line: 61, baseType: !2078, size: 16, offset: 16)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3907, file: !3908, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3907, file: !3908, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3907, file: !3908, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3907, file: !3908, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !319, file: !21, line: 465, baseType: !473, size: 64, offset: 6784)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !319, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !319, file: !21, line: 470, baseType: !323, size: 128, offset: 6912)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !319, file: !21, line: 471, baseType: !3920, size: 64, offset: 7040)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3922, line: 33, size: 96, elements: !3923)
!3922 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3923 = !{!3924, !3925, !3926, !3927}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3921, file: !3922, line: 37, baseType: !85, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3921, file: !3922, line: 43, baseType: !85, size: 32, offset: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3921, file: !3922, line: 45, baseType: !393, size: 16, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3921, file: !3922, line: 47, baseType: !393, size: 16, offset: 80)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !319, file: !21, line: 476, baseType: !3929, size: 64, offset: 7104)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !3931)
!3931 = !{!3932, !3948, !3949, !3950}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3930, file: !21, line: 379, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3935, line: 204, baseType: !3936)
!3935 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3935, line: 197, size: 192, elements: !3937)
!3937 = !{!3938, !3940, !3941, !3942, !3944, !3946}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3936, file: !3935, line: 198, baseType: !3939, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3935, line: 21, baseType: !573)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3936, file: !3935, line: 199, baseType: !385, size: 8, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3936, file: !3935, line: 200, baseType: !385, size: 8, offset: 40)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3936, file: !3935, line: 201, baseType: !3943, size: 16, offset: 48)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3935, line: 17, baseType: !392)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3936, file: !3935, line: 202, baseType: !3945, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3935, line: 16, baseType: !577)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3936, file: !3935, line: 203, baseType: !3947, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3935, line: 22, baseType: !577)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3930, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3930, file: !21, line: 381, baseType: !423, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3930, file: !21, line: 382, baseType: !423, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !319, file: !21, line: 477, baseType: !3930, size: 256, offset: 7168)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !319, file: !21, line: 480, baseType: !3953, size: 64, offset: 7424)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !319, file: !21, line: 483, baseType: !3956, size: 64, offset: 7488)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !319, file: !21, line: 488, baseType: !423, size: 64, offset: 7552)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !319, file: !21, line: 492, baseType: !317, size: 64, offset: 7616)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !319, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !319, file: !21, line: 495, baseType: !317, size: 64, offset: 7744)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !319, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !319, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !319, file: !21, line: 500, baseType: !3965, size: 64, offset: 7872)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3967, line: 45, baseType: !3968)
!3967 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !319, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !319, file: !21, line: 504, baseType: !3971, size: 64, offset: 8000)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3974, line: 96, size: 192, elements: !3975)
!3974 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3975 = !{!3976, !3977, !4020, !4022}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3973, file: !3974, line: 97, baseType: !7, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3973, file: !3974, line: 98, baseType: !3978, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3974, line: 24, size: 3072, elements: !3980)
!3980 = !{!3981, !3983, !3984, !3985, !3986, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4017, !4018, !4019}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3979, file: !3974, line: 26, baseType: !3982, size: 128)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 128, elements: !2350)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3979, file: !3974, line: 27, baseType: !3982, size: 128, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3979, file: !3974, line: 28, baseType: !85, size: 32, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3979, file: !3974, line: 31, baseType: !353, size: 32, align: 512, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3979, file: !3974, line: 32, baseType: !3987, size: 960, offset: 576)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3988, line: 206, size: 960, elements: !3989)
!3988 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3989 = !{!3990, !3991, !3994, !3996, !3997, !3999}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3987, file: !3988, line: 207, baseType: !1120, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3987, file: !3988, line: 208, baseType: !3992, size: 256, offset: 64)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3993, size: 256, elements: !1512)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3987, file: !3988, line: 209, baseType: !3995, size: 256, offset: 320)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 256, elements: !1512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3987, file: !3988, line: 213, baseType: !459, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3987, file: !3988, line: 215, baseType: !3998, size: 256, offset: 640)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 256, elements: !1512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3987, file: !3988, line: 216, baseType: !381, size: 8, offset: 896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3979, file: !3974, line: 33, baseType: !473, size: 64, offset: 1536)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3979, file: !3974, line: 34, baseType: !473, size: 64, offset: 1600)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3979, file: !3974, line: 35, baseType: !1624, size: 8, offset: 1664)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3979, file: !3974, line: 36, baseType: !2846, size: 320, offset: 1728)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3979, file: !3974, line: 37, baseType: !2100, size: 256, offset: 2048)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3979, file: !3974, line: 38, baseType: !1117, size: 128, align: 64, offset: 2304)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3979, file: !3974, line: 39, baseType: !4007, size: 64, offset: 2432)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3974, line: 49, size: 768, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4008, file: !3974, line: 50, baseType: !353, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4008, file: !3974, line: 51, baseType: !3995, size: 256, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4008, file: !3974, line: 53, baseType: !3995, size: 256, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4008, file: !3974, line: 54, baseType: !473, size: 64, offset: 576)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4008, file: !3974, line: 55, baseType: !4007, size: 64, offset: 640)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4008, file: !3974, line: 56, baseType: !85, size: 32, offset: 704)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4008, file: !3974, line: 57, baseType: !85, size: 32, offset: 736)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3979, file: !3974, line: 40, baseType: !473, size: 64, offset: 2496)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3979, file: !3974, line: 42, baseType: !85, size: 32, offset: 2560)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3979, file: !3974, line: 43, baseType: !3972, size: 64, offset: 2624)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3973, file: !3974, line: 99, baseType: !4021, offset: 128)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !706, line: 211, elements: !707)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3973, file: !3974, line: 100, baseType: !4023, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3974, line: 63, size: 3008, elements: !4025)
!4025 = !{!4026, !4027, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4055}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4024, file: !3974, line: 64, baseType: !4007, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4024, file: !3974, line: 65, baseType: !4028, size: 192, offset: 64)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4007, size: 192, elements: !424)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4024, file: !3974, line: 67, baseType: !85, size: 32, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4024, file: !3974, line: 68, baseType: !803, size: 256, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4024, file: !3974, line: 69, baseType: !353, size: 32, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4024, file: !3974, line: 70, baseType: !803, size: 256, offset: 640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4024, file: !3974, line: 71, baseType: !473, size: 64, offset: 896)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4024, file: !3974, line: 72, baseType: !473, size: 64, offset: 960)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4024, file: !3974, line: 73, baseType: !473, size: 64, offset: 1024)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4024, file: !3974, line: 74, baseType: !473, size: 64, offset: 1088)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4024, file: !3974, line: 75, baseType: !473, size: 64, offset: 1152)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4024, file: !3974, line: 76, baseType: !473, size: 64, offset: 1216)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4024, file: !3974, line: 77, baseType: !473, size: 64, offset: 1280)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4024, file: !3974, line: 78, baseType: !473, size: 64, offset: 1344)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4024, file: !3974, line: 79, baseType: !1624, size: 8, offset: 1408)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4024, file: !3974, line: 80, baseType: !473, size: 64, offset: 1472)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4024, file: !3974, line: 81, baseType: !803, size: 256, offset: 1536)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4024, file: !3974, line: 82, baseType: !2216, size: 256, offset: 1792)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4024, file: !3974, line: 84, baseType: !373, size: 32, offset: 2048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4024, file: !3974, line: 87, baseType: !473, size: 64, offset: 2112)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4024, file: !3974, line: 88, baseType: !473, size: 64, offset: 2176)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4024, file: !3974, line: 89, baseType: !4049, size: 704, offset: 2240)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2101, line: 111, size: 704, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4049, file: !2101, line: 112, baseType: !2100, size: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4049, file: !2101, line: 113, baseType: !2846, size: 320, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4049, file: !2101, line: 116, baseType: !3140, size: 64, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4049, file: !2101, line: 117, baseType: !85, size: 32, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4024, file: !3974, line: 90, baseType: !3972, size: 64, offset: 2944)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !319, file: !21, line: 515, baseType: !4057, size: 64, offset: 8064)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4059, line: 117, size: 128, elements: !4060)
!4059 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4060 = !{!4061, !4062, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4058, file: !4059, line: 118, baseType: !1567, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4058, file: !4059, line: 119, baseType: !1567, size: 32, offset: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4058, file: !4059, line: 120, baseType: !459, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !319, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !319, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !319, file: !21, line: 520, baseType: !4067, size: 64, offset: 8192)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !319, file: !21, line: 523, baseType: !4069, size: 64, offset: 8256)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !319, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !319, file: !21, line: 525, baseType: !4074, size: 64, offset: 8384)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !319, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !319, file: !21, line: 533, baseType: !317, size: 64, offset: 8512)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !319, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !319, file: !21, line: 535, baseType: !4081, size: 64, offset: 8640)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !319, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !319, file: !21, line: 539, baseType: !85, size: 32, offset: 8736)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !319, file: !21, line: 540, baseType: !4085, size: 64, offset: 8768)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4087, line: 32, size: 64, elements: !4088)
!4087 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4086, file: !4087, line: 33, baseType: !1567, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4086, file: !4087, line: 34, baseType: !1567, size: 32, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !319, file: !21, line: 563, baseType: !323, size: 128, offset: 8832)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !319, file: !21, line: 565, baseType: !323, size: 128, offset: 8960)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !319, file: !21, line: 568, baseType: !4094, size: 64, offset: 9088)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !319, file: !21, line: 570, baseType: !373, size: 32, offset: 9152)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !2878, line: 83, size: 2368, elements: !4098)
!4098 = !{!4099, !4110, !4111, !4112, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4130, !4131, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4099 = !DIDerivedType(tag: DW_TAG_member, scope: !4097, file: !2878, line: 84, baseType: !4100, size: 32)
!4100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4097, file: !2878, line: 84, size: 32, elements: !4101)
!4101 = !{!4102, !4109}
!4102 = !DIDerivedType(tag: DW_TAG_member, scope: !4100, file: !2878, line: 90, baseType: !4103, size: 32)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4100, file: !2878, line: 90, size: 32, elements: !4104)
!4104 = !{!4105, !4106, !4107, !4108}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !4103, file: !2878, line: 91, baseType: !383, size: 8)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !4103, file: !2878, line: 93, baseType: !383, size: 8, offset: 8)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !4103, file: !2878, line: 95, baseType: !383, size: 8, offset: 16)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !4103, file: !2878, line: 96, baseType: !383, size: 8, offset: 24)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !4100, file: !2878, line: 99, baseType: !573, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !4097, file: !2878, line: 101, baseType: !383, size: 8, offset: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !4097, file: !2878, line: 104, baseType: !85, size: 32, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !4097, file: !2878, line: 107, baseType: !4113, size: 160, offset: 96)
!4113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 160, elements: !4114)
!4114 = !{!4115}
!4115 = !DISubrange(count: 5)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !4097, file: !2878, line: 109, baseType: !383, size: 8, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !4097, file: !2878, line: 110, baseType: !383, size: 8, offset: 264)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !4097, file: !2878, line: 112, baseType: !383, size: 8, offset: 272)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !4097, file: !2878, line: 113, baseType: !383, size: 8, offset: 280)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !4097, file: !2878, line: 115, baseType: !573, size: 32, offset: 288)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !4097, file: !2878, line: 117, baseType: !85, size: 32, offset: 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !4097, file: !2878, line: 123, baseType: !4123, size: 768, offset: 384)
!4123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4097, file: !2878, line: 123, size: 768, elements: !4124)
!4124 = !{!4125, !4129}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !4123, file: !2878, line: 124, baseType: !4126, size: 768)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 768, elements: !4127)
!4127 = !{!4128}
!4128 = !DISubrange(count: 24)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !4123, file: !2878, line: 125, baseType: !473, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !4097, file: !2878, line: 127, baseType: !2267, size: 128, offset: 1152)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !4097, file: !2878, line: 128, baseType: !4132, size: 512, offset: 1280)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 512, elements: !428)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !4097, file: !2878, line: 130, baseType: !7, size: 32, offset: 1792)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !4097, file: !2878, line: 131, baseType: !85, size: 32, offset: 1824)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !4097, file: !2878, line: 133, baseType: !85, size: 32, offset: 1856)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !4097, file: !2878, line: 134, baseType: !85, size: 32, offset: 1888)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !4097, file: !2878, line: 135, baseType: !85, size: 32, offset: 1920)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !4097, file: !2878, line: 136, baseType: !85, size: 32, offset: 1952)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !4097, file: !2878, line: 137, baseType: !473, size: 64, offset: 1984)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !4097, file: !2878, line: 139, baseType: !576, size: 64, offset: 2048)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !4097, file: !2878, line: 141, baseType: !391, size: 16, offset: 2112)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !4097, file: !2878, line: 142, baseType: !391, size: 16, offset: 2128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !4097, file: !2878, line: 143, baseType: !391, size: 16, offset: 2144)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !4097, file: !2878, line: 144, baseType: !391, size: 16, offset: 2160)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !4097, file: !2878, line: 146, baseType: !391, size: 16, offset: 2176)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !4097, file: !2878, line: 148, baseType: !391, size: 16, offset: 2192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !4097, file: !2878, line: 150, baseType: !391, size: 16, offset: 2208)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !4097, file: !2878, line: 152, baseType: !391, size: 16, offset: 2224)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !4097, file: !2878, line: 153, baseType: !391, size: 16, offset: 2240)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !4097, file: !2878, line: 154, baseType: !391, size: 16, offset: 2256)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !4097, file: !2878, line: 156, baseType: !391, size: 16, offset: 2272)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !4097, file: !2878, line: 158, baseType: !1624, size: 8, offset: 2288)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !4097, file: !2878, line: 159, baseType: !572, size: 32, offset: 2304)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !4097, file: !2878, line: 161, baseType: !381, size: 8, offset: 2336)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4097, file: !2878, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!4158 = !{!0, !4159, !4164, !4168, !4173, !4178, !4183, !4188, !4190, !4193, !4198, !4200, !4207, !4212, !4218, !4220, !4222, !4573}
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !4161, isLocal: true, isDefinition: true)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 80, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 10)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(name: "__exitcall_cpuid_exit", scope: !2, file: !3, line: 187, type: !4166, isLocal: true, isDefinition: true)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4167, line: 120, baseType: !4094)
!4167 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author269", scope: !2, file: !3, line: 189, type: !4170, isLocal: true, isDefinition: true, align: 8)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 352, elements: !4171)
!4171 = !{!4172}
!4172 = !DISubrange(count: 44)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description270", scope: !2, file: !3, line: 190, type: !4175, isLocal: true, isDefinition: true, align: 8)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 344, elements: !4176)
!4176 = !{!4177}
!4177 = !DISubrange(count: 43)
!4178 = !DIGlobalVariableExpression(var: !4179, expr: !DIExpression())
!4179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file271", scope: !2, file: !3, line: 191, type: !4180, isLocal: true, isDefinition: true, align: 8)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 264, elements: !4181)
!4181 = !{!4182}
!4182 = !DISubrange(count: 33)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license272", scope: !2, file: !3, line: 191, type: !4185, isLocal: true, isDefinition: true, align: 8)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 144, elements: !4186)
!4186 = !{!4187}
!4187 = !DISubrange(count: 18)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(name: "cpuhp_cpuid_state", scope: !2, file: !3, line: 43, type: !117, isLocal: true, isDefinition: true)
!4190 = !DIGlobalVariableExpression(var: !4191, expr: !DIExpression())
!4191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !4192, isLocal: true, isDefinition: true)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 344, elements: !4176)
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !4195, isLocal: true, isDefinition: true)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 136, elements: !4196)
!4196 = !{!4197}
!4197 = !DISubrange(count: 17)
!4198 = !DIGlobalVariableExpression(var: !4199, expr: !DIExpression())
!4199 = distinct !DIGlobalVariable(name: "cpuid_fops", scope: !2, file: !3, line: 119, type: !1739, isLocal: true, isDefinition: true)
!4200 = !DIGlobalVariableExpression(var: !4201, expr: !DIExpression())
!4201 = distinct !DIGlobalVariable(name: "__key", scope: !4202, file: !2217, line: 87, type: !705, isLocal: true, isDefinition: true)
!4202 = distinct !DISubprogram(name: "init_completion", scope: !2217, file: !2217, line: 84, type: !4203, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !2215}
!4205 = !{!4206}
!4206 = !DILocalVariable(name: "x", arg: 1, scope: !4202, file: !2217, line: 84, type: !2215)
!4207 = !DIGlobalVariableExpression(var: !4208, expr: !DIExpression())
!4208 = distinct !DIGlobalVariable(scope: null, file: !2217, line: 87, type: !4209, isLocal: true, isDefinition: true)
!4209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 72, elements: !4210)
!4210 = !{!4211}
!4211 = !DISubrange(count: 9)
!4212 = !DIGlobalVariableExpression(var: !4213, expr: !DIExpression())
!4213 = distinct !DIGlobalVariable(scope: null, file: !4214, line: 249, type: !4215, isLocal: true, isDefinition: true)
!4214 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 224, elements: !4216)
!4216 = !{!4217}
!4217 = !DISubrange(count: 28)
!4218 = !DIGlobalVariableExpression(var: !4219, expr: !DIExpression())
!4219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !1610, isLocal: true, isDefinition: true)
!4220 = !DIGlobalVariableExpression(var: !4221, expr: !DIExpression())
!4221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !1610, isLocal: true, isDefinition: true)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(name: "cpuid_class", scope: !2, file: !3, line: 131, type: !4224, isLocal: true, isDefinition: true)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4226, line: 52, size: 768, elements: !4227)
!4226 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4227 = !{!4228, !4229, !4230, !4231, !4553, !4557, !4561, !4562, !4563, !4564, !4568, !4572}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4225, file: !4226, line: 53, baseType: !342, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4225, file: !4226, line: 55, baseType: !475, size: 64, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4225, file: !4226, line: 56, baseType: !475, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4225, file: !4226, line: 58, baseType: !4232, size: 64, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!85, !4235, !418}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4238)
!4238 = !{!4239, !4240, !4242, !4245, !4246, !4294, !4364, !4365, !4366, !4367, !4368, !4375, !4467, !4480, !4490, !4494, !4496, !4497, !4498, !4502, !4509, !4510, !4513, !4516, !4520, !4523, !4524, !4525, !4526, !4527, !4528, !4530, !4531, !4532, !4535, !4538, !4547, !4548, !4549, !4550, !4551, !4552}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4237, file: !70, line: 706, baseType: !338, size: 512)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4237, file: !70, line: 707, baseType: !4241, size: 64, offset: 512)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4237, file: !70, line: 709, baseType: !4243, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4237, file: !70, line: 711, baseType: !342, size: 64, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4237, file: !70, line: 712, baseType: !4247, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4249)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4254, !4259, !4263}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4249, file: !70, line: 90, baseType: !342, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4249, file: !70, line: 91, baseType: !475, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4249, file: !70, line: 92, baseType: !4232, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4249, file: !70, line: 93, baseType: !4255, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!423, !4235, !4258, !3651, !3652}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4249, file: !70, line: 95, baseType: !4260, size: 64, offset: 256)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !4241}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4249, file: !70, line: 97, baseType: !4264, size: 64, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4266)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4267)
!4267 = !{!4268, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4266, file: !77, line: 287, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!85, !4241}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4266, file: !77, line: 288, baseType: !4260, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4266, file: !77, line: 289, baseType: !4269, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4266, file: !77, line: 290, baseType: !4269, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4266, file: !77, line: 291, baseType: !4269, size: 64, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4266, file: !77, line: 292, baseType: !4269, size: 64, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4266, file: !77, line: 293, baseType: !4269, size: 64, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4266, file: !77, line: 294, baseType: !4269, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4266, file: !77, line: 295, baseType: !4269, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4266, file: !77, line: 296, baseType: !4269, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4266, file: !77, line: 297, baseType: !4269, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4266, file: !77, line: 298, baseType: !4269, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4266, file: !77, line: 299, baseType: !4269, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4266, file: !77, line: 300, baseType: !4269, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4266, file: !77, line: 301, baseType: !4269, size: 64, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4266, file: !77, line: 302, baseType: !4269, size: 64, offset: 960)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4266, file: !77, line: 303, baseType: !4269, size: 64, offset: 1024)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4266, file: !77, line: 304, baseType: !4269, size: 64, offset: 1088)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4266, file: !77, line: 305, baseType: !4269, size: 64, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4266, file: !77, line: 306, baseType: !4269, size: 64, offset: 1216)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4266, file: !77, line: 307, baseType: !4269, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4266, file: !77, line: 308, baseType: !4269, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4266, file: !77, line: 309, baseType: !4269, size: 64, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4237, file: !70, line: 714, baseType: !4295, size: 64, offset: 768)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4298, line: 80, size: 1344, elements: !4299)
!4298 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4299 = !{!4300, !4301, !4302, !4303, !4304, !4305, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4363}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4297, file: !4298, line: 81, baseType: !342, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4297, file: !4298, line: 82, baseType: !342, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4297, file: !4298, line: 83, baseType: !475, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4297, file: !4298, line: 84, baseType: !475, size: 64, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4297, file: !4298, line: 85, baseType: !475, size: 64, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4297, file: !4298, line: 87, baseType: !4306, size: 64, offset: 320)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!85, !4241, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4322, !4326, !4327, !4328, !4329, !4330, !4338, !4339, !4340, !4341, !4342, !4343}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4310, file: !64, line: 97, baseType: !342, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4310, file: !64, line: 98, baseType: !4295, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4310, file: !64, line: 100, baseType: !318, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4310, file: !64, line: 101, baseType: !342, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4310, file: !64, line: 103, baseType: !1624, size: 8, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4310, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4310, file: !64, line: 106, baseType: !4319, size: 64, offset: 320)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4321)
!4321 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4310, file: !64, line: 107, baseType: !4323, size: 64, offset: 384)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4325)
!4325 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4310, file: !64, line: 109, baseType: !4269, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4310, file: !64, line: 110, baseType: !4260, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4310, file: !64, line: 111, baseType: !4269, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4310, file: !64, line: 112, baseType: !4260, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4310, file: !64, line: 113, baseType: !4331, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!85, !4241, !4334}
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4335)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4336)
!4336 = !{!4337}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4335, file: !77, line: 59, baseType: !85, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4310, file: !64, line: 114, baseType: !4269, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4310, file: !64, line: 115, baseType: !475, size: 64, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4310, file: !64, line: 116, baseType: !475, size: 64, offset: 896)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4310, file: !64, line: 118, baseType: !4264, size: 64, offset: 960)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4310, file: !64, line: 119, baseType: !4260, size: 64, offset: 1024)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4310, file: !64, line: 121, baseType: !4344, size: 64, offset: 1088)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4297, file: !4298, line: 88, baseType: !4232, size: 64, offset: 384)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4297, file: !4298, line: 89, baseType: !4269, size: 64, offset: 448)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4297, file: !4298, line: 90, baseType: !4260, size: 64, offset: 512)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4297, file: !4298, line: 91, baseType: !4260, size: 64, offset: 576)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4297, file: !4298, line: 92, baseType: !4260, size: 64, offset: 640)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4297, file: !4298, line: 94, baseType: !4269, size: 64, offset: 704)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4297, file: !4298, line: 95, baseType: !4269, size: 64, offset: 768)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !4298, line: 97, baseType: !4331, size: 64, offset: 832)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !4298, line: 98, baseType: !4269, size: 64, offset: 896)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4297, file: !4298, line: 100, baseType: !4269, size: 64, offset: 960)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4297, file: !4298, line: 102, baseType: !4269, size: 64, offset: 1024)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4297, file: !4298, line: 103, baseType: !4260, size: 64, offset: 1088)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4297, file: !4298, line: 105, baseType: !4264, size: 64, offset: 1152)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4297, file: !4298, line: 107, baseType: !4360, size: 64, offset: 1216)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4298, line: 107, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4297, file: !4298, line: 109, baseType: !1624, size: 8, offset: 1280)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4237, file: !70, line: 715, baseType: !4309, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4237, file: !70, line: 717, baseType: !317, size: 64, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4237, file: !70, line: 719, baseType: !317, size: 64, offset: 960)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4237, file: !70, line: 721, baseType: !803, size: 256, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4237, file: !70, line: 725, baseType: !4369, size: 448, offset: 1280)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4369, file: !70, line: 518, baseType: !323, size: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4369, file: !70, line: 519, baseType: !323, size: 128, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4369, file: !70, line: 520, baseType: !323, size: 128, offset: 256)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4369, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4237, file: !70, line: 726, baseType: !4376, size: 2496, offset: 1728)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4460, !4464}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4376, file: !77, line: 664, baseType: !4334, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4376, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4376, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4376, file: !77, line: 667, baseType: !1624, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4376, file: !77, line: 668, baseType: !1624, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4376, file: !77, line: 669, baseType: !1624, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4376, file: !77, line: 670, baseType: !1624, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4376, file: !77, line: 671, baseType: !1624, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4376, file: !77, line: 672, baseType: !1624, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4376, file: !77, line: 673, baseType: !1624, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4376, file: !77, line: 674, baseType: !1624, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4376, file: !77, line: 675, baseType: !572, size: 32, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4376, file: !77, line: 676, baseType: !353, size: 32, offset: 96)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4376, file: !77, line: 678, baseType: !323, size: 128, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4376, file: !77, line: 679, baseType: !2216, size: 256, offset: 256)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4376, file: !77, line: 680, baseType: !4394, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4396, line: 43, size: 1536, elements: !4397)
!4396 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4395, file: !4396, line: 44, baseType: !342, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4395, file: !4396, line: 45, baseType: !85, size: 32, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4395, file: !4396, line: 46, baseType: !323, size: 128, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4395, file: !4396, line: 47, baseType: !353, size: 32, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4395, file: !4396, line: 48, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4395, file: !4396, line: 49, baseType: !2846, size: 320, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4395, file: !4396, line: 50, baseType: !473, size: 64, offset: 704)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4395, file: !4396, line: 51, baseType: !1268, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4395, file: !4396, line: 52, baseType: !1268, size: 64, offset: 832)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4395, file: !4396, line: 53, baseType: !1268, size: 64, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4395, file: !4396, line: 54, baseType: !1268, size: 64, offset: 960)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4395, file: !4396, line: 55, baseType: !1268, size: 64, offset: 1024)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4395, file: !4396, line: 56, baseType: !473, size: 64, offset: 1088)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4395, file: !4396, line: 57, baseType: !473, size: 64, offset: 1152)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4395, file: !4396, line: 58, baseType: !473, size: 64, offset: 1216)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4395, file: !4396, line: 59, baseType: !473, size: 64, offset: 1280)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4395, file: !4396, line: 60, baseType: !473, size: 64, offset: 1344)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4395, file: !4396, line: 61, baseType: !4241, size: 64, offset: 1408)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4395, file: !4396, line: 62, baseType: !1624, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4395, file: !4396, line: 63, baseType: !1624, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4376, file: !77, line: 681, baseType: !1624, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4376, file: !77, line: 682, baseType: !1624, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4376, file: !77, line: 683, baseType: !1624, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4376, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4376, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4376, file: !77, line: 690, baseType: !1260, size: 512, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4376, file: !77, line: 691, baseType: !576, size: 64, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4376, file: !77, line: 692, baseType: !2100, size: 256, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4376, file: !77, line: 693, baseType: !1110, size: 192, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4376, file: !77, line: 694, baseType: !4403, size: 64, offset: 1664)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4376, file: !77, line: 695, baseType: !373, size: 32, offset: 1728)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4376, file: !77, line: 696, baseType: !373, size: 32, offset: 1760)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4376, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4376, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4376, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4376, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4376, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4376, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4376, file: !77, line: 703, baseType: !1624, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4376, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4376, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4376, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4376, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4376, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4376, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4376, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4376, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4376, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4376, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4376, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4376, file: !77, line: 715, baseType: !576, size: 64, offset: 2048)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4376, file: !77, line: 716, baseType: !576, size: 64, offset: 2112)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4376, file: !77, line: 717, baseType: !576, size: 64, offset: 2176)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4376, file: !77, line: 718, baseType: !576, size: 64, offset: 2240)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4376, file: !77, line: 720, baseType: !4455, size: 64, offset: 2304)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4456, file: !77, line: 633, baseType: !353, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4456, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4376, file: !77, line: 721, baseType: !4461, size: 64, offset: 2368)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !4241, !1567}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4376, file: !77, line: 722, baseType: !4465, size: 64, offset: 2432)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4237, file: !70, line: 727, baseType: !4468, size: 64, offset: 4224)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4470)
!4470 = !{!4471, !4472, !4473, !4477, !4478, !4479}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4469, file: !77, line: 743, baseType: !4266, size: 1472)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4469, file: !77, line: 744, baseType: !4269, size: 64, offset: 1472)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4469, file: !77, line: 745, baseType: !4474, size: 64, offset: 1536)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !4241, !1624}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4469, file: !77, line: 746, baseType: !4269, size: 64, offset: 1600)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4469, file: !77, line: 747, baseType: !4260, size: 64, offset: 1664)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4469, file: !77, line: 748, baseType: !4260, size: 64, offset: 1728)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4237, file: !70, line: 736, baseType: !4481, size: 128, offset: 4288)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4482)
!4482 = !{!4483, !4487}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4481, file: !70, line: 531, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4486, line: 13, flags: DIFlagFwdDecl)
!4486 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4481, file: !70, line: 532, baseType: !4488, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4237, file: !70, line: 738, baseType: !4491, size: 64, offset: 4416)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4237, file: !70, line: 740, baseType: !4495, size: 64, offset: 4480)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4237, file: !70, line: 741, baseType: !576, size: 64, offset: 4544)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4237, file: !70, line: 746, baseType: !576, size: 64, offset: 4608)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4237, file: !70, line: 747, baseType: !4499, size: 64, offset: 4672)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4501 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4237, file: !70, line: 749, baseType: !4503, size: 64, offset: 4736)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4505)
!4505 = !{!4506, !4507, !4508}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4504, file: !70, line: 433, baseType: !7, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4504, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4504, file: !70, line: 435, baseType: !473, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4237, file: !70, line: 751, baseType: !323, size: 128, offset: 4800)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4237, file: !70, line: 762, baseType: !4511, size: 64, offset: 4928)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4237, file: !70, line: 770, baseType: !4514, offset: 4992)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4515, line: 5, elements: !707)
!4515 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4237, file: !70, line: 772, baseType: !4517, size: 64, offset: 4992)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4519, line: 18, flags: DIFlagFwdDecl)
!4519 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4237, file: !70, line: 773, baseType: !4521, size: 64, offset: 5056)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4298, line: 22, flags: DIFlagFwdDecl)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4237, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4237, file: !70, line: 778, baseType: !659, size: 32, offset: 5152)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4237, file: !70, line: 779, baseType: !572, size: 32, offset: 5184)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4237, file: !70, line: 781, baseType: !353, size: 32, offset: 5216)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4237, file: !70, line: 782, baseType: !323, size: 128, offset: 5248)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4237, file: !70, line: 784, baseType: !4529, size: 64, offset: 5376)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4237, file: !70, line: 785, baseType: !475, size: 64, offset: 5440)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4237, file: !70, line: 787, baseType: !4260, size: 64, offset: 5504)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4237, file: !70, line: 788, baseType: !4533, size: 64, offset: 5568)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4237, file: !70, line: 789, baseType: !4536, size: 64, offset: 5632)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4237, file: !70, line: 791, baseType: !4539, size: 64, offset: 5696)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4540, file: !70, line: 598, baseType: !92, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4540, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4540, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4540, file: !70, line: 601, baseType: !1624, size: 8, offset: 96)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4540, file: !70, line: 602, baseType: !1624, size: 8, offset: 104)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4237, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4237, file: !70, line: 795, baseType: !1624, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4237, file: !70, line: 796, baseType: !1624, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4237, file: !70, line: 797, baseType: !1624, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4237, file: !70, line: 798, baseType: !1624, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4237, file: !70, line: 799, baseType: !1624, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4225, file: !4226, line: 59, baseType: !4554, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!423, !4235, !4258}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4225, file: !4226, line: 61, baseType: !4558, size: 64, offset: 320)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4529}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4225, file: !4226, line: 62, baseType: !4260, size: 64, offset: 384)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4225, file: !4226, line: 64, baseType: !4269, size: 64, offset: 448)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4225, file: !4226, line: 66, baseType: !3619, size: 64, offset: 512)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4225, file: !4226, line: 67, baseType: !4565, size: 64, offset: 576)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!2061, !4235}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4225, file: !4226, line: 69, baseType: !4569, size: 64, offset: 640)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{null, !4235, !3651, !3652}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4225, file: !4226, line: 71, baseType: !4264, size: 64, offset: 704)
!4573 = !DIGlobalVariableExpression(var: !4574, expr: !DIExpression())
!4574 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !4575, isLocal: true, isDefinition: true)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 104, elements: !4576)
!4576 = !{!4577}
!4577 = !DISubrange(count: 13)
!4578 = !{i32 7, !"Dwarf Version", i32 5}
!4579 = !{i32 2, !"Debug Info Version", i32 3}
!4580 = !{i32 1, !"wchar_size", i32 2}
!4581 = !{i32 8, !"cf-protection-branch", i32 1}
!4582 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4583 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4584 = !{i32 1, !"Code Model", i32 2}
!4585 = !{i32 1, !"override-stack-alignment", i32 8}
!4586 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4587 = distinct !DISubprogram(name: "__initstub__kmod_cpuid__267_179_cpuid_init6", scope: !3, file: !3, line: 179, type: !3879, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4588 = !DILocation(line: 179, column: 1, scope: !4587)
!4589 = distinct !DISubprogram(name: "cpuid_init", scope: !3, file: !3, line: 151, type: !3879, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4590)
!4590 = !{!4591, !4592, !4593}
!4591 = !DILocalVariable(name: "err", scope: !4589, file: !3, line: 153, type: !85)
!4592 = !DILabel(scope: !4589, name: "out_class", file: !3, line: 173)
!4593 = !DILabel(scope: !4589, name: "out_chrdev", file: !3, line: 175)
!4594 = !DILocation(line: 153, column: 2, scope: !4589)
!4595 = !DILocation(line: 153, column: 6, scope: !4589)
!4596 = !DILocation(line: 155, column: 6, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 155, column: 6)
!4598 = !DILocation(line: 155, column: 6, scope: !4589)
!4599 = !DILocation(line: 157, column: 3, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 157, column: 3)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 156, column: 37)
!4602 = !DILocation(line: 157, column: 3, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 157, column: 3)
!4604 = !DILocation(line: 159, column: 3, scope: !4601)
!4605 = !DILocation(line: 161, column: 8, scope: !4589)
!4606 = !DILocation(line: 161, column: 6, scope: !4589)
!4607 = !DILocation(line: 162, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 162, column: 6)
!4609 = !DILocation(line: 162, column: 6, scope: !4589)
!4610 = !DILocation(line: 163, column: 3, scope: !4608)
!4611 = !DILocation(line: 165, column: 8, scope: !4589)
!4612 = !DILocation(line: 165, column: 6, scope: !4589)
!4613 = !DILocation(line: 167, column: 6, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 167, column: 6)
!4615 = !DILocation(line: 167, column: 10, scope: !4614)
!4616 = !DILocation(line: 167, column: 6, scope: !4589)
!4617 = !DILocation(line: 168, column: 3, scope: !4614)
!4618 = !DILocation(line: 170, column: 22, scope: !4589)
!4619 = !DILocation(line: 170, column: 20, scope: !4589)
!4620 = !DILocation(line: 171, column: 2, scope: !4589)
!4621 = !DILocation(line: 173, column: 1, scope: !4589)
!4622 = !DILocation(line: 174, column: 2, scope: !4589)
!4623 = !DILocation(line: 175, column: 1, scope: !4589)
!4624 = !DILocation(line: 176, column: 2, scope: !4589)
!4625 = !DILocation(line: 177, column: 9, scope: !4589)
!4626 = !DILocation(line: 177, column: 2, scope: !4589)
!4627 = !DILocation(line: 178, column: 1, scope: !4589)
!4628 = distinct !DISubprogram(name: "cpuid_exit", scope: !3, file: !3, line: 181, type: !2464, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4629 = !DILocation(line: 183, column: 21, scope: !4628)
!4630 = !DILocation(line: 183, column: 2, scope: !4628)
!4631 = !DILocation(line: 184, column: 2, scope: !4628)
!4632 = !DILocation(line: 185, column: 2, scope: !4628)
!4633 = !DILocation(line: 186, column: 1, scope: !4628)
!4634 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !118, file: !118, line: 444, type: !4635, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !117}
!4637 = !{!4638}
!4638 = !DILocalVariable(name: "state", arg: 1, scope: !4634, file: !118, line: 444, type: !117)
!4639 = !DILocation(line: 444, column: 56, scope: !4634)
!4640 = !DILocation(line: 446, column: 23, scope: !4634)
!4641 = !DILocation(line: 446, column: 2, scope: !4634)
!4642 = !DILocation(line: 447, column: 1, scope: !4634)
!4643 = !DISubprogram(name: "class_unregister", scope: !4226, file: !4226, line: 81, type: !4559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4644 = !DISubprogram(name: "__unregister_chrdev", scope: !28, file: !28, line: 2597, type: !4645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{null, !7, !7, !7, !342}
!4647 = !DISubprogram(name: "__register_chrdev", scope: !28, file: !28, line: 2594, type: !4648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!85, !7, !7, !7, !342, !1738}
!4650 = !DISubprogram(name: "_printk", scope: !4651, file: !4651, line: 153, type: !4652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4651 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!85, !342, null}
!4654 = !DISubprogram(name: "class_register", scope: !4226, file: !4226, line: 80, type: !4655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!85, !4529}
!4657 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !118, file: !118, line: 283, type: !4658, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4663)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!85, !117, !342, !4660, !4660}
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!85, !7}
!4663 = !{!4664, !4665, !4666, !4667}
!4664 = !DILocalVariable(name: "state", arg: 1, scope: !4657, file: !118, line: 283, type: !117)
!4665 = !DILocalVariable(name: "name", arg: 2, scope: !4657, file: !118, line: 284, type: !342)
!4666 = !DILocalVariable(name: "startup", arg: 3, scope: !4657, file: !118, line: 285, type: !4660)
!4667 = !DILocalVariable(name: "teardown", arg: 4, scope: !4657, file: !118, line: 286, type: !4660)
!4668 = !DILocation(line: 283, column: 54, scope: !4657)
!4669 = !DILocation(line: 284, column: 21, scope: !4657)
!4670 = !DILocation(line: 285, column: 15, scope: !4657)
!4671 = !DILocation(line: 286, column: 15, scope: !4657)
!4672 = !DILocation(line: 288, column: 29, scope: !4657)
!4673 = !DILocation(line: 288, column: 36, scope: !4657)
!4674 = !DILocation(line: 288, column: 48, scope: !4657)
!4675 = !DILocation(line: 288, column: 57, scope: !4657)
!4676 = !DILocation(line: 288, column: 9, scope: !4657)
!4677 = !DILocation(line: 288, column: 2, scope: !4657)
!4678 = distinct !DISubprogram(name: "cpuid_device_create", scope: !3, file: !3, line: 136, type: !4661, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4679)
!4679 = !{!4680, !4681}
!4680 = !DILocalVariable(name: "cpu", arg: 1, scope: !4678, file: !3, line: 136, type: !7)
!4681 = !DILocalVariable(name: "dev", scope: !4678, file: !3, line: 138, type: !4241)
!4682 = !DILocation(line: 136, column: 45, scope: !4678)
!4683 = !DILocation(line: 138, column: 2, scope: !4678)
!4684 = !DILocation(line: 138, column: 17, scope: !4678)
!4685 = !DILocation(line: 140, column: 42, scope: !4678)
!4686 = !DILocation(line: 141, column: 17, scope: !4678)
!4687 = !DILocation(line: 140, column: 8, scope: !4678)
!4688 = !DILocation(line: 140, column: 6, scope: !4678)
!4689 = !DILocation(line: 142, column: 25, scope: !4678)
!4690 = !DILocation(line: 142, column: 9, scope: !4678)
!4691 = !DILocation(line: 143, column: 1, scope: !4678)
!4692 = !DILocation(line: 142, column: 2, scope: !4678)
!4693 = distinct !DISubprogram(name: "cpuid_device_destroy", scope: !3, file: !3, line: 145, type: !4661, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4694)
!4694 = !{!4695}
!4695 = !DILocalVariable(name: "cpu", arg: 1, scope: !4693, file: !3, line: 145, type: !7)
!4696 = !DILocation(line: 145, column: 46, scope: !4693)
!4697 = !DILocation(line: 147, column: 31, scope: !4693)
!4698 = !DILocation(line: 147, column: 2, scope: !4693)
!4699 = !DILocation(line: 148, column: 2, scope: !4693)
!4700 = distinct !DISubprogram(name: "cpuid_read", scope: !3, file: !3, line: 61, type: !1749, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4701)
!4701 = !{!4702, !4703, !4704, !4705, !4706, !4707, !4719, !4720, !4721, !4722, !4723}
!4702 = !DILocalVariable(name: "file", arg: 1, scope: !4700, file: !3, line: 61, type: !1463)
!4703 = !DILocalVariable(name: "buf", arg: 2, scope: !4700, file: !3, line: 61, type: !423)
!4704 = !DILocalVariable(name: "count", arg: 3, scope: !4700, file: !3, line: 62, type: !470)
!4705 = !DILocalVariable(name: "ppos", arg: 4, scope: !4700, file: !3, line: 62, type: !1751)
!4706 = !DILocalVariable(name: "tmp", scope: !4700, file: !3, line: 64, type: !423)
!4707 = !DILocalVariable(name: "cmd", scope: !4700, file: !3, line: 65, type: !4708)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuid_regs_done", file: !3, line: 45, size: 384, elements: !4709)
!4709 = !{!4710, !4718}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4708, file: !3, line: 46, baseType: !4711, size: 128)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuid_regs", file: !4712, line: 11, size: 128, elements: !4713)
!4712 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!4713 = !{!4714, !4715, !4716, !4717}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !4711, file: !4712, line: 12, baseType: !572, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !4711, file: !4712, line: 12, baseType: !572, size: 32, offset: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !4711, file: !4712, line: 12, baseType: !572, size: 32, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !4711, file: !4712, line: 12, baseType: !572, size: 32, offset: 96)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4708, file: !3, line: 47, baseType: !2216, size: 256, offset: 128)
!4719 = !DILocalVariable(name: "cpu", scope: !4700, file: !3, line: 66, type: !85)
!4720 = !DILocalVariable(name: "pos", scope: !4700, file: !3, line: 67, type: !576)
!4721 = !DILocalVariable(name: "bytes", scope: !4700, file: !3, line: 68, type: !455)
!4722 = !DILocalVariable(name: "err", scope: !4700, file: !3, line: 69, type: !85)
!4723 = !DILocalVariable(name: "csd", scope: !4724, file: !3, line: 76, type: !4727)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 75, column: 29)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 75, column: 2)
!4726 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 75, column: 2)
!4727 = !DIDerivedType(tag: DW_TAG_typedef, name: "call_single_data_t", file: !4728, line: 33, baseType: !4729, align: 256)
!4728 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !4728, line: 23, size: 256, elements: !4730)
!4730 = !{!4731, !4732, !4734}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4729, file: !4728, line: 24, baseType: !1155, size: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4729, file: !4728, line: 25, baseType: !4733, size: 64, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !4728, line: 17, baseType: !3208)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4729, file: !4728, line: 26, baseType: !317, size: 64, offset: 192)
!4735 = !DILocation(line: 61, column: 40, scope: !4700)
!4736 = !DILocation(line: 61, column: 59, scope: !4700)
!4737 = !DILocation(line: 62, column: 13, scope: !4700)
!4738 = !DILocation(line: 62, column: 28, scope: !4700)
!4739 = !DILocation(line: 64, column: 2, scope: !4700)
!4740 = !DILocation(line: 64, column: 15, scope: !4700)
!4741 = !DILocation(line: 64, column: 21, scope: !4700)
!4742 = !DILocation(line: 65, column: 2, scope: !4700)
!4743 = !DILocation(line: 65, column: 25, scope: !4700)
!4744 = !DILocation(line: 66, column: 2, scope: !4700)
!4745 = !DILocation(line: 66, column: 6, scope: !4700)
!4746 = !DILocation(line: 66, column: 30, scope: !4700)
!4747 = !DILocation(line: 66, column: 19, scope: !4700)
!4748 = !DILocation(line: 66, column: 12, scope: !4700)
!4749 = !DILocation(line: 67, column: 2, scope: !4700)
!4750 = !DILocation(line: 67, column: 6, scope: !4700)
!4751 = !DILocation(line: 67, column: 13, scope: !4700)
!4752 = !DILocation(line: 67, column: 12, scope: !4700)
!4753 = !DILocation(line: 68, column: 2, scope: !4700)
!4754 = !DILocation(line: 68, column: 10, scope: !4700)
!4755 = !DILocation(line: 69, column: 2, scope: !4700)
!4756 = !DILocation(line: 69, column: 6, scope: !4700)
!4757 = !DILocation(line: 71, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 71, column: 6)
!4759 = !DILocation(line: 71, column: 12, scope: !4758)
!4760 = !DILocation(line: 71, column: 6, scope: !4700)
!4761 = !DILocation(line: 72, column: 3, scope: !4758)
!4762 = !DILocation(line: 74, column: 23, scope: !4700)
!4763 = !DILocation(line: 74, column: 2, scope: !4700)
!4764 = !DILocation(line: 75, column: 2, scope: !4700)
!4765 = !DILocation(line: 75, column: 9, scope: !4725)
!4766 = !DILocation(line: 75, column: 2, scope: !4726)
!4767 = !DILocation(line: 76, column: 3, scope: !4724)
!4768 = !DILocation(line: 76, column: 22, scope: !4724)
!4769 = !DILocation(line: 78, column: 3, scope: !4724)
!4770 = !DILocation(line: 78, column: 3, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 78, column: 3)
!4772 = !DILocation(line: 80, column: 18, scope: !4724)
!4773 = !DILocation(line: 80, column: 7, scope: !4724)
!4774 = !DILocation(line: 80, column: 12, scope: !4724)
!4775 = !DILocation(line: 80, column: 16, scope: !4724)
!4776 = !DILocation(line: 81, column: 18, scope: !4724)
!4777 = !DILocation(line: 81, column: 22, scope: !4724)
!4778 = !DILocation(line: 81, column: 7, scope: !4724)
!4779 = !DILocation(line: 81, column: 12, scope: !4724)
!4780 = !DILocation(line: 81, column: 16, scope: !4724)
!4781 = !DILocation(line: 83, column: 40, scope: !4724)
!4782 = !DILocation(line: 83, column: 9, scope: !4724)
!4783 = !DILocation(line: 83, column: 7, scope: !4724)
!4784 = !DILocation(line: 84, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 84, column: 7)
!4786 = !DILocation(line: 84, column: 7, scope: !4724)
!4787 = !DILocation(line: 85, column: 4, scope: !4785)
!4788 = !DILocation(line: 86, column: 28, scope: !4724)
!4789 = !DILocation(line: 86, column: 3, scope: !4724)
!4790 = !DILocation(line: 87, column: 20, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 87, column: 7)
!4792 = !DILocation(line: 87, column: 30, scope: !4791)
!4793 = !DILocation(line: 87, column: 7, scope: !4791)
!4794 = !DILocation(line: 87, column: 7, scope: !4724)
!4795 = !DILocation(line: 88, column: 8, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 87, column: 41)
!4797 = !DILocation(line: 89, column: 4, scope: !4796)
!4798 = !DILocation(line: 91, column: 7, scope: !4724)
!4799 = !DILocation(line: 92, column: 9, scope: !4724)
!4800 = !DILocation(line: 93, column: 11, scope: !4724)
!4801 = !DILocation(line: 93, column: 4, scope: !4724)
!4802 = !DILocation(line: 93, column: 9, scope: !4724)
!4803 = !DILocation(line: 94, column: 26, scope: !4724)
!4804 = !DILocation(line: 94, column: 3, scope: !4724)
!4805 = !DILocation(line: 95, column: 2, scope: !4725)
!4806 = !DILocation(line: 95, column: 2, scope: !4724)
!4807 = !DILocation(line: 75, column: 22, scope: !4725)
!4808 = !DILocation(line: 75, column: 2, scope: !4725)
!4809 = distinct !{!4809, !4766, !4810, !4811, !4812}
!4810 = !DILocation(line: 95, column: 2, scope: !4726)
!4811 = !{!"llvm.loop.mustprogress"}
!4812 = !{!"llvm.loop.unroll.disable"}
!4813 = !DILocation(line: 97, column: 9, scope: !4700)
!4814 = !DILocation(line: 97, column: 17, scope: !4700)
!4815 = !DILocation(line: 97, column: 25, scope: !4700)
!4816 = !DILocation(line: 97, column: 2, scope: !4700)
!4817 = !DILocation(line: 98, column: 1, scope: !4700)
!4818 = distinct !DISubprogram(name: "cpuid_open", scope: !3, file: !3, line: 100, type: !1890, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4819 = !{!4820, !4821, !4822, !4823, !4824, !4827}
!4820 = !DILocalVariable(name: "inode", arg: 1, scope: !4818, file: !3, line: 100, type: !503)
!4821 = !DILocalVariable(name: "file", arg: 2, scope: !4818, file: !3, line: 100, type: !1463)
!4822 = !DILocalVariable(name: "cpu", scope: !4818, file: !3, line: 102, type: !7)
!4823 = !DILocalVariable(name: "c", scope: !4818, file: !3, line: 103, type: !4096)
!4824 = !DILocalVariable(name: "__vpp_verify", scope: !4825, file: !3, line: 109, type: !2061)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 109, column: 7)
!4826 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 109, column: 7)
!4827 = !DILocalVariable(name: "__ptr", scope: !4828, file: !3, line: 109, type: !473)
!4828 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 109, column: 7)
!4829 = !DILocation(line: 100, column: 37, scope: !4818)
!4830 = !DILocation(line: 100, column: 57, scope: !4818)
!4831 = !DILocation(line: 102, column: 2, scope: !4818)
!4832 = !DILocation(line: 102, column: 15, scope: !4818)
!4833 = !DILocation(line: 103, column: 2, scope: !4818)
!4834 = !DILocation(line: 103, column: 22, scope: !4818)
!4835 = !DILocation(line: 105, column: 26, scope: !4818)
!4836 = !DILocation(line: 105, column: 15, scope: !4818)
!4837 = !DILocation(line: 105, column: 8, scope: !4818)
!4838 = !DILocation(line: 105, column: 6, scope: !4818)
!4839 = !DILocation(line: 106, column: 6, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 106, column: 6)
!4841 = !DILocation(line: 106, column: 13, scope: !4840)
!4842 = !DILocation(line: 106, column: 10, scope: !4840)
!4843 = !DILocation(line: 106, column: 24, scope: !4840)
!4844 = !DILocation(line: 106, column: 39, scope: !4840)
!4845 = !DILocation(line: 106, column: 28, scope: !4840)
!4846 = !DILocation(line: 106, column: 6, scope: !4818)
!4847 = !DILocation(line: 107, column: 3, scope: !4840)
!4848 = !DILocation(line: 109, column: 7, scope: !4826)
!4849 = !DILocation(line: 109, column: 7, scope: !4825)
!4850 = !DILocation(line: 109, column: 7, scope: !4828)
!4851 = !DILocation(line: 109, column: 4, scope: !4818)
!4852 = !DILocation(line: 110, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 110, column: 6)
!4854 = !DILocation(line: 110, column: 9, scope: !4853)
!4855 = !DILocation(line: 110, column: 21, scope: !4853)
!4856 = !DILocation(line: 110, column: 6, scope: !4818)
!4857 = !DILocation(line: 111, column: 3, scope: !4853)
!4858 = !DILocation(line: 113, column: 2, scope: !4818)
!4859 = !DILocation(line: 114, column: 1, scope: !4818)
!4860 = distinct !DISubprogram(name: "iminor", scope: !28, file: !28, line: 938, type: !4861, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4863)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!7, !3181}
!4863 = !{!4864}
!4864 = !DILocalVariable(name: "inode", arg: 1, scope: !4860, file: !28, line: 938, type: !3181)
!4865 = !DILocation(line: 938, column: 51, scope: !4860)
!4866 = !DILocation(line: 940, column: 9, scope: !4860)
!4867 = !DILocation(line: 940, column: 2, scope: !4860)
!4868 = distinct !DISubprogram(name: "file_inode", scope: !28, file: !28, line: 1073, type: !4869, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4873)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!503, !4871}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!4873 = !{!4874}
!4874 = !DILocalVariable(name: "f", arg: 1, scope: !4868, file: !28, line: 1073, type: !4871)
!4875 = !DILocation(line: 1073, column: 59, scope: !4868)
!4876 = !DILocation(line: 1075, column: 9, scope: !4868)
!4877 = !DILocation(line: 1075, column: 12, scope: !4868)
!4878 = !DILocation(line: 1075, column: 2, scope: !4868)
!4879 = !DILocation(line: 84, column: 55, scope: !4202)
!4880 = !DILocation(line: 86, column: 2, scope: !4202)
!4881 = !DILocation(line: 86, column: 5, scope: !4202)
!4882 = !DILocation(line: 86, column: 10, scope: !4202)
!4883 = !DILocation(line: 87, column: 2, scope: !4202)
!4884 = !DILocation(line: 87, column: 2, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4202, file: !2217, line: 87, column: 2)
!4886 = !DILocation(line: 88, column: 1, scope: !4202)
!4887 = distinct !DISubprogram(name: "cpuid_smp_cpuid", scope: !3, file: !3, line: 50, type: !3209, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4888)
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "cmd_block", arg: 1, scope: !4887, file: !3, line: 50, type: !317)
!4890 = !DILocalVariable(name: "cmd", scope: !4887, file: !3, line: 52, type: !4891)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4892 = !DILocation(line: 50, column: 35, scope: !4887)
!4893 = !DILocation(line: 52, column: 2, scope: !4887)
!4894 = !DILocation(line: 52, column: 26, scope: !4887)
!4895 = !DILocation(line: 52, column: 32, scope: !4887)
!4896 = !DILocation(line: 54, column: 14, scope: !4887)
!4897 = !DILocation(line: 54, column: 19, scope: !4887)
!4898 = !DILocation(line: 54, column: 24, scope: !4887)
!4899 = !DILocation(line: 54, column: 29, scope: !4887)
!4900 = !DILocation(line: 54, column: 34, scope: !4887)
!4901 = !DILocation(line: 54, column: 39, scope: !4887)
!4902 = !DILocation(line: 55, column: 8, scope: !4887)
!4903 = !DILocation(line: 55, column: 13, scope: !4887)
!4904 = !DILocation(line: 55, column: 18, scope: !4887)
!4905 = !DILocation(line: 55, column: 24, scope: !4887)
!4906 = !DILocation(line: 55, column: 29, scope: !4887)
!4907 = !DILocation(line: 55, column: 34, scope: !4887)
!4908 = !DILocation(line: 56, column: 8, scope: !4887)
!4909 = !DILocation(line: 56, column: 13, scope: !4887)
!4910 = !DILocation(line: 56, column: 18, scope: !4887)
!4911 = !DILocation(line: 56, column: 24, scope: !4887)
!4912 = !DILocation(line: 56, column: 29, scope: !4887)
!4913 = !DILocation(line: 56, column: 34, scope: !4887)
!4914 = !DILocation(line: 54, column: 2, scope: !4887)
!4915 = !DILocation(line: 58, column: 12, scope: !4887)
!4916 = !DILocation(line: 58, column: 17, scope: !4887)
!4917 = !DILocation(line: 58, column: 2, scope: !4887)
!4918 = !DILocation(line: 59, column: 1, scope: !4887)
!4919 = !DISubprogram(name: "smp_call_function_single_async", scope: !4728, file: !4728, line: 56, type: !4920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!85, !85, !4922}
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4923 = !DISubprogram(name: "wait_for_completion", scope: !2217, file: !2217, line: 102, type: !4203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4924 = distinct !DISubprogram(name: "copy_to_user", scope: !4925, file: !4925, line: 188, type: !4926, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4928)
!4925 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!473, !317, !2061, !473}
!4928 = !{!4929, !4930, !4931}
!4929 = !DILocalVariable(name: "to", arg: 1, scope: !4924, file: !4925, line: 188, type: !317)
!4930 = !DILocalVariable(name: "from", arg: 2, scope: !4924, file: !4925, line: 188, type: !2061)
!4931 = !DILocalVariable(name: "n", arg: 3, scope: !4924, file: !4925, line: 188, type: !473)
!4932 = !DILocation(line: 188, column: 27, scope: !4924)
!4933 = !DILocation(line: 188, column: 43, scope: !4924)
!4934 = !DILocation(line: 188, column: 63, scope: !4924)
!4935 = !DILocation(line: 190, column: 22, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4924, file: !4925, line: 190, column: 6)
!4937 = !DILocation(line: 190, column: 28, scope: !4936)
!4938 = !DILocation(line: 190, column: 6, scope: !4936)
!4939 = !DILocation(line: 190, column: 6, scope: !4924)
!4940 = !DILocation(line: 191, column: 21, scope: !4936)
!4941 = !DILocation(line: 191, column: 25, scope: !4936)
!4942 = !DILocation(line: 191, column: 31, scope: !4936)
!4943 = !DILocation(line: 191, column: 7, scope: !4936)
!4944 = !DILocation(line: 191, column: 5, scope: !4936)
!4945 = !DILocation(line: 191, column: 3, scope: !4936)
!4946 = !DILocation(line: 192, column: 9, scope: !4924)
!4947 = !DILocation(line: 192, column: 2, scope: !4924)
!4948 = distinct !DISubprogram(name: "reinit_completion", scope: !2217, file: !2217, line: 97, type: !4203, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4949)
!4949 = !{!4950}
!4950 = !DILocalVariable(name: "x", arg: 1, scope: !4948, file: !2217, line: 97, type: !2215)
!4951 = !DILocation(line: 97, column: 57, scope: !4948)
!4952 = !DILocation(line: 99, column: 2, scope: !4948)
!4953 = !DILocation(line: 99, column: 5, scope: !4948)
!4954 = !DILocation(line: 99, column: 10, scope: !4948)
!4955 = !DILocation(line: 100, column: 1, scope: !4948)
!4956 = !DISubprogram(name: "__init_swait_queue_head", scope: !2222, file: !2222, line: 69, type: !4957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{null, !4959, !342, !4960}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!4961 = distinct !DISubprogram(name: "cpuid_count", scope: !4712, file: !4712, line: 82, type: !4962, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4964)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{null, !7, !85, !1126, !1126, !1126, !1126}
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4970}
!4965 = !DILocalVariable(name: "op", arg: 1, scope: !4961, file: !4712, line: 82, type: !7)
!4966 = !DILocalVariable(name: "count", arg: 2, scope: !4961, file: !4712, line: 82, type: !85)
!4967 = !DILocalVariable(name: "eax", arg: 3, scope: !4961, file: !4712, line: 83, type: !1126)
!4968 = !DILocalVariable(name: "ebx", arg: 4, scope: !4961, file: !4712, line: 83, type: !1126)
!4969 = !DILocalVariable(name: "ecx", arg: 5, scope: !4961, file: !4712, line: 84, type: !1126)
!4970 = !DILocalVariable(name: "edx", arg: 6, scope: !4961, file: !4712, line: 84, type: !1126)
!4971 = !DILocation(line: 82, column: 45, scope: !4961)
!4972 = !DILocation(line: 82, column: 53, scope: !4961)
!4973 = !DILocation(line: 83, column: 25, scope: !4961)
!4974 = !DILocation(line: 83, column: 44, scope: !4961)
!4975 = !DILocation(line: 84, column: 25, scope: !4961)
!4976 = !DILocation(line: 84, column: 44, scope: !4961)
!4977 = !DILocation(line: 86, column: 9, scope: !4961)
!4978 = !DILocation(line: 86, column: 3, scope: !4961)
!4979 = !DILocation(line: 86, column: 7, scope: !4961)
!4980 = !DILocation(line: 87, column: 9, scope: !4961)
!4981 = !DILocation(line: 87, column: 3, scope: !4961)
!4982 = !DILocation(line: 87, column: 7, scope: !4961)
!4983 = !DILocation(line: 88, column: 10, scope: !4961)
!4984 = !DILocation(line: 88, column: 15, scope: !4961)
!4985 = !DILocation(line: 88, column: 20, scope: !4961)
!4986 = !DILocation(line: 88, column: 25, scope: !4961)
!4987 = !DILocation(line: 88, column: 2, scope: !4961)
!4988 = !DILocation(line: 89, column: 1, scope: !4961)
!4989 = !DISubprogram(name: "complete", scope: !2217, file: !2217, line: 118, type: !4203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4990 = distinct !DISubprogram(name: "native_cpuid", scope: !4712, file: !4712, line: 30, type: !4991, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !1126, !1126, !1126, !1126}
!4993 = !{!4994, !4995, !4996, !4997}
!4994 = !DILocalVariable(name: "eax", arg: 1, scope: !4990, file: !4712, line: 30, type: !1126)
!4995 = !DILocalVariable(name: "ebx", arg: 2, scope: !4990, file: !4712, line: 30, type: !1126)
!4996 = !DILocalVariable(name: "ecx", arg: 3, scope: !4990, file: !4712, line: 31, type: !1126)
!4997 = !DILocalVariable(name: "edx", arg: 4, scope: !4990, file: !4712, line: 31, type: !1126)
!4998 = !DILocation(line: 30, column: 47, scope: !4990)
!4999 = !DILocation(line: 30, column: 66, scope: !4990)
!5000 = !DILocation(line: 31, column: 19, scope: !4990)
!5001 = !DILocation(line: 31, column: 38, scope: !4990)
!5002 = !DILocation(line: 35, column: 15, scope: !4990)
!5003 = !DILocation(line: 36, column: 15, scope: !4990)
!5004 = !DILocation(line: 37, column: 15, scope: !4990)
!5005 = !DILocation(line: 38, column: 15, scope: !4990)
!5006 = !DILocation(line: 39, column: 14, scope: !4990)
!5007 = !DILocation(line: 39, column: 13, scope: !4990)
!5008 = !DILocation(line: 39, column: 26, scope: !4990)
!5009 = !DILocation(line: 39, column: 25, scope: !4990)
!5010 = !DILocation(line: 34, column: 2, scope: !4990)
!5011 = !{i64 1083165}
!5012 = !DILocation(line: 41, column: 1, scope: !4990)
!5013 = distinct !DISubprogram(name: "check_copy_size", scope: !4214, file: !4214, line: 237, type: !5014, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!1624, !2061, !470, !1624}
!5016 = !{!5017, !5018, !5019, !5020, !5021, !5024}
!5017 = !DILocalVariable(name: "addr", arg: 1, scope: !5013, file: !4214, line: 237, type: !2061)
!5018 = !DILocalVariable(name: "bytes", arg: 2, scope: !5013, file: !4214, line: 237, type: !470)
!5019 = !DILocalVariable(name: "is_source", arg: 3, scope: !5013, file: !4214, line: 237, type: !1624)
!5020 = !DILocalVariable(name: "sz", scope: !5013, file: !4214, line: 239, type: !85)
!5021 = !DILocalVariable(name: "__ret_warn_on", scope: !5022, file: !4214, line: 249, type: !85)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !4214, line: 249, column: 6)
!5023 = distinct !DILexicalBlock(scope: !5013, file: !4214, line: 249, column: 6)
!5024 = !DILocalVariable(name: "__flags", scope: !5025, file: !4214, line: 249, type: !85)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !4214, line: 249, column: 6)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !4214, line: 249, column: 6)
!5027 = !DILocation(line: 237, column: 29, scope: !5013)
!5028 = !DILocation(line: 237, column: 42, scope: !5013)
!5029 = !DILocation(line: 237, column: 54, scope: !5013)
!5030 = !DILocation(line: 239, column: 2, scope: !5013)
!5031 = !DILocation(line: 239, column: 6, scope: !5013)
!5032 = !DILocation(line: 239, column: 33, scope: !5013)
!5033 = !DILocation(line: 239, column: 11, scope: !5013)
!5034 = !DILocation(line: 240, column: 6, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5013, file: !4214, line: 240, column: 6)
!5036 = !DILocation(line: 0, scope: !5035)
!5037 = !DILocation(line: 240, column: 6, scope: !5013)
!5038 = !DILocation(line: 241, column: 29, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !4214, line: 241, column: 7)
!5040 = distinct !DILexicalBlock(scope: !5035, file: !4214, line: 240, column: 39)
!5041 = !DILocation(line: 241, column: 8, scope: !5039)
!5042 = !DILocation(line: 241, column: 7, scope: !5040)
!5043 = !DILocation(line: 242, column: 18, scope: !5039)
!5044 = !DILocation(line: 242, column: 22, scope: !5039)
!5045 = !DILocation(line: 242, column: 4, scope: !5039)
!5046 = !DILocation(line: 243, column: 12, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5039, file: !4214, line: 243, column: 12)
!5048 = !{i8 0, i8 2}
!5049 = !DILocation(line: 243, column: 12, scope: !5039)
!5050 = !DILocation(line: 244, column: 4, scope: !5047)
!5051 = !{i32 2109466}
!5052 = !DILocation(line: 246, column: 4, scope: !5047)
!5053 = !{i32 2109495}
!5054 = !DILocation(line: 247, column: 3, scope: !5040)
!5055 = !DILocation(line: 249, column: 6, scope: !5022)
!5056 = !DILocation(line: 249, column: 6, scope: !5026)
!5057 = !DILocation(line: 249, column: 6, scope: !5025)
!5058 = !DILocation(line: 249, column: 6, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5025, file: !4214, line: 249, column: 6)
!5060 = !DILocation(line: 249, column: 6, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5025, file: !4214, line: 249, column: 6)
!5062 = !{i64 2149609928, i64 2149609957, i64 2149610003, i64 2149610061, i64 2149610115, i64 2149610169, i64 2149610224, i64 2149610255, i64 2149610563, i64 2149610569, i64 2149610616, i64 2149610639, i64 2149610665}
!5063 = !DILocation(line: 249, column: 6, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5025, file: !4214, line: 249, column: 6)
!5065 = !DILocation(line: 249, column: 6, scope: !5023)
!5066 = !DILocation(line: 249, column: 6, scope: !5013)
!5067 = !DILocation(line: 250, column: 3, scope: !5023)
!5068 = !DILocation(line: 251, column: 20, scope: !5013)
!5069 = !DILocation(line: 251, column: 26, scope: !5013)
!5070 = !DILocation(line: 251, column: 33, scope: !5013)
!5071 = !DILocation(line: 251, column: 2, scope: !5013)
!5072 = !DILocation(line: 252, column: 2, scope: !5013)
!5073 = !DILocation(line: 253, column: 1, scope: !5013)
!5074 = !DISubprogram(name: "_copy_to_user", scope: !4925, file: !4925, line: 176, type: !4926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5075 = distinct !DISubprogram(name: "copy_overflow", scope: !4214, file: !4214, line: 230, type: !5076, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5078)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !85, !473}
!5078 = !{!5079, !5080}
!5079 = !DILocalVariable(name: "size", arg: 1, scope: !5075, file: !4214, line: 230, type: !85)
!5080 = !DILocalVariable(name: "count", arg: 2, scope: !5075, file: !4214, line: 230, type: !473)
!5081 = !DILocation(line: 230, column: 38, scope: !5075)
!5082 = !DILocation(line: 230, column: 58, scope: !5075)
!5083 = !DILocation(line: 233, column: 19, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5075, file: !4214, line: 232, column: 6)
!5085 = !DILocation(line: 233, column: 25, scope: !5084)
!5086 = !DILocation(line: 233, column: 3, scope: !5084)
!5087 = !DILocation(line: 234, column: 1, scope: !5075)
!5088 = !DISubprogram(name: "__bad_copy_from", scope: !4214, file: !4214, line: 224, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5089 = !DISubprogram(name: "__bad_copy_to", scope: !4214, file: !4214, line: 226, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5090 = distinct !DISubprogram(name: "check_object_size", scope: !4214, file: !4214, line: 218, type: !5091, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5093)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{null, !2061, !473, !1624}
!5093 = !{!5094, !5095, !5096}
!5094 = !DILocalVariable(name: "ptr", arg: 1, scope: !5090, file: !4214, line: 218, type: !2061)
!5095 = !DILocalVariable(name: "n", arg: 2, scope: !5090, file: !4214, line: 218, type: !473)
!5096 = !DILocalVariable(name: "to_user", arg: 3, scope: !5090, file: !4214, line: 219, type: !1624)
!5097 = !DILocation(line: 218, column: 50, scope: !5090)
!5098 = !DILocation(line: 218, column: 69, scope: !5090)
!5099 = !DILocation(line: 219, column: 15, scope: !5090)
!5100 = !DILocation(line: 220, column: 3, scope: !5090)
!5101 = !DISubprogram(name: "__copy_overflow", scope: !4214, file: !4214, line: 228, type: !5076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5102 = distinct !DISubprogram(name: "cpu_online", scope: !1383, file: !1383, line: 1080, type: !5103, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!1624, !7}
!5105 = !{!5106}
!5106 = !DILocalVariable(name: "cpu", arg: 1, scope: !5102, file: !1383, line: 1080, type: !7)
!5107 = !DILocation(line: 1080, column: 44, scope: !5102)
!5108 = !DILocation(line: 1082, column: 26, scope: !5102)
!5109 = !DILocation(line: 1082, column: 9, scope: !5102)
!5110 = !DILocation(line: 1082, column: 2, scope: !5102)
!5111 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1383, file: !1383, line: 502, type: !5112, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!1624, !85, !4156}
!5114 = !{!5115, !5116}
!5115 = !DILocalVariable(name: "cpu", arg: 1, scope: !5111, file: !1383, line: 502, type: !85)
!5116 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5111, file: !1383, line: 502, type: !4156)
!5117 = !DILocation(line: 502, column: 50, scope: !5111)
!5118 = !DILocation(line: 502, column: 77, scope: !5111)
!5119 = !DILocation(line: 504, column: 9, scope: !5111)
!5120 = !DILocation(line: 504, column: 2, scope: !5111)
!5121 = distinct !DISubprogram(name: "_test_bit", scope: !5122, file: !5122, line: 139, type: !5123, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5128)
!5122 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!1624, !473, !5125}
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5127)
!5127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !473)
!5128 = !{!5129, !5130}
!5129 = !DILocalVariable(name: "nr", arg: 1, scope: !5121, file: !5122, line: 139, type: !473)
!5130 = !DILocalVariable(name: "addr", arg: 2, scope: !5121, file: !5122, line: 139, type: !5125)
!5131 = !DILocation(line: 139, column: 25, scope: !5121)
!5132 = !DILocation(line: 139, column: 59, scope: !5121)
!5133 = !DILocation(line: 141, column: 25, scope: !5121)
!5134 = !DILocation(line: 141, column: 32, scope: !5121)
!5135 = !DILocation(line: 141, column: 30, scope: !5121)
!5136 = !DILocation(line: 141, column: 2, scope: !5121)
!5137 = !DILocation(line: 142, column: 23, scope: !5121)
!5138 = !DILocation(line: 142, column: 27, scope: !5121)
!5139 = !DILocation(line: 142, column: 9, scope: !5121)
!5140 = !DILocation(line: 142, column: 2, scope: !5121)
!5141 = distinct !DISubprogram(name: "cpumask_check", scope: !1383, file: !1383, line: 148, type: !5142, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5144)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!7, !7}
!5144 = !{!5145}
!5145 = !DILocalVariable(name: "cpu", arg: 1, scope: !5141, file: !1383, line: 148, type: !7)
!5146 = !DILocation(line: 148, column: 64, scope: !5141)
!5147 = !DILocation(line: 150, column: 20, scope: !5141)
!5148 = !DILocation(line: 150, column: 2, scope: !5141)
!5149 = !DILocation(line: 151, column: 9, scope: !5141)
!5150 = !DILocation(line: 151, column: 2, scope: !5141)
!5151 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5152, file: !5152, line: 66, type: !5153, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5158)
!5152 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5153 = !DISubroutineType(types: !5154)
!5154 = !{null, !5155, !470}
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5157)
!5157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5158 = !{!5159, !5160}
!5159 = !DILocalVariable(name: "v", arg: 1, scope: !5151, file: !5152, line: 66, type: !5155)
!5160 = !DILocalVariable(name: "size", arg: 2, scope: !5151, file: !5152, line: 66, type: !470)
!5161 = !DILocation(line: 66, column: 73, scope: !5151)
!5162 = !DILocation(line: 66, column: 83, scope: !5151)
!5163 = !DILocation(line: 68, column: 19, scope: !5151)
!5164 = !DILocation(line: 68, column: 22, scope: !5151)
!5165 = !DILocation(line: 68, column: 2, scope: !5151)
!5166 = !DILocation(line: 69, column: 2, scope: !5151)
!5167 = !DILocation(line: 70, column: 1, scope: !5151)
!5168 = distinct !DISubprogram(name: "arch_test_bit", scope: !5169, file: !5169, line: 237, type: !5123, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5170)
!5169 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5170 = !{!5171, !5172}
!5171 = !DILocalVariable(name: "nr", arg: 1, scope: !5168, file: !5169, line: 237, type: !473)
!5172 = !DILocalVariable(name: "addr", arg: 2, scope: !5168, file: !5169, line: 237, type: !5125)
!5173 = !DILocation(line: 237, column: 29, scope: !5168)
!5174 = !DILocation(line: 237, column: 63, scope: !5168)
!5175 = !DILocation(line: 239, column: 30, scope: !5168)
!5176 = !DILocation(line: 239, column: 9, scope: !5168)
!5177 = !DILocation(line: 239, column: 54, scope: !5168)
!5178 = !DILocation(line: 239, column: 58, scope: !5168)
!5179 = !DILocation(line: 239, column: 36, scope: !5168)
!5180 = !DILocation(line: 240, column: 26, scope: !5168)
!5181 = !DILocation(line: 240, column: 30, scope: !5168)
!5182 = !DILocation(line: 240, column: 8, scope: !5168)
!5183 = !DILocation(line: 239, column: 2, scope: !5168)
!5184 = distinct !DISubprogram(name: "kasan_check_read", scope: !5185, file: !5185, line: 40, type: !5186, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5188)
!5185 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!1624, !5155, !7}
!5188 = !{!5189, !5190}
!5189 = !DILocalVariable(name: "p", arg: 1, scope: !5184, file: !5185, line: 40, type: !5155)
!5190 = !DILocalVariable(name: "size", arg: 2, scope: !5184, file: !5185, line: 40, type: !7)
!5191 = !DILocation(line: 40, column: 58, scope: !5184)
!5192 = !DILocation(line: 40, column: 74, scope: !5184)
!5193 = !DILocation(line: 42, column: 2, scope: !5184)
!5194 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5195, file: !5195, line: 229, type: !5196, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5198)
!5195 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5196 = !DISubroutineType(types: !5197)
!5197 = !{null, !5155, !470, !85}
!5198 = !{!5199, !5200, !5201}
!5199 = !DILocalVariable(name: "ptr", arg: 1, scope: !5194, file: !5195, line: 229, type: !5155)
!5200 = !DILocalVariable(name: "size", arg: 2, scope: !5194, file: !5195, line: 229, type: !470)
!5201 = !DILocalVariable(name: "type", arg: 3, scope: !5194, file: !5195, line: 230, type: !85)
!5202 = !DILocation(line: 229, column: 60, scope: !5194)
!5203 = !DILocation(line: 229, column: 72, scope: !5194)
!5204 = !DILocation(line: 230, column: 15, scope: !5194)
!5205 = !DILocation(line: 230, column: 23, scope: !5194)
!5206 = distinct !DISubprogram(name: "constant_test_bit", scope: !5169, file: !5169, line: 204, type: !5207, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!1624, !459, !5125}
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "nr", arg: 1, scope: !5206, file: !5169, line: 204, type: !459)
!5211 = !DILocalVariable(name: "addr", arg: 2, scope: !5206, file: !5169, line: 204, type: !5125)
!5212 = !DILocation(line: 204, column: 52, scope: !5206)
!5213 = !DILocation(line: 204, column: 86, scope: !5206)
!5214 = !DILocation(line: 206, column: 19, scope: !5206)
!5215 = !DILocation(line: 206, column: 22, scope: !5206)
!5216 = !DILocation(line: 206, column: 15, scope: !5206)
!5217 = !DILocation(line: 207, column: 4, scope: !5206)
!5218 = !DILocation(line: 207, column: 9, scope: !5206)
!5219 = !DILocation(line: 207, column: 12, scope: !5206)
!5220 = !DILocation(line: 206, column: 44, scope: !5206)
!5221 = !DILocation(line: 207, column: 37, scope: !5206)
!5222 = !DILocation(line: 206, column: 2, scope: !5206)
!5223 = distinct !DISubprogram(name: "variable_test_bit", scope: !5169, file: !5169, line: 224, type: !5207, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5224)
!5224 = !{!5225, !5226, !5227}
!5225 = !DILocalVariable(name: "nr", arg: 1, scope: !5223, file: !5169, line: 224, type: !459)
!5226 = !DILocalVariable(name: "addr", arg: 2, scope: !5223, file: !5169, line: 224, type: !5125)
!5227 = !DILocalVariable(name: "oldbit", scope: !5223, file: !5169, line: 226, type: !1624)
!5228 = !DILocation(line: 224, column: 52, scope: !5223)
!5229 = !DILocation(line: 224, column: 86, scope: !5223)
!5230 = !DILocation(line: 226, column: 2, scope: !5223)
!5231 = !DILocation(line: 226, column: 7, scope: !5223)
!5232 = !DILocation(line: 231, column: 33, scope: !5223)
!5233 = !DILocation(line: 231, column: 46, scope: !5223)
!5234 = !DILocation(line: 228, column: 2, scope: !5223)
!5235 = !{i64 2148344874, i64 2148344948}
!5236 = !DILocation(line: 233, column: 9, scope: !5223)
!5237 = !DILocation(line: 234, column: 1, scope: !5223)
!5238 = !DILocation(line: 233, column: 2, scope: !5223)
!5239 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1383, file: !1383, line: 140, type: !5240, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5242)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !7, !7}
!5242 = !{!5243, !5244}
!5243 = !DILocalVariable(name: "cpu", arg: 1, scope: !5239, file: !1383, line: 140, type: !7)
!5244 = !DILocalVariable(name: "bits", arg: 2, scope: !5239, file: !1383, line: 140, type: !7)
!5245 = !DILocation(line: 140, column: 60, scope: !5239)
!5246 = !DILocation(line: 140, column: 78, scope: !5239)
!5247 = !DILocation(line: 145, column: 1, scope: !5239)
!5248 = !DISubprogram(name: "__cpuhp_setup_state", scope: !118, file: !118, line: 263, type: !5249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!85, !117, !342, !1624, !4660, !4660, !1624}
!5251 = !DISubprogram(name: "device_create", scope: !70, file: !70, line: 1181, type: !5252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{!4241, !4529, !4241, !659, !317, !342, null}
!5254 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !5255, file: !5255, line: 105, type: !5256, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5258)
!5255 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!85, !2061}
!5258 = !{!5259}
!5259 = !DILocalVariable(name: "ptr", arg: 1, scope: !5254, file: !5255, line: 105, type: !2061)
!5260 = !DILocation(line: 105, column: 68, scope: !5254)
!5261 = !DILocation(line: 107, column: 13, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5254, file: !5255, line: 107, column: 6)
!5263 = !DILocation(line: 107, column: 6, scope: !5262)
!5264 = !DILocation(line: 107, column: 6, scope: !5254)
!5265 = !DILocation(line: 108, column: 18, scope: !5262)
!5266 = !DILocation(line: 108, column: 10, scope: !5262)
!5267 = !DILocation(line: 108, column: 3, scope: !5262)
!5268 = !DILocation(line: 110, column: 3, scope: !5262)
!5269 = !DILocation(line: 111, column: 1, scope: !5254)
!5270 = distinct !DISubprogram(name: "IS_ERR", scope: !5255, file: !5255, line: 59, type: !5271, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!1624, !2061}
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "ptr", arg: 1, scope: !5270, file: !5255, line: 59, type: !2061)
!5275 = !DILocation(line: 59, column: 60, scope: !5270)
!5276 = !DILocation(line: 61, column: 9, scope: !5270)
!5277 = !DILocation(line: 61, column: 2, scope: !5270)
!5278 = distinct !DISubprogram(name: "PTR_ERR", scope: !5255, file: !5255, line: 49, type: !5279, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!459, !2061}
!5281 = !{!5282}
!5282 = !DILocalVariable(name: "ptr", arg: 1, scope: !5278, file: !5255, line: 49, type: !2061)
!5283 = !DILocation(line: 49, column: 61, scope: !5278)
!5284 = !DILocation(line: 51, column: 16, scope: !5278)
!5285 = !DILocation(line: 51, column: 9, scope: !5278)
!5286 = !DILocation(line: 51, column: 2, scope: !5278)
!5287 = !DISubprogram(name: "device_destroy", scope: !70, file: !70, line: 1187, type: !5288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{null, !4529, !659}
!5290 = !DISubprogram(name: "__cpuhp_remove_state", scope: !118, file: !118, line: 434, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !117, !1624}
!5293 = distinct !DISubprogram(name: "cpuid_devnode", scope: !3, file: !3, line: 126, type: !4555, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5294)
!5294 = !{!5295, !5296}
!5295 = !DILocalVariable(name: "dev", arg: 1, scope: !5293, file: !3, line: 126, type: !4235)
!5296 = !DILocalVariable(name: "mode", arg: 2, scope: !5293, file: !3, line: 126, type: !4258)
!5297 = !DILocation(line: 126, column: 49, scope: !5293)
!5298 = !DILocation(line: 126, column: 63, scope: !5293)
!5299 = !DILocation(line: 128, column: 47, scope: !5293)
!5300 = !DILocation(line: 128, column: 9, scope: !5293)
!5301 = !DILocation(line: 128, column: 2, scope: !5293)
!5302 = !DISubprogram(name: "kasprintf", scope: !5303, file: !5303, line: 16, type: !5304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5303 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!423, !868, !342, null}
