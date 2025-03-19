; ModuleID = 'kernel/ucount.c'
source_filename = "kernel/ucount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_ucount__179_378_user_namespace_sysctl_init\22, \22a\22\09\09"
module asm "__initcall__kmod_ucount__179_378_user_namespace_sysctl_init4:\09\09\09"
module asm ".long\09__initstub__kmod_ucount__179_378_user_namespace_sysctl_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [10 x %struct.atomic64_t], [4 x %struct.atomic64_t] }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table_root = type { %struct.ctl_table_set, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }

@init_user_ns = external dso_local global %struct.user_namespace, align 8
@init_ucounts = hidden global %struct.ucounts { %struct.hlist_node zeroinitializer, ptr @init_user_ns, %struct.kuid_t zeroinitializer, %struct.atomic_t { i32 1 }, [10 x %struct.atomic64_t] zeroinitializer, [4 x %struct.atomic64_t] zeroinitializer }, align 8, !dbg !0
@set_root = internal global %struct.ctl_table_root { %struct.ctl_table_set zeroinitializer, ptr @set_lookup, ptr null, ptr @set_permissions }, align 8, !dbg !508
@user_table = internal global [11 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.3, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.4, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.5, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.6, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.7, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.8, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.9, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.10, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.11, ptr null, i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table zeroinitializer], align 16, !dbg !539
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !493
@ucounts_hashtable = internal global [1024 x %struct.hlist_head] zeroinitializer, align 16, !dbg !503
@ucounts_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !548
@.str.1 = private unnamed_addr constant [16 x i8] c"kernel/ucount.c\00", align 1, !dbg !496
@__UNIQUE_ID___addressable___initstub__kmod_ucount__179_378_user_namespace_sysctl_init4180 = internal global ptr @__initstub__kmod_ucount__179_378_user_namespace_sysctl_init4, section ".discard.addressable", align 8, !dbg !501
@.str.2 = private unnamed_addr constant [20 x i8] c"max_user_namespaces\00", align 1, !dbg !510
@ue_zero = internal global i64 0, align 8, !dbg !544
@ue_int_max = internal global i64 2147483647, align 8, !dbg !546
@.str.3 = private unnamed_addr constant [19 x i8] c"max_pid_namespaces\00", align 1, !dbg !515
@.str.4 = private unnamed_addr constant [19 x i8] c"max_uts_namespaces\00", align 1, !dbg !520
@.str.5 = private unnamed_addr constant [19 x i8] c"max_ipc_namespaces\00", align 1, !dbg !522
@.str.6 = private unnamed_addr constant [19 x i8] c"max_net_namespaces\00", align 1, !dbg !524
@.str.7 = private unnamed_addr constant [19 x i8] c"max_mnt_namespaces\00", align 1, !dbg !526
@.str.8 = private unnamed_addr constant [22 x i8] c"max_cgroup_namespaces\00", align 1, !dbg !528
@.str.9 = private unnamed_addr constant [20 x i8] c"max_time_namespaces\00", align 1, !dbg !533
@.str.10 = private unnamed_addr constant [22 x i8] c"max_inotify_instances\00", align 1, !dbg !535
@.str.11 = private unnamed_addr constant [20 x i8] c"max_inotify_watches\00", align 1, !dbg !537
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !550
@user_namespace_sysctl_init.user_header = internal global ptr null, align 8, !dbg !555
@user_namespace_sysctl_init.empty = internal global [1 x %struct.ctl_table] zeroinitializer, align 16, !dbg !560
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_ucount__179_378_user_namespace_sysctl_init4180], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @setup_userns_sysctls(ptr noundef %ns) #0 align 16 !dbg !574 {
entry:
  %retval = alloca i1, align 1
  %ns.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !578, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #17, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !579, metadata !DIExpression()), !dbg !585
  br label %do.body, !dbg !586

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !587

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !589
  %set = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 14, !dbg !590
  call void @setup_sysctl_set(ptr noundef %set, ptr noundef @set_root, ptr noundef @set_is_seen) #18, !dbg !591
  %call = call ptr @kmemdup(ptr noundef @user_table, i64 noundef 704, i32 noundef 3264) #19, !dbg !592
  store ptr %call, ptr %tbl, align 8, !dbg !593
  %1 = load ptr, ptr %tbl, align 8, !dbg !594
  %tobool = icmp ne ptr %1, null, !dbg !594
  br i1 %tobool, label %if.then, label %if.end, !dbg !595

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %i, metadata !580, metadata !DIExpression()), !dbg !597
  store i32 0, ptr %i, align 4, !dbg !598
  br label %for.cond, !dbg !600

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !dbg !601
  %cmp = icmp slt i32 %2, 10, !dbg !603
  br i1 %cmp, label %for.body, label %for.end, !dbg !604

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !605
  %ucount_max = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 17, !dbg !607
  %4 = load i32, ptr %i, align 4, !dbg !608
  %idxprom = sext i32 %4 to i64, !dbg !605
  %arrayidx = getelementptr [10 x i64], ptr %ucount_max, i64 0, i64 %idxprom, !dbg !605
  %5 = load ptr, ptr %tbl, align 8, !dbg !609
  %6 = load i32, ptr %i, align 4, !dbg !610
  %idxprom1 = sext i32 %6 to i64, !dbg !609
  %arrayidx2 = getelementptr %struct.ctl_table, ptr %5, i64 %idxprom1, !dbg !609
  %data = getelementptr inbounds %struct.ctl_table, ptr %arrayidx2, i32 0, i32 1, !dbg !611
  store ptr %arrayidx, ptr %data, align 8, !dbg !612
  br label %for.inc, !dbg !613

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !614
  %inc = add i32 %7, 1, !dbg !614
  store i32 %inc, ptr %i, align 4, !dbg !614
  br label %for.cond, !dbg !615, !llvm.loop !616

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %ns.addr, align 8, !dbg !620
  %set3 = getelementptr inbounds %struct.user_namespace, ptr %8, i32 0, i32 14, !dbg !621
  %9 = load ptr, ptr %tbl, align 8, !dbg !622
  %call4 = call ptr @__register_sysctl_table(ptr noundef %set3, ptr noundef @.str, ptr noundef %9, i64 noundef 11) #18, !dbg !623
  %10 = load ptr, ptr %ns.addr, align 8, !dbg !624
  %sysctls = getelementptr inbounds %struct.user_namespace, ptr %10, i32 0, i32 15, !dbg !625
  store ptr %call4, ptr %sysctls, align 8, !dbg !626
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !627
  br label %if.end, !dbg !628

if.end:                                           ; preds = %for.end, %do.end
  %11 = load ptr, ptr %ns.addr, align 8, !dbg !629
  %sysctls5 = getelementptr inbounds %struct.user_namespace, ptr %11, i32 0, i32 15, !dbg !631
  %12 = load ptr, ptr %sysctls5, align 8, !dbg !631
  %tobool6 = icmp ne ptr %12, null, !dbg !629
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !632

if.then7:                                         ; preds = %if.end
  %13 = load ptr, ptr %tbl, align 8, !dbg !633
  call void @kfree(ptr noundef %13) #18, !dbg !635
  %14 = load ptr, ptr %ns.addr, align 8, !dbg !636
  %set8 = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 14, !dbg !637
  call void @retire_sysctl_set(ptr noundef %set8) #18, !dbg !638
  store i1 false, ptr %retval, align 1, !dbg !639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !639

if.end9:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !640

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #17, !dbg !641
  %15 = load i1, ptr %retval, align 1, !dbg !641
  ret i1 %15, !dbg !641
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !642 dso_local void @setup_sysctl_set(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_is_seen(ptr noundef %set) #0 align 16 !dbg !645 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !647, metadata !DIExpression()), !dbg !648
  %call = call ptr @current_user_ns() #18, !dbg !649
  %set1 = getelementptr inbounds %struct.user_namespace, ptr %call, i32 0, i32 14, !dbg !650
  %0 = load ptr, ptr %set.addr, align 8, !dbg !651
  %cmp = icmp eq ptr %set1, %0, !dbg !652
  %conv = zext i1 %cmp to i32, !dbg !652
  ret i32 %conv, !dbg !653
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !654 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local ptr @__register_sysctl_table(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !663 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !666 dso_local void @retire_sysctl_set(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @retire_userns_sysctls(ptr noundef %ns) #0 align 16 !dbg !669 {
entry:
  %ns.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #17, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !674, metadata !DIExpression()), !dbg !677
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !678
  %sysctls = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 15, !dbg !679
  %1 = load ptr, ptr %sysctls, align 8, !dbg !679
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2, !dbg !680
  %2 = load ptr, ptr %ctl_table_arg, align 8, !dbg !680
  store ptr %2, ptr %tbl, align 8, !dbg !681
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !682
  %sysctls1 = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 15, !dbg !683
  %4 = load ptr, ptr %sysctls1, align 8, !dbg !683
  call void @unregister_sysctl_table(ptr noundef %4) #18, !dbg !684
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !685
  %set = getelementptr inbounds %struct.user_namespace, ptr %5, i32 0, i32 14, !dbg !686
  call void @retire_sysctl_set(ptr noundef %set) #18, !dbg !687
  %6 = load ptr, ptr %tbl, align 8, !dbg !688
  call void @kfree(ptr noundef %6) #18, !dbg !689
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #17, !dbg !690
  ret void, !dbg !690
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !691 dso_local void @unregister_sysctl_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_ucounts(ptr noundef %ucounts) #0 align 16 !dbg !694 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !698, metadata !DIExpression()), !dbg !699
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !700
  %call = call zeroext i1 @get_ucounts_or_wrap(ptr noundef %0) #18, !dbg !702
  br i1 %call, label %if.end, label %if.then, !dbg !703

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ucounts.addr, align 8, !dbg !704
  call void @put_ucounts(ptr noundef %1) #18, !dbg !706
  store ptr null, ptr %ucounts.addr, align 8, !dbg !707
  br label %if.end, !dbg !708

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ucounts.addr, align 8, !dbg !709
  ret ptr %2, !dbg !710
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @get_ucounts_or_wrap(ptr noundef %ucounts) #5 align 16 !dbg !711 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !717
  %count = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 3, !dbg !718
  %call = call zeroext i1 @atomic_add_negative(i32 noundef 1, ptr noundef %count) #18, !dbg !719
  %lnot = xor i1 %call, true, !dbg !720
  ret i1 %lnot, !dbg !721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_ucounts(ptr noundef %ucounts) #0 align 16 !dbg !722 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !726, metadata !DIExpression()), !dbg !728
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !727, metadata !DIExpression()), !dbg !730
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !731
  %count = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 3, !dbg !731
  %call = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %count, ptr noundef @ucounts_lock, ptr noundef %flags) #18, !dbg !731
  %tobool = icmp ne i32 %call, 0, !dbg !731
  br i1 %tobool, label %if.then, label %if.end, !dbg !733

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ucounts.addr, align 8, !dbg !734
  %node = getelementptr inbounds %struct.ucounts, ptr %1, i32 0, i32 0, !dbg !736
  call void @hlist_del_init(ptr noundef %node) #18, !dbg !737
  %2 = load i64, ptr %flags, align 8, !dbg !738
  call void @spin_unlock_irqrestore(ptr noundef @ucounts_lock, i64 noundef %2) #18, !dbg !739
  %3 = load ptr, ptr %ucounts.addr, align 8, !dbg !740
  %ns = getelementptr inbounds %struct.ucounts, ptr %3, i32 0, i32 1, !dbg !741
  %4 = load ptr, ptr %ns, align 8, !dbg !741
  call void @put_user_ns(ptr noundef %4) #18, !dbg !742
  %5 = load ptr, ptr %ucounts.addr, align 8, !dbg !743
  call void @kfree(ptr noundef %5) #18, !dbg !744
  br label %if.end, !dbg !745

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !746
  ret void, !dbg !746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_ucounts(ptr noundef %ns, i32 %uid.coerce) #0 align 16 !dbg !747 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %ns.addr = alloca ptr, align 8
  %hashent = alloca ptr, align 8
  %ucounts = alloca ptr, align 8
  %new = alloca ptr, align 8
  %wrapped = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !751, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !752, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 8, ptr %hashent) #17, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %hashent, metadata !753, metadata !DIExpression()), !dbg !761
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !762
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !762
  %call = call i32 @__kuid_val(i32 %0) #18, !dbg !762
  %conv = zext i32 %call to i64, !dbg !762
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !762
  %2 = ptrtoint ptr %1 to i64, !dbg !762
  %add = add i64 %conv, %2, !dbg !762
  %call2 = call i32 @hash_64_generic(i64 noundef %add, i32 noundef 10) #18, !dbg !762
  %idx.ext = zext i32 %call2 to i64, !dbg !762
  %add.ptr = getelementptr %struct.hlist_head, ptr @ucounts_hashtable, i64 %idx.ext, !dbg !762
  store ptr %add.ptr, ptr %hashent, align 8, !dbg !761
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #17, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !755, metadata !DIExpression()), !dbg !764
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %new, metadata !756, metadata !DIExpression()), !dbg !765
  call void @llvm.lifetime.start.p0(i64 1, ptr %wrapped) #17, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %wrapped, metadata !757, metadata !DIExpression()), !dbg !767
  call void @spin_lock_irq(ptr noundef @ucounts_lock) #18, !dbg !768
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !769
  %4 = load ptr, ptr %hashent, align 8, !dbg !770
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !771
  %5 = load i32, ptr %coerce.dive3, align 4, !dbg !771
  %call4 = call ptr @find_ucounts(ptr noundef %3, i32 %5, ptr noundef %4) #18, !dbg !771
  store ptr %call4, ptr %ucounts, align 8, !dbg !772
  %6 = load ptr, ptr %ucounts, align 8, !dbg !773
  %tobool = icmp ne ptr %6, null, !dbg !773
  br i1 %tobool, label %if.end17, label %if.then, !dbg !775

if.then:                                          ; preds = %entry
  call void @spin_unlock_irq(ptr noundef @ucounts_lock) #18, !dbg !776
  %call5 = call noalias ptr @kzalloc(i64 noundef 144, i32 noundef 3264) #20, !dbg !778
  store ptr %call5, ptr %new, align 8, !dbg !779
  %7 = load ptr, ptr %new, align 8, !dbg !780
  %tobool6 = icmp ne ptr %7, null, !dbg !780
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !782

if.then7:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !783

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %ns.addr, align 8, !dbg !784
  %9 = load ptr, ptr %new, align 8, !dbg !785
  %ns8 = getelementptr inbounds %struct.ucounts, ptr %9, i32 0, i32 1, !dbg !786
  store ptr %8, ptr %ns8, align 8, !dbg !787
  %10 = load ptr, ptr %new, align 8, !dbg !788
  %uid9 = getelementptr inbounds %struct.ucounts, ptr %10, i32 0, i32 2, !dbg !789
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %uid9, ptr align 4 %uid, i64 4, i1 false), !dbg !790
  %11 = load ptr, ptr %new, align 8, !dbg !791
  %count = getelementptr inbounds %struct.ucounts, ptr %11, i32 0, i32 3, !dbg !792
  call void @atomic_set(ptr noundef %count, i32 noundef 1) #18, !dbg !793
  call void @spin_lock_irq(ptr noundef @ucounts_lock) #18, !dbg !794
  %12 = load ptr, ptr %ns.addr, align 8, !dbg !795
  %13 = load ptr, ptr %hashent, align 8, !dbg !796
  %coerce.dive10 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !797
  %14 = load i32, ptr %coerce.dive10, align 4, !dbg !797
  %call11 = call ptr @find_ucounts(ptr noundef %12, i32 %14, ptr noundef %13) #18, !dbg !797
  store ptr %call11, ptr %ucounts, align 8, !dbg !798
  %15 = load ptr, ptr %ucounts, align 8, !dbg !799
  %tobool12 = icmp ne ptr %15, null, !dbg !799
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !801

if.then13:                                        ; preds = %if.end
  %16 = load ptr, ptr %new, align 8, !dbg !802
  call void @kfree(ptr noundef %16) #18, !dbg !804
  br label %if.end16, !dbg !805

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %new, align 8, !dbg !806
  %node = getelementptr inbounds %struct.ucounts, ptr %17, i32 0, i32 0, !dbg !808
  %18 = load ptr, ptr %hashent, align 8, !dbg !809
  call void @hlist_add_head(ptr noundef %node, ptr noundef %18) #18, !dbg !810
  %19 = load ptr, ptr %new, align 8, !dbg !811
  %ns14 = getelementptr inbounds %struct.ucounts, ptr %19, i32 0, i32 1, !dbg !812
  %20 = load ptr, ptr %ns14, align 8, !dbg !812
  %call15 = call ptr @get_user_ns(ptr noundef %20) #18, !dbg !813
  call void @spin_unlock_irq(ptr noundef @ucounts_lock) #18, !dbg !814
  %21 = load ptr, ptr %new, align 8, !dbg !815
  store ptr %21, ptr %retval, align 8, !dbg !816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !816

if.end16:                                         ; preds = %if.then13
  br label %if.end17, !dbg !817

if.end17:                                         ; preds = %if.end16, %entry
  %22 = load ptr, ptr %ucounts, align 8, !dbg !818
  %call18 = call zeroext i1 @get_ucounts_or_wrap(ptr noundef %22) #18, !dbg !819
  %lnot = xor i1 %call18, true, !dbg !820
  %frombool = zext i1 %lnot to i8, !dbg !821
  store i8 %frombool, ptr %wrapped, align 1, !dbg !821
  call void @spin_unlock_irq(ptr noundef @ucounts_lock) #18, !dbg !822
  %23 = load i8, ptr %wrapped, align 1, !dbg !823, !range !825, !noundef !826
  %tobool19 = trunc i8 %23 to i1, !dbg !823
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !827

if.then20:                                        ; preds = %if.end17
  %24 = load ptr, ptr %ucounts, align 8, !dbg !828
  call void @put_ucounts(ptr noundef %24) #18, !dbg !830
  store ptr null, ptr %retval, align 8, !dbg !831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !831

if.end21:                                         ; preds = %if.end17
  %25 = load ptr, ptr %ucounts, align 8, !dbg !832
  store ptr %25, ptr %retval, align 8, !dbg !833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !833

cleanup:                                          ; preds = %if.end21, %if.then20, %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %wrapped) #17, !dbg !834
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !834
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #17, !dbg !834
  call void @llvm.lifetime.end.p0(i64 8, ptr %hashent) #17, !dbg !834
  %26 = load ptr, ptr %retval, align 8, !dbg !834
  ret ptr %26, !dbg !834
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_64_generic(i64 noundef %val, i32 noundef %bits) #6 align 16 !dbg !835 {
entry:
  %val.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !840, metadata !DIExpression()), !dbg !842
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !841, metadata !DIExpression()), !dbg !843
  %0 = load i64, ptr %val.addr, align 8, !dbg !844
  %mul = mul i64 %0, 7046029254386353131, !dbg !845
  %1 = load i32, ptr %bits.addr, align 4, !dbg !846
  %sub = sub i32 64, %1, !dbg !847
  %sh_prom = zext i32 %sub to i64, !dbg !848
  %shr = lshr i64 %mul, %sh_prom, !dbg !848
  %conv = trunc i64 %shr to i32, !dbg !844
  ret i32 %conv, !dbg !849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !850 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !854, metadata !DIExpression()), !dbg !855
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !856
  %0 = load i32, ptr %val, align 4, !dbg !856
  ret i32 %0, !dbg !857
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !858 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !864, metadata !DIExpression()), !dbg !865
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !866
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !866
  call void @_raw_spin_lock_irq(ptr noundef %1) #18, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_ucounts(ptr noundef %ns, i32 %uid.coerce, ptr noundef %hashent) #0 align 16 !dbg !868 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %ns.addr = alloca ptr, align 8
  %hashent.addr = alloca ptr, align 8
  %ucounts = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr7 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !872, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !873, metadata !DIExpression()), !dbg !887
  store ptr %hashent, ptr %hashent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashent.addr, metadata !874, metadata !DIExpression()), !dbg !888
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #17, !dbg !889
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !875, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #17, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !876, metadata !DIExpression()), !dbg !891
  %0 = load ptr, ptr %hashent.addr, align 8, !dbg !891
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !891
  %1 = load ptr, ptr %first, align 8, !dbg !891
  store ptr %1, ptr %____ptr, align 8, !dbg !891
  %2 = load ptr, ptr %____ptr, align 8, !dbg !891
  %tobool = icmp ne ptr %2, null, !dbg !891
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !891

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !879, metadata !DIExpression()), !dbg !892
  %3 = load ptr, ptr %____ptr, align 8, !dbg !892
  store ptr %3, ptr %__mptr, align 8, !dbg !892
  %4 = load ptr, ptr %__mptr, align 8, !dbg !892
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !892
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !892
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !891
  %5 = load ptr, ptr %tmp1, align 8, !dbg !892
  br label %cond.end, !dbg !891

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !891

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !891
  store ptr %cond, ptr %tmp, align 8, !dbg !891
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #17, !dbg !893
  %6 = load ptr, ptr %tmp, align 8, !dbg !891
  store ptr %6, ptr %ucounts, align 8, !dbg !893
  br label %for.cond, !dbg !893

for.cond:                                         ; preds = %cond.end15, %cond.end
  %7 = load ptr, ptr %ucounts, align 8, !dbg !894
  %tobool2 = icmp ne ptr %7, null, !dbg !893
  br i1 %tobool2, label %for.body, label %for.end, !dbg !893

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %ucounts, align 8, !dbg !895
  %uid3 = getelementptr inbounds %struct.ucounts, ptr %8, i32 0, i32 2, !dbg !898
  %coerce.dive4 = getelementptr inbounds %struct.kuid_t, ptr %uid3, i32 0, i32 0, !dbg !899
  %9 = load i32, ptr %coerce.dive4, align 8, !dbg !899
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !899
  %10 = load i32, ptr %coerce.dive5, align 4, !dbg !899
  %call = call zeroext i1 @uid_eq(i32 %9, i32 %10) #18, !dbg !899
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !900

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %ucounts, align 8, !dbg !901
  %ns6 = getelementptr inbounds %struct.ucounts, ptr %11, i32 0, i32 1, !dbg !902
  %12 = load ptr, ptr %ns6, align 8, !dbg !902
  %13 = load ptr, ptr %ns.addr, align 8, !dbg !903
  %cmp = icmp eq ptr %12, %13, !dbg !904
  br i1 %cmp, label %if.then, label %if.end, !dbg !905

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %ucounts, align 8, !dbg !906
  store ptr %14, ptr %retval, align 8, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !908

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr7) #17, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %____ptr7, metadata !881, metadata !DIExpression()), !dbg !909
  %15 = load ptr, ptr %ucounts, align 8, !dbg !909
  %node = getelementptr inbounds %struct.ucounts, ptr %15, i32 0, i32 0, !dbg !909
  %next = getelementptr inbounds %struct.hlist_node, ptr %node, i32 0, i32 0, !dbg !909
  %16 = load ptr, ptr %next, align 8, !dbg !909
  store ptr %16, ptr %____ptr7, align 8, !dbg !909
  %17 = load ptr, ptr %____ptr7, align 8, !dbg !909
  %tobool9 = icmp ne ptr %17, null, !dbg !909
  br i1 %tobool9, label %cond.true10, label %cond.false14, !dbg !909

cond.true10:                                      ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #17, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !884, metadata !DIExpression()), !dbg !910
  %18 = load ptr, ptr %____ptr7, align 8, !dbg !910
  store ptr %18, ptr %__mptr11, align 8, !dbg !910
  %19 = load ptr, ptr %__mptr11, align 8, !dbg !910
  %add.ptr13 = getelementptr i8, ptr %19, i64 0, !dbg !910
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !910
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #17, !dbg !909
  %20 = load ptr, ptr %tmp12, align 8, !dbg !910
  br label %cond.end15, !dbg !909

cond.false14:                                     ; preds = %for.inc
  br label %cond.end15, !dbg !909

cond.end15:                                       ; preds = %cond.false14, %cond.true10
  %cond16 = phi ptr [ %20, %cond.true10 ], [ null, %cond.false14 ], !dbg !909
  store ptr %cond16, ptr %tmp8, align 8, !dbg !909
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr7) #17, !dbg !894
  %21 = load ptr, ptr %tmp8, align 8, !dbg !909
  store ptr %21, ptr %ucounts, align 8, !dbg !894
  br label %for.cond, !dbg !894, !llvm.loop !911

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !913

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #17, !dbg !914
  %22 = load ptr, ptr %retval, align 8, !dbg !914
  ret ptr %22, !dbg !914
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !915 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !919
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !919
  call void @_raw_spin_unlock_irq(ptr noundef %1) #18, !dbg !919
  ret void, !dbg !920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !921 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !925, metadata !DIExpression()), !dbg !927
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !926, metadata !DIExpression()), !dbg !928
  %0 = load i64, ptr %size.addr, align 8, !dbg !929
  %1 = load i32, ptr %flags.addr, align 4, !dbg !930
  %or = or i32 %1, 256, !dbg !931
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !932
  ret ptr %call, !dbg !933
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !934 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !940, metadata !DIExpression()), !dbg !942
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !941, metadata !DIExpression()), !dbg !943
  %0 = load ptr, ptr %v.addr, align 8, !dbg !944
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !945
  %1 = load ptr, ptr %v.addr, align 8, !dbg !946
  %2 = load i32, ptr %i.addr, align 4, !dbg !947
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !948
  ret void, !dbg !949
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #5 align 16 !dbg !950 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !955, metadata !DIExpression()), !dbg !958
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !956, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %first, metadata !957, metadata !DIExpression()), !dbg !961
  %0 = load ptr, ptr %h.addr, align 8, !dbg !962
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !963
  %1 = load ptr, ptr %first1, align 8, !dbg !963
  store ptr %1, ptr %first, align 8, !dbg !961
  br label %do.body, !dbg !964

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !965

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !967

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !967

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !965

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !969
  %3 = load ptr, ptr %n.addr, align 8, !dbg !969
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !969
  store volatile ptr %2, ptr %next, align 8, !dbg !969
  br label %do.cond4, !dbg !969

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !969

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !965

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !965

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !971
  %tobool = icmp ne ptr %4, null, !dbg !971
  br i1 %tobool, label %if.then, label %if.end, !dbg !973

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !974

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !975

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !977

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !977

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !975

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !979
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !979
  %6 = load ptr, ptr %first, align 8, !dbg !979
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !979
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !979
  br label %do.cond14, !dbg !979

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !979

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !975

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !975

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !975

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !981

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !982

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !984

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !984

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !982

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !986
  %8 = load ptr, ptr %h.addr, align 8, !dbg !986
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !986
  store volatile ptr %7, ptr %first23, align 8, !dbg !986
  br label %do.cond24, !dbg !986

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !986

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !982

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !982

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !988

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !989

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !991

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !991

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !989

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !993
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !993
  %10 = load ptr, ptr %n.addr, align 8, !dbg !993
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !993
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !993
  br label %do.cond35, !dbg !993

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !993

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !989

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !989

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17, !dbg !995
  ret void, !dbg !995
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #5 align 16 !dbg !996 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  ret ptr @init_user_ns, !dbg !1002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1003 dso_local i32 @_atomic_dec_and_lock_irqsave(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_init(ptr noundef %n) #5 align 16 !dbg !1007 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1013
  %call = call i32 @hlist_unhashed(ptr noundef %0) #18, !dbg !1015
  %tobool = icmp ne i32 %call, 0, !dbg !1015
  br i1 %tobool, label %if.end, label %if.then, !dbg !1016

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1017
  call void @__hlist_del(ptr noundef %1) #18, !dbg !1019
  %2 = load ptr, ptr %n.addr, align 8, !dbg !1020
  call void @INIT_HLIST_NODE(ptr noundef %2) #18, !dbg !1021
  br label %if.end, !dbg !1022

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1023
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !1024 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1028, metadata !DIExpression()), !dbg !1034
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1029, metadata !DIExpression()), !dbg !1035
  br label %do.body, !dbg !1036

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1030, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1033, metadata !DIExpression()), !dbg !1037
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1037
  %conv = zext i1 %cmp to i32, !dbg !1037
  store i32 1, ptr %tmp, align 4, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !1038
  %0 = load i32, ptr %tmp, align 4, !dbg !1037
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1038
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1038
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1038
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !1038
  br label %do.end, !dbg !1038

do.end:                                           ; preds = %do.body
  ret void, !dbg !1039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #5 align 16 !dbg !1040 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !1042, metadata !DIExpression()), !dbg !1043
  ret void, !dbg !1044
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @inc_ucount(ptr noundef %ns, i32 %uid.coerce, i32 noundef %type) #0 align 16 !dbg !1045 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %ns.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %ucounts = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %bad = alloca ptr, align 8
  %tns = alloca ptr, align 8
  %max = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !1049, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !1050, metadata !DIExpression()), !dbg !1062
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1051, metadata !DIExpression()), !dbg !1063
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #17, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !1052, metadata !DIExpression()), !dbg !1065
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1053, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.start.p0(i64 8, ptr %bad) #17, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %bad, metadata !1054, metadata !DIExpression()), !dbg !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %tns) #17, !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %tns, metadata !1055, metadata !DIExpression()), !dbg !1069
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !1070
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !1071
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !1071
  %call = call ptr @alloc_ucounts(ptr noundef %0, i32 %1) #18, !dbg !1071
  store ptr %call, ptr %ucounts, align 8, !dbg !1072
  %2 = load ptr, ptr %ucounts, align 8, !dbg !1073
  store ptr %2, ptr %iter, align 8, !dbg !1074
  br label %for.cond, !dbg !1075

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %iter, align 8, !dbg !1076
  %tobool = icmp ne ptr %3, null, !dbg !1077
  br i1 %tobool, label %for.body, label %for.end, !dbg !1077

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #17, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %max, metadata !1056, metadata !DIExpression()), !dbg !1079
  %4 = load ptr, ptr %iter, align 8, !dbg !1080
  %ns2 = getelementptr inbounds %struct.ucounts, ptr %4, i32 0, i32 1, !dbg !1081
  %5 = load ptr, ptr %ns2, align 8, !dbg !1081
  store ptr %5, ptr %tns, align 8, !dbg !1082
  br label %do.body, !dbg !1083

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !1085

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1085

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %tns, align 8, !dbg !1083
  %ucount_max = getelementptr inbounds %struct.user_namespace, ptr %6, i32 0, i32 17, !dbg !1083
  %7 = load i32, ptr %type.addr, align 4, !dbg !1083
  %idxprom = zext i32 %7 to i64, !dbg !1083
  %arrayidx = getelementptr [10 x i64], ptr %ucount_max, i64 0, i64 %idxprom, !dbg !1083
  %8 = load volatile i64, ptr %arrayidx, align 8, !dbg !1083
  store i64 %8, ptr %tmp, align 8, !dbg !1085
  %9 = load i64, ptr %tmp, align 8, !dbg !1083
  store i64 %9, ptr %max, align 8, !dbg !1087
  %10 = load ptr, ptr %iter, align 8, !dbg !1088
  %ucount = getelementptr inbounds %struct.ucounts, ptr %10, i32 0, i32 4, !dbg !1090
  %11 = load i32, ptr %type.addr, align 4, !dbg !1091
  %idxprom3 = zext i32 %11 to i64, !dbg !1088
  %arrayidx4 = getelementptr [10 x %struct.atomic64_t], ptr %ucount, i64 0, i64 %idxprom3, !dbg !1088
  %12 = load i64, ptr %max, align 8, !dbg !1092
  %conv = trunc i64 %12 to i32, !dbg !1092
  %call5 = call zeroext i1 @atomic_long_inc_below(ptr noundef %arrayidx4, i32 noundef %conv) #18, !dbg !1093
  br i1 %call5, label %if.end, label %if.then, !dbg !1094

if.then:                                          ; preds = %do.end
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1095

if.end:                                           ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1096
  br label %cleanup, !dbg !1096

cleanup:                                          ; preds = %if.then, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #17, !dbg !1096
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
    i32 7, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1097

for.inc:                                          ; preds = %cleanup.cont
  %13 = load ptr, ptr %tns, align 8, !dbg !1098
  %ucounts6 = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 16, !dbg !1099
  %14 = load ptr, ptr %ucounts6, align 8, !dbg !1099
  store ptr %14, ptr %iter, align 8, !dbg !1100
  br label %for.cond, !dbg !1101, !llvm.loop !1102

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %ucounts, align 8, !dbg !1104
  store ptr %15, ptr %retval, align 8, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !1105

fail:                                             ; preds = %cleanup
  call void @llvm.dbg.label(metadata !1060), !dbg !1106
  %16 = load ptr, ptr %iter, align 8, !dbg !1107
  store ptr %16, ptr %bad, align 8, !dbg !1108
  %17 = load ptr, ptr %ucounts, align 8, !dbg !1109
  store ptr %17, ptr %iter, align 8, !dbg !1111
  br label %for.cond7, !dbg !1112

for.cond7:                                        ; preds = %for.inc13, %fail
  %18 = load ptr, ptr %iter, align 8, !dbg !1113
  %19 = load ptr, ptr %bad, align 8, !dbg !1115
  %cmp = icmp ne ptr %18, %19, !dbg !1116
  br i1 %cmp, label %for.body9, label %for.end16, !dbg !1117

for.body9:                                        ; preds = %for.cond7
  %20 = load ptr, ptr %iter, align 8, !dbg !1118
  %ucount10 = getelementptr inbounds %struct.ucounts, ptr %20, i32 0, i32 4, !dbg !1119
  %21 = load i32, ptr %type.addr, align 4, !dbg !1120
  %idxprom11 = zext i32 %21 to i64, !dbg !1118
  %arrayidx12 = getelementptr [10 x %struct.atomic64_t], ptr %ucount10, i64 0, i64 %idxprom11, !dbg !1118
  call void @atomic_long_dec(ptr noundef %arrayidx12) #18, !dbg !1121
  br label %for.inc13, !dbg !1121

for.inc13:                                        ; preds = %for.body9
  %22 = load ptr, ptr %iter, align 8, !dbg !1122
  %ns14 = getelementptr inbounds %struct.ucounts, ptr %22, i32 0, i32 1, !dbg !1123
  %23 = load ptr, ptr %ns14, align 8, !dbg !1123
  %ucounts15 = getelementptr inbounds %struct.user_namespace, ptr %23, i32 0, i32 16, !dbg !1124
  %24 = load ptr, ptr %ucounts15, align 8, !dbg !1124
  store ptr %24, ptr %iter, align 8, !dbg !1125
  br label %for.cond7, !dbg !1126, !llvm.loop !1127

for.end16:                                        ; preds = %for.cond7
  %25 = load ptr, ptr %ucounts, align 8, !dbg !1129
  call void @put_ucounts(ptr noundef %25) #18, !dbg !1130
  store ptr null, ptr %retval, align 8, !dbg !1131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !1131

cleanup17:                                        ; preds = %for.end16, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %tns) #17, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 8, ptr %bad) #17, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #17, !dbg !1132
  %26 = load ptr, ptr %retval, align 8, !dbg !1132
  ret ptr %26, !dbg !1132
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_inc_below(ptr noundef %v, i32 noundef %u) #5 align 16 !dbg !1133 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %u.addr = alloca i32, align 4
  %c = alloca i64, align 8
  %old = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1138, metadata !DIExpression()), !dbg !1142
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !1139, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #17, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1140, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #17, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1141, metadata !DIExpression()), !dbg !1146
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1147
  %call = call i64 @atomic_long_read(ptr noundef %0) #18, !dbg !1148
  store i64 %call, ptr %c, align 8, !dbg !1149
  br label %for.cond, !dbg !1150

for.cond:                                         ; preds = %if.end15, %entry
  %1 = load i64, ptr %c, align 8, !dbg !1151
  %2 = load i32, ptr %u.addr, align 4, !dbg !1151
  %conv = sext i32 %2 to i64, !dbg !1151
  %cmp = icmp sge i64 %1, %conv, !dbg !1151
  %lnot = xor i1 %cmp, true, !dbg !1151
  %lnot2 = xor i1 %lnot, true, !dbg !1151
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1151
  %conv3 = sext i32 %lnot.ext to i64, !dbg !1151
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !1151
  %tobool = icmp ne i64 %expval, 0, !dbg !1151
  br i1 %tobool, label %if.then, label %if.end, !dbg !1156

if.then:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

if.end:                                           ; preds = %for.cond
  %3 = load ptr, ptr %v.addr, align 8, !dbg !1158
  %4 = load i64, ptr %c, align 8, !dbg !1159
  %5 = load i64, ptr %c, align 8, !dbg !1160
  %add = add i64 %5, 1, !dbg !1161
  %call4 = call i64 @atomic_long_cmpxchg(ptr noundef %3, i64 noundef %4, i64 noundef %add) #18, !dbg !1162
  store i64 %call4, ptr %old, align 8, !dbg !1163
  %6 = load i64, ptr %old, align 8, !dbg !1164
  %7 = load i64, ptr %c, align 8, !dbg !1164
  %cmp5 = icmp eq i64 %6, %7, !dbg !1164
  %lnot7 = xor i1 %cmp5, true, !dbg !1164
  %lnot9 = xor i1 %lnot7, true, !dbg !1164
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !1164
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !1164
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !1164
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !1164
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1166

if.then14:                                        ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1167

if.end15:                                         ; preds = %if.end
  %8 = load i64, ptr %old, align 8, !dbg !1168
  store i64 %8, ptr %c, align 8, !dbg !1169
  br label %for.cond, !dbg !1170, !llvm.loop !1171

cleanup:                                          ; preds = %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #17, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #17, !dbg !1174
  %9 = load i1, ptr %retval, align 1, !dbg !1174
  ret i1 %9, !dbg !1174
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_dec(ptr noundef %v) #6 align 16 !dbg !1175 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1179, metadata !DIExpression()), !dbg !1180
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1181
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !1182
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1183
  call void @raw_atomic_long_dec(ptr noundef %1) #18, !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dec_ucount(ptr noundef %ucounts, i32 noundef %type) #0 align 16 !dbg !1186 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %iter = alloca ptr, align 8
  %dec = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1190, metadata !DIExpression()), !dbg !1202
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1191, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1192, metadata !DIExpression()), !dbg !1205
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1206
  store ptr %0, ptr %iter, align 8, !dbg !1207
  br label %for.cond, !dbg !1208

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !1209
  %tobool = icmp ne ptr %1, null, !dbg !1210
  br i1 %tobool, label %for.body, label %for.end, !dbg !1210

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dec) #17, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %dec, metadata !1193, metadata !DIExpression()), !dbg !1212
  %2 = load ptr, ptr %iter, align 8, !dbg !1213
  %ucount = getelementptr inbounds %struct.ucounts, ptr %2, i32 0, i32 4, !dbg !1214
  %3 = load i32, ptr %type.addr, align 4, !dbg !1215
  %idxprom = zext i32 %3 to i64, !dbg !1213
  %arrayidx = getelementptr [10 x %struct.atomic64_t], ptr %ucount, i64 0, i64 %idxprom, !dbg !1213
  %call = call i64 @atomic_long_dec_if_positive(ptr noundef %arrayidx) #18, !dbg !1216
  store i64 %call, ptr %dec, align 8, !dbg !1212
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1217
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1197, metadata !DIExpression()), !dbg !1217
  %4 = load i64, ptr %dec, align 8, !dbg !1217
  %cmp = icmp slt i64 %4, 0, !dbg !1217
  %lnot = xor i1 %cmp, true, !dbg !1217
  %lnot1 = xor i1 %lnot, true, !dbg !1217
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1217
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1217
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1218
  %tobool2 = icmp ne i32 %5, 0, !dbg !1218
  %lnot3 = xor i1 %tobool2, true, !dbg !1218
  %lnot5 = xor i1 %lnot3, true, !dbg !1218
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1218
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1218
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1218
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1218
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1217

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !1218

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1199, metadata !DIExpression()), !dbg !1219
  store i32 2307, ptr %__flags, align 4, !dbg !1219
  br label %do.body8, !dbg !1219

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !1220

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1220

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !1219

do.body9:                                         ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !1222
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 258, i32 %6, i64 12) #17, !dbg !1222, !srcloc !1224
  br label %do.cond10, !dbg !1222

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1222

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1219

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !1225

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1225

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1218
  br label %do.cond15, !dbg !1219

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !1219

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !1219

if.end:                                           ; preds = %do.end16, %for.body
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !1217
  %tobool17 = icmp ne i32 %7, 0, !dbg !1217
  %lnot18 = xor i1 %tobool17, true, !dbg !1217
  %lnot20 = xor i1 %lnot18, true, !dbg !1217
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1217
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1217
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !1217
  store i64 %expval23, ptr %tmp, align 8, !dbg !1218
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1227
  %8 = load i64, ptr %tmp, align 8, !dbg !1217
  call void @llvm.lifetime.end.p0(i64 8, ptr %dec) #17, !dbg !1228
  br label %for.inc, !dbg !1229

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %iter, align 8, !dbg !1230
  %ns = getelementptr inbounds %struct.ucounts, ptr %9, i32 0, i32 1, !dbg !1231
  %10 = load ptr, ptr %ns, align 8, !dbg !1231
  %ucounts24 = getelementptr inbounds %struct.user_namespace, ptr %10, i32 0, i32 16, !dbg !1232
  %11 = load ptr, ptr %ucounts24, align 8, !dbg !1232
  store ptr %11, ptr %iter, align 8, !dbg !1233
  br label %for.cond, !dbg !1234, !llvm.loop !1235

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %ucounts.addr, align 8, !dbg !1237
  call void @put_ucounts(ptr noundef %12) #18, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1239
  ret void, !dbg !1239
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_dec_if_positive(ptr noundef %v) #6 align 16 !dbg !1240 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1244, metadata !DIExpression()), !dbg !1245
  br label %do.body, !dbg !1246

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1247

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1249
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !1250
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1251
  %call = call i64 @raw_atomic_long_dec_if_positive(ptr noundef %1) #18, !dbg !1252
  ret i64 %call, !dbg !1253
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @inc_rlimit_ucounts(ptr noundef %ucounts, i32 noundef %type, i64 noundef %v) #0 align 16 !dbg !1254 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %v.addr = alloca i64, align 8
  %iter = alloca ptr, align 8
  %max = alloca i64, align 8
  %ret = alloca i64, align 8
  %new = alloca i64, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1258, metadata !DIExpression()), !dbg !1268
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1259, metadata !DIExpression()), !dbg !1269
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1260, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1261, metadata !DIExpression()), !dbg !1272
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #17, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %max, metadata !1262, metadata !DIExpression()), !dbg !1274
  store i64 9223372036854775807, ptr %max, align 8, !dbg !1274
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !1275
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1263, metadata !DIExpression()), !dbg !1276
  store i64 0, ptr %ret, align 8, !dbg !1276
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1277
  store ptr %0, ptr %iter, align 8, !dbg !1278
  br label %for.cond, !dbg !1279

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !1280
  %tobool = icmp ne ptr %1, null, !dbg !1281
  br i1 %tobool, label %for.body, label %for.end, !dbg !1281

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %new, metadata !1264, metadata !DIExpression()), !dbg !1283
  %2 = load i64, ptr %v.addr, align 8, !dbg !1284
  %3 = load ptr, ptr %iter, align 8, !dbg !1285
  %rlimit = getelementptr inbounds %struct.ucounts, ptr %3, i32 0, i32 5, !dbg !1286
  %4 = load i32, ptr %type.addr, align 4, !dbg !1287
  %idxprom = zext i32 %4 to i64, !dbg !1285
  %arrayidx = getelementptr [4 x %struct.atomic64_t], ptr %rlimit, i64 0, i64 %idxprom, !dbg !1285
  %call = call i64 @atomic_long_add_return(i64 noundef %2, ptr noundef %arrayidx) #18, !dbg !1288
  store i64 %call, ptr %new, align 8, !dbg !1283
  %5 = load i64, ptr %new, align 8, !dbg !1289
  %cmp = icmp slt i64 %5, 0, !dbg !1291
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1292

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i64, ptr %new, align 8, !dbg !1293
  %7 = load i64, ptr %max, align 8, !dbg !1294
  %cmp1 = icmp sgt i64 %6, %7, !dbg !1295
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1296

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i64 9223372036854775807, ptr %ret, align 8, !dbg !1297
  br label %if.end4, !dbg !1298

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %iter, align 8, !dbg !1299
  %9 = load ptr, ptr %ucounts.addr, align 8, !dbg !1301
  %cmp2 = icmp eq ptr %8, %9, !dbg !1302
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1303

if.then3:                                         ; preds = %if.else
  %10 = load i64, ptr %new, align 8, !dbg !1304
  store i64 %10, ptr %ret, align 8, !dbg !1305
  br label %if.end, !dbg !1306

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %11 = load ptr, ptr %iter, align 8, !dbg !1307
  %ns = getelementptr inbounds %struct.ucounts, ptr %11, i32 0, i32 1, !dbg !1308
  %12 = load ptr, ptr %ns, align 8, !dbg !1308
  %13 = load i32, ptr %type.addr, align 4, !dbg !1309
  %call5 = call i64 @get_userns_rlimit_max(ptr noundef %12, i32 noundef %13) #18, !dbg !1310
  store i64 %call5, ptr %max, align 8, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !1312
  br label %for.inc, !dbg !1313

for.inc:                                          ; preds = %if.end4
  %14 = load ptr, ptr %iter, align 8, !dbg !1314
  %ns6 = getelementptr inbounds %struct.ucounts, ptr %14, i32 0, i32 1, !dbg !1315
  %15 = load ptr, ptr %ns6, align 8, !dbg !1315
  %ucounts7 = getelementptr inbounds %struct.user_namespace, ptr %15, i32 0, i32 16, !dbg !1316
  %16 = load ptr, ptr %ucounts7, align 8, !dbg !1316
  store ptr %16, ptr %iter, align 8, !dbg !1317
  br label %for.cond, !dbg !1318, !llvm.loop !1319

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %ret, align 8, !dbg !1321
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #17, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1322
  ret i64 %17, !dbg !1323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_add_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1324 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1328, metadata !DIExpression()), !dbg !1330
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1329, metadata !DIExpression()), !dbg !1331
  br label %do.body, !dbg !1332

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1333

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1335
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !1336
  %1 = load i64, ptr %i.addr, align 8, !dbg !1337
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1338
  %call = call i64 @raw_atomic_long_add_return(i64 noundef %1, ptr noundef %2) #18, !dbg !1339
  ret i64 %call, !dbg !1340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_userns_rlimit_max(ptr noundef %ns, i32 noundef %type) #5 align 16 !dbg !1341 {
entry:
  %ns.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !1345, metadata !DIExpression()), !dbg !1347
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1346, metadata !DIExpression()), !dbg !1348
  br label %do.body, !dbg !1349

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1351

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !1349
  %rlimit_max = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 18, !dbg !1349
  %1 = load i32, ptr %type.addr, align 4, !dbg !1349
  %idxprom = zext i32 %1 to i64, !dbg !1349
  %arrayidx = getelementptr [4 x i64], ptr %rlimit_max, i64 0, i64 %idxprom, !dbg !1349
  %2 = load volatile i64, ptr %arrayidx, align 8, !dbg !1349
  store i64 %2, ptr %tmp, align 8, !dbg !1351
  %3 = load i64, ptr %tmp, align 8, !dbg !1349
  ret i64 %3, !dbg !1353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @dec_rlimit_ucounts(ptr noundef %ucounts, i32 noundef %type, i64 noundef %v) #0 align 16 !dbg !1354 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %v.addr = alloca i64, align 8
  %iter = alloca ptr, align 8
  %new = alloca i64, align 8
  %dec = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1358, metadata !DIExpression()), !dbg !1372
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1359, metadata !DIExpression()), !dbg !1373
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1360, metadata !DIExpression()), !dbg !1374
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1361, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %new, metadata !1362, metadata !DIExpression()), !dbg !1378
  store i64 -1, ptr %new, align 8, !dbg !1378
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1379
  store ptr %0, ptr %iter, align 8, !dbg !1380
  br label %for.cond, !dbg !1381

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !1382
  %tobool = icmp ne ptr %1, null, !dbg !1383
  br i1 %tobool, label %for.body, label %for.end, !dbg !1383

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dec) #17, !dbg !1384
  call void @llvm.dbg.declare(metadata ptr %dec, metadata !1363, metadata !DIExpression()), !dbg !1385
  %2 = load i64, ptr %v.addr, align 8, !dbg !1386
  %3 = load ptr, ptr %iter, align 8, !dbg !1387
  %rlimit = getelementptr inbounds %struct.ucounts, ptr %3, i32 0, i32 5, !dbg !1388
  %4 = load i32, ptr %type.addr, align 4, !dbg !1389
  %idxprom = zext i32 %4 to i64, !dbg !1387
  %arrayidx = getelementptr [4 x %struct.atomic64_t], ptr %rlimit, i64 0, i64 %idxprom, !dbg !1387
  %call = call i64 @atomic_long_sub_return(i64 noundef %2, ptr noundef %arrayidx) #18, !dbg !1390
  store i64 %call, ptr %dec, align 8, !dbg !1385
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1367, metadata !DIExpression()), !dbg !1391
  %5 = load i64, ptr %dec, align 8, !dbg !1391
  %cmp = icmp slt i64 %5, 0, !dbg !1391
  %lnot = xor i1 %cmp, true, !dbg !1391
  %lnot1 = xor i1 %lnot, true, !dbg !1391
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1391
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1391
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1392
  %tobool2 = icmp ne i32 %6, 0, !dbg !1392
  %lnot3 = xor i1 %tobool2, true, !dbg !1392
  %lnot5 = xor i1 %lnot3, true, !dbg !1392
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1392
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1392
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1392
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1392
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1391

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !1392

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1369, metadata !DIExpression()), !dbg !1393
  store i32 2307, ptr %__flags, align 4, !dbg !1393
  br label %do.body8, !dbg !1393

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !1394

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1394

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !1393

do.body9:                                         ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !1396
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 286, i32 %7, i64 12) #17, !dbg !1396, !srcloc !1398
  br label %do.cond10, !dbg !1396

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1396

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1393

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !1399

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1399

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1392
  br label %do.cond15, !dbg !1393

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !1393

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !1393

if.end:                                           ; preds = %do.end16, %for.body
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1391
  %tobool17 = icmp ne i32 %8, 0, !dbg !1391
  %lnot18 = xor i1 %tobool17, true, !dbg !1391
  %lnot20 = xor i1 %lnot18, true, !dbg !1391
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1391
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1391
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !1391
  store i64 %expval23, ptr %tmp, align 8, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1401
  %9 = load i64, ptr %tmp, align 8, !dbg !1391
  %10 = load ptr, ptr %iter, align 8, !dbg !1402
  %11 = load ptr, ptr %ucounts.addr, align 8, !dbg !1404
  %cmp24 = icmp eq ptr %10, %11, !dbg !1405
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1406

if.then26:                                        ; preds = %if.end
  %12 = load i64, ptr %dec, align 8, !dbg !1407
  store i64 %12, ptr %new, align 8, !dbg !1408
  br label %if.end27, !dbg !1409

if.end27:                                         ; preds = %if.then26, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dec) #17, !dbg !1410
  br label %for.inc, !dbg !1411

for.inc:                                          ; preds = %if.end27
  %13 = load ptr, ptr %iter, align 8, !dbg !1412
  %ns = getelementptr inbounds %struct.ucounts, ptr %13, i32 0, i32 1, !dbg !1413
  %14 = load ptr, ptr %ns, align 8, !dbg !1413
  %ucounts28 = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 16, !dbg !1414
  %15 = load ptr, ptr %ucounts28, align 8, !dbg !1414
  store ptr %15, ptr %iter, align 8, !dbg !1415
  br label %for.cond, !dbg !1416, !llvm.loop !1417

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %new, align 8, !dbg !1419
  %cmp29 = icmp eq i64 %16, 0, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !1421
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1421
  ret i1 %cmp29, !dbg !1422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_sub_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1423 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1425, metadata !DIExpression()), !dbg !1427
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1426, metadata !DIExpression()), !dbg !1428
  br label %do.body, !dbg !1429

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1430

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1432
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !1433
  %1 = load i64, ptr %i.addr, align 8, !dbg !1434
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1435
  %call = call i64 @raw_atomic_long_sub_return(i64 noundef %1, ptr noundef %2) #18, !dbg !1436
  ret i64 %call, !dbg !1437
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dec_rlimit_put_ucounts(ptr noundef %ucounts, i32 noundef %type) #0 align 16 !dbg !1438 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1442, metadata !DIExpression()), !dbg !1444
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1443, metadata !DIExpression()), !dbg !1445
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1446
  %1 = load i32, ptr %type.addr, align 4, !dbg !1447
  call void @do_dec_rlimit_put_ucounts(ptr noundef %0, ptr noundef null, i32 noundef %1) #18, !dbg !1448
  ret void, !dbg !1449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_dec_rlimit_put_ucounts(ptr noundef %ucounts, ptr noundef %last, i32 noundef %type) #0 align 16 !dbg !1450 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %iter = alloca ptr, align 8
  %next = alloca ptr, align 8
  %dec = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1454, metadata !DIExpression()), !dbg !1468
  store ptr %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !1455, metadata !DIExpression()), !dbg !1469
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1456, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1457, metadata !DIExpression()), !dbg !1472
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #17, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1458, metadata !DIExpression()), !dbg !1473
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1474
  store ptr %0, ptr %iter, align 8, !dbg !1475
  br label %for.cond, !dbg !1476

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !1477
  %2 = load ptr, ptr %last.addr, align 8, !dbg !1478
  %cmp = icmp ne ptr %1, %2, !dbg !1479
  br i1 %cmp, label %for.body, label %for.end, !dbg !1480

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dec) #17, !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %dec, metadata !1459, metadata !DIExpression()), !dbg !1482
  %3 = load ptr, ptr %iter, align 8, !dbg !1483
  %rlimit = getelementptr inbounds %struct.ucounts, ptr %3, i32 0, i32 5, !dbg !1484
  %4 = load i32, ptr %type.addr, align 4, !dbg !1485
  %idxprom = zext i32 %4 to i64, !dbg !1483
  %arrayidx = getelementptr [4 x %struct.atomic64_t], ptr %rlimit, i64 0, i64 %idxprom, !dbg !1483
  %call = call i64 @atomic_long_sub_return(i64 noundef 1, ptr noundef %arrayidx) #18, !dbg !1486
  store i64 %call, ptr %dec, align 8, !dbg !1482
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1463, metadata !DIExpression()), !dbg !1487
  %5 = load i64, ptr %dec, align 8, !dbg !1487
  %cmp1 = icmp slt i64 %5, 0, !dbg !1487
  %lnot = xor i1 %cmp1, true, !dbg !1487
  %lnot2 = xor i1 %lnot, true, !dbg !1487
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1487
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1487
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1488
  %tobool = icmp ne i32 %6, 0, !dbg !1488
  %lnot3 = xor i1 %tobool, true, !dbg !1488
  %lnot5 = xor i1 %lnot3, true, !dbg !1488
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1488
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1488
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1488
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1488
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1487

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !1488

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1465, metadata !DIExpression()), !dbg !1489
  store i32 2307, ptr %__flags, align 4, !dbg !1489
  br label %do.body8, !dbg !1489

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !1490

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1490

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !1489

do.body9:                                         ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !1492
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 299, i32 %7, i64 12) #17, !dbg !1492, !srcloc !1494
  br label %do.cond10, !dbg !1492

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1492

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1489

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !1495

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1495

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1488
  br label %do.cond15, !dbg !1489

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !1489

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !1489

if.end:                                           ; preds = %do.end16, %for.body
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1487
  %tobool17 = icmp ne i32 %8, 0, !dbg !1487
  %lnot18 = xor i1 %tobool17, true, !dbg !1487
  %lnot20 = xor i1 %lnot18, true, !dbg !1487
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1487
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1487
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !1487
  store i64 %expval23, ptr %tmp, align 8, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1497
  %9 = load i64, ptr %tmp, align 8, !dbg !1487
  %10 = load ptr, ptr %iter, align 8, !dbg !1498
  %ns = getelementptr inbounds %struct.ucounts, ptr %10, i32 0, i32 1, !dbg !1499
  %11 = load ptr, ptr %ns, align 8, !dbg !1499
  %ucounts24 = getelementptr inbounds %struct.user_namespace, ptr %11, i32 0, i32 16, !dbg !1500
  %12 = load ptr, ptr %ucounts24, align 8, !dbg !1500
  store ptr %12, ptr %next, align 8, !dbg !1501
  %13 = load i64, ptr %dec, align 8, !dbg !1502
  %cmp25 = icmp eq i64 %13, 0, !dbg !1504
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1505

if.then27:                                        ; preds = %if.end
  %14 = load ptr, ptr %iter, align 8, !dbg !1506
  call void @put_ucounts(ptr noundef %14) #18, !dbg !1507
  br label %if.end28, !dbg !1507

if.end28:                                         ; preds = %if.then27, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dec) #17, !dbg !1508
  br label %for.inc, !dbg !1509

for.inc:                                          ; preds = %if.end28
  %15 = load ptr, ptr %next, align 8, !dbg !1510
  store ptr %15, ptr %iter, align 8, !dbg !1511
  br label %for.cond, !dbg !1512, !llvm.loop !1513

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #17, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1515
  ret void, !dbg !1515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @inc_rlimit_get_ucounts(ptr noundef %ucounts, i32 noundef %type, i1 noundef zeroext %override_rlimit) #0 align 16 !dbg !1516 {
entry:
  %retval = alloca i64, align 8
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %override_rlimit.addr = alloca i8, align 1
  %iter = alloca ptr, align 8
  %max = alloca i64, align 8
  %dec = alloca i64, align 8
  %ret = alloca i64, align 8
  %new = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1520, metadata !DIExpression()), !dbg !1537
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1521, metadata !DIExpression()), !dbg !1538
  %frombool = zext i1 %override_rlimit to i8
  store i8 %frombool, ptr %override_rlimit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %override_rlimit.addr, metadata !1522, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1523, metadata !DIExpression()), !dbg !1541
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #17, !dbg !1542
  call void @llvm.dbg.declare(metadata ptr %max, metadata !1524, metadata !DIExpression()), !dbg !1543
  store i64 9223372036854775807, ptr %max, align 8, !dbg !1543
  call void @llvm.lifetime.start.p0(i64 8, ptr %dec) #17, !dbg !1544
  call void @llvm.dbg.declare(metadata ptr %dec, metadata !1525, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !1544
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1526, metadata !DIExpression()), !dbg !1546
  store i64 0, ptr %ret, align 8, !dbg !1546
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1547
  store ptr %0, ptr %iter, align 8, !dbg !1548
  br label %for.cond, !dbg !1549

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !1550
  %tobool = icmp ne ptr %1, null, !dbg !1551
  br i1 %tobool, label %for.body, label %for.end, !dbg !1551

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !1552
  call void @llvm.dbg.declare(metadata ptr %new, metadata !1527, metadata !DIExpression()), !dbg !1553
  %2 = load ptr, ptr %iter, align 8, !dbg !1554
  %rlimit = getelementptr inbounds %struct.ucounts, ptr %2, i32 0, i32 5, !dbg !1555
  %3 = load i32, ptr %type.addr, align 4, !dbg !1556
  %idxprom = zext i32 %3 to i64, !dbg !1554
  %arrayidx = getelementptr [4 x %struct.atomic64_t], ptr %rlimit, i64 0, i64 %idxprom, !dbg !1554
  %call = call i64 @atomic_long_add_return(i64 noundef 1, ptr noundef %arrayidx) #18, !dbg !1557
  store i64 %call, ptr %new, align 8, !dbg !1553
  %4 = load i64, ptr %new, align 8, !dbg !1558
  %cmp = icmp slt i64 %4, 0, !dbg !1560
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1561

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i64, ptr %new, align 8, !dbg !1562
  %6 = load i64, ptr %max, align 8, !dbg !1563
  %cmp1 = icmp sgt i64 %5, %6, !dbg !1564
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1565

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1566

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %iter, align 8, !dbg !1567
  %8 = load ptr, ptr %ucounts.addr, align 8, !dbg !1569
  %cmp2 = icmp eq ptr %7, %8, !dbg !1570
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1571

if.then3:                                         ; preds = %if.end
  %9 = load i64, ptr %new, align 8, !dbg !1572
  store i64 %9, ptr %ret, align 8, !dbg !1573
  br label %if.end4, !dbg !1574

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i8, ptr %override_rlimit.addr, align 1, !dbg !1575, !range !825, !noundef !826
  %tobool5 = trunc i8 %10 to i1, !dbg !1575
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !1577

if.then6:                                         ; preds = %if.end4
  %11 = load ptr, ptr %iter, align 8, !dbg !1578
  %ns = getelementptr inbounds %struct.ucounts, ptr %11, i32 0, i32 1, !dbg !1579
  %12 = load ptr, ptr %ns, align 8, !dbg !1579
  %13 = load i32, ptr %type.addr, align 4, !dbg !1580
  %call7 = call i64 @get_userns_rlimit_max(ptr noundef %12, i32 noundef %13) #18, !dbg !1581
  store i64 %call7, ptr %max, align 8, !dbg !1582
  br label %if.end8, !dbg !1583

if.end8:                                          ; preds = %if.then6, %if.end4
  %14 = load i64, ptr %new, align 8, !dbg !1584
  %cmp9 = icmp ne i64 %14, 1, !dbg !1586
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1587

if.then10:                                        ; preds = %if.end8
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1588

if.end11:                                         ; preds = %if.end8
  %15 = load ptr, ptr %iter, align 8, !dbg !1589
  %call12 = call ptr @get_ucounts(ptr noundef %15) #18, !dbg !1591
  %tobool13 = icmp ne ptr %call12, null, !dbg !1591
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1592

if.then14:                                        ; preds = %if.end11
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1593

if.end15:                                         ; preds = %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1594
  br label %cleanup, !dbg !1594

cleanup:                                          ; preds = %if.then14, %if.then, %if.end15, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !1594
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup48 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 5, label %dec_unwind
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1595

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %16 = load ptr, ptr %iter, align 8, !dbg !1596
  %ns16 = getelementptr inbounds %struct.ucounts, ptr %16, i32 0, i32 1, !dbg !1597
  %17 = load ptr, ptr %ns16, align 8, !dbg !1597
  %ucounts17 = getelementptr inbounds %struct.user_namespace, ptr %17, i32 0, i32 16, !dbg !1598
  %18 = load ptr, ptr %ucounts17, align 8, !dbg !1598
  store ptr %18, ptr %iter, align 8, !dbg !1599
  br label %for.cond, !dbg !1600, !llvm.loop !1601

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %ret, align 8, !dbg !1603
  store i64 %19, ptr %retval, align 8, !dbg !1604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !1604

dec_unwind:                                       ; preds = %cleanup
  call void @llvm.dbg.label(metadata !1531), !dbg !1605
  %20 = load ptr, ptr %iter, align 8, !dbg !1606
  %rlimit18 = getelementptr inbounds %struct.ucounts, ptr %20, i32 0, i32 5, !dbg !1607
  %21 = load i32, ptr %type.addr, align 4, !dbg !1608
  %idxprom19 = zext i32 %21 to i64, !dbg !1606
  %arrayidx20 = getelementptr [4 x %struct.atomic64_t], ptr %rlimit18, i64 0, i64 %idxprom19, !dbg !1606
  %call21 = call i64 @atomic_long_sub_return(i64 noundef 1, ptr noundef %arrayidx20) #18, !dbg !1609
  store i64 %call21, ptr %dec, align 8, !dbg !1610
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1532, metadata !DIExpression()), !dbg !1611
  %22 = load i64, ptr %dec, align 8, !dbg !1611
  %cmp22 = icmp slt i64 %22, 0, !dbg !1611
  %lnot = xor i1 %cmp22, true, !dbg !1611
  %lnot23 = xor i1 %lnot, true, !dbg !1611
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !1611
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1611
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !1612
  %tobool24 = icmp ne i32 %23, 0, !dbg !1612
  %lnot25 = xor i1 %tobool24, true, !dbg !1612
  %lnot27 = xor i1 %lnot25, true, !dbg !1612
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !1612
  %conv = sext i32 %lnot.ext28 to i64, !dbg !1612
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1612
  %tobool29 = icmp ne i64 %expval, 0, !dbg !1612
  br i1 %tobool29, label %if.then30, label %if.end40, !dbg !1611

if.then30:                                        ; preds = %dec_unwind
  br label %do.body, !dbg !1612

do.body:                                          ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1534, metadata !DIExpression()), !dbg !1613
  store i32 2307, ptr %__flags, align 4, !dbg !1613
  br label %do.body31, !dbg !1613

do.body31:                                        ; preds = %do.body
  br label %do.cond, !dbg !1614

do.cond:                                          ; preds = %do.body31
  br label %do.end, !dbg !1614

do.end:                                           ; preds = %do.cond
  br label %do.body32, !dbg !1613

do.body32:                                        ; preds = %do.end
  %24 = load i32, ptr %__flags, align 4, !dbg !1616
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 339, i32 %24, i64 12) #17, !dbg !1616, !srcloc !1618
  br label %do.cond33, !dbg !1616

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1616

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !1613

do.body35:                                        ; preds = %do.end34
  br label %do.cond36, !dbg !1619

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !1619

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1612
  br label %do.cond38, !dbg !1613

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !1613

do.end39:                                         ; preds = %do.cond38
  br label %if.end40, !dbg !1613

if.end40:                                         ; preds = %do.end39, %dec_unwind
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !1611
  %tobool41 = icmp ne i32 %25, 0, !dbg !1611
  %lnot42 = xor i1 %tobool41, true, !dbg !1611
  %lnot44 = xor i1 %lnot42, true, !dbg !1611
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !1611
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !1611
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !1611
  store i64 %expval47, ptr %tmp, align 8, !dbg !1612
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1621
  %26 = load i64, ptr %tmp, align 8, !dbg !1611
  %27 = load ptr, ptr %ucounts.addr, align 8, !dbg !1622
  %28 = load ptr, ptr %iter, align 8, !dbg !1623
  %29 = load i32, ptr %type.addr, align 4, !dbg !1624
  call void @do_dec_rlimit_put_ucounts(ptr noundef %27, ptr noundef %28, i32 noundef %29) #18, !dbg !1625
  store i64 0, ptr %retval, align 8, !dbg !1626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !1626

cleanup48:                                        ; preds = %if.end40, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 8, ptr %dec) #17, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #17, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1627
  %30 = load i64, ptr %retval, align 8, !dbg !1627
  ret i64 %30, !dbg !1627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @is_rlimit_overlimit(ptr noundef %ucounts, i32 noundef %type, i64 noundef %rlimit) #0 align 16 !dbg !1628 {
entry:
  %retval = alloca i1, align 1
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %rlimit.addr = alloca i64, align 8
  %iter = alloca ptr, align 8
  %max = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1632, metadata !DIExpression()), !dbg !1641
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1633, metadata !DIExpression()), !dbg !1642
  store i64 %rlimit, ptr %rlimit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rlimit.addr, metadata !1634, metadata !DIExpression()), !dbg !1643
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !1644
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1635, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #17, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %max, metadata !1636, metadata !DIExpression()), !dbg !1647
  %0 = load i64, ptr %rlimit.addr, align 8, !dbg !1648
  store i64 %0, ptr %max, align 8, !dbg !1647
  %1 = load i64, ptr %rlimit.addr, align 8, !dbg !1649
  %cmp = icmp ugt i64 %1, 9223372036854775807, !dbg !1651
  br i1 %cmp, label %if.then, label %if.end, !dbg !1652

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %max, align 8, !dbg !1653
  br label %if.end, !dbg !1654

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ucounts.addr, align 8, !dbg !1655
  store ptr %2, ptr %iter, align 8, !dbg !1656
  br label %for.cond, !dbg !1657

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %iter, align 8, !dbg !1658
  %tobool = icmp ne ptr %3, null, !dbg !1659
  br i1 %tobool, label %for.body, label %for.end, !dbg !1659

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1637, metadata !DIExpression()), !dbg !1661
  %4 = load ptr, ptr %iter, align 8, !dbg !1662
  %5 = load i32, ptr %type.addr, align 4, !dbg !1663
  %call = call i64 @get_rlimit_value(ptr noundef %4, i32 noundef %5) #18, !dbg !1664
  store i64 %call, ptr %val, align 8, !dbg !1661
  %6 = load i64, ptr %val, align 8, !dbg !1665
  %cmp1 = icmp slt i64 %6, 0, !dbg !1667
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1668

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i64, ptr %val, align 8, !dbg !1669
  %8 = load i64, ptr %max, align 8, !dbg !1670
  %cmp2 = icmp sgt i64 %7, %8, !dbg !1671
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1672

if.then3:                                         ; preds = %lor.lhs.false, %for.body
  store i1 true, ptr %retval, align 1, !dbg !1673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1673

if.end4:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %iter, align 8, !dbg !1674
  %ns = getelementptr inbounds %struct.ucounts, ptr %9, i32 0, i32 1, !dbg !1675
  %10 = load ptr, ptr %ns, align 8, !dbg !1675
  %11 = load i32, ptr %type.addr, align 4, !dbg !1676
  %call5 = call i64 @get_userns_rlimit_max(ptr noundef %10, i32 noundef %11) #18, !dbg !1677
  store i64 %call5, ptr %max, align 8, !dbg !1678
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1679
  br label %cleanup, !dbg !1679

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !1679
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1680

for.inc:                                          ; preds = %cleanup.cont
  %12 = load ptr, ptr %iter, align 8, !dbg !1681
  %ns6 = getelementptr inbounds %struct.ucounts, ptr %12, i32 0, i32 1, !dbg !1682
  %13 = load ptr, ptr %ns6, align 8, !dbg !1682
  %ucounts7 = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 16, !dbg !1683
  %14 = load ptr, ptr %ucounts7, align 8, !dbg !1683
  store ptr %14, ptr %iter, align 8, !dbg !1684
  br label %for.cond, !dbg !1685, !llvm.loop !1686

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !1688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !1688

cleanup8:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #17, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !1689
  %15 = load i1, ptr %retval, align 1, !dbg !1689
  ret i1 %15, !dbg !1689
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_rlimit_value(ptr noundef %ucounts, i32 noundef %type) #5 align 16 !dbg !1690 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !1694, metadata !DIExpression()), !dbg !1696
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1695, metadata !DIExpression()), !dbg !1697
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !1698
  %rlimit = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 5, !dbg !1699
  %1 = load i32, ptr %type.addr, align 4, !dbg !1700
  %idxprom = zext i32 %1 to i64, !dbg !1698
  %arrayidx = getelementptr [4 x %struct.atomic64_t], ptr %rlimit, i64 0, i64 %idxprom, !dbg !1698
  %call = call i64 @atomic_long_read(ptr noundef %arrayidx) #18, !dbg !1701
  ret i64 %call, !dbg !1702
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_ucount__179_378_user_namespace_sysctl_init4() #10 section ".init.text" align 16 !dbg !1703 {
entry:
  %call = call i32 @user_namespace_sysctl_init() #21, !dbg !1704
  ret i32 %call, !dbg !1704
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @user_namespace_sysctl_init() #10 section ".init.text" align 16 !dbg !557 {
entry:
  %call = call ptr @register_sysctl_sz(ptr noundef @.str, ptr noundef @user_namespace_sysctl_init.empty, i64 noundef 0) #18, !dbg !1705
  store ptr %call, ptr @user_namespace_sysctl_init.user_header, align 8, !dbg !1706
  %0 = load ptr, ptr @user_namespace_sysctl_init.user_header, align 8, !dbg !1707
  call void @kmemleak_ignore(ptr noundef %0) #18, !dbg !1708
  br label %do.body, !dbg !1709

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr @user_namespace_sysctl_init.user_header, align 8, !dbg !1710
  %tobool = icmp ne ptr %1, null, !dbg !1710
  %lnot = xor i1 %tobool, true, !dbg !1710
  %lnot1 = xor i1 %lnot, true, !dbg !1710
  %lnot2 = xor i1 %lnot1, true, !dbg !1710
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1710
  %conv = sext i32 %lnot.ext to i64, !dbg !1710
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1710
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1710
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1713

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1710

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1714

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !1716

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !1714

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 371, i32 0, i64 12) #17, !dbg !1718, !srcloc !1720
  br label %do.end7, !dbg !1718

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !1714

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !1714

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !1713

do.end9:                                          ; preds = %if.end
  br label %do.body10, !dbg !1721

do.body10:                                        ; preds = %do.end9
  %call11 = call zeroext i1 @setup_userns_sysctls(ptr noundef @init_user_ns) #18, !dbg !1722
  %lnot12 = xor i1 %call11, true, !dbg !1722
  %lnot14 = xor i1 %lnot12, true, !dbg !1722
  %lnot16 = xor i1 %lnot14, true, !dbg !1722
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !1722
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !1722
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !1722
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !1722
  br i1 %tobool20, label %if.then21, label %if.end28, !dbg !1725

if.then21:                                        ; preds = %do.body10
  br label %do.body22, !dbg !1722

do.body22:                                        ; preds = %if.then21
  br label %do.body23, !dbg !1726

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1728

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !1726

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 372, i32 0, i64 12) #17, !dbg !1730, !srcloc !1732
  br label %do.end26, !dbg !1730

do.end26:                                         ; preds = %do.body25
  unreachable, !dbg !1726

do.end27:                                         ; No predecessors!
  br label %if.end28, !dbg !1726

if.end28:                                         ; preds = %do.end27, %do.body10
  br label %do.end29, !dbg !1725

do.end29:                                         ; preds = %if.end28
  call void @hlist_add_ucounts(ptr noundef @init_ucounts) #18, !dbg !1733
  %call30 = call i64 @inc_rlimit_ucounts(ptr noundef @init_ucounts, i32 noundef 0, i64 noundef 1) #18, !dbg !1734
  ret i32 0, !dbg !1735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @set_lookup(ptr noundef %root) #0 align 16 !dbg !1736 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1738, metadata !DIExpression()), !dbg !1739
  %call = call ptr @current_user_ns() #18, !dbg !1740
  %set = getelementptr inbounds %struct.user_namespace, ptr %call, i32 0, i32 14, !dbg !1741
  ret ptr %set, !dbg !1742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_permissions(ptr noundef %head, ptr noundef %table) #0 align 16 !dbg !1743 {
entry:
  %head.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %mode = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1745, metadata !DIExpression()), !dbg !1751
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1746, metadata !DIExpression()), !dbg !1752
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #17, !dbg !1753
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !1747, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1748, metadata !DIExpression()), !dbg !1755
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1755
  %set = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 4, !dbg !1755
  %1 = load ptr, ptr %set, align 8, !dbg !1755
  store ptr %1, ptr %__mptr, align 8, !dbg !1755
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1755
  %add.ptr = getelementptr i8, ptr %2, i64 -376, !dbg !1755
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1756
  %3 = load ptr, ptr %tmp, align 8, !dbg !1755
  store ptr %3, ptr %user_ns, align 8, !dbg !1754
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #17, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1750, metadata !DIExpression()), !dbg !1758
  %4 = load ptr, ptr %user_ns, align 8, !dbg !1759
  %call = call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 24) #18, !dbg !1761
  br i1 %call, label %if.then, label %if.else, !dbg !1762

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %table.addr, align 8, !dbg !1763
  %mode1 = getelementptr inbounds %struct.ctl_table, ptr %5, i32 0, i32 3, !dbg !1764
  %6 = load i16, ptr %mode1, align 4, !dbg !1764
  %conv = zext i16 %6 to i32, !dbg !1763
  %and = and i32 %conv, 448, !dbg !1765
  %shr = ashr i32 %and, 6, !dbg !1766
  store i32 %shr, ptr %mode, align 4, !dbg !1767
  br label %if.end, !dbg !1768

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %table.addr, align 8, !dbg !1769
  %mode2 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 3, !dbg !1770
  %8 = load i16, ptr %mode2, align 4, !dbg !1770
  %conv3 = zext i16 %8 to i32, !dbg !1769
  %and4 = and i32 %conv3, 4, !dbg !1771
  store i32 %and4, ptr %mode, align 4, !dbg !1772
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %mode, align 4, !dbg !1773
  %shl = shl i32 %9, 6, !dbg !1774
  %10 = load i32, ptr %mode, align 4, !dbg !1775
  %shl5 = shl i32 %10, 3, !dbg !1776
  %or = or i32 %shl, %shl5, !dbg !1777
  %11 = load i32, ptr %mode, align 4, !dbg !1778
  %or6 = or i32 %or, %11, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #17, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #17, !dbg !1780
  ret i32 %or6, !dbg !1781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #5 align 16 !dbg !1782 {
entry:
  ret ptr @init_user_ns, !dbg !1786
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1787 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_add_negative(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1791 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1795, metadata !DIExpression()), !dbg !1797
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1796, metadata !DIExpression()), !dbg !1798
  br label %do.body, !dbg !1799

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1800

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1802
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !1803
  %1 = load i32, ptr %i.addr, align 4, !dbg !1804
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1805
  %call = call zeroext i1 @raw_atomic_add_negative(i32 noundef %1, ptr noundef %2) #18, !dbg !1806
  ret i1 %call, !dbg !1807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !1808 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1816, metadata !DIExpression()), !dbg !1818
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1817, metadata !DIExpression()), !dbg !1819
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1820
  %1 = load i64, ptr %size.addr, align 8, !dbg !1821
  %conv = trunc i64 %1 to i32, !dbg !1821
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !1822
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1823
  %3 = load i64, ptr %size.addr, align 8, !dbg !1823
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !1823
  ret void, !dbg !1824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_add_negative(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1825 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1828, metadata !DIExpression()), !dbg !1830
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1829, metadata !DIExpression()), !dbg !1831
  %0 = load i32, ptr %i.addr, align 4, !dbg !1832
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1833
  %call = call zeroext i1 @arch_atomic_add_negative(i32 noundef %0, ptr noundef %1) #18, !dbg !1834
  ret i1 %call, !dbg !1835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1836 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1841, metadata !DIExpression()), !dbg !1843
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1842, metadata !DIExpression()), !dbg !1844
  ret i1 true, !dbg !1845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !1846 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1851, metadata !DIExpression()), !dbg !1854
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1852, metadata !DIExpression()), !dbg !1855
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1853, metadata !DIExpression()), !dbg !1856
  ret void, !dbg !1857
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_add_negative(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1858 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1861, metadata !DIExpression()), !dbg !1865
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1862, metadata !DIExpression()), !dbg !1866
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1863, metadata !DIExpression()), !dbg !1867
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1867
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1867
  %1 = load i32, ptr %i.addr, align 4, !dbg !1867
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addl $2, $0\0A\09/* output condition code s*/\0A", "=*m,={@ccs},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !1867, !srcloc !1868
  %3 = icmp ult i8 %2, 2, !dbg !1867
  call void @llvm.assume(i1 %3), !dbg !1867
  store i8 %2, ptr %c, align 1, !dbg !1867
  %4 = load i8, ptr %c, align 1, !dbg !1867, !range !825, !noundef !826
  %tobool = trunc i8 %4 to i1, !dbg !1867
  %frombool = zext i1 %tobool to i8, !dbg !1867
  store i8 %frombool, ptr %tmp, align 1, !dbg !1867
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !1869
  %5 = load i8, ptr %tmp, align 1, !dbg !1867, !range !825, !noundef !826
  %tobool1 = trunc i8 %5 to i1, !dbg !1867
  ret i1 %tobool1, !dbg !1870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1871 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !1876 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !1880, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %right, metadata !1881, metadata !DIExpression()), !dbg !1883
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !1884
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !1884
  %call = call i32 @__kuid_val(i32 %0) #18, !dbg !1884
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !1885
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !1885
  %call4 = call i32 @__kuid_val(i32 %1) #18, !dbg !1885
  %cmp = icmp eq i32 %call, %call4, !dbg !1886
  ret i1 %cmp, !dbg !1887
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1888 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !1889 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1891, metadata !DIExpression()), !dbg !1896
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1892, metadata !DIExpression()), !dbg !1897
  %0 = load i64, ptr %size.addr, align 8, !dbg !1898
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1899
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1900

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1901
  %tobool = icmp ne i64 %2, 0, !dbg !1901
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1902

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1893, metadata !DIExpression()), !dbg !1904
  %3 = load i64, ptr %size.addr, align 8, !dbg !1905
  %cmp = icmp ugt i64 %3, 8192, !dbg !1907
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1908

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1909
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1910
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !1911
  store ptr %call, ptr %retval, align 8, !dbg !1912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1912

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1913
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !1913
  store i32 %call2, ptr %index, align 4, !dbg !1914
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1915
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1916
  %9 = ptrtoint ptr %8 to i64, !dbg !1916
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !1917
  %idxprom = zext i32 %call3 to i64, !dbg !1918
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1918
  %10 = load i32, ptr %index, align 4, !dbg !1919
  %idxprom4 = zext i32 %10 to i64, !dbg !1918
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1918
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1918
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1920
  %13 = load i64, ptr %size.addr, align 8, !dbg !1921
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !1922
  store ptr %call6, ptr %retval, align 8, !dbg !1923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1923

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !1924
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1925
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1926
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !1927
  store ptr %call8, ptr %retval, align 8, !dbg !1928
  br label %return, !dbg !1928

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1929
  ret ptr %16, !dbg !1929
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1930 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1931 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1935, metadata !DIExpression()), !dbg !1937
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1936, metadata !DIExpression()), !dbg !1938
  %0 = load i64, ptr %size.addr, align 8, !dbg !1939
  %tobool = icmp ne i64 %0, 0, !dbg !1939
  br i1 %tobool, label %if.end, label %if.then, !dbg !1941

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1942
  br label %return, !dbg !1942

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1943
  %cmp = icmp ule i64 %1, 8, !dbg !1945
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1946

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1947
  br label %return, !dbg !1947

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1948
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1950
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1951

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1952
  %cmp4 = icmp ule i64 %3, 96, !dbg !1953
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1954

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1955
  br label %return, !dbg !1955

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1956
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1958
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1959

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1960
  %cmp9 = icmp ule i64 %5, 192, !dbg !1961
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1962

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1963
  br label %return, !dbg !1963

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1964
  %cmp12 = icmp ule i64 %6, 8, !dbg !1966
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1967

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1968
  br label %return, !dbg !1968

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1969
  %cmp15 = icmp ule i64 %7, 16, !dbg !1971
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1972

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1973
  br label %return, !dbg !1973

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1974
  %cmp18 = icmp ule i64 %8, 32, !dbg !1976
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1977

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1978
  br label %return, !dbg !1978

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1979
  %cmp21 = icmp ule i64 %9, 64, !dbg !1981
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1982

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1983
  br label %return, !dbg !1983

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1984
  %cmp24 = icmp ule i64 %10, 128, !dbg !1986
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1987

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1988
  br label %return, !dbg !1988

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1989
  %cmp27 = icmp ule i64 %11, 256, !dbg !1991
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1992

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1993
  br label %return, !dbg !1993

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1994
  %cmp30 = icmp ule i64 %12, 512, !dbg !1996
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1997

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1998
  br label %return, !dbg !1998

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1999
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2001
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2002

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2003
  br label %return, !dbg !2003

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2004
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2006
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2007

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2008
  br label %return, !dbg !2008

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2009
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2011
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2012

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2013
  br label %return, !dbg !2013

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2014
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2016
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2017

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2018
  br label %return, !dbg !2018

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2019
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2021
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2022

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2023
  br label %return, !dbg !2023

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2024
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2026
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2027

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2028
  br label %return, !dbg !2028

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2029
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2031
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2032

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2033
  br label %return, !dbg !2033

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2034
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2036
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2037

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2038
  br label %return, !dbg !2038

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2039
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2041
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2042

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2043
  br label %return, !dbg !2043

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2044
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2046
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2047

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2048
  br label %return, !dbg !2048

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2049
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2051
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2052

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2053
  br label %return, !dbg !2053

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2054
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2056
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2057

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2058
  br label %return, !dbg !2058

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2059, !range !825, !noundef !826
  %tobool69 = trunc i8 %25 to i1, !dbg !2059
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2061

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2062

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #23, !dbg !2063, !srcloc !2066
  unreachable, !dbg !2063

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2067

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2068

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2069

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2071

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2069

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 480, i32 0, i64 12) #17, !dbg !2073, !srcloc !2075
  br label %do.end75, !dbg !2073

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2069

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2076
  br label %return, !dbg !2076

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2077
  ret i32 %26, !dbg !2077
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2078 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2084 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2088, metadata !DIExpression()), !dbg !2090
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2089, metadata !DIExpression()), !dbg !2091
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2092
  %and = and i32 %0, 17, !dbg !2092
  %cmp = icmp eq i32 %and, 0, !dbg !2092
  %lnot = xor i1 %cmp, true, !dbg !2092
  %lnot1 = xor i1 %lnot, true, !dbg !2092
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2092
  %conv = sext i32 %lnot.ext to i64, !dbg !2092
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2092
  %tobool = icmp ne i64 %expval, 0, !dbg !2092
  br i1 %tobool, label %if.then, label %if.end, !dbg !2094

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2096
  %and2 = and i32 %1, 1, !dbg !2098
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2098
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2099

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2100
  br label %return, !dbg !2100

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2101
  br label %return, !dbg !2101

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2103
  ret i32 %2, !dbg !2103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2104 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2105 dso_local void @__compiletime_assert_117() #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2108 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2110, metadata !DIExpression()), !dbg !2112
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2111, metadata !DIExpression()), !dbg !2113
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2114
  %1 = load i64, ptr %size.addr, align 8, !dbg !2115
  %conv = trunc i64 %1 to i32, !dbg !2115
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !2116
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2117
  %3 = load i64, ptr %size.addr, align 8, !dbg !2117
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !2117
  ret void, !dbg !2118
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !2119 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2125
  %1 = load i32, ptr %i.addr, align 4, !dbg !2126
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !2127
  ret void, !dbg !2128
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !2129 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2131, metadata !DIExpression()), !dbg !2133
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2132, metadata !DIExpression()), !dbg !2134
  br label %do.body, !dbg !2135

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2136
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2136
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2136
  store volatile i32 %0, ptr %counter, align 4, !dbg !2136
  br label %do.end, !dbg !2136

do.end:                                           ; preds = %do.body
  ret void, !dbg !2138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #5 align 16 !dbg !2139 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2145, metadata !DIExpression()), !dbg !2146
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2147
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !2148
  %1 = load ptr, ptr %pprev, align 8, !dbg !2148
  %tobool = icmp ne ptr %1, null, !dbg !2149
  %lnot = xor i1 %tobool, true, !dbg !2149
  %lnot.ext = zext i1 %lnot to i32, !dbg !2149
  ret i32 %lnot.ext, !dbg !2150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #5 align 16 !dbg !2151 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #17, !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2154, metadata !DIExpression()), !dbg !2158
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2159
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !2160
  %1 = load ptr, ptr %next1, align 8, !dbg !2160
  store ptr %1, ptr %next, align 8, !dbg !2158
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #17, !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !2155, metadata !DIExpression()), !dbg !2162
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2163
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !2164
  %3 = load ptr, ptr %pprev2, align 8, !dbg !2164
  store ptr %3, ptr %pprev, align 8, !dbg !2162
  br label %do.body, !dbg !2165

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !2166

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !2168

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !2168

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !2166

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !2170
  %5 = load ptr, ptr %pprev, align 8, !dbg !2170
  store volatile ptr %4, ptr %5, align 8, !dbg !2170
  br label %do.cond5, !dbg !2170

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2170

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !2166

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2166

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !2172
  %tobool = icmp ne ptr %6, null, !dbg !2172
  br i1 %tobool, label %if.then, label %if.end, !dbg !2174

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !2175

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !2176

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !2178

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2178

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2176

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !2180
  %8 = load ptr, ptr %next, align 8, !dbg !2180
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !2180
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !2180
  br label %do.cond15, !dbg !2180

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !2180

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !2176

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2176

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !2176

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #17, !dbg !2182
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #17, !dbg !2182
  ret void, !dbg !2182
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_HLIST_NODE(ptr noundef %h) #5 align 16 !dbg !2183 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2187
  %next = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !2188
  store ptr null, ptr %next, align 8, !dbg !2189
  %1 = load ptr, ptr %h.addr, align 8, !dbg !2190
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !2191
  store ptr null, ptr %pprev, align 8, !dbg !2192
  ret void, !dbg !2193
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2194 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #6 align 16 !dbg !2197 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2203, metadata !DIExpression()), !dbg !2204
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2205
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #18, !dbg !2206
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2207
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #18, !dbg !2208
  ret i64 %call, !dbg !2209
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !2210 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2214, metadata !DIExpression()), !dbg !2217
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2215, metadata !DIExpression()), !dbg !2218
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2216, metadata !DIExpression()), !dbg !2219
  br label %do.body, !dbg !2220

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2221

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2223
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !2224
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2225
  %2 = load i64, ptr %old.addr, align 8, !dbg !2226
  %3 = load i64, ptr %new.addr, align 8, !dbg !2227
  %call = call i64 @raw_atomic_long_cmpxchg(ptr noundef %1, i64 noundef %2, i64 noundef %3) #18, !dbg !2228
  ret i64 %call, !dbg !2229
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2230 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2232, metadata !DIExpression()), !dbg !2234
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2233, metadata !DIExpression()), !dbg !2235
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2236
  %1 = load i64, ptr %size.addr, align 8, !dbg !2237
  %conv = trunc i64 %1 to i32, !dbg !2237
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !2238
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2239
  %3 = load i64, ptr %size.addr, align 8, !dbg !2239
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #6 align 16 !dbg !2241 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2243, metadata !DIExpression()), !dbg !2244
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2245
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #18, !dbg !2246
  ret i64 %call, !dbg !2247
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2248 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2250, metadata !DIExpression()), !dbg !2252
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2251, metadata !DIExpression()), !dbg !2253
  ret i1 true, !dbg !2254
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #6 align 16 !dbg !2255 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2261, metadata !DIExpression()), !dbg !2262
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2263
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #18, !dbg !2264
  ret i64 %call, !dbg !2265
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #6 align 16 !dbg !2266 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2269, metadata !DIExpression()), !dbg !2270
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2271
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !2271
  %1 = load volatile i64, ptr %counter, align 8, !dbg !2271
  ret i64 %1, !dbg !2272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !2273 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2275, metadata !DIExpression()), !dbg !2278
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2276, metadata !DIExpression()), !dbg !2279
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2277, metadata !DIExpression()), !dbg !2280
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2281
  %1 = load i64, ptr %old.addr, align 8, !dbg !2282
  %2 = load i64, ptr %new.addr, align 8, !dbg !2283
  %call = call i64 @raw_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #18, !dbg !2284
  ret i64 %call, !dbg !2285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !2286 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2291, metadata !DIExpression()), !dbg !2294
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2292, metadata !DIExpression()), !dbg !2295
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2293, metadata !DIExpression()), !dbg !2296
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2297
  %1 = load i64, ptr %old.addr, align 8, !dbg !2298
  %2 = load i64, ptr %new.addr, align 8, !dbg !2299
  %call = call i64 @arch_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #18, !dbg !2300
  ret i64 %call, !dbg !2301
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !2302 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2304, metadata !DIExpression()), !dbg !2312
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2305, metadata !DIExpression()), !dbg !2313
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2306, metadata !DIExpression()), !dbg !2314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2307, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2309, metadata !DIExpression()), !dbg !2315
  %0 = load i64, ptr %old.addr, align 8, !dbg !2315
  store i64 %0, ptr %__old, align 8, !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2310, metadata !DIExpression()), !dbg !2315
  %1 = load i64, ptr %new.addr, align 8, !dbg !2315
  store i64 %1, ptr %__new, align 8, !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2311, metadata !DIExpression()), !dbg !2315
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2315
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !2315
  store ptr %counter, ptr %__ptr, align 8, !dbg !2315
  %3 = load ptr, ptr %__ptr, align 8, !dbg !2315
  %4 = load i64, ptr %__new, align 8, !dbg !2315
  %5 = load i64, ptr %__old, align 8, !dbg !2315
  %6 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %3, i64 %4, i64 %5, ptr elementtype(i64) %3) #17, !dbg !2315, !srcloc !2316
  store i64 %6, ptr %__ret, align 8, !dbg !2315
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !2315
  %7 = load i64, ptr %__ret, align 8, !dbg !2315
  store i64 %7, ptr %tmp, align 8, !dbg !2315
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !2317
  %8 = load i64, ptr %tmp, align 8, !dbg !2315
  ret i64 %8, !dbg !2318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_dec(ptr noundef %v) #6 align 16 !dbg !2319 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2321, metadata !DIExpression()), !dbg !2322
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2323
  call void @raw_atomic64_dec(ptr noundef %0) #18, !dbg !2324
  ret void, !dbg !2325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_dec(ptr noundef %v) #6 align 16 !dbg !2326 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2330, metadata !DIExpression()), !dbg !2331
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2332
  call void @arch_atomic64_dec(ptr noundef %0) #18, !dbg !2333
  ret void, !dbg !2334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_dec(ptr noundef %v) #6 align 16 !dbg !2335 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2337, metadata !DIExpression()), !dbg !2338
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2339
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !2340
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2341
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !2342
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #17, !dbg !2343, !srcloc !2344
  ret void, !dbg !2345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_dec_if_positive(ptr noundef %v) #6 align 16 !dbg !2346 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2350
  %call = call i64 @raw_atomic64_dec_if_positive(ptr noundef %0) #18, !dbg !2351
  ret i64 %call, !dbg !2352
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_dec_if_positive(ptr noundef %v) #6 align 16 !dbg !2353 {
entry:
  %v.addr = alloca ptr, align 8
  %dec = alloca i64, align 8
  %c = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2357, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 8, ptr %dec) #17, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %dec, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #17, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2359, metadata !DIExpression()), !dbg !2363
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2364
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #18, !dbg !2365
  store i64 %call, ptr %c, align 8, !dbg !2363
  br label %do.body, !dbg !2366

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, ptr %c, align 8, !dbg !2367
  %sub = sub i64 %1, 1, !dbg !2369
  store i64 %sub, ptr %dec, align 8, !dbg !2370
  %2 = load i64, ptr %dec, align 8, !dbg !2371
  %cmp = icmp slt i64 %2, 0, !dbg !2371
  %lnot = xor i1 %cmp, true, !dbg !2371
  %lnot1 = xor i1 %lnot, true, !dbg !2371
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2371
  %conv = sext i32 %lnot.ext to i64, !dbg !2371
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2371
  %tobool = icmp ne i64 %expval, 0, !dbg !2371
  br i1 %tobool, label %if.then, label %if.end, !dbg !2373

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !2374

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2375

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !2376
  %4 = load i64, ptr %dec, align 8, !dbg !2377
  %call2 = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %3, ptr noundef %c, i64 noundef %4) #18, !dbg !2378
  %lnot3 = xor i1 %call2, true, !dbg !2379
  br i1 %lnot3, label %do.body, label %do.end, !dbg !2375, !llvm.loop !2380

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load i64, ptr %dec, align 8, !dbg !2382
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #17, !dbg !2383
  call void @llvm.lifetime.end.p0(i64 8, ptr %dec) #17, !dbg !2383
  ret i64 %5, !dbg !2384
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #6 align 16 !dbg !2385 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2389, metadata !DIExpression()), !dbg !2392
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2390, metadata !DIExpression()), !dbg !2393
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2391, metadata !DIExpression()), !dbg !2394
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2395
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2396
  %2 = load i64, ptr %new.addr, align 8, !dbg !2397
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18, !dbg !2398
  ret i1 %call, !dbg !2399
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #6 align 16 !dbg !2400 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2402, metadata !DIExpression()), !dbg !2411
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2403, metadata !DIExpression()), !dbg !2412
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2404, metadata !DIExpression()), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2405, metadata !DIExpression()), !dbg !2414
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2407, metadata !DIExpression()), !dbg !2414
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2414
  store ptr %0, ptr %_old, align 8, !dbg !2414
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2408, metadata !DIExpression()), !dbg !2414
  %1 = load ptr, ptr %_old, align 8, !dbg !2414
  %2 = load i64, ptr %1, align 8, !dbg !2414
  store i64 %2, ptr %__old, align 8, !dbg !2414
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2409, metadata !DIExpression()), !dbg !2414
  %3 = load i64, ptr %new.addr, align 8, !dbg !2414
  store i64 %3, ptr %__new, align 8, !dbg !2414
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2410, metadata !DIExpression()), !dbg !2414
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2414
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !2414
  store ptr %counter, ptr %__ptr, align 8, !dbg !2414
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2414
  %6 = load i64, ptr %__old, align 8, !dbg !2414
  %7 = load i64, ptr %__new, align 8, !dbg !2414
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #17, !dbg !2414, !srcloc !2415
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !2414
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !2414
  %9 = icmp ult i8 %asmresult, 2, !dbg !2414
  call void @llvm.assume(i1 %9), !dbg !2414
  store i8 %asmresult, ptr %success, align 1, !dbg !2414
  store i64 %asmresult1, ptr %__old, align 8, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !2414
  %10 = load i8, ptr %success, align 1, !dbg !2416, !range !825, !noundef !826
  %tobool = trunc i8 %10 to i1, !dbg !2416
  %lnot = xor i1 %tobool, true, !dbg !2416
  %lnot2 = xor i1 %lnot, true, !dbg !2416
  %lnot3 = xor i1 %lnot2, true, !dbg !2416
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2416
  %conv = sext i32 %lnot.ext to i64, !dbg !2416
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2416
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2416
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2414

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !2416
  %12 = load ptr, ptr %_old, align 8, !dbg !2416
  store i64 %11, ptr %12, align 8, !dbg !2416
  br label %if.end, !dbg !2416

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2414, !range !825, !noundef !826
  %tobool5 = trunc i8 %13 to i1, !dbg !2414
  %lnot6 = xor i1 %tobool5, true, !dbg !2414
  %lnot8 = xor i1 %lnot6, true, !dbg !2414
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2414
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2414
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2414
  store i64 %expval11, ptr %tmp, align 8, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !2418
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !2418
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !2418
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !2418
  %14 = load i64, ptr %tmp, align 8, !dbg !2414
  %tobool12 = icmp ne i64 %14, 0, !dbg !2418
  ret i1 %tobool12, !dbg !2419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_add_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !2420 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2422, metadata !DIExpression()), !dbg !2424
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2423, metadata !DIExpression()), !dbg !2425
  %0 = load i64, ptr %i.addr, align 8, !dbg !2426
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2427
  %call = call i64 @raw_atomic64_add_return(i64 noundef %0, ptr noundef %1) #18, !dbg !2428
  ret i64 %call, !dbg !2429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !2430 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2434, metadata !DIExpression()), !dbg !2436
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2435, metadata !DIExpression()), !dbg !2437
  %0 = load i64, ptr %i.addr, align 8, !dbg !2438
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2439
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #18, !dbg !2440
  ret i64 %call, !dbg !2441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !2442 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2444, metadata !DIExpression()), !dbg !2448
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2445, metadata !DIExpression()), !dbg !2449
  %0 = load i64, ptr %i.addr, align 8, !dbg !2450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2446, metadata !DIExpression()), !dbg !2451
  %1 = load i64, ptr %i.addr, align 8, !dbg !2451
  store i64 %1, ptr %__ret, align 8, !dbg !2451
  %2 = load i64, ptr %__ret, align 8, !dbg !2451
  %3 = load ptr, ptr %v.addr, align 8, !dbg !2451
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !2451
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #17, !dbg !2451, !srcloc !2452
  store i64 %4, ptr %__ret, align 8, !dbg !2451
  %5 = load i64, ptr %__ret, align 8, !dbg !2451
  store i64 %5, ptr %tmp, align 8, !dbg !2451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !2453
  %6 = load i64, ptr %tmp, align 8, !dbg !2451
  %add = add i64 %0, %6, !dbg !2454
  ret i64 %add, !dbg !2455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_sub_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !2456 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2458, metadata !DIExpression()), !dbg !2460
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2459, metadata !DIExpression()), !dbg !2461
  %0 = load i64, ptr %i.addr, align 8, !dbg !2462
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2463
  %call = call i64 @raw_atomic64_sub_return(i64 noundef %0, ptr noundef %1) #18, !dbg !2464
  ret i64 %call, !dbg !2465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_sub_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !2466 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2468, metadata !DIExpression()), !dbg !2470
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2469, metadata !DIExpression()), !dbg !2471
  %0 = load i64, ptr %i.addr, align 8, !dbg !2472
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2473
  %call = call i64 @arch_atomic64_sub_return(i64 noundef %0, ptr noundef %1) #18, !dbg !2474
  ret i64 %call, !dbg !2475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_sub_return(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !2476 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2478, metadata !DIExpression()), !dbg !2480
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2479, metadata !DIExpression()), !dbg !2481
  %0 = load i64, ptr %i.addr, align 8, !dbg !2482
  %sub = sub i64 0, %0, !dbg !2483
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2484
  %call = call i64 @arch_atomic64_add_return(i64 noundef %sub, ptr noundef %1) #18, !dbg !2485
  ret i64 %call, !dbg !2486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2487 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_ignore(ptr noundef %ptr) #5 align 16 !dbg !2490 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2493, metadata !DIExpression()), !dbg !2494
  ret void, !dbg !2495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_ucounts(ptr noundef %ucounts) #0 align 16 !dbg !2496 {
entry:
  %ucounts.addr = alloca ptr, align 8
  %hashent = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.start.p0(i64 8, ptr %hashent) #17, !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %hashent, metadata !2499, metadata !DIExpression()), !dbg !2502
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !2503
  %uid = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 2, !dbg !2503
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2503
  %1 = load i32, ptr %coerce.dive, align 8, !dbg !2503
  %call = call i32 @__kuid_val(i32 %1) #18, !dbg !2503
  %conv = zext i32 %call to i64, !dbg !2503
  %2 = load ptr, ptr %ucounts.addr, align 8, !dbg !2503
  %ns = getelementptr inbounds %struct.ucounts, ptr %2, i32 0, i32 1, !dbg !2503
  %3 = load ptr, ptr %ns, align 8, !dbg !2503
  %4 = ptrtoint ptr %3 to i64, !dbg !2503
  %add = add i64 %conv, %4, !dbg !2503
  %call1 = call i32 @hash_64_generic(i64 noundef %add, i32 noundef 10) #18, !dbg !2503
  %idx.ext = zext i32 %call1 to i64, !dbg !2503
  %add.ptr = getelementptr %struct.hlist_head, ptr @ucounts_hashtable, i64 %idx.ext, !dbg !2503
  store ptr %add.ptr, ptr %hashent, align 8, !dbg !2502
  call void @spin_lock_irq(ptr noundef @ucounts_lock) #18, !dbg !2504
  %5 = load ptr, ptr %ucounts.addr, align 8, !dbg !2505
  %node = getelementptr inbounds %struct.ucounts, ptr %5, i32 0, i32 0, !dbg !2506
  %6 = load ptr, ptr %hashent, align 8, !dbg !2507
  call void @hlist_add_head(ptr noundef %node, ptr noundef %6) #18, !dbg !2508
  call void @spin_unlock_irq(ptr noundef @ucounts_lock) #18, !dbg !2509
  call void @llvm.lifetime.end.p0(i64 8, ptr %hashent) #17, !dbg !2510
  ret void, !dbg !2510
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(1) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!565, !566, !567, !568, !569, !570, !571, !572}
!llvm.ident = !{!573}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_ucounts", scope: !2, file: !3, line: 11, type: !461, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.ucount.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/ucount\22 -D KBUILD_BASENAME=\22ucount\22 -D KBUILD_MODNAME=\22ucount\22 -D __KBUILD_MODNAME=kmod_ucount -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/ucount.ll kernel/ucount.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !138, globals: !492, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/ucount.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87825808ef3e16318910253b024a4c46")
!4 = !{!5, !102, !116, !121, !128}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !103, line: 40, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!105 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!106 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!107 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!108 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!109 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!110 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!111 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!112 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!113 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!114 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!115 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 10, baseType: !98, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "false", value: 0)
!120 = !DIEnumerator(name: "true", value: 1)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rlimit_type", file: !103, line: 60, baseType: !98, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "UCOUNT_RLIMIT_NPROC", value: 0)
!124 = !DIEnumerator(name: "UCOUNT_RLIMIT_MSGQUEUE", value: 1)
!125 = !DIEnumerator(name: "UCOUNT_RLIMIT_SIGPENDING", value: 2)
!126 = !DIEnumerator(name: "UCOUNT_RLIMIT_MEMLOCK", value: 3)
!127 = !DIEnumerator(name: "UCOUNT_RLIMIT_COUNTS", value: 4)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !129, line: 364, baseType: !98, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!132 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!133 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!136 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!137 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!138 = !{!139, !16, !33, !140, !143, !14, !144, !460, !477, !479, !481, !483, !486, !491}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !98)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!143 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !103, line: 68, size: 4800, elements: !146)
!146 = !{!147, !171, !172, !173, !174, !175, !183, !190, !214, !215, !218, !219, !363, !364, !376, !458, !459, !473, !475}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !145, file: !103, line: 69, baseType: !148, size: 576)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !103, line: 23, size: 576, elements: !149)
!149 = !{!150, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !148, file: !103, line: 24, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !98)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !103, line: 25, baseType: !154, size: 512, offset: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !103, line: 25, size: 512, elements: !155)
!155 = !{!156, !165}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !154, file: !103, line: 26, baseType: !157, size: 480)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 480, elements: !163)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !103, line: 17, size: 96, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !158, file: !103, line: 18, baseType: !151, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !158, file: !103, line: 19, baseType: !151, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !158, file: !103, line: 20, baseType: !151, size: 32, offset: 64)
!163 = !{!164}
!164 = !DISubrange(count: 5)
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !103, line: 27, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !103, line: 27, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !166, file: !103, line: 28, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !166, file: !103, line: 29, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !145, file: !103, line: 70, baseType: !148, size: 576, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !145, file: !103, line: 71, baseType: !148, size: 576, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !103, line: 72, baseType: !144, size: 64, offset: 1728)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !145, file: !103, line: 73, baseType: !16, size: 32, offset: 1792)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !145, file: !103, line: 74, baseType: !176, size: 32, offset: 1824)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !177, line: 23, baseType: !178)
!177 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 21, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !177, line: 22, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !145, file: !103, line: 75, baseType: !184, size: 32, offset: 1856)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !177, line: 28, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 26, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !185, file: !177, line: 27, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !145, file: !103, line: 76, baseType: !191, size: 192, offset: 1920)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !192, line: 9, size: 192, elements: !193)
!192 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!193 = !{!194, !203, !207, !208}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !191, file: !192, line: 10, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !196, line: 13, baseType: !197)
!196 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !198, file: !19, line: 180, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !191, file: !192, line: 11, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !192, line: 7, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !191, file: !192, line: 12, baseType: !98, size: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !191, file: !192, line: 13, baseType: !209, size: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !210, line: 113, baseType: !211)
!210 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !210, line: 111, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !211, file: !210, line: 112, baseType: !43, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !103, line: 77, baseType: !33, size: 64, offset: 2112)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !145, file: !103, line: 80, baseType: !216, size: 8, offset: 2176)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !217)
!217 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !145, file: !103, line: 88, baseType: !91, size: 128, offset: 2240)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !145, file: !103, line: 89, baseType: !220, size: 64, offset: 2368)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !222, line: 195, size: 1728, elements: !223)
!222 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!223 = !{!224, !225, !230, !242, !256, !259, !260, !267, !268, !269, !270, !273, !274, !275, !277, !278, !325, !348}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !221, file: !222, line: 196, baseType: !209, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !221, file: !222, line: 197, baseType: !226, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !222, line: 28, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !19, line: 104, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !16)
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !222, line: 198, baseType: !231, size: 192, offset: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 198, size: 192, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !231, file: !222, line: 199, baseType: !91, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !231, file: !222, line: 200, baseType: !235, size: 192, align: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !236, line: 5, size: 192, align: 64, elements: !237)
!236 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!237 = !{!238, !239, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !235, file: !236, line: 6, baseType: !33, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !235, file: !236, line: 7, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !235, file: !236, line: 8, baseType: !240, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !221, file: !222, line: 205, baseType: !243, size: 320, offset: 256)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !244, line: 48, size: 320, elements: !245)
!244 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!245 = !{!246, !247, !248, !253, !255}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !243, file: !244, line: 49, baseType: !195, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !243, file: !244, line: 55, baseType: !195, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !243, file: !244, line: 57, baseType: !249, size: 32, offset: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !250, line: 15, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !249, file: !250, line: 20, baseType: !43, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !243, file: !244, line: 59, baseType: !254, size: 32, offset: 160)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !243, file: !244, line: 60, baseType: !91, size: 128, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !221, file: !222, line: 206, baseType: !257, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !222, line: 206, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !221, file: !222, line: 207, baseType: !14, size: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !222, line: 208, baseType: !261, size: 64, offset: 704)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 208, size: 64, elements: !262)
!262 = !{!263, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !261, file: !222, line: 209, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !265, line: 8, baseType: !202)
!265 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!266 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !261, file: !222, line: 210, baseType: !264, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !221, file: !222, line: 212, baseType: !264, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !221, file: !222, line: 213, baseType: !176, size: 32, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !221, file: !222, line: 214, baseType: !184, size: 32, offset: 864)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !221, file: !222, line: 215, baseType: !271, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !222, line: 31, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 110, baseType: !151)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !221, file: !222, line: 216, baseType: !20, size: 16, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !221, file: !222, line: 217, baseType: !20, size: 16, offset: 944)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !221, file: !222, line: 221, baseType: !276, size: 16, offset: 960)
!276 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !222, line: 228, baseType: !33, size: 64, offset: 1024)
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !222, line: 245, baseType: !279, size: 320, offset: 1088)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 245, size: 320, elements: !280)
!280 = !{!281, !316}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !279, file: !222, line: 246, baseType: !282, size: 320)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !222, line: 114, size: 320, elements: !283)
!283 = !{!284, !285, !297, !300, !315}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !282, file: !222, line: 116, baseType: !33, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !222, line: 117, baseType: !286, size: 64, offset: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !222, line: 117, size: 64, elements: !287)
!287 = !{!288, !296}
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !222, line: 118, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !222, line: 118, size: 64, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !289, file: !222, line: 120, baseType: !87, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !289, file: !222, line: 121, baseType: !293, size: 48, offset: 16)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 6)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !286, file: !222, line: 127, baseType: !33, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !282, file: !222, line: 129, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !222, line: 102, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !282, file: !222, line: 130, baseType: !301, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !222, line: 108, size: 192, elements: !303)
!303 = !{!304, !313, !314}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !302, file: !222, line: 109, baseType: !305, size: 128, align: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !306)
!306 = !{!307, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !19, line: 233, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !305, file: !19, line: 234, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !308}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !302, file: !222, line: 110, baseType: !209, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !302, file: !222, line: 111, baseType: !216, size: 8, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !282, file: !222, line: 131, baseType: !10, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !222, line: 247, baseType: !317, size: 320)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !222, line: 247, size: 320, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !317, file: !222, line: 248, baseType: !33, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !317, file: !222, line: 249, baseType: !33, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !222, line: 250, baseType: !298, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !317, file: !222, line: 251, baseType: !301, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !317, file: !222, line: 252, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !222, line: 260, baseType: !326, size: 256, offset: 1408)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 260, size: 256, elements: !327)
!327 = !{!328, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !326, file: !222, line: 261, baseType: !329, size: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !222, line: 134, size: 256, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !329, file: !222, line: 135, baseType: !14, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !329, file: !222, line: 136, baseType: !333, size: 256)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 4)
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !222, line: 262, baseType: !337, size: 256)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !222, line: 262, size: 256, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !337, file: !222, line: 264, baseType: !91, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !337, file: !222, line: 265, baseType: !341, size: 128, offset: 128)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !342, line: 22, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!343 = !{!344, !347}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !341, file: !342, line: 23, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !342, line: 23, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !341, file: !342, line: 24, baseType: !33, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !221, file: !222, line: 280, baseType: !349, size: 64, offset: 1664)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !222, line: 176, size: 192, elements: !351)
!351 = !{!352, !361, !362}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !350, file: !222, line: 177, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !222, line: 171, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!16, !220, !357, !359, !220}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !350, file: !222, line: 178, baseType: !220, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !350, file: !222, line: 179, baseType: !298, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !145, file: !103, line: 90, baseType: !243, size: 320, offset: 2432)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !145, file: !103, line: 97, baseType: !365, size: 256, offset: 2752)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !366, line: 98, size: 256, elements: !367)
!366 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !365, file: !366, line: 99, baseType: !195, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !365, file: !366, line: 100, baseType: !91, size: 128, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !365, file: !366, line: 101, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !366, line: 21, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !145, file: !103, line: 99, baseType: !377, size: 768, offset: 3008)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !378)
!378 = !{!379, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !377, file: !6, line: 200, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!16, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !377, file: !6, line: 201, baseType: !385, size: 704, offset: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !386)
!386 = !{!387, !454}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !385, file: !6, line: 195, baseType: !388, size: 640)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !389)
!389 = !{!390, !402, !414, !415, !435, !436, !438, !444}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !6, line: 174, baseType: !391, size: 192)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !6, line: 174, size: 192, elements: !392)
!392 = !{!393, !401}
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !6, line: 175, baseType: !394, size: 192)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !6, line: 175, size: 192, elements: !395)
!395 = !{!396, !397, !398, !399, !400}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !394, file: !6, line: 176, baseType: !27, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !394, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !394, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !394, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !394, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !391, file: !6, line: 182, baseType: !305, size: 128, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !388, file: !6, line: 184, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !405, line: 26, size: 256, elements: !406)
!405 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !404, file: !405, line: 27, baseType: !98, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !404, file: !405, line: 28, baseType: !409, size: 192, offset: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !410, line: 43, size: 192, elements: !411)
!410 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !409, file: !410, line: 44, baseType: !254, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !409, file: !410, line: 45, baseType: !91, size: 128, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !388, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !388, file: !6, line: 186, baseType: !416, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !418)
!418 = !{!419, !420, !424, !431}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !417, file: !6, line: 205, baseType: !377, size: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !417, file: !6, line: 206, baseType: !421, size: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!383, !416}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !417, file: !6, line: 207, baseType: !425, size: 64, offset: 832)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428, !429, !430}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !417, file: !6, line: 209, baseType: !432, size: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!16, !428, !27}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !388, file: !6, line: 187, baseType: !383, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !388, file: !6, line: 188, baseType: !437, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !388, file: !6, line: 189, baseType: !439, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !6, line: 158, baseType: !235, size: 192, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !440, file: !6, line: 159, baseType: !428, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !388, file: !6, line: 190, baseType: !445, size: 64, offset: 576)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !445, file: !19, line: 195, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !19, line: 199, baseType: !448, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !449, file: !19, line: 199, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !385, file: !6, line: 196, baseType: !455, size: 64, offset: 640)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !236, line: 12, size: 64, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !455, file: !236, line: 13, baseType: !240, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !145, file: !103, line: 100, baseType: !428, size: 64, offset: 3776)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !145, file: !103, line: 102, baseType: !460, size: 64, offset: 3840)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !103, line: 107, size: 1152, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !471}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !461, file: !103, line: 108, baseType: !449, size: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !461, file: !103, line: 109, baseType: !144, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !461, file: !103, line: 110, baseType: !176, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !461, file: !103, line: 111, baseType: !43, size: 32, offset: 224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !461, file: !103, line: 112, baseType: !468, size: 640, offset: 256)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 640, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 10)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !461, file: !103, line: 113, baseType: !472, size: 256, offset: 896)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !334)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !145, file: !103, line: 103, baseType: !474, size: 640, offset: 3904)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !469)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !145, file: !103, line: 104, baseType: !476, size: 256, offset: 4544)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !334)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !448)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !453)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !490)
!490 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!492 = !{!0, !493, !496, !501, !503, !508, !510, !515, !520, !522, !524, !526, !528, !533, !535, !537, !539, !544, !546, !548, !550, !555, !560}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 40, elements: !163)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !498, isLocal: true, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 16)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_ucount__179_378_user_namespace_sysctl_init4180", scope: !2, file: !3, line: 378, type: !14, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "ucounts_hashtable", scope: !2, file: !3, line: 18, type: !505, isLocal: true, isDefinition: true)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 65536, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 1024)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "set_root", scope: !2, file: !3, line: 56, type: !417, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 20)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !517, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 152, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 19)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !517, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !517, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !517, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !517, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 22)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !512, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !530, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !512, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "user_table", scope: !2, file: !3, line: 73, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 5632, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 11)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "ue_zero", scope: !2, file: !3, line: 61, type: !143, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "ue_int_max", scope: !2, file: !3, line: 62, type: !143, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "ucounts_lock", scope: !2, file: !3, line: 19, type: !53, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !129, line: 480, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 168, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 21)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "user_header", scope: !557, file: !3, line: 362, type: !428, isLocal: true, isDefinition: true)
!557 = distinct !DISubprogram(name: "user_namespace_sysctl_init", scope: !3, file: !3, line: 359, type: !558, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!558 = !DISubroutineType(types: !559)
!559 = !{!16}
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "empty", scope: !557, file: !3, line: 363, type: !562, isLocal: true, isDefinition: true)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 1)
!565 = !{i32 7, !"Dwarf Version", i32 5}
!566 = !{i32 2, !"Debug Info Version", i32 3}
!567 = !{i32 1, !"wchar_size", i32 2}
!568 = !{i32 8, !"cf-protection-branch", i32 1}
!569 = !{i32 4, !"function_return_thunk_extern", i32 1}
!570 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!571 = !{i32 1, !"Code Model", i32 2}
!572 = !{i32 1, !"override-stack-alignment", i32 8}
!573 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!574 = distinct !DISubprogram(name: "setup_userns_sysctls", scope: !3, file: !3, line: 94, type: !575, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!216, !144}
!577 = !{!578, !579, !580}
!578 = !DILocalVariable(name: "ns", arg: 1, scope: !574, file: !3, line: 94, type: !144)
!579 = !DILocalVariable(name: "tbl", scope: !574, file: !3, line: 97, type: !27)
!580 = !DILocalVariable(name: "i", scope: !581, file: !3, line: 103, type: !16)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 102, column: 11)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 102, column: 6)
!583 = !DILocation(line: 94, column: 50, scope: !574)
!584 = !DILocation(line: 97, column: 2, scope: !574)
!585 = !DILocation(line: 97, column: 20, scope: !574)
!586 = !DILocation(line: 99, column: 2, scope: !574)
!587 = !DILocation(line: 99, column: 2, scope: !588)
!588 = distinct !DILexicalBlock(scope: !574, file: !3, line: 99, column: 2)
!589 = !DILocation(line: 100, column: 20, scope: !574)
!590 = !DILocation(line: 100, column: 24, scope: !574)
!591 = !DILocation(line: 100, column: 2, scope: !574)
!592 = !DILocation(line: 101, column: 8, scope: !574)
!593 = !DILocation(line: 101, column: 6, scope: !574)
!594 = !DILocation(line: 102, column: 6, scope: !582)
!595 = !DILocation(line: 102, column: 6, scope: !574)
!596 = !DILocation(line: 103, column: 3, scope: !581)
!597 = !DILocation(line: 103, column: 7, scope: !581)
!598 = !DILocation(line: 104, column: 10, scope: !599)
!599 = distinct !DILexicalBlock(scope: !581, file: !3, line: 104, column: 3)
!600 = !DILocation(line: 104, column: 8, scope: !599)
!601 = !DILocation(line: 104, column: 15, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 104, column: 3)
!603 = !DILocation(line: 104, column: 17, scope: !602)
!604 = !DILocation(line: 104, column: 3, scope: !599)
!605 = !DILocation(line: 105, column: 19, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 104, column: 39)
!607 = !DILocation(line: 105, column: 23, scope: !606)
!608 = !DILocation(line: 105, column: 34, scope: !606)
!609 = !DILocation(line: 105, column: 4, scope: !606)
!610 = !DILocation(line: 105, column: 8, scope: !606)
!611 = !DILocation(line: 105, column: 11, scope: !606)
!612 = !DILocation(line: 105, column: 16, scope: !606)
!613 = !DILocation(line: 106, column: 3, scope: !606)
!614 = !DILocation(line: 104, column: 35, scope: !602)
!615 = !DILocation(line: 104, column: 3, scope: !602)
!616 = distinct !{!616, !604, !617, !618, !619}
!617 = !DILocation(line: 106, column: 3, scope: !599)
!618 = !{!"llvm.loop.mustprogress"}
!619 = !{!"llvm.loop.unroll.disable"}
!620 = !DILocation(line: 107, column: 42, scope: !581)
!621 = !DILocation(line: 107, column: 46, scope: !581)
!622 = !DILocation(line: 107, column: 59, scope: !581)
!623 = !DILocation(line: 107, column: 17, scope: !581)
!624 = !DILocation(line: 107, column: 3, scope: !581)
!625 = !DILocation(line: 107, column: 7, scope: !581)
!626 = !DILocation(line: 107, column: 15, scope: !581)
!627 = !DILocation(line: 109, column: 2, scope: !582)
!628 = !DILocation(line: 109, column: 2, scope: !581)
!629 = !DILocation(line: 110, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !574, file: !3, line: 110, column: 6)
!631 = !DILocation(line: 110, column: 11, scope: !630)
!632 = !DILocation(line: 110, column: 6, scope: !574)
!633 = !DILocation(line: 111, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 110, column: 20)
!635 = !DILocation(line: 111, column: 3, scope: !634)
!636 = !DILocation(line: 112, column: 22, scope: !634)
!637 = !DILocation(line: 112, column: 26, scope: !634)
!638 = !DILocation(line: 112, column: 3, scope: !634)
!639 = !DILocation(line: 113, column: 3, scope: !634)
!640 = !DILocation(line: 116, column: 2, scope: !574)
!641 = !DILocation(line: 117, column: 1, scope: !574)
!642 = !DISubprogram(name: "setup_sysctl_set", scope: !6, file: !6, line: 224, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !383, !416, !380}
!645 = distinct !DISubprogram(name: "set_is_seen", scope: !3, file: !3, line: 35, type: !381, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!646 = !{!647}
!647 = !DILocalVariable(name: "set", arg: 1, scope: !645, file: !3, line: 35, type: !383)
!648 = !DILocation(line: 35, column: 46, scope: !645)
!649 = !DILocation(line: 37, column: 10, scope: !645)
!650 = !DILocation(line: 37, column: 29, scope: !645)
!651 = !DILocation(line: 37, column: 36, scope: !645)
!652 = !DILocation(line: 37, column: 33, scope: !645)
!653 = !DILocation(line: 37, column: 2, scope: !645)
!654 = !DISubprogram(name: "kmemdup", scope: !655, file: !655, line: 219, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!656 = !DISubroutineType(types: !657)
!657 = !{!14, !658, !29, !139}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!660 = !DISubprogram(name: "__register_sysctl_table", scope: !6, file: !6, line: 229, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DISubroutineType(types: !662)
!662 = !{!428, !383, !10, !27, !29}
!663 = !DISubprogram(name: "kfree", scope: !129, file: !129, line: 227, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !658}
!666 = !DISubprogram(name: "retire_sysctl_set", scope: !6, file: !6, line: 227, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !383}
!669 = distinct !DISubprogram(name: "retire_userns_sysctls", scope: !3, file: !3, line: 119, type: !670, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !144}
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "ns", arg: 1, scope: !669, file: !3, line: 119, type: !144)
!674 = !DILocalVariable(name: "tbl", scope: !669, file: !3, line: 122, type: !27)
!675 = !DILocation(line: 119, column: 51, scope: !669)
!676 = !DILocation(line: 122, column: 2, scope: !669)
!677 = !DILocation(line: 122, column: 20, scope: !669)
!678 = !DILocation(line: 124, column: 8, scope: !669)
!679 = !DILocation(line: 124, column: 12, scope: !669)
!680 = !DILocation(line: 124, column: 21, scope: !669)
!681 = !DILocation(line: 124, column: 6, scope: !669)
!682 = !DILocation(line: 125, column: 26, scope: !669)
!683 = !DILocation(line: 125, column: 30, scope: !669)
!684 = !DILocation(line: 125, column: 2, scope: !669)
!685 = !DILocation(line: 126, column: 21, scope: !669)
!686 = !DILocation(line: 126, column: 25, scope: !669)
!687 = !DILocation(line: 126, column: 2, scope: !669)
!688 = !DILocation(line: 127, column: 8, scope: !669)
!689 = !DILocation(line: 127, column: 2, scope: !669)
!690 = !DILocation(line: 129, column: 1, scope: !669)
!691 = !DISubprogram(name: "unregister_sysctl_table", scope: !6, file: !6, line: 234, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !428}
!694 = distinct !DISubprogram(name: "get_ucounts", scope: !3, file: !3, line: 156, type: !695, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!460, !460}
!697 = !{!698}
!698 = !DILocalVariable(name: "ucounts", arg: 1, scope: !694, file: !3, line: 156, type: !460)
!699 = !DILocation(line: 156, column: 45, scope: !694)
!700 = !DILocation(line: 158, column: 27, scope: !701)
!701 = distinct !DILexicalBlock(scope: !694, file: !3, line: 158, column: 6)
!702 = !DILocation(line: 158, column: 7, scope: !701)
!703 = !DILocation(line: 158, column: 6, scope: !694)
!704 = !DILocation(line: 159, column: 15, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !3, line: 158, column: 37)
!706 = !DILocation(line: 159, column: 3, scope: !705)
!707 = !DILocation(line: 160, column: 11, scope: !705)
!708 = !DILocation(line: 161, column: 2, scope: !705)
!709 = !DILocation(line: 162, column: 9, scope: !694)
!710 = !DILocation(line: 162, column: 2, scope: !694)
!711 = distinct !DISubprogram(name: "get_ucounts_or_wrap", scope: !3, file: !3, line: 150, type: !712, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{!216, !460}
!714 = !{!715}
!715 = !DILocalVariable(name: "ucounts", arg: 1, scope: !711, file: !3, line: 150, type: !460)
!716 = !DILocation(line: 150, column: 56, scope: !711)
!717 = !DILocation(line: 153, column: 34, scope: !711)
!718 = !DILocation(line: 153, column: 43, scope: !711)
!719 = !DILocation(line: 153, column: 10, scope: !711)
!720 = !DILocation(line: 153, column: 9, scope: !711)
!721 = !DILocation(line: 153, column: 2, scope: !711)
!722 = distinct !DISubprogram(name: "put_ucounts", scope: !3, file: !3, line: 204, type: !723, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !460}
!725 = !{!726, !727}
!726 = !DILocalVariable(name: "ucounts", arg: 1, scope: !722, file: !3, line: 204, type: !460)
!727 = !DILocalVariable(name: "flags", scope: !722, file: !3, line: 206, type: !33)
!728 = !DILocation(line: 204, column: 34, scope: !722)
!729 = !DILocation(line: 206, column: 2, scope: !722)
!730 = !DILocation(line: 206, column: 16, scope: !722)
!731 = !DILocation(line: 208, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !3, line: 208, column: 6)
!733 = !DILocation(line: 208, column: 6, scope: !722)
!734 = !DILocation(line: 209, column: 19, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !3, line: 208, column: 74)
!736 = !DILocation(line: 209, column: 28, scope: !735)
!737 = !DILocation(line: 209, column: 3, scope: !735)
!738 = !DILocation(line: 210, column: 41, scope: !735)
!739 = !DILocation(line: 210, column: 3, scope: !735)
!740 = !DILocation(line: 211, column: 15, scope: !735)
!741 = !DILocation(line: 211, column: 24, scope: !735)
!742 = !DILocation(line: 211, column: 3, scope: !735)
!743 = !DILocation(line: 212, column: 9, scope: !735)
!744 = !DILocation(line: 212, column: 3, scope: !735)
!745 = !DILocation(line: 213, column: 2, scope: !735)
!746 = !DILocation(line: 214, column: 1, scope: !722)
!747 = distinct !DISubprogram(name: "alloc_ucounts", scope: !3, file: !3, line: 165, type: !748, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!460, !144, !176}
!750 = !{!751, !752, !753, !755, !756, !757}
!751 = !DILocalVariable(name: "ns", arg: 1, scope: !747, file: !3, line: 165, type: !144)
!752 = !DILocalVariable(name: "uid", arg: 2, scope: !747, file: !3, line: 165, type: !176)
!753 = !DILocalVariable(name: "hashent", scope: !747, file: !3, line: 167, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!755 = !DILocalVariable(name: "ucounts", scope: !747, file: !3, line: 168, type: !460)
!756 = !DILocalVariable(name: "new", scope: !747, file: !3, line: 168, type: !460)
!757 = !DILocalVariable(name: "wrapped", scope: !747, file: !3, line: 169, type: !216)
!758 = !DILocation(line: 165, column: 54, scope: !747)
!759 = !DILocation(line: 165, column: 65, scope: !747)
!760 = !DILocation(line: 167, column: 2, scope: !747)
!761 = !DILocation(line: 167, column: 21, scope: !747)
!762 = !DILocation(line: 167, column: 31, scope: !747)
!763 = !DILocation(line: 168, column: 2, scope: !747)
!764 = !DILocation(line: 168, column: 18, scope: !747)
!765 = !DILocation(line: 168, column: 28, scope: !747)
!766 = !DILocation(line: 169, column: 2, scope: !747)
!767 = !DILocation(line: 169, column: 7, scope: !747)
!768 = !DILocation(line: 171, column: 2, scope: !747)
!769 = !DILocation(line: 172, column: 25, scope: !747)
!770 = !DILocation(line: 172, column: 34, scope: !747)
!771 = !DILocation(line: 172, column: 12, scope: !747)
!772 = !DILocation(line: 172, column: 10, scope: !747)
!773 = !DILocation(line: 173, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !747, file: !3, line: 173, column: 6)
!775 = !DILocation(line: 173, column: 6, scope: !747)
!776 = !DILocation(line: 174, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 173, column: 16)
!778 = !DILocation(line: 176, column: 9, scope: !777)
!779 = !DILocation(line: 176, column: 7, scope: !777)
!780 = !DILocation(line: 177, column: 8, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 177, column: 7)
!782 = !DILocation(line: 177, column: 7, scope: !777)
!783 = !DILocation(line: 178, column: 4, scope: !781)
!784 = !DILocation(line: 180, column: 13, scope: !777)
!785 = !DILocation(line: 180, column: 3, scope: !777)
!786 = !DILocation(line: 180, column: 8, scope: !777)
!787 = !DILocation(line: 180, column: 11, scope: !777)
!788 = !DILocation(line: 181, column: 3, scope: !777)
!789 = !DILocation(line: 181, column: 8, scope: !777)
!790 = !DILocation(line: 181, column: 14, scope: !777)
!791 = !DILocation(line: 182, column: 15, scope: !777)
!792 = !DILocation(line: 182, column: 20, scope: !777)
!793 = !DILocation(line: 182, column: 3, scope: !777)
!794 = !DILocation(line: 184, column: 3, scope: !777)
!795 = !DILocation(line: 185, column: 26, scope: !777)
!796 = !DILocation(line: 185, column: 35, scope: !777)
!797 = !DILocation(line: 185, column: 13, scope: !777)
!798 = !DILocation(line: 185, column: 11, scope: !777)
!799 = !DILocation(line: 186, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !777, file: !3, line: 186, column: 7)
!801 = !DILocation(line: 186, column: 7, scope: !777)
!802 = !DILocation(line: 187, column: 10, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 186, column: 16)
!804 = !DILocation(line: 187, column: 4, scope: !803)
!805 = !DILocation(line: 188, column: 3, scope: !803)
!806 = !DILocation(line: 189, column: 20, scope: !807)
!807 = distinct !DILexicalBlock(scope: !800, file: !3, line: 188, column: 10)
!808 = !DILocation(line: 189, column: 25, scope: !807)
!809 = !DILocation(line: 189, column: 31, scope: !807)
!810 = !DILocation(line: 189, column: 4, scope: !807)
!811 = !DILocation(line: 190, column: 16, scope: !807)
!812 = !DILocation(line: 190, column: 21, scope: !807)
!813 = !DILocation(line: 190, column: 4, scope: !807)
!814 = !DILocation(line: 191, column: 4, scope: !807)
!815 = !DILocation(line: 192, column: 11, scope: !807)
!816 = !DILocation(line: 192, column: 4, scope: !807)
!817 = !DILocation(line: 194, column: 2, scope: !777)
!818 = !DILocation(line: 195, column: 33, scope: !747)
!819 = !DILocation(line: 195, column: 13, scope: !747)
!820 = !DILocation(line: 195, column: 12, scope: !747)
!821 = !DILocation(line: 195, column: 10, scope: !747)
!822 = !DILocation(line: 196, column: 2, scope: !747)
!823 = !DILocation(line: 197, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !747, file: !3, line: 197, column: 6)
!825 = !{i8 0, i8 2}
!826 = !{}
!827 = !DILocation(line: 197, column: 6, scope: !747)
!828 = !DILocation(line: 198, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !3, line: 197, column: 15)
!830 = !DILocation(line: 198, column: 3, scope: !829)
!831 = !DILocation(line: 199, column: 3, scope: !829)
!832 = !DILocation(line: 201, column: 9, scope: !747)
!833 = !DILocation(line: 201, column: 2, scope: !747)
!834 = !DILocation(line: 202, column: 1, scope: !747)
!835 = distinct !DISubprogram(name: "hash_64_generic", scope: !836, file: !836, line: 74, type: !837, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!836 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!837 = !DISubroutineType(types: !838)
!838 = !{!151, !488, !98}
!839 = !{!840, !841}
!840 = !DILocalVariable(name: "val", arg: 1, scope: !835, file: !836, line: 74, type: !488)
!841 = !DILocalVariable(name: "bits", arg: 2, scope: !835, file: !836, line: 74, type: !98)
!842 = !DILocation(line: 74, column: 48, scope: !835)
!843 = !DILocation(line: 74, column: 66, scope: !835)
!844 = !DILocation(line: 78, column: 9, scope: !835)
!845 = !DILocation(line: 78, column: 13, scope: !835)
!846 = !DILocation(line: 78, column: 40, scope: !835)
!847 = !DILocation(line: 78, column: 38, scope: !835)
!848 = !DILocation(line: 78, column: 31, scope: !835)
!849 = !DILocation(line: 78, column: 2, scope: !835)
!850 = distinct !DISubprogram(name: "__kuid_val", scope: !177, file: !177, line: 34, type: !851, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!181, !176}
!853 = !{!854}
!854 = !DILocalVariable(name: "uid", arg: 1, scope: !850, file: !177, line: 34, type: !176)
!855 = !DILocation(line: 34, column: 39, scope: !850)
!856 = !DILocation(line: 36, column: 13, scope: !850)
!857 = !DILocation(line: 36, column: 2, scope: !850)
!858 = distinct !DISubprogram(name: "spin_lock_irq", scope: !859, file: !859, line: 374, type: !860, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!859 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!860 = !DISubroutineType(types: !861)
!861 = !{null, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!863 = !{!864}
!864 = !DILocalVariable(name: "lock", arg: 1, scope: !858, file: !859, line: 374, type: !862)
!865 = !DILocation(line: 374, column: 55, scope: !858)
!866 = !DILocation(line: 376, column: 2, scope: !858)
!867 = !DILocation(line: 377, column: 1, scope: !858)
!868 = distinct !DISubprogram(name: "find_ucounts", scope: !3, file: !3, line: 131, type: !869, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!460, !144, !176, !754}
!871 = !{!872, !873, !874, !875, !876, !879, !881, !884}
!872 = !DILocalVariable(name: "ns", arg: 1, scope: !868, file: !3, line: 131, type: !144)
!873 = !DILocalVariable(name: "uid", arg: 2, scope: !868, file: !3, line: 131, type: !176)
!874 = !DILocalVariable(name: "hashent", arg: 3, scope: !868, file: !3, line: 131, type: !754)
!875 = !DILocalVariable(name: "ucounts", scope: !868, file: !3, line: 133, type: !460)
!876 = !DILocalVariable(name: "____ptr", scope: !877, file: !3, line: 135, type: !448)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 135, column: 2)
!878 = distinct !DILexicalBlock(scope: !868, file: !3, line: 135, column: 2)
!879 = !DILocalVariable(name: "__mptr", scope: !880, file: !3, line: 135, type: !14)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 135, column: 2)
!881 = !DILocalVariable(name: "____ptr", scope: !882, file: !3, line: 135, type: !448)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 135, column: 2)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 135, column: 2)
!884 = !DILocalVariable(name: "__mptr", scope: !885, file: !3, line: 135, type: !14)
!885 = distinct !DILexicalBlock(scope: !882, file: !3, line: 135, column: 2)
!886 = !DILocation(line: 131, column: 60, scope: !868)
!887 = !DILocation(line: 131, column: 71, scope: !868)
!888 = !DILocation(line: 131, column: 95, scope: !868)
!889 = !DILocation(line: 133, column: 2, scope: !868)
!890 = !DILocation(line: 133, column: 18, scope: !868)
!891 = !DILocation(line: 135, column: 2, scope: !877)
!892 = !DILocation(line: 135, column: 2, scope: !880)
!893 = !DILocation(line: 135, column: 2, scope: !878)
!894 = !DILocation(line: 135, column: 2, scope: !883)
!895 = !DILocation(line: 136, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 136, column: 7)
!897 = distinct !DILexicalBlock(scope: !883, file: !3, line: 135, column: 47)
!898 = !DILocation(line: 136, column: 23, scope: !896)
!899 = !DILocation(line: 136, column: 7, scope: !896)
!900 = !DILocation(line: 136, column: 33, scope: !896)
!901 = !DILocation(line: 136, column: 37, scope: !896)
!902 = !DILocation(line: 136, column: 46, scope: !896)
!903 = !DILocation(line: 136, column: 52, scope: !896)
!904 = !DILocation(line: 136, column: 49, scope: !896)
!905 = !DILocation(line: 136, column: 7, scope: !897)
!906 = !DILocation(line: 137, column: 11, scope: !896)
!907 = !DILocation(line: 137, column: 4, scope: !896)
!908 = !DILocation(line: 138, column: 2, scope: !897)
!909 = !DILocation(line: 135, column: 2, scope: !882)
!910 = !DILocation(line: 135, column: 2, scope: !885)
!911 = distinct !{!911, !893, !912, !618, !619}
!912 = !DILocation(line: 138, column: 2, scope: !878)
!913 = !DILocation(line: 139, column: 2, scope: !868)
!914 = !DILocation(line: 140, column: 1, scope: !868)
!915 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !859, file: !859, line: 399, type: !860, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!916 = !{!917}
!917 = !DILocalVariable(name: "lock", arg: 1, scope: !915, file: !859, line: 399, type: !862)
!918 = !DILocation(line: 399, column: 57, scope: !915)
!919 = !DILocation(line: 401, column: 2, scope: !915)
!920 = !DILocation(line: 402, column: 1, scope: !915)
!921 = distinct !DISubprogram(name: "kzalloc", scope: !129, file: !129, line: 719, type: !922, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{!14, !29, !139}
!924 = !{!925, !926}
!925 = !DILocalVariable(name: "size", arg: 1, scope: !921, file: !129, line: 719, type: !29)
!926 = !DILocalVariable(name: "flags", arg: 2, scope: !921, file: !129, line: 719, type: !139)
!927 = !DILocation(line: 719, column: 52, scope: !921)
!928 = !DILocation(line: 719, column: 64, scope: !921)
!929 = !DILocation(line: 721, column: 17, scope: !921)
!930 = !DILocation(line: 721, column: 23, scope: !921)
!931 = !DILocation(line: 721, column: 29, scope: !921)
!932 = !DILocation(line: 721, column: 9, scope: !921)
!933 = !DILocation(line: 721, column: 2, scope: !921)
!934 = distinct !DISubprogram(name: "atomic_set", scope: !935, file: !935, line: 65, type: !936, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !939)
!935 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!936 = !DISubroutineType(types: !937)
!937 = !{null, !938, !16}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!939 = !{!940, !941}
!940 = !DILocalVariable(name: "v", arg: 1, scope: !934, file: !935, line: 65, type: !938)
!941 = !DILocalVariable(name: "i", arg: 2, scope: !934, file: !935, line: 65, type: !16)
!942 = !DILocation(line: 65, column: 22, scope: !934)
!943 = !DILocation(line: 65, column: 29, scope: !934)
!944 = !DILocation(line: 67, column: 26, scope: !934)
!945 = !DILocation(line: 67, column: 2, scope: !934)
!946 = !DILocation(line: 68, column: 17, scope: !934)
!947 = !DILocation(line: 68, column: 20, scope: !934)
!948 = !DILocation(line: 68, column: 2, scope: !934)
!949 = !DILocation(line: 69, column: 1, scope: !934)
!950 = distinct !DISubprogram(name: "hlist_add_head", scope: !951, file: !951, line: 1021, type: !952, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !954)
!951 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!952 = !DISubroutineType(types: !953)
!953 = !{null, !448, !754}
!954 = !{!955, !956, !957}
!955 = !DILocalVariable(name: "n", arg: 1, scope: !950, file: !951, line: 1021, type: !448)
!956 = !DILocalVariable(name: "h", arg: 2, scope: !950, file: !951, line: 1021, type: !754)
!957 = !DILocalVariable(name: "first", scope: !950, file: !951, line: 1023, type: !448)
!958 = !DILocation(line: 1021, column: 54, scope: !950)
!959 = !DILocation(line: 1021, column: 76, scope: !950)
!960 = !DILocation(line: 1023, column: 2, scope: !950)
!961 = !DILocation(line: 1023, column: 21, scope: !950)
!962 = !DILocation(line: 1023, column: 29, scope: !950)
!963 = !DILocation(line: 1023, column: 32, scope: !950)
!964 = !DILocation(line: 1024, column: 2, scope: !950)
!965 = !DILocation(line: 1024, column: 2, scope: !966)
!966 = distinct !DILexicalBlock(scope: !950, file: !951, line: 1024, column: 2)
!967 = !DILocation(line: 1024, column: 2, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !951, line: 1024, column: 2)
!969 = !DILocation(line: 1024, column: 2, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !951, line: 1024, column: 2)
!971 = !DILocation(line: 1025, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !950, file: !951, line: 1025, column: 6)
!973 = !DILocation(line: 1025, column: 6, scope: !950)
!974 = !DILocation(line: 1026, column: 3, scope: !972)
!975 = !DILocation(line: 1026, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !951, line: 1026, column: 3)
!977 = !DILocation(line: 1026, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !976, file: !951, line: 1026, column: 3)
!979 = !DILocation(line: 1026, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !951, line: 1026, column: 3)
!981 = !DILocation(line: 1027, column: 2, scope: !950)
!982 = !DILocation(line: 1027, column: 2, scope: !983)
!983 = distinct !DILexicalBlock(scope: !950, file: !951, line: 1027, column: 2)
!984 = !DILocation(line: 1027, column: 2, scope: !985)
!985 = distinct !DILexicalBlock(scope: !983, file: !951, line: 1027, column: 2)
!986 = !DILocation(line: 1027, column: 2, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !951, line: 1027, column: 2)
!988 = !DILocation(line: 1028, column: 2, scope: !950)
!989 = !DILocation(line: 1028, column: 2, scope: !990)
!990 = distinct !DILexicalBlock(scope: !950, file: !951, line: 1028, column: 2)
!991 = !DILocation(line: 1028, column: 2, scope: !992)
!992 = distinct !DILexicalBlock(scope: !990, file: !951, line: 1028, column: 2)
!993 = !DILocation(line: 1028, column: 2, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !951, line: 1028, column: 2)
!995 = !DILocation(line: 1029, column: 1, scope: !950)
!996 = distinct !DISubprogram(name: "get_user_ns", scope: !103, file: !103, line: 185, type: !997, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!144, !144}
!999 = !{!1000}
!1000 = !DILocalVariable(name: "ns", arg: 1, scope: !996, file: !103, line: 185, type: !144)
!1001 = !DILocation(line: 185, column: 73, scope: !996)
!1002 = !DILocation(line: 187, column: 2, scope: !996)
!1003 = !DISubprogram(name: "_atomic_dec_and_lock_irqsave", scope: !859, file: !859, line: 475, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!16, !938, !862, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1007 = distinct !DISubprogram(name: "hlist_del_init", scope: !951, file: !951, line: 1005, type: !1008, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !448}
!1010 = !{!1011}
!1011 = !DILocalVariable(name: "n", arg: 1, scope: !1007, file: !951, line: 1005, type: !448)
!1012 = !DILocation(line: 1005, column: 54, scope: !1007)
!1013 = !DILocation(line: 1007, column: 22, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !951, line: 1007, column: 6)
!1015 = !DILocation(line: 1007, column: 7, scope: !1014)
!1016 = !DILocation(line: 1007, column: 6, scope: !1007)
!1017 = !DILocation(line: 1008, column: 15, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !951, line: 1007, column: 26)
!1019 = !DILocation(line: 1008, column: 3, scope: !1018)
!1020 = !DILocation(line: 1009, column: 19, scope: !1018)
!1021 = !DILocation(line: 1009, column: 3, scope: !1018)
!1022 = !DILocation(line: 1010, column: 2, scope: !1018)
!1023 = !DILocation(line: 1011, column: 1, scope: !1007)
!1024 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !859, file: !859, line: 404, type: !1025, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !862, !33}
!1027 = !{!1028, !1029, !1030, !1033}
!1028 = !DILocalVariable(name: "lock", arg: 1, scope: !1024, file: !859, line: 404, type: !862)
!1029 = !DILocalVariable(name: "flags", arg: 2, scope: !1024, file: !859, line: 404, type: !33)
!1030 = !DILocalVariable(name: "__dummy", scope: !1031, file: !859, line: 406, type: !33)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !859, line: 406, column: 2)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !859, line: 406, column: 2)
!1033 = !DILocalVariable(name: "__dummy2", scope: !1031, file: !859, line: 406, type: !33)
!1034 = !DILocation(line: 404, column: 64, scope: !1024)
!1035 = !DILocation(line: 404, column: 84, scope: !1024)
!1036 = !DILocation(line: 406, column: 2, scope: !1024)
!1037 = !DILocation(line: 406, column: 2, scope: !1031)
!1038 = !DILocation(line: 406, column: 2, scope: !1032)
!1039 = !DILocation(line: 407, column: 1, scope: !1024)
!1040 = distinct !DISubprogram(name: "put_user_ns", scope: !103, file: !103, line: 203, type: !670, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1041)
!1041 = !{!1042}
!1042 = !DILocalVariable(name: "ns", arg: 1, scope: !1040, file: !103, line: 203, type: !144)
!1043 = !DILocation(line: 203, column: 55, scope: !1040)
!1044 = !DILocation(line: 205, column: 1, scope: !1040)
!1045 = distinct !DISubprogram(name: "inc_ucount", scope: !3, file: !3, line: 230, type: !1046, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!460, !144, !176, !102}
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1060}
!1049 = !DILocalVariable(name: "ns", arg: 1, scope: !1045, file: !3, line: 230, type: !144)
!1050 = !DILocalVariable(name: "uid", arg: 2, scope: !1045, file: !3, line: 230, type: !176)
!1051 = !DILocalVariable(name: "type", arg: 3, scope: !1045, file: !3, line: 231, type: !102)
!1052 = !DILocalVariable(name: "ucounts", scope: !1045, file: !3, line: 233, type: !460)
!1053 = !DILocalVariable(name: "iter", scope: !1045, file: !3, line: 233, type: !460)
!1054 = !DILocalVariable(name: "bad", scope: !1045, file: !3, line: 233, type: !460)
!1055 = !DILocalVariable(name: "tns", scope: !1045, file: !3, line: 234, type: !144)
!1056 = !DILocalVariable(name: "max", scope: !1057, file: !3, line: 237, type: !143)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 236, column: 50)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 236, column: 2)
!1059 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 236, column: 2)
!1060 = !DILabel(scope: !1045, name: "fail", file: !3, line: 244)
!1061 = !DILocation(line: 230, column: 51, scope: !1045)
!1062 = !DILocation(line: 230, column: 62, scope: !1045)
!1063 = !DILocation(line: 231, column: 24, scope: !1045)
!1064 = !DILocation(line: 233, column: 2, scope: !1045)
!1065 = !DILocation(line: 233, column: 18, scope: !1045)
!1066 = !DILocation(line: 233, column: 28, scope: !1045)
!1067 = !DILocation(line: 233, column: 35, scope: !1045)
!1068 = !DILocation(line: 234, column: 2, scope: !1045)
!1069 = !DILocation(line: 234, column: 25, scope: !1045)
!1070 = !DILocation(line: 235, column: 26, scope: !1045)
!1071 = !DILocation(line: 235, column: 12, scope: !1045)
!1072 = !DILocation(line: 235, column: 10, scope: !1045)
!1073 = !DILocation(line: 236, column: 14, scope: !1059)
!1074 = !DILocation(line: 236, column: 12, scope: !1059)
!1075 = !DILocation(line: 236, column: 7, scope: !1059)
!1076 = !DILocation(line: 236, column: 23, scope: !1058)
!1077 = !DILocation(line: 236, column: 2, scope: !1059)
!1078 = !DILocation(line: 237, column: 3, scope: !1057)
!1079 = !DILocation(line: 237, column: 8, scope: !1057)
!1080 = !DILocation(line: 238, column: 9, scope: !1057)
!1081 = !DILocation(line: 238, column: 15, scope: !1057)
!1082 = !DILocation(line: 238, column: 7, scope: !1057)
!1083 = !DILocation(line: 239, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 239, column: 9)
!1085 = !DILocation(line: 239, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 239, column: 9)
!1087 = !DILocation(line: 239, column: 7, scope: !1057)
!1088 = !DILocation(line: 240, column: 31, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 240, column: 7)
!1090 = !DILocation(line: 240, column: 37, scope: !1089)
!1091 = !DILocation(line: 240, column: 44, scope: !1089)
!1092 = !DILocation(line: 240, column: 51, scope: !1089)
!1093 = !DILocation(line: 240, column: 8, scope: !1089)
!1094 = !DILocation(line: 240, column: 7, scope: !1057)
!1095 = !DILocation(line: 241, column: 4, scope: !1089)
!1096 = !DILocation(line: 242, column: 2, scope: !1058)
!1097 = !DILocation(line: 242, column: 2, scope: !1057)
!1098 = !DILocation(line: 236, column: 36, scope: !1058)
!1099 = !DILocation(line: 236, column: 41, scope: !1058)
!1100 = !DILocation(line: 236, column: 34, scope: !1058)
!1101 = !DILocation(line: 236, column: 2, scope: !1058)
!1102 = distinct !{!1102, !1077, !1103, !618, !619}
!1103 = !DILocation(line: 242, column: 2, scope: !1059)
!1104 = !DILocation(line: 243, column: 9, scope: !1045)
!1105 = !DILocation(line: 243, column: 2, scope: !1045)
!1106 = !DILocation(line: 244, column: 1, scope: !1045)
!1107 = !DILocation(line: 245, column: 8, scope: !1045)
!1108 = !DILocation(line: 245, column: 6, scope: !1045)
!1109 = !DILocation(line: 246, column: 14, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 246, column: 2)
!1111 = !DILocation(line: 246, column: 12, scope: !1110)
!1112 = !DILocation(line: 246, column: 7, scope: !1110)
!1113 = !DILocation(line: 246, column: 23, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 246, column: 2)
!1115 = !DILocation(line: 246, column: 31, scope: !1114)
!1116 = !DILocation(line: 246, column: 28, scope: !1114)
!1117 = !DILocation(line: 246, column: 2, scope: !1110)
!1118 = !DILocation(line: 247, column: 20, scope: !1114)
!1119 = !DILocation(line: 247, column: 26, scope: !1114)
!1120 = !DILocation(line: 247, column: 33, scope: !1114)
!1121 = !DILocation(line: 247, column: 3, scope: !1114)
!1122 = !DILocation(line: 246, column: 43, scope: !1114)
!1123 = !DILocation(line: 246, column: 49, scope: !1114)
!1124 = !DILocation(line: 246, column: 53, scope: !1114)
!1125 = !DILocation(line: 246, column: 41, scope: !1114)
!1126 = !DILocation(line: 246, column: 2, scope: !1114)
!1127 = distinct !{!1127, !1117, !1128, !618, !619}
!1128 = !DILocation(line: 247, column: 38, scope: !1110)
!1129 = !DILocation(line: 249, column: 14, scope: !1045)
!1130 = !DILocation(line: 249, column: 2, scope: !1045)
!1131 = !DILocation(line: 250, column: 2, scope: !1045)
!1132 = !DILocation(line: 251, column: 1, scope: !1045)
!1133 = distinct !DISubprogram(name: "atomic_long_inc_below", scope: !3, file: !3, line: 216, type: !1134, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!216, !1136, !16}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DILocalVariable(name: "v", arg: 1, scope: !1133, file: !3, line: 216, type: !1136)
!1139 = !DILocalVariable(name: "u", arg: 2, scope: !1133, file: !3, line: 216, type: !16)
!1140 = !DILocalVariable(name: "c", scope: !1133, file: !3, line: 218, type: !143)
!1141 = !DILocalVariable(name: "old", scope: !1133, file: !3, line: 218, type: !143)
!1142 = !DILocation(line: 216, column: 57, scope: !1133)
!1143 = !DILocation(line: 216, column: 64, scope: !1133)
!1144 = !DILocation(line: 218, column: 2, scope: !1133)
!1145 = !DILocation(line: 218, column: 7, scope: !1133)
!1146 = !DILocation(line: 218, column: 10, scope: !1133)
!1147 = !DILocation(line: 219, column: 23, scope: !1133)
!1148 = !DILocation(line: 219, column: 6, scope: !1133)
!1149 = !DILocation(line: 219, column: 4, scope: !1133)
!1150 = !DILocation(line: 220, column: 2, scope: !1133)
!1151 = !DILocation(line: 221, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 221, column: 7)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 220, column: 11)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 220, column: 2)
!1155 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 220, column: 2)
!1156 = !DILocation(line: 221, column: 7, scope: !1153)
!1157 = !DILocation(line: 222, column: 4, scope: !1152)
!1158 = !DILocation(line: 223, column: 29, scope: !1153)
!1159 = !DILocation(line: 223, column: 32, scope: !1153)
!1160 = !DILocation(line: 223, column: 35, scope: !1153)
!1161 = !DILocation(line: 223, column: 36, scope: !1153)
!1162 = !DILocation(line: 223, column: 9, scope: !1153)
!1163 = !DILocation(line: 223, column: 7, scope: !1153)
!1164 = !DILocation(line: 224, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 224, column: 7)
!1166 = !DILocation(line: 224, column: 7, scope: !1153)
!1167 = !DILocation(line: 225, column: 4, scope: !1165)
!1168 = !DILocation(line: 226, column: 7, scope: !1153)
!1169 = !DILocation(line: 226, column: 5, scope: !1153)
!1170 = !DILocation(line: 220, column: 2, scope: !1154)
!1171 = distinct !{!1171, !1172, !1173, !619}
!1172 = !DILocation(line: 220, column: 2, scope: !1155)
!1173 = !DILocation(line: 227, column: 2, scope: !1155)
!1174 = !DILocation(line: 228, column: 1, scope: !1133)
!1175 = distinct !DISubprogram(name: "atomic_long_dec", scope: !935, file: !935, line: 3718, type: !1176, scopeLine: 3719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1136}
!1178 = !{!1179}
!1179 = !DILocalVariable(name: "v", arg: 1, scope: !1175, file: !935, line: 3718, type: !1136)
!1180 = !DILocation(line: 3718, column: 32, scope: !1175)
!1181 = !DILocation(line: 3720, column: 31, scope: !1175)
!1182 = !DILocation(line: 3720, column: 2, scope: !1175)
!1183 = !DILocation(line: 3721, column: 22, scope: !1175)
!1184 = !DILocation(line: 3721, column: 2, scope: !1175)
!1185 = !DILocation(line: 3722, column: 1, scope: !1175)
!1186 = distinct !DISubprogram(name: "dec_ucount", scope: !3, file: !3, line: 253, type: !1187, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !460, !102}
!1189 = !{!1190, !1191, !1192, !1193, !1197, !1199}
!1190 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1186, file: !3, line: 253, type: !460)
!1191 = !DILocalVariable(name: "type", arg: 2, scope: !1186, file: !3, line: 253, type: !102)
!1192 = !DILocalVariable(name: "iter", scope: !1186, file: !3, line: 255, type: !460)
!1193 = !DILocalVariable(name: "dec", scope: !1194, file: !3, line: 257, type: !143)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 256, column: 55)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 256, column: 2)
!1196 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 256, column: 2)
!1197 = !DILocalVariable(name: "__ret_warn_on", scope: !1198, file: !3, line: 258, type: !16)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 258, column: 3)
!1199 = !DILocalVariable(name: "__flags", scope: !1200, file: !3, line: 258, type: !16)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 258, column: 3)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 258, column: 3)
!1202 = !DILocation(line: 253, column: 33, scope: !1186)
!1203 = !DILocation(line: 253, column: 59, scope: !1186)
!1204 = !DILocation(line: 255, column: 2, scope: !1186)
!1205 = !DILocation(line: 255, column: 18, scope: !1186)
!1206 = !DILocation(line: 256, column: 14, scope: !1196)
!1207 = !DILocation(line: 256, column: 12, scope: !1196)
!1208 = !DILocation(line: 256, column: 7, scope: !1196)
!1209 = !DILocation(line: 256, column: 23, scope: !1195)
!1210 = !DILocation(line: 256, column: 2, scope: !1196)
!1211 = !DILocation(line: 257, column: 3, scope: !1194)
!1212 = !DILocation(line: 257, column: 8, scope: !1194)
!1213 = !DILocation(line: 257, column: 43, scope: !1194)
!1214 = !DILocation(line: 257, column: 49, scope: !1194)
!1215 = !DILocation(line: 257, column: 56, scope: !1194)
!1216 = !DILocation(line: 257, column: 14, scope: !1194)
!1217 = !DILocation(line: 258, column: 3, scope: !1198)
!1218 = !DILocation(line: 258, column: 3, scope: !1201)
!1219 = !DILocation(line: 258, column: 3, scope: !1200)
!1220 = !DILocation(line: 258, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 258, column: 3)
!1222 = !DILocation(line: 258, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 258, column: 3)
!1224 = !{i64 2152094963, i64 2152094992, i64 2152095038, i64 2152095096, i64 2152095150, i64 2152095204, i64 2152095259, i64 2152095290, i64 2152095598, i64 2152095604, i64 2152095651, i64 2152095674, i64 2152095700}
!1225 = !DILocation(line: 258, column: 3, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 258, column: 3)
!1227 = !DILocation(line: 258, column: 3, scope: !1194)
!1228 = !DILocation(line: 259, column: 2, scope: !1195)
!1229 = !DILocation(line: 259, column: 2, scope: !1194)
!1230 = !DILocation(line: 256, column: 36, scope: !1195)
!1231 = !DILocation(line: 256, column: 42, scope: !1195)
!1232 = !DILocation(line: 256, column: 46, scope: !1195)
!1233 = !DILocation(line: 256, column: 34, scope: !1195)
!1234 = !DILocation(line: 256, column: 2, scope: !1195)
!1235 = distinct !{!1235, !1210, !1236, !618, !619}
!1236 = !DILocation(line: 259, column: 2, scope: !1196)
!1237 = !DILocation(line: 260, column: 14, scope: !1186)
!1238 = !DILocation(line: 260, column: 2, scope: !1186)
!1239 = !DILocation(line: 261, column: 1, scope: !1186)
!1240 = distinct !DISubprogram(name: "atomic_long_dec_if_positive", scope: !935, file: !935, line: 4704, type: !1241, scopeLine: 4705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!143, !1136}
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "v", arg: 1, scope: !1240, file: !935, line: 4704, type: !1136)
!1245 = !DILocation(line: 4704, column: 44, scope: !1240)
!1246 = !DILocation(line: 4706, column: 2, scope: !1240)
!1247 = !DILocation(line: 4706, column: 2, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !935, line: 4706, column: 2)
!1249 = !DILocation(line: 4707, column: 31, scope: !1240)
!1250 = !DILocation(line: 4707, column: 2, scope: !1240)
!1251 = !DILocation(line: 4708, column: 41, scope: !1240)
!1252 = !DILocation(line: 4708, column: 9, scope: !1240)
!1253 = !DILocation(line: 4708, column: 2, scope: !1240)
!1254 = distinct !DISubprogram(name: "inc_rlimit_ucounts", scope: !3, file: !3, line: 263, type: !1255, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!143, !460, !121, !143}
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1258 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1254, file: !3, line: 263, type: !460)
!1259 = !DILocalVariable(name: "type", arg: 2, scope: !1254, file: !3, line: 263, type: !121)
!1260 = !DILocalVariable(name: "v", arg: 3, scope: !1254, file: !3, line: 263, type: !143)
!1261 = !DILocalVariable(name: "iter", scope: !1254, file: !3, line: 265, type: !460)
!1262 = !DILocalVariable(name: "max", scope: !1254, file: !3, line: 266, type: !143)
!1263 = !DILocalVariable(name: "ret", scope: !1254, file: !3, line: 267, type: !143)
!1264 = !DILocalVariable(name: "new", scope: !1265, file: !3, line: 270, type: !143)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 269, column: 55)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 269, column: 2)
!1267 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 269, column: 2)
!1268 = !DILocation(line: 263, column: 41, scope: !1254)
!1269 = !DILocation(line: 263, column: 67, scope: !1254)
!1270 = !DILocation(line: 263, column: 78, scope: !1254)
!1271 = !DILocation(line: 265, column: 2, scope: !1254)
!1272 = !DILocation(line: 265, column: 18, scope: !1254)
!1273 = !DILocation(line: 266, column: 2, scope: !1254)
!1274 = !DILocation(line: 266, column: 7, scope: !1254)
!1275 = !DILocation(line: 267, column: 2, scope: !1254)
!1276 = !DILocation(line: 267, column: 7, scope: !1254)
!1277 = !DILocation(line: 269, column: 14, scope: !1267)
!1278 = !DILocation(line: 269, column: 12, scope: !1267)
!1279 = !DILocation(line: 269, column: 7, scope: !1267)
!1280 = !DILocation(line: 269, column: 23, scope: !1266)
!1281 = !DILocation(line: 269, column: 2, scope: !1267)
!1282 = !DILocation(line: 270, column: 3, scope: !1265)
!1283 = !DILocation(line: 270, column: 8, scope: !1265)
!1284 = !DILocation(line: 270, column: 37, scope: !1265)
!1285 = !DILocation(line: 270, column: 41, scope: !1265)
!1286 = !DILocation(line: 270, column: 47, scope: !1265)
!1287 = !DILocation(line: 270, column: 54, scope: !1265)
!1288 = !DILocation(line: 270, column: 14, scope: !1265)
!1289 = !DILocation(line: 271, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 271, column: 7)
!1291 = !DILocation(line: 271, column: 11, scope: !1290)
!1292 = !DILocation(line: 271, column: 15, scope: !1290)
!1293 = !DILocation(line: 271, column: 18, scope: !1290)
!1294 = !DILocation(line: 271, column: 24, scope: !1290)
!1295 = !DILocation(line: 271, column: 22, scope: !1290)
!1296 = !DILocation(line: 271, column: 7, scope: !1265)
!1297 = !DILocation(line: 272, column: 8, scope: !1290)
!1298 = !DILocation(line: 272, column: 4, scope: !1290)
!1299 = !DILocation(line: 273, column: 12, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 273, column: 12)
!1301 = !DILocation(line: 273, column: 20, scope: !1300)
!1302 = !DILocation(line: 273, column: 17, scope: !1300)
!1303 = !DILocation(line: 273, column: 12, scope: !1290)
!1304 = !DILocation(line: 274, column: 10, scope: !1300)
!1305 = !DILocation(line: 274, column: 8, scope: !1300)
!1306 = !DILocation(line: 274, column: 4, scope: !1300)
!1307 = !DILocation(line: 275, column: 31, scope: !1265)
!1308 = !DILocation(line: 275, column: 37, scope: !1265)
!1309 = !DILocation(line: 275, column: 41, scope: !1265)
!1310 = !DILocation(line: 275, column: 9, scope: !1265)
!1311 = !DILocation(line: 275, column: 7, scope: !1265)
!1312 = !DILocation(line: 276, column: 2, scope: !1266)
!1313 = !DILocation(line: 276, column: 2, scope: !1265)
!1314 = !DILocation(line: 269, column: 36, scope: !1266)
!1315 = !DILocation(line: 269, column: 42, scope: !1266)
!1316 = !DILocation(line: 269, column: 46, scope: !1266)
!1317 = !DILocation(line: 269, column: 34, scope: !1266)
!1318 = !DILocation(line: 269, column: 2, scope: !1266)
!1319 = distinct !{!1319, !1281, !1320, !618, !619}
!1320 = !DILocation(line: 276, column: 2, scope: !1267)
!1321 = !DILocation(line: 277, column: 9, scope: !1254)
!1322 = !DILocation(line: 278, column: 1, scope: !1254)
!1323 = !DILocation(line: 277, column: 2, scope: !1254)
!1324 = distinct !DISubprogram(name: "atomic_long_add_return", scope: !935, file: !935, line: 3248, type: !1325, scopeLine: 3249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!143, !143, !1136}
!1327 = !{!1328, !1329}
!1328 = !DILocalVariable(name: "i", arg: 1, scope: !1324, file: !935, line: 3248, type: !143)
!1329 = !DILocalVariable(name: "v", arg: 2, scope: !1324, file: !935, line: 3248, type: !1136)
!1330 = !DILocation(line: 3248, column: 29, scope: !1324)
!1331 = !DILocation(line: 3248, column: 47, scope: !1324)
!1332 = !DILocation(line: 3250, column: 2, scope: !1324)
!1333 = !DILocation(line: 3250, column: 2, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1324, file: !935, line: 3250, column: 2)
!1335 = !DILocation(line: 3251, column: 31, scope: !1324)
!1336 = !DILocation(line: 3251, column: 2, scope: !1324)
!1337 = !DILocation(line: 3252, column: 36, scope: !1324)
!1338 = !DILocation(line: 3252, column: 39, scope: !1324)
!1339 = !DILocation(line: 3252, column: 9, scope: !1324)
!1340 = !DILocation(line: 3252, column: 2, scope: !1324)
!1341 = distinct !DISubprogram(name: "get_userns_rlimit_max", scope: !103, file: !103, line: 139, type: !1342, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!143, !144, !121}
!1344 = !{!1345, !1346}
!1345 = !DILocalVariable(name: "ns", arg: 1, scope: !1341, file: !103, line: 139, type: !144)
!1346 = !DILocalVariable(name: "type", arg: 2, scope: !1341, file: !103, line: 139, type: !121)
!1347 = !DILocation(line: 139, column: 65, scope: !1341)
!1348 = !DILocation(line: 139, column: 86, scope: !1341)
!1349 = !DILocation(line: 141, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !103, line: 141, column: 9)
!1351 = !DILocation(line: 141, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1350, file: !103, line: 141, column: 9)
!1353 = !DILocation(line: 141, column: 2, scope: !1341)
!1354 = distinct !DISubprogram(name: "dec_rlimit_ucounts", scope: !3, file: !3, line: 280, type: !1355, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!216, !460, !121, !143}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1367, !1369}
!1358 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1354, file: !3, line: 280, type: !460)
!1359 = !DILocalVariable(name: "type", arg: 2, scope: !1354, file: !3, line: 280, type: !121)
!1360 = !DILocalVariable(name: "v", arg: 3, scope: !1354, file: !3, line: 280, type: !143)
!1361 = !DILocalVariable(name: "iter", scope: !1354, file: !3, line: 282, type: !460)
!1362 = !DILocalVariable(name: "new", scope: !1354, file: !3, line: 283, type: !143)
!1363 = !DILocalVariable(name: "dec", scope: !1364, file: !3, line: 285, type: !143)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 284, column: 55)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 284, column: 2)
!1366 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 284, column: 2)
!1367 = !DILocalVariable(name: "__ret_warn_on", scope: !1368, file: !3, line: 286, type: !16)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 286, column: 3)
!1369 = !DILocalVariable(name: "__flags", scope: !1370, file: !3, line: 286, type: !16)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 286, column: 3)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 286, column: 3)
!1372 = !DILocation(line: 280, column: 41, scope: !1354)
!1373 = !DILocation(line: 280, column: 67, scope: !1354)
!1374 = !DILocation(line: 280, column: 78, scope: !1354)
!1375 = !DILocation(line: 282, column: 2, scope: !1354)
!1376 = !DILocation(line: 282, column: 18, scope: !1354)
!1377 = !DILocation(line: 283, column: 2, scope: !1354)
!1378 = !DILocation(line: 283, column: 7, scope: !1354)
!1379 = !DILocation(line: 284, column: 14, scope: !1366)
!1380 = !DILocation(line: 284, column: 12, scope: !1366)
!1381 = !DILocation(line: 284, column: 7, scope: !1366)
!1382 = !DILocation(line: 284, column: 23, scope: !1365)
!1383 = !DILocation(line: 284, column: 2, scope: !1366)
!1384 = !DILocation(line: 285, column: 3, scope: !1364)
!1385 = !DILocation(line: 285, column: 8, scope: !1364)
!1386 = !DILocation(line: 285, column: 37, scope: !1364)
!1387 = !DILocation(line: 285, column: 41, scope: !1364)
!1388 = !DILocation(line: 285, column: 47, scope: !1364)
!1389 = !DILocation(line: 285, column: 54, scope: !1364)
!1390 = !DILocation(line: 285, column: 14, scope: !1364)
!1391 = !DILocation(line: 286, column: 3, scope: !1368)
!1392 = !DILocation(line: 286, column: 3, scope: !1371)
!1393 = !DILocation(line: 286, column: 3, scope: !1370)
!1394 = !DILocation(line: 286, column: 3, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 286, column: 3)
!1396 = !DILocation(line: 286, column: 3, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 286, column: 3)
!1398 = !{i64 2152096517, i64 2152096546, i64 2152096592, i64 2152096650, i64 2152096704, i64 2152096758, i64 2152096813, i64 2152096844, i64 2152097152, i64 2152097158, i64 2152097205, i64 2152097228, i64 2152097254}
!1399 = !DILocation(line: 286, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 286, column: 3)
!1401 = !DILocation(line: 286, column: 3, scope: !1364)
!1402 = !DILocation(line: 287, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 287, column: 7)
!1404 = !DILocation(line: 287, column: 15, scope: !1403)
!1405 = !DILocation(line: 287, column: 12, scope: !1403)
!1406 = !DILocation(line: 287, column: 7, scope: !1364)
!1407 = !DILocation(line: 288, column: 10, scope: !1403)
!1408 = !DILocation(line: 288, column: 8, scope: !1403)
!1409 = !DILocation(line: 288, column: 4, scope: !1403)
!1410 = !DILocation(line: 289, column: 2, scope: !1365)
!1411 = !DILocation(line: 289, column: 2, scope: !1364)
!1412 = !DILocation(line: 284, column: 36, scope: !1365)
!1413 = !DILocation(line: 284, column: 42, scope: !1365)
!1414 = !DILocation(line: 284, column: 46, scope: !1365)
!1415 = !DILocation(line: 284, column: 34, scope: !1365)
!1416 = !DILocation(line: 284, column: 2, scope: !1365)
!1417 = distinct !{!1417, !1383, !1418, !618, !619}
!1418 = !DILocation(line: 289, column: 2, scope: !1366)
!1419 = !DILocation(line: 290, column: 10, scope: !1354)
!1420 = !DILocation(line: 290, column: 14, scope: !1354)
!1421 = !DILocation(line: 291, column: 1, scope: !1354)
!1422 = !DILocation(line: 290, column: 2, scope: !1354)
!1423 = distinct !DISubprogram(name: "atomic_long_sub_return", scope: !935, file: !935, line: 3414, type: !1325, scopeLine: 3415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1424)
!1424 = !{!1425, !1426}
!1425 = !DILocalVariable(name: "i", arg: 1, scope: !1423, file: !935, line: 3414, type: !143)
!1426 = !DILocalVariable(name: "v", arg: 2, scope: !1423, file: !935, line: 3414, type: !1136)
!1427 = !DILocation(line: 3414, column: 29, scope: !1423)
!1428 = !DILocation(line: 3414, column: 47, scope: !1423)
!1429 = !DILocation(line: 3416, column: 2, scope: !1423)
!1430 = !DILocation(line: 3416, column: 2, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !935, line: 3416, column: 2)
!1432 = !DILocation(line: 3417, column: 31, scope: !1423)
!1433 = !DILocation(line: 3417, column: 2, scope: !1423)
!1434 = !DILocation(line: 3418, column: 36, scope: !1423)
!1435 = !DILocation(line: 3418, column: 39, scope: !1423)
!1436 = !DILocation(line: 3418, column: 9, scope: !1423)
!1437 = !DILocation(line: 3418, column: 2, scope: !1423)
!1438 = distinct !DISubprogram(name: "dec_rlimit_put_ucounts", scope: !3, file: !3, line: 306, type: !1439, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !460, !121}
!1441 = !{!1442, !1443}
!1442 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1438, file: !3, line: 306, type: !460)
!1443 = !DILocalVariable(name: "type", arg: 2, scope: !1438, file: !3, line: 306, type: !121)
!1444 = !DILocation(line: 306, column: 45, scope: !1438)
!1445 = !DILocation(line: 306, column: 71, scope: !1438)
!1446 = !DILocation(line: 308, column: 28, scope: !1438)
!1447 = !DILocation(line: 308, column: 43, scope: !1438)
!1448 = !DILocation(line: 308, column: 2, scope: !1438)
!1449 = !DILocation(line: 309, column: 1, scope: !1438)
!1450 = distinct !DISubprogram(name: "do_dec_rlimit_put_ucounts", scope: !3, file: !3, line: 293, type: !1451, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !460, !460, !121}
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1463, !1465}
!1454 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1450, file: !3, line: 293, type: !460)
!1455 = !DILocalVariable(name: "last", arg: 2, scope: !1450, file: !3, line: 294, type: !460)
!1456 = !DILocalVariable(name: "type", arg: 3, scope: !1450, file: !3, line: 294, type: !121)
!1457 = !DILocalVariable(name: "iter", scope: !1450, file: !3, line: 296, type: !460)
!1458 = !DILocalVariable(name: "next", scope: !1450, file: !3, line: 296, type: !460)
!1459 = !DILocalVariable(name: "dec", scope: !1460, file: !3, line: 298, type: !143)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 297, column: 50)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 297, column: 2)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 297, column: 2)
!1463 = !DILocalVariable(name: "__ret_warn_on", scope: !1464, file: !3, line: 299, type: !16)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 299, column: 3)
!1465 = !DILocalVariable(name: "__flags", scope: !1466, file: !3, line: 299, type: !16)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 299, column: 3)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 299, column: 3)
!1468 = !DILocation(line: 293, column: 55, scope: !1450)
!1469 = !DILocation(line: 294, column: 21, scope: !1450)
!1470 = !DILocation(line: 294, column: 44, scope: !1450)
!1471 = !DILocation(line: 296, column: 2, scope: !1450)
!1472 = !DILocation(line: 296, column: 18, scope: !1450)
!1473 = !DILocation(line: 296, column: 25, scope: !1450)
!1474 = !DILocation(line: 297, column: 14, scope: !1462)
!1475 = !DILocation(line: 297, column: 12, scope: !1462)
!1476 = !DILocation(line: 297, column: 7, scope: !1462)
!1477 = !DILocation(line: 297, column: 23, scope: !1461)
!1478 = !DILocation(line: 297, column: 31, scope: !1461)
!1479 = !DILocation(line: 297, column: 28, scope: !1461)
!1480 = !DILocation(line: 297, column: 2, scope: !1462)
!1481 = !DILocation(line: 298, column: 3, scope: !1460)
!1482 = !DILocation(line: 298, column: 8, scope: !1460)
!1483 = !DILocation(line: 298, column: 41, scope: !1460)
!1484 = !DILocation(line: 298, column: 47, scope: !1460)
!1485 = !DILocation(line: 298, column: 54, scope: !1460)
!1486 = !DILocation(line: 298, column: 14, scope: !1460)
!1487 = !DILocation(line: 299, column: 3, scope: !1464)
!1488 = !DILocation(line: 299, column: 3, scope: !1467)
!1489 = !DILocation(line: 299, column: 3, scope: !1466)
!1490 = !DILocation(line: 299, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 299, column: 3)
!1492 = !DILocation(line: 299, column: 3, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 299, column: 3)
!1494 = !{i64 2152098031, i64 2152098060, i64 2152098106, i64 2152098164, i64 2152098218, i64 2152098272, i64 2152098327, i64 2152098358, i64 2152098666, i64 2152098672, i64 2152098719, i64 2152098742, i64 2152098768}
!1495 = !DILocation(line: 299, column: 3, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 299, column: 3)
!1497 = !DILocation(line: 299, column: 3, scope: !1460)
!1498 = !DILocation(line: 300, column: 10, scope: !1460)
!1499 = !DILocation(line: 300, column: 16, scope: !1460)
!1500 = !DILocation(line: 300, column: 20, scope: !1460)
!1501 = !DILocation(line: 300, column: 8, scope: !1460)
!1502 = !DILocation(line: 301, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 301, column: 7)
!1504 = !DILocation(line: 301, column: 11, scope: !1503)
!1505 = !DILocation(line: 301, column: 7, scope: !1460)
!1506 = !DILocation(line: 302, column: 16, scope: !1503)
!1507 = !DILocation(line: 302, column: 4, scope: !1503)
!1508 = !DILocation(line: 303, column: 2, scope: !1461)
!1509 = !DILocation(line: 303, column: 2, scope: !1460)
!1510 = !DILocation(line: 297, column: 44, scope: !1461)
!1511 = !DILocation(line: 297, column: 42, scope: !1461)
!1512 = !DILocation(line: 297, column: 2, scope: !1461)
!1513 = distinct !{!1513, !1480, !1514, !618, !619}
!1514 = !DILocation(line: 303, column: 2, scope: !1462)
!1515 = !DILocation(line: 304, column: 1, scope: !1450)
!1516 = distinct !DISubprogram(name: "inc_rlimit_get_ucounts", scope: !3, file: !3, line: 311, type: !1517, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!143, !460, !121, !216}
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1531, !1532, !1534}
!1520 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1516, file: !3, line: 311, type: !460)
!1521 = !DILocalVariable(name: "type", arg: 2, scope: !1516, file: !3, line: 311, type: !121)
!1522 = !DILocalVariable(name: "override_rlimit", arg: 3, scope: !1516, file: !3, line: 312, type: !216)
!1523 = !DILocalVariable(name: "iter", scope: !1516, file: !3, line: 315, type: !460)
!1524 = !DILocalVariable(name: "max", scope: !1516, file: !3, line: 316, type: !143)
!1525 = !DILocalVariable(name: "dec", scope: !1516, file: !3, line: 317, type: !143)
!1526 = !DILocalVariable(name: "ret", scope: !1516, file: !3, line: 317, type: !143)
!1527 = !DILocalVariable(name: "new", scope: !1528, file: !3, line: 320, type: !143)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 319, column: 55)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 319, column: 2)
!1530 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 319, column: 2)
!1531 = !DILabel(scope: !1516, name: "dec_unwind", file: !3, line: 337)
!1532 = !DILocalVariable(name: "__ret_warn_on", scope: !1533, file: !3, line: 339, type: !16)
!1533 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 339, column: 2)
!1534 = !DILocalVariable(name: "__flags", scope: !1535, file: !3, line: 339, type: !16)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 339, column: 2)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 339, column: 2)
!1537 = !DILocation(line: 311, column: 45, scope: !1516)
!1538 = !DILocation(line: 311, column: 71, scope: !1516)
!1539 = !DILocation(line: 312, column: 13, scope: !1516)
!1540 = !DILocation(line: 315, column: 2, scope: !1516)
!1541 = !DILocation(line: 315, column: 18, scope: !1516)
!1542 = !DILocation(line: 316, column: 2, scope: !1516)
!1543 = !DILocation(line: 316, column: 7, scope: !1516)
!1544 = !DILocation(line: 317, column: 2, scope: !1516)
!1545 = !DILocation(line: 317, column: 7, scope: !1516)
!1546 = !DILocation(line: 317, column: 12, scope: !1516)
!1547 = !DILocation(line: 319, column: 14, scope: !1530)
!1548 = !DILocation(line: 319, column: 12, scope: !1530)
!1549 = !DILocation(line: 319, column: 7, scope: !1530)
!1550 = !DILocation(line: 319, column: 23, scope: !1529)
!1551 = !DILocation(line: 319, column: 2, scope: !1530)
!1552 = !DILocation(line: 320, column: 3, scope: !1528)
!1553 = !DILocation(line: 320, column: 8, scope: !1528)
!1554 = !DILocation(line: 320, column: 41, scope: !1528)
!1555 = !DILocation(line: 320, column: 47, scope: !1528)
!1556 = !DILocation(line: 320, column: 54, scope: !1528)
!1557 = !DILocation(line: 320, column: 14, scope: !1528)
!1558 = !DILocation(line: 321, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 321, column: 7)
!1560 = !DILocation(line: 321, column: 11, scope: !1559)
!1561 = !DILocation(line: 321, column: 15, scope: !1559)
!1562 = !DILocation(line: 321, column: 18, scope: !1559)
!1563 = !DILocation(line: 321, column: 24, scope: !1559)
!1564 = !DILocation(line: 321, column: 22, scope: !1559)
!1565 = !DILocation(line: 321, column: 7, scope: !1528)
!1566 = !DILocation(line: 322, column: 4, scope: !1559)
!1567 = !DILocation(line: 323, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 323, column: 7)
!1569 = !DILocation(line: 323, column: 15, scope: !1568)
!1570 = !DILocation(line: 323, column: 12, scope: !1568)
!1571 = !DILocation(line: 323, column: 7, scope: !1528)
!1572 = !DILocation(line: 324, column: 10, scope: !1568)
!1573 = !DILocation(line: 324, column: 8, scope: !1568)
!1574 = !DILocation(line: 324, column: 4, scope: !1568)
!1575 = !DILocation(line: 325, column: 8, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 325, column: 7)
!1577 = !DILocation(line: 325, column: 7, scope: !1528)
!1578 = !DILocation(line: 326, column: 32, scope: !1576)
!1579 = !DILocation(line: 326, column: 38, scope: !1576)
!1580 = !DILocation(line: 326, column: 42, scope: !1576)
!1581 = !DILocation(line: 326, column: 10, scope: !1576)
!1582 = !DILocation(line: 326, column: 8, scope: !1576)
!1583 = !DILocation(line: 326, column: 4, scope: !1576)
!1584 = !DILocation(line: 331, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 331, column: 7)
!1586 = !DILocation(line: 331, column: 11, scope: !1585)
!1587 = !DILocation(line: 331, column: 7, scope: !1528)
!1588 = !DILocation(line: 332, column: 4, scope: !1585)
!1589 = !DILocation(line: 333, column: 20, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 333, column: 7)
!1591 = !DILocation(line: 333, column: 8, scope: !1590)
!1592 = !DILocation(line: 333, column: 7, scope: !1528)
!1593 = !DILocation(line: 334, column: 4, scope: !1590)
!1594 = !DILocation(line: 335, column: 2, scope: !1529)
!1595 = !DILocation(line: 335, column: 2, scope: !1528)
!1596 = !DILocation(line: 319, column: 36, scope: !1529)
!1597 = !DILocation(line: 319, column: 42, scope: !1529)
!1598 = !DILocation(line: 319, column: 46, scope: !1529)
!1599 = !DILocation(line: 319, column: 34, scope: !1529)
!1600 = !DILocation(line: 319, column: 2, scope: !1529)
!1601 = distinct !{!1601, !1551, !1602, !618, !619}
!1602 = !DILocation(line: 335, column: 2, scope: !1530)
!1603 = !DILocation(line: 336, column: 9, scope: !1516)
!1604 = !DILocation(line: 336, column: 2, scope: !1516)
!1605 = !DILocation(line: 337, column: 1, scope: !1516)
!1606 = !DILocation(line: 338, column: 35, scope: !1516)
!1607 = !DILocation(line: 338, column: 41, scope: !1516)
!1608 = !DILocation(line: 338, column: 48, scope: !1516)
!1609 = !DILocation(line: 338, column: 8, scope: !1516)
!1610 = !DILocation(line: 338, column: 6, scope: !1516)
!1611 = !DILocation(line: 339, column: 2, scope: !1533)
!1612 = !DILocation(line: 339, column: 2, scope: !1536)
!1613 = !DILocation(line: 339, column: 2, scope: !1535)
!1614 = !DILocation(line: 339, column: 2, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 339, column: 2)
!1616 = !DILocation(line: 339, column: 2, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 339, column: 2)
!1618 = !{i64 2152099577, i64 2152099606, i64 2152099652, i64 2152099710, i64 2152099764, i64 2152099818, i64 2152099873, i64 2152099904, i64 2152100212, i64 2152100218, i64 2152100265, i64 2152100288, i64 2152100314}
!1619 = !DILocation(line: 339, column: 2, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 339, column: 2)
!1621 = !DILocation(line: 339, column: 2, scope: !1516)
!1622 = !DILocation(line: 340, column: 28, scope: !1516)
!1623 = !DILocation(line: 340, column: 37, scope: !1516)
!1624 = !DILocation(line: 340, column: 43, scope: !1516)
!1625 = !DILocation(line: 340, column: 2, scope: !1516)
!1626 = !DILocation(line: 341, column: 2, scope: !1516)
!1627 = !DILocation(line: 342, column: 1, scope: !1516)
!1628 = distinct !DISubprogram(name: "is_rlimit_overlimit", scope: !3, file: !3, line: 344, type: !1629, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!216, !460, !121, !33}
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637}
!1632 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1628, file: !3, line: 344, type: !460)
!1633 = !DILocalVariable(name: "type", arg: 2, scope: !1628, file: !3, line: 344, type: !121)
!1634 = !DILocalVariable(name: "rlimit", arg: 3, scope: !1628, file: !3, line: 344, type: !33)
!1635 = !DILocalVariable(name: "iter", scope: !1628, file: !3, line: 346, type: !460)
!1636 = !DILocalVariable(name: "max", scope: !1628, file: !3, line: 347, type: !143)
!1637 = !DILocalVariable(name: "val", scope: !1638, file: !3, line: 351, type: !143)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 350, column: 55)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 350, column: 2)
!1640 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 350, column: 2)
!1641 = !DILocation(line: 344, column: 42, scope: !1628)
!1642 = !DILocation(line: 344, column: 68, scope: !1628)
!1643 = !DILocation(line: 344, column: 88, scope: !1628)
!1644 = !DILocation(line: 346, column: 2, scope: !1628)
!1645 = !DILocation(line: 346, column: 18, scope: !1628)
!1646 = !DILocation(line: 347, column: 2, scope: !1628)
!1647 = !DILocation(line: 347, column: 7, scope: !1628)
!1648 = !DILocation(line: 347, column: 13, scope: !1628)
!1649 = !DILocation(line: 348, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 348, column: 6)
!1651 = !DILocation(line: 348, column: 13, scope: !1650)
!1652 = !DILocation(line: 348, column: 6, scope: !1628)
!1653 = !DILocation(line: 349, column: 7, scope: !1650)
!1654 = !DILocation(line: 349, column: 3, scope: !1650)
!1655 = !DILocation(line: 350, column: 14, scope: !1640)
!1656 = !DILocation(line: 350, column: 12, scope: !1640)
!1657 = !DILocation(line: 350, column: 7, scope: !1640)
!1658 = !DILocation(line: 350, column: 23, scope: !1639)
!1659 = !DILocation(line: 350, column: 2, scope: !1640)
!1660 = !DILocation(line: 351, column: 3, scope: !1638)
!1661 = !DILocation(line: 351, column: 8, scope: !1638)
!1662 = !DILocation(line: 351, column: 31, scope: !1638)
!1663 = !DILocation(line: 351, column: 37, scope: !1638)
!1664 = !DILocation(line: 351, column: 14, scope: !1638)
!1665 = !DILocation(line: 352, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 352, column: 7)
!1667 = !DILocation(line: 352, column: 11, scope: !1666)
!1668 = !DILocation(line: 352, column: 15, scope: !1666)
!1669 = !DILocation(line: 352, column: 18, scope: !1666)
!1670 = !DILocation(line: 352, column: 24, scope: !1666)
!1671 = !DILocation(line: 352, column: 22, scope: !1666)
!1672 = !DILocation(line: 352, column: 7, scope: !1638)
!1673 = !DILocation(line: 353, column: 4, scope: !1666)
!1674 = !DILocation(line: 354, column: 31, scope: !1638)
!1675 = !DILocation(line: 354, column: 37, scope: !1638)
!1676 = !DILocation(line: 354, column: 41, scope: !1638)
!1677 = !DILocation(line: 354, column: 9, scope: !1638)
!1678 = !DILocation(line: 354, column: 7, scope: !1638)
!1679 = !DILocation(line: 355, column: 2, scope: !1639)
!1680 = !DILocation(line: 355, column: 2, scope: !1638)
!1681 = !DILocation(line: 350, column: 36, scope: !1639)
!1682 = !DILocation(line: 350, column: 42, scope: !1639)
!1683 = !DILocation(line: 350, column: 46, scope: !1639)
!1684 = !DILocation(line: 350, column: 34, scope: !1639)
!1685 = !DILocation(line: 350, column: 2, scope: !1639)
!1686 = distinct !{!1686, !1659, !1687, !618, !619}
!1687 = !DILocation(line: 355, column: 2, scope: !1640)
!1688 = !DILocation(line: 356, column: 2, scope: !1628)
!1689 = !DILocation(line: 357, column: 1, scope: !1628)
!1690 = distinct !DISubprogram(name: "get_rlimit_value", scope: !103, file: !103, line: 127, type: !1691, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!143, !460, !121}
!1693 = !{!1694, !1695}
!1694 = !DILocalVariable(name: "ucounts", arg: 1, scope: !1690, file: !103, line: 127, type: !460)
!1695 = !DILocalVariable(name: "type", arg: 2, scope: !1690, file: !103, line: 127, type: !121)
!1696 = !DILocation(line: 127, column: 53, scope: !1690)
!1697 = !DILocation(line: 127, column: 79, scope: !1690)
!1698 = !DILocation(line: 129, column: 27, scope: !1690)
!1699 = !DILocation(line: 129, column: 36, scope: !1690)
!1700 = !DILocation(line: 129, column: 43, scope: !1690)
!1701 = !DILocation(line: 129, column: 9, scope: !1690)
!1702 = !DILocation(line: 129, column: 2, scope: !1690)
!1703 = distinct !DISubprogram(name: "__initstub__kmod_ucount__179_378_user_namespace_sysctl_init4", scope: !3, file: !3, line: 378, type: !558, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1704 = !DILocation(line: 378, column: 1, scope: !1703)
!1705 = !DILocation(line: 369, column: 16, scope: !557)
!1706 = !DILocation(line: 369, column: 14, scope: !557)
!1707 = !DILocation(line: 370, column: 18, scope: !557)
!1708 = !DILocation(line: 370, column: 2, scope: !557)
!1709 = !DILocation(line: 371, column: 2, scope: !557)
!1710 = !DILocation(line: 371, column: 2, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 371, column: 2)
!1712 = distinct !DILexicalBlock(scope: !557, file: !3, line: 371, column: 2)
!1713 = !DILocation(line: 371, column: 2, scope: !1712)
!1714 = !DILocation(line: 371, column: 2, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 371, column: 2)
!1716 = !DILocation(line: 371, column: 2, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 371, column: 2)
!1718 = !DILocation(line: 371, column: 2, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 371, column: 2)
!1720 = !{i64 2152101013, i64 2152101042, i64 2152101088, i64 2152101146, i64 2152101200, i64 2152101254, i64 2152101309, i64 2152101340}
!1721 = !DILocation(line: 372, column: 2, scope: !557)
!1722 = !DILocation(line: 372, column: 2, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 372, column: 2)
!1724 = distinct !DILexicalBlock(scope: !557, file: !3, line: 372, column: 2)
!1725 = !DILocation(line: 372, column: 2, scope: !1724)
!1726 = !DILocation(line: 372, column: 2, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 372, column: 2)
!1728 = !DILocation(line: 372, column: 2, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 372, column: 2)
!1730 = !DILocation(line: 372, column: 2, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 372, column: 2)
!1732 = !{i64 2152102039, i64 2152102068, i64 2152102114, i64 2152102172, i64 2152102226, i64 2152102280, i64 2152102335, i64 2152102366}
!1733 = !DILocation(line: 374, column: 2, scope: !557)
!1734 = !DILocation(line: 375, column: 2, scope: !557)
!1735 = !DILocation(line: 376, column: 2, scope: !557)
!1736 = distinct !DISubprogram(name: "set_lookup", scope: !3, file: !3, line: 30, type: !422, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1737)
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "root", arg: 1, scope: !1736, file: !3, line: 30, type: !416)
!1739 = !DILocation(line: 30, column: 35, scope: !1736)
!1740 = !DILocation(line: 32, column: 10, scope: !1736)
!1741 = !DILocation(line: 32, column: 29, scope: !1736)
!1742 = !DILocation(line: 32, column: 2, scope: !1736)
!1743 = distinct !DISubprogram(name: "set_permissions", scope: !3, file: !3, line: 40, type: !433, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1750}
!1745 = !DILocalVariable(name: "head", arg: 1, scope: !1743, file: !3, line: 40, type: !428)
!1746 = !DILocalVariable(name: "table", arg: 2, scope: !1743, file: !3, line: 41, type: !27)
!1747 = !DILocalVariable(name: "user_ns", scope: !1743, file: !3, line: 43, type: !144)
!1748 = !DILocalVariable(name: "__mptr", scope: !1749, file: !3, line: 44, type: !14)
!1749 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 44, column: 3)
!1750 = !DILocalVariable(name: "mode", scope: !1743, file: !3, line: 45, type: !16)
!1751 = !DILocation(line: 40, column: 53, scope: !1743)
!1752 = !DILocation(line: 41, column: 25, scope: !1743)
!1753 = !DILocation(line: 43, column: 2, scope: !1743)
!1754 = !DILocation(line: 43, column: 25, scope: !1743)
!1755 = !DILocation(line: 44, column: 3, scope: !1749)
!1756 = !DILocation(line: 44, column: 3, scope: !1743)
!1757 = !DILocation(line: 45, column: 2, scope: !1743)
!1758 = !DILocation(line: 45, column: 6, scope: !1743)
!1759 = !DILocation(line: 48, column: 17, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 48, column: 6)
!1761 = !DILocation(line: 48, column: 6, scope: !1760)
!1762 = !DILocation(line: 48, column: 6, scope: !1743)
!1763 = !DILocation(line: 49, column: 11, scope: !1760)
!1764 = !DILocation(line: 49, column: 18, scope: !1760)
!1765 = !DILocation(line: 49, column: 23, scope: !1760)
!1766 = !DILocation(line: 49, column: 34, scope: !1760)
!1767 = !DILocation(line: 49, column: 8, scope: !1760)
!1768 = !DILocation(line: 49, column: 3, scope: !1760)
!1769 = !DILocation(line: 52, column: 10, scope: !1760)
!1770 = !DILocation(line: 52, column: 17, scope: !1760)
!1771 = !DILocation(line: 52, column: 22, scope: !1760)
!1772 = !DILocation(line: 52, column: 8, scope: !1760)
!1773 = !DILocation(line: 53, column: 10, scope: !1743)
!1774 = !DILocation(line: 53, column: 15, scope: !1743)
!1775 = !DILocation(line: 53, column: 24, scope: !1743)
!1776 = !DILocation(line: 53, column: 29, scope: !1743)
!1777 = !DILocation(line: 53, column: 21, scope: !1743)
!1778 = !DILocation(line: 53, column: 37, scope: !1743)
!1779 = !DILocation(line: 53, column: 35, scope: !1743)
!1780 = !DILocation(line: 54, column: 1, scope: !1743)
!1781 = !DILocation(line: 53, column: 2, scope: !1743)
!1782 = distinct !DISubprogram(name: "current_user_ns", scope: !1783, file: !1783, line: 346, type: !1784, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1783 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!144}
!1786 = !DILocation(line: 348, column: 2, scope: !1782)
!1787 = !DISubprogram(name: "ns_capable", scope: !1788, file: !1788, line: 149, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1788 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!216, !144, !16}
!1791 = distinct !DISubprogram(name: "atomic_add_negative", scope: !935, file: !935, line: 1409, type: !1792, scopeLine: 1410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!216, !16, !938}
!1794 = !{!1795, !1796}
!1795 = !DILocalVariable(name: "i", arg: 1, scope: !1791, file: !935, line: 1409, type: !16)
!1796 = !DILocalVariable(name: "v", arg: 2, scope: !1791, file: !935, line: 1409, type: !938)
!1797 = !DILocation(line: 1409, column: 25, scope: !1791)
!1798 = !DILocation(line: 1409, column: 38, scope: !1791)
!1799 = !DILocation(line: 1411, column: 2, scope: !1791)
!1800 = !DILocation(line: 1411, column: 2, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1791, file: !935, line: 1411, column: 2)
!1802 = !DILocation(line: 1412, column: 31, scope: !1791)
!1803 = !DILocation(line: 1412, column: 2, scope: !1791)
!1804 = !DILocation(line: 1413, column: 33, scope: !1791)
!1805 = !DILocation(line: 1413, column: 36, scope: !1791)
!1806 = !DILocation(line: 1413, column: 9, scope: !1791)
!1807 = !DILocation(line: 1413, column: 2, scope: !1791)
!1808 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1809, file: !1809, line: 94, type: !1810, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1815)
!1809 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1812, !29}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1814)
!1814 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1815 = !{!1816, !1817}
!1816 = !DILocalVariable(name: "v", arg: 1, scope: !1808, file: !1809, line: 94, type: !1812)
!1817 = !DILocalVariable(name: "size", arg: 2, scope: !1808, file: !1809, line: 94, type: !29)
!1818 = !DILocation(line: 94, column: 79, scope: !1808)
!1819 = !DILocation(line: 94, column: 89, scope: !1808)
!1820 = !DILocation(line: 96, column: 20, scope: !1808)
!1821 = !DILocation(line: 96, column: 23, scope: !1808)
!1822 = !DILocation(line: 96, column: 2, scope: !1808)
!1823 = !DILocation(line: 97, column: 2, scope: !1808)
!1824 = !DILocation(line: 98, column: 1, scope: !1808)
!1825 = distinct !DISubprogram(name: "raw_atomic_add_negative", scope: !1826, file: !1826, line: 2295, type: !1792, scopeLine: 2296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1826 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1827 = !{!1828, !1829}
!1828 = !DILocalVariable(name: "i", arg: 1, scope: !1825, file: !1826, line: 2295, type: !16)
!1829 = !DILocalVariable(name: "v", arg: 2, scope: !1825, file: !1826, line: 2295, type: !938)
!1830 = !DILocation(line: 2295, column: 29, scope: !1825)
!1831 = !DILocation(line: 2295, column: 42, scope: !1825)
!1832 = !DILocation(line: 2298, column: 34, scope: !1825)
!1833 = !DILocation(line: 2298, column: 37, scope: !1825)
!1834 = !DILocation(line: 2298, column: 9, scope: !1825)
!1835 = !DILocation(line: 2298, column: 2, scope: !1825)
!1836 = distinct !DISubprogram(name: "kasan_check_write", scope: !1837, file: !1837, line: 44, type: !1838, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1837 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!216, !1812, !98}
!1840 = !{!1841, !1842}
!1841 = !DILocalVariable(name: "p", arg: 1, scope: !1836, file: !1837, line: 44, type: !1812)
!1842 = !DILocalVariable(name: "size", arg: 2, scope: !1836, file: !1837, line: 44, type: !98)
!1843 = !DILocation(line: 44, column: 59, scope: !1836)
!1844 = !DILocation(line: 44, column: 75, scope: !1836)
!1845 = !DILocation(line: 46, column: 2, scope: !1836)
!1846 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1847, file: !1847, line: 229, type: !1848, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1847 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1812, !29, !16}
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "ptr", arg: 1, scope: !1846, file: !1847, line: 229, type: !1812)
!1852 = !DILocalVariable(name: "size", arg: 2, scope: !1846, file: !1847, line: 229, type: !29)
!1853 = !DILocalVariable(name: "type", arg: 3, scope: !1846, file: !1847, line: 230, type: !16)
!1854 = !DILocation(line: 229, column: 60, scope: !1846)
!1855 = !DILocation(line: 229, column: 72, scope: !1846)
!1856 = !DILocation(line: 230, column: 15, scope: !1846)
!1857 = !DILocation(line: 230, column: 23, scope: !1846)
!1858 = distinct !DISubprogram(name: "arch_atomic_add_negative", scope: !1859, file: !1859, line: 77, type: !1792, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1860)
!1859 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1860 = !{!1861, !1862, !1863}
!1861 = !DILocalVariable(name: "i", arg: 1, scope: !1858, file: !1859, line: 77, type: !16)
!1862 = !DILocalVariable(name: "v", arg: 2, scope: !1858, file: !1859, line: 77, type: !938)
!1863 = !DILocalVariable(name: "c", scope: !1864, file: !1859, line: 79, type: !216)
!1864 = distinct !DILexicalBlock(scope: !1858, file: !1859, line: 79, column: 9)
!1865 = !DILocation(line: 77, column: 58, scope: !1858)
!1866 = !DILocation(line: 77, column: 71, scope: !1858)
!1867 = !DILocation(line: 79, column: 9, scope: !1864)
!1868 = !{i64 2148658594, i64 2148658633, i64 2148658654, i64 2148658691, i64 2148658714, i64 2148658723, i64 2148658822}
!1869 = !DILocation(line: 79, column: 9, scope: !1858)
!1870 = !DILocation(line: 79, column: 2, scope: !1858)
!1871 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !1872, file: !1872, line: 29, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1872 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1876 = distinct !DISubprogram(name: "uid_eq", scope: !177, file: !177, line: 61, type: !1877, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!216, !176, !176}
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "left", arg: 1, scope: !1876, file: !177, line: 61, type: !176)
!1881 = !DILocalVariable(name: "right", arg: 2, scope: !1876, file: !177, line: 61, type: !176)
!1882 = !DILocation(line: 61, column: 34, scope: !1876)
!1883 = !DILocation(line: 61, column: 47, scope: !1876)
!1884 = !DILocation(line: 63, column: 9, scope: !1876)
!1885 = !DILocation(line: 63, column: 29, scope: !1876)
!1886 = !DILocation(line: 63, column: 26, scope: !1876)
!1887 = !DILocation(line: 63, column: 2, scope: !1876)
!1888 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !1872, file: !1872, line: 41, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1889 = distinct !DISubprogram(name: "kmalloc", scope: !129, file: !129, line: 591, type: !922, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "size", arg: 1, scope: !1889, file: !129, line: 591, type: !29)
!1892 = !DILocalVariable(name: "flags", arg: 2, scope: !1889, file: !129, line: 591, type: !139)
!1893 = !DILocalVariable(name: "index", scope: !1894, file: !129, line: 594, type: !98)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !129, line: 593, column: 42)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !129, line: 593, column: 6)
!1896 = !DILocation(line: 591, column: 61, scope: !1889)
!1897 = !DILocation(line: 591, column: 73, scope: !1889)
!1898 = !DILocation(line: 593, column: 27, scope: !1895)
!1899 = !DILocation(line: 593, column: 6, scope: !1895)
!1900 = !DILocation(line: 593, column: 33, scope: !1895)
!1901 = !DILocation(line: 593, column: 36, scope: !1895)
!1902 = !DILocation(line: 593, column: 6, scope: !1889)
!1903 = !DILocation(line: 594, column: 3, scope: !1894)
!1904 = !DILocation(line: 594, column: 16, scope: !1894)
!1905 = !DILocation(line: 596, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1894, file: !129, line: 596, column: 7)
!1907 = !DILocation(line: 596, column: 12, scope: !1906)
!1908 = !DILocation(line: 596, column: 7, scope: !1894)
!1909 = !DILocation(line: 597, column: 25, scope: !1906)
!1910 = !DILocation(line: 597, column: 31, scope: !1906)
!1911 = !DILocation(line: 597, column: 11, scope: !1906)
!1912 = !DILocation(line: 597, column: 4, scope: !1906)
!1913 = !DILocation(line: 599, column: 11, scope: !1894)
!1914 = !DILocation(line: 599, column: 9, scope: !1894)
!1915 = !DILocation(line: 601, column: 33, scope: !1894)
!1916 = !DILocation(line: 601, column: 40, scope: !1894)
!1917 = !DILocation(line: 601, column: 20, scope: !1894)
!1918 = !DILocation(line: 601, column: 5, scope: !1894)
!1919 = !DILocation(line: 601, column: 51, scope: !1894)
!1920 = !DILocation(line: 602, column: 5, scope: !1894)
!1921 = !DILocation(line: 602, column: 12, scope: !1894)
!1922 = !DILocation(line: 600, column: 10, scope: !1894)
!1923 = !DILocation(line: 600, column: 3, scope: !1894)
!1924 = !DILocation(line: 603, column: 2, scope: !1895)
!1925 = !DILocation(line: 604, column: 19, scope: !1889)
!1926 = !DILocation(line: 604, column: 25, scope: !1889)
!1927 = !DILocation(line: 604, column: 9, scope: !1889)
!1928 = !DILocation(line: 604, column: 2, scope: !1889)
!1929 = !DILocation(line: 605, column: 1, scope: !1889)
!1930 = !DISubprogram(name: "kmalloc_large", scope: !129, file: !129, line: 531, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = distinct !DISubprogram(name: "__kmalloc_index", scope: !129, file: !129, line: 444, type: !1932, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!98, !29, !216}
!1934 = !{!1935, !1936}
!1935 = !DILocalVariable(name: "size", arg: 1, scope: !1931, file: !129, line: 444, type: !29)
!1936 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1931, file: !129, line: 445, type: !216)
!1937 = !DILocation(line: 444, column: 60, scope: !1931)
!1938 = !DILocation(line: 445, column: 16, scope: !1931)
!1939 = !DILocation(line: 447, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 447, column: 6)
!1941 = !DILocation(line: 447, column: 6, scope: !1931)
!1942 = !DILocation(line: 448, column: 3, scope: !1940)
!1943 = !DILocation(line: 450, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 450, column: 6)
!1945 = !DILocation(line: 450, column: 11, scope: !1944)
!1946 = !DILocation(line: 450, column: 6, scope: !1931)
!1947 = !DILocation(line: 451, column: 3, scope: !1944)
!1948 = !DILocation(line: 453, column: 32, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 453, column: 6)
!1950 = !DILocation(line: 453, column: 37, scope: !1949)
!1951 = !DILocation(line: 453, column: 42, scope: !1949)
!1952 = !DILocation(line: 453, column: 45, scope: !1949)
!1953 = !DILocation(line: 453, column: 50, scope: !1949)
!1954 = !DILocation(line: 453, column: 6, scope: !1931)
!1955 = !DILocation(line: 454, column: 3, scope: !1949)
!1956 = !DILocation(line: 455, column: 32, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 455, column: 6)
!1958 = !DILocation(line: 455, column: 37, scope: !1957)
!1959 = !DILocation(line: 455, column: 43, scope: !1957)
!1960 = !DILocation(line: 455, column: 46, scope: !1957)
!1961 = !DILocation(line: 455, column: 51, scope: !1957)
!1962 = !DILocation(line: 455, column: 6, scope: !1931)
!1963 = !DILocation(line: 456, column: 3, scope: !1957)
!1964 = !DILocation(line: 457, column: 6, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 457, column: 6)
!1966 = !DILocation(line: 457, column: 11, scope: !1965)
!1967 = !DILocation(line: 457, column: 6, scope: !1931)
!1968 = !DILocation(line: 457, column: 26, scope: !1965)
!1969 = !DILocation(line: 458, column: 6, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 458, column: 6)
!1971 = !DILocation(line: 458, column: 11, scope: !1970)
!1972 = !DILocation(line: 458, column: 6, scope: !1931)
!1973 = !DILocation(line: 458, column: 26, scope: !1970)
!1974 = !DILocation(line: 459, column: 6, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 459, column: 6)
!1976 = !DILocation(line: 459, column: 11, scope: !1975)
!1977 = !DILocation(line: 459, column: 6, scope: !1931)
!1978 = !DILocation(line: 459, column: 26, scope: !1975)
!1979 = !DILocation(line: 460, column: 6, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 460, column: 6)
!1981 = !DILocation(line: 460, column: 11, scope: !1980)
!1982 = !DILocation(line: 460, column: 6, scope: !1931)
!1983 = !DILocation(line: 460, column: 26, scope: !1980)
!1984 = !DILocation(line: 461, column: 6, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 461, column: 6)
!1986 = !DILocation(line: 461, column: 11, scope: !1985)
!1987 = !DILocation(line: 461, column: 6, scope: !1931)
!1988 = !DILocation(line: 461, column: 26, scope: !1985)
!1989 = !DILocation(line: 462, column: 6, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 462, column: 6)
!1991 = !DILocation(line: 462, column: 11, scope: !1990)
!1992 = !DILocation(line: 462, column: 6, scope: !1931)
!1993 = !DILocation(line: 462, column: 26, scope: !1990)
!1994 = !DILocation(line: 463, column: 6, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 463, column: 6)
!1996 = !DILocation(line: 463, column: 11, scope: !1995)
!1997 = !DILocation(line: 463, column: 6, scope: !1931)
!1998 = !DILocation(line: 463, column: 26, scope: !1995)
!1999 = !DILocation(line: 464, column: 6, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 464, column: 6)
!2001 = !DILocation(line: 464, column: 11, scope: !2000)
!2002 = !DILocation(line: 464, column: 6, scope: !1931)
!2003 = !DILocation(line: 464, column: 26, scope: !2000)
!2004 = !DILocation(line: 465, column: 6, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 465, column: 6)
!2006 = !DILocation(line: 465, column: 11, scope: !2005)
!2007 = !DILocation(line: 465, column: 6, scope: !1931)
!2008 = !DILocation(line: 465, column: 26, scope: !2005)
!2009 = !DILocation(line: 466, column: 6, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 466, column: 6)
!2011 = !DILocation(line: 466, column: 11, scope: !2010)
!2012 = !DILocation(line: 466, column: 6, scope: !1931)
!2013 = !DILocation(line: 466, column: 26, scope: !2010)
!2014 = !DILocation(line: 467, column: 6, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 467, column: 6)
!2016 = !DILocation(line: 467, column: 11, scope: !2015)
!2017 = !DILocation(line: 467, column: 6, scope: !1931)
!2018 = !DILocation(line: 467, column: 26, scope: !2015)
!2019 = !DILocation(line: 468, column: 6, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 468, column: 6)
!2021 = !DILocation(line: 468, column: 11, scope: !2020)
!2022 = !DILocation(line: 468, column: 6, scope: !1931)
!2023 = !DILocation(line: 468, column: 26, scope: !2020)
!2024 = !DILocation(line: 469, column: 6, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 469, column: 6)
!2026 = !DILocation(line: 469, column: 11, scope: !2025)
!2027 = !DILocation(line: 469, column: 6, scope: !1931)
!2028 = !DILocation(line: 469, column: 26, scope: !2025)
!2029 = !DILocation(line: 470, column: 6, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 470, column: 6)
!2031 = !DILocation(line: 470, column: 11, scope: !2030)
!2032 = !DILocation(line: 470, column: 6, scope: !1931)
!2033 = !DILocation(line: 470, column: 26, scope: !2030)
!2034 = !DILocation(line: 471, column: 6, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 471, column: 6)
!2036 = !DILocation(line: 471, column: 11, scope: !2035)
!2037 = !DILocation(line: 471, column: 6, scope: !1931)
!2038 = !DILocation(line: 471, column: 26, scope: !2035)
!2039 = !DILocation(line: 472, column: 6, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 472, column: 6)
!2041 = !DILocation(line: 472, column: 11, scope: !2040)
!2042 = !DILocation(line: 472, column: 6, scope: !1931)
!2043 = !DILocation(line: 472, column: 26, scope: !2040)
!2044 = !DILocation(line: 473, column: 6, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 473, column: 6)
!2046 = !DILocation(line: 473, column: 11, scope: !2045)
!2047 = !DILocation(line: 473, column: 6, scope: !1931)
!2048 = !DILocation(line: 473, column: 26, scope: !2045)
!2049 = !DILocation(line: 474, column: 6, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 474, column: 6)
!2051 = !DILocation(line: 474, column: 11, scope: !2050)
!2052 = !DILocation(line: 474, column: 6, scope: !1931)
!2053 = !DILocation(line: 474, column: 27, scope: !2050)
!2054 = !DILocation(line: 475, column: 6, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 475, column: 6)
!2056 = !DILocation(line: 475, column: 11, scope: !2055)
!2057 = !DILocation(line: 475, column: 6, scope: !1931)
!2058 = !DILocation(line: 475, column: 32, scope: !2055)
!2059 = !DILocation(line: 477, column: 50, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1931, file: !129, line: 477, column: 6)
!2061 = !DILocation(line: 477, column: 6, scope: !1931)
!2062 = !DILocation(line: 478, column: 3, scope: !2060)
!2063 = !DILocation(line: 478, column: 3, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !129, line: 478, column: 3)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !129, line: 478, column: 3)
!2066 = !{i32 -2143494479}
!2067 = !DILocation(line: 478, column: 3, scope: !2065)
!2068 = !DILocation(line: 480, column: 3, scope: !2060)
!2069 = !DILocation(line: 480, column: 3, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2060, file: !129, line: 480, column: 3)
!2071 = !DILocation(line: 480, column: 3, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2070, file: !129, line: 480, column: 3)
!2073 = !DILocation(line: 480, column: 3, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !129, line: 480, column: 3)
!2075 = !{i64 2151473020, i64 2151473049, i64 2151473095, i64 2151473153, i64 2151473207, i64 2151473261, i64 2151473316, i64 2151473347}
!2076 = !DILocation(line: 483, column: 2, scope: !1931)
!2077 = !DILocation(line: 484, column: 1, scope: !1931)
!2078 = !DISubprogram(name: "kmalloc_trace", scope: !129, file: !129, line: 525, type: !2079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!14, !2081, !139, !29}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2083, line: 11, flags: DIFlagFwdDecl)
!2083 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2084 = distinct !DISubprogram(name: "kmalloc_type", scope: !129, file: !129, line: 401, type: !2085, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!128, !139, !33}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "flags", arg: 1, scope: !2084, file: !129, line: 401, type: !139)
!2089 = !DILocalVariable(name: "caller", arg: 2, scope: !2084, file: !129, line: 401, type: !33)
!2090 = !DILocation(line: 401, column: 67, scope: !2084)
!2091 = !DILocation(line: 401, column: 88, scope: !2084)
!2092 = !DILocation(line: 407, column: 6, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2084, file: !129, line: 407, column: 6)
!2094 = !DILocation(line: 407, column: 6, scope: !2084)
!2095 = !DILocation(line: 413, column: 3, scope: !2093)
!2096 = !DILocation(line: 423, column: 38, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2084, file: !129, line: 423, column: 6)
!2098 = !DILocation(line: 423, column: 44, scope: !2097)
!2099 = !DILocation(line: 423, column: 6, scope: !2084)
!2100 = !DILocation(line: 424, column: 3, scope: !2097)
!2101 = !DILocation(line: 426, column: 3, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2084, file: !129, line: 425, column: 6)
!2103 = !DILocation(line: 429, column: 1, scope: !2084)
!2104 = !DISubprogram(name: "__kmalloc", scope: !129, file: !129, line: 488, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !DISubprogram(name: "__compiletime_assert_117", scope: !129, file: !129, line: 478, type: !2106, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null}
!2108 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1809, file: !1809, line: 80, type: !1810, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "v", arg: 1, scope: !2108, file: !1809, line: 80, type: !1812)
!2111 = !DILocalVariable(name: "size", arg: 2, scope: !2108, file: !1809, line: 80, type: !29)
!2112 = !DILocation(line: 80, column: 74, scope: !2108)
!2113 = !DILocation(line: 80, column: 84, scope: !2108)
!2114 = !DILocation(line: 82, column: 20, scope: !2108)
!2115 = !DILocation(line: 82, column: 23, scope: !2108)
!2116 = !DILocation(line: 82, column: 2, scope: !2108)
!2117 = !DILocation(line: 83, column: 2, scope: !2108)
!2118 = !DILocation(line: 84, column: 1, scope: !2108)
!2119 = distinct !DISubprogram(name: "raw_atomic_set", scope: !1826, file: !1826, line: 488, type: !936, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "v", arg: 1, scope: !2119, file: !1826, line: 488, type: !938)
!2122 = !DILocalVariable(name: "i", arg: 2, scope: !2119, file: !1826, line: 488, type: !16)
!2123 = !DILocation(line: 488, column: 26, scope: !2119)
!2124 = !DILocation(line: 488, column: 33, scope: !2119)
!2125 = !DILocation(line: 490, column: 18, scope: !2119)
!2126 = !DILocation(line: 490, column: 21, scope: !2119)
!2127 = !DILocation(line: 490, column: 2, scope: !2119)
!2128 = !DILocation(line: 491, column: 1, scope: !2119)
!2129 = distinct !DISubprogram(name: "arch_atomic_set", scope: !1859, file: !1859, line: 26, type: !936, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2130 = !{!2131, !2132}
!2131 = !DILocalVariable(name: "v", arg: 1, scope: !2129, file: !1859, line: 26, type: !938)
!2132 = !DILocalVariable(name: "i", arg: 2, scope: !2129, file: !1859, line: 26, type: !16)
!2133 = !DILocation(line: 26, column: 55, scope: !2129)
!2134 = !DILocation(line: 26, column: 62, scope: !2129)
!2135 = !DILocation(line: 28, column: 2, scope: !2129)
!2136 = !DILocation(line: 28, column: 2, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2129, file: !1859, line: 28, column: 2)
!2138 = !DILocation(line: 29, column: 1, scope: !2129)
!2139 = distinct !DISubprogram(name: "hlist_unhashed", scope: !951, file: !951, line: 948, type: !2140, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!16, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "h", arg: 1, scope: !2139, file: !951, line: 948, type: !2142)
!2146 = !DILocation(line: 948, column: 59, scope: !2139)
!2147 = !DILocation(line: 950, column: 10, scope: !2139)
!2148 = !DILocation(line: 950, column: 13, scope: !2139)
!2149 = !DILocation(line: 950, column: 9, scope: !2139)
!2150 = !DILocation(line: 950, column: 2, scope: !2139)
!2151 = distinct !DISubprogram(name: "__hlist_del", scope: !951, file: !951, line: 975, type: !1008, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2152 = !{!2153, !2154, !2155}
!2153 = !DILocalVariable(name: "n", arg: 1, scope: !2151, file: !951, line: 975, type: !448)
!2154 = !DILocalVariable(name: "next", scope: !2151, file: !951, line: 977, type: !448)
!2155 = !DILocalVariable(name: "pprev", scope: !2151, file: !951, line: 978, type: !453)
!2156 = !DILocation(line: 975, column: 51, scope: !2151)
!2157 = !DILocation(line: 977, column: 2, scope: !2151)
!2158 = !DILocation(line: 977, column: 21, scope: !2151)
!2159 = !DILocation(line: 977, column: 28, scope: !2151)
!2160 = !DILocation(line: 977, column: 31, scope: !2151)
!2161 = !DILocation(line: 978, column: 2, scope: !2151)
!2162 = !DILocation(line: 978, column: 22, scope: !2151)
!2163 = !DILocation(line: 978, column: 30, scope: !2151)
!2164 = !DILocation(line: 978, column: 33, scope: !2151)
!2165 = !DILocation(line: 980, column: 2, scope: !2151)
!2166 = !DILocation(line: 980, column: 2, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2151, file: !951, line: 980, column: 2)
!2168 = !DILocation(line: 980, column: 2, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2167, file: !951, line: 980, column: 2)
!2170 = !DILocation(line: 980, column: 2, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !951, line: 980, column: 2)
!2172 = !DILocation(line: 981, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2151, file: !951, line: 981, column: 6)
!2174 = !DILocation(line: 981, column: 6, scope: !2151)
!2175 = !DILocation(line: 982, column: 3, scope: !2173)
!2176 = !DILocation(line: 982, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !951, line: 982, column: 3)
!2178 = !DILocation(line: 982, column: 3, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2177, file: !951, line: 982, column: 3)
!2180 = !DILocation(line: 982, column: 3, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !951, line: 982, column: 3)
!2182 = !DILocation(line: 983, column: 1, scope: !2151)
!2183 = distinct !DISubprogram(name: "INIT_HLIST_NODE", scope: !951, file: !951, line: 934, type: !1008, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "h", arg: 1, scope: !2183, file: !951, line: 934, type: !448)
!2186 = !DILocation(line: 934, column: 55, scope: !2183)
!2187 = !DILocation(line: 936, column: 2, scope: !2183)
!2188 = !DILocation(line: 936, column: 5, scope: !2183)
!2189 = !DILocation(line: 936, column: 10, scope: !2183)
!2190 = !DILocation(line: 937, column: 2, scope: !2183)
!2191 = !DILocation(line: 937, column: 5, scope: !2183)
!2192 = !DILocation(line: 937, column: 11, scope: !2183)
!2193 = !DILocation(line: 938, column: 1, scope: !2183)
!2194 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1872, file: !1872, line: 43, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !1875, !33}
!2197 = distinct !DISubprogram(name: "atomic_long_read", scope: !935, file: !935, line: 3158, type: !2198, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!143, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!2202 = !{!2203}
!2203 = !DILocalVariable(name: "v", arg: 1, scope: !2197, file: !935, line: 3158, type: !2200)
!2204 = !DILocation(line: 3158, column: 39, scope: !2197)
!2205 = !DILocation(line: 3160, column: 25, scope: !2197)
!2206 = !DILocation(line: 3160, column: 2, scope: !2197)
!2207 = !DILocation(line: 3161, column: 30, scope: !2197)
!2208 = !DILocation(line: 3161, column: 9, scope: !2197)
!2209 = !DILocation(line: 3161, column: 2, scope: !2197)
!2210 = distinct !DISubprogram(name: "atomic_long_cmpxchg", scope: !935, file: !935, line: 4319, type: !2211, scopeLine: 4320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!143, !1136, !143, !143}
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "v", arg: 1, scope: !2210, file: !935, line: 4319, type: !1136)
!2215 = !DILocalVariable(name: "old", arg: 2, scope: !2210, file: !935, line: 4319, type: !143)
!2216 = !DILocalVariable(name: "new", arg: 3, scope: !2210, file: !935, line: 4319, type: !143)
!2217 = !DILocation(line: 4319, column: 36, scope: !2210)
!2218 = !DILocation(line: 4319, column: 44, scope: !2210)
!2219 = !DILocation(line: 4319, column: 54, scope: !2210)
!2220 = !DILocation(line: 4321, column: 2, scope: !2210)
!2221 = !DILocation(line: 4321, column: 2, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2210, file: !935, line: 4321, column: 2)
!2223 = !DILocation(line: 4322, column: 31, scope: !2210)
!2224 = !DILocation(line: 4322, column: 2, scope: !2210)
!2225 = !DILocation(line: 4323, column: 33, scope: !2210)
!2226 = !DILocation(line: 4323, column: 36, scope: !2210)
!2227 = !DILocation(line: 4323, column: 41, scope: !2210)
!2228 = !DILocation(line: 4323, column: 9, scope: !2210)
!2229 = !DILocation(line: 4323, column: 2, scope: !2210)
!2230 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1809, file: !1809, line: 66, type: !1810, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232, !2233}
!2232 = !DILocalVariable(name: "v", arg: 1, scope: !2230, file: !1809, line: 66, type: !1812)
!2233 = !DILocalVariable(name: "size", arg: 2, scope: !2230, file: !1809, line: 66, type: !29)
!2234 = !DILocation(line: 66, column: 73, scope: !2230)
!2235 = !DILocation(line: 66, column: 83, scope: !2230)
!2236 = !DILocation(line: 68, column: 19, scope: !2230)
!2237 = !DILocation(line: 68, column: 22, scope: !2230)
!2238 = !DILocation(line: 68, column: 2, scope: !2230)
!2239 = !DILocation(line: 69, column: 2, scope: !2230)
!2240 = !DILocation(line: 70, column: 1, scope: !2230)
!2241 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !196, file: !196, line: 35, type: !2198, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "v", arg: 1, scope: !2241, file: !196, line: 35, type: !2200)
!2244 = !DILocation(line: 35, column: 43, scope: !2241)
!2245 = !DILocation(line: 38, column: 27, scope: !2241)
!2246 = !DILocation(line: 38, column: 9, scope: !2241)
!2247 = !DILocation(line: 38, column: 2, scope: !2241)
!2248 = distinct !DISubprogram(name: "kasan_check_read", scope: !1837, file: !1837, line: 40, type: !1838, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "p", arg: 1, scope: !2248, file: !1837, line: 40, type: !1812)
!2251 = !DILocalVariable(name: "size", arg: 2, scope: !2248, file: !1837, line: 40, type: !98)
!2252 = !DILocation(line: 40, column: 58, scope: !2248)
!2253 = !DILocation(line: 40, column: 74, scope: !2248)
!2254 = !DILocation(line: 42, column: 2, scope: !2248)
!2255 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !1826, file: !1826, line: 2554, type: !2256, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!201, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!2260 = !{!2261}
!2261 = !DILocalVariable(name: "v", arg: 1, scope: !2255, file: !1826, line: 2554, type: !2258)
!2262 = !DILocation(line: 2554, column: 37, scope: !2255)
!2263 = !DILocation(line: 2556, column: 28, scope: !2255)
!2264 = !DILocation(line: 2556, column: 9, scope: !2255)
!2265 = !DILocation(line: 2556, column: 2, scope: !2255)
!2266 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !2267, file: !2267, line: 13, type: !2256, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2267 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "v", arg: 1, scope: !2266, file: !2267, line: 13, type: !2258)
!2270 = !DILocation(line: 13, column: 65, scope: !2266)
!2271 = !DILocation(line: 15, column: 9, scope: !2266)
!2272 = !DILocation(line: 15, column: 2, scope: !2266)
!2273 = distinct !DISubprogram(name: "raw_atomic_long_cmpxchg", scope: !196, file: !196, line: 1361, type: !2211, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2274 = !{!2275, !2276, !2277}
!2275 = !DILocalVariable(name: "v", arg: 1, scope: !2273, file: !196, line: 1361, type: !1136)
!2276 = !DILocalVariable(name: "old", arg: 2, scope: !2273, file: !196, line: 1361, type: !143)
!2277 = !DILocalVariable(name: "new", arg: 3, scope: !2273, file: !196, line: 1361, type: !143)
!2278 = !DILocation(line: 1361, column: 40, scope: !2273)
!2279 = !DILocation(line: 1361, column: 48, scope: !2273)
!2280 = !DILocation(line: 1361, column: 58, scope: !2273)
!2281 = !DILocation(line: 1364, column: 30, scope: !2273)
!2282 = !DILocation(line: 1364, column: 33, scope: !2273)
!2283 = !DILocation(line: 1364, column: 38, scope: !2273)
!2284 = !DILocation(line: 1364, column: 9, scope: !2273)
!2285 = !DILocation(line: 1364, column: 2, scope: !2273)
!2286 = distinct !DISubprogram(name: "raw_atomic64_cmpxchg", scope: !1826, file: !1826, line: 4113, type: !2287, scopeLine: 4114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2290)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!201, !2289, !201, !201}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!2290 = !{!2291, !2292, !2293}
!2291 = !DILocalVariable(name: "v", arg: 1, scope: !2286, file: !1826, line: 4113, type: !2289)
!2292 = !DILocalVariable(name: "old", arg: 2, scope: !2286, file: !1826, line: 4113, type: !201)
!2293 = !DILocalVariable(name: "new", arg: 3, scope: !2286, file: !1826, line: 4113, type: !201)
!2294 = !DILocation(line: 4113, column: 34, scope: !2286)
!2295 = !DILocation(line: 4113, column: 41, scope: !2286)
!2296 = !DILocation(line: 4113, column: 50, scope: !2286)
!2297 = !DILocation(line: 4116, column: 31, scope: !2286)
!2298 = !DILocation(line: 4116, column: 34, scope: !2286)
!2299 = !DILocation(line: 4116, column: 39, scope: !2286)
!2300 = !DILocation(line: 4116, column: 9, scope: !2286)
!2301 = !DILocation(line: 4116, column: 2, scope: !2286)
!2302 = distinct !DISubprogram(name: "arch_atomic64_cmpxchg", scope: !2267, file: !2267, line: 101, type: !2287, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2309, !2310, !2311}
!2304 = !DILocalVariable(name: "v", arg: 1, scope: !2302, file: !2267, line: 101, type: !2289)
!2305 = !DILocalVariable(name: "old", arg: 2, scope: !2302, file: !2267, line: 101, type: !201)
!2306 = !DILocalVariable(name: "new", arg: 3, scope: !2302, file: !2267, line: 101, type: !201)
!2307 = !DILocalVariable(name: "__ret", scope: !2308, file: !2267, line: 103, type: !201)
!2308 = distinct !DILexicalBlock(scope: !2302, file: !2267, line: 103, column: 9)
!2309 = !DILocalVariable(name: "__old", scope: !2308, file: !2267, line: 103, type: !201)
!2310 = !DILocalVariable(name: "__new", scope: !2308, file: !2267, line: 103, type: !201)
!2311 = !DILocalVariable(name: "__ptr", scope: !2308, file: !2267, line: 103, type: !486)
!2312 = !DILocation(line: 101, column: 62, scope: !2302)
!2313 = !DILocation(line: 101, column: 69, scope: !2302)
!2314 = !DILocation(line: 101, column: 78, scope: !2302)
!2315 = !DILocation(line: 103, column: 9, scope: !2308)
!2316 = !{i64 2148698991, i64 2148699030, i64 2148699051, i64 2148699088, i64 2148699111, i64 2148699120}
!2317 = !DILocation(line: 103, column: 9, scope: !2302)
!2318 = !DILocation(line: 103, column: 2, scope: !2302)
!2319 = distinct !DISubprogram(name: "raw_atomic_long_dec", scope: !196, file: !196, line: 675, type: !1176, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2320)
!2320 = !{!2321}
!2321 = !DILocalVariable(name: "v", arg: 1, scope: !2319, file: !196, line: 675, type: !1136)
!2322 = !DILocation(line: 675, column: 36, scope: !2319)
!2323 = !DILocation(line: 678, column: 19, scope: !2319)
!2324 = !DILocation(line: 678, column: 2, scope: !2319)
!2325 = !DILocation(line: 682, column: 1, scope: !2319)
!2326 = distinct !DISubprogram(name: "raw_atomic64_dec", scope: !1826, file: !1826, line: 3306, type: !2327, scopeLine: 3307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2289}
!2329 = !{!2330}
!2330 = !DILocalVariable(name: "v", arg: 1, scope: !2326, file: !1826, line: 3306, type: !2289)
!2331 = !DILocation(line: 3306, column: 30, scope: !2326)
!2332 = !DILocation(line: 3309, column: 20, scope: !2326)
!2333 = !DILocation(line: 3309, column: 2, scope: !2326)
!2334 = !DILocation(line: 3313, column: 1, scope: !2326)
!2335 = distinct !DISubprogram(name: "arch_atomic64_dec", scope: !2267, file: !2267, line: 51, type: !2327, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "v", arg: 1, scope: !2335, file: !2267, line: 51, type: !2289)
!2338 = !DILocation(line: 51, column: 59, scope: !2335)
!2339 = !DILocation(line: 54, column: 16, scope: !2335)
!2340 = !DILocation(line: 54, column: 19, scope: !2335)
!2341 = !DILocation(line: 55, column: 15, scope: !2335)
!2342 = !DILocation(line: 55, column: 18, scope: !2335)
!2343 = !DILocation(line: 53, column: 2, scope: !2335)
!2344 = !{i64 2148683912, i64 2148683951, i64 2148683972, i64 2148684009, i64 2148684032, i64 2148683902}
!2345 = !DILocation(line: 56, column: 1, scope: !2335)
!2346 = distinct !DISubprogram(name: "raw_atomic_long_dec_if_positive", scope: !196, file: !196, line: 1788, type: !1241, scopeLine: 1789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "v", arg: 1, scope: !2346, file: !196, line: 1788, type: !1136)
!2349 = !DILocation(line: 1788, column: 48, scope: !2346)
!2350 = !DILocation(line: 1791, column: 38, scope: !2346)
!2351 = !DILocation(line: 1791, column: 9, scope: !2346)
!2352 = !DILocation(line: 1791, column: 2, scope: !2346)
!2353 = distinct !DISubprogram(name: "raw_atomic64_dec_if_positive", scope: !1826, file: !1826, line: 4634, type: !2354, scopeLine: 4635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!201, !2289}
!2356 = !{!2357, !2358, !2359}
!2357 = !DILocalVariable(name: "v", arg: 1, scope: !2353, file: !1826, line: 4634, type: !2289)
!2358 = !DILocalVariable(name: "dec", scope: !2353, file: !1826, line: 4639, type: !201)
!2359 = !DILocalVariable(name: "c", scope: !2353, file: !1826, line: 4639, type: !201)
!2360 = !DILocation(line: 4634, column: 42, scope: !2353)
!2361 = !DILocation(line: 4639, column: 2, scope: !2353)
!2362 = !DILocation(line: 4639, column: 6, scope: !2353)
!2363 = !DILocation(line: 4639, column: 11, scope: !2353)
!2364 = !DILocation(line: 4639, column: 33, scope: !2353)
!2365 = !DILocation(line: 4639, column: 15, scope: !2353)
!2366 = !DILocation(line: 4641, column: 2, scope: !2353)
!2367 = !DILocation(line: 4642, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2353, file: !1826, line: 4641, column: 5)
!2369 = !DILocation(line: 4642, column: 11, scope: !2368)
!2370 = !DILocation(line: 4642, column: 7, scope: !2368)
!2371 = !DILocation(line: 4643, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !1826, line: 4643, column: 7)
!2373 = !DILocation(line: 4643, column: 7, scope: !2368)
!2374 = !DILocation(line: 4644, column: 4, scope: !2372)
!2375 = !DILocation(line: 4645, column: 2, scope: !2368)
!2376 = !DILocation(line: 4645, column: 37, scope: !2353)
!2377 = !DILocation(line: 4645, column: 44, scope: !2353)
!2378 = !DILocation(line: 4645, column: 12, scope: !2353)
!2379 = !DILocation(line: 4645, column: 11, scope: !2353)
!2380 = distinct !{!2380, !2366, !2381, !618, !619}
!2381 = !DILocation(line: 4645, column: 48, scope: !2353)
!2382 = !DILocation(line: 4647, column: 9, scope: !2353)
!2383 = !DILocation(line: 4649, column: 1, scope: !2353)
!2384 = !DILocation(line: 4647, column: 2, scope: !2353)
!2385 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !1826, file: !1826, line: 4221, type: !2386, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!216, !2289, !491, !201}
!2388 = !{!2389, !2390, !2391}
!2389 = !DILocalVariable(name: "v", arg: 1, scope: !2385, file: !1826, line: 4221, type: !2289)
!2390 = !DILocalVariable(name: "old", arg: 2, scope: !2385, file: !1826, line: 4221, type: !491)
!2391 = !DILocalVariable(name: "new", arg: 3, scope: !2385, file: !1826, line: 4221, type: !201)
!2392 = !DILocation(line: 4221, column: 38, scope: !2385)
!2393 = !DILocation(line: 4221, column: 46, scope: !2385)
!2394 = !DILocation(line: 4221, column: 55, scope: !2385)
!2395 = !DILocation(line: 4224, column: 35, scope: !2385)
!2396 = !DILocation(line: 4224, column: 38, scope: !2385)
!2397 = !DILocation(line: 4224, column: 43, scope: !2385)
!2398 = !DILocation(line: 4224, column: 9, scope: !2385)
!2399 = !DILocation(line: 4224, column: 2, scope: !2385)
!2400 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !2267, file: !2267, line: 107, type: !2386, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2407, !2408, !2409, !2410}
!2402 = !DILocalVariable(name: "v", arg: 1, scope: !2400, file: !2267, line: 107, type: !2289)
!2403 = !DILocalVariable(name: "old", arg: 2, scope: !2400, file: !2267, line: 107, type: !491)
!2404 = !DILocalVariable(name: "new", arg: 3, scope: !2400, file: !2267, line: 107, type: !201)
!2405 = !DILocalVariable(name: "success", scope: !2406, file: !2267, line: 109, type: !216)
!2406 = distinct !DILexicalBlock(scope: !2400, file: !2267, line: 109, column: 9)
!2407 = !DILocalVariable(name: "_old", scope: !2406, file: !2267, line: 109, type: !491)
!2408 = !DILocalVariable(name: "__old", scope: !2406, file: !2267, line: 109, type: !201)
!2409 = !DILocalVariable(name: "__new", scope: !2406, file: !2267, line: 109, type: !201)
!2410 = !DILocalVariable(name: "__ptr", scope: !2406, file: !2267, line: 109, type: !486)
!2411 = !DILocation(line: 107, column: 67, scope: !2400)
!2412 = !DILocation(line: 107, column: 75, scope: !2400)
!2413 = !DILocation(line: 107, column: 84, scope: !2400)
!2414 = !DILocation(line: 109, column: 9, scope: !2406)
!2415 = !{i64 2148702090, i64 2148702129, i64 2148702150, i64 2148702187, i64 2148702210, i64 2148702219, i64 2148702420}
!2416 = !DILocation(line: 109, column: 9, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2406, file: !2267, line: 109, column: 9)
!2418 = !DILocation(line: 109, column: 9, scope: !2400)
!2419 = !DILocation(line: 109, column: 2, scope: !2400)
!2420 = distinct !DISubprogram(name: "raw_atomic_long_add_return", scope: !196, file: !196, line: 139, type: !1325, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2421)
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "i", arg: 1, scope: !2420, file: !196, line: 139, type: !143)
!2423 = !DILocalVariable(name: "v", arg: 2, scope: !2420, file: !196, line: 139, type: !1136)
!2424 = !DILocation(line: 139, column: 33, scope: !2420)
!2425 = !DILocation(line: 139, column: 51, scope: !2420)
!2426 = !DILocation(line: 142, column: 33, scope: !2420)
!2427 = !DILocation(line: 142, column: 36, scope: !2420)
!2428 = !DILocation(line: 142, column: 9, scope: !2420)
!2429 = !DILocation(line: 142, column: 2, scope: !2420)
!2430 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !1826, file: !1826, line: 2660, type: !2431, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!201, !201, !2289}
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "i", arg: 1, scope: !2430, file: !1826, line: 2660, type: !201)
!2435 = !DILocalVariable(name: "v", arg: 2, scope: !2430, file: !1826, line: 2660, type: !2289)
!2436 = !DILocation(line: 2660, column: 29, scope: !2430)
!2437 = !DILocation(line: 2660, column: 44, scope: !2430)
!2438 = !DILocation(line: 2663, column: 34, scope: !2430)
!2439 = !DILocation(line: 2663, column: 37, scope: !2430)
!2440 = !DILocation(line: 2663, column: 9, scope: !2430)
!2441 = !DILocation(line: 2663, column: 2, scope: !2430)
!2442 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !2267, file: !2267, line: 77, type: !2431, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2443 = !{!2444, !2445, !2446}
!2444 = !DILocalVariable(name: "i", arg: 1, scope: !2442, file: !2267, line: 77, type: !201)
!2445 = !DILocalVariable(name: "v", arg: 2, scope: !2442, file: !2267, line: 77, type: !2289)
!2446 = !DILocalVariable(name: "__ret", scope: !2447, file: !2267, line: 79, type: !201)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !2267, line: 79, column: 13)
!2448 = !DILocation(line: 77, column: 57, scope: !2442)
!2449 = !DILocation(line: 77, column: 72, scope: !2442)
!2450 = !DILocation(line: 79, column: 9, scope: !2442)
!2451 = !DILocation(line: 79, column: 13, scope: !2447)
!2452 = !{i64 2148691791, i64 2148691830, i64 2148691851, i64 2148691888, i64 2148691911, i64 2148691920}
!2453 = !DILocation(line: 79, column: 13, scope: !2442)
!2454 = !DILocation(line: 79, column: 11, scope: !2442)
!2455 = !DILocation(line: 79, column: 2, scope: !2442)
!2456 = distinct !DISubprogram(name: "raw_atomic_long_sub_return", scope: !196, file: !196, line: 328, type: !1325, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "i", arg: 1, scope: !2456, file: !196, line: 328, type: !143)
!2459 = !DILocalVariable(name: "v", arg: 2, scope: !2456, file: !196, line: 328, type: !1136)
!2460 = !DILocation(line: 328, column: 33, scope: !2456)
!2461 = !DILocation(line: 328, column: 51, scope: !2456)
!2462 = !DILocation(line: 331, column: 33, scope: !2456)
!2463 = !DILocation(line: 331, column: 36, scope: !2456)
!2464 = !DILocation(line: 331, column: 9, scope: !2456)
!2465 = !DILocation(line: 331, column: 2, scope: !2456)
!2466 = distinct !DISubprogram(name: "raw_atomic64_sub_return", scope: !1826, file: !1826, line: 2883, type: !2431, scopeLine: 2884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "i", arg: 1, scope: !2466, file: !1826, line: 2883, type: !201)
!2469 = !DILocalVariable(name: "v", arg: 2, scope: !2466, file: !1826, line: 2883, type: !2289)
!2470 = !DILocation(line: 2883, column: 29, scope: !2466)
!2471 = !DILocation(line: 2883, column: 44, scope: !2466)
!2472 = !DILocation(line: 2886, column: 34, scope: !2466)
!2473 = !DILocation(line: 2886, column: 37, scope: !2466)
!2474 = !DILocation(line: 2886, column: 9, scope: !2466)
!2475 = !DILocation(line: 2886, column: 2, scope: !2466)
!2476 = distinct !DISubprogram(name: "arch_atomic64_sub_return", scope: !2267, file: !2267, line: 83, type: !2431, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2477 = !{!2478, !2479}
!2478 = !DILocalVariable(name: "i", arg: 1, scope: !2476, file: !2267, line: 83, type: !201)
!2479 = !DILocalVariable(name: "v", arg: 2, scope: !2476, file: !2267, line: 83, type: !2289)
!2480 = !DILocation(line: 83, column: 57, scope: !2476)
!2481 = !DILocation(line: 83, column: 72, scope: !2476)
!2482 = !DILocation(line: 85, column: 35, scope: !2476)
!2483 = !DILocation(line: 85, column: 34, scope: !2476)
!2484 = !DILocation(line: 85, column: 38, scope: !2476)
!2485 = !DILocation(line: 85, column: 9, scope: !2476)
!2486 = !DILocation(line: 85, column: 2, scope: !2476)
!2487 = !DISubprogram(name: "register_sysctl_sz", scope: !6, file: !6, line: 232, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!428, !10, !27, !29}
!2490 = distinct !DISubprogram(name: "kmemleak_ignore", scope: !2491, file: !2491, line: 96, type: !664, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2492)
!2491 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!2492 = !{!2493}
!2493 = !DILocalVariable(name: "ptr", arg: 1, scope: !2490, file: !2491, line: 96, type: !658)
!2494 = !DILocation(line: 96, column: 48, scope: !2490)
!2495 = !DILocation(line: 98, column: 1, scope: !2490)
!2496 = distinct !DISubprogram(name: "hlist_add_ucounts", scope: !3, file: !3, line: 142, type: !723, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2497)
!2497 = !{!2498, !2499}
!2498 = !DILocalVariable(name: "ucounts", arg: 1, scope: !2496, file: !3, line: 142, type: !460)
!2499 = !DILocalVariable(name: "hashent", scope: !2496, file: !3, line: 144, type: !754)
!2500 = !DILocation(line: 142, column: 47, scope: !2496)
!2501 = !DILocation(line: 144, column: 2, scope: !2496)
!2502 = !DILocation(line: 144, column: 21, scope: !2496)
!2503 = !DILocation(line: 144, column: 31, scope: !2496)
!2504 = !DILocation(line: 145, column: 2, scope: !2496)
!2505 = !DILocation(line: 146, column: 18, scope: !2496)
!2506 = !DILocation(line: 146, column: 27, scope: !2496)
!2507 = !DILocation(line: 146, column: 33, scope: !2496)
!2508 = !DILocation(line: 146, column: 2, scope: !2496)
!2509 = !DILocation(line: 147, column: 2, scope: !2496)
!2510 = !DILocation(line: 148, column: 1, scope: !2496)
