; ModuleID = 'fs/proc/root.c'
source_filename = "fs/proc/root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.14, ptr, %union.anon.15, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%union.anon.14 = type { ptr }
%union.anon.15 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [48 x i8] }
%struct.anon.19 = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mnt_idmap = type opaque
%struct.proc_fs_context = type { ptr, i32, i32, i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.p_log = type { ptr, ptr }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.fs_parse_result = type { i8, %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i64, i32 }
%union.anon = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.27, %struct.list_head, %struct.list_head, %union.anon.28 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.23, ptr }
%union.anon.23 = type { i64 }
%struct.lockref = type { %union.anon.25 }
%union.anon.25 = type { i64 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i32, i32, i64 }
%struct.timespec64 = type { i64, i64 }
%struct.dir_context = type { ptr, i64 }

@.str = private unnamed_addr constant [7 x i8] c"mounts\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"self/mounts\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"driver\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [8 x i8] c"fs/nfsd\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [4 x i8] c"bus\00", align 1, !dbg !24
@proc_fs_type = internal global %struct.file_system_type { ptr @.str.7, i32 24, ptr @proc_init_fs_context, ptr @proc_fs_parameters, ptr null, ptr @proc_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !29
@proc_root_inode_operations = internal constant %struct.inode_operations { ptr @proc_root_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_root_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4618
@proc_root_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @proc_root_readdir, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4620
@proc_root = hidden global %struct.proc_dir_entry { %struct.atomic_t zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @proc_root_inode_operations, %union.anon.14 { ptr @proc_root_operations }, ptr null, %union.anon.15 zeroinitializer, ptr null, ptr null, i32 0, i32 1, i32 2, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i64 0, ptr @proc_root, %struct.rb_root zeroinitializer, %struct.rb_node zeroinitializer, ptr @.str.6, i16 16749, i8 0, i8 5, [0 x i8] zeroinitializer }, align 8, !dbg !4494
@.str.6 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1, !dbg !4492
@.str.7 = private unnamed_addr constant [5 x i8] c"proc\00", align 1, !dbg !4557
@proc_fs_parameters = internal constant [4 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.20, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.9, ptr @fs_param_is_string, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.21, ptr @fs_param_is_string, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 16, !dbg !4615
@proc_fs_context_ops = internal constant %struct.fs_context_operations { ptr @proc_fs_context_free, ptr null, ptr @proc_parse_param, ptr null, ptr @proc_get_tree, ptr @proc_reconfigure }, align 8, !dbg !4565
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4560
@init_pid_ns = external dso_local global %struct.pid_namespace, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"hidepid\00", align 1, !dbg !4567
@__const.proc_parse_hidepid_param.hidepid_u32_spec = private unnamed_addr constant %struct.fs_parameter_spec { ptr @.str.9, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"proc: unexpected type of hidepid value\0A\00", align 1, !dbg !4569
@.str.11 = private unnamed_addr constant [37 x i8] c"proc: unknown value of hidepid - %s\0A\00", align 1, !dbg !4574
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !4579
@.str.13 = private unnamed_addr constant [9 x i8] c"noaccess\00", align 1, !dbg !4581
@.str.14 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1, !dbg !4586
@.str.15 = private unnamed_addr constant [11 x i8] c"ptraceable\00", align 1, !dbg !4589
@.str.16 = private unnamed_addr constant [4 x i8] c"pid\00", align 1, !dbg !4594
@.str.17 = private unnamed_addr constant [38 x i8] c"proc: unsupported subset option - %s\0A\00", align 1, !dbg !4596
@proc_sops = external dso_local constant %struct.super_operations, align 8
@.str.18 = private unnamed_addr constant [42 x i8] c"\013proc_fill_super: get root inode failed\0A\00", align 1, !dbg !4601
@.str.19 = private unnamed_addr constant [43 x i8] c"\013proc_fill_super: allocate dentry failed\0A\00", align 1, !dbg !4606
@.str.20 = private unnamed_addr constant [4 x i8] c"gid\00", align 1, !dbg !4611
@.str.21 = private unnamed_addr constant [7 x i8] c"subset\00", align 1, !dbg !4613
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @proc_root_init() #0 section ".init.text" align 16 !dbg !4631 {
entry:
  call void @proc_init_kmemcache() #16, !dbg !4632
  call void @set_proc_pid_nlink() #16, !dbg !4633
  call void @proc_self_init() #16, !dbg !4634
  call void @proc_thread_self_init() #16, !dbg !4635
  %call = call ptr @proc_symlink(ptr noundef @.str, ptr noundef null, ptr noundef @.str.1) #16, !dbg !4636
  %call1 = call i32 @proc_net_init() #16, !dbg !4637
  %call2 = call ptr @proc_mkdir(ptr noundef @.str.2, ptr noundef null) #16, !dbg !4638
  %call3 = call ptr @proc_mkdir(ptr noundef @.str.3, ptr noundef null) #16, !dbg !4639
  %call4 = call ptr @proc_create_mount_point(ptr noundef @.str.4) #16, !dbg !4640
  call void @proc_tty_init() #16, !dbg !4641
  %call5 = call ptr @proc_mkdir(ptr noundef @.str.5, ptr noundef null) #16, !dbg !4642
  %call6 = call i32 @proc_sys_init() #16, !dbg !4643
  %call7 = call i32 @register_filesystem(ptr noundef @proc_fs_type) #16, !dbg !4644
  ret void, !dbg !4645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4646 dso_local void @proc_init_kmemcache() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4647 dso_local void @set_proc_pid_nlink() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4648 dso_local void @proc_self_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4649 dso_local void @proc_thread_self_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4650 dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4653 dso_local i32 @proc_net_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4654 dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4657 dso_local ptr @proc_create_mount_point(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4660 dso_local void @proc_tty_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4661 dso_local i32 @proc_sys_init() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4662 dso_local i32 @register_filesystem(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_init_fs_context(ptr noundef %fc) #2 align 16 !dbg !4665 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4667, metadata !DIExpression()), !dbg !4677
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4668, metadata !DIExpression()), !dbg !4679
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #18, !dbg !4680
  store ptr %call, ptr %ctx, align 8, !dbg !4681
  %0 = load ptr, ptr %ctx, align 8, !dbg !4682
  %tobool = icmp ne ptr %0, null, !dbg !4682
  br i1 %tobool, label %if.end, label %if.then, !dbg !4684

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4685

if.end:                                           ; preds = %entry
  %call1 = call ptr @get_current() #16, !dbg !4686
  %call2 = call ptr @task_active_pid_ns(ptr noundef %call1) #16, !dbg !4687
  %call3 = call ptr @get_pid_ns(ptr noundef %call2) #16, !dbg !4688
  %1 = load ptr, ptr %ctx, align 8, !dbg !4689
  %pid_ns = getelementptr inbounds %struct.proc_fs_context, ptr %1, i32 0, i32 0, !dbg !4690
  store ptr %call3, ptr %pid_ns, align 8, !dbg !4691
  %2 = load ptr, ptr %fc.addr, align 8, !dbg !4692
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %2, i32 0, i32 6, !dbg !4693
  %3 = load ptr, ptr %user_ns, align 8, !dbg !4693
  call void @put_user_ns(ptr noundef %3) #16, !dbg !4694
  %4 = load ptr, ptr %ctx, align 8, !dbg !4695
  %pid_ns4 = getelementptr inbounds %struct.proc_fs_context, ptr %4, i32 0, i32 0, !dbg !4696
  %5 = load ptr, ptr %pid_ns4, align 8, !dbg !4696
  %user_ns5 = getelementptr inbounds %struct.pid_namespace, ptr %5, i32 0, i32 8, !dbg !4697
  %6 = load ptr, ptr %user_ns5, align 8, !dbg !4697
  %call6 = call ptr @get_user_ns(ptr noundef %6) #16, !dbg !4698
  %7 = load ptr, ptr %fc.addr, align 8, !dbg !4699
  %user_ns7 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 6, !dbg !4700
  store ptr %call6, ptr %user_ns7, align 8, !dbg !4701
  %8 = load ptr, ptr %ctx, align 8, !dbg !4702
  %9 = load ptr, ptr %fc.addr, align 8, !dbg !4703
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %9, i32 0, i32 3, !dbg !4704
  store ptr %8, ptr %fs_private, align 8, !dbg !4705
  %10 = load ptr, ptr %fc.addr, align 8, !dbg !4706
  %ops = getelementptr inbounds %struct.fs_context, ptr %10, i32 0, i32 0, !dbg !4707
  store ptr @proc_fs_context_ops, ptr %ops, align 8, !dbg !4708
  store i32 0, ptr %retval, align 4, !dbg !4709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4709

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !4710
  %11 = load i32, ptr %retval, align 4, !dbg !4710
  ret i32 %11, !dbg !4710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_kill_sb(ptr noundef %sb) #2 align 16 !dbg !4711 {
entry:
  %sb.addr = alloca ptr, align 8
  %fs_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4713, metadata !DIExpression()), !dbg !4724
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_info) #17, !dbg !4725
  call void @llvm.dbg.declare(metadata ptr %fs_info, metadata !4714, metadata !DIExpression()), !dbg !4726
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4727
  %call = call ptr @proc_sb_info(ptr noundef %0) #16, !dbg !4728
  store ptr %call, ptr %fs_info, align 8, !dbg !4726
  %1 = load ptr, ptr %fs_info, align 8, !dbg !4729
  %tobool = icmp ne ptr %1, null, !dbg !4729
  br i1 %tobool, label %if.end, label %if.then, !dbg !4731

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4732
  call void @kill_anon_super(ptr noundef %2) #16, !dbg !4734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4735

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fs_info, align 8, !dbg !4736
  %proc_self = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 1, !dbg !4737
  %4 = load ptr, ptr %proc_self, align 8, !dbg !4737
  call void @dput(ptr noundef %4) #16, !dbg !4738
  %5 = load ptr, ptr %fs_info, align 8, !dbg !4739
  %proc_thread_self = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 2, !dbg !4740
  %6 = load ptr, ptr %proc_thread_self, align 8, !dbg !4740
  call void @dput(ptr noundef %6) #16, !dbg !4741
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !4742
  call void @kill_anon_super(ptr noundef %7) #16, !dbg !4743
  %8 = load ptr, ptr %fs_info, align 8, !dbg !4744
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, ptr %8, i32 0, i32 0, !dbg !4745
  %9 = load ptr, ptr %pid_ns, align 8, !dbg !4745
  call void @put_pid_ns(ptr noundef %9) #16, !dbg !4746
  %10 = load ptr, ptr %fs_info, align 8, !dbg !4747
  call void @kfree(ptr noundef %10) #16, !dbg !4748
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4749
  br label %cleanup, !dbg !4749

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_info) #17, !dbg !4749
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4749

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4750 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4754, metadata !DIExpression()), !dbg !4756
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4755, metadata !DIExpression()), !dbg !4757
  %0 = load i64, ptr %size.addr, align 8, !dbg !4758
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4759
  %or = or i32 %1, 256, !dbg !4760
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !4761
  ret ptr %call, !dbg !4762
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_pid_ns(ptr noundef %ns) #6 align 16 !dbg !4763 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4769
  %cmp = icmp ne ptr %0, @init_pid_ns, !dbg !4771
  br i1 %cmp, label %if.then, label %if.end, !dbg !4772

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4773
  %ns1 = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 11, !dbg !4774
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !4775
  call void @refcount_inc(ptr noundef %count) #16, !dbg !4776
  br label %if.end, !dbg !4776

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !4777
  ret ptr %2, !dbg !4778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4779 dso_local ptr @task_active_pid_ns(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !4782 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4787, metadata !DIExpression()), !dbg !4793
  br label %do.body, !dbg !4793

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4794
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4789, metadata !DIExpression()), !dbg !4794
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4794
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4793
  br label %do.cond, !dbg !4794

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4794

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4791, metadata !DIExpression()), !dbg !4795
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !4795, !srcloc !4796
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4795
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4795
  %3 = inttoptr i64 %2 to ptr, !dbg !4795
  store ptr %3, ptr %tmp, align 8, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !4793
  %4 = load ptr, ptr %tmp, align 8, !dbg !4795
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4793
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4793
  store ptr %5, ptr %tmp1, align 8, !dbg !4793
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4797
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4793
  ret ptr %6, !dbg !4798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #6 align 16 !dbg !4799 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  ret void, !dbg !4805
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #6 align 16 !dbg !4806 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  ret ptr @init_user_ns, !dbg !4812
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !4813 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4815, metadata !DIExpression()), !dbg !4820
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4816, metadata !DIExpression()), !dbg !4821
  %0 = load i64, ptr %size.addr, align 8, !dbg !4822
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4823
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4824

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4825
  %tobool = icmp ne i64 %2, 0, !dbg !4825
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4826

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !4827
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4817, metadata !DIExpression()), !dbg !4828
  %3 = load i64, ptr %size.addr, align 8, !dbg !4829
  %cmp = icmp ugt i64 %3, 8192, !dbg !4831
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4832

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4833
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4834
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !4835
  store ptr %call, ptr %retval, align 8, !dbg !4836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4836

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4837
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !4837
  store i32 %call2, ptr %index, align 4, !dbg !4838
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4839
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4840
  %9 = ptrtoint ptr %8 to i64, !dbg !4840
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !4841
  %idxprom = zext i32 %call3 to i64, !dbg !4842
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4842
  %10 = load i32, ptr %index, align 4, !dbg !4843
  %idxprom4 = zext i32 %10 to i64, !dbg !4842
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4842
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4842
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4844
  %13 = load i64, ptr %size.addr, align 8, !dbg !4845
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !4846
  store ptr %call6, ptr %retval, align 8, !dbg !4847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4847

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !4848
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4849
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4850
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !4851
  store ptr %call8, ptr %retval, align 8, !dbg !4852
  br label %return, !dbg !4852

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4853
  ret ptr %16, !dbg !4853
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4854 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !4855 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4859, metadata !DIExpression()), !dbg !4861
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4860, metadata !DIExpression()), !dbg !4862
  %0 = load i64, ptr %size.addr, align 8, !dbg !4863
  %tobool = icmp ne i64 %0, 0, !dbg !4863
  br i1 %tobool, label %if.end, label %if.then, !dbg !4865

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4866
  br label %return, !dbg !4866

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4867
  %cmp = icmp ule i64 %1, 8, !dbg !4869
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4870

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4871
  br label %return, !dbg !4871

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4872
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4874
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4875

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4876
  %cmp4 = icmp ule i64 %3, 96, !dbg !4877
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4878

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4879
  br label %return, !dbg !4879

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4880
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4882
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4883

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4884
  %cmp9 = icmp ule i64 %5, 192, !dbg !4885
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4886

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4887
  br label %return, !dbg !4887

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4888
  %cmp12 = icmp ule i64 %6, 8, !dbg !4890
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4891

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4892
  br label %return, !dbg !4892

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4893
  %cmp15 = icmp ule i64 %7, 16, !dbg !4895
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4896

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4897
  br label %return, !dbg !4897

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4898
  %cmp18 = icmp ule i64 %8, 32, !dbg !4900
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4901

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4902
  br label %return, !dbg !4902

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4903
  %cmp21 = icmp ule i64 %9, 64, !dbg !4905
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4906

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4907
  br label %return, !dbg !4907

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4908
  %cmp24 = icmp ule i64 %10, 128, !dbg !4910
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4911

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4912
  br label %return, !dbg !4912

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4913
  %cmp27 = icmp ule i64 %11, 256, !dbg !4915
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4916

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4917
  br label %return, !dbg !4917

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4918
  %cmp30 = icmp ule i64 %12, 512, !dbg !4920
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4921

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4922
  br label %return, !dbg !4922

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4923
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4925
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4926

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4928
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4930
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4931

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4932
  br label %return, !dbg !4932

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4933
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4935
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4936

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4937
  br label %return, !dbg !4937

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4938
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4940
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4941

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4942
  br label %return, !dbg !4942

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4943
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4945
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4946

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4947
  br label %return, !dbg !4947

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4948
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4950
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4951

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4953
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4955
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4956

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4957
  br label %return, !dbg !4957

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4958
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4960
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4961

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4963
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4965
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4966

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4968
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4970
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4971

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4973
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4975
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4976

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4978
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4980
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4981

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4982
  br label %return, !dbg !4982

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4983, !range !4985, !noundef !611
  %tobool69 = trunc i8 %25 to i1, !dbg !4983
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4986

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4987

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !4988, !srcloc !4991
  unreachable, !dbg !4988

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4992

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4993

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4994

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4996

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4994

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #17, !dbg !4998, !srcloc !5000
  br label %do.end75, !dbg !4998

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4994

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5001
  br label %return, !dbg !5001

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5002
  ret i32 %26, !dbg !5002
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5003 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5006 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5010, metadata !DIExpression()), !dbg !5012
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5011, metadata !DIExpression()), !dbg !5013
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5014
  %and = and i32 %0, 17, !dbg !5014
  %cmp = icmp eq i32 %and, 0, !dbg !5014
  %lnot = xor i1 %cmp, true, !dbg !5014
  %lnot1 = xor i1 %lnot, true, !dbg !5014
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5014
  %conv = sext i32 %lnot.ext to i64, !dbg !5014
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5014
  %tobool = icmp ne i64 %expval, 0, !dbg !5014
  br i1 %tobool, label %if.then, label %if.end, !dbg !5016

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5017
  br label %return, !dbg !5017

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5018
  %and2 = and i32 %1, 1, !dbg !5020
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5020
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5021

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5023
  br label %return, !dbg !5023

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5025
  ret i32 %2, !dbg !5025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5026 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5027 dso_local void @__compiletime_assert_245() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #6 align 16 !dbg !5028 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5035
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #16, !dbg !5036
  ret void, !dbg !5037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !5038 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5042, metadata !DIExpression()), !dbg !5044
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5043, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5046
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5047
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !5048
  ret void, !dbg !5049
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !5050 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5054, metadata !DIExpression()), !dbg !5058
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5055, metadata !DIExpression()), !dbg !5059
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5056, metadata !DIExpression()), !dbg !5060
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5057, metadata !DIExpression()), !dbg !5062
  %0 = load i32, ptr %i.addr, align 4, !dbg !5063
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5064
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5065
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #16, !dbg !5066
  store i32 %call, ptr %old, align 4, !dbg !5062
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5067
  %tobool = icmp ne ptr %2, null, !dbg !5067
  br i1 %tobool, label %if.then, label %if.end, !dbg !5069

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5070
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5071
  store i32 %3, ptr %4, align 4, !dbg !5072
  br label %if.end, !dbg !5073

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5074
  %tobool1 = icmp ne i32 %5, 0, !dbg !5074
  %lnot = xor i1 %tobool1, true, !dbg !5074
  %lnot2 = xor i1 %lnot, true, !dbg !5074
  %lnot3 = xor i1 %lnot2, true, !dbg !5074
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5074
  %conv = sext i32 %lnot.ext to i64, !dbg !5074
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5074
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5074
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5076

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5077
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #16, !dbg !5078
  br label %if.end18, !dbg !5078

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5079
  %cmp = icmp slt i32 %7, 0, !dbg !5079
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5079

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5079
  %9 = load i32, ptr %i.addr, align 4, !dbg !5079
  %add = add i32 %8, %9, !dbg !5079
  %cmp7 = icmp slt i32 %add, 0, !dbg !5079
  br label %lor.end, !dbg !5079

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5079
  %lnot11 = xor i1 %lnot9, true, !dbg !5079
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5079
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5079
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5079
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5079
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5081

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5082
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #16, !dbg !5083
  br label %if.end17, !dbg !5083

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !5084
  ret void, !dbg !5084
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5085 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5091, metadata !DIExpression()), !dbg !5093
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5092, metadata !DIExpression()), !dbg !5094
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5095
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5096
  %1 = load i32, ptr %i.addr, align 4, !dbg !5097
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5098
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #16, !dbg !5099
  ret i32 %call, !dbg !5100
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5101 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5104 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5112, metadata !DIExpression()), !dbg !5114
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5113, metadata !DIExpression()), !dbg !5115
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5116
  %1 = load i64, ptr %size.addr, align 8, !dbg !5117
  %conv = trunc i64 %1 to i32, !dbg !5117
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5118
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5119
  %3 = load i64, ptr %size.addr, align 8, !dbg !5119
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !5119
  ret void, !dbg !5120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5121 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5124, metadata !DIExpression()), !dbg !5126
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5125, metadata !DIExpression()), !dbg !5127
  %0 = load i32, ptr %i.addr, align 4, !dbg !5128
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5129
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #16, !dbg !5130
  ret i32 %call, !dbg !5131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5132 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5137, metadata !DIExpression()), !dbg !5139
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5138, metadata !DIExpression()), !dbg !5140
  ret i1 true, !dbg !5141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5142 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5147, metadata !DIExpression()), !dbg !5150
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5148, metadata !DIExpression()), !dbg !5151
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5149, metadata !DIExpression()), !dbg !5152
  ret void, !dbg !5153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5154 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5157, metadata !DIExpression()), !dbg !5161
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5158, metadata !DIExpression()), !dbg !5162
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5159, metadata !DIExpression()), !dbg !5163
  %0 = load i32, ptr %i.addr, align 4, !dbg !5163
  store i32 %0, ptr %__ret, align 4, !dbg !5163
  %1 = load i32, ptr %__ret, align 4, !dbg !5163
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5163
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5163
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !5163, !srcloc !5164
  store i32 %3, ptr %__ret, align 4, !dbg !5163
  %4 = load i32, ptr %__ret, align 4, !dbg !5163
  store i32 %4, ptr %tmp, align 4, !dbg !5163
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !5165
  %5 = load i32, ptr %tmp, align 4, !dbg !5163
  ret i32 %5, !dbg !5166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_fs_context_free(ptr noundef %fc) #2 align 16 !dbg !5167 {
entry:
  %fc.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5169, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5170, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5174
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !5175
  %1 = load ptr, ptr %fs_private, align 8, !dbg !5175
  store ptr %1, ptr %ctx, align 8, !dbg !5173
  %2 = load ptr, ptr %ctx, align 8, !dbg !5176
  %pid_ns = getelementptr inbounds %struct.proc_fs_context, ptr %2, i32 0, i32 0, !dbg !5177
  %3 = load ptr, ptr %pid_ns, align 8, !dbg !5177
  call void @put_pid_ns(ptr noundef %3) #16, !dbg !5178
  %4 = load ptr, ptr %ctx, align 8, !dbg !5179
  call void @kfree(ptr noundef %4) #16, !dbg !5180
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !5181
  ret void, !dbg !5181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_parse_param(ptr noundef %fc, ptr noundef %param) #2 align 16 !dbg !5182 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %result = alloca %struct.fs_parse_result, align 8
  %opt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5184, metadata !DIExpression()), !dbg !5189
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5185, metadata !DIExpression()), !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5186, metadata !DIExpression()), !dbg !5192
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5193
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !5194
  %1 = load ptr, ptr %fs_private, align 8, !dbg !5194
  store ptr %1, ptr %ctx, align 8, !dbg !5192
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #17, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5187, metadata !DIExpression()), !dbg !5196
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt) #17, !dbg !5197
  call void @llvm.dbg.declare(metadata ptr %opt, metadata !5188, metadata !DIExpression()), !dbg !5198
  %2 = load ptr, ptr %fc.addr, align 8, !dbg !5199
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5200
  %call = call i32 @fs_parse(ptr noundef %2, ptr noundef @proc_fs_parameters, ptr noundef %3, ptr noundef %result) #16, !dbg !5201
  store i32 %call, ptr %opt, align 4, !dbg !5202
  %4 = load i32, ptr %opt, align 4, !dbg !5203
  %cmp = icmp slt i32 %4, 0, !dbg !5205
  br i1 %cmp, label %if.then, label %if.end, !dbg !5206

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %opt, align 4, !dbg !5207
  store i32 %5, ptr %retval, align 4, !dbg !5208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5208

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %opt, align 4, !dbg !5209
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ], !dbg !5210

sw.bb:                                            ; preds = %if.end
  %7 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1, !dbg !5211
  %8 = load i32, ptr %7, align 8, !dbg !5211
  %9 = load ptr, ptr %ctx, align 8, !dbg !5213
  %gid = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 3, !dbg !5214
  store i32 %8, ptr %gid, align 8, !dbg !5215
  br label %sw.epilog, !dbg !5216

sw.bb1:                                           ; preds = %if.end
  %10 = load ptr, ptr %fc.addr, align 8, !dbg !5217
  %11 = load ptr, ptr %param.addr, align 8, !dbg !5219
  %call2 = call i32 @proc_parse_hidepid_param(ptr noundef %10, ptr noundef %11) #16, !dbg !5220
  %tobool = icmp ne i32 %call2, 0, !dbg !5220
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !5221

if.then3:                                         ; preds = %sw.bb1
  store i32 -22, ptr %retval, align 4, !dbg !5222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5222

if.end4:                                          ; preds = %sw.bb1
  br label %sw.epilog, !dbg !5223

sw.bb5:                                           ; preds = %if.end
  %12 = load ptr, ptr %fc.addr, align 8, !dbg !5224
  %13 = load ptr, ptr %param.addr, align 8, !dbg !5226
  %14 = getelementptr inbounds %struct.fs_parameter, ptr %13, i32 0, i32 2, !dbg !5227
  %15 = load ptr, ptr %14, align 8, !dbg !5227
  %call6 = call i32 @proc_parse_subset_param(ptr noundef %12, ptr noundef %15) #16, !dbg !5228
  %cmp7 = icmp slt i32 %call6, 0, !dbg !5229
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5230

if.then8:                                         ; preds = %sw.bb5
  store i32 -22, ptr %retval, align 4, !dbg !5231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5231

if.end9:                                          ; preds = %sw.bb5
  br label %sw.epilog, !dbg !5232

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5233

sw.epilog:                                        ; preds = %if.end9, %if.end4, %sw.bb
  %16 = load i32, ptr %opt, align 4, !dbg !5234
  %shl = shl i32 1, %16, !dbg !5235
  %17 = load ptr, ptr %ctx, align 8, !dbg !5236
  %mask = getelementptr inbounds %struct.proc_fs_context, ptr %17, i32 0, i32 1, !dbg !5237
  %18 = load i32, ptr %mask, align 8, !dbg !5238
  %or = or i32 %18, %shl, !dbg !5238
  store i32 %or, ptr %mask, align 8, !dbg !5238
  store i32 0, ptr %retval, align 4, !dbg !5239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5239

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt) #17, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #17, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !5240
  %19 = load i32, ptr %retval, align 4, !dbg !5240
  ret i32 %19, !dbg !5240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_get_tree(ptr noundef %fc) #2 align 16 !dbg !5241 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5245
  %call = call i32 @get_tree_nodev(ptr noundef %0, ptr noundef @proc_fill_super) #16, !dbg !5246
  ret i32 %call, !dbg !5247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_reconfigure(ptr noundef %fc) #2 align 16 !dbg !5248 {
entry:
  %fc.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %fs_info = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5250, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #17, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5251, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5256
  %root = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5, !dbg !5257
  %1 = load ptr, ptr %root, align 8, !dbg !5257
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !5258
  %2 = load ptr, ptr %d_sb, align 8, !dbg !5258
  store ptr %2, ptr %sb, align 8, !dbg !5255
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_info) #17, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %fs_info, metadata !5252, metadata !DIExpression()), !dbg !5260
  %3 = load ptr, ptr %sb, align 8, !dbg !5261
  %call = call ptr @proc_sb_info(ptr noundef %3) #16, !dbg !5262
  store ptr %call, ptr %fs_info, align 8, !dbg !5260
  %4 = load ptr, ptr %sb, align 8, !dbg !5263
  %call1 = call i32 @sync_filesystem(ptr noundef %4) #16, !dbg !5264
  %5 = load ptr, ptr %fs_info, align 8, !dbg !5265
  %6 = load ptr, ptr %fc.addr, align 8, !dbg !5266
  %call2 = call ptr @current_user_ns() #16, !dbg !5267
  call void @proc_apply_options(ptr noundef %5, ptr noundef %6, ptr noundef %call2) #16, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_info) #17, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #17, !dbg !5269
  ret i32 0, !dbg !5270
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5271 dso_local void @put_pid_ns(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5274 dso_local void @kfree(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fs_parse(ptr noundef %fc, ptr noundef %desc, ptr noundef %param, ptr noundef %result) #6 align 16 !dbg !5277 {
entry:
  %fc.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5281, metadata !DIExpression()), !dbg !5285
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5282, metadata !DIExpression()), !dbg !5286
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5283, metadata !DIExpression()), !dbg !5287
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !5284, metadata !DIExpression()), !dbg !5288
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5289
  %log = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, !dbg !5290
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5291
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5292
  %3 = load ptr, ptr %result.addr, align 8, !dbg !5293
  %call = call i32 @__fs_parse(ptr noundef %log, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16, !dbg !5294
  ret i32 %call, !dbg !5295
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_parse_hidepid_param(ptr noundef %fc, ptr noundef %param) #2 align 16 !dbg !5296 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %hidepid_u32_spec = alloca %struct.fs_parameter_spec, align 8
  %result = alloca %struct.fs_parse_result, align 8
  %base = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5298, metadata !DIExpression()), !dbg !5304
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5299, metadata !DIExpression()), !dbg !5305
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5300, metadata !DIExpression()), !dbg !5307
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5308
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !5309
  %1 = load ptr, ptr %fs_private, align 8, !dbg !5309
  store ptr %1, ptr %ctx, align 8, !dbg !5307
  call void @llvm.lifetime.start.p0(i64 32, ptr %hidepid_u32_spec) #17, !dbg !5310
  call void @llvm.dbg.declare(metadata ptr %hidepid_u32_spec, metadata !5301, metadata !DIExpression()), !dbg !5311
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hidepid_u32_spec, ptr align 8 @__const.proc_parse_hidepid_param.hidepid_u32_spec, i64 32, i1 false), !dbg !5311
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #17, !dbg !5312
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5302, metadata !DIExpression()), !dbg !5313
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #17, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5303, metadata !DIExpression()), !dbg !5315
  %data = getelementptr inbounds %struct.fs_parameter_spec, ptr %hidepid_u32_spec, i32 0, i32 4, !dbg !5316
  %2 = load ptr, ptr %data, align 8, !dbg !5316
  %3 = ptrtoint ptr %2 to i64, !dbg !5317
  %conv = trunc i64 %3 to i32, !dbg !5317
  store i32 %conv, ptr %base, align 4, !dbg !5315
  %4 = load ptr, ptr %param.addr, align 8, !dbg !5318
  %type = getelementptr inbounds %struct.fs_parameter, ptr %4, i32 0, i32 1, !dbg !5320
  %bf.load = load i8, ptr %type, align 8, !dbg !5320
  %bf.cast = zext i8 %bf.load to i32, !dbg !5320
  %cmp = icmp ne i32 %bf.cast, 2, !dbg !5321
  br i1 %cmp, label %if.then, label %if.end, !dbg !5322

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fc.addr, align 8, !dbg !5323
  %log = getelementptr inbounds %struct.fs_context, ptr %5, i32 0, i32 9, !dbg !5323
  %log2 = getelementptr inbounds %struct.p_log, ptr %log, i32 0, i32 1, !dbg !5323
  %6 = load ptr, ptr %log2, align 8, !dbg !5323
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %6, ptr noundef null, i8 noundef zeroext 101, ptr noundef @.str.10) #16, !dbg !5323
  store i32 -22, ptr %retval, align 4, !dbg !5324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5324

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %param.addr, align 8, !dbg !5325
  %8 = getelementptr inbounds %struct.fs_parameter, ptr %7, i32 0, i32 2, !dbg !5327
  %9 = load ptr, ptr %8, align 8, !dbg !5327
  %10 = load i32, ptr %base, align 4, !dbg !5328
  %11 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1, !dbg !5329
  %call = call i32 @kstrtouint(ptr noundef %9, i32 noundef %10, ptr noundef %11) #16, !dbg !5330
  %tobool = icmp ne i32 %call, 0, !dbg !5330
  br i1 %tobool, label %if.end10, label %if.then3, !dbg !5331

if.then3:                                         ; preds = %if.end
  %12 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1, !dbg !5332
  %13 = load i32, ptr %12, align 8, !dbg !5332
  %call4 = call i32 @valid_hidepid(i32 noundef %13) #16, !dbg !5335
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5335
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !5336

if.then6:                                         ; preds = %if.then3
  %14 = load ptr, ptr %fc.addr, align 8, !dbg !5337
  %log7 = getelementptr inbounds %struct.fs_context, ptr %14, i32 0, i32 9, !dbg !5337
  %log8 = getelementptr inbounds %struct.p_log, ptr %log7, i32 0, i32 1, !dbg !5337
  %15 = load ptr, ptr %log8, align 8, !dbg !5337
  %16 = load ptr, ptr %param.addr, align 8, !dbg !5337
  %17 = getelementptr inbounds %struct.fs_parameter, ptr %16, i32 0, i32 2, !dbg !5337
  %18 = load ptr, ptr %17, align 8, !dbg !5337
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef null, i8 noundef zeroext 101, ptr noundef @.str.11, ptr noundef %18) #16, !dbg !5337
  store i32 -22, ptr %retval, align 4, !dbg !5338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5338

if.end9:                                          ; preds = %if.then3
  %19 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1, !dbg !5339
  %20 = load i32, ptr %19, align 8, !dbg !5339
  %21 = load ptr, ptr %ctx, align 8, !dbg !5340
  %hidepid = getelementptr inbounds %struct.proc_fs_context, ptr %21, i32 0, i32 2, !dbg !5341
  store i32 %20, ptr %hidepid, align 4, !dbg !5342
  store i32 0, ptr %retval, align 4, !dbg !5343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5343

if.end10:                                         ; preds = %if.end
  %22 = load ptr, ptr %param.addr, align 8, !dbg !5344
  %23 = getelementptr inbounds %struct.fs_parameter, ptr %22, i32 0, i32 2, !dbg !5346
  %24 = load ptr, ptr %23, align 8, !dbg !5346
  %call11 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.12) #16, !dbg !5347
  %tobool12 = icmp ne i32 %call11, 0, !dbg !5347
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !5348

if.then13:                                        ; preds = %if.end10
  %25 = load ptr, ptr %ctx, align 8, !dbg !5349
  %hidepid14 = getelementptr inbounds %struct.proc_fs_context, ptr %25, i32 0, i32 2, !dbg !5350
  store i32 0, ptr %hidepid14, align 4, !dbg !5351
  br label %if.end35, !dbg !5349

if.else:                                          ; preds = %if.end10
  %26 = load ptr, ptr %param.addr, align 8, !dbg !5352
  %27 = getelementptr inbounds %struct.fs_parameter, ptr %26, i32 0, i32 2, !dbg !5354
  %28 = load ptr, ptr %27, align 8, !dbg !5354
  %call15 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.13) #16, !dbg !5355
  %tobool16 = icmp ne i32 %call15, 0, !dbg !5355
  br i1 %tobool16, label %if.else19, label %if.then17, !dbg !5356

if.then17:                                        ; preds = %if.else
  %29 = load ptr, ptr %ctx, align 8, !dbg !5357
  %hidepid18 = getelementptr inbounds %struct.proc_fs_context, ptr %29, i32 0, i32 2, !dbg !5358
  store i32 1, ptr %hidepid18, align 4, !dbg !5359
  br label %if.end34, !dbg !5357

if.else19:                                        ; preds = %if.else
  %30 = load ptr, ptr %param.addr, align 8, !dbg !5360
  %31 = getelementptr inbounds %struct.fs_parameter, ptr %30, i32 0, i32 2, !dbg !5362
  %32 = load ptr, ptr %31, align 8, !dbg !5362
  %call20 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str.14) #16, !dbg !5363
  %tobool21 = icmp ne i32 %call20, 0, !dbg !5363
  br i1 %tobool21, label %if.else24, label %if.then22, !dbg !5364

if.then22:                                        ; preds = %if.else19
  %33 = load ptr, ptr %ctx, align 8, !dbg !5365
  %hidepid23 = getelementptr inbounds %struct.proc_fs_context, ptr %33, i32 0, i32 2, !dbg !5366
  store i32 2, ptr %hidepid23, align 4, !dbg !5367
  br label %if.end33, !dbg !5365

if.else24:                                        ; preds = %if.else19
  %34 = load ptr, ptr %param.addr, align 8, !dbg !5368
  %35 = getelementptr inbounds %struct.fs_parameter, ptr %34, i32 0, i32 2, !dbg !5370
  %36 = load ptr, ptr %35, align 8, !dbg !5370
  %call25 = call i32 @strcmp(ptr noundef %36, ptr noundef @.str.15) #16, !dbg !5371
  %tobool26 = icmp ne i32 %call25, 0, !dbg !5371
  br i1 %tobool26, label %if.else29, label %if.then27, !dbg !5372

if.then27:                                        ; preds = %if.else24
  %37 = load ptr, ptr %ctx, align 8, !dbg !5373
  %hidepid28 = getelementptr inbounds %struct.proc_fs_context, ptr %37, i32 0, i32 2, !dbg !5374
  store i32 4, ptr %hidepid28, align 4, !dbg !5375
  br label %if.end32, !dbg !5373

if.else29:                                        ; preds = %if.else24
  %38 = load ptr, ptr %fc.addr, align 8, !dbg !5376
  %log30 = getelementptr inbounds %struct.fs_context, ptr %38, i32 0, i32 9, !dbg !5376
  %log31 = getelementptr inbounds %struct.p_log, ptr %log30, i32 0, i32 1, !dbg !5376
  %39 = load ptr, ptr %log31, align 8, !dbg !5376
  %40 = load ptr, ptr %param.addr, align 8, !dbg !5376
  %41 = getelementptr inbounds %struct.fs_parameter, ptr %40, i32 0, i32 2, !dbg !5376
  %42 = load ptr, ptr %41, align 8, !dbg !5376
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %39, ptr noundef null, i8 noundef zeroext 101, ptr noundef @.str.11, ptr noundef %42) #16, !dbg !5376
  store i32 -22, ptr %retval, align 4, !dbg !5377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5377

if.end32:                                         ; preds = %if.then27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then22
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then13
  store i32 0, ptr %retval, align 4, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

cleanup:                                          ; preds = %if.end35, %if.else29, %if.end9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #17, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #17, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 32, ptr %hidepid_u32_spec) #17, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !5379
  %43 = load i32, ptr %retval, align 4, !dbg !5379
  ret i32 %43, !dbg !5379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_parse_subset_param(ptr noundef %fc, ptr noundef %value) #2 align 16 !dbg !5380 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5384, metadata !DIExpression()), !dbg !5389
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5385, metadata !DIExpression()), !dbg !5390
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !5391
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5386, metadata !DIExpression()), !dbg !5392
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5393
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !5394
  %1 = load ptr, ptr %fs_private, align 8, !dbg !5394
  store ptr %1, ptr %ctx, align 8, !dbg !5392
  br label %while.cond, !dbg !5395

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5396
  %tobool = icmp ne ptr %2, null, !dbg !5395
  br i1 %tobool, label %while.body, label %while.end, !dbg !5395

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #17, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !5387, metadata !DIExpression()), !dbg !5398
  %3 = load ptr, ptr %value.addr, align 8, !dbg !5399
  %call = call ptr @strchr(ptr noundef %3, i32 noundef 44) #16, !dbg !5400
  store ptr %call, ptr %ptr, align 8, !dbg !5398
  %4 = load ptr, ptr %ptr, align 8, !dbg !5401
  %cmp = icmp ne ptr %4, null, !dbg !5403
  br i1 %cmp, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %ptr, align 8, !dbg !5405
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !5405
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !5405
  store i8 0, ptr %5, align 1, !dbg !5406
  br label %if.end, !dbg !5407

if.end:                                           ; preds = %if.then, %while.body
  %6 = load ptr, ptr %value.addr, align 8, !dbg !5408
  %7 = load i8, ptr %6, align 1, !dbg !5410
  %conv = zext i8 %7 to i32, !dbg !5410
  %cmp1 = icmp ne i32 %conv, 0, !dbg !5411
  br i1 %cmp1, label %if.then3, label %if.end9, !dbg !5412

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %value.addr, align 8, !dbg !5413
  %call4 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.16) #16, !dbg !5416
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5416
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !5417

if.then6:                                         ; preds = %if.then3
  %9 = load ptr, ptr %ctx, align 8, !dbg !5418
  %pidonly = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 4, !dbg !5420
  store i32 1, ptr %pidonly, align 4, !dbg !5421
  br label %if.end8, !dbg !5422

if.else:                                          ; preds = %if.then3
  %10 = load ptr, ptr %fc.addr, align 8, !dbg !5423
  %log = getelementptr inbounds %struct.fs_context, ptr %10, i32 0, i32 9, !dbg !5423
  %log7 = getelementptr inbounds %struct.p_log, ptr %log, i32 0, i32 1, !dbg !5423
  %11 = load ptr, ptr %log7, align 8, !dbg !5423
  %12 = load ptr, ptr %value.addr, align 8, !dbg !5423
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %11, ptr noundef null, i8 noundef zeroext 101, ptr noundef @.str.17, ptr noundef %12) #16, !dbg !5423
  store i32 -22, ptr %retval, align 4, !dbg !5425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5425

if.end8:                                          ; preds = %if.then6
  br label %if.end9, !dbg !5426

if.end9:                                          ; preds = %if.end8, %if.end
  %13 = load ptr, ptr %ptr, align 8, !dbg !5427
  store ptr %13, ptr %value.addr, align 8, !dbg !5428
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5429
  br label %cleanup, !dbg !5429

cleanup:                                          ; preds = %if.end9, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #17, !dbg !5429
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5395, !llvm.loop !5430

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !5433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !5433

cleanup10:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !5434
  %14 = load i32, ptr %retval, align 4, !dbg !5434
  ret i32 %14, !dbg !5434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5435 dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5436 dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5439 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @valid_hidepid(i32 noundef %value) #6 align 16 !dbg !5443 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load i32, ptr %value.addr, align 4, !dbg !5449
  %cmp = icmp eq i32 %0, 0, !dbg !5450
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5451

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %value.addr, align 4, !dbg !5452
  %cmp1 = icmp eq i32 %1, 1, !dbg !5453
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2, !dbg !5454

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %value.addr, align 4, !dbg !5455
  %cmp3 = icmp eq i32 %2, 2, !dbg !5456
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5457

lor.rhs:                                          ; preds = %lor.lhs.false2
  %3 = load i32, ptr %value.addr, align 4, !dbg !5458
  %cmp4 = icmp eq i32 %3, 4, !dbg !5459
  br label %lor.end, !dbg !5457

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !5457
  ret i32 %lor.ext, !dbg !5460
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5461 dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5465 dso_local ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5468 dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_fill_super(ptr noundef %s, ptr noundef %fc) #2 align 16 !dbg !5474 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %fc.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %root_inode = alloca ptr, align 8
  %fs_info = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5476, metadata !DIExpression()), !dbg !5482
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5477, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5478, metadata !DIExpression()), !dbg !5485
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5486
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !5487
  %1 = load ptr, ptr %fs_private, align 8, !dbg !5487
  store ptr %1, ptr %ctx, align 8, !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_inode) #17, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %root_inode, metadata !5479, metadata !DIExpression()), !dbg !5489
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_info) #17, !dbg !5490
  call void @llvm.dbg.declare(metadata ptr %fs_info, metadata !5480, metadata !DIExpression()), !dbg !5491
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5481, metadata !DIExpression()), !dbg !5493
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #18, !dbg !5494
  store ptr %call, ptr %fs_info, align 8, !dbg !5495
  %2 = load ptr, ptr %fs_info, align 8, !dbg !5496
  %tobool = icmp ne ptr %2, null, !dbg !5496
  br i1 %tobool, label %if.end, label %if.then, !dbg !5498

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5499

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !5500
  %pid_ns = getelementptr inbounds %struct.proc_fs_context, ptr %3, i32 0, i32 0, !dbg !5501
  %4 = load ptr, ptr %pid_ns, align 8, !dbg !5501
  %call1 = call ptr @get_pid_ns(ptr noundef %4) #16, !dbg !5502
  %5 = load ptr, ptr %fs_info, align 8, !dbg !5503
  %pid_ns2 = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 0, !dbg !5504
  store ptr %call1, ptr %pid_ns2, align 8, !dbg !5505
  %6 = load ptr, ptr %fs_info, align 8, !dbg !5506
  %7 = load ptr, ptr %fc.addr, align 8, !dbg !5507
  %call3 = call ptr @current_user_ns() #16, !dbg !5508
  call void @proc_apply_options(ptr noundef %6, ptr noundef %7, ptr noundef %call3) #16, !dbg !5509
  %8 = load ptr, ptr %s.addr, align 8, !dbg !5510
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 11, !dbg !5511
  %9 = load i64, ptr %s_iflags, align 8, !dbg !5512
  %or = or i64 %9, 22, !dbg !5512
  store i64 %or, ptr %s_iflags, align 8, !dbg !5512
  %10 = load ptr, ptr %s.addr, align 8, !dbg !5513
  %s_flags = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 10, !dbg !5514
  %11 = load i64, ptr %s_flags, align 16, !dbg !5515
  %or4 = or i64 %11, 2058, !dbg !5515
  store i64 %or4, ptr %s_flags, align 16, !dbg !5515
  %12 = load ptr, ptr %s.addr, align 8, !dbg !5516
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 3, !dbg !5517
  store i64 1024, ptr %s_blocksize, align 8, !dbg !5518
  %13 = load ptr, ptr %s.addr, align 8, !dbg !5519
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 2, !dbg !5520
  store i8 10, ptr %s_blocksize_bits, align 4, !dbg !5521
  %14 = load ptr, ptr %s.addr, align 8, !dbg !5522
  %s_magic = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 12, !dbg !5523
  store i64 40864, ptr %s_magic, align 32, !dbg !5524
  %15 = load ptr, ptr %s.addr, align 8, !dbg !5525
  %s_op = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 6, !dbg !5526
  store ptr @proc_sops, ptr %s_op, align 16, !dbg !5527
  %16 = load ptr, ptr %s.addr, align 8, !dbg !5528
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 30, !dbg !5529
  store i32 1, ptr %s_time_gran, align 8, !dbg !5530
  %17 = load ptr, ptr %fs_info, align 8, !dbg !5531
  %18 = load ptr, ptr %s.addr, align 8, !dbg !5532
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 29, !dbg !5533
  store ptr %17, ptr %s_fs_info, align 32, !dbg !5534
  %19 = load ptr, ptr %s.addr, align 8, !dbg !5535
  %s_stack_depth = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 54, !dbg !5536
  store i32 2, ptr %s_stack_depth, align 64, !dbg !5537
  %20 = load ptr, ptr %s.addr, align 8, !dbg !5538
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 41, !dbg !5539
  %seeks = getelementptr inbounds %struct.shrinker, ptr %s_shrink, i32 0, i32 3, !dbg !5540
  store i32 0, ptr %seeks, align 8, !dbg !5541
  call void @pde_get(ptr noundef @proc_root) #16, !dbg !5542
  %21 = load ptr, ptr %s.addr, align 8, !dbg !5543
  %call5 = call ptr @proc_get_inode(ptr noundef %21, ptr noundef @proc_root) #16, !dbg !5544
  store ptr %call5, ptr %root_inode, align 8, !dbg !5545
  %22 = load ptr, ptr %root_inode, align 8, !dbg !5546
  %tobool6 = icmp ne ptr %22, null, !dbg !5546
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !5548

if.then7:                                         ; preds = %if.end
  br label %do.body, !dbg !5549

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !5552

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5552

do.end:                                           ; preds = %do.cond
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #22, !dbg !5549
  store i32 %call8, ptr %tmp, align 4, !dbg !5552
  %23 = load i32, ptr %tmp, align 4, !dbg !5549
  store i32 -12, ptr %retval, align 4, !dbg !5554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5554

if.end9:                                          ; preds = %if.end
  %24 = load ptr, ptr %root_inode, align 8, !dbg !5555
  %call10 = call ptr @d_make_root(ptr noundef %24) #16, !dbg !5556
  %25 = load ptr, ptr %s.addr, align 8, !dbg !5557
  %s_root = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 13, !dbg !5558
  store ptr %call10, ptr %s_root, align 8, !dbg !5559
  %26 = load ptr, ptr %s.addr, align 8, !dbg !5560
  %s_root11 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 13, !dbg !5562
  %27 = load ptr, ptr %s_root11, align 8, !dbg !5562
  %tobool12 = icmp ne ptr %27, null, !dbg !5560
  br i1 %tobool12, label %if.end19, label %if.then13, !dbg !5563

if.then13:                                        ; preds = %if.end9
  br label %do.body14, !dbg !5564

do.body14:                                        ; preds = %if.then13
  br label %do.cond15, !dbg !5567

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5567

do.end16:                                         ; preds = %do.cond15
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #22, !dbg !5564
  store i32 %call18, ptr %tmp17, align 4, !dbg !5567
  %28 = load i32, ptr %tmp17, align 4, !dbg !5564
  store i32 -12, ptr %retval, align 4, !dbg !5569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5569

if.end19:                                         ; preds = %if.end9
  %29 = load ptr, ptr %s.addr, align 8, !dbg !5570
  %call20 = call i32 @proc_setup_self(ptr noundef %29) #16, !dbg !5571
  store i32 %call20, ptr %ret, align 4, !dbg !5572
  %30 = load i32, ptr %ret, align 4, !dbg !5573
  %tobool21 = icmp ne i32 %30, 0, !dbg !5573
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5575

if.then22:                                        ; preds = %if.end19
  %31 = load i32, ptr %ret, align 4, !dbg !5576
  store i32 %31, ptr %retval, align 4, !dbg !5578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5578

if.end23:                                         ; preds = %if.end19
  %32 = load ptr, ptr %s.addr, align 8, !dbg !5579
  %call24 = call i32 @proc_setup_thread_self(ptr noundef %32) #16, !dbg !5580
  store i32 %call24, ptr %retval, align 4, !dbg !5581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

cleanup:                                          ; preds = %if.end23, %if.then22, %do.end16, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5582
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_info) #17, !dbg !5582
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_inode) #17, !dbg !5582
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !5582
  %33 = load i32, ptr %retval, align 4, !dbg !5582
  ret i32 %33, !dbg !5582
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_apply_options(ptr noundef %fs_info, ptr noundef %fc, ptr noundef %user_ns) #2 align 16 !dbg !5583 {
entry:
  %fs_info.addr = alloca ptr, align 8
  %fc.addr = alloca ptr, align 8
  %user_ns.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca %struct.kgid_t, align 4
  store ptr %fs_info, ptr %fs_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_info.addr, metadata !5587, metadata !DIExpression()), !dbg !5591
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !5588, metadata !DIExpression()), !dbg !5592
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !5589, metadata !DIExpression()), !dbg !5593
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5590, metadata !DIExpression()), !dbg !5595
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !5596
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !5597
  %1 = load ptr, ptr %fs_private, align 8, !dbg !5597
  store ptr %1, ptr %ctx, align 8, !dbg !5595
  %2 = load ptr, ptr %ctx, align 8, !dbg !5598
  %mask = getelementptr inbounds %struct.proc_fs_context, ptr %2, i32 0, i32 1, !dbg !5600
  %3 = load i32, ptr %mask, align 8, !dbg !5600
  %and = and i32 %3, 1, !dbg !5601
  %tobool = icmp ne i32 %and, 0, !dbg !5601
  br i1 %tobool, label %if.then, label %if.end, !dbg !5602

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %fs_info.addr, align 8, !dbg !5603
  %pid_gid = getelementptr inbounds %struct.proc_fs_info, ptr %4, i32 0, i32 3, !dbg !5604
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #17, !dbg !5605
  %5 = load ptr, ptr %user_ns.addr, align 8, !dbg !5606
  %6 = load ptr, ptr %ctx, align 8, !dbg !5607
  %gid = getelementptr inbounds %struct.proc_fs_context, ptr %6, i32 0, i32 3, !dbg !5608
  %7 = load i32, ptr %gid, align 8, !dbg !5608
  %call = call i32 @make_kgid(ptr noundef %5, i32 noundef %7) #16, !dbg !5605
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %tmp, i32 0, i32 0, !dbg !5605
  store i32 %call, ptr %coerce.dive, align 4, !dbg !5605
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pid_gid, ptr align 4 %tmp, i64 4, i1 false), !dbg !5605
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #17, !dbg !5605
  br label %if.end, !dbg !5603

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %ctx, align 8, !dbg !5609
  %mask1 = getelementptr inbounds %struct.proc_fs_context, ptr %8, i32 0, i32 1, !dbg !5611
  %9 = load i32, ptr %mask1, align 8, !dbg !5611
  %and2 = and i32 %9, 2, !dbg !5612
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5612
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5613

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %ctx, align 8, !dbg !5614
  %hidepid = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 2, !dbg !5615
  %11 = load i32, ptr %hidepid, align 4, !dbg !5615
  %12 = load ptr, ptr %fs_info.addr, align 8, !dbg !5616
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, ptr %12, i32 0, i32 4, !dbg !5617
  store i32 %11, ptr %hide_pid, align 4, !dbg !5618
  br label %if.end5, !dbg !5616

if.end5:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %ctx, align 8, !dbg !5619
  %mask6 = getelementptr inbounds %struct.proc_fs_context, ptr %13, i32 0, i32 1, !dbg !5621
  %14 = load i32, ptr %mask6, align 8, !dbg !5621
  %and7 = and i32 %14, 4, !dbg !5622
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5622
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5623

if.then9:                                         ; preds = %if.end5
  %15 = load ptr, ptr %ctx, align 8, !dbg !5624
  %pidonly = getelementptr inbounds %struct.proc_fs_context, ptr %15, i32 0, i32 4, !dbg !5625
  %16 = load i32, ptr %pidonly, align 4, !dbg !5625
  %17 = load ptr, ptr %fs_info.addr, align 8, !dbg !5626
  %pidonly10 = getelementptr inbounds %struct.proc_fs_info, ptr %17, i32 0, i32 5, !dbg !5627
  store i32 %16, ptr %pidonly10, align 8, !dbg !5628
  br label %if.end11, !dbg !5626

if.end11:                                         ; preds = %if.then9, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !5629
  ret void, !dbg !5629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #6 align 16 !dbg !5630 {
entry:
  ret ptr @init_user_ns, !dbg !5633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pde_get(ptr noundef %pde) #6 align 16 !dbg !5634 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !5640
  %refcnt = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 1, !dbg !5641
  call void @refcount_inc(ptr noundef %refcnt) #16, !dbg !5642
  ret void, !dbg !5643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5644 dso_local ptr @proc_get_inode(ptr noundef, ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5647 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5651 dso_local ptr @d_make_root(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5654 dso_local i32 @proc_setup_self(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5655 dso_local i32 @proc_setup_thread_self(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #6 align 16 !dbg !5656 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5660, metadata !DIExpression()), !dbg !5662
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !5661, metadata !DIExpression()), !dbg !5663
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5664
  %0 = load i32, ptr %gid.addr, align 4, !dbg !5664
  store i32 %0, ptr %val, align 4, !dbg !5664
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5665
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5665
  ret i32 %1, !dbg !5665
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_sb_info(ptr noundef %sb) #6 align 16 !dbg !5666 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5672
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5673
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5673
  ret ptr %1, !dbg !5674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local i32 @sync_filesystem(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5676 dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5677 dso_local void @dput(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_root_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 16 !dbg !5678 {
entry:
  %retval = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5680, metadata !DIExpression()), !dbg !5683
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5681, metadata !DIExpression()), !dbg !5684
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5682, metadata !DIExpression()), !dbg !5685
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5686
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5688
  %call = call ptr @proc_pid_lookup(ptr noundef %0, i32 noundef %1) #16, !dbg !5689
  %tobool = icmp ne ptr %call, null, !dbg !5689
  br i1 %tobool, label %if.end, label %if.then, !dbg !5690

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5691
  br label %return, !dbg !5691

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5692
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5693
  %4 = load i32, ptr %flags.addr, align 4, !dbg !5694
  %call1 = call ptr @proc_lookup(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !5695
  store ptr %call1, ptr %retval, align 8, !dbg !5696
  br label %return, !dbg !5696

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5697
  ret ptr %5, !dbg !5697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_root_getattr(ptr noundef %idmap, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #2 align 16 !dbg !5698 {
entry:
  %idmap.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %request_mask.addr = alloca i32, align 4
  %query_flags.addr = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5700, metadata !DIExpression()), !dbg !5705
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5701, metadata !DIExpression()), !dbg !5706
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !5702, metadata !DIExpression()), !dbg !5707
  store i32 %request_mask, ptr %request_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request_mask.addr, metadata !5703, metadata !DIExpression()), !dbg !5708
  store i32 %query_flags, ptr %query_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %query_flags.addr, metadata !5704, metadata !DIExpression()), !dbg !5709
  %0 = load i32, ptr %request_mask.addr, align 4, !dbg !5710
  %1 = load ptr, ptr %path.addr, align 8, !dbg !5711
  %dentry = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1, !dbg !5712
  %2 = load ptr, ptr %dentry, align 8, !dbg !5712
  %call = call ptr @d_inode(ptr noundef %2) #16, !dbg !5713
  %3 = load ptr, ptr %stat.addr, align 8, !dbg !5714
  call void @generic_fillattr(ptr noundef @nop_mnt_idmap, i32 noundef %0, ptr noundef %call, ptr noundef %3) #16, !dbg !5715
  %4 = load i32, ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 13), align 8, !dbg !5716
  %call1 = call i32 @nr_processes() #16, !dbg !5717
  %add = add i32 %4, %call1, !dbg !5718
  %5 = load ptr, ptr %stat.addr, align 8, !dbg !5719
  %nlink = getelementptr inbounds %struct.kstat, ptr %5, i32 0, i32 2, !dbg !5720
  store i32 %add, ptr %nlink, align 8, !dbg !5721
  ret i32 0, !dbg !5722
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5723 dso_local ptr @proc_pid_lookup(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5726 dso_local ptr @proc_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5727 dso_local void @generic_fillattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #6 align 16 !dbg !5730 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5736
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5737
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5737
  ret ptr %1, !dbg !5738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5739 dso_local i32 @nr_processes() #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_read_dir(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_root_readdir(ptr noundef %file, ptr noundef %ctx) #2 align 16 !dbg !5741 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5743, metadata !DIExpression()), !dbg !5748
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5744, metadata !DIExpression()), !dbg !5749
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !5750
  %pos = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 1, !dbg !5751
  %1 = load i64, ptr %pos, align 8, !dbg !5751
  %cmp = icmp slt i64 %1, 256, !dbg !5752
  br i1 %cmp, label %if.then, label %if.end5, !dbg !5753

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5745, metadata !DIExpression()), !dbg !5755
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5756
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !5757
  %call = call i32 @proc_readdir(ptr noundef %2, ptr noundef %3) #16, !dbg !5758
  store i32 %call, ptr %error, align 4, !dbg !5755
  %4 = load i32, ptr %error, align 4, !dbg !5759
  %cmp1 = icmp sle i32 %4, 0, !dbg !5759
  %lnot = xor i1 %cmp1, true, !dbg !5759
  %lnot2 = xor i1 %lnot, true, !dbg !5759
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5759
  %conv = sext i32 %lnot.ext to i64, !dbg !5759
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5759
  %tobool = icmp ne i64 %expval, 0, !dbg !5759
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5761

if.then3:                                         ; preds = %if.then
  %5 = load i32, ptr %error, align 4, !dbg !5762
  store i32 %5, ptr %retval, align 4, !dbg !5763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5763

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !5764
  %pos4 = getelementptr inbounds %struct.dir_context, ptr %6, i32 0, i32 1, !dbg !5765
  store i64 256, ptr %pos4, align 8, !dbg !5766
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5767
  br label %cleanup, !dbg !5767

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !5767
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !5768

if.end5:                                          ; preds = %cleanup.cont, %entry
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5769
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !5770
  %call6 = call i32 @proc_pid_readdir(ptr noundef %7, ptr noundef %8) #16, !dbg !5771
  store i32 %call6, ptr %retval, align 4, !dbg !5772
  br label %return, !dbg !5772

return:                                           ; preds = %if.end5, %cleanup
  %9 = load i32, ptr %retval, align 4, !dbg !5773
  ret i32 %9, !dbg !5773

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local i32 @proc_readdir(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5775 dso_local i32 @proc_pid_readdir(ptr noundef, ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }
attributes #22 = { cold noredzone }

!llvm.dbg.cu = !{!31}
!llvm.module.flags = !{!4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629}
!llvm.ident = !{!4630}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/proc/root.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86c586f4306dd3edfd62c6d143b65392")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 8)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "proc_fs_type", scope: !31, file: !2, line: 277, type: !1439, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.root.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22root\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/root.ll fs/proc/root.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !32, retainedTypes: !272, globals: !4491, splitDebugInlining: false, nameTableKind: None)
!32 = !{!33, !43, !48, !55, !63, !79, !86, !92, !187, !193, !200, !208, !213, !222, !227, !233, !240, !244, !249, !259, !267}
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !34, line: 51, baseType: !35, size: 32, elements: !36)
!34 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!38 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!39 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!40 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!41 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!42 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !44, line: 65, baseType: !35, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!47 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !49, line: 312, baseType: !35, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!52 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!53 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!54 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !56, line: 68, baseType: !35, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !64, line: 1325, baseType: !35, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!66 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!67 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!68 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!69 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!70 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!71 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!72 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!73 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!74 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!75 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!76 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!77 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!78 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !80, line: 15, baseType: !35, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!83 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!84 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !87, line: 26, baseType: !35, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !94, file: !93, line: 147, baseType: !35, size: 32, elements: !184)
!93 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !93, line: 135, size: 512, elements: !95)
!95 = !{!96, !99, !101, !103, !107, !108, !124, !182, !183}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !94, file: !93, line: 136, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !94, file: !93, line: 137, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !94, file: !93, line: 138, baseType: !102, size: 32, offset: 128)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !94, file: !93, line: 139, baseType: !104, size: 16, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !105, line: 24, baseType: !106)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !93, line: 150, baseType: !92, size: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !94, file: !93, line: 151, baseType: !109, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !93, line: 64, baseType: !111)
!111 = !DISubroutineType(types: !112)
!112 = !{!102, !113, !102, !100, !114, !120}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 61, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !117, line: 72, baseType: !118)
!117 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !117, line: 16, baseType: !119)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !105, line: 52, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !117, line: 88, baseType: !123)
!123 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !94, file: !93, line: 152, baseType: !125, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !93, line: 117, size: 256, elements: !127)
!127 = !{!128, !133}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !126, file: !93, line: 118, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 174, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 172, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !130, file: !105, line: 173, baseType: !102, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !126, file: !93, line: 119, baseType: !134, size: 192, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !135, line: 41, baseType: !136)
!135 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !135, line: 37, size: 192, elements: !137)
!137 = !{!138, !176}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !136, file: !135, line: 38, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !140, line: 29, baseType: !141)
!140 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !140, line: 17, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 18, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 18, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !144, file: !140, line: 19, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !148, line: 14, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !147, file: !148, line: 15, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !152, line: 44, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !152, line: 14, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 15, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 15, size: 32, elements: !157)
!157 = !{!158, !159, !169}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !156, file: !152, line: 16, baseType: !129, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !152, line: 24, baseType: !160, size: 16)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !152, line: 24, size: 16, elements: !161)
!161 = !{!162, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !160, file: !152, line: 25, baseType: !163, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !164, line: 17, baseType: !165)
!164 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !166, line: 21, baseType: !167)
!166 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !160, file: !152, line: 26, baseType: !163, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !152, line: 28, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !152, line: 28, size: 32, elements: !171)
!171 = !{!172, !175}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !170, file: !152, line: 29, baseType: !173, size: 16)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !164, line: 19, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !166, line: 24, baseType: !106)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !170, file: !152, line: 30, baseType: !173, size: 16, offset: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !136, file: !135, line: 39, baseType: !177, size: 128, offset: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 190, size: 128, elements: !178)
!178 = !{!179, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !105, line: 191, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !105, line: 191, baseType: !180, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !94, file: !93, line: 153, baseType: !100, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !94, file: !93, line: 154, baseType: !100, size: 64, offset: 448)
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!186 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !188, line: 16, baseType: !35, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "TT_NONE", value: 0)
!191 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!192 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !194, line: 51, baseType: !35, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!195 = !{!196, !197, !198, !199}
!196 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!197 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!198 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!199 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !201, line: 9, baseType: !35, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!204 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!205 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!206 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!207 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !34, line: 29, baseType: !35, size: 32, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!211 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!212 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !34, line: 38, baseType: !35, size: 32, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221}
!215 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!216 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!217 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!218 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!219 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!220 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!221 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !223, line: 2052, baseType: !35, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!224 = !{!225, !226}
!225 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!226 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !228, line: 54, baseType: !35, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "USRQUOTA", value: 0)
!231 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!232 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_hidepid", file: !234, line: 48, baseType: !35, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!235 = !{!236, !237, !238, !239}
!236 = !DIEnumerator(name: "HIDEPID_OFF", value: 0)
!237 = !DIEnumerator(name: "HIDEPID_NO_ACCESS", value: 1)
!238 = !DIEnumerator(name: "HIDEPID_INVISIBLE", value: 2)
!239 = !DIEnumerator(name: "HIDEPID_NOT_PTRACEABLE", value: 4)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_pidonly", file: !234, line: 56, baseType: !35, size: 32, elements: !241)
!241 = !{!242, !243}
!242 = !DIEnumerator(name: "PROC_PIDONLY_OFF", value: 0)
!243 = !DIEnumerator(name: "PROC_PIDONLY_ON", value: 1)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 10, baseType: !35, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!246 = !{!247, !248}
!247 = !DIEnumerator(name: "false", value: 0)
!248 = !DIEnumerator(name: "true", value: 1)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !250, line: 364, baseType: !35, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!253 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!254 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!255 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!256 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!257 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!258 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !260, line: 119, baseType: !35, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!263 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!264 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!265 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!266 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_param", file: !2, line: 37, baseType: !35, size: 32, elements: !268)
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "Opt_gid", value: 0)
!270 = !DIEnumerator(name: "Opt_hidepid", value: 1)
!271 = !DIEnumerator(name: "Opt_subset", value: 2)
!272 = !{!100, !273, !119, !274, !275}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 154, baseType: !35)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !277, line: 746, size: 58368, elements: !278)
!277 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!278 = !{!279, !289, !290, !291, !296, !297, !298, !299, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !382, !393, !492, !496, !499, !530, !531, !532, !533, !544, !546, !547, !548, !549, !550, !551, !562, !563, !566, !567, !568, !569, !570, !571, !572, !573, !580, !581, !588, !589, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3691, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3739, !3745, !3746, !3747, !3748, !3749, !3751, !3754, !3761, !3766, !3767, !3770, !3773, !3774, !3908, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3946, !3947, !3948, !3957, !3965, !3966, !3967, !3968, !3969, !3974, !3975, !3976, !3979, !3980, !3983, !3986, !3989, !3997, !4000, !4001, !4086, !4087, !4088, !4089, !4090, !4096, !4097, !4098, !4099, !4102, !4103, !4106, !4109, !4110, !4113, !4114, !4115, !4118, !4119, !4120, !4121, !4122, !4123, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4155, !4156, !4162, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4174, !4246, !4248, !4249, !4250, !4251, !4252, !4253, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4270, !4271, !4272}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !276, file: !277, line: 752, baseType: !280, size: 192)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !281, line: 56, size: 192, elements: !282)
!281 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!282 = !{!283, !284, !285, !288}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !281, line: 57, baseType: !119, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !280, file: !281, line: 58, baseType: !119, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !280, file: !281, line: 59, baseType: !286, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !164, line: 21, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !166, line: 27, baseType: !35)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !280, file: !281, line: 61, baseType: !286, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !276, file: !277, line: 754, baseType: !35, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !276, file: !277, line: 767, baseType: !100, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !276, file: !277, line: 768, baseType: !292, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !260, line: 113, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !260, line: 111, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !293, file: !260, line: 112, baseType: !129, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !277, line: 770, baseType: !35, size: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !276, file: !277, line: 771, baseType: !35, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !276, file: !277, line: 774, baseType: !102, size: 32, offset: 416)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !276, file: !277, line: 775, baseType: !300, size: 128, offset: 448)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !301, line: 58, size: 128, elements: !302)
!301 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!302 = !{!303, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !300, file: !301, line: 59, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !305, line: 60, size: 64, elements: !306)
!305 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !305, line: 61, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !301, line: 60, baseType: !310, size: 32, offset: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 60, size: 32, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !310, file: !301, line: 61, baseType: !35, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !310, file: !301, line: 62, baseType: !129, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !300, file: !301, line: 65, baseType: !173, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !300, file: !301, line: 65, baseType: !173, size: 16, offset: 112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !276, file: !277, line: 776, baseType: !35, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !276, file: !277, line: 777, baseType: !119, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !276, file: !277, line: 778, baseType: !275, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !276, file: !277, line: 787, baseType: !102, size: 32, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !276, file: !277, line: 788, baseType: !102, size: 32, offset: 800)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !276, file: !277, line: 790, baseType: !102, size: 32, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !276, file: !277, line: 792, baseType: !102, size: 32, offset: 864)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !276, file: !277, line: 793, baseType: !102, size: 32, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !276, file: !277, line: 794, baseType: !102, size: 32, offset: 928)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !276, file: !277, line: 795, baseType: !35, size: 32, offset: 960)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !276, file: !277, line: 797, baseType: !327, size: 2048, offset: 1024)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !277, line: 551, size: 2048, elements: !328)
!328 = !{!329, !334, !342, !346, !347, !348, !349, !350, !351, !352, !353, !356, !357, !358, !359, !361, !364, !365, !366}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !327, file: !277, line: 553, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !277, line: 411, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !330, file: !277, line: 412, baseType: !119, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !330, file: !277, line: 413, baseType: !286, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !327, file: !277, line: 554, baseType: !335, size: 192, align: 64, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !336, line: 5, size: 192, align: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!337 = !{!338, !339, !341}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !335, file: !336, line: 6, baseType: !119, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !335, file: !336, line: 7, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !335, file: !336, line: 8, baseType: !340, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !327, file: !277, line: 555, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !164, line: 23, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !166, line: 31, baseType: !345)
!345 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !327, file: !277, line: 556, baseType: !343, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !327, file: !277, line: 558, baseType: !177, size: 128, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !327, file: !277, line: 559, baseType: !35, size: 32, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !327, file: !277, line: 561, baseType: !343, size: 64, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !327, file: !277, line: 562, baseType: !343, size: 64, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !327, file: !277, line: 563, baseType: !343, size: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !327, file: !277, line: 564, baseType: !343, size: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !327, file: !277, line: 565, baseType: !354, size: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !164, line: 22, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !166, line: 30, baseType: !123)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !327, file: !277, line: 566, baseType: !343, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !327, file: !277, line: 568, baseType: !343, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !327, file: !277, line: 571, baseType: !102, size: 32, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !327, file: !277, line: 572, baseType: !360, size: 64, offset: 1152)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !327, file: !277, line: 574, baseType: !362, size: 64, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !277, line: 49, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !327, file: !277, line: 576, baseType: !362, size: 64, offset: 1280)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !327, file: !277, line: 578, baseType: !119, size: 64, offset: 1344)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !327, file: !277, line: 588, baseType: !367, size: 512, align: 512, offset: 1536)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !277, line: 497, size: 512, align: 512, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !367, file: !277, line: 498, baseType: !343, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !367, file: !277, line: 499, baseType: !343, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !367, file: !277, line: 500, baseType: !343, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !367, file: !277, line: 501, baseType: !286, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !367, file: !277, line: 502, baseType: !286, size: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !367, file: !277, line: 503, baseType: !119, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !367, file: !277, line: 504, baseType: !119, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !367, file: !277, line: 505, baseType: !119, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !367, file: !277, line: 506, baseType: !378, size: 64, align: 64, offset: 448)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !277, line: 445, size: 64, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !378, file: !277, line: 446, baseType: !35, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !378, file: !277, line: 447, baseType: !35, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !276, file: !277, line: 798, baseType: !383, size: 384, offset: 3072)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !277, line: 592, size: 384, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !383, file: !277, line: 593, baseType: !177, size: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !383, file: !277, line: 594, baseType: !119, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !383, file: !277, line: 595, baseType: !119, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !383, file: !277, line: 596, baseType: !35, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !383, file: !277, line: 597, baseType: !106, size: 16, offset: 288)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !383, file: !277, line: 598, baseType: !106, size: 16, offset: 304)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !383, file: !277, line: 600, baseType: !392, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !276, file: !277, line: 799, baseType: !394, size: 1792, offset: 3456)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !277, line: 610, size: 1792, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !489, !490}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !394, file: !277, line: 611, baseType: !335, size: 192, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !394, file: !277, line: 618, baseType: !343, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !394, file: !277, line: 619, baseType: !343, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !394, file: !277, line: 620, baseType: !343, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !394, file: !277, line: 621, baseType: !343, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !394, file: !277, line: 622, baseType: !343, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !394, file: !277, line: 629, baseType: !354, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !394, file: !277, line: 630, baseType: !343, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !277, line: 631, baseType: !35, size: 32, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !394, file: !277, line: 653, baseType: !35, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !394, file: !277, line: 654, baseType: !35, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !394, file: !277, line: 655, baseType: !35, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !394, file: !277, line: 656, baseType: !35, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !394, file: !277, line: 662, baseType: !410, size: 512, offset: 704)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !44, line: 118, size: 512, elements: !411)
!411 = !{!412, !420, !421, !426, !485, !486, !487, !488}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !410, file: !44, line: 119, baseType: !413, size: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !414, line: 9, size: 256, elements: !415)
!414 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !413, file: !414, line: 10, baseType: !335, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !413, file: !414, line: 11, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !419, line: 29, baseType: !354)
!419 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !410, file: !44, line: 120, baseType: !418, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !410, file: !44, line: 121, baseType: !422, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!43, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !410, file: !44, line: 122, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !44, line: 159, size: 512, align: 512, elements: !429)
!429 = !{!430, !454, !455, !458, !468, !469, !480, !484}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !428, file: !44, line: 160, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !44, line: 215, size: 4608, align: 512, elements: !433)
!433 = !{!434, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !432, file: !44, line: 216, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !148, line: 23, baseType: !147)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !432, file: !44, line: 217, baseType: !35, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !432, file: !44, line: 218, baseType: !35, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !432, file: !44, line: 219, baseType: !35, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !432, file: !44, line: 220, baseType: !35, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !432, file: !44, line: 221, baseType: !35, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !432, file: !44, line: 222, baseType: !35, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !432, file: !44, line: 223, baseType: !35, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !432, file: !44, line: 224, baseType: !35, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !432, file: !44, line: 226, baseType: !35, size: 32, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !432, file: !44, line: 227, baseType: !106, size: 16, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !432, file: !44, line: 228, baseType: !106, size: 16, offset: 208)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !432, file: !44, line: 229, baseType: !35, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !432, file: !44, line: 235, baseType: !418, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !432, file: !44, line: 236, baseType: !425, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !432, file: !44, line: 237, baseType: !418, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !432, file: !44, line: 238, baseType: !425, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !432, file: !44, line: 239, baseType: !453, size: 4096, align: 512, offset: 512)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 4096, align: 512, elements: !22)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !428, file: !44, line: 161, baseType: !35, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !428, file: !44, line: 162, baseType: !456, size: 32, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !105, line: 32, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !117, line: 96, baseType: !102)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !428, file: !44, line: 163, baseType: !459, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !460, line: 274, baseType: !461)
!460 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !460, line: 274, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !461, file: !460, line: 274, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !460, line: 69, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !460, line: 64, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !465, file: !460, line: 65, baseType: !35, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !428, file: !44, line: 164, baseType: !425, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !428, file: !44, line: 165, baseType: !470, size: 128, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !414, line: 14, size: 128, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !470, file: !414, line: 15, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !336, line: 26, size: 128, elements: !474)
!474 = !{!475, !479}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !473, file: !336, line: 27, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !336, line: 12, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !476, file: !336, line: 13, baseType: !340, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !473, file: !336, line: 28, baseType: !340, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !428, file: !44, line: 166, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!418}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !428, file: !44, line: 167, baseType: !418, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !410, file: !44, line: 123, baseType: !163, size: 8, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !410, file: !44, line: 124, baseType: !163, size: 8, offset: 456)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !410, file: !44, line: 125, baseType: !163, size: 8, offset: 464)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !410, file: !44, line: 126, baseType: !163, size: 8, offset: 472)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !394, file: !277, line: 671, baseType: !410, size: 512, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !394, file: !277, line: 679, baseType: !491, size: 64, offset: 1728)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !276, file: !277, line: 800, baseType: !493, size: 64, offset: 5248)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !277, line: 800, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !276, file: !277, line: 809, baseType: !497, size: 64, offset: 5312)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !277, line: 70, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !276, file: !277, line: 825, baseType: !500, size: 2048, align: 512, offset: 5632)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !277, line: 509, size: 2048, align: 512, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !500, file: !277, line: 511, baseType: !343, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !500, file: !277, line: 512, baseType: !343, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !500, file: !277, line: 513, baseType: !343, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !500, file: !277, line: 514, baseType: !343, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !500, file: !277, line: 515, baseType: !343, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !500, file: !277, line: 516, baseType: !343, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !500, file: !277, line: 518, baseType: !343, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !500, file: !277, line: 519, baseType: !343, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !500, file: !277, line: 520, baseType: !354, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !500, file: !277, line: 522, baseType: !343, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !500, file: !277, line: 523, baseType: !343, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !500, file: !277, line: 524, baseType: !354, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !500, file: !277, line: 526, baseType: !354, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !500, file: !277, line: 527, baseType: !343, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !500, file: !277, line: 529, baseType: !343, size: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !500, file: !277, line: 530, baseType: !343, size: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !500, file: !277, line: 531, baseType: !343, size: 64, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !500, file: !277, line: 532, baseType: !343, size: 64, offset: 1088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !500, file: !277, line: 533, baseType: !343, size: 64, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !500, file: !277, line: 535, baseType: !343, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !500, file: !277, line: 536, baseType: !343, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !500, file: !277, line: 537, baseType: !343, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !500, file: !277, line: 538, baseType: !343, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !500, file: !277, line: 539, baseType: !343, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !500, file: !277, line: 540, baseType: !343, size: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !500, file: !277, line: 541, baseType: !343, size: 64, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !500, file: !277, line: 542, baseType: !343, size: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !500, file: !277, line: 543, baseType: !343, size: 64, offset: 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !276, file: !277, line: 833, baseType: !35, size: 32, offset: 7680)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !276, file: !277, line: 836, baseType: !35, size: 32, offset: 7712)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !276, file: !277, line: 837, baseType: !102, size: 32, offset: 7744)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !276, file: !277, line: 838, baseType: !534, size: 64, offset: 7808)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !537, line: 19, baseType: !538)
!537 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !537, line: 19, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !538, file: !537, line: 19, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 1)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !276, file: !277, line: 839, baseType: !545, size: 64, offset: 7872)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !276, file: !277, line: 840, baseType: !536, size: 64, offset: 7936)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !276, file: !277, line: 841, baseType: !100, size: 64, offset: 8000)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !276, file: !277, line: 843, baseType: !106, size: 16, offset: 8064)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !276, file: !277, line: 845, baseType: !106, size: 16, offset: 8080)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !276, file: !277, line: 848, baseType: !102, size: 32, offset: 8096)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !276, file: !277, line: 849, baseType: !552, size: 32, offset: 8128)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !277, line: 718, size: 32, elements: !553)
!553 = !{!554, !561}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !552, file: !277, line: 724, baseType: !555, size: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !552, file: !277, line: 719, size: 32, elements: !556)
!556 = !{!557, !558, !559, !560}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !555, file: !277, line: 720, baseType: !163, size: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !555, file: !277, line: 721, baseType: !163, size: 8, offset: 8)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !555, file: !277, line: 722, baseType: !163, size: 8, offset: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !555, file: !277, line: 723, baseType: !163, size: 8, offset: 24)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !552, file: !277, line: 725, baseType: !286, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !276, file: !277, line: 850, baseType: !177, size: 128, offset: 8192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !276, file: !277, line: 851, baseType: !564, size: 64, offset: 8320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !277, line: 60, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !276, file: !277, line: 855, baseType: !119, size: 64, offset: 8384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !276, file: !277, line: 856, baseType: !163, size: 8, offset: 8448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !276, file: !277, line: 857, baseType: !163, size: 8, offset: 8456)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !276, file: !277, line: 858, baseType: !102, size: 32, offset: 8480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !276, file: !277, line: 859, baseType: !177, size: 128, offset: 8512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !276, file: !277, line: 860, baseType: !102, size: 32, offset: 8640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !276, file: !277, line: 861, baseType: !177, size: 128, offset: 8704)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !276, file: !277, line: 873, baseType: !574, size: 256, offset: 8832)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !277, line: 376, size: 256, elements: !575)
!575 = !{!576, !577, !578, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !574, file: !277, line: 381, baseType: !119, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !574, file: !277, line: 384, baseType: !345, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !574, file: !277, line: 389, baseType: !345, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !574, file: !277, line: 392, baseType: !345, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !276, file: !277, line: 875, baseType: !177, size: 128, offset: 9088)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !276, file: !277, line: 877, baseType: !582, size: 320, offset: 9216)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !583, line: 86, size: 320, elements: !584)
!583 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !582, file: !583, line: 87, baseType: !102, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !582, file: !583, line: 88, baseType: !177, size: 128, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !582, file: !583, line: 89, baseType: !177, size: 128, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !276, file: !277, line: 878, baseType: !335, size: 192, align: 64, offset: 9536)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !276, file: !277, line: 881, baseType: !590, size: 64, offset: 9728)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !64, line: 733, size: 10240, elements: !592)
!592 = !{!593, !3610}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !64, line: 734, baseType: !594, size: 10240)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !591, file: !64, line: 734, size: 10240, elements: !595)
!595 = !{!596, !600, !614, !3430, !3431, !3432, !3433, !3434, !3435, !3442, !3443, !3444, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3483, !3485, !3547, !3590, !3591, !3592, !3595, !3596, !3597, !3600, !3601, !3602, !3608, !3609}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !64, line: 739, baseType: !597, size: 512, align: 512)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !64, line: 739, size: 512, align: 512, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !597, file: !64, line: 747, baseType: !129, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !594, file: !64, line: 750, baseType: !601, size: 128, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !602, line: 218, size: 128, elements: !603)
!602 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!603 = !{!604, !612, !613}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !602, line: 219, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 219, size: 32, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !605, file: !602, line: 220, baseType: !139, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !605, file: !602, line: 221, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !602, line: 197, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 197, elements: !611)
!611 = !{}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !601, file: !602, line: 223, baseType: !35, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !601, file: !602, line: 224, baseType: !100, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !594, file: !64, line: 752, baseType: !615, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!119, !618, !119, !119, !119, !119}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !223, line: 994, size: 1856, align: 64, elements: !620)
!620 = !{!621, !635, !636, !638, !645, !657, !658, !659, !1173, !1174, !1183, !3420, !3421, !3422, !3423, !3424, !3425, !3427, !3428, !3429}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !223, line: 995, baseType: !622, size: 128)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !223, line: 995, size: 128, elements: !623)
!623 = !{!624, !625, !634}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !622, file: !223, line: 996, baseType: !304, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !622, file: !223, line: 997, baseType: !626, size: 128, align: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !105, line: 232, size: 128, align: 64, elements: !627)
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !105, line: 233, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !626, file: !105, line: 234, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !629}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !622, file: !223, line: 998, baseType: !35, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !619, file: !223, line: 1005, baseType: !139, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !619, file: !223, line: 1006, baseType: !637, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !105, line: 156, baseType: !35)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !619, file: !223, line: 1007, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !640, line: 13, baseType: !641)
!640 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !105, line: 181, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 179, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !642, file: !105, line: 180, baseType: !354, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !619, file: !223, line: 1008, baseType: !646, size: 256, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !647, line: 66, size: 256, elements: !648)
!647 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!648 = !{!649, !650, !651, !656}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !646, file: !647, line: 67, baseType: !639, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !646, file: !647, line: 68, baseType: !435, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !646, file: !647, line: 70, baseType: !652, size: 32, offset: 96)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !653, line: 15, size: 32, elements: !654)
!653 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !652, file: !653, line: 20, baseType: !129, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !646, file: !647, line: 72, baseType: !177, size: 128, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !619, file: !223, line: 1009, baseType: !121, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !619, file: !223, line: 1010, baseType: !35, size: 32, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !619, file: !223, line: 1011, baseType: !660, size: 256, offset: 640)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !223, line: 948, size: 256, elements: !661)
!661 = !{!662, !683, !1169, !1170, !1171, !1172}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !660, file: !223, line: 949, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !664, line: 34, baseType: !665)
!664 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !664, line: 25, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !665, file: !664, line: 26, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !669, line: 27, baseType: !670)
!669 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !669, line: 13, size: 64, elements: !671)
!671 = !{!672, !682}
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !669, line: 14, baseType: !673, size: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !669, line: 14, size: 32, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !673, file: !669, line: 15, baseType: !129, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 16, baseType: !677, size: 32)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 16, size: 32, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !677, file: !669, line: 18, baseType: !163, size: 8)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !677, file: !669, line: 19, baseType: !681, size: 24, offset: 8)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 24, elements: !15)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !670, file: !669, line: 26, baseType: !151, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !660, file: !223, line: 950, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !201, line: 59, size: 768, elements: !686)
!686 = !{!687, !688, !689, !690, !701, !702, !703, !704}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !685, file: !201, line: 61, baseType: !292, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !685, file: !201, line: 62, baseType: !35, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !685, file: !201, line: 63, baseType: !139, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !685, file: !201, line: 65, baseType: !691, size: 256, offset: 128)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 256, elements: !27)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !105, line: 194, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !692, file: !105, line: 195, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !105, line: 198, size: 128, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !105, line: 199, baseType: !695, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !696, file: !105, line: 199, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !685, file: !201, line: 66, baseType: !692, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !685, file: !201, line: 68, baseType: !134, size: 192, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !685, file: !201, line: 69, baseType: !626, size: 128, align: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !685, file: !201, line: 70, baseType: !705, offset: 768)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, elements: !1054)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !201, line: 54, size: 128, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !706, file: !201, line: 55, baseType: !102, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !706, file: !201, line: 56, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !712, line: 26, size: 1152, elements: !713)
!712 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!713 = !{!714, !727, !728, !729, !730, !734, !735, !736, !739, !1165, !1166, !1167, !1168}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !711, file: !712, line: 27, baseType: !715, size: 192)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !716, line: 19, size: 192, elements: !717)
!716 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!717 = !{!718, !725, !726}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !715, file: !716, line: 20, baseType: !719, size: 128)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !720, line: 296, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !719, file: !720, line: 297, baseType: !139, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !719, file: !720, line: 299, baseType: !273, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !719, file: !720, line: 300, baseType: !100, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !715, file: !716, line: 21, baseType: !35, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !715, file: !716, line: 22, baseType: !35, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !711, file: !712, line: 28, baseType: !626, size: 128, align: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !711, file: !712, line: 29, baseType: !35, size: 32, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !711, file: !712, line: 30, baseType: !275, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !711, file: !712, line: 31, baseType: !731, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !733, line: 325, flags: DIFlagFwdDecl)
!733 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!734 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !711, file: !712, line: 32, baseType: !35, size: 32, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !711, file: !712, line: 33, baseType: !710, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !711, file: !712, line: 35, baseType: !737, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !712, line: 17, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !711, file: !712, line: 37, baseType: !740, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !742, line: 68, size: 4800, elements: !743)
!742 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!743 = !{!744, !766, !767, !768, !769, !770, !778, !785, !1071, !1072, !1073, !1074, !1075, !1076, !1088, !1158, !1159, !1160, !1163}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !741, file: !742, line: 69, baseType: !745, size: 576)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !742, line: 23, size: 576, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !745, file: !742, line: 24, baseType: !286, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !742, line: 25, baseType: !749, size: 512, offset: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !742, line: 25, size: 512, elements: !750)
!750 = !{!751, !760}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !749, file: !742, line: 26, baseType: !752, size: 480)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 480, elements: !758)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !742, line: 17, size: 96, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !753, file: !742, line: 18, baseType: !286, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !753, file: !742, line: 19, baseType: !286, size: 32, offset: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !753, file: !742, line: 20, baseType: !286, size: 32, offset: 64)
!758 = !{!759}
!759 = !DISubrange(count: 5)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !742, line: 27, baseType: !761, size: 128)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !749, file: !742, line: 27, size: 128, elements: !762)
!762 = !{!763, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !761, file: !742, line: 28, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !761, file: !742, line: 29, baseType: !764, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !741, file: !742, line: 70, baseType: !745, size: 576, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !741, file: !742, line: 71, baseType: !745, size: 576, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !741, file: !742, line: 72, baseType: !740, size: 64, offset: 1728)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !741, file: !742, line: 73, baseType: !102, size: 32, offset: 1792)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !741, file: !742, line: 74, baseType: !771, size: 32, offset: 1824)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !772, line: 23, baseType: !773)
!772 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 21, size: 32, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !773, file: !772, line: 22, baseType: !776, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !105, line: 37, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !117, line: 49, baseType: !35)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !741, file: !742, line: 75, baseType: !779, size: 32, offset: 1856)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !772, line: 28, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 26, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !772, line: 27, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !105, line: 38, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !117, line: 50, baseType: !35)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !741, file: !742, line: 76, baseType: !786, size: 192, offset: 1920)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !787, line: 9, size: 192, elements: !788)
!787 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!788 = !{!789, !790, !1069, !1070}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !786, file: !787, line: 10, baseType: !639, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !786, file: !787, line: 11, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !794, line: 16, size: 512, elements: !795)
!794 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!795 = !{!796, !797, !798, !799, !804, !808, !1061, !1065}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !793, file: !794, line: 17, baseType: !97, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !793, file: !794, line: 18, baseType: !97, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !794, line: 19, baseType: !102, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !793, file: !794, line: 20, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!803, !275}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !793, file: !794, line: 21, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !803}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !793, file: !794, line: 22, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!102, !812, !803}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !814, line: 53, size: 256, elements: !815)
!814 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!815 = !{!816, !817, !843, !846}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 54, baseType: !35, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !813, file: !814, line: 55, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !814, line: 31, size: 576, elements: !820)
!820 = !{!821, !822, !825, !828, !831, !832, !836, !839, !840}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !819, file: !814, line: 32, baseType: !292, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !819, file: !814, line: 33, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !814, line: 9, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !819, file: !814, line: 34, baseType: !826, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !814, line: 10, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !819, file: !814, line: 35, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !814, line: 8, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !819, file: !814, line: 36, baseType: !710, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !819, file: !814, line: 37, baseType: !833, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !835, line: 34, flags: DIFlagFwdDecl)
!835 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!836 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !819, file: !814, line: 38, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !814, line: 38, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !819, file: !814, line: 39, baseType: !837, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !819, file: !814, line: 40, baseType: !841, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !814, line: 12, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !813, file: !814, line: 56, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !277, line: 50, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !813, file: !814, line: 57, baseType: !847, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !850, line: 110, size: 1472, elements: !851)
!850 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !868, !869, !870, !871, !872, !873, !996, !997, !998, !999, !1000, !1031, !1032, !1046, !1056}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !849, file: !850, line: 111, baseType: !639, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !849, file: !850, line: 112, baseType: !771, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !849, file: !850, line: 113, baseType: !779, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !849, file: !850, line: 114, baseType: !771, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !849, file: !850, line: 115, baseType: !779, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !849, file: !850, line: 116, baseType: !771, size: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !849, file: !850, line: 117, baseType: !779, size: 32, offset: 224)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !849, file: !850, line: 118, baseType: !771, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !849, file: !850, line: 119, baseType: !779, size: 32, offset: 288)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !849, file: !850, line: 120, baseType: !35, size: 32, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !849, file: !850, line: 121, baseType: !863, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !864, line: 24, baseType: !865)
!864 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !864, line: 24, size: 64, elements: !866)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !865, file: !864, line: 24, baseType: !343, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !849, file: !850, line: 122, baseType: !863, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !849, file: !850, line: 123, baseType: !863, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !849, file: !850, line: 124, baseType: !863, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !849, file: !850, line: 125, baseType: !863, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !849, file: !850, line: 127, baseType: !167, size: 8, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !849, file: !850, line: 129, baseType: !874, size: 64, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !835, line: 195, size: 1728, elements: !876)
!876 = !{!877, !878, !883, !888, !897, !900, !901, !908, !909, !910, !911, !914, !915, !916, !918, !919, !960, !981}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !875, file: !835, line: 196, baseType: !292, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !875, file: !835, line: 197, baseType: !879, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !835, line: 28, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !105, line: 104, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !164, line: 20, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !166, line: 26, baseType: !102)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !835, line: 198, baseType: !884, size: 192, offset: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !835, line: 198, size: 192, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !884, file: !835, line: 199, baseType: !177, size: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !884, file: !835, line: 200, baseType: !335, size: 192, align: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !875, file: !835, line: 205, baseType: !889, size: 320, offset: 256)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !890, line: 48, size: 320, elements: !891)
!890 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!891 = !{!892, !893, !894, !895, !896}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !889, file: !890, line: 49, baseType: !639, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !889, file: !890, line: 55, baseType: !639, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !889, file: !890, line: 57, baseType: !652, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !889, file: !890, line: 59, baseType: !435, size: 32, offset: 160)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !889, file: !890, line: 60, baseType: !177, size: 128, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !875, file: !835, line: 206, baseType: !898, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !835, line: 206, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !875, file: !835, line: 207, baseType: !100, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !835, line: 208, baseType: !902, size: 64, offset: 704)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !835, line: 208, size: 64, elements: !903)
!903 = !{!904, !907}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !902, file: !835, line: 209, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !906, line: 8, baseType: !355)
!906 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !902, file: !835, line: 210, baseType: !905, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !875, file: !835, line: 212, baseType: !905, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !875, file: !835, line: 213, baseType: !771, size: 32, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !875, file: !835, line: 214, baseType: !779, size: 32, offset: 864)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !875, file: !835, line: 215, baseType: !912, size: 32, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !835, line: 31, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 110, baseType: !286)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !875, file: !835, line: 216, baseType: !106, size: 16, offset: 928)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !875, file: !835, line: 217, baseType: !106, size: 16, offset: 944)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !875, file: !835, line: 221, baseType: !917, size: 16, offset: 960)
!917 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !835, line: 228, baseType: !119, size: 64, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !835, line: 245, baseType: !920, size: 320, offset: 1088)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !835, line: 245, size: 320, elements: !921)
!921 = !{!922, !951}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !920, file: !835, line: 246, baseType: !923, size: 320)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !835, line: 114, size: 320, elements: !924)
!924 = !{!925, !926, !938, !941, !950}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !923, file: !835, line: 116, baseType: !119, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !835, line: 117, baseType: !927, size: 64, offset: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !835, line: 117, size: 64, elements: !928)
!928 = !{!929, !937}
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !835, line: 118, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !927, file: !835, line: 118, size: 64, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !930, file: !835, line: 120, baseType: !173, size: 16)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !930, file: !835, line: 121, baseType: !934, size: 48, offset: 16)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 6)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !927, file: !835, line: 127, baseType: !119, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !923, file: !835, line: 129, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !835, line: 102, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !923, file: !835, line: 130, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !835, line: 108, size: 192, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !943, file: !835, line: 109, baseType: !626, size: 128, align: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !943, file: !835, line: 110, baseType: !292, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !943, file: !835, line: 111, baseType: !948, size: 8, offset: 160)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 35, baseType: !949)
!949 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !923, file: !835, line: 131, baseType: !97, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !835, line: 247, baseType: !952, size: 320)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !835, line: 247, size: 320, elements: !953)
!953 = !{!954, !955, !956, !957, !958}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !952, file: !835, line: 248, baseType: !119, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !952, file: !835, line: 249, baseType: !119, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !835, line: 250, baseType: !939, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !952, file: !835, line: 251, baseType: !942, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !952, file: !835, line: 252, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !835, line: 260, baseType: !961, size: 256, offset: 1408)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !835, line: 260, size: 256, elements: !962)
!962 = !{!963, !969}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !961, file: !835, line: 261, baseType: !964, size: 256)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !835, line: 134, size: 256, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !964, file: !835, line: 135, baseType: !100, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !964, file: !835, line: 136, baseType: !968, size: 256)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !27)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !835, line: 262, baseType: !970, size: 256)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !835, line: 262, size: 256, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !970, file: !835, line: 264, baseType: !177, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !970, file: !835, line: 265, baseType: !974, size: 128, offset: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !975, line: 22, size: 128, elements: !976)
!975 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!976 = !{!977, !980}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !974, file: !975, line: 23, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !975, line: 23, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !974, file: !975, line: 24, baseType: !119, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !875, file: !835, line: 280, baseType: !982, size: 64, offset: 1664)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !835, line: 176, size: 192, elements: !984)
!984 = !{!985, !994, !995}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !983, file: !835, line: 177, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !835, line: 171, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!102, !874, !990, !992, !874}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !983, file: !835, line: 178, baseType: !874, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !983, file: !835, line: 179, baseType: !939, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !849, file: !850, line: 130, baseType: !874, size: 64, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !849, file: !850, line: 131, baseType: !874, size: 64, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !849, file: !850, line: 132, baseType: !874, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !849, file: !850, line: 135, baseType: !100, size: 64, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !849, file: !850, line: 137, baseType: !1001, size: 64, offset: 1088)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1003, line: 14, size: 1088, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1004 = !{!1005, !1006, !1015, !1016, !1017, !1018, !1019, !1020}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1002, file: !1003, line: 15, baseType: !292, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1002, file: !1003, line: 17, baseType: !1007, size: 320, offset: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1008, line: 22, size: 320, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1009 = !{!1010, !1011, !1012, !1013}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1007, file: !1008, line: 23, baseType: !435, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1007, file: !1008, line: 24, baseType: !354, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1007, file: !1008, line: 26, baseType: !177, size: 128, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1007, file: !1008, line: 28, baseType: !1014, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1002, file: !1003, line: 19, baseType: !119, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1002, file: !1003, line: 20, baseType: !639, size: 64, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1002, file: !1003, line: 23, baseType: !696, size: 128, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1002, file: !1003, line: 24, baseType: !771, size: 32, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1002, file: !1003, line: 29, baseType: !639, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1002, file: !1003, line: 36, baseType: !1021, size: 320, offset: 768)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1022, line: 15, size: 320, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1030}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !1022, line: 16, baseType: !435, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1021, file: !1022, line: 18, baseType: !102, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1021, file: !1022, line: 19, baseType: !102, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1021, file: !1022, line: 20, baseType: !102, size: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1021, file: !1022, line: 21, baseType: !102, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1021, file: !1022, line: 22, baseType: !119, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !1022, line: 23, baseType: !119, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !849, file: !850, line: 138, baseType: !740, size: 64, offset: 1152)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !849, file: !850, line: 139, baseType: !1033, size: 64, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !742, line: 107, size: 1152, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1044}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1034, file: !742, line: 108, baseType: !696, size: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1034, file: !742, line: 109, baseType: !740, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1034, file: !742, line: 110, baseType: !771, size: 32, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1034, file: !742, line: 111, baseType: !129, size: 32, offset: 224)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1034, file: !742, line: 112, baseType: !1041, size: 640, offset: 256)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 640, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 10)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1034, file: !742, line: 113, baseType: !1045, size: 256, offset: 896)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 256, elements: !27)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !849, file: !850, line: 140, baseType: !1047, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !850, line: 25, size: 64, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1048, file: !850, line: 26, baseType: !129, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1048, file: !850, line: 27, baseType: !102, size: 32, offset: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1048, file: !850, line: 28, baseType: !1053, offset: 64)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: -1)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !850, line: 142, baseType: !1057, size: 128, offset: 1344)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !850, line: 142, size: 128, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1057, file: !850, line: 143, baseType: !102, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1057, file: !850, line: 144, baseType: !626, size: 128, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !793, file: !794, line: 23, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!740, !803}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !793, file: !794, line: 24, baseType: !1066, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!803, !803}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !786, file: !787, line: 12, baseType: !35, size: 32, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !786, file: !787, line: 13, baseType: !292, size: 32, offset: 160)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !742, line: 77, baseType: !119, size: 64, offset: 2112)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !741, file: !742, line: 80, baseType: !948, size: 8, offset: 2176)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !741, file: !742, line: 88, baseType: !177, size: 128, offset: 2240)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !741, file: !742, line: 89, baseType: !874, size: 64, offset: 2368)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !741, file: !742, line: 90, baseType: !889, size: 320, offset: 2432)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !741, file: !742, line: 97, baseType: !1077, size: 256, offset: 2752)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1078, line: 98, size: 256, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1077, file: !1078, line: 99, baseType: !639, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1077, file: !1078, line: 100, baseType: !177, size: 128, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1077, file: !1078, line: 101, baseType: !1083, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1078, line: 21, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !741, file: !742, line: 99, baseType: !1089, size: 768, offset: 3008)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !93, line: 199, size: 768, elements: !1090)
!1090 = !{!1091, !1096}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1089, file: !93, line: 200, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!102, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1089, file: !93, line: 201, baseType: !1097, size: 704, offset: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !93, line: 193, size: 704, elements: !1098)
!1098 = !{!1099, !1157}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1097, file: !93, line: 195, baseType: !1100, size: 640)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !93, line: 173, size: 640, elements: !1101)
!1101 = !{!1102, !1114, !1126, !1127, !1147, !1148, !1150, !1156}
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !93, line: 174, baseType: !1103, size: 192)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !93, line: 174, size: 192, elements: !1104)
!1104 = !{!1105, !1113}
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !93, line: 175, baseType: !1106, size: 192)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1103, file: !93, line: 175, size: 192, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1106, file: !93, line: 176, baseType: !113, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1106, file: !93, line: 177, baseType: !102, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1106, file: !93, line: 178, baseType: !102, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1106, file: !93, line: 179, baseType: !102, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1106, file: !93, line: 180, baseType: !102, size: 32, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1103, file: !93, line: 182, baseType: !626, size: 128, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1100, file: !93, line: 184, baseType: !1115, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1117, line: 26, size: 256, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1116, file: !1117, line: 27, baseType: !35, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1116, file: !1117, line: 28, baseType: !1121, size: 192, offset: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1122, line: 43, size: 192, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !1122, line: 44, baseType: !435, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1121, file: !1122, line: 45, baseType: !177, size: 128, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1100, file: !93, line: 185, baseType: !113, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1100, file: !93, line: 186, baseType: !1128, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !93, line: 204, size: 960, elements: !1130)
!1130 = !{!1131, !1132, !1136, !1143}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1129, file: !93, line: 205, baseType: !1089, size: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1129, file: !93, line: 206, baseType: !1133, size: 64, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1095, !1128}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1129, file: !93, line: 207, baseType: !1137, size: 64, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1140, !1141, !1142}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1129, file: !93, line: 209, baseType: !1144, size: 64, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!102, !1140, !113}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1100, file: !93, line: 187, baseType: !1095, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1100, file: !93, line: 188, baseType: !1149, size: 64, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1100, file: !93, line: 189, baseType: !1151, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !93, line: 157, size: 256, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1152, file: !93, line: 158, baseType: !335, size: 192, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1152, file: !93, line: 159, baseType: !1140, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1100, file: !93, line: 190, baseType: !692, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1097, file: !93, line: 196, baseType: !476, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !741, file: !742, line: 100, baseType: !1140, size: 64, offset: 3776)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !741, file: !742, line: 102, baseType: !1033, size: 64, offset: 3840)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !741, file: !742, line: 103, baseType: !1161, size: 640, offset: 3904)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 640, elements: !1042)
!1162 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !741, file: !742, line: 104, baseType: !1164, size: 256, offset: 4544)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 256, elements: !27)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !711, file: !712, line: 38, baseType: !1033, size: 64, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !711, file: !712, line: 39, baseType: !102, size: 32, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !711, file: !712, line: 40, baseType: !786, size: 192, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !711, file: !712, line: 42, baseType: !102, size: 32, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !660, file: !223, line: 951, baseType: !200, size: 32, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !660, file: !223, line: 952, baseType: !771, size: 32, offset: 160)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !660, file: !223, line: 952, baseType: !771, size: 32, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !660, file: !223, line: 953, baseType: !102, size: 32, offset: 224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !619, file: !223, line: 1012, baseType: !847, size: 64, offset: 896)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !619, file: !223, line: 1013, baseType: !1175, size: 256, offset: 960)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !223, line: 970, size: 256, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1175, file: !223, line: 971, baseType: !119, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1175, file: !223, line: 972, baseType: !35, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1175, file: !223, line: 973, baseType: !35, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1175, file: !223, line: 974, baseType: !35, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1175, file: !223, line: 975, baseType: !35, size: 32, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1175, file: !223, line: 976, baseType: !121, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !619, file: !223, line: 1014, baseType: !1184, size: 128, offset: 1216)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1185, line: 8, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1186 = !{!1187, !3419}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1184, file: !1185, line: 9, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1190, line: 70, size: 256, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1191 = !{!1192, !3416, !3417, !3418}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1189, file: !1190, line: 71, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1195, line: 82, size: 1536, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1196 = !{!1197, !1198, !1203, !1211, !1212, !1227, !3383, !3385, !3398, !3399, !3400, !3401, !3402, !3408, !3409, !3410}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1194, file: !1195, line: 84, baseType: !35, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1194, file: !1195, line: 85, baseType: !1199, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !460, line: 275, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !460, line: 275, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1200, file: !460, line: 275, baseType: !464, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1194, file: !1195, line: 86, baseType: !1204, size: 128, offset: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1205, line: 38, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1206 = !{!1207, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1204, file: !1205, line: 39, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1204, file: !1205, line: 39, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1194, file: !1195, line: 87, baseType: !1193, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1194, file: !1195, line: 88, baseType: !1213, size: 128, offset: 256)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1195, line: 49, size: 128, elements: !1214)
!1214 = !{!1215, !1224}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1195, line: 50, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1195, line: 50, size: 64, elements: !1217)
!1217 = !{!1218, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1195, line: 51, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1195, line: 51, size: 64, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1219, file: !1195, line: 52, baseType: !286, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1219, file: !1195, line: 52, baseType: !286, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1216, file: !1195, line: 54, baseType: !343, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !1195, line: 56, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1194, file: !1195, line: 89, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !223, line: 641, size: 4800, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1240, !1241, !1428, !3197, !3198, !3199, !3200, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3365, !3368, !3369, !3370, !3379, !3380, !3381, !3382}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1229, file: !223, line: 642, baseType: !104, size: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1229, file: !223, line: 643, baseType: !106, size: 16, offset: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1229, file: !223, line: 644, baseType: !771, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1229, file: !223, line: 645, baseType: !177, size: 128, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1229, file: !223, line: 646, baseType: !779, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1229, file: !223, line: 647, baseType: !35, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1229, file: !223, line: 650, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !223, line: 607, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1229, file: !223, line: 651, baseType: !1238, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1229, file: !223, line: 654, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !223, line: 1966, size: 2048, align: 512, elements: !1245)
!1245 = !{!1246, !1250, !1263, !1269, !1273, !1277, !1281, !1285, !1289, !1293, !1297, !1298, !1304, !1308, !1345, !1376, !1383, !1389, !1393, !1397, !1401, !1405, !1409, !1415, !1419}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1244, file: !223, line: 1967, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1193, !1228, !1193, !35}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1244, file: !223, line: 1968, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!97, !1193, !1228, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1256, line: 10, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1257 = !{!1258, !1262}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1255, file: !1256, line: 11, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !100}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1255, file: !1256, line: 12, baseType: !100, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1244, file: !223, line: 1969, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!102, !1267, !1228, !102}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !864, line: 42, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1244, file: !223, line: 1970, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1238, !1228, !102, !948}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1244, file: !223, line: 1972, baseType: !1274, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!102, !1193, !959, !102}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1244, file: !223, line: 1974, baseType: !1278, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!102, !1267, !1228, !1193, !104, !948}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1244, file: !223, line: 1976, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!102, !1193, !1228, !1193}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1244, file: !223, line: 1977, baseType: !1286, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!102, !1228, !1193}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1244, file: !223, line: 1978, baseType: !1290, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!102, !1267, !1228, !1193, !97}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1244, file: !223, line: 1980, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!102, !1267, !1228, !1193, !104}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1244, file: !223, line: 1982, baseType: !1286, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1244, file: !223, line: 1983, baseType: !1299, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!102, !1267, !1228, !1193, !104, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !105, line: 21, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !105, line: 18, baseType: !286)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1244, file: !223, line: 1985, baseType: !1305, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!102, !1267, !1228, !1193, !1228, !1193, !35}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1244, file: !223, line: 1987, baseType: !1309, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!102, !1267, !1193, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !223, line: 226, size: 640, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1327, !1336, !1337, !1342, !1343, !1344}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1313, file: !223, line: 227, baseType: !35, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1313, file: !223, line: 228, baseType: !104, size: 16, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !223, line: 241, baseType: !1318, size: 32, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !223, line: 241, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1318, file: !223, line: 242, baseType: !771, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1318, file: !223, line: 243, baseType: !1322, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1323, line: 16, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 14, size: 32, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1324, file: !1323, line: 15, baseType: !776, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !223, line: 245, baseType: !1328, size: 32, offset: 96)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !223, line: 245, size: 32, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1328, file: !223, line: 246, baseType: !779, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1328, file: !223, line: 247, baseType: !1332, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1323, line: 20, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 18, size: 32, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1333, file: !1323, line: 19, baseType: !783, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1313, file: !223, line: 249, baseType: !121, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1313, file: !223, line: 250, baseType: !1338, size: 128, offset: 192)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !906, line: 13, size: 128, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1338, file: !906, line: 14, baseType: !905, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1338, file: !906, line: 15, baseType: !1162, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1313, file: !223, line: 251, baseType: !1338, size: 128, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1313, file: !223, line: 252, baseType: !1338, size: 128, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1313, file: !223, line: 259, baseType: !618, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1244, file: !223, line: 1988, baseType: !1346, size: 64, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!102, !1267, !1349, !1351, !286, !35}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1353, line: 22, size: 1280, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1352, file: !1353, line: 23, baseType: !286, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1352, file: !1353, line: 24, baseType: !104, size: 16, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1352, file: !1353, line: 25, baseType: !35, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1352, file: !1353, line: 26, baseType: !913, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1352, file: !1353, line: 27, baseType: !343, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1352, file: !1353, line: 28, baseType: !343, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1352, file: !1353, line: 41, baseType: !343, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1352, file: !1353, line: 42, baseType: !1302, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1352, file: !1353, line: 43, baseType: !1302, size: 32, offset: 352)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1352, file: !1353, line: 44, baseType: !771, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1352, file: !1353, line: 45, baseType: !779, size: 32, offset: 416)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1352, file: !1353, line: 46, baseType: !121, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1352, file: !1353, line: 47, baseType: !1338, size: 128, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1352, file: !1353, line: 48, baseType: !1338, size: 128, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1352, file: !1353, line: 49, baseType: !1338, size: 128, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1352, file: !1353, line: 50, baseType: !1338, size: 128, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1352, file: !1353, line: 51, baseType: !343, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1352, file: !1353, line: 52, baseType: !343, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1352, file: !1353, line: 53, baseType: !286, size: 32, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1352, file: !1353, line: 54, baseType: !286, size: 32, offset: 1184)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1352, file: !1353, line: 55, baseType: !343, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1244, file: !223, line: 1990, baseType: !1377, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !1193, !959, !115}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 66, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !117, line: 73, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !117, line: 15, baseType: !1162)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1244, file: !223, line: 1991, baseType: !1384, size: 64, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!102, !1228, !1387, !343, !343}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !223, line: 55, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1244, file: !223, line: 1993, baseType: !1390, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!102, !1228, !102}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1244, file: !223, line: 1994, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!102, !1228, !1193, !618, !35, !104}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1244, file: !223, line: 1997, baseType: !1398, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!102, !1267, !1228, !618, !104}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1244, file: !223, line: 1999, baseType: !1402, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1238, !1267, !1193, !102}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1244, file: !223, line: 2001, baseType: !1406, size: 64, offset: 1344)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!102, !1267, !1193, !1238, !102}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1244, file: !223, line: 2003, baseType: !1410, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!102, !1267, !1193, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !223, line: 76, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1244, file: !223, line: 2005, baseType: !1416, size: 64, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!102, !1193, !1413}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1244, file: !223, line: 2006, baseType: !1420, size: 64, offset: 1536)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1423, !1228}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !223, line: 3192, size: 192, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1424, file: !223, line: 3193, baseType: !719, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1424, file: !223, line: 3194, baseType: !286, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1229, file: !223, line: 655, baseType: !1429, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !223, line: 1190, size: 10752, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !2710, !2842, !2882, !2965, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2982, !2986, !2987, !2990, !2993, !2996, !2999, !3000, !3001, !3042, !3068, !3069, !3070, !3071, !3072, !3073, !3076, !3080, !3089, !3090, !3091, !3092, !3151, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1430, file: !223, line: 1191, baseType: !177, size: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1430, file: !223, line: 1192, baseType: !1302, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1430, file: !223, line: 1193, baseType: !167, size: 8, offset: 160)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1430, file: !223, line: 1194, baseType: !119, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1430, file: !223, line: 1195, baseType: !121, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1430, file: !223, line: 1196, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !223, line: 2366, size: 576, elements: !1440)
!1440 = !{!1441, !1442, !1443, !2662, !2689, !2693, !2697, !2698, !2699, !2700, !2702, !2703, !2704, !2706, !2707, !2708, !2709}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1439, file: !223, line: 2367, baseType: !97, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1439, file: !223, line: 2368, baseType: !102, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1439, file: !223, line: 2376, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!102, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !34, line: 90, size: 1216, elements: !1449)
!1449 = !{!1450, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1448, file: !34, line: 91, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !34, line: 115, size: 384, elements: !1454)
!1454 = !{!1455, !1459, !1463, !1492, !1496, !1497}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1453, file: !34, line: 116, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !1447}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1453, file: !34, line: 117, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!102, !1447, !1447}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1453, file: !34, line: 118, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!102, !1447, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !34, line: 63, size: 320, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1490, !1491}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1468, file: !34, line: 64, baseType: !97, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !34, line: 65, baseType: !33, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !34, line: 66, baseType: !1473, size: 64, offset: 128)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !34, line: 66, size: 64, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1489}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1473, file: !34, line: 67, baseType: !959, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1473, file: !34, line: 68, baseType: !100, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1473, file: !34, line: 69, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !223, line: 2470, size: 256, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1487}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1479, file: !223, line: 2471, baseType: !97, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1479, file: !223, line: 2472, baseType: !97, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1479, file: !223, line: 2473, baseType: !129, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1479, file: !223, line: 2474, baseType: !1485, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !223, line: 2469, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1479, file: !223, line: 2475, baseType: !1488, offset: 256)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !1054)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1473, file: !34, line: 70, baseType: !618, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1468, file: !34, line: 72, baseType: !115, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1468, file: !34, line: 73, baseType: !102, size: 32, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1453, file: !34, line: 119, baseType: !1493, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!102, !1447, !100}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1453, file: !34, line: 120, baseType: !1444, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1453, file: !34, line: 121, baseType: !1444, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1448, file: !34, line: 92, baseType: !646, size: 256, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1448, file: !34, line: 93, baseType: !1438, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1448, file: !34, line: 94, baseType: !100, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1448, file: !34, line: 95, baseType: !100, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1448, file: !34, line: 96, baseType: !1193, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1448, file: !34, line: 97, baseType: !740, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1448, file: !34, line: 98, baseType: !833, size: 64, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1448, file: !34, line: 99, baseType: !847, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1448, file: !34, line: 100, baseType: !1507, size: 128, offset: 768)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !34, line: 76, size: 128, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1507, file: !34, line: 77, baseType: !97, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1507, file: !34, line: 78, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !34, line: 173, size: 640, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !2648}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1512, file: !34, line: 174, baseType: !292, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1512, file: !34, line: 175, baseType: !163, size: 8, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1512, file: !34, line: 176, baseType: !163, size: 8, offset: 40)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1512, file: !34, line: 177, baseType: !163, size: 8, offset: 48)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1512, file: !34, line: 178, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !49, line: 402, size: 9216, align: 512, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1528, !2305, !2331, !2332, !2333, !2334, !2338, !2341, !2342, !2343, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2411, !2415, !2433, !2453, !2454, !2455, !2456, !2465, !2488, !2489, !2492, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2506, !2507, !2606, !2614, !2615, !2616, !2618, !2622, !2623, !2627, !2628, !2629, !2630, !2632, !2633, !2634, !2641, !2642, !2643, !2647}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1520, file: !49, line: 403, baseType: !48, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1520, file: !49, line: 406, baseType: !177, size: 128, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1520, file: !49, line: 409, baseType: !1525, size: 448, offset: 192)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1526)
!1526 = !{!1527}
!1527 = !DISubrange(count: 56)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1520, file: !49, line: 417, baseType: !1529, size: 768, offset: 640)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !49, line: 45, size: 768, elements: !1530)
!1530 = !{!1531, !2299, !2300, !2301, !2304}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1529, file: !49, line: 46, baseType: !1532, size: 512)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1533, line: 64, size: 512, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1534 = !{!1535, !1536, !1537, !1539, !1583, !2179, !2289, !2294, !2295, !2296, !2297, !2298}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1532, file: !1533, line: 65, baseType: !97, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1532, file: !1533, line: 66, baseType: !177, size: 128, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1532, file: !1533, line: 67, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1532, file: !1533, line: 68, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1533, line: 168, size: 768, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1541, file: !1533, line: 169, baseType: !177, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1541, file: !1533, line: 170, baseType: !139, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1541, file: !1533, line: 171, baseType: !1532, size: 512, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1541, file: !1533, line: 172, baseType: !1547, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1533, line: 133, size: 192, elements: !1550)
!1550 = !{!1551, !1558, !1563}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1549, file: !1533, line: 134, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!102, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1549, file: !1533, line: 135, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!97, !1556}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1549, file: !1533, line: 136, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!102, !1556, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1533, line: 125, size: 20736, elements: !1570)
!1570 = !{!1571, !1573, !1577, !1578, !1582}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1569, file: !1533, line: 126, baseType: !1572, size: 192)
!1572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 192, elements: !15)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1569, file: !1533, line: 127, baseType: !1574, size: 4096, offset: 192)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 4096, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1569, file: !1533, line: 128, baseType: !102, size: 32, offset: 4288)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1569, file: !1533, line: 129, baseType: !1579, size: 16384, offset: 4320)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1580)
!1580 = !{!1581}
!1581 = !DISubrange(count: 2048)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1569, file: !1533, line: 130, baseType: !102, size: 32, offset: 20704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1532, file: !1533, line: 69, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1533, line: 116, size: 384, elements: !1587)
!1587 = !{!1588, !1592, !1611, !2141, !2171, !2175}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1586, file: !1533, line: 117, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1538}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1586, file: !1533, line: 118, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1596, line: 254, size: 128, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1597 = !{!1598, !1607}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1595, file: !1596, line: 255, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!1380, !1538, !1602, !959}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1596, line: 30, size: 128, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1603, file: !1596, line: 31, baseType: !97, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1603, file: !1596, line: 32, baseType: !104, size: 16, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1595, file: !1596, line: 256, baseType: !1608, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1380, !1538, !1602, !97, !115}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1586, file: !1533, line: 119, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1596, line: 84, size: 320, elements: !1616)
!1616 = !{!1617, !1618, !1622, !2137, !2139}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1615, file: !1596, line: 85, baseType: !97, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1615, file: !1596, line: 86, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!104, !1538, !1602, !102}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1615, file: !1596, line: 88, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!104, !1538, !1626, !102}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1596, line: 175, size: 512, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !2128, !2132, !2133}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1627, file: !1596, line: 176, baseType: !1603, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1627, file: !1596, line: 177, baseType: !115, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1627, file: !1596, line: 178, baseType: !100, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1627, file: !1596, line: 179, baseType: !1633, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !223, line: 472, size: 1536, align: 64, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !2120, !2121, !2122, !2125, !2126, !2127}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1637, file: !223, line: 473, baseType: !1228, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1637, file: !223, line: 474, baseType: !719, size: 128, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1637, file: !223, line: 475, baseType: !889, size: 320, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1637, file: !223, line: 476, baseType: !273, size: 32, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1637, file: !223, line: 477, baseType: !129, size: 32, offset: 544)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1637, file: !223, line: 482, baseType: !473, size: 128, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1637, file: !223, line: 483, baseType: !119, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1637, file: !223, line: 484, baseType: !119, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1637, file: !223, line: 485, baseType: !1648, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !223, line: 404, size: 1280, elements: !1651)
!1651 = !{!1652, !1945, !2015, !2019, !2023, !2029, !2035, !2039, !2044, !2048, !2052, !2056, !2084, !2088, !2092, !2096, !2101, !2105, !2112, !2116}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1650, file: !223, line: 405, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!102, !1656, !1943}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !64, line: 74, size: 512, align: 128, elements: !1658)
!1658 = !{!1659, !1660, !1937, !1942}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1657, file: !64, line: 75, baseType: !119, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !64, line: 83, baseType: !1661, size: 320, offset: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !64, line: 83, size: 320, elements: !1662)
!1662 = !{!1663, !1684, !1698, !1702, !1936}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !64, line: 84, baseType: !1664, size: 320)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !64, line: 84, size: 320, elements: !1665)
!1665 = !{!1666, !1677, !1678, !1683}
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !64, line: 90, baseType: !1667, size: 128)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !64, line: 90, size: 128, elements: !1668)
!1668 = !{!1669, !1670, !1675, !1676}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1667, file: !64, line: 91, baseType: !177, size: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !64, line: 94, baseType: !1671, size: 128)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !64, line: 94, size: 128, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1671, file: !64, line: 96, baseType: !100, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1671, file: !64, line: 98, baseType: !35, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1667, file: !64, line: 102, baseType: !177, size: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1667, file: !64, line: 103, baseType: !177, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1664, file: !64, line: 106, baseType: !1636, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !64, line: 107, baseType: !1679, size: 64, offset: 192)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !64, line: 107, size: 64, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1679, file: !64, line: 108, baseType: !119, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1679, file: !64, line: 109, baseType: !119, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1664, file: !64, line: 117, baseType: !119, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !64, line: 119, baseType: !1685, size: 320)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !64, line: 119, size: 320, elements: !1686)
!1686 = !{!1687, !1688, !1691, !1692, !1693}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1685, file: !64, line: 124, baseType: !119, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1685, file: !64, line: 125, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !64, line: 125, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1685, file: !64, line: 126, baseType: !119, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1685, file: !64, line: 127, baseType: !119, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !64, line: 128, baseType: !1694, size: 64, offset: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !64, line: 128, size: 64, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1694, file: !64, line: 133, baseType: !119, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1694, file: !64, line: 138, baseType: !639, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !64, line: 141, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !64, line: 141, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1699, file: !64, line: 142, baseType: !119, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !64, line: 144, baseType: !1703, size: 128)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !64, line: 144, size: 128, elements: !1704)
!1704 = !{!1705, !1935}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1703, file: !64, line: 146, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !56, line: 126, size: 1216, elements: !1708)
!1708 = !{!1709, !1719, !1740, !1741, !1742, !1743, !1744, !1917, !1918, !1919}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1707, file: !56, line: 127, baseType: !1710, size: 384)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !56, line: 21, size: 384, elements: !1711)
!1711 = !{!1712, !1713, !1715, !1716, !1717, !1718}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1710, file: !56, line: 22, baseType: !119, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1710, file: !56, line: 23, baseType: !1714, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1710, file: !56, line: 24, baseType: !1714, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1710, file: !56, line: 25, baseType: !119, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1710, file: !56, line: 26, baseType: !119, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1710, file: !56, line: 27, baseType: !119, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1707, file: !56, line: 128, baseType: !1720, size: 128, offset: 384)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1721, line: 105, size: 128, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1720, file: !1721, line: 110, baseType: !119, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1720, file: !1721, line: 118, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1721, line: 95, size: 448, elements: !1727)
!1727 = !{!1728, !1729, !1735, !1736, !1737, !1738, !1739}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1726, file: !1721, line: 96, baseType: !639, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1726, file: !1721, line: 97, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1721, line: 60, baseType: !1732)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1726, file: !1721, line: 98, baseType: !1730, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1726, file: !1721, line: 99, baseType: !948, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1726, file: !1721, line: 100, baseType: !948, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1726, file: !1721, line: 101, baseType: !626, size: 128, align: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1726, file: !1721, line: 102, baseType: !1734, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1707, file: !56, line: 129, baseType: !1116, size: 256, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1707, file: !56, line: 130, baseType: !55, size: 32, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1707, file: !56, line: 131, baseType: !35, size: 32, offset: 800)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1707, file: !56, line: 132, baseType: !119, size: 64, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1707, file: !56, line: 133, baseType: !1745, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !56, line: 77, size: 192, elements: !1748)
!1748 = !{!1749, !1753, !1913}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1747, file: !56, line: 83, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1656}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1747, file: !56, line: 89, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !64, line: 1184, baseType: !35)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1760, line: 512, size: 896, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1761 = !{!1762, !1880, !1881, !1888, !1895, !1905, !1906, !1907, !1909, !1911}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 513, baseType: !1763, size: 320)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1759, file: !1760, line: 513, size: 320, elements: !1764)
!1764 = !{!1765, !1876, !1877, !1878, !1879}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1763, file: !1760, line: 514, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !64, line: 625, size: 1344, elements: !1768)
!1768 = !{!1769, !1778, !1779, !1787, !1794, !1795, !1800, !1801, !1806, !1807, !1810, !1869, !1870, !1871, !1872, !1873, !1874}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !64, line: 628, baseType: !1770, size: 128)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !64, line: 628, size: 128, elements: !1771)
!1771 = !{!1772, !1777}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !64, line: 629, baseType: !1773, size: 128)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !64, line: 629, size: 128, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1773, file: !64, line: 631, baseType: !119, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1773, file: !64, line: 632, baseType: !119, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1770, file: !64, line: 635, baseType: !626, size: 128, align: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1767, file: !64, line: 639, baseType: !590, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1767, file: !64, line: 640, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1781, line: 297, baseType: !1782)
!1781 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1781, line: 297, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1782, file: !1781, line: 297, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1786, line: 19, baseType: !119)
!1786 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !64, line: 646, baseType: !1788, size: 64, offset: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !64, line: 646, size: 64, elements: !1789)
!1789 = !{!1790, !1793}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1788, file: !64, line: 647, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !64, line: 542, baseType: !119)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1788, file: !64, line: 648, baseType: !1792, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1767, file: !64, line: 666, baseType: !102, size: 32, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1767, file: !64, line: 667, baseType: !1796, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !64, line: 579, size: 320, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !64, line: 580, baseType: !889, size: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1767, file: !64, line: 670, baseType: !948, size: 8, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1767, file: !64, line: 681, baseType: !1802, size: 256, offset: 512)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !64, line: 678, size: 256, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1802, file: !64, line: 679, baseType: !335, size: 192, align: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1802, file: !64, line: 680, baseType: !119, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1767, file: !64, line: 689, baseType: !177, size: 128, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1767, file: !64, line: 691, baseType: !1808, size: 64, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !64, line: 691, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1767, file: !64, line: 694, baseType: !1811, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1760, line: 563, size: 1024, elements: !1814)
!1814 = !{!1815, !1819, !1820, !1824, !1828, !1832, !1833, !1837, !1841, !1845, !1846, !1847, !1851, !1855, !1861, !1865}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1813, file: !1760, line: 564, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1766}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1813, file: !1760, line: 569, baseType: !1816, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1813, file: !1760, line: 571, baseType: !1821, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!102, !1766, !119}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1813, file: !1760, line: 572, baseType: !1825, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!102, !1766}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1813, file: !1760, line: 578, baseType: !1829, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!102, !1766, !119, !119, !119}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1813, file: !1760, line: 580, baseType: !1754, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1813, file: !1760, line: 581, baseType: !1834, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!1757, !1758, !35}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1813, file: !1760, line: 582, baseType: !1838, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!1757, !1758, !119, !119}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1813, file: !1760, line: 584, baseType: !1842, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!119, !1766}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1813, file: !1760, line: 588, baseType: !1754, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1813, file: !1760, line: 591, baseType: !1754, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1813, file: !1760, line: 597, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!102, !1766, !119, !100, !102, !102}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1813, file: !1760, line: 603, baseType: !1852, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!97, !1766}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1813, file: !1760, line: 613, baseType: !1856, size: 64, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!102, !1766, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !64, line: 717, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1813, file: !1760, line: 625, baseType: !1862, size: 64, offset: 896)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1859, !1766, !119}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1813, file: !1760, line: 633, baseType: !1866, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1656, !1766, !119}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1767, file: !64, line: 697, baseType: !119, size: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1767, file: !64, line: 699, baseType: !618, size: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1767, file: !64, line: 700, baseType: !100, size: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1767, file: !64, line: 711, baseType: !639, size: 64, offset: 1216)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1767, file: !64, line: 717, baseType: !1859, size: 64, offset: 1280)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1767, file: !64, line: 722, baseType: !1875, offset: 1344)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !64, line: 570, elements: !611)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1763, file: !1760, line: 515, baseType: !273, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1763, file: !1760, line: 516, baseType: !119, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1763, file: !1760, line: 517, baseType: !119, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1763, file: !1760, line: 518, baseType: !119, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 520, baseType: !63, size: 32, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1759, file: !1760, line: 522, baseType: !1882, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1786, line: 22, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1786, line: 22, size: 64, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1884, file: !1786, line: 22, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1786, line: 15, baseType: !119)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1759, file: !1760, line: 524, baseType: !1889, size: 64, offset: 448)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1781, line: 372, baseType: !1891)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1781, line: 372, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1891, file: !1781, line: 372, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1786, line: 16, baseType: !119)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 527, baseType: !1896, size: 64, offset: 512)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 527, size: 64, elements: !1897)
!1897 = !{!1898, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1896, file: !1760, line: 528, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1786, line: 21, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1786, line: 21, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1900, file: !1786, line: 21, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1786, line: 14, baseType: !119)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1896, file: !1760, line: 529, baseType: !1883, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1759, file: !1760, line: 534, baseType: !1656, size: 64, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1759, file: !1760, line: 535, baseType: !1656, size: 64, offset: 640)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1759, file: !1760, line: 541, baseType: !1908, size: 64, offset: 704)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1759, file: !1760, line: 545, baseType: !1910, size: 64, offset: 768)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1759, file: !1760, line: 549, baseType: !1912, size: 64, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1781, line: 520, baseType: !1656)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1747, file: !56, line: 100, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!102, !1706, !119, !119, !102}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1707, file: !56, line: 134, baseType: !100, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1707, file: !56, line: 135, baseType: !102, size: 32, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !56, line: 136, baseType: !1920, size: 128, offset: 1088)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !56, line: 136, size: 128, elements: !1921)
!1921 = !{!1922, !1928}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1920, file: !56, line: 137, baseType: !1923, size: 128)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1924, line: 6, size: 128, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1923, file: !1924, line: 7, baseType: !343, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1923, file: !1924, line: 8, baseType: !343, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !56, line: 138, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !56, line: 138, elements: !1930)
!1930 = !{!1931, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1929, file: !56, line: 138, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1929, file: !56, line: 138, elements: !611)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1929, file: !56, line: 138, baseType: !1934)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1923, elements: !1054)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1703, file: !64, line: 147, baseType: !100, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1661, file: !64, line: 161, baseType: !626, size: 128, align: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !64, line: 164, baseType: !1938, size: 32, offset: 384)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !64, line: 164, size: 32, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1938, file: !64, line: 169, baseType: !129, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1938, file: !64, line: 177, baseType: !35, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1657, file: !64, line: 181, baseType: !129, size: 32, offset: 416)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !223, line: 309, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1650, file: !223, line: 406, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!102, !618, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !64, line: 293, size: 1536, elements: !1951)
!1951 = !{!1952, !1982, !1996}
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !64, line: 295, baseType: !1953, size: 512)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !64, line: 295, size: 512, elements: !1954)
!1954 = !{!1955, !1981}
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1953, file: !64, line: 296, baseType: !1956, size: 448)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !64, line: 296, size: 448, elements: !1957)
!1957 = !{!1958, !1959, !1968, !1969, !1970, !1979, !1980}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !64, line: 298, baseType: !119, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !64, line: 299, baseType: !1960, size: 128, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !64, line: 299, size: 128, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1960, file: !64, line: 300, baseType: !177, size: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !64, line: 302, baseType: !1964, size: 128)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !64, line: 302, size: 128, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1964, file: !64, line: 303, baseType: !100, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1964, file: !64, line: 305, baseType: !35, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1956, file: !64, line: 310, baseType: !1636, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1956, file: !64, line: 311, baseType: !119, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !64, line: 312, baseType: !1971, size: 64, offset: 320)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !64, line: 312, size: 64, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1971, file: !64, line: 313, baseType: !100, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1971, file: !64, line: 314, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !64, line: 257, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 255, size: 64, elements: !1977)
!1977 = !{!1978}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1976, file: !64, line: 256, baseType: !119, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1956, file: !64, line: 316, baseType: !129, size: 32, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1956, file: !64, line: 317, baseType: !129, size: 32, offset: 416)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1953, file: !64, line: 323, baseType: !1657, size: 512, align: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !64, line: 325, baseType: !1983, size: 512, offset: 512)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !64, line: 325, size: 512, elements: !1984)
!1984 = !{!1985, !1995}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !64, line: 326, baseType: !1986, size: 320)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !64, line: 326, size: 320, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1986, file: !64, line: 327, baseType: !119, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1986, file: !64, line: 328, baseType: !119, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1986, file: !64, line: 329, baseType: !119, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1986, file: !64, line: 331, baseType: !129, size: 32, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1986, file: !64, line: 332, baseType: !129, size: 32, offset: 224)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1986, file: !64, line: 333, baseType: !129, size: 32, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1986, file: !64, line: 335, baseType: !35, size: 32, offset: 288)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1983, file: !64, line: 339, baseType: !1657, size: 512, align: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !64, line: 341, baseType: !1997, size: 512, offset: 1024)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !64, line: 341, size: 512, elements: !1998)
!1998 = !{!1999, !2008, !2014}
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !64, line: 342, baseType: !2000, size: 384)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !64, line: 342, size: 384, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2000, file: !64, line: 343, baseType: !119, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2000, file: !64, line: 344, baseType: !119, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2000, file: !64, line: 346, baseType: !100, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2000, file: !64, line: 347, baseType: !100, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2000, file: !64, line: 348, baseType: !100, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2000, file: !64, line: 349, baseType: !100, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !64, line: 352, baseType: !2009, size: 256)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !64, line: 352, size: 256, elements: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2009, file: !64, line: 353, baseType: !119, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2009, file: !64, line: 354, baseType: !119, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2009, file: !64, line: 356, baseType: !177, size: 128, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1997, file: !64, line: 359, baseType: !1657, size: 512, align: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1650, file: !223, line: 409, baseType: !2016, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!102, !1636, !1943}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1650, file: !223, line: 412, baseType: !2020, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!948, !1636, !1949}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1650, file: !223, line: 414, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !223, line: 310, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1650, file: !223, line: 416, baseType: !2030, size: 64, offset: 320)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!102, !618, !1636, !121, !35, !2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1650, file: !223, line: 419, baseType: !2036, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!102, !618, !1636, !121, !35, !35, !1656, !100}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1650, file: !223, line: 424, baseType: !2040, size: 64, offset: 448)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!2043, !1636, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !105, line: 131, baseType: !343)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1650, file: !223, line: 425, baseType: !2045, size: 64, offset: 512)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !1949, !115, !115}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1650, file: !223, line: 426, baseType: !2049, size: 64, offset: 576)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!948, !1949, !273}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1650, file: !223, line: 427, baseType: !2053, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !1949}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1650, file: !223, line: 428, baseType: !2057, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!1380, !2060, !2082}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !223, line: 373, size: 384, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2069, !2070, !2071, !2072}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2061, file: !223, line: 374, baseType: !618, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2061, file: !223, line: 375, baseType: !121, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2061, file: !223, line: 376, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !2060, !1162}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2061, file: !223, line: 377, baseType: !100, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2061, file: !223, line: 378, baseType: !102, size: 32, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2061, file: !223, line: 379, baseType: !173, size: 16, offset: 288)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !223, line: 380, baseType: !2073, size: 64, offset: 320)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !223, line: 380, size: 64, elements: !2074)
!2074 = !{!2075, !2078}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2073, file: !223, line: 386, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !223, line: 386, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2073, file: !223, line: 395, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!1380, !100}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !223, line: 69, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1650, file: !223, line: 433, baseType: !2085, size: 64, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!102, !1636, !1949, !1949, !79}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1650, file: !223, line: 435, baseType: !2089, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!102, !1949}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1650, file: !223, line: 436, baseType: !2093, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!948, !1949, !115, !115}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1650, file: !223, line: 438, baseType: !2097, size: 64, offset: 960)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1949, !2100, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1650, file: !223, line: 439, baseType: !2102, size: 64, offset: 1024)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!102, !1636, !1656}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1650, file: !223, line: 442, baseType: !2106, size: 64, offset: 1088)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!102, !2109, !618, !2111}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !223, line: 66, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1650, file: !223, line: 444, baseType: !2113, size: 64, offset: 1152)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !618}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1650, file: !223, line: 445, baseType: !2117, size: 64, offset: 1216)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!102, !2060, !2082}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1637, file: !223, line: 486, baseType: !119, size: 64, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1637, file: !223, line: 487, baseType: !889, size: 320, offset: 960)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1637, file: !223, line: 488, baseType: !2123, size: 32, offset: 1280)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2124, line: 8, baseType: !286)
!2124 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1637, file: !223, line: 489, baseType: !139, size: 32, offset: 1312)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1637, file: !223, line: 490, baseType: !177, size: 128, offset: 1344)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1637, file: !223, line: 491, baseType: !100, size: 64, offset: 1472)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1627, file: !1596, line: 180, baseType: !2129, size: 64, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!1380, !618, !1538, !1626, !959, !121, !115}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1627, file: !1596, line: 182, baseType: !2129, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1627, file: !1596, line: 184, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!102, !618, !1538, !1626, !1766}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1615, file: !1596, line: 90, baseType: !2138, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1615, file: !1596, line: 91, baseType: !2140, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1586, file: !1533, line: 120, baseType: !2142, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2145, !1556}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !87, line: 39, size: 384, elements: !2148)
!2148 = !{!2149, !2150, !2154, !2158, !2166, !2170}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2147, file: !87, line: 40, baseType: !86, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2147, file: !87, line: 41, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!948}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2147, file: !87, line: 42, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!100}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2147, file: !87, line: 43, baseType: !2159, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2162, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !87, line: 19, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2147, file: !87, line: 44, baseType: !2167, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2162}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2147, file: !87, line: 45, baseType: !1259, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1586, file: !1533, line: 121, baseType: !2172, size: 64, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2162, !1556}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1586, file: !1533, line: 122, baseType: !2176, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !1556, !1141, !1142}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1532, file: !1533, line: 70, baseType: !2180, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2182, line: 190, size: 1152, elements: !2183)
!2182 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2281, !2282, !2283, !2284, !2285, !2288}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2181, file: !2182, line: 191, baseType: !129, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2181, file: !2182, line: 192, baseType: !129, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2181, file: !2182, line: 202, baseType: !2180, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2181, file: !2182, line: 203, baseType: !97, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2181, file: !2182, line: 205, baseType: !335, size: 192, align: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2181, file: !2182, line: 207, baseType: !2162, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2181, file: !2182, line: 208, baseType: !35, size: 32, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !2182, line: 209, baseType: !2192, size: 256, offset: 512)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2181, file: !2182, line: 209, size: 256, elements: !2193)
!2193 = !{!2194, !2203, !2207}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2192, file: !2182, line: 210, baseType: !2195, size: 256)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2182, line: 153, size: 256, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2202}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2195, file: !2182, line: 154, baseType: !119, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2195, file: !2182, line: 156, baseType: !476, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2195, file: !2182, line: 162, baseType: !2200, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2182, line: 162, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2195, file: !2182, line: 167, baseType: !119, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2192, file: !2182, line: 211, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2182, line: 170, size: 64, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2204, file: !2182, line: 171, baseType: !2180, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2192, file: !2182, line: 212, baseType: !2208, size: 256)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2182, line: 174, size: 256, elements: !2209)
!2209 = !{!2210, !2276, !2279, !2280}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2208, file: !2182, line: 175, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2182, line: 271, size: 768, elements: !2214)
!2214 = !{!2215, !2237, !2241, !2245, !2249, !2253, !2257, !2261, !2262, !2263, !2264, !2272}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2213, file: !2182, line: 276, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!102, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2182, line: 251, size: 1216, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2220, file: !2182, line: 253, baseType: !2180, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2220, file: !2182, line: 254, baseType: !618, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2220, file: !2182, line: 255, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !277, line: 66, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2220, file: !2182, line: 256, baseType: !100, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2220, file: !2182, line: 259, baseType: !646, size: 256, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2220, file: !2182, line: 260, baseType: !646, size: 256, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2220, file: !2182, line: 261, baseType: !102, size: 32, offset: 768)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2220, file: !2182, line: 262, baseType: !177, size: 128, offset: 832)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2220, file: !2182, line: 263, baseType: !959, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2220, file: !2182, line: 265, baseType: !115, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2220, file: !2182, line: 266, baseType: !948, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2220, file: !2182, line: 267, baseType: !948, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2220, file: !2182, line: 268, baseType: !1811, size: 64, offset: 1152)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2213, file: !2182, line: 277, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2219}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2213, file: !2182, line: 290, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!102, !2225, !100}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2213, file: !2182, line: 292, baseType: !2246, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!100, !2225, !120}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2213, file: !2182, line: 293, baseType: !2250, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!100, !2225, !100, !120}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2213, file: !2182, line: 294, baseType: !2254, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2225, !100}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2213, file: !2182, line: 296, baseType: !2258, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!1380, !2219, !959, !115, !121}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2213, file: !2182, line: 306, baseType: !115, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2213, file: !2182, line: 313, baseType: !948, size: 8, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2213, file: !2182, line: 314, baseType: !2258, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2213, file: !2182, line: 317, baseType: !2265, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2268, !2219, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2269, line: 59, baseType: !35)
!2269 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !223, line: 61, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2213, file: !2182, line: 320, baseType: !2273, size: 64, offset: 704)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!102, !2219, !1766}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2208, file: !2182, line: 176, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2182, line: 35, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2208, file: !2182, line: 177, baseType: !121, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2208, file: !2182, line: 178, baseType: !2180, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2181, file: !2182, line: 215, baseType: !100, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2181, file: !2182, line: 221, baseType: !343, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2181, file: !2182, line: 223, baseType: !106, size: 16, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2181, file: !2182, line: 224, baseType: !104, size: 16, offset: 912)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2181, file: !2182, line: 225, baseType: !2286, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2182, line: 36, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2181, file: !2182, line: 227, baseType: !626, size: 128, align: 64, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1532, file: !1533, line: 71, baseType: !2290, size: 32, offset: 448)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2291, line: 19, size: 32, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2290, file: !2291, line: 20, baseType: !292, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1532, file: !1533, line: 73, baseType: !35, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1532, file: !1533, line: 74, baseType: !35, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1532, file: !1533, line: 75, baseType: !35, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1532, file: !1533, line: 76, baseType: !35, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1532, file: !1533, line: 77, baseType: !35, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1529, file: !49, line: 47, baseType: !1519, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1529, file: !49, line: 48, baseType: !1538, size: 64, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1529, file: !49, line: 49, baseType: !2302, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !49, line: 49, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1529, file: !49, line: 50, baseType: !1115, size: 64, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1520, file: !49, line: 418, baseType: !2306, size: 64, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !49, line: 53, size: 448, elements: !2308)
!2308 = !{!2309, !2310, !2315, !2319, !2323, !2327}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2307, file: !49, line: 54, baseType: !1603, size: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2307, file: !49, line: 55, baseType: !2311, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!1380, !2306, !2314, !959}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2307, file: !49, line: 57, baseType: !2316, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!1380, !2306, !2314, !97, !115}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2307, file: !49, line: 59, baseType: !2320, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !1519, !97}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2307, file: !49, line: 60, baseType: !2324, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!102, !1519}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2307, file: !49, line: 61, baseType: !2328, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !1519}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1520, file: !49, line: 419, baseType: !97, size: 64, offset: 1472)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1520, file: !49, line: 420, baseType: !97, size: 64, offset: 1536)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1520, file: !49, line: 421, baseType: !1538, size: 64, offset: 1600)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1520, file: !49, line: 424, baseType: !2335, size: 64, offset: 1664)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !49, line: 424, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1520, file: !49, line: 425, baseType: !2339, size: 64, offset: 1728)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1520, file: !49, line: 426, baseType: !35, size: 32, offset: 1792)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1520, file: !49, line: 435, baseType: !646, size: 256, offset: 1856)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1520, file: !49, line: 437, baseType: !2344, size: 64, offset: 2112)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2346, line: 69, size: 320, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2347 = !{!2348, !2349, !2350, !2367, !2369, !2373, !2374}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2345, file: !2346, line: 70, baseType: !97, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2345, file: !2346, line: 71, baseType: !1519, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2345, file: !2346, line: 72, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2346, line: 47, size: 256, elements: !2354)
!2354 = !{!2355, !2356, !2362, !2366}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2353, file: !2346, line: 49, baseType: !35, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2353, file: !2346, line: 51, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!102, !97, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2345)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2353, file: !2346, line: 53, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!102, !959, !2360}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2353, file: !2346, line: 55, baseType: !1259, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2345, file: !2346, line: 73, baseType: !2368, size: 16, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2345, file: !2346, line: 74, baseType: !2370, size: 8, offset: 208)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !164, line: 16, baseType: !2371)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !166, line: 20, baseType: !2372)
!2372 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2345, file: !2346, line: 75, baseType: !163, size: 8, offset: 216)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2345, file: !2346, line: 76, baseType: !2375, size: 64, offset: 256)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2345, file: !2346, line: 76, size: 64, elements: !2376)
!2376 = !{!2377, !2378, !2385}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2375, file: !2346, line: 77, baseType: !100, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2375, file: !2346, line: 78, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2381)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2346, line: 86, size: 128, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2381, file: !2346, line: 87, baseType: !35, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2381, file: !2346, line: 88, baseType: !959, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2375, file: !2346, line: 79, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2388)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2346, line: 92, size: 256, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2394, !2395}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2388, file: !2346, line: 94, baseType: !35, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2388, file: !2346, line: 95, baseType: !35, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2388, file: !2346, line: 96, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2388, file: !2346, line: 97, baseType: !2351, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2388, file: !2346, line: 98, baseType: !100, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1520, file: !49, line: 438, baseType: !35, size: 32, offset: 2176)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1520, file: !49, line: 441, baseType: !35, size: 32, offset: 2208)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1520, file: !49, line: 442, baseType: !2335, size: 64, offset: 2240)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1520, file: !49, line: 443, baseType: !2339, size: 64, offset: 2304)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1520, file: !49, line: 444, baseType: !948, size: 8, offset: 2368)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1520, file: !49, line: 451, baseType: !948, size: 8, offset: 2376)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1520, file: !49, line: 454, baseType: !35, size: 32, offset: 2400)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1520, file: !49, line: 455, baseType: !2404, size: 64, offset: 2432)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2406, line: 23, size: 96, elements: !2407)
!2406 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2405, file: !2406, line: 24, baseType: !102, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2405, file: !2406, line: 24, baseType: !102, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2405, file: !2406, line: 24, baseType: !102, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1520, file: !49, line: 458, baseType: !2412, size: 64, offset: 2496)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!102}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1520, file: !49, line: 460, baseType: !2416, size: 4032, align: 512, offset: 2560)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2417, size: 4032, elements: !5)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !49, line: 362, size: 576, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2417, file: !49, line: 363, baseType: !100, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2417, file: !49, line: 364, baseType: !35, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2417, file: !49, line: 367, baseType: !2422, size: 448, offset: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !49, line: 319, size: 448, elements: !2423)
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2422, file: !49, line: 320, baseType: !1519, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2422, file: !49, line: 321, baseType: !2426, size: 384, offset: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2427, line: 40, size: 384, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2426, file: !2427, line: 41, baseType: !2430, size: 384, align: 64)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, align: 64, elements: !2431)
!2431 = !{!2432}
!2432 = !DISubrange(count: 2)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1520, file: !49, line: 463, baseType: !2434, size: 192, offset: 6592)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2435, line: 8, size: 192, elements: !2436)
!2435 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2436 = !{!2437, !2438, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2434, file: !2435, line: 10, baseType: !35, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2434, file: !2435, line: 11, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2434, file: !2435, line: 12, baseType: !2441, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2443, line: 59, size: 48, elements: !2444)
!2443 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2444 = !{!2445, !2448, !2449, !2450, !2451, !2452}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2442, file: !2443, line: 60, baseType: !2446, size: 16)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !164, line: 18, baseType: !2447)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !166, line: 23, baseType: !917)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2442, file: !2443, line: 61, baseType: !2446, size: 16, offset: 16)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2442, file: !2443, line: 63, baseType: !35, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2442, file: !2443, line: 64, baseType: !35, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2442, file: !2443, line: 65, baseType: !35, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2442, file: !2443, line: 66, baseType: !35, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1520, file: !49, line: 465, baseType: !119, size: 64, offset: 6784)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1520, file: !49, line: 469, baseType: !35, size: 32, offset: 6848)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1520, file: !49, line: 470, baseType: !177, size: 128, offset: 6912)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1520, file: !49, line: 471, baseType: !2457, size: 64, offset: 7040)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2459, line: 33, size: 96, elements: !2460)
!2459 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2460 = !{!2461, !2462, !2463, !2464}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2458, file: !2459, line: 37, baseType: !102, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2458, file: !2459, line: 43, baseType: !102, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2458, file: !2459, line: 45, baseType: !106, size: 16, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2458, file: !2459, line: 47, baseType: !106, size: 16, offset: 80)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1520, file: !49, line: 476, baseType: !2466, size: 64, offset: 7104)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !49, line: 378, size: 256, elements: !2468)
!2468 = !{!2469, !2485, !2486, !2487}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2467, file: !49, line: 379, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2472, line: 204, baseType: !2473)
!2472 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2472, line: 197, size: 192, elements: !2474)
!2474 = !{!2475, !2477, !2478, !2479, !2481, !2483}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2473, file: !2472, line: 198, baseType: !2476, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2472, line: 21, baseType: !287)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2473, file: !2472, line: 199, baseType: !167, size: 8, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2473, file: !2472, line: 200, baseType: !167, size: 8, offset: 40)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2473, file: !2472, line: 201, baseType: !2480, size: 16, offset: 48)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2472, line: 17, baseType: !174)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2473, file: !2472, line: 202, baseType: !2482, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2472, line: 16, baseType: !344)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2473, file: !2472, line: 203, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2472, line: 22, baseType: !344)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2467, file: !49, line: 380, baseType: !35, size: 32, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2467, file: !49, line: 381, baseType: !959, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2467, file: !49, line: 382, baseType: !959, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1520, file: !49, line: 477, baseType: !2467, size: 256, offset: 7168)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1520, file: !49, line: 480, baseType: !2490, size: 64, offset: 7424)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !49, line: 480, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1520, file: !49, line: 483, baseType: !2493, size: 64, offset: 7488)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !49, line: 483, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1520, file: !49, line: 488, baseType: !959, size: 64, offset: 7552)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1520, file: !49, line: 492, baseType: !100, size: 64, offset: 7616)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1520, file: !49, line: 493, baseType: !35, size: 32, offset: 7680)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1520, file: !49, line: 495, baseType: !100, size: 64, offset: 7744)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1520, file: !49, line: 496, baseType: !35, size: 32, offset: 7808)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1520, file: !49, line: 499, baseType: !35, size: 32, offset: 7840)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1520, file: !49, line: 500, baseType: !2502, size: 64, offset: 7872)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2504, line: 45, baseType: !2505)
!2504 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1520, file: !49, line: 503, baseType: !35, size: 32, offset: 7936)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1520, file: !49, line: 504, baseType: !2508, size: 64, offset: 8000)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2511, line: 96, size: 192, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2512 = !{!2513, !2514, !2567, !2570}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2510, file: !2511, line: 97, baseType: !35, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2510, file: !2511, line: 98, baseType: !2515, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2511, line: 24, size: 3072, elements: !2517)
!2517 = !{!2518, !2520, !2521, !2522, !2523, !2536, !2537, !2538, !2539, !2551, !2552, !2553, !2564, !2565, !2566}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2516, file: !2511, line: 26, baseType: !2519, size: 128)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 128, elements: !2431)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2516, file: !2511, line: 27, baseType: !2519, size: 128, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2516, file: !2511, line: 28, baseType: !102, size: 32, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2516, file: !2511, line: 31, baseType: !139, size: 32, align: 512, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2516, file: !2511, line: 32, baseType: !2524, size: 960, offset: 576)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2525, line: 206, size: 960, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2526 = !{!2527, !2528, !2531, !2533, !2534, !2535}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2524, file: !2525, line: 207, baseType: !629, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2524, file: !2525, line: 208, baseType: !2529, size: 256, offset: 64)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2530, size: 256, elements: !27)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2524, file: !2525, line: 209, baseType: !2532, size: 256, offset: 320)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !27)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2524, file: !2525, line: 213, baseType: !1162, size: 64, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2524, file: !2525, line: 215, baseType: !1164, size: 256, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2524, file: !2525, line: 216, baseType: !163, size: 8, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2516, file: !2511, line: 33, baseType: !119, size: 64, offset: 1536)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2516, file: !2511, line: 34, baseType: !119, size: 64, offset: 1600)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2516, file: !2511, line: 35, baseType: !948, size: 8, offset: 1664)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2516, file: !2511, line: 36, baseType: !2540, size: 320, offset: 1728)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2541, line: 11, size: 320, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2542 = !{!2543, !2544, !2545, !2550}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2540, file: !2541, line: 16, baseType: !696, size: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2540, file: !2541, line: 17, baseType: !119, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2540, file: !2541, line: 18, baseType: !2546, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2540, file: !2541, line: 19, baseType: !286, size: 32, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2516, file: !2511, line: 37, baseType: !1077, size: 256, offset: 2048)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2516, file: !2511, line: 38, baseType: !626, size: 128, align: 64, offset: 2304)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2516, file: !2511, line: 39, baseType: !2554, size: 64, offset: 2432)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2511, line: 49, size: 768, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2555, file: !2511, line: 50, baseType: !139, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2555, file: !2511, line: 51, baseType: !2532, size: 256, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2555, file: !2511, line: 53, baseType: !2532, size: 256, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2555, file: !2511, line: 54, baseType: !119, size: 64, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2555, file: !2511, line: 55, baseType: !2554, size: 64, offset: 640)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2555, file: !2511, line: 56, baseType: !102, size: 32, offset: 704)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2555, file: !2511, line: 57, baseType: !102, size: 32, offset: 736)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2516, file: !2511, line: 40, baseType: !119, size: 64, offset: 2496)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2516, file: !2511, line: 42, baseType: !102, size: 32, offset: 2560)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2516, file: !2511, line: 43, baseType: !2509, size: 64, offset: 2624)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2510, file: !2511, line: 99, baseType: !2568, offset: 128)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2569, line: 211, elements: !611)
!2569 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2510, file: !2511, line: 100, baseType: !2571, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2511, line: 63, size: 3008, elements: !2573)
!2573 = !{!2574, !2575, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2605}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2572, file: !2511, line: 64, baseType: !2554, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2572, file: !2511, line: 65, baseType: !2576, size: 192, offset: 64)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2554, size: 192, elements: !15)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2572, file: !2511, line: 67, baseType: !102, size: 32, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2572, file: !2511, line: 68, baseType: !646, size: 256, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2572, file: !2511, line: 69, baseType: !139, size: 32, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2572, file: !2511, line: 70, baseType: !646, size: 256, offset: 640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2572, file: !2511, line: 71, baseType: !119, size: 64, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2572, file: !2511, line: 72, baseType: !119, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2572, file: !2511, line: 73, baseType: !119, size: 64, offset: 1024)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2572, file: !2511, line: 74, baseType: !119, size: 64, offset: 1088)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2572, file: !2511, line: 75, baseType: !119, size: 64, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2572, file: !2511, line: 76, baseType: !119, size: 64, offset: 1216)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2572, file: !2511, line: 77, baseType: !119, size: 64, offset: 1280)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2572, file: !2511, line: 78, baseType: !119, size: 64, offset: 1344)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2572, file: !2511, line: 79, baseType: !948, size: 8, offset: 1408)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2572, file: !2511, line: 80, baseType: !119, size: 64, offset: 1472)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2572, file: !2511, line: 81, baseType: !646, size: 256, offset: 1536)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2572, file: !2511, line: 82, baseType: !1116, size: 256, offset: 1792)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2572, file: !2511, line: 84, baseType: !129, size: 32, offset: 2048)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2572, file: !2511, line: 87, baseType: !119, size: 64, offset: 2112)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2572, file: !2511, line: 88, baseType: !119, size: 64, offset: 2176)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2572, file: !2511, line: 89, baseType: !2597, size: 704, offset: 2240)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1078, line: 111, size: 704, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2604}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2597, file: !1078, line: 112, baseType: !1077, size: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2597, file: !1078, line: 113, baseType: !2540, size: 320, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2597, file: !1078, line: 116, baseType: !2602, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1078, line: 18, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2597, file: !1078, line: 117, baseType: !102, size: 32, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2572, file: !2511, line: 90, baseType: !2509, size: 64, offset: 2944)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1520, file: !49, line: 515, baseType: !2607, size: 64, offset: 8064)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2609, line: 117, size: 128, elements: !2610)
!2609 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2610 = !{!2611, !2612, !2613}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2608, file: !2609, line: 118, baseType: !881, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2608, file: !2609, line: 119, baseType: !881, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2608, file: !2609, line: 120, baseType: !1162, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1520, file: !49, line: 516, baseType: !35, size: 32, offset: 8128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1520, file: !49, line: 519, baseType: !35, size: 32, offset: 8160)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1520, file: !49, line: 520, baseType: !2617, size: 64, offset: 8192)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1520, file: !49, line: 523, baseType: !2619, size: 64, offset: 8256)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !49, line: 523, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1520, file: !49, line: 524, baseType: !35, size: 32, offset: 8320)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1520, file: !49, line: 525, baseType: !2624, size: 64, offset: 8384)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !49, line: 525, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1520, file: !49, line: 526, baseType: !35, size: 32, offset: 8448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1520, file: !49, line: 533, baseType: !100, size: 64, offset: 8512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1520, file: !49, line: 534, baseType: !35, size: 32, offset: 8576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1520, file: !49, line: 535, baseType: !2631, size: 64, offset: 8640)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1520, file: !49, line: 536, baseType: !35, size: 32, offset: 8704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1520, file: !49, line: 539, baseType: !102, size: 32, offset: 8736)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1520, file: !49, line: 540, baseType: !2635, size: 64, offset: 8768)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2637, line: 32, size: 64, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2636, file: !2637, line: 33, baseType: !881, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2636, file: !2637, line: 34, baseType: !881, size: 32, offset: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1520, file: !49, line: 563, baseType: !177, size: 128, offset: 8832)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1520, file: !49, line: 565, baseType: !177, size: 128, offset: 8960)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1520, file: !49, line: 568, baseType: !2644, size: 64, offset: 9088)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1520, file: !49, line: 570, baseType: !129, size: 32, offset: 9152)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1512, file: !34, line: 179, baseType: !2649, size: 512, offset: 128)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 512, elements: !22)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1448, file: !34, line: 101, baseType: !97, size: 64, offset: 896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1448, file: !34, line: 102, baseType: !100, size: 64, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1448, file: !34, line: 103, baseType: !100, size: 64, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1448, file: !34, line: 104, baseType: !35, size: 32, offset: 1088)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1448, file: !34, line: 105, baseType: !35, size: 32, offset: 1120)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1448, file: !34, line: 106, baseType: !35, size: 32, offset: 1152)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1448, file: !34, line: 107, baseType: !208, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1448, file: !34, line: 108, baseType: !213, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1448, file: !34, line: 109, baseType: !948, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1448, file: !34, line: 110, baseType: !948, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1448, file: !34, line: 111, baseType: !948, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1448, file: !34, line: 112, baseType: !948, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1439, file: !223, line: 2377, baseType: !2663, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !2666, line: 39, size: 256, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!2667 = !{!2668, !2669, !2686, !2687, !2688}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2665, file: !2666, line: 40, baseType: !97, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2665, file: !2666, line: 41, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !2666, line: 22, baseType: !2672)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!102, !2674, !2663, !1467, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !2666, line: 53, size: 128, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !2676, file: !2666, line: 54, baseType: !948, size: 8)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !2666, line: 55, baseType: !2680, size: 64, offset: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !2666, line: 55, size: 64, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !2680, file: !2666, line: 56, baseType: !948, size: 8)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !2680, file: !2666, line: 57, baseType: !102, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !2680, file: !2666, line: 58, baseType: !35, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !2680, file: !2666, line: 59, baseType: !343, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !2665, file: !2666, line: 42, baseType: !163, size: 8, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2665, file: !2666, line: 43, baseType: !106, size: 16, offset: 144)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2665, file: !2666, line: 47, baseType: !2162, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1439, file: !223, line: 2378, baseType: !2690, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!1193, !1438, !102, !97, !100}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1439, file: !223, line: 2380, baseType: !2694, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{null, !1429}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1439, file: !223, line: 2381, baseType: !1519, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1439, file: !223, line: 2382, baseType: !1438, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1439, file: !223, line: 2383, baseType: !692, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1439, file: !223, line: 2385, baseType: !2701, offset: 576)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2569, line: 206, elements: !611)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1439, file: !223, line: 2386, baseType: !2701, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1439, file: !223, line: 2387, baseType: !2701, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1439, file: !223, line: 2388, baseType: !2705, offset: 576)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2701, elements: !15)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1439, file: !223, line: 2390, baseType: !2701, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1439, file: !223, line: 2391, baseType: !2701, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1439, file: !223, line: 2392, baseType: !2701, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1439, file: !223, line: 2393, baseType: !2701, offset: 576)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1430, file: !223, line: 1197, baseType: !2711, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !223, line: 2057, size: 1664, elements: !2714)
!2714 = !{!2715, !2719, !2723, !2724, !2728, !2732, !2736, !2737, !2738, !2742, !2746, !2750, !2751, !2752, !2758, !2762, !2763, !2767, !2768, !2769, !2770, !2774, !2778, !2825, !2840, !2841}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2713, file: !223, line: 2058, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!1228, !1429}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2713, file: !223, line: 2059, baseType: !2720, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !1228}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2713, file: !223, line: 2060, baseType: !2720, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2713, file: !223, line: 2062, baseType: !2725, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !1228, !102}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2713, file: !223, line: 2063, baseType: !2729, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!102, !1228, !1943}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2713, file: !223, line: 2064, baseType: !2733, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!102, !1228}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2713, file: !223, line: 2065, baseType: !2720, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2713, file: !223, line: 2066, baseType: !2694, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2713, file: !223, line: 2067, baseType: !2739, size: 64, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!102, !1429, !102}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2713, file: !223, line: 2068, baseType: !2743, size: 64, offset: 576)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!102, !1429, !222}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2713, file: !223, line: 2069, baseType: !2747, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!102, !1429}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2713, file: !223, line: 2070, baseType: !2743, size: 64, offset: 704)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2713, file: !223, line: 2071, baseType: !2747, size: 64, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2713, file: !223, line: 2072, baseType: !2753, size: 64, offset: 832)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!102, !1193, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !223, line: 62, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2713, file: !223, line: 2073, baseType: !2759, size: 64, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!102, !1429, !2439, !959}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2713, file: !223, line: 2074, baseType: !2694, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2713, file: !223, line: 2076, baseType: !2764, size: 64, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!102, !2225, !1193}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2713, file: !223, line: 2077, baseType: !2764, size: 64, offset: 1088)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2713, file: !223, line: 2078, baseType: !2764, size: 64, offset: 1152)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2713, file: !223, line: 2079, baseType: !2764, size: 64, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2713, file: !223, line: 2081, baseType: !2771, size: 64, offset: 1280)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!1380, !1429, !102, !959, !115, !121}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2713, file: !223, line: 2082, baseType: !2775, size: 64, offset: 1344)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!1380, !1429, !102, !97, !115, !121}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2713, file: !223, line: 2083, baseType: !2779, size: 64, offset: 1408)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!2782, !1228}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !228, line: 296, size: 1664, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2810, !2811, !2812}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2784, file: !228, line: 297, baseType: !696, size: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2784, file: !228, line: 298, baseType: !177, size: 128, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2784, file: !228, line: 299, baseType: !177, size: 128, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2784, file: !228, line: 300, baseType: !177, size: 128, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2784, file: !228, line: 301, baseType: !646, size: 256, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2784, file: !228, line: 302, baseType: !139, size: 32, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2784, file: !228, line: 303, baseType: !129, size: 32, offset: 800)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2784, file: !228, line: 304, baseType: !1429, size: 64, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2784, file: !228, line: 305, baseType: !2795, size: 64, offset: 896)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !228, line: 68, size: 64, elements: !2796)
!2796 = !{!2797, !2809}
!2797 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !228, line: 69, baseType: !2798, size: 32)
!2798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !228, line: 69, size: 32, elements: !2799)
!2799 = !{!2800, !2801, !2802}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2798, file: !228, line: 70, baseType: !771, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2798, file: !228, line: 71, baseType: !779, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2798, file: !228, line: 72, baseType: !2803, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2804, line: 24, baseType: !2805)
!2804 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2804, line: 22, size: 32, elements: !2806)
!2806 = !{!2807}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2805, file: !2804, line: 23, baseType: !2808, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2804, line: 20, baseType: !777)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2795, file: !228, line: 74, baseType: !227, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2784, file: !228, line: 306, baseType: !121, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2784, file: !228, line: 307, baseType: !119, size: 64, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2784, file: !228, line: 308, baseType: !2813, size: 576, offset: 1088)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !228, line: 205, size: 576, elements: !2814)
!2814 = !{!2815, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2813, file: !228, line: 206, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !228, line: 66, baseType: !123)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2813, file: !228, line: 207, baseType: !2816, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2813, file: !228, line: 208, baseType: !2816, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2813, file: !228, line: 209, baseType: !2816, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2813, file: !228, line: 210, baseType: !2816, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2813, file: !228, line: 211, baseType: !2816, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2813, file: !228, line: 212, baseType: !2816, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2813, file: !228, line: 213, baseType: !905, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2813, file: !228, line: 214, baseType: !905, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2713, file: !223, line: 2085, baseType: !2826, size: 64, offset: 1472)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!1162, !1429, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2831, line: 15, size: 256, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2832 = !{!2833, !2834, !2835, !2836, !2837}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2830, file: !2831, line: 16, baseType: !273, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2830, file: !2831, line: 19, baseType: !102, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2830, file: !2831, line: 26, baseType: !119, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2830, file: !2831, line: 33, baseType: !119, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2830, file: !2831, line: 36, baseType: !2838, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2831, line: 36, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2713, file: !223, line: 2087, baseType: !2826, size: 64, offset: 1536)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2713, file: !223, line: 2089, baseType: !2694, size: 64, offset: 1600)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1430, file: !223, line: 1198, baseType: !2843, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2845)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !228, line: 324, size: 704, elements: !2846)
!2846 = !{!2847, !2851, !2855, !2859, !2860, !2861, !2862, !2863, !2868, !2873, !2877}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2845, file: !228, line: 325, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!102, !2783}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2845, file: !228, line: 326, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2783, !1429, !102}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2845, file: !228, line: 327, baseType: !2856, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !2783}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2845, file: !228, line: 328, baseType: !2848, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2845, file: !228, line: 329, baseType: !2848, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2845, file: !228, line: 330, baseType: !2848, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2845, file: !228, line: 331, baseType: !2739, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2845, file: !228, line: 334, baseType: !2864, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!2867, !1228}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2845, file: !228, line: 335, baseType: !2869, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!102, !1228, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2845, file: !228, line: 337, baseType: !2874, size: 64, offset: 576)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!102, !1228, !2867}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2845, file: !228, line: 339, baseType: !2878, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!102, !1429, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1430, file: !223, line: 1199, baseType: !2883, size: 64, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !228, line: 430, size: 704, elements: !2886)
!2886 = !{!2887, !2891, !2892, !2896, !2897, !2898, !2913, !2936, !2940, !2941, !2964}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2885, file: !228, line: 431, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!102, !1429, !102, !102, !1349}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2885, file: !228, line: 432, baseType: !2739, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2885, file: !228, line: 433, baseType: !2893, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!102, !1429, !35}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2885, file: !228, line: 434, baseType: !2893, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2885, file: !228, line: 435, baseType: !2739, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2885, file: !228, line: 436, baseType: !2899, size: 64, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!102, !1429, !102, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !228, line: 417, size: 256, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2903, file: !228, line: 418, baseType: !102, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2903, file: !228, line: 419, baseType: !35, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2903, file: !228, line: 420, baseType: !35, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2903, file: !228, line: 422, baseType: !35, size: 32, offset: 96)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2903, file: !228, line: 423, baseType: !35, size: 32, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2903, file: !228, line: 424, baseType: !35, size: 32, offset: 160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2903, file: !228, line: 425, baseType: !35, size: 32, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2903, file: !228, line: 426, baseType: !35, size: 32, offset: 224)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2885, file: !228, line: 437, baseType: !2914, size: 64, offset: 384)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!102, !1429, !2795, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !228, line: 345, size: 960, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2918, file: !228, line: 346, baseType: !102, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2918, file: !228, line: 347, baseType: !343, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2918, file: !228, line: 348, baseType: !343, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2918, file: !228, line: 349, baseType: !343, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2918, file: !228, line: 350, baseType: !343, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2918, file: !228, line: 351, baseType: !343, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2918, file: !228, line: 352, baseType: !343, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2918, file: !228, line: 353, baseType: !354, size: 64, offset: 448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2918, file: !228, line: 355, baseType: !354, size: 64, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2918, file: !228, line: 356, baseType: !102, size: 32, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2918, file: !228, line: 357, baseType: !102, size: 32, offset: 608)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2918, file: !228, line: 358, baseType: !343, size: 64, offset: 640)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2918, file: !228, line: 359, baseType: !343, size: 64, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2918, file: !228, line: 360, baseType: !343, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2918, file: !228, line: 361, baseType: !354, size: 64, offset: 832)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2918, file: !228, line: 362, baseType: !102, size: 32, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2885, file: !228, line: 438, baseType: !2937, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!102, !1429, !2881, !2917}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2885, file: !228, line: 440, baseType: !2914, size: 64, offset: 512)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2885, file: !228, line: 441, baseType: !2942, size: 64, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!102, !1429, !2945}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !228, line: 411, size: 1408, elements: !2947)
!2947 = !{!2948, !2949}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2946, file: !228, line: 412, baseType: !35, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2946, file: !228, line: 413, baseType: !2950, size: 1344, offset: 64)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2951, size: 1344, elements: !15)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !228, line: 397, size: 448, elements: !2952)
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2963}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2951, file: !228, line: 398, baseType: !35, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2951, file: !228, line: 399, baseType: !35, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2951, file: !228, line: 401, baseType: !35, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2951, file: !228, line: 402, baseType: !35, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2951, file: !228, line: 403, baseType: !35, size: 32, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2951, file: !228, line: 404, baseType: !35, size: 32, offset: 160)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2951, file: !228, line: 405, baseType: !35, size: 32, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2951, file: !228, line: 406, baseType: !345, size: 64, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2951, file: !228, line: 407, baseType: !2962, size: 64, offset: 320)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !105, line: 132, baseType: !343)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2951, file: !228, line: 408, baseType: !2962, size: 64, offset: 384)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2885, file: !228, line: 442, baseType: !2893, size: 64, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1430, file: !223, line: 1200, baseType: !2966, size: 64, offset: 576)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !223, line: 54, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1430, file: !223, line: 1201, baseType: !119, size: 64, offset: 640)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1430, file: !223, line: 1202, baseType: !119, size: 64, offset: 704)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1430, file: !223, line: 1203, baseType: !119, size: 64, offset: 768)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1430, file: !223, line: 1204, baseType: !1193, size: 64, offset: 832)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1430, file: !223, line: 1205, baseType: !889, size: 320, offset: 896)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1430, file: !223, line: 1206, baseType: !102, size: 32, offset: 1216)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1430, file: !223, line: 1207, baseType: !129, size: 32, offset: 1248)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1430, file: !223, line: 1209, baseType: !100, size: 64, offset: 1280)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1430, file: !223, line: 1211, baseType: !2978, size: 64, offset: 1344)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !223, line: 1211, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1430, file: !223, line: 1223, baseType: !2983, size: 64, offset: 1408)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1205, line: 34, size: 64, elements: !2984)
!2984 = !{!2985}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2983, file: !1205, line: 35, baseType: !1208, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1430, file: !223, line: 1224, baseType: !177, size: 128, offset: 1472)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1430, file: !223, line: 1225, baseType: !2988, size: 64, offset: 1600)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !223, line: 1225, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1430, file: !223, line: 1226, baseType: !2991, size: 64, offset: 1664)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !223, line: 1226, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1430, file: !223, line: 1227, baseType: !2994, size: 64, offset: 1728)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !223, line: 50, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1430, file: !223, line: 1228, baseType: !2997, size: 64, offset: 1792)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !223, line: 1228, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1430, file: !223, line: 1229, baseType: !696, size: 128, offset: 1856)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1430, file: !223, line: 1230, baseType: !35, size: 32, offset: 1984)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1430, file: !223, line: 1231, baseType: !3002, size: 2496, offset: 2048)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !228, line: 521, size: 2496, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3008, !3040}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3002, file: !228, line: 522, baseType: !35, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3002, file: !228, line: 523, baseType: !889, size: 320, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3002, file: !228, line: 524, baseType: !3007, size: 192, offset: 384)
!3007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 192, elements: !15)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3002, file: !228, line: 525, baseType: !3009, size: 1728, offset: 576)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3010, size: 1728, elements: !15)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !228, line: 222, size: 576, elements: !3011)
!3011 = !{!3012, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3010, file: !228, line: 223, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !228, line: 445, size: 256, elements: !3015)
!3015 = !{!3016, !3017, !3030, !3031}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3014, file: !228, line: 446, baseType: !102, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3014, file: !228, line: 447, baseType: !3018, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3020)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !228, line: 312, size: 512, elements: !3021)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3020, file: !228, line: 313, baseType: !2739, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3020, file: !228, line: 314, baseType: !2739, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3020, file: !228, line: 315, baseType: !2739, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3020, file: !228, line: 316, baseType: !2739, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3020, file: !228, line: 317, baseType: !2848, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3020, file: !228, line: 318, baseType: !2848, size: 64, offset: 320)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3020, file: !228, line: 319, baseType: !2848, size: 64, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3020, file: !228, line: 320, baseType: !2878, size: 64, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3014, file: !228, line: 448, baseType: !1519, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3014, file: !228, line: 449, baseType: !3013, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3010, file: !228, line: 224, baseType: !102, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3010, file: !228, line: 226, baseType: !177, size: 128, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3010, file: !228, line: 227, baseType: !119, size: 64, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3010, file: !228, line: 228, baseType: !35, size: 32, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3010, file: !228, line: 229, baseType: !35, size: 32, offset: 352)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3010, file: !228, line: 230, baseType: !2816, size: 64, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3010, file: !228, line: 231, baseType: !2816, size: 64, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3010, file: !228, line: 232, baseType: !100, size: 64, offset: 512)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3002, file: !228, line: 526, baseType: !3041, size: 192, offset: 2304)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3018, size: 192, elements: !15)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1430, file: !223, line: 1233, baseType: !3043, size: 2368, offset: 4544)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !223, line: 1184, size: 2368, elements: !3044)
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3043, file: !223, line: 1185, baseType: !106, size: 16)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3043, file: !223, line: 1186, baseType: !106, size: 16, offset: 16)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3043, file: !223, line: 1187, baseType: !3048, size: 2304, offset: 64)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3049, size: 2304, elements: !15)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3050, line: 12, size: 768, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3051 = !{!3052, !3060, !3061, !3066, !3067}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3049, file: !3050, line: 13, baseType: !3053, size: 384)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3054, line: 17, size: 384, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3055 = !{!3056, !3057, !3058, !3059}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3053, file: !3054, line: 18, baseType: !102, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3053, file: !3054, line: 19, baseType: !102, size: 32, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3053, file: !3054, line: 20, baseType: !134, size: 192, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3053, file: !3054, line: 22, baseType: !626, size: 128, align: 64, offset: 256)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3049, file: !3050, line: 14, baseType: !2393, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3049, file: !3050, line: 15, baseType: !3062, size: 64, offset: 448)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3063, line: 16, size: 64, elements: !3064)
!3063 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3062, file: !3063, line: 17, baseType: !275, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3049, file: !3050, line: 16, baseType: !134, size: 192, offset: 512)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3049, file: !3050, line: 17, baseType: !129, size: 32, offset: 704)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1430, file: !223, line: 1240, baseType: !100, size: 64, offset: 6912)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1430, file: !223, line: 1243, baseType: !286, size: 32, offset: 6976)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1430, file: !223, line: 1245, baseType: !905, size: 64, offset: 7040)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1430, file: !223, line: 1246, baseType: !905, size: 64, offset: 7104)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1430, file: !223, line: 1248, baseType: !287, size: 32, offset: 7168)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1430, file: !223, line: 1249, baseType: !3074, size: 64, offset: 7232)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !223, line: 634, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1430, file: !223, line: 1252, baseType: !3077, size: 256, offset: 7296)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3078)
!3078 = !{!3079}
!3079 = !DISubrange(count: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1430, file: !223, line: 1253, baseType: !3081, size: 128, offset: 7552)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3082, line: 21, baseType: !3083)
!3082 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3082, line: 19, size: 128, elements: !3084)
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3083, file: !3082, line: 20, baseType: !3086, size: 128)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !3087)
!3087 = !{!3088}
!3088 = !DISubrange(count: 16)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1430, file: !223, line: 1255, baseType: !35, size: 32, offset: 7680)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1430, file: !223, line: 1261, baseType: !646, size: 256, offset: 7744)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1430, file: !223, line: 1267, baseType: !97, size: 64, offset: 8000)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1430, file: !223, line: 1269, baseType: !3093, size: 64, offset: 8064)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1195, line: 128, size: 1024, align: 512, elements: !3096)
!3096 = !{!3097, !3101, !3102, !3109, !3115, !3119, !3123, !3127, !3128, !3132, !3136, !3141, !3145}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3095, file: !1195, line: 129, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!102, !1193, !35}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3095, file: !1195, line: 130, baseType: !3098, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3095, file: !1195, line: 131, baseType: !3103, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!102, !3106, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3095, file: !1195, line: 132, baseType: !3110, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!102, !3106, !35, !97, !3113}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3095, file: !1195, line: 134, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!102, !3106}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3095, file: !1195, line: 135, baseType: !3120, size: 64, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!102, !1193}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3095, file: !1195, line: 136, baseType: !3124, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !1193}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3095, file: !1195, line: 137, baseType: !3124, size: 64, offset: 448)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3095, file: !1195, line: 138, baseType: !3129, size: 64, offset: 512)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !1193, !1228}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3095, file: !1195, line: 139, baseType: !3133, size: 64, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!959, !1193, !959, !102}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3095, file: !1195, line: 140, baseType: !3137, size: 64, offset: 640)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!1188, !3140}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3095, file: !1195, line: 141, baseType: !3142, size: 64, offset: 704)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!102, !1349, !948}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3095, file: !1195, line: 142, baseType: !3146, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!1193, !1193, !3149}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1430, file: !223, line: 1271, baseType: !3152, size: 448, offset: 8128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2831, line: 63, size: 448, elements: !3153)
!3153 = !{!3154, !3159, !3160, !3161, !3162, !3163, !3164}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3152, file: !2831, line: 64, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!119, !3158, !2829}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3152, file: !2831, line: 66, baseType: !3155, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3152, file: !2831, line: 69, baseType: !1162, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3152, file: !2831, line: 70, baseType: !102, size: 32, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3152, file: !2831, line: 71, baseType: !35, size: 32, offset: 224)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3152, file: !2831, line: 74, baseType: !177, size: 128, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3152, file: !2831, line: 85, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1430, file: !223, line: 1274, baseType: !639, size: 64, offset: 8576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1430, file: !223, line: 1280, baseType: !639, size: 64, offset: 8640)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1430, file: !223, line: 1283, baseType: !102, size: 32, offset: 8704)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1430, file: !223, line: 1286, baseType: !2123, size: 32, offset: 8736)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1430, file: !223, line: 1289, baseType: !2602, size: 64, offset: 8768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1430, file: !223, line: 1290, baseType: !692, size: 64, offset: 8832)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1430, file: !223, line: 1297, baseType: !740, size: 64, offset: 8896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1430, file: !223, line: 1304, baseType: !3174, size: 64, offset: 8960)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3175, line: 49, size: 64, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3176 = !{!3177}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3174, file: !3175, line: 50, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3175, line: 41, size: 512, align: 512, elements: !3180)
!3180 = !{!3181, !3182, !3187}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3179, file: !3175, line: 43, baseType: !139, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3179, file: !3175, line: 45, baseType: !3183, size: 192, offset: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3175, line: 29, size: 192, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3183, file: !3175, line: 30, baseType: !177, size: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3183, file: !3175, line: 32, baseType: !1162, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3179, file: !3175, line: 46, baseType: !1162, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1430, file: !223, line: 1305, baseType: !3174, size: 64, offset: 9024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1430, file: !223, line: 1306, baseType: !626, size: 128, align: 64, offset: 9088)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1430, file: !223, line: 1307, baseType: !1077, size: 256, offset: 9216)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1430, file: !223, line: 1309, baseType: !646, size: 256, offset: 9472)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1430, file: !223, line: 1314, baseType: !102, size: 32, offset: 9728)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1430, file: !223, line: 1317, baseType: !139, size: 32, align: 512, offset: 10240)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1430, file: !223, line: 1318, baseType: !177, size: 128, offset: 10304)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1430, file: !223, line: 1320, baseType: !139, size: 32, offset: 10432)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1430, file: !223, line: 1321, baseType: !177, size: 128, offset: 10496)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1229, file: !223, line: 656, baseType: !1636, size: 64, offset: 512)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1229, file: !223, line: 659, baseType: !100, size: 64, offset: 576)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1229, file: !223, line: 663, baseType: !119, size: 64, offset: 640)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !223, line: 671, baseType: !3201, size: 32, offset: 704)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !223, line: 671, size: 32, elements: !3202)
!3202 = !{!3203, !3205}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3201, file: !223, line: 672, baseType: !3204, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3201, file: !223, line: 673, baseType: !35, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1229, file: !223, line: 675, baseType: !1302, size: 32, offset: 736)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1229, file: !223, line: 676, baseType: !121, size: 64, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1229, file: !223, line: 677, baseType: !1338, size: 128, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1229, file: !223, line: 678, baseType: !1338, size: 128, offset: 960)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1229, file: !223, line: 679, baseType: !1338, size: 128, offset: 1088)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1229, file: !223, line: 680, baseType: !139, size: 32, offset: 1216)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1229, file: !223, line: 681, baseType: !106, size: 16, offset: 1248)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1229, file: !223, line: 682, baseType: !163, size: 8, offset: 1264)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1229, file: !223, line: 683, baseType: !163, size: 8, offset: 1272)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1229, file: !223, line: 684, baseType: !2962, size: 64, offset: 1280)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1229, file: !223, line: 691, baseType: !119, size: 64, offset: 1344)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1229, file: !223, line: 692, baseType: !889, size: 320, offset: 1408)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1229, file: !223, line: 694, baseType: !119, size: 64, offset: 1728)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1229, file: !223, line: 695, baseType: !119, size: 64, offset: 1792)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1229, file: !223, line: 697, baseType: !696, size: 128, offset: 1856)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1229, file: !223, line: 698, baseType: !177, size: 128, offset: 1984)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1229, file: !223, line: 707, baseType: !177, size: 128, offset: 2112)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1229, file: !223, line: 708, baseType: !177, size: 128, offset: 2240)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !223, line: 709, baseType: !3225, size: 128, offset: 2368)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !223, line: 709, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3225, file: !223, line: 710, baseType: !692, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3225, file: !223, line: 711, baseType: !626, size: 128, align: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1229, file: !223, line: 713, baseType: !641, size: 64, offset: 2496)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1229, file: !223, line: 714, baseType: !641, size: 64, offset: 2560)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1229, file: !223, line: 715, baseType: !129, size: 32, offset: 2624)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1229, file: !223, line: 716, baseType: !129, size: 32, offset: 2656)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1229, file: !223, line: 717, baseType: !129, size: 32, offset: 2688)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1229, file: !223, line: 719, baseType: !129, size: 32, offset: 2720)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !223, line: 721, baseType: !3236, size: 64, offset: 2752)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !223, line: 721, size: 64, elements: !3237)
!3237 = !{!3238, !3364}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3236, file: !223, line: 722, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3241)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !223, line: 1914, size: 2112, elements: !3242)
!3242 = !{!3243, !3244, !3248, !3252, !3256, !3257, !3258, !3264, !3277, !3281, !3285, !3286, !3290, !3291, !3295, !3300, !3301, !3305, !3309, !3315, !3316, !3320, !3321, !3327, !3331, !3332, !3337, !3341, !3345, !3349, !3353, !3354, !3360}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3241, file: !223, line: 1915, baseType: !1519, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3241, file: !223, line: 1916, baseType: !3245, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!121, !618, !121, !102}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3241, file: !223, line: 1917, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!1380, !618, !959, !115, !120}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3241, file: !223, line: 1918, baseType: !3253, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!1380, !618, !97, !115, !120}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3241, file: !223, line: 1919, baseType: !2057, size: 64, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3241, file: !223, line: 1920, baseType: !2057, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3241, file: !223, line: 1921, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!102, !2060, !3262, !35}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !223, line: 53, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3241, file: !223, line: 1923, baseType: !3265, size: 64, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!102, !618, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !223, line: 1858, size: 128, elements: !3270)
!3270 = !{!3271, !3276}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3269, file: !223, line: 1859, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !223, line: 1855, baseType: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!948, !3268, !97, !102, !121, !343, !35}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3269, file: !223, line: 1860, baseType: !121, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3241, file: !223, line: 1924, baseType: !3278, size: 64, offset: 512)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!2268, !618, !2270}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3241, file: !223, line: 1925, baseType: !3282, size: 64, offset: 576)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!1162, !618, !35, !119}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3241, file: !223, line: 1926, baseType: !3282, size: 64, offset: 640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3241, file: !223, line: 1927, baseType: !3287, size: 64, offset: 704)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!102, !618, !1766}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3241, file: !223, line: 1928, baseType: !119, size: 64, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3241, file: !223, line: 1929, baseType: !3292, size: 64, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!102, !1228, !618}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3241, file: !223, line: 1930, baseType: !3296, size: 64, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!102, !618, !3299}
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !223, line: 1061, baseType: !100)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3241, file: !223, line: 1931, baseType: !3292, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3241, file: !223, line: 1932, baseType: !3302, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!102, !618, !121, !121, !102}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3241, file: !223, line: 1933, baseType: !3306, size: 64, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!102, !102, !618, !102}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3241, file: !223, line: 1934, baseType: !3310, size: 64, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!102, !618, !102, !3313}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !223, line: 1063, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3241, file: !223, line: 1935, baseType: !615, size: 64, offset: 1216)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3241, file: !223, line: 1936, baseType: !3317, size: 64, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!102, !102}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3241, file: !223, line: 1937, baseType: !3310, size: 64, offset: 1344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3241, file: !223, line: 1938, baseType: !3322, size: 64, offset: 1408)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!1380, !3325, !618, !120, !115, !35}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !277, line: 59, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3241, file: !223, line: 1939, baseType: !3328, size: 64, offset: 1472)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!1380, !618, !120, !3325, !115, !35}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3241, file: !223, line: 1940, baseType: !2113, size: 64, offset: 1536)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3241, file: !223, line: 1941, baseType: !3333, size: 64, offset: 1600)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!102, !618, !102, !3336, !2034}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3241, file: !223, line: 1942, baseType: !3338, size: 64, offset: 1664)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!1162, !618, !102, !121, !121}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3241, file: !223, line: 1944, baseType: !3342, size: 64, offset: 1728)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !2225, !618}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3241, file: !223, line: 1948, baseType: !3346, size: 64, offset: 1792)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!1380, !618, !121, !618, !121, !115, !35}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3241, file: !223, line: 1950, baseType: !3350, size: 64, offset: 1856)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!121, !618, !121, !618, !121, !121, !35}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3241, file: !223, line: 1953, baseType: !3302, size: 64, offset: 1920)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3241, file: !223, line: 1954, baseType: !3355, size: 64, offset: 1984)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!102, !3358, !35}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !223, line: 1911, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3241, file: !223, line: 1955, baseType: !3361, size: 64, offset: 2048)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!102, !3358, !3262, !35}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3236, file: !223, line: 723, baseType: !2720, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1229, file: !223, line: 725, baseType: !3366, size: 64, offset: 2816)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !223, line: 725, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1229, file: !223, line: 726, baseType: !1637, size: 1536, align: 64, offset: 2880)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1229, file: !223, line: 727, baseType: !177, size: 128, offset: 4416)
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !223, line: 728, baseType: !3371, size: 64, offset: 4544)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !223, line: 728, size: 64, elements: !3372)
!3372 = !{!3373, !3374, !3377, !3378}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3371, file: !223, line: 729, baseType: !3325, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3371, file: !223, line: 730, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !223, line: 730, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3371, file: !223, line: 731, baseType: !959, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3371, file: !223, line: 732, baseType: !35, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1229, file: !223, line: 735, baseType: !287, size: 32, offset: 4608)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1229, file: !223, line: 738, baseType: !287, size: 32, offset: 4640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1229, file: !223, line: 739, baseType: !3074, size: 64, offset: 4672)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1229, file: !223, line: 750, baseType: !100, size: 64, offset: 4736)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1194, file: !1195, line: 91, baseType: !3384, size: 256, offset: 448)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !3078)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1194, file: !1195, line: 94, baseType: !3386, size: 64, offset: 704)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3387, line: 25, size: 64, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !3387, line: 26, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3386, file: !3387, line: 26, size: 64, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3390, file: !3387, line: 28, baseType: !344, size: 64, align: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3387, line: 30, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3387, line: 30, size: 64, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3394, file: !3387, line: 31, baseType: !139, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3394, file: !3387, line: 32, baseType: !102, size: 32, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1194, file: !1195, line: 95, baseType: !3093, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1194, file: !1195, line: 96, baseType: !1429, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1194, file: !1195, line: 97, baseType: !119, size: 64, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1194, file: !1195, line: 98, baseType: !100, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 100, baseType: !3403, size: 128, offset: 1024)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 100, size: 128, elements: !3404)
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3403, file: !1195, line: 101, baseType: !177, size: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3403, file: !1195, line: 102, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1194, file: !1195, line: 104, baseType: !177, size: 128, offset: 1152)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1194, file: !1195, line: 105, baseType: !177, size: 128, offset: 1280)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1194, file: !1195, line: 113, baseType: !3411, size: 128, offset: 1408)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 109, size: 128, elements: !3412)
!3412 = !{!3413, !3414, !3415}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3411, file: !1195, line: 110, baseType: !696, size: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3411, file: !1195, line: 111, baseType: !1204, size: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3411, file: !1195, line: 112, baseType: !626, size: 128, align: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1189, file: !1190, line: 72, baseType: !1429, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1189, file: !1190, line: 73, baseType: !102, size: 32, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1189, file: !1190, line: 74, baseType: !1267, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1184, file: !1185, line: 10, baseType: !1193, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !619, file: !223, line: 1015, baseType: !1228, size: 64, offset: 1344)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !619, file: !223, line: 1016, baseType: !3239, size: 64, offset: 1408)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !619, file: !223, line: 1018, baseType: !343, size: 64, offset: 1472)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !619, file: !223, line: 1020, baseType: !100, size: 64, offset: 1536)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !619, file: !223, line: 1023, baseType: !100, size: 64, offset: 1600)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !619, file: !223, line: 1027, baseType: !3426, size: 64, offset: 1664)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !619, file: !223, line: 1029, baseType: !1636, size: 64, offset: 1728)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !619, file: !223, line: 1030, baseType: !2123, size: 32, offset: 1792)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !619, file: !223, line: 1031, baseType: !2123, size: 32, offset: 1824)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !594, file: !64, line: 756, baseType: !119, size: 64, offset: 704)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !594, file: !64, line: 757, baseType: !119, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !594, file: !64, line: 760, baseType: !119, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !594, file: !64, line: 761, baseType: !119, size: 64, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !594, file: !64, line: 763, baseType: !119, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !594, file: !64, line: 764, baseType: !3436, size: 64, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1781, line: 299, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1781, line: 299, size: 64, elements: !3439)
!3439 = !{!3440}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3438, file: !1781, line: 299, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1786, line: 18, baseType: !119)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !594, file: !64, line: 773, baseType: !129, size: 32, offset: 1088)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !594, file: !64, line: 785, baseType: !129, size: 32, offset: 1120)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !594, file: !64, line: 795, baseType: !3445, size: 64, offset: 1152)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !64, line: 726, size: 128, elements: !3447)
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3446, file: !64, line: 727, baseType: !343, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3446, file: !64, line: 728, baseType: !102, size: 32, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !594, file: !64, line: 801, baseType: !119, size: 64, offset: 1216)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !594, file: !64, line: 804, baseType: !639, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !594, file: !64, line: 806, baseType: !102, size: 32, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !594, file: !64, line: 808, baseType: !139, size: 32, offset: 1376)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !594, file: !64, line: 823, baseType: !889, size: 320, offset: 1408)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !594, file: !64, line: 825, baseType: !177, size: 128, offset: 1728)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !594, file: !64, line: 845, baseType: !102, size: 32, offset: 1856)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !594, file: !64, line: 849, baseType: !119, size: 64, offset: 1920)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !594, file: !64, line: 850, baseType: !119, size: 64, offset: 1984)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !594, file: !64, line: 852, baseType: !119, size: 64, offset: 2048)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !594, file: !64, line: 853, baseType: !119, size: 64, offset: 2112)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !594, file: !64, line: 854, baseType: !641, size: 64, offset: 2176)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !594, file: !64, line: 855, baseType: !119, size: 64, offset: 2240)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !594, file: !64, line: 856, baseType: !119, size: 64, offset: 2304)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !594, file: !64, line: 857, baseType: !119, size: 64, offset: 2368)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !594, file: !64, line: 858, baseType: !119, size: 64, offset: 2432)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !594, file: !64, line: 865, baseType: !464, size: 32, offset: 2496)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !594, file: !64, line: 867, baseType: !139, size: 32, offset: 2528)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !594, file: !64, line: 869, baseType: !119, size: 64, offset: 2560)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !594, file: !64, line: 869, baseType: !119, size: 64, offset: 2624)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !594, file: !64, line: 869, baseType: !119, size: 64, offset: 2688)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !594, file: !64, line: 869, baseType: !119, size: 64, offset: 2752)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !594, file: !64, line: 870, baseType: !119, size: 64, offset: 2816)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !594, file: !64, line: 870, baseType: !119, size: 64, offset: 2880)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !594, file: !64, line: 870, baseType: !119, size: 64, offset: 2944)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !594, file: !64, line: 871, baseType: !119, size: 64, offset: 3008)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !594, file: !64, line: 871, baseType: !119, size: 64, offset: 3072)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !594, file: !64, line: 871, baseType: !119, size: 64, offset: 3136)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !594, file: !64, line: 871, baseType: !119, size: 64, offset: 3200)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !594, file: !64, line: 873, baseType: !3480, size: 3328, offset: 3264)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 3328, elements: !3481)
!3481 = !{!3482}
!3482 = !DISubrange(count: 52)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !594, file: !64, line: 875, baseType: !3484, size: 1280, offset: 6592)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 1280, elements: !27)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !594, file: !64, line: 877, baseType: !3486, size: 64, offset: 7872)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !3488, line: 84, size: 448, elements: !3489)
!3488 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!3489 = !{!3490, !3491, !3492, !3535, !3539, !3546}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !3487, file: !3488, line: 85, baseType: !177, size: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3487, file: !3488, line: 86, baseType: !1519, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !3487, file: !3488, line: 87, baseType: !3493, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!102, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !3488, line: 18, size: 3328, elements: !3498)
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3531}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3497, file: !3488, line: 20, baseType: !1766, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !3497, file: !3488, line: 21, baseType: !119, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3497, file: !3488, line: 26, baseType: !590, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3497, file: !3488, line: 27, baseType: !119, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !3497, file: !3488, line: 28, baseType: !119, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !3497, file: !3488, line: 31, baseType: !35, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !3497, file: !3488, line: 34, baseType: !35, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !3497, file: !3488, line: 40, baseType: !35, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !3497, file: !3488, line: 45, baseType: !35, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !3497, file: !3488, line: 47, baseType: !35, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !3497, file: !3488, line: 48, baseType: !618, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !3497, file: !3488, line: 49, baseType: !618, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3497, file: !3488, line: 50, baseType: !618, size: 64, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3497, file: !3488, line: 51, baseType: !3513, size: 64, offset: 576)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !3497, file: !3488, line: 52, baseType: !102, size: 32, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !3497, file: !3488, line: 53, baseType: !35, size: 32, offset: 672)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !3497, file: !3488, line: 54, baseType: !102, size: 32, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !3497, file: !3488, line: 54, baseType: !102, size: 32, offset: 736)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !3497, file: !3488, line: 55, baseType: !97, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !3497, file: !3488, line: 56, baseType: !97, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !3497, file: !3488, line: 59, baseType: !97, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !3497, file: !3488, line: 60, baseType: !35, size: 32, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !3497, file: !3488, line: 61, baseType: !102, size: 32, offset: 992)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !3497, file: !3488, line: 62, baseType: !119, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !3497, file: !3488, line: 62, baseType: !119, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !3497, file: !3488, line: 64, baseType: !3526, size: 128, offset: 1152)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3527, line: 43, size: 128, elements: !3528)
!3527 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3528 = !{!3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3526, file: !3527, line: 44, baseType: !118, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3526, file: !3527, line: 45, baseType: !118, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3497, file: !3488, line: 66, baseType: !3532, size: 2048, offset: 1280)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !3533)
!3533 = !{!3534}
!3534 = !DISubrange(count: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !3487, file: !3488, line: 88, baseType: !3536, size: 64, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!102, !618}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !3487, file: !3488, line: 90, baseType: !3540, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!102, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !3545, line: 66, flags: DIFlagFwdDecl)
!3545 = !DIFile(filename: "./include/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b1d3b970b1358b3a026c26044689afa")
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !3487, file: !3488, line: 91, baseType: !119, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !594, file: !64, line: 880, baseType: !3548, size: 1088, offset: 7936)
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3549, line: 72, baseType: !3550)
!3549 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3549, line: 23, size: 1088, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3559, !3560, !3561, !3562, !3587, !3588, !3589}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3550, file: !3549, line: 28, baseType: !343, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3550, file: !3549, line: 38, baseType: !641, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3550, file: !3549, line: 40, baseType: !119, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3550, file: !3549, line: 43, baseType: !889, size: 320, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3550, file: !3549, line: 44, baseType: !3557, size: 64, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3549, line: 44, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3549, line: 48, baseType: !119, size: 64, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3550, file: !3549, line: 59, baseType: !646, size: 256, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3550, file: !3549, line: 60, baseType: !100, size: 64, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3550, file: !3549, line: 61, baseType: !3563, size: 64, offset: 960)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3566, line: 13, size: 1216, elements: !3567)
!3566 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3565, file: !3566, line: 14, baseType: !100, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3565, file: !3566, line: 15, baseType: !119, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3565, file: !3566, line: 17, baseType: !119, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3565, file: !3566, line: 17, baseType: !119, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3565, file: !3566, line: 18, baseType: !119, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3565, file: !3566, line: 18, baseType: !119, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3565, file: !3566, line: 19, baseType: !2162, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3565, file: !3566, line: 21, baseType: !1162, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3565, file: !3566, line: 23, baseType: !1162, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3565, file: !3566, line: 24, baseType: !1162, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3565, file: !3566, line: 25, baseType: !1162, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3565, file: !3566, line: 26, baseType: !1162, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3565, file: !3566, line: 27, baseType: !1162, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3565, file: !3566, line: 28, baseType: !1162, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3565, file: !3566, line: 29, baseType: !1162, size: 64, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3565, file: !3566, line: 30, baseType: !1162, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3565, file: !3566, line: 31, baseType: !1162, size: 64, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3565, file: !3566, line: 32, baseType: !1162, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3565, file: !3566, line: 33, baseType: !1162, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3550, file: !3549, line: 63, baseType: !129, size: 32, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3550, file: !3549, line: 69, baseType: !173, size: 16, offset: 1056)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3550, file: !3549, line: 70, baseType: !2446, size: 16, offset: 1072)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !64, line: 882, baseType: !119, size: 64, offset: 9024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !594, file: !64, line: 885, baseType: !139, size: 32, offset: 9088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !594, file: !64, line: 886, baseType: !3593, size: 64, offset: 9152)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !64, line: 732, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !594, file: !64, line: 901, baseType: !740, size: 64, offset: 9216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !594, file: !64, line: 904, baseType: !618, size: 64, offset: 9280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !594, file: !64, line: 906, baseType: !3598, size: 64, offset: 9344)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !64, line: 906, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !594, file: !64, line: 930, baseType: !129, size: 32, offset: 9408)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !594, file: !64, line: 933, baseType: !129, size: 32, offset: 9440)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !594, file: !64, line: 935, baseType: !3603, size: 64, offset: 9472)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !194, line: 103, size: 64, elements: !3604)
!3604 = !{!3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3603, file: !194, line: 104, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !194, line: 101, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !594, file: !64, line: 940, baseType: !639, size: 64, offset: 9536)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !594, file: !64, line: 942, baseType: !1077, size: 256, offset: 9600)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !591, file: !64, line: 986, baseType: !3611, offset: 10240)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !1054)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !276, file: !277, line: 882, baseType: !590, size: 64, offset: 9792)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !276, file: !277, line: 884, baseType: !102, size: 32, offset: 9856)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !276, file: !277, line: 885, baseType: !102, size: 32, offset: 9888)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !276, file: !277, line: 886, baseType: !102, size: 32, offset: 9920)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !276, file: !277, line: 888, baseType: !102, size: 32, offset: 9952)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !276, file: !277, line: 890, baseType: !119, size: 64, offset: 9984)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !276, file: !277, line: 893, baseType: !35, size: 32, offset: 10048)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !276, file: !277, line: 896, baseType: !35, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !276, file: !277, line: 897, baseType: !35, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !276, file: !277, line: 898, baseType: !35, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !276, file: !277, line: 899, baseType: !35, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !276, file: !277, line: 919, baseType: !35, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !276, file: !277, line: 922, baseType: !35, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !276, file: !277, line: 923, baseType: !35, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !276, file: !277, line: 925, baseType: !35, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !276, file: !277, line: 939, baseType: !35, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !276, file: !277, line: 941, baseType: !35, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !276, file: !277, line: 944, baseType: !35, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !276, file: !277, line: 956, baseType: !35, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !276, file: !277, line: 962, baseType: !35, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !276, file: !277, line: 966, baseType: !35, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !276, file: !277, line: 969, baseType: !119, size: 64, offset: 10176)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !276, file: !277, line: 971, baseType: !3635, size: 448, offset: 10240)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !188, line: 25, size: 448, elements: !3636)
!3636 = !{!3637, !3638, !3643}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3635, file: !188, line: 26, baseType: !119, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3635, file: !188, line: 27, baseType: !3639, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!1162, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !3635, file: !188, line: 28, baseType: !3644, size: 320, offset: 128)
!3644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3635, file: !188, line: 28, size: 320, elements: !3645)
!3645 = !{!3646, !3656, !3681}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3644, file: !188, line: 37, baseType: !3647, size: 320)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3644, file: !188, line: 30, size: 320, elements: !3648)
!3648 = !{!3649, !3651, !3652, !3653, !3654, !3655}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3647, file: !188, line: 31, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3647, file: !188, line: 32, baseType: !286, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3647, file: !188, line: 33, baseType: !286, size: 32, offset: 96)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3647, file: !188, line: 34, baseType: !286, size: 32, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3647, file: !188, line: 35, baseType: !343, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3647, file: !188, line: 36, baseType: !3650, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3644, file: !188, line: 47, baseType: !3657, size: 192)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3644, file: !188, line: 39, size: 192, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3680}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3657, file: !188, line: 40, baseType: !456, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3657, file: !188, line: 41, baseType: !187, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !188, line: 42, baseType: !3662, size: 64, offset: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3657, file: !188, line: 42, size: 64, elements: !3663)
!3663 = !{!3664, !3672}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3662, file: !188, line: 43, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3667, line: 7, size: 128, elements: !3668)
!3667 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3668 = !{!3669, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3666, file: !3667, line: 8, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !117, line: 93, baseType: !123)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3666, file: !3667, line: 9, baseType: !123, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3662, file: !188, line: 44, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3675, line: 7, size: 64, elements: !3676)
!3675 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3676 = !{!3677, !3679}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3674, file: !3675, line: 8, baseType: !3678, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3675, line: 5, baseType: !881)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3674, file: !3675, line: 9, baseType: !881, size: 32, offset: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3657, file: !188, line: 46, baseType: !343, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3644, file: !188, line: 55, baseType: !3682, size: 256)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3644, file: !188, line: 49, size: 256, elements: !3683)
!3683 = !{!3684, !3687, !3688, !3689, !3690}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3682, file: !188, line: 50, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !188, line: 14, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3682, file: !188, line: 51, baseType: !102, size: 32, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3682, file: !188, line: 52, baseType: !102, size: 32, offset: 96)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3682, file: !188, line: 53, baseType: !119, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3682, file: !188, line: 54, baseType: !119, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !276, file: !277, line: 973, baseType: !3692, size: 32, offset: 10688)
!3692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !105, line: 27, baseType: !3693)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !117, line: 28, baseType: !102)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !276, file: !277, line: 974, baseType: !3692, size: 32, offset: 10720)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !276, file: !277, line: 978, baseType: !119, size: 64, offset: 10752)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !276, file: !277, line: 987, baseType: !275, size: 64, offset: 10816)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !276, file: !277, line: 990, baseType: !275, size: 64, offset: 10880)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !276, file: !277, line: 995, baseType: !177, size: 128, offset: 10944)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !276, file: !277, line: 996, baseType: !177, size: 128, offset: 11072)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !276, file: !277, line: 997, baseType: !275, size: 64, offset: 11200)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !276, file: !277, line: 1005, baseType: !177, size: 128, offset: 11264)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !276, file: !277, line: 1006, baseType: !177, size: 128, offset: 11392)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !276, file: !277, line: 1009, baseType: !684, size: 64, offset: 11520)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !276, file: !277, line: 1010, baseType: !3705, size: 512, offset: 11584)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 512, elements: !27)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !276, file: !277, line: 1011, baseType: !177, size: 128, offset: 12096)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !276, file: !277, line: 1012, baseType: !177, size: 128, offset: 12224)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !276, file: !277, line: 1014, baseType: !1115, size: 64, offset: 12352)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !276, file: !277, line: 1017, baseType: !2439, size: 64, offset: 12416)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !276, file: !277, line: 1020, baseType: !2439, size: 64, offset: 12480)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !276, file: !277, line: 1023, baseType: !100, size: 64, offset: 12544)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !276, file: !277, line: 1025, baseType: !343, size: 64, offset: 12608)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !276, file: !277, line: 1026, baseType: !343, size: 64, offset: 12672)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !276, file: !277, line: 1031, baseType: !343, size: 64, offset: 12736)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !276, file: !277, line: 1032, baseType: !3716, size: 192, offset: 12800)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !277, line: 324, size: 192, elements: !3717)
!3717 = !{!3718, !3719, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3716, file: !277, line: 326, baseType: !343, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3716, file: !277, line: 327, baseType: !343, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3716, file: !277, line: 328, baseType: !435, size: 32, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !276, file: !277, line: 1041, baseType: !119, size: 64, offset: 12992)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !276, file: !277, line: 1042, baseType: !119, size: 64, offset: 13056)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !276, file: !277, line: 1045, baseType: !343, size: 64, offset: 13120)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !276, file: !277, line: 1048, baseType: !343, size: 64, offset: 13184)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !276, file: !277, line: 1051, baseType: !119, size: 64, offset: 13248)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !276, file: !277, line: 1052, baseType: !119, size: 64, offset: 13312)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !276, file: !277, line: 1055, baseType: !3728, size: 640, offset: 13376)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3729, line: 132, size: 640, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3730 = !{!3731, !3737, !3738}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3728, file: !3729, line: 133, baseType: !3732, size: 576)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3733, size: 576, elements: !15)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3729, line: 117, size: 192, elements: !3734)
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3733, file: !3729, line: 118, baseType: !343, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3733, file: !3729, line: 119, baseType: !470, size: 128, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3728, file: !3729, line: 134, baseType: !35, size: 32, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3728, file: !3729, line: 135, baseType: !35, size: 32, offset: 608)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !276, file: !277, line: 1058, baseType: !3740, size: 448, offset: 14016)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3729, line: 144, size: 448, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3740, file: !3729, line: 145, baseType: !626, size: 128, align: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3740, file: !3729, line: 146, baseType: !646, size: 256, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3740, file: !3729, line: 147, baseType: !35, size: 32, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !276, file: !277, line: 1064, baseType: !847, size: 64, offset: 14464)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !276, file: !277, line: 1067, baseType: !847, size: 64, offset: 14528)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !276, file: !277, line: 1070, baseType: !847, size: 64, offset: 14592)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !276, file: !277, line: 1074, baseType: !874, size: 64, offset: 14656)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !276, file: !277, line: 1084, baseType: !3750, size: 128, offset: 14720)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3087)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !276, file: !277, line: 1086, baseType: !3752, size: 64, offset: 14848)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !277, line: 55, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !276, file: !277, line: 1089, baseType: !3755, size: 64, offset: 14912)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3756, line: 12, size: 64, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3755, file: !3756, line: 13, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3756, line: 8, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !276, file: !277, line: 1090, baseType: !3762, size: 128, offset: 14976)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3763, line: 13, size: 128, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3764 = !{!3765}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3762, file: !3763, line: 14, baseType: !177, size: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !276, file: !277, line: 1097, baseType: !844, size: 64, offset: 15104)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !276, file: !277, line: 1100, baseType: !3768, size: 64, offset: 15168)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !277, line: 1100, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !276, file: !277, line: 1103, baseType: !3771, size: 64, offset: 15232)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !277, line: 53, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !276, file: !277, line: 1107, baseType: !818, size: 64, offset: 15296)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !276, file: !277, line: 1110, baseType: !3775, size: 64, offset: 15360)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3777, line: 93, size: 8768, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3827, !3836, !3837, !3839, !3840, !3841, !3844, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3882, !3883, !3885, !3895, !3898, !3899, !3902, !3903, !3904, !3905, !3906, !3907}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3776, file: !3777, line: 94, baseType: !292, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3776, file: !3777, line: 95, baseType: !129, size: 32, offset: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3776, file: !3777, line: 96, baseType: !102, size: 32, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3776, file: !3777, line: 97, baseType: !102, size: 32, offset: 96)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3776, file: !3777, line: 98, baseType: !177, size: 128, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3776, file: !3777, line: 100, baseType: !134, size: 192, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3776, file: !3777, line: 103, baseType: !275, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3776, file: !3777, line: 106, baseType: !3787, size: 192, offset: 512)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3788, line: 32, size: 192, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3787, file: !3788, line: 33, baseType: !177, size: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3787, file: !3788, line: 34, baseType: !3792, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3793, line: 25, baseType: !3794)
!3793 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3793, line: 23, size: 64, elements: !3795)
!3795 = !{!3796}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3794, file: !3793, line: 24, baseType: !541, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3776, file: !3777, line: 109, baseType: !692, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3776, file: !3777, line: 112, baseType: !102, size: 32, offset: 768)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3776, file: !3777, line: 114, baseType: !102, size: 32, offset: 800)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3776, file: !3777, line: 115, baseType: !275, size: 64, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3776, file: !3777, line: 118, baseType: !102, size: 32, offset: 896)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !3777, line: 119, baseType: !35, size: 32, offset: 928)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3776, file: !3777, line: 121, baseType: !3804, size: 64, offset: 960)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3777, line: 80, size: 448, elements: !3806)
!3806 = !{!3807, !3808, !3814}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3805, file: !3777, line: 81, baseType: !129, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3805, file: !3777, line: 82, baseType: !3809, size: 128, offset: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3777, line: 75, size: 128, elements: !3810)
!3810 = !{!3811, !3812}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3809, file: !3777, line: 76, baseType: !275, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3809, file: !3777, line: 77, baseType: !3813, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3805, file: !3777, line: 83, baseType: !1116, size: 256, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3776, file: !3777, line: 132, baseType: !35, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3776, file: !3777, line: 133, baseType: !35, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3776, file: !3777, line: 138, baseType: !35, size: 32, offset: 1056)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3776, file: !3777, line: 139, baseType: !177, size: 128, offset: 1088)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3776, file: !3777, line: 142, baseType: !410, size: 512, offset: 1216)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3776, file: !3777, line: 143, baseType: !418, size: 64, offset: 1728)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3776, file: !3777, line: 150, baseType: !3822, size: 256, offset: 1792)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3823, size: 256, elements: !2431)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3777, line: 38, size: 128, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3823, file: !3777, line: 39, baseType: !343, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3823, file: !3777, line: 40, baseType: !343, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3776, file: !3777, line: 156, baseType: !3828, size: 192, offset: 2048)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3777, line: 66, size: 192, elements: !3829)
!3829 = !{!3830}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3828, file: !3777, line: 67, baseType: !3831, size: 192)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3777, line: 47, size: 192, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3831, file: !3777, line: 48, baseType: !641, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3831, file: !3777, line: 49, baseType: !641, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3831, file: !3777, line: 50, baseType: !641, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3776, file: !3777, line: 160, baseType: !3728, size: 640, offset: 2240)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3776, file: !3777, line: 163, baseType: !3838, size: 256, offset: 2880)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 256, elements: !27)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3776, file: !3777, line: 169, baseType: !684, size: 64, offset: 3136)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3776, file: !3777, line: 172, baseType: !102, size: 32, offset: 3200)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3776, file: !3777, line: 174, baseType: !3842, size: 64, offset: 3264)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3777, line: 174, flags: DIFlagFwdDecl)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3776, file: !3777, line: 185, baseType: !3845, size: 64, offset: 3328)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !460, line: 860, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 853, size: 64, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3846, file: !460, line: 858, baseType: !1199, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3846, file: !460, line: 859, baseType: !139, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3776, file: !3777, line: 186, baseType: !343, size: 64, offset: 3392)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3776, file: !3777, line: 186, baseType: !343, size: 64, offset: 3456)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3776, file: !3777, line: 186, baseType: !343, size: 64, offset: 3520)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3776, file: !3777, line: 186, baseType: !343, size: 64, offset: 3584)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3776, file: !3777, line: 187, baseType: !343, size: 64, offset: 3648)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3776, file: !3777, line: 188, baseType: !343, size: 64, offset: 3712)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3776, file: !3777, line: 189, baseType: !3716, size: 192, offset: 3776)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3776, file: !3777, line: 190, baseType: !119, size: 64, offset: 3968)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3776, file: !3777, line: 190, baseType: !119, size: 64, offset: 4032)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3776, file: !3777, line: 190, baseType: !119, size: 64, offset: 4096)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3776, file: !3777, line: 190, baseType: !119, size: 64, offset: 4160)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3776, file: !3777, line: 191, baseType: !119, size: 64, offset: 4224)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3776, file: !3777, line: 191, baseType: !119, size: 64, offset: 4288)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3776, file: !3777, line: 191, baseType: !119, size: 64, offset: 4352)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3776, file: !3777, line: 191, baseType: !119, size: 64, offset: 4416)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3776, file: !3777, line: 192, baseType: !119, size: 64, offset: 4480)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3776, file: !3777, line: 192, baseType: !119, size: 64, offset: 4544)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3776, file: !3777, line: 192, baseType: !119, size: 64, offset: 4608)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3776, file: !3777, line: 192, baseType: !119, size: 64, offset: 4672)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3776, file: !3777, line: 193, baseType: !119, size: 64, offset: 4736)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3776, file: !3777, line: 193, baseType: !119, size: 64, offset: 4800)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3776, file: !3777, line: 194, baseType: !3872, size: 448, offset: 4864)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3873, line: 12, size: 448, elements: !3874)
!3873 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3872, file: !3873, line: 15, baseType: !343, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3872, file: !3873, line: 17, baseType: !343, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3872, file: !3873, line: 19, baseType: !343, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3872, file: !3873, line: 21, baseType: !343, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3872, file: !3873, line: 29, baseType: !343, size: 64, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3872, file: !3873, line: 35, baseType: !343, size: 64, offset: 320)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3872, file: !3873, line: 44, baseType: !343, size: 64, offset: 384)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3776, file: !3777, line: 202, baseType: !345, size: 64, offset: 5312)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3776, file: !3777, line: 213, baseType: !3884, size: 2048, offset: 5376)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3526, size: 2048, elements: !3087)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3776, file: !3777, line: 216, baseType: !3886, size: 448, offset: 7424)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3777, line: 30, size: 448, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3886, file: !3777, line: 31, baseType: !102, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3886, file: !3777, line: 32, baseType: !1162, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3886, file: !3777, line: 33, baseType: !119, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3886, file: !3777, line: 34, baseType: !343, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3886, file: !3777, line: 34, baseType: !343, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3886, file: !3777, line: 35, baseType: !119, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3886, file: !3777, line: 35, baseType: !119, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3776, file: !3777, line: 219, baseType: !3896, size: 64, offset: 7872)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3777, line: 219, flags: DIFlagFwdDecl)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3776, file: !3777, line: 222, baseType: !35, size: 32, offset: 7936)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3776, file: !3777, line: 223, baseType: !3900, size: 64, offset: 8000)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3777, line: 223, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3776, file: !3777, line: 230, baseType: !948, size: 8, offset: 8064)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3776, file: !3777, line: 231, baseType: !917, size: 16, offset: 8080)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3776, file: !3777, line: 232, baseType: !917, size: 16, offset: 8096)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3776, file: !3777, line: 234, baseType: !590, size: 64, offset: 8128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3776, file: !3777, line: 237, baseType: !646, size: 256, offset: 8192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3776, file: !3777, line: 243, baseType: !889, size: 320, offset: 8448)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !276, file: !277, line: 1111, baseType: !3909, size: 64, offset: 15424)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3777, line: 20, size: 16640, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3910, file: !3777, line: 21, baseType: !139, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3910, file: !3777, line: 22, baseType: !292, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3910, file: !3777, line: 23, baseType: !134, size: 192, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3910, file: !3777, line: 24, baseType: !3916, size: 16384, offset: 256)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3917, size: 16384, elements: !1575)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3788, line: 51, size: 256, elements: !3918)
!3918 = !{!3919}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3917, file: !3788, line: 52, baseType: !3920, size: 256)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3788, line: 37, size: 256, elements: !3921)
!3921 = !{!3922, !3929, !3930, !3934}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3920, file: !3788, line: 39, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3924, line: 83, baseType: !3925)
!3924 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3924, line: 82, baseType: !3927)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !102}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3920, file: !3788, line: 40, baseType: !119, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3920, file: !3788, line: 46, baseType: !3931, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3924, line: 86, baseType: !3932)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3924, line: 85, baseType: !2645)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3920, file: !3788, line: 48, baseType: !3792, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !276, file: !277, line: 1112, baseType: !3792, size: 64, offset: 15488)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !276, file: !277, line: 1113, baseType: !3792, size: 64, offset: 15552)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !276, file: !277, line: 1115, baseType: !3792, size: 64, offset: 15616)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !276, file: !277, line: 1116, baseType: !3787, size: 192, offset: 15680)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !276, file: !277, line: 1117, baseType: !119, size: 64, offset: 15872)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !276, file: !277, line: 1118, baseType: !115, size: 64, offset: 15936)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !276, file: !277, line: 1119, baseType: !35, size: 32, offset: 16000)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !276, file: !277, line: 1121, baseType: !629, size: 64, offset: 16064)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !276, file: !277, line: 1125, baseType: !3944, size: 64, offset: 16128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !277, line: 43, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !276, file: !277, line: 1127, baseType: !771, size: 32, offset: 16192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !276, file: !277, line: 1128, baseType: !35, size: 32, offset: 16224)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !276, file: !277, line: 1130, baseType: !3949, size: 128, offset: 16256)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3950, line: 37, size: 128, elements: !3951)
!3950 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3949, file: !3950, line: 38, baseType: !102, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3949, file: !3950, line: 39, baseType: !129, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3949, file: !3950, line: 40, baseType: !3955, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3950, line: 24, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !276, file: !277, line: 1131, baseType: !3958, size: 256, offset: 16384)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3959, line: 12, size: 256, elements: !3960)
!3959 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3960 = !{!3961, !3962, !3963, !3964}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3958, file: !3959, line: 13, baseType: !959, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3958, file: !3959, line: 14, baseType: !119, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3958, file: !3959, line: 15, baseType: !119, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3958, file: !3959, line: 16, baseType: !948, size: 8, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !276, file: !277, line: 1134, baseType: !343, size: 64, offset: 16640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !276, file: !277, line: 1135, baseType: !343, size: 64, offset: 16704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !276, file: !277, line: 1138, baseType: !139, size: 32, offset: 16768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !276, file: !277, line: 1141, baseType: !435, size: 32, offset: 16800)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !276, file: !277, line: 1143, baseType: !3970, size: 64, offset: 16832)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !277, line: 735, size: 64, elements: !3971)
!3971 = !{!3972}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3970, file: !277, line: 736, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !276, file: !277, line: 1147, baseType: !473, size: 128, offset: 16896)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !276, file: !277, line: 1149, baseType: !275, size: 64, offset: 17024)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !276, file: !277, line: 1151, baseType: !3977, size: 64, offset: 17088)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !277, line: 1151, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !276, file: !277, line: 1188, baseType: !100, size: 64, offset: 17152)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !276, file: !277, line: 1191, baseType: !3981, size: 64, offset: 17216)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !277, line: 44, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !276, file: !277, line: 1194, baseType: !3984, size: 64, offset: 17280)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !277, line: 45, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !276, file: !277, line: 1197, baseType: !3987, size: 64, offset: 17344)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !277, line: 61, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !276, file: !277, line: 1199, baseType: !3990, size: 64, offset: 17408)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3992, line: 99, size: 128, elements: !3993)
!3992 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3993 = !{!3994, !3995, !3996}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3991, file: !3992, line: 100, baseType: !639, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3991, file: !3992, line: 101, baseType: !129, size: 32, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3991, file: !3992, line: 103, baseType: !106, size: 16, offset: 96)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !276, file: !277, line: 1202, baseType: !3998, size: 64, offset: 17472)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !277, line: 48, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !276, file: !277, line: 1205, baseType: !119, size: 64, offset: 17536)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !276, file: !277, line: 1206, baseType: !4002, size: 64, offset: 17600)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3788, line: 14, baseType: !4004)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3788, line: 12, size: 384, elements: !4005)
!4005 = !{!4006}
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !3788, line: 13, baseType: !4007, size: 384)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !3788, line: 13, size: 384, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4007, file: !3788, line: 13, baseType: !102, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4007, file: !3788, line: 13, baseType: !102, size: 32, offset: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4007, file: !3788, line: 13, baseType: !102, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4007, file: !3788, line: 13, baseType: !4013, size: 256, offset: 128)
!4013 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4014, line: 37, size: 256, elements: !4015)
!4014 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4015 = !{!4016, !4021, !4034, !4040, !4049, !4075, !4080}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4013, file: !4014, line: 42, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 39, size: 64, elements: !4018)
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4017, file: !4014, line: 40, baseType: !3693, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4017, file: !4014, line: 41, baseType: !777, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4013, file: !4014, line: 50, baseType: !4022, size: 192)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 45, size: 192, elements: !4023)
!4023 = !{!4024, !4026, !4027, !4033}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4022, file: !4014, line: 46, baseType: !4025, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !117, line: 95, baseType: !102)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4022, file: !4014, line: 47, baseType: !102, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4022, file: !4014, line: 48, baseType: !4028, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4014, line: 11, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4014, line: 8, size: 64, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4029, file: !4014, line: 9, baseType: !102, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4029, file: !4014, line: 10, baseType: !100, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4022, file: !4014, line: 49, baseType: !102, size: 32, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4013, file: !4014, line: 57, baseType: !4035, size: 128)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 53, size: 128, elements: !4036)
!4036 = !{!4037, !4038, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4035, file: !4014, line: 54, baseType: !3693, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4035, file: !4014, line: 55, baseType: !777, size: 32, offset: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4035, file: !4014, line: 56, baseType: !4028, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4013, file: !4014, line: 66, baseType: !4041, size: 256)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 60, size: 256, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4048}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4041, file: !4014, line: 61, baseType: !3693, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4041, file: !4014, line: 62, baseType: !777, size: 32, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4041, file: !4014, line: 63, baseType: !102, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4041, file: !4014, line: 64, baseType: !4047, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !117, line: 94, baseType: !1382)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4041, file: !4014, line: 65, baseType: !4047, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4013, file: !4014, line: 105, baseType: !4050, size: 256)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 69, size: 256, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4050, file: !4014, line: 70, baseType: !100, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4014, line: 79, baseType: !4054, size: 192, offset: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4014, line: 79, size: 192, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4064, !4069}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4054, file: !4014, line: 81, baseType: !102, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4054, file: !4014, line: 86, baseType: !917, size: 16)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4054, file: !4014, line: 92, baseType: !4059, size: 192)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4014, line: 88, size: 192, elements: !4060)
!4060 = !{!4061, !4062, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4059, file: !4014, line: 89, baseType: !21, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4059, file: !4014, line: 90, baseType: !100, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4059, file: !4014, line: 91, baseType: !100, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4054, file: !4014, line: 97, baseType: !4065, size: 96)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4014, line: 94, size: 96, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4065, file: !4014, line: 95, baseType: !21, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4065, file: !4014, line: 96, baseType: !287, size: 32, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4054, file: !4014, line: 103, baseType: !4070, size: 128)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4014, line: 99, size: 128, elements: !4071)
!4071 = !{!4072, !4073, !4074}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4070, file: !4014, line: 100, baseType: !119, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4070, file: !4014, line: 101, baseType: !287, size: 32, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4070, file: !4014, line: 102, baseType: !287, size: 32, offset: 96)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4013, file: !4014, line: 111, baseType: !4076, size: 128)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 108, size: 128, elements: !4077)
!4077 = !{!4078, !4079}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4076, file: !4014, line: 109, baseType: !1162, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4076, file: !4014, line: 110, baseType: !102, size: 32, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4013, file: !4014, line: 118, baseType: !4081, size: 128)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 114, size: 128, elements: !4082)
!4082 = !{!4083, !4084, !4085}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4081, file: !4014, line: 115, baseType: !100, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4081, file: !4014, line: 116, baseType: !102, size: 32, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4081, file: !4014, line: 117, baseType: !35, size: 32, offset: 96)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !276, file: !277, line: 1208, baseType: !3872, size: 448, offset: 17664)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !276, file: !277, line: 1215, baseType: !343, size: 64, offset: 18112)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !276, file: !277, line: 1217, baseType: !343, size: 64, offset: 18176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !276, file: !277, line: 1219, baseType: !343, size: 64, offset: 18240)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !276, file: !277, line: 1223, baseType: !4091, size: 64, offset: 18304)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4092, line: 99, baseType: !4093)
!4092 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4092, line: 99, size: 64, elements: !4094)
!4094 = !{!4095}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4093, file: !4092, line: 99, baseType: !541, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !276, file: !277, line: 1225, baseType: !1199, size: 32, offset: 18368)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !276, file: !277, line: 1226, baseType: !102, size: 32, offset: 18400)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !276, file: !277, line: 1227, baseType: !102, size: 32, offset: 18432)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !276, file: !277, line: 1231, baseType: !4100, size: 64, offset: 18496)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !277, line: 1231, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !276, file: !277, line: 1233, baseType: !177, size: 128, offset: 18560)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !276, file: !277, line: 1240, baseType: !4104, size: 64, offset: 18688)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !277, line: 62, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !276, file: !277, line: 1242, baseType: !4107, size: 64, offset: 18752)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !277, line: 1242, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !276, file: !277, line: 1244, baseType: !177, size: 128, offset: 18816)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !276, file: !277, line: 1245, baseType: !4111, size: 64, offset: 18944)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !277, line: 51, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !276, file: !277, line: 1246, baseType: !646, size: 256, offset: 19008)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !276, file: !277, line: 1247, baseType: !35, size: 32, offset: 19264)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !276, file: !277, line: 1250, baseType: !4116, size: 64, offset: 19328)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !277, line: 57, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !276, file: !277, line: 1251, baseType: !646, size: 256, offset: 19392)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !276, file: !277, line: 1252, baseType: !177, size: 128, offset: 19648)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !276, file: !277, line: 1259, baseType: !1859, size: 64, offset: 19776)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !276, file: !277, line: 1260, baseType: !917, size: 16, offset: 19840)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !276, file: !277, line: 1261, baseType: !917, size: 16, offset: 19856)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !276, file: !277, line: 1314, baseType: !4124, size: 64, offset: 19904)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4126, line: 62, size: 256, align: 256, elements: !4127)
!4126 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4125, file: !4126, line: 75, baseType: !287, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4125, file: !4126, line: 90, baseType: !287, size: 32, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4125, file: !4126, line: 112, baseType: !344, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4125, file: !4126, line: 132, baseType: !287, size: 32, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4125, file: !4126, line: 140, baseType: !287, size: 32, offset: 160)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4125, file: !4126, line: 149, baseType: !287, size: 32, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4125, file: !4126, line: 154, baseType: !4135, offset: 224)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1054)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !276, file: !277, line: 1315, baseType: !286, size: 32, offset: 19968)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !276, file: !277, line: 1316, baseType: !286, size: 32, offset: 20000)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !276, file: !277, line: 1321, baseType: !119, size: 64, offset: 20032)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !276, file: !277, line: 1325, baseType: !102, size: 32, offset: 20096)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !276, file: !277, line: 1326, baseType: !102, size: 32, offset: 20128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !276, file: !277, line: 1327, baseType: !102, size: 32, offset: 20160)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !276, file: !277, line: 1328, baseType: !102, size: 32, offset: 20192)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !276, file: !277, line: 1329, baseType: !626, size: 128, align: 64, offset: 20224)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !276, file: !277, line: 1332, baseType: !4145, size: 128, offset: 20352)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4146, line: 51, size: 128, elements: !4147)
!4146 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4147 = !{!4148, !4153, !4154}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4145, file: !4146, line: 60, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4150, line: 7, size: 64, elements: !4151)
!4150 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4149, file: !4150, line: 12, baseType: !538, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4145, file: !4146, line: 63, baseType: !948, size: 8, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4145, file: !4146, line: 70, baseType: !948, size: 8, offset: 72)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !276, file: !277, line: 1335, baseType: !3325, size: 64, offset: 20480)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !276, file: !277, line: 1337, baseType: !4157, size: 128, offset: 20544)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4146, line: 39, size: 128, elements: !4158)
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4157, file: !4146, line: 40, baseType: !1656, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4157, file: !4146, line: 42, baseType: !287, size: 32, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4157, file: !4146, line: 43, baseType: !287, size: 32, offset: 96)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !276, file: !277, line: 1340, baseType: !4163, size: 64, offset: 20672)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !277, line: 69, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !276, file: !277, line: 1351, baseType: !102, size: 32, offset: 20736)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !276, file: !277, line: 1352, baseType: !102, size: 32, offset: 20768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !276, file: !277, line: 1354, baseType: !119, size: 64, offset: 20800)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !276, file: !277, line: 1364, baseType: !343, size: 64, offset: 20864)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !276, file: !277, line: 1365, baseType: !343, size: 64, offset: 20928)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !276, file: !277, line: 1412, baseType: !119, size: 64, offset: 20992)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !276, file: !277, line: 1453, baseType: !4172, size: 64, offset: 21056)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !277, line: 1453, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !276, file: !277, line: 1457, baseType: !4175, size: 64, offset: 21120)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !194, line: 61, size: 576, elements: !4177)
!4177 = !{!4178, !4179, !4198, !4201, !4202, !4235, !4245}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4176, file: !194, line: 62, baseType: !193, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, scope: !4176, file: !194, line: 64, baseType: !4180, size: 192, offset: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4176, file: !194, line: 64, size: 192, elements: !4181)
!4181 = !{!4182, !4193}
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !4180, file: !194, line: 65, baseType: !4183, size: 192)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4180, file: !194, line: 65, size: 192, elements: !4184)
!4184 = !{!4185, !4192}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4183, file: !194, line: 66, baseType: !4186, size: 128)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4187, line: 50, size: 128, elements: !4188)
!4187 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4188 = !{!4189, !4190, !4191}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4186, file: !4187, line: 52, baseType: !119, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4186, file: !4187, line: 54, baseType: !35, size: 32, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4186, file: !4187, line: 55, baseType: !35, size: 32, offset: 96)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4183, file: !194, line: 67, baseType: !119, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, scope: !4180, file: !194, line: 70, baseType: !4194, size: 192)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4180, file: !194, line: 70, size: 192, elements: !4195)
!4195 = !{!4196, !4197}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4194, file: !194, line: 71, baseType: !626, size: 128, align: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4194, file: !194, line: 72, baseType: !119, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4176, file: !194, line: 76, baseType: !4199, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !194, line: 76, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4176, file: !194, line: 77, baseType: !119, size: 64, offset: 320)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4176, file: !194, line: 79, baseType: !4203, size: 64, offset: 384)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4187, line: 25, size: 256, elements: !4205)
!4205 = !{!4206, !4212, !4216}
!4206 = !DIDerivedType(tag: DW_TAG_member, scope: !4204, file: !4187, line: 26, baseType: !4207, size: 128)
!4207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !4187, line: 26, size: 128, elements: !4208)
!4208 = !{!4209, !4211}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4207, file: !4187, line: 27, baseType: !4210, size: 128)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !3087)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4207, file: !4187, line: 28, baseType: !4210, size: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4204, file: !4187, line: 31, baseType: !4213, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4215)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4187, line: 23, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, scope: !4204, file: !4187, line: 33, baseType: !4217, size: 64, offset: 192)
!4217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !4187, line: 33, size: 64, elements: !4218)
!4218 = !{!4219, !4225, !4230}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4217, file: !4187, line: 38, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4187, line: 34, size: 64, elements: !4221)
!4221 = !{!4222, !4223, !4224}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4220, file: !4187, line: 35, baseType: !881, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4220, file: !4187, line: 36, baseType: !163, size: 8, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4220, file: !4187, line: 37, baseType: !163, size: 8, offset: 40)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4217, file: !4187, line: 42, baseType: !4226, size: 16)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4187, line: 39, size: 16, elements: !4227)
!4227 = !{!4228, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4226, file: !4187, line: 40, baseType: !163, size: 8)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4226, file: !4187, line: 41, baseType: !163, size: 8, offset: 8)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4217, file: !4187, line: 46, baseType: !4231, size: 16)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4187, line: 43, size: 16, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4231, file: !4187, line: 44, baseType: !163, size: 8)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4231, file: !4187, line: 45, baseType: !163, size: 8, offset: 8)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4176, file: !194, line: 81, baseType: !4236, size: 64, offset: 448)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !194, line: 85, size: 384, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4237, file: !194, line: 86, baseType: !4199, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4237, file: !194, line: 87, baseType: !119, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4237, file: !194, line: 88, baseType: !119, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4237, file: !194, line: 89, baseType: !119, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4237, file: !194, line: 90, baseType: !948, size: 8, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4237, file: !194, line: 92, baseType: !4236, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4176, file: !194, line: 82, baseType: !35, size: 32, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !276, file: !277, line: 1463, baseType: !4247, offset: 21184)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !277, line: 739, elements: !611)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !276, file: !277, line: 1470, baseType: !626, size: 128, align: 64, offset: 21184)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !276, file: !277, line: 1471, baseType: !292, size: 32, offset: 21312)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !276, file: !277, line: 1472, baseType: !102, size: 32, offset: 21344)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !276, file: !277, line: 1474, baseType: !275, size: 64, offset: 21376)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !276, file: !277, line: 1475, baseType: !2540, size: 320, offset: 21440)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !276, file: !277, line: 1478, baseType: !4254, size: 64, offset: 21760)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !277, line: 1478, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !276, file: !277, line: 1482, baseType: !292, size: 32, offset: 21824)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !276, file: !277, line: 1489, baseType: !100, size: 64, offset: 21888)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !276, file: !277, line: 1504, baseType: !100, size: 64, offset: 21952)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !276, file: !277, line: 1505, baseType: !344, size: 64, offset: 22016)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !276, file: !277, line: 1506, baseType: !343, size: 64, offset: 22080)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !276, file: !277, line: 1507, baseType: !344, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !276, file: !277, line: 1508, baseType: !344, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !276, file: !277, line: 1509, baseType: !344, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !276, file: !277, line: 1510, baseType: !626, size: 128, align: 64, offset: 22208)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !276, file: !277, line: 1511, baseType: !102, size: 32, offset: 22336)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !276, file: !277, line: 1515, baseType: !4267, size: 64, offset: 22400)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !305, line: 56, size: 64, elements: !4268)
!4268 = !{!4269}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4267, file: !305, line: 57, baseType: !308, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !276, file: !277, line: 1518, baseType: !4267, size: 64, offset: 22464)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !276, file: !277, line: 1528, baseType: !626, size: 128, align: 64, offset: 22528)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !277, line: 1552, baseType: !4273, size: 35328, offset: 23040)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4274, line: 430, size: 35328, elements: !4275)
!4274 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4275 = !{!4276, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4305, !4306, !4307, !4308, !4309, !4310, !4313, !4314, !4315, !4316}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4273, file: !4274, line: 432, baseType: !4277, size: 192)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4278, size: 192, elements: !15)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4279, line: 16, size: 64, elements: !4280)
!4279 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4280 = !{!4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4278, file: !4279, line: 17, baseType: !173, size: 16)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4278, file: !4279, line: 18, baseType: !173, size: 16, offset: 16)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4278, file: !4279, line: 19, baseType: !173, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4278, file: !4279, line: 19, baseType: !173, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4278, file: !4279, line: 19, baseType: !173, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4278, file: !4279, line: 19, baseType: !173, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4278, file: !4279, line: 19, baseType: !173, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4278, file: !4279, line: 20, baseType: !173, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4278, file: !4279, line: 20, baseType: !173, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4278, file: !4279, line: 20, baseType: !173, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4278, file: !4279, line: 20, baseType: !173, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4278, file: !4279, line: 20, baseType: !173, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4278, file: !4279, line: 20, baseType: !173, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4273, file: !4274, line: 436, baseType: !119, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4273, file: !4274, line: 440, baseType: !106, size: 16, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4273, file: !4274, line: 441, baseType: !106, size: 16, offset: 272)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4273, file: !4274, line: 442, baseType: !106, size: 16, offset: 288)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4273, file: !4274, line: 443, baseType: !106, size: 16, offset: 304)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4273, file: !4274, line: 447, baseType: !119, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4273, file: !4274, line: 448, baseType: !119, size: 64, offset: 384)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4273, file: !4274, line: 459, baseType: !4302, size: 256, offset: 448)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4303, size: 256, elements: !27)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4274, line: 428, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4273, file: !4274, line: 461, baseType: !119, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4273, file: !4274, line: 463, baseType: !119, size: 64, offset: 768)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4273, file: !4274, line: 465, baseType: !119, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4273, file: !4274, line: 466, baseType: !119, size: 64, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4273, file: !4274, line: 467, baseType: !119, size: 64, offset: 960)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4273, file: !4274, line: 473, baseType: !4311, size: 64, offset: 1024)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4274, line: 10, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4273, file: !4274, line: 480, baseType: !119, size: 64, offset: 1088)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4273, file: !4274, line: 482, baseType: !35, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4273, file: !4274, line: 491, baseType: !286, size: 32, offset: 1184)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4273, file: !4274, line: 501, baseType: !4317, size: 33792, offset: 1536)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4318, line: 448, size: 33792, elements: !4319)
!4318 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4319 = !{!4320, !4321, !4322, !4482, !4483, !4489, !4490}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4317, file: !4318, line: 461, baseType: !35, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4317, file: !4318, line: 468, baseType: !119, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4317, file: !4318, line: 476, baseType: !4323, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4318, line: 356, size: 33280, align: 512, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4324, file: !4318, line: 358, baseType: !35, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4324, file: !4318, line: 361, baseType: !35, size: 32, offset: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4324, file: !4318, line: 364, baseType: !343, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4324, file: !4318, line: 367, baseType: !343, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4324, file: !4318, line: 370, baseType: !343, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4324, file: !4318, line: 373, baseType: !35, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4324, file: !4318, line: 376, baseType: !35, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4324, file: !4318, line: 391, baseType: !35, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4324, file: !4318, line: 394, baseType: !35, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4324, file: !4318, line: 397, baseType: !4336, size: 32768, offset: 512)
!4336 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4318, line: 348, size: 32768, elements: !4337)
!4337 = !{!4338, !4353, !4388, !4465, !4478}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4336, file: !4318, line: 349, baseType: !4339, size: 896)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4318, line: 12, size: 896, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4352}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4339, file: !4318, line: 13, baseType: !286, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4339, file: !4318, line: 14, baseType: !286, size: 32, offset: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4339, file: !4318, line: 15, baseType: !286, size: 32, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4339, file: !4318, line: 16, baseType: !286, size: 32, offset: 96)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4339, file: !4318, line: 17, baseType: !286, size: 32, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4339, file: !4318, line: 18, baseType: !286, size: 32, offset: 160)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4339, file: !4318, line: 19, baseType: !286, size: 32, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4339, file: !4318, line: 22, baseType: !4349, size: 640, offset: 224)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 640, elements: !4350)
!4350 = !{!4351}
!4351 = !DISubrange(count: 20)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4339, file: !4318, line: 25, baseType: !286, size: 32, offset: 864)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4336, file: !4318, line: 350, baseType: !4354, size: 4096, align: 128)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4318, line: 34, size: 4096, align: 128, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4375, !4376, !4377, !4379, !4381, !4383}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4354, file: !4318, line: 35, baseType: !173, size: 16)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4354, file: !4318, line: 36, baseType: !173, size: 16, offset: 16)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4354, file: !4318, line: 37, baseType: !173, size: 16, offset: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4354, file: !4318, line: 38, baseType: !173, size: 16, offset: 48)
!4360 = !DIDerivedType(tag: DW_TAG_member, scope: !4354, file: !4318, line: 39, baseType: !4361, size: 128, offset: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4354, file: !4318, line: 39, size: 128, elements: !4362)
!4362 = !{!4363, !4368}
!4363 = !DIDerivedType(tag: DW_TAG_member, scope: !4361, file: !4318, line: 40, baseType: !4364, size: 128)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4361, file: !4318, line: 40, size: 128, elements: !4365)
!4365 = !{!4366, !4367}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4364, file: !4318, line: 41, baseType: !343, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4364, file: !4318, line: 42, baseType: !343, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, scope: !4361, file: !4318, line: 44, baseType: !4369, size: 128)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4361, file: !4318, line: 44, size: 128, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4369, file: !4318, line: 45, baseType: !286, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4369, file: !4318, line: 46, baseType: !286, size: 32, offset: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4369, file: !4318, line: 47, baseType: !286, size: 32, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4369, file: !4318, line: 48, baseType: !286, size: 32, offset: 96)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4354, file: !4318, line: 51, baseType: !286, size: 32, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4354, file: !4318, line: 52, baseType: !286, size: 32, offset: 224)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4354, file: !4318, line: 55, baseType: !4378, size: 1024, offset: 256)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 1024, elements: !3078)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4354, file: !4318, line: 58, baseType: !4380, size: 2048, offset: 1280)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 2048, elements: !1575)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4354, file: !4318, line: 60, baseType: !4382, size: 384, offset: 3328)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 384, elements: !10)
!4383 = !DIDerivedType(tag: DW_TAG_member, scope: !4354, file: !4318, line: 62, baseType: !4384, size: 384, offset: 3712)
!4384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4354, file: !4318, line: 62, size: 384, elements: !4385)
!4385 = !{!4386, !4387}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4384, file: !4318, line: 63, baseType: !4382, size: 384)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4384, file: !4318, line: 64, baseType: !4382, size: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4336, file: !4318, line: 351, baseType: !4389, size: 1088)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4318, line: 79, size: 1088, elements: !4390)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4464}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4389, file: !4318, line: 80, baseType: !286, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4389, file: !4318, line: 81, baseType: !286, size: 32, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4389, file: !4318, line: 82, baseType: !286, size: 32, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4389, file: !4318, line: 83, baseType: !286, size: 32, offset: 96)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4389, file: !4318, line: 84, baseType: !286, size: 32, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4389, file: !4318, line: 85, baseType: !286, size: 32, offset: 160)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4389, file: !4318, line: 86, baseType: !286, size: 32, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4389, file: !4318, line: 88, baseType: !4349, size: 640, offset: 224)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4389, file: !4318, line: 89, baseType: !163, size: 8, offset: 864)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4389, file: !4318, line: 90, baseType: !163, size: 8, offset: 872)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4389, file: !4318, line: 91, baseType: !163, size: 8, offset: 880)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4389, file: !4318, line: 92, baseType: !163, size: 8, offset: 888)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4389, file: !4318, line: 93, baseType: !163, size: 8, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4389, file: !4318, line: 94, baseType: !163, size: 8, offset: 904)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4389, file: !4318, line: 95, baseType: !4406, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4408, line: 11, size: 128, elements: !4409)
!4408 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4407, file: !4408, line: 12, baseType: !1162, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4407, file: !4408, line: 13, baseType: !4412, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4414, line: 103, size: 1344, elements: !4415)
!4414 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4415 = !{!4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4444, !4445, !4446}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4413, file: !4414, line: 109, baseType: !119, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4413, file: !4414, line: 110, baseType: !119, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4413, file: !4414, line: 111, baseType: !119, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4413, file: !4414, line: 112, baseType: !119, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4413, file: !4414, line: 113, baseType: !119, size: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4413, file: !4414, line: 114, baseType: !119, size: 64, offset: 320)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4413, file: !4414, line: 117, baseType: !119, size: 64, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4413, file: !4414, line: 118, baseType: !119, size: 64, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4413, file: !4414, line: 119, baseType: !119, size: 64, offset: 512)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4413, file: !4414, line: 120, baseType: !119, size: 64, offset: 576)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4413, file: !4414, line: 121, baseType: !119, size: 64, offset: 640)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4413, file: !4414, line: 122, baseType: !119, size: 64, offset: 704)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4413, file: !4414, line: 123, baseType: !119, size: 64, offset: 768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4413, file: !4414, line: 124, baseType: !119, size: 64, offset: 832)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4413, file: !4414, line: 125, baseType: !119, size: 64, offset: 896)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4413, file: !4414, line: 139, baseType: !119, size: 64, offset: 960)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4413, file: !4414, line: 142, baseType: !119, size: 64, offset: 1024)
!4433 = !DIDerivedType(tag: DW_TAG_member, scope: !4413, file: !4414, line: 144, baseType: !4434, size: 64, offset: 1088)
!4434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4413, file: !4414, line: 144, size: 64, elements: !4435)
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4434, file: !4414, line: 146, baseType: !173, size: 16)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4434, file: !4414, line: 148, baseType: !343, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4434, file: !4414, line: 150, baseType: !4439, size: 64)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4414, line: 59, size: 64, elements: !4440)
!4440 = !{!4441, !4442, !4443}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4439, file: !4414, line: 61, baseType: !343, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4439, file: !4414, line: 63, baseType: !343, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4439, file: !4414, line: 65, baseType: !343, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4413, file: !4414, line: 153, baseType: !119, size: 64, offset: 1152)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4413, file: !4414, line: 154, baseType: !119, size: 64, offset: 1216)
!4446 = !DIDerivedType(tag: DW_TAG_member, scope: !4413, file: !4414, line: 156, baseType: !4447, size: 64, offset: 1280)
!4447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4413, file: !4414, line: 156, size: 64, elements: !4448)
!4448 = !{!4449, !4450, !4451}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4447, file: !4414, line: 158, baseType: !173, size: 16)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4447, file: !4414, line: 160, baseType: !343, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4447, file: !4414, line: 162, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4414, line: 69, size: 64, elements: !4453)
!4453 = !{!4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4452, file: !4414, line: 71, baseType: !343, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4452, file: !4414, line: 73, baseType: !343, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4452, file: !4414, line: 75, baseType: !343, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4452, file: !4414, line: 77, baseType: !343, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4452, file: !4414, line: 80, baseType: !343, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4452, file: !4414, line: 83, baseType: !343, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4452, file: !4414, line: 86, baseType: !343, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4452, file: !4414, line: 88, baseType: !343, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4452, file: !4414, line: 93, baseType: !343, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4452, file: !4414, line: 100, baseType: !343, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4389, file: !4318, line: 96, baseType: !286, size: 32, offset: 1024)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4336, file: !4318, line: 352, baseType: !4466, size: 4608, align: 512)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4318, line: 333, size: 4608, align: 512, elements: !4467)
!4467 = !{!4468, !4469, !4476}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4466, file: !4318, line: 334, baseType: !4354, size: 4096, align: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4466, file: !4318, line: 335, baseType: !4470, size: 512, offset: 4096)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4318, line: 312, size: 512, elements: !4471)
!4471 = !{!4472, !4473, !4474}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4470, file: !4318, line: 313, baseType: !343, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4470, file: !4318, line: 314, baseType: !343, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4470, file: !4318, line: 315, baseType: !4475, size: 384, offset: 128)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 384, elements: !935)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4466, file: !4318, line: 336, baseType: !4477, offset: 4608)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !1054)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4336, file: !4318, line: 353, baseType: !4479, size: 32768)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 32768, elements: !4480)
!4480 = !{!4481}
!4481 = !DISubrange(count: 4096)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4317, file: !4318, line: 484, baseType: !4323, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4317, file: !4318, line: 491, baseType: !4484, size: 128, offset: 256)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4318, line: 404, size: 128, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4484, file: !4318, line: 424, baseType: !343, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4484, file: !4318, line: 432, baseType: !35, size: 32, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4484, file: !4318, line: 440, baseType: !35, size: 32, offset: 96)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4317, file: !4318, line: 498, baseType: !4484, size: 128, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4317, file: !4318, line: 508, baseType: !4324, size: 33280, align: 512, offset: 512)
!4491 = !{!0, !7, !12, !17, !19, !24, !4492, !4494, !4557, !29, !4560, !4565, !4567, !4569, !4574, !4579, !4581, !4586, !4589, !4594, !4596, !4601, !4606, !4611, !4613, !4615, !4618, !4620}
!4492 = !DIGlobalVariableExpression(var: !4493, expr: !DIExpression())
!4493 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !934, isLocal: true, isDefinition: true)
!4494 = !DIGlobalVariableExpression(var: !4495, expr: !DIExpression())
!4495 = distinct !DIGlobalVariable(name: "proc_root", scope: !31, file: !2, line: 365, type: !4496, isLocal: false, isDefinition: true)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4497, line: 30, size: 1408, elements: !4498)
!4497 = !DIFile(filename: "fs/proc/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5901c10530dd4e261f60d4f1b5caf1e")
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4526, !4527, !4535, !4540, !4541, !4542, !4543, !4545, !4546, !4547, !4548, !4550, !4551, !4552, !4553, !4554, !4555, !4556}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4496, file: !4497, line: 35, baseType: !129, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4496, file: !4497, line: 36, baseType: !292, size: 32, offset: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pde_openers", scope: !4496, file: !4497, line: 37, baseType: !177, size: 128, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_lock", scope: !4496, file: !4497, line: 39, baseType: !139, size: 32, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_completion", scope: !4496, file: !4497, line: 40, baseType: !1115, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "proc_iops", scope: !4496, file: !4497, line: 41, baseType: !1242, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, scope: !4496, file: !4497, line: 42, baseType: !4506, size: 64, offset: 384)
!4506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4496, file: !4497, line: 42, size: 64, elements: !4507)
!4507 = !{!4508, !4525}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ops", scope: !4506, file: !4497, line: 43, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4511)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !234, line: 29, size: 768, elements: !4512)
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !4511, file: !234, line: 30, baseType: !35, size: 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !4511, file: !234, line: 31, baseType: !3292, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !4511, file: !234, line: 32, baseType: !3249, size: 64, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !4511, file: !234, line: 33, baseType: !2057, size: 64, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !4511, file: !234, line: 34, baseType: !3253, size: 64, offset: 256)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !4511, file: !234, line: 36, baseType: !3245, size: 64, offset: 320)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !4511, file: !234, line: 37, baseType: !3292, size: 64, offset: 384)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !4511, file: !234, line: 38, baseType: !3278, size: 64, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !4511, file: !234, line: 39, baseType: !3282, size: 64, offset: 512)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !4511, file: !234, line: 41, baseType: !3282, size: 64, offset: 576)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !4511, file: !234, line: 43, baseType: !3287, size: 64, offset: 640)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !4511, file: !234, line: 44, baseType: !615, size: 64, offset: 704)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir_ops", scope: !4506, file: !4497, line: 44, baseType: !3239, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dops", scope: !4496, file: !4497, line: 46, baseType: !3093, size: 64, offset: 448)
!4527 = !DIDerivedType(tag: DW_TAG_member, scope: !4496, file: !4497, line: 47, baseType: !4528, size: 64, offset: 512)
!4528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4496, file: !4497, line: 47, size: 64, elements: !4529)
!4529 = !{!4530, !4534}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !4528, file: !4497, line: 48, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4533)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !4274, line: 196, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "single_show", scope: !4528, file: !4497, line: 49, baseType: !2242, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4496, file: !4497, line: 51, baseType: !4536, size: 64, offset: 576)
!4536 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_write_t", file: !234, line: 77, baseType: !4537)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!102, !618, !959, !115}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4496, file: !4497, line: 52, baseType: !100, size: 64, offset: 640)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "state_size", scope: !4496, file: !4497, line: 53, baseType: !35, size: 32, offset: 704)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "low_ino", scope: !4496, file: !4497, line: 54, baseType: !35, size: 32, offset: 736)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4496, file: !4497, line: 55, baseType: !4544, size: 32, offset: 768)
!4544 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !105, line: 25, baseType: !286)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4496, file: !4497, line: 56, baseType: !771, size: 32, offset: 800)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4496, file: !4497, line: 57, baseType: !779, size: 32, offset: 832)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4496, file: !4497, line: 58, baseType: !121, size: 64, offset: 896)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4496, file: !4497, line: 59, baseType: !4549, size: 64, offset: 960)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !4496, file: !4497, line: 60, baseType: !476, size: 64, offset: 1024)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "subdir_node", scope: !4496, file: !4497, line: 61, baseType: !335, size: 192, align: 64, offset: 1088)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4496, file: !4497, line: 62, baseType: !959, size: 64, offset: 1280)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4496, file: !4497, line: 63, baseType: !104, size: 16, offset: 1344)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4496, file: !4497, line: 64, baseType: !163, size: 8, offset: 1360)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !4496, file: !4497, line: 65, baseType: !163, size: 8, offset: 1368)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !4496, file: !4497, line: 66, baseType: !4135, offset: 1376)
!4557 = !DIGlobalVariableExpression(var: !4558, expr: !DIExpression())
!4558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !4559, isLocal: true, isDefinition: true)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !758)
!4560 = !DIGlobalVariableExpression(var: !4561, expr: !DIExpression())
!4561 = distinct !DIGlobalVariable(scope: null, file: !250, line: 480, type: !4562, isLocal: true, isDefinition: true)
!4562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4563)
!4563 = !{!4564}
!4564 = !DISubrange(count: 21)
!4565 = !DIGlobalVariableExpression(var: !4566, expr: !DIExpression())
!4566 = distinct !DIGlobalVariable(name: "proc_fs_context_ops", scope: !31, file: !2, line: 237, type: !1452, isLocal: true, isDefinition: true)
!4567 = !DIGlobalVariableExpression(var: !4568, expr: !DIExpression())
!4568 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !21, isLocal: true, isDefinition: true)
!4569 = !DIGlobalVariableExpression(var: !4570, expr: !DIExpression())
!4570 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !4571, isLocal: true, isDefinition: true)
!4571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !4572)
!4572 = !{!4573}
!4573 = !DISubrange(count: 40)
!4574 = !DIGlobalVariableExpression(var: !4575, expr: !DIExpression())
!4575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !4576, isLocal: true, isDefinition: true)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4577)
!4577 = !{!4578}
!4578 = !DISubrange(count: 37)
!4579 = !DIGlobalVariableExpression(var: !4580, expr: !DIExpression())
!4580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !26, isLocal: true, isDefinition: true)
!4581 = !DIGlobalVariableExpression(var: !4582, expr: !DIExpression())
!4582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !4583, isLocal: true, isDefinition: true)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4584)
!4584 = !{!4585}
!4585 = !DISubrange(count: 9)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !4588, isLocal: true, isDefinition: true)
!4588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1042)
!4589 = !DIGlobalVariableExpression(var: !4590, expr: !DIExpression())
!4590 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !4591, isLocal: true, isDefinition: true)
!4591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4592)
!4592 = !{!4593}
!4593 = !DISubrange(count: 11)
!4594 = !DIGlobalVariableExpression(var: !4595, expr: !DIExpression())
!4595 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !26, isLocal: true, isDefinition: true)
!4596 = !DIGlobalVariableExpression(var: !4597, expr: !DIExpression())
!4597 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !4598, isLocal: true, isDefinition: true)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !4599)
!4599 = !{!4600}
!4600 = !DISubrange(count: 38)
!4601 = !DIGlobalVariableExpression(var: !4602, expr: !DIExpression())
!4602 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !4603, isLocal: true, isDefinition: true)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !4604)
!4604 = !{!4605}
!4605 = !DISubrange(count: 42)
!4606 = !DIGlobalVariableExpression(var: !4607, expr: !DIExpression())
!4607 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !4608, isLocal: true, isDefinition: true)
!4608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !4609)
!4609 = !{!4610}
!4610 = !DISubrange(count: 43)
!4611 = !DIGlobalVariableExpression(var: !4612, expr: !DIExpression())
!4612 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !26, isLocal: true, isDefinition: true)
!4613 = !DIGlobalVariableExpression(var: !4614, expr: !DIExpression())
!4614 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!4615 = !DIGlobalVariableExpression(var: !4616, expr: !DIExpression())
!4616 = distinct !DIGlobalVariable(name: "proc_fs_parameters", scope: !31, file: !2, line: 43, type: !4617, isLocal: true, isDefinition: true)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2664, size: 1024, elements: !27)
!4618 = !DIGlobalVariableExpression(var: !4619, expr: !DIExpression())
!4619 = distinct !DIGlobalVariable(name: "proc_root_inode_operations", scope: !31, file: !2, line: 357, type: !1243, isLocal: true, isDefinition: true)
!4620 = !DIGlobalVariableExpression(var: !4621, expr: !DIExpression())
!4621 = distinct !DIGlobalVariable(name: "proc_root_operations", scope: !31, file: !2, line: 348, type: !3240, isLocal: true, isDefinition: true)
!4622 = !{i32 7, !"Dwarf Version", i32 5}
!4623 = !{i32 2, !"Debug Info Version", i32 3}
!4624 = !{i32 1, !"wchar_size", i32 2}
!4625 = !{i32 8, !"cf-protection-branch", i32 1}
!4626 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4627 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4628 = !{i32 1, !"Code Model", i32 2}
!4629 = !{i32 1, !"override-stack-alignment", i32 8}
!4630 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4631 = distinct !DISubprogram(name: "proc_root_init", scope: !2, file: !2, line: 285, type: !2645, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31)
!4632 = !DILocation(line: 287, column: 2, scope: !4631)
!4633 = !DILocation(line: 288, column: 2, scope: !4631)
!4634 = !DILocation(line: 289, column: 2, scope: !4631)
!4635 = !DILocation(line: 290, column: 2, scope: !4631)
!4636 = !DILocation(line: 291, column: 2, scope: !4631)
!4637 = !DILocation(line: 293, column: 2, scope: !4631)
!4638 = !DILocation(line: 294, column: 2, scope: !4631)
!4639 = !DILocation(line: 295, column: 2, scope: !4631)
!4640 = !DILocation(line: 296, column: 2, scope: !4631)
!4641 = !DILocation(line: 301, column: 2, scope: !4631)
!4642 = !DILocation(line: 302, column: 2, scope: !4631)
!4643 = !DILocation(line: 303, column: 2, scope: !4631)
!4644 = !DILocation(line: 310, column: 2, scope: !4631)
!4645 = !DILocation(line: 311, column: 1, scope: !4631)
!4646 = !DISubprogram(name: "proc_init_kmemcache", scope: !4497, file: !4497, line: 220, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4647 = !DISubprogram(name: "set_proc_pid_nlink", scope: !4497, file: !4497, line: 222, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4648 = !DISubprogram(name: "proc_self_init", scope: !4497, file: !4497, line: 282, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4649 = !DISubprogram(name: "proc_thread_self_init", scope: !4497, file: !4497, line: 253, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4650 = !DISubprogram(name: "proc_symlink", scope: !234, file: !234, line: 82, type: !4651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!4549, !97, !4549, !97}
!4653 = !DISubprogram(name: "proc_net_init", scope: !4497, file: !4497, line: 239, type: !2413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4654 = !DISubprogram(name: "proc_mkdir", scope: !234, file: !234, line: 85, type: !4655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!4549, !97, !4549}
!4657 = !DISubprogram(name: "proc_create_mount_point", scope: !234, file: !234, line: 90, type: !4658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!4549, !97}
!4660 = !DISubprogram(name: "proc_tty_init", scope: !4497, file: !4497, line: 272, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4661 = !DISubprogram(name: "proc_sys_init", scope: !4497, file: !4497, line: 259, type: !2413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4662 = !DISubprogram(name: "register_filesystem", scope: !223, file: !223, line: 2445, type: !4663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!102, !1438}
!4665 = distinct !DISubprogram(name: "proc_init_fs_context", scope: !2, file: !2, line: 244, type: !1445, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4666)
!4666 = !{!4667, !4668}
!4667 = !DILocalVariable(name: "fc", arg: 1, scope: !4665, file: !2, line: 244, type: !1447)
!4668 = !DILocalVariable(name: "ctx", scope: !4665, file: !2, line: 246, type: !4669)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_fs_context", file: !2, line: 29, size: 192, elements: !4671)
!4671 = !{!4672, !4673, !4674, !4675, !4676}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns", scope: !4670, file: !2, line: 30, baseType: !710, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4670, file: !2, line: 31, baseType: !35, size: 32, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "hidepid", scope: !4670, file: !2, line: 32, baseType: !233, size: 32, offset: 96)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4670, file: !2, line: 33, baseType: !102, size: 32, offset: 128)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "pidonly", scope: !4670, file: !2, line: 34, baseType: !240, size: 32, offset: 160)
!4677 = !DILocation(line: 244, column: 52, scope: !4665)
!4678 = !DILocation(line: 246, column: 2, scope: !4665)
!4679 = !DILocation(line: 246, column: 26, scope: !4665)
!4680 = !DILocation(line: 248, column: 8, scope: !4665)
!4681 = !DILocation(line: 248, column: 6, scope: !4665)
!4682 = !DILocation(line: 249, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4665, file: !2, line: 249, column: 6)
!4684 = !DILocation(line: 249, column: 6, scope: !4665)
!4685 = !DILocation(line: 250, column: 3, scope: !4683)
!4686 = !DILocation(line: 252, column: 46, scope: !4665)
!4687 = !DILocation(line: 252, column: 27, scope: !4665)
!4688 = !DILocation(line: 252, column: 16, scope: !4665)
!4689 = !DILocation(line: 252, column: 2, scope: !4665)
!4690 = !DILocation(line: 252, column: 7, scope: !4665)
!4691 = !DILocation(line: 252, column: 14, scope: !4665)
!4692 = !DILocation(line: 253, column: 14, scope: !4665)
!4693 = !DILocation(line: 253, column: 18, scope: !4665)
!4694 = !DILocation(line: 253, column: 2, scope: !4665)
!4695 = !DILocation(line: 254, column: 28, scope: !4665)
!4696 = !DILocation(line: 254, column: 33, scope: !4665)
!4697 = !DILocation(line: 254, column: 41, scope: !4665)
!4698 = !DILocation(line: 254, column: 16, scope: !4665)
!4699 = !DILocation(line: 254, column: 2, scope: !4665)
!4700 = !DILocation(line: 254, column: 6, scope: !4665)
!4701 = !DILocation(line: 254, column: 14, scope: !4665)
!4702 = !DILocation(line: 255, column: 19, scope: !4665)
!4703 = !DILocation(line: 255, column: 2, scope: !4665)
!4704 = !DILocation(line: 255, column: 6, scope: !4665)
!4705 = !DILocation(line: 255, column: 17, scope: !4665)
!4706 = !DILocation(line: 256, column: 2, scope: !4665)
!4707 = !DILocation(line: 256, column: 6, scope: !4665)
!4708 = !DILocation(line: 256, column: 10, scope: !4665)
!4709 = !DILocation(line: 257, column: 2, scope: !4665)
!4710 = !DILocation(line: 258, column: 1, scope: !4665)
!4711 = distinct !DISubprogram(name: "proc_kill_sb", scope: !2, file: !2, line: 260, type: !2695, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4712)
!4712 = !{!4713, !4714}
!4713 = !DILocalVariable(name: "sb", arg: 1, scope: !4711, file: !2, line: 260, type: !1429)
!4714 = !DILocalVariable(name: "fs_info", scope: !4711, file: !2, line: 262, type: !4715)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_fs_info", file: !234, line: 61, size: 320, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4723}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns", scope: !4716, file: !234, line: 62, baseType: !710, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "proc_self", scope: !4716, file: !234, line: 63, baseType: !1193, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "proc_thread_self", scope: !4716, file: !234, line: 64, baseType: !1193, size: 64, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "pid_gid", scope: !4716, file: !234, line: 65, baseType: !779, size: 32, offset: 192)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "hide_pid", scope: !4716, file: !234, line: 66, baseType: !233, size: 32, offset: 224)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "pidonly", scope: !4716, file: !234, line: 67, baseType: !240, size: 32, offset: 256)
!4724 = !DILocation(line: 260, column: 46, scope: !4711)
!4725 = !DILocation(line: 262, column: 2, scope: !4711)
!4726 = !DILocation(line: 262, column: 23, scope: !4711)
!4727 = !DILocation(line: 262, column: 46, scope: !4711)
!4728 = !DILocation(line: 262, column: 33, scope: !4711)
!4729 = !DILocation(line: 264, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4711, file: !2, line: 264, column: 6)
!4731 = !DILocation(line: 264, column: 6, scope: !4711)
!4732 = !DILocation(line: 265, column: 19, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4730, file: !2, line: 264, column: 16)
!4734 = !DILocation(line: 265, column: 3, scope: !4733)
!4735 = !DILocation(line: 266, column: 3, scope: !4733)
!4736 = !DILocation(line: 269, column: 7, scope: !4711)
!4737 = !DILocation(line: 269, column: 16, scope: !4711)
!4738 = !DILocation(line: 269, column: 2, scope: !4711)
!4739 = !DILocation(line: 270, column: 7, scope: !4711)
!4740 = !DILocation(line: 270, column: 16, scope: !4711)
!4741 = !DILocation(line: 270, column: 2, scope: !4711)
!4742 = !DILocation(line: 272, column: 18, scope: !4711)
!4743 = !DILocation(line: 272, column: 2, scope: !4711)
!4744 = !DILocation(line: 273, column: 13, scope: !4711)
!4745 = !DILocation(line: 273, column: 22, scope: !4711)
!4746 = !DILocation(line: 273, column: 2, scope: !4711)
!4747 = !DILocation(line: 274, column: 8, scope: !4711)
!4748 = !DILocation(line: 274, column: 2, scope: !4711)
!4749 = !DILocation(line: 275, column: 1, scope: !4711)
!4750 = distinct !DISubprogram(name: "kzalloc", scope: !250, file: !250, line: 719, type: !4751, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4753)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!100, !115, !273}
!4753 = !{!4754, !4755}
!4754 = !DILocalVariable(name: "size", arg: 1, scope: !4750, file: !250, line: 719, type: !115)
!4755 = !DILocalVariable(name: "flags", arg: 2, scope: !4750, file: !250, line: 719, type: !273)
!4756 = !DILocation(line: 719, column: 52, scope: !4750)
!4757 = !DILocation(line: 719, column: 64, scope: !4750)
!4758 = !DILocation(line: 721, column: 17, scope: !4750)
!4759 = !DILocation(line: 721, column: 23, scope: !4750)
!4760 = !DILocation(line: 721, column: 29, scope: !4750)
!4761 = !DILocation(line: 721, column: 9, scope: !4750)
!4762 = !DILocation(line: 721, column: 2, scope: !4750)
!4763 = distinct !DISubprogram(name: "get_pid_ns", scope: !712, file: !712, line: 51, type: !4764, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4766)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!710, !710}
!4766 = !{!4767}
!4767 = !DILocalVariable(name: "ns", arg: 1, scope: !4763, file: !712, line: 51, type: !710)
!4768 = !DILocation(line: 51, column: 70, scope: !4763)
!4769 = !DILocation(line: 53, column: 6, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4763, file: !712, line: 53, column: 6)
!4771 = !DILocation(line: 53, column: 9, scope: !4770)
!4772 = !DILocation(line: 53, column: 6, scope: !4763)
!4773 = !DILocation(line: 54, column: 17, scope: !4770)
!4774 = !DILocation(line: 54, column: 21, scope: !4770)
!4775 = !DILocation(line: 54, column: 24, scope: !4770)
!4776 = !DILocation(line: 54, column: 3, scope: !4770)
!4777 = !DILocation(line: 55, column: 9, scope: !4763)
!4778 = !DILocation(line: 55, column: 2, scope: !4763)
!4779 = !DISubprogram(name: "task_active_pid_ns", scope: !712, file: !712, line: 117, type: !4780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!710, !275}
!4782 = distinct !DISubprogram(name: "get_current", scope: !4783, file: !4783, line: 39, type: !4784, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4786)
!4783 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!275}
!4786 = !{!4787, !4789, !4791}
!4787 = !DILocalVariable(name: "pscr_ret__", scope: !4788, file: !4783, line: 41, type: !275)
!4788 = distinct !DILexicalBlock(scope: !4782, file: !4783, line: 41, column: 9)
!4789 = !DILocalVariable(name: "__vpp_verify", scope: !4790, file: !4783, line: 41, type: !2162)
!4790 = distinct !DILexicalBlock(scope: !4788, file: !4783, line: 41, column: 9)
!4791 = !DILocalVariable(name: "pfo_val__", scope: !4792, file: !4783, line: 41, type: !343)
!4792 = distinct !DILexicalBlock(scope: !4788, file: !4783, line: 41, column: 9)
!4793 = !DILocation(line: 41, column: 9, scope: !4788)
!4794 = !DILocation(line: 41, column: 9, scope: !4790)
!4795 = !DILocation(line: 41, column: 9, scope: !4792)
!4796 = !{i64 2148403900}
!4797 = !DILocation(line: 41, column: 9, scope: !4782)
!4798 = !DILocation(line: 41, column: 2, scope: !4782)
!4799 = distinct !DISubprogram(name: "put_user_ns", scope: !742, file: !742, line: 203, type: !4800, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{null, !740}
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "ns", arg: 1, scope: !4799, file: !742, line: 203, type: !740)
!4804 = !DILocation(line: 203, column: 55, scope: !4799)
!4805 = !DILocation(line: 205, column: 1, scope: !4799)
!4806 = distinct !DISubprogram(name: "get_user_ns", scope: !742, file: !742, line: 185, type: !4807, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!740, !740}
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "ns", arg: 1, scope: !4806, file: !742, line: 185, type: !740)
!4811 = !DILocation(line: 185, column: 73, scope: !4806)
!4812 = !DILocation(line: 187, column: 2, scope: !4806)
!4813 = distinct !DISubprogram(name: "kmalloc", scope: !250, file: !250, line: 591, type: !4751, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4814)
!4814 = !{!4815, !4816, !4817}
!4815 = !DILocalVariable(name: "size", arg: 1, scope: !4813, file: !250, line: 591, type: !115)
!4816 = !DILocalVariable(name: "flags", arg: 2, scope: !4813, file: !250, line: 591, type: !273)
!4817 = !DILocalVariable(name: "index", scope: !4818, file: !250, line: 594, type: !35)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !250, line: 593, column: 42)
!4819 = distinct !DILexicalBlock(scope: !4813, file: !250, line: 593, column: 6)
!4820 = !DILocation(line: 591, column: 61, scope: !4813)
!4821 = !DILocation(line: 591, column: 73, scope: !4813)
!4822 = !DILocation(line: 593, column: 27, scope: !4819)
!4823 = !DILocation(line: 593, column: 6, scope: !4819)
!4824 = !DILocation(line: 593, column: 33, scope: !4819)
!4825 = !DILocation(line: 593, column: 36, scope: !4819)
!4826 = !DILocation(line: 593, column: 6, scope: !4813)
!4827 = !DILocation(line: 594, column: 3, scope: !4818)
!4828 = !DILocation(line: 594, column: 16, scope: !4818)
!4829 = !DILocation(line: 596, column: 7, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4818, file: !250, line: 596, column: 7)
!4831 = !DILocation(line: 596, column: 12, scope: !4830)
!4832 = !DILocation(line: 596, column: 7, scope: !4818)
!4833 = !DILocation(line: 597, column: 25, scope: !4830)
!4834 = !DILocation(line: 597, column: 31, scope: !4830)
!4835 = !DILocation(line: 597, column: 11, scope: !4830)
!4836 = !DILocation(line: 597, column: 4, scope: !4830)
!4837 = !DILocation(line: 599, column: 11, scope: !4818)
!4838 = !DILocation(line: 599, column: 9, scope: !4818)
!4839 = !DILocation(line: 601, column: 33, scope: !4818)
!4840 = !DILocation(line: 601, column: 40, scope: !4818)
!4841 = !DILocation(line: 601, column: 20, scope: !4818)
!4842 = !DILocation(line: 601, column: 5, scope: !4818)
!4843 = !DILocation(line: 601, column: 51, scope: !4818)
!4844 = !DILocation(line: 602, column: 5, scope: !4818)
!4845 = !DILocation(line: 602, column: 12, scope: !4818)
!4846 = !DILocation(line: 600, column: 10, scope: !4818)
!4847 = !DILocation(line: 600, column: 3, scope: !4818)
!4848 = !DILocation(line: 603, column: 2, scope: !4819)
!4849 = !DILocation(line: 604, column: 19, scope: !4813)
!4850 = !DILocation(line: 604, column: 25, scope: !4813)
!4851 = !DILocation(line: 604, column: 9, scope: !4813)
!4852 = !DILocation(line: 604, column: 2, scope: !4813)
!4853 = !DILocation(line: 605, column: 1, scope: !4813)
!4854 = !DISubprogram(name: "kmalloc_large", scope: !250, file: !250, line: 531, type: !4751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4855 = distinct !DISubprogram(name: "__kmalloc_index", scope: !250, file: !250, line: 444, type: !4856, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !4858)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!35, !115, !948}
!4858 = !{!4859, !4860}
!4859 = !DILocalVariable(name: "size", arg: 1, scope: !4855, file: !250, line: 444, type: !115)
!4860 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4855, file: !250, line: 445, type: !948)
!4861 = !DILocation(line: 444, column: 60, scope: !4855)
!4862 = !DILocation(line: 445, column: 16, scope: !4855)
!4863 = !DILocation(line: 447, column: 7, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 447, column: 6)
!4865 = !DILocation(line: 447, column: 6, scope: !4855)
!4866 = !DILocation(line: 448, column: 3, scope: !4864)
!4867 = !DILocation(line: 450, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 450, column: 6)
!4869 = !DILocation(line: 450, column: 11, scope: !4868)
!4870 = !DILocation(line: 450, column: 6, scope: !4855)
!4871 = !DILocation(line: 451, column: 3, scope: !4868)
!4872 = !DILocation(line: 453, column: 32, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 453, column: 6)
!4874 = !DILocation(line: 453, column: 37, scope: !4873)
!4875 = !DILocation(line: 453, column: 42, scope: !4873)
!4876 = !DILocation(line: 453, column: 45, scope: !4873)
!4877 = !DILocation(line: 453, column: 50, scope: !4873)
!4878 = !DILocation(line: 453, column: 6, scope: !4855)
!4879 = !DILocation(line: 454, column: 3, scope: !4873)
!4880 = !DILocation(line: 455, column: 32, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 455, column: 6)
!4882 = !DILocation(line: 455, column: 37, scope: !4881)
!4883 = !DILocation(line: 455, column: 43, scope: !4881)
!4884 = !DILocation(line: 455, column: 46, scope: !4881)
!4885 = !DILocation(line: 455, column: 51, scope: !4881)
!4886 = !DILocation(line: 455, column: 6, scope: !4855)
!4887 = !DILocation(line: 456, column: 3, scope: !4881)
!4888 = !DILocation(line: 457, column: 6, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 457, column: 6)
!4890 = !DILocation(line: 457, column: 11, scope: !4889)
!4891 = !DILocation(line: 457, column: 6, scope: !4855)
!4892 = !DILocation(line: 457, column: 26, scope: !4889)
!4893 = !DILocation(line: 458, column: 6, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 458, column: 6)
!4895 = !DILocation(line: 458, column: 11, scope: !4894)
!4896 = !DILocation(line: 458, column: 6, scope: !4855)
!4897 = !DILocation(line: 458, column: 26, scope: !4894)
!4898 = !DILocation(line: 459, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 459, column: 6)
!4900 = !DILocation(line: 459, column: 11, scope: !4899)
!4901 = !DILocation(line: 459, column: 6, scope: !4855)
!4902 = !DILocation(line: 459, column: 26, scope: !4899)
!4903 = !DILocation(line: 460, column: 6, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 460, column: 6)
!4905 = !DILocation(line: 460, column: 11, scope: !4904)
!4906 = !DILocation(line: 460, column: 6, scope: !4855)
!4907 = !DILocation(line: 460, column: 26, scope: !4904)
!4908 = !DILocation(line: 461, column: 6, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 461, column: 6)
!4910 = !DILocation(line: 461, column: 11, scope: !4909)
!4911 = !DILocation(line: 461, column: 6, scope: !4855)
!4912 = !DILocation(line: 461, column: 26, scope: !4909)
!4913 = !DILocation(line: 462, column: 6, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 462, column: 6)
!4915 = !DILocation(line: 462, column: 11, scope: !4914)
!4916 = !DILocation(line: 462, column: 6, scope: !4855)
!4917 = !DILocation(line: 462, column: 26, scope: !4914)
!4918 = !DILocation(line: 463, column: 6, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 463, column: 6)
!4920 = !DILocation(line: 463, column: 11, scope: !4919)
!4921 = !DILocation(line: 463, column: 6, scope: !4855)
!4922 = !DILocation(line: 463, column: 26, scope: !4919)
!4923 = !DILocation(line: 464, column: 6, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 464, column: 6)
!4925 = !DILocation(line: 464, column: 11, scope: !4924)
!4926 = !DILocation(line: 464, column: 6, scope: !4855)
!4927 = !DILocation(line: 464, column: 26, scope: !4924)
!4928 = !DILocation(line: 465, column: 6, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 465, column: 6)
!4930 = !DILocation(line: 465, column: 11, scope: !4929)
!4931 = !DILocation(line: 465, column: 6, scope: !4855)
!4932 = !DILocation(line: 465, column: 26, scope: !4929)
!4933 = !DILocation(line: 466, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 466, column: 6)
!4935 = !DILocation(line: 466, column: 11, scope: !4934)
!4936 = !DILocation(line: 466, column: 6, scope: !4855)
!4937 = !DILocation(line: 466, column: 26, scope: !4934)
!4938 = !DILocation(line: 467, column: 6, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 467, column: 6)
!4940 = !DILocation(line: 467, column: 11, scope: !4939)
!4941 = !DILocation(line: 467, column: 6, scope: !4855)
!4942 = !DILocation(line: 467, column: 26, scope: !4939)
!4943 = !DILocation(line: 468, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 468, column: 6)
!4945 = !DILocation(line: 468, column: 11, scope: !4944)
!4946 = !DILocation(line: 468, column: 6, scope: !4855)
!4947 = !DILocation(line: 468, column: 26, scope: !4944)
!4948 = !DILocation(line: 469, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 469, column: 6)
!4950 = !DILocation(line: 469, column: 11, scope: !4949)
!4951 = !DILocation(line: 469, column: 6, scope: !4855)
!4952 = !DILocation(line: 469, column: 26, scope: !4949)
!4953 = !DILocation(line: 470, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 470, column: 6)
!4955 = !DILocation(line: 470, column: 11, scope: !4954)
!4956 = !DILocation(line: 470, column: 6, scope: !4855)
!4957 = !DILocation(line: 470, column: 26, scope: !4954)
!4958 = !DILocation(line: 471, column: 6, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 471, column: 6)
!4960 = !DILocation(line: 471, column: 11, scope: !4959)
!4961 = !DILocation(line: 471, column: 6, scope: !4855)
!4962 = !DILocation(line: 471, column: 26, scope: !4959)
!4963 = !DILocation(line: 472, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 472, column: 6)
!4965 = !DILocation(line: 472, column: 11, scope: !4964)
!4966 = !DILocation(line: 472, column: 6, scope: !4855)
!4967 = !DILocation(line: 472, column: 26, scope: !4964)
!4968 = !DILocation(line: 473, column: 6, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 473, column: 6)
!4970 = !DILocation(line: 473, column: 11, scope: !4969)
!4971 = !DILocation(line: 473, column: 6, scope: !4855)
!4972 = !DILocation(line: 473, column: 26, scope: !4969)
!4973 = !DILocation(line: 474, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 474, column: 6)
!4975 = !DILocation(line: 474, column: 11, scope: !4974)
!4976 = !DILocation(line: 474, column: 6, scope: !4855)
!4977 = !DILocation(line: 474, column: 27, scope: !4974)
!4978 = !DILocation(line: 475, column: 6, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 475, column: 6)
!4980 = !DILocation(line: 475, column: 11, scope: !4979)
!4981 = !DILocation(line: 475, column: 6, scope: !4855)
!4982 = !DILocation(line: 475, column: 32, scope: !4979)
!4983 = !DILocation(line: 477, column: 50, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4855, file: !250, line: 477, column: 6)
!4985 = !{i8 0, i8 2}
!4986 = !DILocation(line: 477, column: 6, scope: !4855)
!4987 = !DILocation(line: 478, column: 3, scope: !4984)
!4988 = !DILocation(line: 478, column: 3, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !250, line: 478, column: 3)
!4990 = distinct !DILexicalBlock(scope: !4984, file: !250, line: 478, column: 3)
!4991 = !{i32 -2141706867}
!4992 = !DILocation(line: 478, column: 3, scope: !4990)
!4993 = !DILocation(line: 480, column: 3, scope: !4984)
!4994 = !DILocation(line: 480, column: 3, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4984, file: !250, line: 480, column: 3)
!4996 = !DILocation(line: 480, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4995, file: !250, line: 480, column: 3)
!4998 = !DILocation(line: 480, column: 3, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !250, line: 480, column: 3)
!5000 = !{i64 2153260632, i64 2153260661, i64 2153260707, i64 2153260765, i64 2153260819, i64 2153260873, i64 2153260928, i64 2153260959}
!5001 = !DILocation(line: 483, column: 2, scope: !4855)
!5002 = !DILocation(line: 484, column: 1, scope: !4855)
!5003 = !DISubprogram(name: "kmalloc_trace", scope: !250, file: !250, line: 525, type: !5004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!100, !731, !273, !115}
!5006 = distinct !DISubprogram(name: "kmalloc_type", scope: !250, file: !250, line: 401, type: !5007, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!249, !273, !119}
!5009 = !{!5010, !5011}
!5010 = !DILocalVariable(name: "flags", arg: 1, scope: !5006, file: !250, line: 401, type: !273)
!5011 = !DILocalVariable(name: "caller", arg: 2, scope: !5006, file: !250, line: 401, type: !119)
!5012 = !DILocation(line: 401, column: 67, scope: !5006)
!5013 = !DILocation(line: 401, column: 88, scope: !5006)
!5014 = !DILocation(line: 407, column: 6, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5006, file: !250, line: 407, column: 6)
!5016 = !DILocation(line: 407, column: 6, scope: !5006)
!5017 = !DILocation(line: 413, column: 3, scope: !5015)
!5018 = !DILocation(line: 423, column: 38, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5006, file: !250, line: 423, column: 6)
!5020 = !DILocation(line: 423, column: 44, scope: !5019)
!5021 = !DILocation(line: 423, column: 6, scope: !5006)
!5022 = !DILocation(line: 424, column: 3, scope: !5019)
!5023 = !DILocation(line: 426, column: 3, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5006, file: !250, line: 425, column: 6)
!5025 = !DILocation(line: 429, column: 1, scope: !5006)
!5026 = !DISubprogram(name: "__kmalloc", scope: !250, file: !250, line: 488, type: !4751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5027 = !DISubprogram(name: "__compiletime_assert_245", scope: !250, file: !250, line: 478, type: !2645, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5028 = distinct !DISubprogram(name: "refcount_inc", scope: !260, file: !260, line: 265, type: !5029, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5032)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "r", arg: 1, scope: !5028, file: !260, line: 265, type: !5031)
!5034 = !DILocation(line: 265, column: 45, scope: !5028)
!5035 = !DILocation(line: 267, column: 17, scope: !5028)
!5036 = !DILocation(line: 267, column: 2, scope: !5028)
!5037 = !DILocation(line: 268, column: 1, scope: !5028)
!5038 = distinct !DISubprogram(name: "__refcount_inc", scope: !260, file: !260, line: 248, type: !5039, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5041)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{null, !5031, !2439}
!5041 = !{!5042, !5043}
!5042 = !DILocalVariable(name: "r", arg: 1, scope: !5038, file: !260, line: 248, type: !5031)
!5043 = !DILocalVariable(name: "oldp", arg: 2, scope: !5038, file: !260, line: 248, type: !2439)
!5044 = !DILocation(line: 248, column: 47, scope: !5038)
!5045 = !DILocation(line: 248, column: 55, scope: !5038)
!5046 = !DILocation(line: 250, column: 20, scope: !5038)
!5047 = !DILocation(line: 250, column: 23, scope: !5038)
!5048 = !DILocation(line: 250, column: 2, scope: !5038)
!5049 = !DILocation(line: 251, column: 1, scope: !5038)
!5050 = distinct !DISubprogram(name: "__refcount_add", scope: !260, file: !260, line: 191, type: !5051, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5053)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !102, !5031, !2439}
!5053 = !{!5054, !5055, !5056, !5057}
!5054 = !DILocalVariable(name: "i", arg: 1, scope: !5050, file: !260, line: 191, type: !102)
!5055 = !DILocalVariable(name: "r", arg: 2, scope: !5050, file: !260, line: 191, type: !5031)
!5056 = !DILocalVariable(name: "oldp", arg: 3, scope: !5050, file: !260, line: 191, type: !2439)
!5057 = !DILocalVariable(name: "old", scope: !5050, file: !260, line: 193, type: !102)
!5058 = !DILocation(line: 191, column: 39, scope: !5050)
!5059 = !DILocation(line: 191, column: 54, scope: !5050)
!5060 = !DILocation(line: 191, column: 62, scope: !5050)
!5061 = !DILocation(line: 193, column: 2, scope: !5050)
!5062 = !DILocation(line: 193, column: 6, scope: !5050)
!5063 = !DILocation(line: 193, column: 37, scope: !5050)
!5064 = !DILocation(line: 193, column: 41, scope: !5050)
!5065 = !DILocation(line: 193, column: 44, scope: !5050)
!5066 = !DILocation(line: 193, column: 12, scope: !5050)
!5067 = !DILocation(line: 195, column: 6, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5050, file: !260, line: 195, column: 6)
!5069 = !DILocation(line: 195, column: 6, scope: !5050)
!5070 = !DILocation(line: 196, column: 11, scope: !5068)
!5071 = !DILocation(line: 196, column: 4, scope: !5068)
!5072 = !DILocation(line: 196, column: 9, scope: !5068)
!5073 = !DILocation(line: 196, column: 3, scope: !5068)
!5074 = !DILocation(line: 198, column: 6, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5050, file: !260, line: 198, column: 6)
!5076 = !DILocation(line: 198, column: 6, scope: !5050)
!5077 = !DILocation(line: 199, column: 26, scope: !5075)
!5078 = !DILocation(line: 199, column: 3, scope: !5075)
!5079 = !DILocation(line: 200, column: 11, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5075, file: !260, line: 200, column: 11)
!5081 = !DILocation(line: 200, column: 11, scope: !5075)
!5082 = !DILocation(line: 201, column: 26, scope: !5080)
!5083 = !DILocation(line: 201, column: 3, scope: !5080)
!5084 = !DILocation(line: 202, column: 1, scope: !5050)
!5085 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5086, file: !5086, line: 250, type: !5087, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5090)
!5086 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!102, !102, !5089}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!5090 = !{!5091, !5092}
!5091 = !DILocalVariable(name: "i", arg: 1, scope: !5085, file: !5086, line: 250, type: !102)
!5092 = !DILocalVariable(name: "v", arg: 2, scope: !5085, file: !5086, line: 250, type: !5089)
!5093 = !DILocation(line: 250, column: 30, scope: !5085)
!5094 = !DILocation(line: 250, column: 43, scope: !5085)
!5095 = !DILocation(line: 252, column: 31, scope: !5085)
!5096 = !DILocation(line: 252, column: 2, scope: !5085)
!5097 = !DILocation(line: 253, column: 38, scope: !5085)
!5098 = !DILocation(line: 253, column: 41, scope: !5085)
!5099 = !DILocation(line: 253, column: 9, scope: !5085)
!5100 = !DILocation(line: 253, column: 2, scope: !5085)
!5101 = !DISubprogram(name: "refcount_warn_saturate", scope: !260, file: !260, line: 127, type: !5102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !5031, !259}
!5104 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5105, file: !5105, line: 94, type: !5106, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5111)
!5105 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5106 = !DISubroutineType(types: !5107)
!5107 = !{null, !5108, !115}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5110)
!5110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5111 = !{!5112, !5113}
!5112 = !DILocalVariable(name: "v", arg: 1, scope: !5104, file: !5105, line: 94, type: !5108)
!5113 = !DILocalVariable(name: "size", arg: 2, scope: !5104, file: !5105, line: 94, type: !115)
!5114 = !DILocation(line: 94, column: 79, scope: !5104)
!5115 = !DILocation(line: 94, column: 89, scope: !5104)
!5116 = !DILocation(line: 96, column: 20, scope: !5104)
!5117 = !DILocation(line: 96, column: 23, scope: !5104)
!5118 = !DILocation(line: 96, column: 2, scope: !5104)
!5119 = !DILocation(line: 97, column: 2, scope: !5104)
!5120 = !DILocation(line: 98, column: 1, scope: !5104)
!5121 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5122, file: !5122, line: 731, type: !5087, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5123)
!5122 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5123 = !{!5124, !5125}
!5124 = !DILocalVariable(name: "i", arg: 1, scope: !5121, file: !5122, line: 731, type: !102)
!5125 = !DILocalVariable(name: "v", arg: 2, scope: !5121, file: !5122, line: 731, type: !5089)
!5126 = !DILocation(line: 731, column: 34, scope: !5121)
!5127 = !DILocation(line: 731, column: 47, scope: !5121)
!5128 = !DILocation(line: 736, column: 31, scope: !5121)
!5129 = !DILocation(line: 736, column: 34, scope: !5121)
!5130 = !DILocation(line: 736, column: 9, scope: !5121)
!5131 = !DILocation(line: 736, column: 2, scope: !5121)
!5132 = distinct !DISubprogram(name: "kasan_check_write", scope: !5133, file: !5133, line: 44, type: !5134, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5136)
!5133 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!948, !5108, !35}
!5136 = !{!5137, !5138}
!5137 = !DILocalVariable(name: "p", arg: 1, scope: !5132, file: !5133, line: 44, type: !5108)
!5138 = !DILocalVariable(name: "size", arg: 2, scope: !5132, file: !5133, line: 44, type: !35)
!5139 = !DILocation(line: 44, column: 59, scope: !5132)
!5140 = !DILocation(line: 44, column: 75, scope: !5132)
!5141 = !DILocation(line: 46, column: 2, scope: !5132)
!5142 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5143, file: !5143, line: 229, type: !5144, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5146)
!5143 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5144 = !DISubroutineType(types: !5145)
!5145 = !{null, !5108, !115, !102}
!5146 = !{!5147, !5148, !5149}
!5147 = !DILocalVariable(name: "ptr", arg: 1, scope: !5142, file: !5143, line: 229, type: !5108)
!5148 = !DILocalVariable(name: "size", arg: 2, scope: !5142, file: !5143, line: 229, type: !115)
!5149 = !DILocalVariable(name: "type", arg: 3, scope: !5142, file: !5143, line: 230, type: !102)
!5150 = !DILocation(line: 229, column: 60, scope: !5142)
!5151 = !DILocation(line: 229, column: 72, scope: !5142)
!5152 = !DILocation(line: 230, column: 15, scope: !5142)
!5153 = !DILocation(line: 230, column: 23, scope: !5142)
!5154 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5155, file: !5155, line: 95, type: !5087, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5156)
!5155 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5156 = !{!5157, !5158, !5159}
!5157 = !DILocalVariable(name: "i", arg: 1, scope: !5154, file: !5155, line: 95, type: !102)
!5158 = !DILocalVariable(name: "v", arg: 2, scope: !5154, file: !5155, line: 95, type: !5089)
!5159 = !DILocalVariable(name: "__ret", scope: !5160, file: !5155, line: 97, type: !102)
!5160 = distinct !DILexicalBlock(scope: !5154, file: !5155, line: 97, column: 9)
!5161 = !DILocation(line: 95, column: 54, scope: !5154)
!5162 = !DILocation(line: 95, column: 67, scope: !5154)
!5163 = !DILocation(line: 97, column: 9, scope: !5160)
!5164 = !{i64 2148650832, i64 2148650871, i64 2148650892, i64 2148650929, i64 2148650952, i64 2148650961}
!5165 = !DILocation(line: 97, column: 9, scope: !5154)
!5166 = !DILocation(line: 97, column: 2, scope: !5154)
!5167 = distinct !DISubprogram(name: "proc_fs_context_free", scope: !2, file: !2, line: 229, type: !1457, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5168)
!5168 = !{!5169, !5170}
!5169 = !DILocalVariable(name: "fc", arg: 1, scope: !5167, file: !2, line: 229, type: !1447)
!5170 = !DILocalVariable(name: "ctx", scope: !5167, file: !2, line: 231, type: !4669)
!5171 = !DILocation(line: 229, column: 53, scope: !5167)
!5172 = !DILocation(line: 231, column: 2, scope: !5167)
!5173 = !DILocation(line: 231, column: 26, scope: !5167)
!5174 = !DILocation(line: 231, column: 32, scope: !5167)
!5175 = !DILocation(line: 231, column: 36, scope: !5167)
!5176 = !DILocation(line: 233, column: 13, scope: !5167)
!5177 = !DILocation(line: 233, column: 18, scope: !5167)
!5178 = !DILocation(line: 233, column: 2, scope: !5167)
!5179 = !DILocation(line: 234, column: 8, scope: !5167)
!5180 = !DILocation(line: 234, column: 2, scope: !5167)
!5181 = !DILocation(line: 235, column: 1, scope: !5167)
!5182 = distinct !DISubprogram(name: "proc_parse_param", scope: !2, file: !2, line: 112, type: !1465, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5183)
!5183 = !{!5184, !5185, !5186, !5187, !5188}
!5184 = !DILocalVariable(name: "fc", arg: 1, scope: !5182, file: !2, line: 112, type: !1447)
!5185 = !DILocalVariable(name: "param", arg: 2, scope: !5182, file: !2, line: 112, type: !1467)
!5186 = !DILocalVariable(name: "ctx", scope: !5182, file: !2, line: 114, type: !4669)
!5187 = !DILocalVariable(name: "result", scope: !5182, file: !2, line: 115, type: !2676)
!5188 = !DILocalVariable(name: "opt", scope: !5182, file: !2, line: 116, type: !102)
!5189 = !DILocation(line: 112, column: 48, scope: !5182)
!5190 = !DILocation(line: 112, column: 73, scope: !5182)
!5191 = !DILocation(line: 114, column: 2, scope: !5182)
!5192 = !DILocation(line: 114, column: 26, scope: !5182)
!5193 = !DILocation(line: 114, column: 32, scope: !5182)
!5194 = !DILocation(line: 114, column: 36, scope: !5182)
!5195 = !DILocation(line: 115, column: 2, scope: !5182)
!5196 = !DILocation(line: 115, column: 25, scope: !5182)
!5197 = !DILocation(line: 116, column: 2, scope: !5182)
!5198 = !DILocation(line: 116, column: 6, scope: !5182)
!5199 = !DILocation(line: 118, column: 17, scope: !5182)
!5200 = !DILocation(line: 118, column: 41, scope: !5182)
!5201 = !DILocation(line: 118, column: 8, scope: !5182)
!5202 = !DILocation(line: 118, column: 6, scope: !5182)
!5203 = !DILocation(line: 119, column: 6, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 119, column: 6)
!5205 = !DILocation(line: 119, column: 10, scope: !5204)
!5206 = !DILocation(line: 119, column: 6, scope: !5182)
!5207 = !DILocation(line: 120, column: 10, scope: !5204)
!5208 = !DILocation(line: 120, column: 3, scope: !5204)
!5209 = !DILocation(line: 122, column: 10, scope: !5182)
!5210 = !DILocation(line: 122, column: 2, scope: !5182)
!5211 = !DILocation(line: 124, column: 21, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 122, column: 15)
!5213 = !DILocation(line: 124, column: 3, scope: !5212)
!5214 = !DILocation(line: 124, column: 8, scope: !5212)
!5215 = !DILocation(line: 124, column: 12, scope: !5212)
!5216 = !DILocation(line: 125, column: 3, scope: !5212)
!5217 = !DILocation(line: 128, column: 32, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 128, column: 7)
!5219 = !DILocation(line: 128, column: 36, scope: !5218)
!5220 = !DILocation(line: 128, column: 7, scope: !5218)
!5221 = !DILocation(line: 128, column: 7, scope: !5212)
!5222 = !DILocation(line: 129, column: 4, scope: !5218)
!5223 = !DILocation(line: 130, column: 3, scope: !5212)
!5224 = !DILocation(line: 133, column: 31, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 133, column: 7)
!5226 = !DILocation(line: 133, column: 35, scope: !5225)
!5227 = !DILocation(line: 133, column: 42, scope: !5225)
!5228 = !DILocation(line: 133, column: 7, scope: !5225)
!5229 = !DILocation(line: 133, column: 50, scope: !5225)
!5230 = !DILocation(line: 133, column: 7, scope: !5212)
!5231 = !DILocation(line: 134, column: 4, scope: !5225)
!5232 = !DILocation(line: 135, column: 3, scope: !5212)
!5233 = !DILocation(line: 138, column: 3, scope: !5212)
!5234 = !DILocation(line: 141, column: 20, scope: !5182)
!5235 = !DILocation(line: 141, column: 17, scope: !5182)
!5236 = !DILocation(line: 141, column: 2, scope: !5182)
!5237 = !DILocation(line: 141, column: 7, scope: !5182)
!5238 = !DILocation(line: 141, column: 12, scope: !5182)
!5239 = !DILocation(line: 142, column: 2, scope: !5182)
!5240 = !DILocation(line: 143, column: 1, scope: !5182)
!5241 = distinct !DISubprogram(name: "proc_get_tree", scope: !2, file: !2, line: 224, type: !1445, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5242)
!5242 = !{!5243}
!5243 = !DILocalVariable(name: "fc", arg: 1, scope: !5241, file: !2, line: 224, type: !1447)
!5244 = !DILocation(line: 224, column: 45, scope: !5241)
!5245 = !DILocation(line: 226, column: 24, scope: !5241)
!5246 = !DILocation(line: 226, column: 9, scope: !5241)
!5247 = !DILocation(line: 226, column: 2, scope: !5241)
!5248 = distinct !DISubprogram(name: "proc_reconfigure", scope: !2, file: !2, line: 213, type: !1445, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5249)
!5249 = !{!5250, !5251, !5252}
!5250 = !DILocalVariable(name: "fc", arg: 1, scope: !5248, file: !2, line: 213, type: !1447)
!5251 = !DILocalVariable(name: "sb", scope: !5248, file: !2, line: 215, type: !1429)
!5252 = !DILocalVariable(name: "fs_info", scope: !5248, file: !2, line: 216, type: !4715)
!5253 = !DILocation(line: 213, column: 48, scope: !5248)
!5254 = !DILocation(line: 215, column: 2, scope: !5248)
!5255 = !DILocation(line: 215, column: 22, scope: !5248)
!5256 = !DILocation(line: 215, column: 27, scope: !5248)
!5257 = !DILocation(line: 215, column: 31, scope: !5248)
!5258 = !DILocation(line: 215, column: 37, scope: !5248)
!5259 = !DILocation(line: 216, column: 2, scope: !5248)
!5260 = !DILocation(line: 216, column: 23, scope: !5248)
!5261 = !DILocation(line: 216, column: 46, scope: !5248)
!5262 = !DILocation(line: 216, column: 33, scope: !5248)
!5263 = !DILocation(line: 218, column: 18, scope: !5248)
!5264 = !DILocation(line: 218, column: 2, scope: !5248)
!5265 = !DILocation(line: 220, column: 21, scope: !5248)
!5266 = !DILocation(line: 220, column: 30, scope: !5248)
!5267 = !DILocation(line: 220, column: 34, scope: !5248)
!5268 = !DILocation(line: 220, column: 2, scope: !5248)
!5269 = !DILocation(line: 222, column: 1, scope: !5248)
!5270 = !DILocation(line: 221, column: 2, scope: !5248)
!5271 = !DISubprogram(name: "put_pid_ns", scope: !712, file: !712, line: 79, type: !5272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !710}
!5274 = !DISubprogram(name: "kfree", scope: !250, file: !250, line: 227, type: !5275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !2162}
!5277 = distinct !DISubprogram(name: "fs_parse", scope: !2666, file: !2666, line: 68, type: !5278, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!102, !1447, !2663, !1467, !2675}
!5280 = !{!5281, !5282, !5283, !5284}
!5281 = !DILocalVariable(name: "fc", arg: 1, scope: !5277, file: !2666, line: 68, type: !1447)
!5282 = !DILocalVariable(name: "desc", arg: 2, scope: !5277, file: !2666, line: 69, type: !2663)
!5283 = !DILocalVariable(name: "param", arg: 3, scope: !5277, file: !2666, line: 70, type: !1467)
!5284 = !DILocalVariable(name: "result", arg: 4, scope: !5277, file: !2666, line: 71, type: !2675)
!5285 = !DILocation(line: 68, column: 47, scope: !5277)
!5286 = !DILocation(line: 69, column: 39, scope: !5277)
!5287 = !DILocation(line: 70, column: 28, scope: !5277)
!5288 = !DILocation(line: 71, column: 31, scope: !5277)
!5289 = !DILocation(line: 73, column: 21, scope: !5277)
!5290 = !DILocation(line: 73, column: 25, scope: !5277)
!5291 = !DILocation(line: 73, column: 30, scope: !5277)
!5292 = !DILocation(line: 73, column: 36, scope: !5277)
!5293 = !DILocation(line: 73, column: 43, scope: !5277)
!5294 = !DILocation(line: 73, column: 9, scope: !5277)
!5295 = !DILocation(line: 73, column: 2, scope: !5277)
!5296 = distinct !DISubprogram(name: "proc_parse_hidepid_param", scope: !2, file: !2, line: 58, type: !1465, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5297)
!5297 = !{!5298, !5299, !5300, !5301, !5302, !5303}
!5298 = !DILocalVariable(name: "fc", arg: 1, scope: !5296, file: !2, line: 58, type: !1447)
!5299 = !DILocalVariable(name: "param", arg: 2, scope: !5296, file: !2, line: 58, type: !1467)
!5300 = !DILocalVariable(name: "ctx", scope: !5296, file: !2, line: 60, type: !4669)
!5301 = !DILocalVariable(name: "hidepid_u32_spec", scope: !5296, file: !2, line: 61, type: !2665)
!5302 = !DILocalVariable(name: "result", scope: !5296, file: !2, line: 62, type: !2676)
!5303 = !DILocalVariable(name: "base", scope: !5296, file: !2, line: 63, type: !102)
!5304 = !DILocation(line: 58, column: 56, scope: !5296)
!5305 = !DILocation(line: 58, column: 81, scope: !5296)
!5306 = !DILocation(line: 60, column: 2, scope: !5296)
!5307 = !DILocation(line: 60, column: 26, scope: !5296)
!5308 = !DILocation(line: 60, column: 32, scope: !5296)
!5309 = !DILocation(line: 60, column: 36, scope: !5296)
!5310 = !DILocation(line: 61, column: 2, scope: !5296)
!5311 = !DILocation(line: 61, column: 27, scope: !5296)
!5312 = !DILocation(line: 62, column: 2, scope: !5296)
!5313 = !DILocation(line: 62, column: 25, scope: !5296)
!5314 = !DILocation(line: 63, column: 2, scope: !5296)
!5315 = !DILocation(line: 63, column: 6, scope: !5296)
!5316 = !DILocation(line: 63, column: 45, scope: !5296)
!5317 = !DILocation(line: 63, column: 13, scope: !5296)
!5318 = !DILocation(line: 65, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 65, column: 6)
!5320 = !DILocation(line: 65, column: 13, scope: !5319)
!5321 = !DILocation(line: 65, column: 18, scope: !5319)
!5322 = !DILocation(line: 65, column: 6, scope: !5296)
!5323 = !DILocation(line: 66, column: 10, scope: !5319)
!5324 = !DILocation(line: 66, column: 3, scope: !5319)
!5325 = !DILocation(line: 68, column: 18, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 68, column: 6)
!5327 = !DILocation(line: 68, column: 25, scope: !5326)
!5328 = !DILocation(line: 68, column: 33, scope: !5326)
!5329 = !DILocation(line: 68, column: 47, scope: !5326)
!5330 = !DILocation(line: 68, column: 7, scope: !5326)
!5331 = !DILocation(line: 68, column: 6, scope: !5296)
!5332 = !DILocation(line: 69, column: 29, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !2, line: 69, column: 7)
!5334 = distinct !DILexicalBlock(scope: !5326, file: !2, line: 68, column: 57)
!5335 = !DILocation(line: 69, column: 8, scope: !5333)
!5336 = !DILocation(line: 69, column: 7, scope: !5334)
!5337 = !DILocation(line: 70, column: 11, scope: !5333)
!5338 = !DILocation(line: 70, column: 4, scope: !5333)
!5339 = !DILocation(line: 71, column: 25, scope: !5334)
!5340 = !DILocation(line: 71, column: 3, scope: !5334)
!5341 = !DILocation(line: 71, column: 8, scope: !5334)
!5342 = !DILocation(line: 71, column: 16, scope: !5334)
!5343 = !DILocation(line: 72, column: 3, scope: !5334)
!5344 = !DILocation(line: 75, column: 14, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 75, column: 6)
!5346 = !DILocation(line: 75, column: 21, scope: !5345)
!5347 = !DILocation(line: 75, column: 7, scope: !5345)
!5348 = !DILocation(line: 75, column: 6, scope: !5296)
!5349 = !DILocation(line: 76, column: 3, scope: !5345)
!5350 = !DILocation(line: 76, column: 8, scope: !5345)
!5351 = !DILocation(line: 76, column: 16, scope: !5345)
!5352 = !DILocation(line: 77, column: 19, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 77, column: 11)
!5354 = !DILocation(line: 77, column: 26, scope: !5353)
!5355 = !DILocation(line: 77, column: 12, scope: !5353)
!5356 = !DILocation(line: 77, column: 11, scope: !5345)
!5357 = !DILocation(line: 78, column: 3, scope: !5353)
!5358 = !DILocation(line: 78, column: 8, scope: !5353)
!5359 = !DILocation(line: 78, column: 16, scope: !5353)
!5360 = !DILocation(line: 79, column: 19, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5353, file: !2, line: 79, column: 11)
!5362 = !DILocation(line: 79, column: 26, scope: !5361)
!5363 = !DILocation(line: 79, column: 12, scope: !5361)
!5364 = !DILocation(line: 79, column: 11, scope: !5353)
!5365 = !DILocation(line: 80, column: 3, scope: !5361)
!5366 = !DILocation(line: 80, column: 8, scope: !5361)
!5367 = !DILocation(line: 80, column: 16, scope: !5361)
!5368 = !DILocation(line: 81, column: 19, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5361, file: !2, line: 81, column: 11)
!5370 = !DILocation(line: 81, column: 26, scope: !5369)
!5371 = !DILocation(line: 81, column: 12, scope: !5369)
!5372 = !DILocation(line: 81, column: 11, scope: !5361)
!5373 = !DILocation(line: 82, column: 3, scope: !5369)
!5374 = !DILocation(line: 82, column: 8, scope: !5369)
!5375 = !DILocation(line: 82, column: 16, scope: !5369)
!5376 = !DILocation(line: 84, column: 10, scope: !5369)
!5377 = !DILocation(line: 84, column: 3, scope: !5369)
!5378 = !DILocation(line: 86, column: 2, scope: !5296)
!5379 = !DILocation(line: 87, column: 1, scope: !5296)
!5380 = distinct !DISubprogram(name: "proc_parse_subset_param", scope: !2, file: !2, line: 89, type: !5381, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5383)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!102, !1447, !959}
!5383 = !{!5384, !5385, !5386, !5387}
!5384 = !DILocalVariable(name: "fc", arg: 1, scope: !5380, file: !2, line: 89, type: !1447)
!5385 = !DILocalVariable(name: "value", arg: 2, scope: !5380, file: !2, line: 89, type: !959)
!5386 = !DILocalVariable(name: "ctx", scope: !5380, file: !2, line: 91, type: !4669)
!5387 = !DILocalVariable(name: "ptr", scope: !5388, file: !2, line: 94, type: !959)
!5388 = distinct !DILexicalBlock(scope: !5380, file: !2, line: 93, column: 16)
!5389 = !DILocation(line: 89, column: 55, scope: !5380)
!5390 = !DILocation(line: 89, column: 65, scope: !5380)
!5391 = !DILocation(line: 91, column: 2, scope: !5380)
!5392 = !DILocation(line: 91, column: 26, scope: !5380)
!5393 = !DILocation(line: 91, column: 32, scope: !5380)
!5394 = !DILocation(line: 91, column: 36, scope: !5380)
!5395 = !DILocation(line: 93, column: 2, scope: !5380)
!5396 = !DILocation(line: 93, column: 9, scope: !5380)
!5397 = !DILocation(line: 94, column: 3, scope: !5388)
!5398 = !DILocation(line: 94, column: 9, scope: !5388)
!5399 = !DILocation(line: 94, column: 22, scope: !5388)
!5400 = !DILocation(line: 94, column: 15, scope: !5388)
!5401 = !DILocation(line: 96, column: 7, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5388, file: !2, line: 96, column: 7)
!5403 = !DILocation(line: 96, column: 11, scope: !5402)
!5404 = !DILocation(line: 96, column: 7, scope: !5388)
!5405 = !DILocation(line: 97, column: 8, scope: !5402)
!5406 = !DILocation(line: 97, column: 11, scope: !5402)
!5407 = !DILocation(line: 97, column: 4, scope: !5402)
!5408 = !DILocation(line: 99, column: 8, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5388, file: !2, line: 99, column: 7)
!5410 = !DILocation(line: 99, column: 7, scope: !5409)
!5411 = !DILocation(line: 99, column: 14, scope: !5409)
!5412 = !DILocation(line: 99, column: 7, scope: !5388)
!5413 = !DILocation(line: 100, column: 16, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !2, line: 100, column: 8)
!5415 = distinct !DILexicalBlock(scope: !5409, file: !2, line: 99, column: 23)
!5416 = !DILocation(line: 100, column: 9, scope: !5414)
!5417 = !DILocation(line: 100, column: 8, scope: !5415)
!5418 = !DILocation(line: 101, column: 5, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 100, column: 31)
!5420 = !DILocation(line: 101, column: 10, scope: !5419)
!5421 = !DILocation(line: 101, column: 18, scope: !5419)
!5422 = !DILocation(line: 102, column: 4, scope: !5419)
!5423 = !DILocation(line: 103, column: 12, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 102, column: 11)
!5425 = !DILocation(line: 103, column: 5, scope: !5424)
!5426 = !DILocation(line: 105, column: 3, scope: !5415)
!5427 = !DILocation(line: 106, column: 11, scope: !5388)
!5428 = !DILocation(line: 106, column: 9, scope: !5388)
!5429 = !DILocation(line: 107, column: 2, scope: !5380)
!5430 = distinct !{!5430, !5395, !5429, !5431, !5432}
!5431 = !{!"llvm.loop.mustprogress"}
!5432 = !{!"llvm.loop.unroll.disable"}
!5433 = !DILocation(line: 109, column: 2, scope: !5380)
!5434 = !DILocation(line: 110, column: 1, scope: !5380)
!5435 = !DISubprogram(name: "__fs_parse", scope: !2666, file: !2666, line: 63, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5436 = !DISubprogram(name: "logfc", scope: !34, file: !34, line: 183, type: !5437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{null, !1511, !97, !4, !97, null}
!5439 = !DISubprogram(name: "kstrtouint", scope: !5440, file: !5440, line: 71, type: !5441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5440 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!102, !97, !35, !2393}
!5443 = distinct !DISubprogram(name: "valid_hidepid", scope: !2, file: !2, line: 50, type: !5444, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5446)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!102, !35}
!5446 = !{!5447}
!5447 = !DILocalVariable(name: "value", arg: 1, scope: !5443, file: !2, line: 50, type: !35)
!5448 = !DILocation(line: 50, column: 46, scope: !5443)
!5449 = !DILocation(line: 52, column: 10, scope: !5443)
!5450 = !DILocation(line: 52, column: 16, scope: !5443)
!5451 = !DILocation(line: 52, column: 31, scope: !5443)
!5452 = !DILocation(line: 53, column: 3, scope: !5443)
!5453 = !DILocation(line: 53, column: 9, scope: !5443)
!5454 = !DILocation(line: 53, column: 30, scope: !5443)
!5455 = !DILocation(line: 54, column: 3, scope: !5443)
!5456 = !DILocation(line: 54, column: 9, scope: !5443)
!5457 = !DILocation(line: 54, column: 30, scope: !5443)
!5458 = !DILocation(line: 55, column: 3, scope: !5443)
!5459 = !DILocation(line: 55, column: 9, scope: !5443)
!5460 = !DILocation(line: 52, column: 2, scope: !5443)
!5461 = !DISubprogram(name: "strcmp", scope: !5462, file: !5462, line: 88, type: !5463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5462 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!102, !97, !97}
!5465 = !DISubprogram(name: "strchr", scope: !5462, file: !5462, line: 100, type: !5466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!959, !97, !102}
!5468 = !DISubprogram(name: "get_tree_nodev", scope: !34, file: !34, line: 150, type: !5469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!102, !1447, !5471}
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!102, !1429, !1447}
!5474 = distinct !DISubprogram(name: "proc_fill_super", scope: !2, file: !2, line: 159, type: !5472, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5475)
!5475 = !{!5476, !5477, !5478, !5479, !5480, !5481}
!5476 = !DILocalVariable(name: "s", arg: 1, scope: !5474, file: !2, line: 159, type: !1429)
!5477 = !DILocalVariable(name: "fc", arg: 2, scope: !5474, file: !2, line: 159, type: !1447)
!5478 = !DILocalVariable(name: "ctx", scope: !5474, file: !2, line: 161, type: !4669)
!5479 = !DILocalVariable(name: "root_inode", scope: !5474, file: !2, line: 162, type: !1228)
!5480 = !DILocalVariable(name: "fs_info", scope: !5474, file: !2, line: 163, type: !4715)
!5481 = !DILocalVariable(name: "ret", scope: !5474, file: !2, line: 164, type: !102)
!5482 = !DILocation(line: 159, column: 48, scope: !5474)
!5483 = !DILocation(line: 159, column: 70, scope: !5474)
!5484 = !DILocation(line: 161, column: 2, scope: !5474)
!5485 = !DILocation(line: 161, column: 26, scope: !5474)
!5486 = !DILocation(line: 161, column: 32, scope: !5474)
!5487 = !DILocation(line: 161, column: 36, scope: !5474)
!5488 = !DILocation(line: 162, column: 2, scope: !5474)
!5489 = !DILocation(line: 162, column: 16, scope: !5474)
!5490 = !DILocation(line: 163, column: 2, scope: !5474)
!5491 = !DILocation(line: 163, column: 23, scope: !5474)
!5492 = !DILocation(line: 164, column: 2, scope: !5474)
!5493 = !DILocation(line: 164, column: 6, scope: !5474)
!5494 = !DILocation(line: 166, column: 12, scope: !5474)
!5495 = !DILocation(line: 166, column: 10, scope: !5474)
!5496 = !DILocation(line: 167, column: 7, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5474, file: !2, line: 167, column: 6)
!5498 = !DILocation(line: 167, column: 6, scope: !5474)
!5499 = !DILocation(line: 168, column: 3, scope: !5497)
!5500 = !DILocation(line: 170, column: 31, scope: !5474)
!5501 = !DILocation(line: 170, column: 36, scope: !5474)
!5502 = !DILocation(line: 170, column: 20, scope: !5474)
!5503 = !DILocation(line: 170, column: 2, scope: !5474)
!5504 = !DILocation(line: 170, column: 11, scope: !5474)
!5505 = !DILocation(line: 170, column: 18, scope: !5474)
!5506 = !DILocation(line: 171, column: 21, scope: !5474)
!5507 = !DILocation(line: 171, column: 30, scope: !5474)
!5508 = !DILocation(line: 171, column: 34, scope: !5474)
!5509 = !DILocation(line: 171, column: 2, scope: !5474)
!5510 = !DILocation(line: 174, column: 2, scope: !5474)
!5511 = !DILocation(line: 174, column: 5, scope: !5474)
!5512 = !DILocation(line: 174, column: 14, scope: !5474)
!5513 = !DILocation(line: 175, column: 2, scope: !5474)
!5514 = !DILocation(line: 175, column: 5, scope: !5474)
!5515 = !DILocation(line: 175, column: 13, scope: !5474)
!5516 = !DILocation(line: 176, column: 2, scope: !5474)
!5517 = !DILocation(line: 176, column: 5, scope: !5474)
!5518 = !DILocation(line: 176, column: 17, scope: !5474)
!5519 = !DILocation(line: 177, column: 2, scope: !5474)
!5520 = !DILocation(line: 177, column: 5, scope: !5474)
!5521 = !DILocation(line: 177, column: 22, scope: !5474)
!5522 = !DILocation(line: 178, column: 2, scope: !5474)
!5523 = !DILocation(line: 178, column: 5, scope: !5474)
!5524 = !DILocation(line: 178, column: 13, scope: !5474)
!5525 = !DILocation(line: 179, column: 2, scope: !5474)
!5526 = !DILocation(line: 179, column: 5, scope: !5474)
!5527 = !DILocation(line: 179, column: 10, scope: !5474)
!5528 = !DILocation(line: 180, column: 2, scope: !5474)
!5529 = !DILocation(line: 180, column: 5, scope: !5474)
!5530 = !DILocation(line: 180, column: 17, scope: !5474)
!5531 = !DILocation(line: 181, column: 17, scope: !5474)
!5532 = !DILocation(line: 181, column: 2, scope: !5474)
!5533 = !DILocation(line: 181, column: 5, scope: !5474)
!5534 = !DILocation(line: 181, column: 15, scope: !5474)
!5535 = !DILocation(line: 188, column: 2, scope: !5474)
!5536 = !DILocation(line: 188, column: 5, scope: !5474)
!5537 = !DILocation(line: 188, column: 19, scope: !5474)
!5538 = !DILocation(line: 191, column: 2, scope: !5474)
!5539 = !DILocation(line: 191, column: 5, scope: !5474)
!5540 = !DILocation(line: 191, column: 14, scope: !5474)
!5541 = !DILocation(line: 191, column: 20, scope: !5474)
!5542 = !DILocation(line: 193, column: 2, scope: !5474)
!5543 = !DILocation(line: 194, column: 30, scope: !5474)
!5544 = !DILocation(line: 194, column: 15, scope: !5474)
!5545 = !DILocation(line: 194, column: 13, scope: !5474)
!5546 = !DILocation(line: 195, column: 7, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5474, file: !2, line: 195, column: 6)
!5548 = !DILocation(line: 195, column: 6, scope: !5474)
!5549 = !DILocation(line: 196, column: 3, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5551, file: !2, line: 196, column: 3)
!5551 = distinct !DILexicalBlock(scope: !5547, file: !2, line: 195, column: 19)
!5552 = !DILocation(line: 196, column: 3, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5550, file: !2, line: 196, column: 3)
!5554 = !DILocation(line: 197, column: 3, scope: !5551)
!5555 = !DILocation(line: 200, column: 26, scope: !5474)
!5556 = !DILocation(line: 200, column: 14, scope: !5474)
!5557 = !DILocation(line: 200, column: 2, scope: !5474)
!5558 = !DILocation(line: 200, column: 5, scope: !5474)
!5559 = !DILocation(line: 200, column: 12, scope: !5474)
!5560 = !DILocation(line: 201, column: 7, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5474, file: !2, line: 201, column: 6)
!5562 = !DILocation(line: 201, column: 10, scope: !5561)
!5563 = !DILocation(line: 201, column: 6, scope: !5474)
!5564 = !DILocation(line: 202, column: 3, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !2, line: 202, column: 3)
!5566 = distinct !DILexicalBlock(scope: !5561, file: !2, line: 201, column: 18)
!5567 = !DILocation(line: 202, column: 3, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 202, column: 3)
!5569 = !DILocation(line: 203, column: 3, scope: !5566)
!5570 = !DILocation(line: 206, column: 24, scope: !5474)
!5571 = !DILocation(line: 206, column: 8, scope: !5474)
!5572 = !DILocation(line: 206, column: 6, scope: !5474)
!5573 = !DILocation(line: 207, column: 6, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5474, file: !2, line: 207, column: 6)
!5575 = !DILocation(line: 207, column: 6, scope: !5474)
!5576 = !DILocation(line: 208, column: 10, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5574, file: !2, line: 207, column: 11)
!5578 = !DILocation(line: 208, column: 3, scope: !5577)
!5579 = !DILocation(line: 210, column: 32, scope: !5474)
!5580 = !DILocation(line: 210, column: 9, scope: !5474)
!5581 = !DILocation(line: 210, column: 2, scope: !5474)
!5582 = !DILocation(line: 211, column: 1, scope: !5474)
!5583 = distinct !DISubprogram(name: "proc_apply_options", scope: !2, file: !2, line: 145, type: !5584, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5586)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !4715, !1447, !740}
!5586 = !{!5587, !5588, !5589, !5590}
!5587 = !DILocalVariable(name: "fs_info", arg: 1, scope: !5583, file: !2, line: 145, type: !4715)
!5588 = !DILocalVariable(name: "fc", arg: 2, scope: !5583, file: !2, line: 146, type: !1447)
!5589 = !DILocalVariable(name: "user_ns", arg: 3, scope: !5583, file: !2, line: 147, type: !740)
!5590 = !DILocalVariable(name: "ctx", scope: !5583, file: !2, line: 149, type: !4669)
!5591 = !DILocation(line: 145, column: 53, scope: !5583)
!5592 = !DILocation(line: 146, column: 30, scope: !5583)
!5593 = !DILocation(line: 147, column: 34, scope: !5583)
!5594 = !DILocation(line: 149, column: 2, scope: !5583)
!5595 = !DILocation(line: 149, column: 26, scope: !5583)
!5596 = !DILocation(line: 149, column: 32, scope: !5583)
!5597 = !DILocation(line: 149, column: 36, scope: !5583)
!5598 = !DILocation(line: 151, column: 6, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 151, column: 6)
!5600 = !DILocation(line: 151, column: 11, scope: !5599)
!5601 = !DILocation(line: 151, column: 16, scope: !5599)
!5602 = !DILocation(line: 151, column: 6, scope: !5583)
!5603 = !DILocation(line: 152, column: 3, scope: !5599)
!5604 = !DILocation(line: 152, column: 12, scope: !5599)
!5605 = !DILocation(line: 152, column: 22, scope: !5599)
!5606 = !DILocation(line: 152, column: 32, scope: !5599)
!5607 = !DILocation(line: 152, column: 41, scope: !5599)
!5608 = !DILocation(line: 152, column: 46, scope: !5599)
!5609 = !DILocation(line: 153, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 153, column: 6)
!5611 = !DILocation(line: 153, column: 11, scope: !5610)
!5612 = !DILocation(line: 153, column: 16, scope: !5610)
!5613 = !DILocation(line: 153, column: 6, scope: !5583)
!5614 = !DILocation(line: 154, column: 23, scope: !5610)
!5615 = !DILocation(line: 154, column: 28, scope: !5610)
!5616 = !DILocation(line: 154, column: 3, scope: !5610)
!5617 = !DILocation(line: 154, column: 12, scope: !5610)
!5618 = !DILocation(line: 154, column: 21, scope: !5610)
!5619 = !DILocation(line: 155, column: 6, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 155, column: 6)
!5621 = !DILocation(line: 155, column: 11, scope: !5620)
!5622 = !DILocation(line: 155, column: 16, scope: !5620)
!5623 = !DILocation(line: 155, column: 6, scope: !5583)
!5624 = !DILocation(line: 156, column: 22, scope: !5620)
!5625 = !DILocation(line: 156, column: 27, scope: !5620)
!5626 = !DILocation(line: 156, column: 3, scope: !5620)
!5627 = !DILocation(line: 156, column: 12, scope: !5620)
!5628 = !DILocation(line: 156, column: 20, scope: !5620)
!5629 = !DILocation(line: 157, column: 1, scope: !5583)
!5630 = distinct !DISubprogram(name: "current_user_ns", scope: !850, file: !850, line: 346, type: !5631, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!740}
!5633 = !DILocation(line: 348, column: 2, scope: !5630)
!5634 = distinct !DISubprogram(name: "pde_get", scope: !4497, file: !4497, line: 195, type: !5635, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5637)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{null, !4549}
!5637 = !{!5638}
!5638 = !DILocalVariable(name: "pde", arg: 1, scope: !5634, file: !4497, line: 195, type: !4549)
!5639 = !DILocation(line: 195, column: 51, scope: !5634)
!5640 = !DILocation(line: 197, column: 16, scope: !5634)
!5641 = !DILocation(line: 197, column: 21, scope: !5634)
!5642 = !DILocation(line: 197, column: 2, scope: !5634)
!5643 = !DILocation(line: 198, column: 1, scope: !5634)
!5644 = !DISubprogram(name: "proc_get_inode", scope: !4497, file: !4497, line: 223, type: !5645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!1228, !1429, !4549}
!5647 = !DISubprogram(name: "_printk", scope: !5648, file: !5648, line: 153, type: !5649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!102, !97, null}
!5651 = !DISubprogram(name: "d_make_root", scope: !1195, file: !1195, line: 249, type: !5652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!1193, !1228}
!5654 = !DISubprogram(name: "proc_setup_self", scope: !4497, file: !4497, line: 247, type: !2748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5655 = !DISubprogram(name: "proc_setup_thread_self", scope: !4497, file: !4497, line: 252, type: !2748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5656 = distinct !DISubprogram(name: "make_kgid", scope: !772, file: !772, line: 148, type: !5657, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5659)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!779, !740, !783}
!5659 = !{!5660, !5661}
!5660 = !DILocalVariable(name: "from", arg: 1, scope: !5656, file: !772, line: 148, type: !740)
!5661 = !DILocalVariable(name: "gid", arg: 2, scope: !5656, file: !772, line: 148, type: !783)
!5662 = !DILocation(line: 148, column: 55, scope: !5656)
!5663 = !DILocation(line: 148, column: 67, scope: !5656)
!5664 = !DILocation(line: 150, column: 9, scope: !5656)
!5665 = !DILocation(line: 150, column: 2, scope: !5656)
!5666 = distinct !DISubprogram(name: "proc_sb_info", scope: !234, file: !234, line: 70, type: !5667, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5669)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{!4715, !1429}
!5669 = !{!5670}
!5670 = !DILocalVariable(name: "sb", arg: 1, scope: !5666, file: !234, line: 70, type: !1429)
!5671 = !DILocation(line: 70, column: 69, scope: !5666)
!5672 = !DILocation(line: 72, column: 9, scope: !5666)
!5673 = !DILocation(line: 72, column: 13, scope: !5666)
!5674 = !DILocation(line: 72, column: 2, scope: !5666)
!5675 = !DISubprogram(name: "sync_filesystem", scope: !223, file: !223, line: 2580, type: !2748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubprogram(name: "kill_anon_super", scope: !223, file: !223, line: 2411, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5677 = !DISubprogram(name: "dput", scope: !1195, file: !1195, line: 368, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5678 = distinct !DISubprogram(name: "proc_root_lookup", scope: !2, file: !2, line: 323, type: !1248, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5679)
!5679 = !{!5680, !5681, !5682}
!5680 = !DILocalVariable(name: "dir", arg: 1, scope: !5678, file: !2, line: 323, type: !1228)
!5681 = !DILocalVariable(name: "dentry", arg: 2, scope: !5678, file: !2, line: 323, type: !1193)
!5682 = !DILocalVariable(name: "flags", arg: 3, scope: !5678, file: !2, line: 323, type: !35)
!5683 = !DILocation(line: 323, column: 55, scope: !5678)
!5684 = !DILocation(line: 323, column: 76, scope: !5678)
!5685 = !DILocation(line: 323, column: 97, scope: !5678)
!5686 = !DILocation(line: 325, column: 23, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 325, column: 6)
!5688 = !DILocation(line: 325, column: 31, scope: !5687)
!5689 = !DILocation(line: 325, column: 7, scope: !5687)
!5690 = !DILocation(line: 325, column: 6, scope: !5678)
!5691 = !DILocation(line: 326, column: 3, scope: !5687)
!5692 = !DILocation(line: 328, column: 21, scope: !5678)
!5693 = !DILocation(line: 328, column: 26, scope: !5678)
!5694 = !DILocation(line: 328, column: 34, scope: !5678)
!5695 = !DILocation(line: 328, column: 9, scope: !5678)
!5696 = !DILocation(line: 328, column: 2, scope: !5678)
!5697 = !DILocation(line: 329, column: 1, scope: !5678)
!5698 = distinct !DISubprogram(name: "proc_root_getattr", scope: !2, file: !2, line: 313, type: !1347, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5699)
!5699 = !{!5700, !5701, !5702, !5703, !5704}
!5700 = !DILocalVariable(name: "idmap", arg: 1, scope: !5698, file: !2, line: 313, type: !1267)
!5701 = !DILocalVariable(name: "path", arg: 2, scope: !5698, file: !2, line: 314, type: !1349)
!5702 = !DILocalVariable(name: "stat", arg: 3, scope: !5698, file: !2, line: 314, type: !1351)
!5703 = !DILocalVariable(name: "request_mask", arg: 4, scope: !5698, file: !2, line: 315, type: !286)
!5704 = !DILocalVariable(name: "query_flags", arg: 5, scope: !5698, file: !2, line: 315, type: !35)
!5705 = !DILocation(line: 313, column: 48, scope: !5698)
!5706 = !DILocation(line: 314, column: 28, scope: !5698)
!5707 = !DILocation(line: 314, column: 48, scope: !5698)
!5708 = !DILocation(line: 315, column: 13, scope: !5698)
!5709 = !DILocation(line: 315, column: 40, scope: !5698)
!5710 = !DILocation(line: 317, column: 35, scope: !5698)
!5711 = !DILocation(line: 317, column: 57, scope: !5698)
!5712 = !DILocation(line: 317, column: 63, scope: !5698)
!5713 = !DILocation(line: 317, column: 49, scope: !5698)
!5714 = !DILocation(line: 318, column: 5, scope: !5698)
!5715 = !DILocation(line: 317, column: 2, scope: !5698)
!5716 = !DILocation(line: 319, column: 26, scope: !5698)
!5717 = !DILocation(line: 319, column: 34, scope: !5698)
!5718 = !DILocation(line: 319, column: 32, scope: !5698)
!5719 = !DILocation(line: 319, column: 2, scope: !5698)
!5720 = !DILocation(line: 319, column: 8, scope: !5698)
!5721 = !DILocation(line: 319, column: 14, scope: !5698)
!5722 = !DILocation(line: 320, column: 2, scope: !5698)
!5723 = !DISubprogram(name: "proc_pid_lookup", scope: !4497, file: !4497, line: 174, type: !5724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!1193, !1193, !35}
!5726 = !DISubprogram(name: "proc_lookup", scope: !4497, file: !4497, line: 190, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5727 = !DISubprogram(name: "generic_fillattr", scope: !223, file: !223, line: 3094, type: !5728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !1267, !286, !1228, !1351}
!5730 = distinct !DISubprogram(name: "d_inode", scope: !1195, file: !1195, line: 514, type: !5731, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5733)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{!1228, !3106}
!5733 = !{!5734}
!5734 = !DILocalVariable(name: "dentry", arg: 1, scope: !5730, file: !1195, line: 514, type: !3106)
!5735 = !DILocation(line: 514, column: 58, scope: !5730)
!5736 = !DILocation(line: 516, column: 9, scope: !5730)
!5737 = !DILocation(line: 516, column: 17, scope: !5730)
!5738 = !DILocation(line: 516, column: 2, scope: !5730)
!5739 = !DISubprogram(name: "nr_processes", scope: !5740, file: !5740, line: 19, type: !2413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5740 = !DIFile(filename: "./include/linux/sched/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad03080d260767f7ddda1946e921a1ea")
!5741 = distinct !DISubprogram(name: "proc_root_readdir", scope: !2, file: !2, line: 331, type: !3266, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !5742)
!5742 = !{!5743, !5744, !5745}
!5743 = !DILocalVariable(name: "file", arg: 1, scope: !5741, file: !2, line: 331, type: !618)
!5744 = !DILocalVariable(name: "ctx", arg: 2, scope: !5741, file: !2, line: 331, type: !3268)
!5745 = !DILocalVariable(name: "error", scope: !5746, file: !2, line: 334, type: !102)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !2, line: 333, column: 38)
!5747 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 333, column: 6)
!5748 = !DILocation(line: 331, column: 43, scope: !5741)
!5749 = !DILocation(line: 331, column: 69, scope: !5741)
!5750 = !DILocation(line: 333, column: 6, scope: !5747)
!5751 = !DILocation(line: 333, column: 11, scope: !5747)
!5752 = !DILocation(line: 333, column: 15, scope: !5747)
!5753 = !DILocation(line: 333, column: 6, scope: !5741)
!5754 = !DILocation(line: 334, column: 3, scope: !5746)
!5755 = !DILocation(line: 334, column: 7, scope: !5746)
!5756 = !DILocation(line: 334, column: 28, scope: !5746)
!5757 = !DILocation(line: 334, column: 34, scope: !5746)
!5758 = !DILocation(line: 334, column: 15, scope: !5746)
!5759 = !DILocation(line: 335, column: 7, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5746, file: !2, line: 335, column: 7)
!5761 = !DILocation(line: 335, column: 7, scope: !5746)
!5762 = !DILocation(line: 336, column: 11, scope: !5760)
!5763 = !DILocation(line: 336, column: 4, scope: !5760)
!5764 = !DILocation(line: 337, column: 3, scope: !5746)
!5765 = !DILocation(line: 337, column: 8, scope: !5746)
!5766 = !DILocation(line: 337, column: 12, scope: !5746)
!5767 = !DILocation(line: 338, column: 2, scope: !5747)
!5768 = !DILocation(line: 338, column: 2, scope: !5746)
!5769 = !DILocation(line: 340, column: 26, scope: !5741)
!5770 = !DILocation(line: 340, column: 32, scope: !5741)
!5771 = !DILocation(line: 340, column: 9, scope: !5741)
!5772 = !DILocation(line: 340, column: 2, scope: !5741)
!5773 = !DILocation(line: 341, column: 1, scope: !5741)
!5774 = !DISubprogram(name: "proc_readdir", scope: !4497, file: !4497, line: 192, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubprogram(name: "proc_pid_readdir", scope: !4497, file: !4497, line: 173, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
