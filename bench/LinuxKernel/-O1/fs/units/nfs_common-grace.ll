; ModuleID = 'fs/nfs_common/grace.c'
source_filename = "fs/nfs_common/grace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_locks_start_grace: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad locks_start_grace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_locks_end_grace: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad locks_end_grace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_locks_in_grace: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad locks_in_grace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_opens_in_grace: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad opens_in_grace ; .previous"
module asm ".section\09\22.initcall6.init..kmod_grace__354_143_init_grace\22, \22a\22\09\09"
module asm "__initcall__kmod_grace__354_143_init_grace6:\09\09\09"
module asm ".long\09__initstub__kmod_grace__354_143_init_grace6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon.21 }
%union.anon.21 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [48 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_nf, %struct.netns_ct, ptr, %struct.netns_bpf, [16 x i8], %struct.netns_xfrm, i64, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, i8, ptr, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { %struct.unix_table, i32, ptr }
%struct.unix_table = type { ptr, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i64, i64, i32, i32, ptr, ptr, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i32, ptr, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t }
%struct.inet_timewait_death_row = type { %struct.refcount_struct, [60 x i8], ptr, i32, [52 x i8] }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.atomic_t, i64, i8, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.29, ptr, [32 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.percpu_counter, [24 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [4 x i64], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.27, %struct.qspinlock }
%union.anon.27 = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.anon.29 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_nf = type { ptr, [11 x ptr], ptr, [5 x ptr], [5 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, ptr, ptr, %struct.nf_ip_net }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8 }
%struct.nf_udp_net = type { [2 x i32] }
%struct.nf_icmp_net = type { i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, [3 x i8], ptr, [24 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [16 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.net_generic = type { %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.anon.32 = type { %struct.anon.33, [0 x ptr] }
%struct.anon.33 = type {}

@grace_net_id = internal global i32 0, align 4, !dbg !0
@grace_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !206
@.str = private unnamed_addr constant [47 x i8] c"double list_add attempt detected in net %x %s\0A\00", align 1, !dbg !154
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [11 x i8] c"(init_net)\00", align 1, !dbg !159
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !164
@.str.3 = private unnamed_addr constant [22 x i8] c"fs/nfs_common/grace.c\00", align 1, !dbg !169
@__UNIQUE_ID___addressable_locks_start_grace347 = internal global ptr @locks_start_grace, section ".discard.addressable", align 8, !dbg !174
@__UNIQUE_ID___addressable_locks_end_grace348 = internal global ptr @locks_end_grace, section ".discard.addressable", align 8, !dbg !176
@__UNIQUE_ID___addressable_locks_in_grace349 = internal global ptr @locks_in_grace, section ".discard.addressable", align 8, !dbg !178
@__UNIQUE_ID___addressable_opens_in_grace350 = internal global ptr @opens_in_grace, section ".discard.addressable", align 8, !dbg !180
@grace_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @grace_init_net, ptr null, ptr @grace_exit_net, ptr null, ptr null, ptr @grace_net_id, i64 16 }, align 8, !dbg !208
@__UNIQUE_ID_author351 = internal constant [51 x i8] c"grace.author=Jeff Layton <jlayton@primarydata.com>\00", section ".modinfo", align 1, !dbg !182
@__UNIQUE_ID_file352 = internal constant [31 x i8] c"grace.file=fs/nfs_common/grace\00", section ".modinfo", align 1, !dbg !187
@__UNIQUE_ID_license353 = internal constant [18 x i8] c"grace.license=GPL\00", section ".modinfo", align 1, !dbg !192
@__UNIQUE_ID___addressable___initstub__kmod_grace__354_143_init_grace6355 = internal global ptr @__initstub__kmod_grace__354_143_init_grace6, section ".discard.addressable", align 8, !dbg !197
@__exitcall_exit_grace = internal global ptr @exit_grace, section ".exitcall.exit", align 8, !dbg !199
@grace_exit_net.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1562
@.str.4 = private unnamed_addr constant [36 x i8] c"net %x %s: grace_list is not empty\0A\00", align 1, !dbg !1580
@__func__.grace_exit_net = private unnamed_addr constant [15 x i8] c"grace_exit_net\00", align 1, !dbg !1585
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_locks_start_grace347, ptr @__UNIQUE_ID___addressable_locks_end_grace348, ptr @__UNIQUE_ID___addressable_locks_in_grace349, ptr @__UNIQUE_ID___addressable_opens_in_grace350, ptr @exit_grace, ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__UNIQUE_ID___addressable___initstub__kmod_grace__354_143_init_grace6355, ptr @__exitcall_exit_grace], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @locks_start_grace(ptr noundef %net, ptr noundef %lm) #0 align 16 !dbg !1599 {
entry:
  %net.addr = alloca ptr, align 8
  %lm.addr = alloca ptr, align 8
  %grace_list = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1603, metadata !DIExpression()), !dbg !1613
  store ptr %lm, ptr %lm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lm.addr, metadata !1604, metadata !DIExpression()), !dbg !1614
  call void @llvm.lifetime.start.p0(i64 8, ptr %grace_list) #8, !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %grace_list, metadata !1605, metadata !DIExpression()), !dbg !1616
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1617
  %1 = load i32, ptr @grace_net_id, align 4, !dbg !1618
  %call = call ptr @net_generic(ptr noundef %0, i32 noundef %1) #9, !dbg !1619
  store ptr %call, ptr %grace_list, align 8, !dbg !1616
  call void @spin_lock(ptr noundef @grace_lock) #9, !dbg !1620
  %2 = load ptr, ptr %lm.addr, align 8, !dbg !1621
  %list = getelementptr inbounds %struct.lock_manager, ptr %2, i32 0, i32 0, !dbg !1622
  %call1 = call i32 @list_empty(ptr noundef %list) #9, !dbg !1623
  %tobool = icmp ne i32 %call1, 0, !dbg !1623
  br i1 %tobool, label %if.then, label %if.else, !dbg !1624

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %lm.addr, align 8, !dbg !1625
  %list2 = getelementptr inbounds %struct.lock_manager, ptr %3, i32 0, i32 0, !dbg !1626
  %4 = load ptr, ptr %grace_list, align 8, !dbg !1627
  call void @list_add(ptr noundef %list2, ptr noundef %4) #9, !dbg !1628
  br label %if.end33, !dbg !1628

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1606, metadata !DIExpression()), !dbg !1629
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1629
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1630
  %tobool3 = icmp ne i32 %5, 0, !dbg !1630
  %lnot = xor i1 %tobool3, true, !dbg !1630
  %lnot4 = xor i1 %lnot, true, !dbg !1630
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1630
  %conv = sext i32 %lnot.ext to i64, !dbg !1630
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1630
  %tobool5 = icmp ne i64 %expval, 0, !dbg !1630
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !1629

if.then6:                                         ; preds = %if.else
  br label %do.body, !dbg !1630

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !1631

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1632

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1632

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %net.addr, align 8, !dbg !1631
  %ns = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 15, !dbg !1631
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 2, !dbg !1631
  %7 = load i32, ptr %inum, align 16, !dbg !1631
  %8 = load ptr, ptr %net.addr, align 8, !dbg !1631
  %cmp = icmp eq ptr %8, @init_net, !dbg !1631
  %9 = zext i1 %cmp to i64, !dbg !1631
  %cond = select i1 %cmp, ptr @.str.1, ptr @.str.2, !dbg !1631
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %7, ptr noundef %cond) #9, !dbg !1631
  br label %do.body9, !dbg !1631

do.body9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1609, metadata !DIExpression()), !dbg !1634
  store i32 2313, ptr %__flags, align 4, !dbg !1634
  br label %do.body10, !dbg !1634

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !1635

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1635

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1634

do.body13:                                        ; preds = %do.end12
  %10 = load i32, ptr %__flags, align 4, !dbg !1637
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 39, i32 %10, i64 12) #8, !dbg !1637, !srcloc !1639
  br label %do.cond14, !dbg !1637

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1637

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !1634

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !1640

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1640

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !1631
  br label %do.cond19, !dbg !1634

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1634

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !1631

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !1642

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1642

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !1631

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !1631

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !1631

if.end:                                           ; preds = %do.end25, %if.else
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !1629
  %tobool26 = icmp ne i32 %11, 0, !dbg !1629
  %lnot27 = xor i1 %tobool26, true, !dbg !1629
  %lnot29 = xor i1 %lnot27, true, !dbg !1629
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1629
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1629
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1629
  store i64 %expval32, ptr %tmp, align 8, !dbg !1630
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !1644
  %12 = load i64, ptr %tmp, align 8, !dbg !1629
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then
  call void @spin_unlock(ptr noundef @grace_lock) #9, !dbg !1645
  call void @llvm.lifetime.end.p0(i64 8, ptr %grace_list) #8, !dbg !1646
  ret void, !dbg !1646
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @net_generic(ptr noundef %net, i32 noundef %id) #3 align 16 !dbg !1647 {
entry:
  %net.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %ng = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu343 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1653, metadata !DIExpression()), !dbg !1659
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0(i64 8, ptr %ng) #8, !dbg !1661
  call void @llvm.dbg.declare(metadata ptr %ng, metadata !1655, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1656, metadata !DIExpression()), !dbg !1664
  call void @rcu_read_lock() #9, !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu343) #8, !dbg !1666
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu343, metadata !1657, metadata !DIExpression()), !dbg !1666
  br label %do.body, !dbg !1667

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1669

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1669

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1667
  %gen = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, !dbg !1667
  %1 = load volatile ptr, ptr %gen, align 8, !dbg !1667
  store ptr %1, ptr %tmp, align 8, !dbg !1669
  %2 = load ptr, ptr %tmp, align 8, !dbg !1667
  store ptr %2, ptr %__UNIQUE_ID_rcu343, align 8, !dbg !1666
  br label %do.body1, !dbg !1666

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !1671

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !1671

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu343, align 8, !dbg !1666
  store ptr %3, ptr %tmp4, align 8, !dbg !1671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu343) #8, !dbg !1673
  %4 = load ptr, ptr %tmp4, align 8, !dbg !1666
  store ptr %4, ptr %ng, align 8, !dbg !1674
  %5 = load ptr, ptr %ng, align 8, !dbg !1675
  %6 = getelementptr inbounds %struct.net_generic, ptr %5, i32 0, i32 0, !dbg !1676
  %ptr5 = getelementptr inbounds %struct.anon.32, ptr %6, i32 0, i32 1, !dbg !1676
  %7 = load i32, ptr %id.addr, align 4, !dbg !1677
  %idxprom = zext i32 %7 to i64, !dbg !1675
  %arrayidx = getelementptr [0 x ptr], ptr %ptr5, i64 0, i64 %idxprom, !dbg !1675
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1675
  store ptr %8, ptr %ptr, align 8, !dbg !1678
  call void @rcu_read_unlock() #9, !dbg !1679
  %9 = load ptr, ptr %ptr, align 8, !dbg !1680
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !1681
  call void @llvm.lifetime.end.p0(i64 8, ptr %ng) #8, !dbg !1681
  ret ptr %9, !dbg !1682
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !1683 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1688, metadata !DIExpression()), !dbg !1689
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1690
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1690
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !1690
  ret void, !dbg !1691
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !1692 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1699, metadata !DIExpression()), !dbg !1700
  br label %do.body, !dbg !1701

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1703

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1701
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !1701
  %1 = load volatile ptr, ptr %next, align 8, !dbg !1701
  store ptr %1, ptr %tmp, align 8, !dbg !1703
  %2 = load ptr, ptr %tmp, align 8, !dbg !1701
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1705
  %cmp = icmp eq ptr %2, %3, !dbg !1706
  %conv = zext i1 %cmp to i32, !dbg !1706
  ret i32 %conv, !dbg !1707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !1708 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1710, metadata !DIExpression()), !dbg !1712
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1711, metadata !DIExpression()), !dbg !1713
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1714
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1715
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1716
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !1717
  %3 = load ptr, ptr %next, align 8, !dbg !1717
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !1718
  ret void, !dbg !1719
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1720 dso_local void @__warn_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !1724 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1726, metadata !DIExpression()), !dbg !1727
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1728
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1728
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !1728
  ret void, !dbg !1729
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @locks_end_grace(ptr noundef %lm) #0 align 16 !dbg !1730 {
entry:
  %lm.addr = alloca ptr, align 8
  store ptr %lm, ptr %lm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lm.addr, metadata !1734, metadata !DIExpression()), !dbg !1735
  call void @spin_lock(ptr noundef @grace_lock) #9, !dbg !1736
  %0 = load ptr, ptr %lm.addr, align 8, !dbg !1737
  %list = getelementptr inbounds %struct.lock_manager, ptr %0, i32 0, i32 0, !dbg !1738
  call void @list_del_init(ptr noundef %list) #9, !dbg !1739
  call void @spin_unlock(ptr noundef @grace_lock) #9, !dbg !1740
  ret void, !dbg !1741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !1742 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1744, metadata !DIExpression()), !dbg !1745
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1746
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !1747
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1748
  call void @INIT_LIST_HEAD(ptr noundef %1) #9, !dbg !1749
  ret void, !dbg !1750
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @locks_in_grace(ptr noundef %net) #0 align 16 !dbg !1751 {
entry:
  %net.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1755, metadata !DIExpression()), !dbg !1756
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1757
  %call = call zeroext i1 @__state_in_grace(ptr noundef %0, i1 noundef zeroext false) #9, !dbg !1758
  ret i1 %call, !dbg !1759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__state_in_grace(ptr noundef %net, i1 noundef zeroext %open) #0 align 16 !dbg !1760 {
entry:
  %retval = alloca i1, align 1
  %net.addr = alloca ptr, align 8
  %open.addr = alloca i8, align 1
  %grace_list = alloca ptr, align 8
  %lm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1764, metadata !DIExpression()), !dbg !1774
  %frombool = zext i1 %open to i8
  store i8 %frombool, ptr %open.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %open.addr, metadata !1765, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.start.p0(i64 8, ptr %grace_list) #8, !dbg !1776
  call void @llvm.dbg.declare(metadata ptr %grace_list, metadata !1766, metadata !DIExpression()), !dbg !1777
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1778
  %1 = load i32, ptr @grace_net_id, align 4, !dbg !1779
  %call = call ptr @net_generic(ptr noundef %0, i32 noundef %1) #9, !dbg !1780
  store ptr %call, ptr %grace_list, align 8, !dbg !1777
  call void @llvm.lifetime.start.p0(i64 8, ptr %lm) #8, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %lm, metadata !1767, metadata !DIExpression()), !dbg !1782
  %2 = load i8, ptr %open.addr, align 1, !dbg !1783, !range !1785, !noundef !133
  %tobool = trunc i8 %2 to i1, !dbg !1783
  br i1 %tobool, label %if.end, label %if.then, !dbg !1786

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %grace_list, align 8, !dbg !1787
  %call1 = call i32 @list_empty(ptr noundef %3) #9, !dbg !1788
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1789
  %lnot = xor i1 %tobool2, true, !dbg !1789
  store i1 %lnot, ptr %retval, align 1, !dbg !1790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1790

if.end:                                           ; preds = %entry
  call void @spin_lock(ptr noundef @grace_lock) #9, !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !1792
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1768, metadata !DIExpression()), !dbg !1792
  %4 = load ptr, ptr %grace_list, align 8, !dbg !1792
  %next = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !1792
  %5 = load ptr, ptr %next, align 8, !dbg !1792
  store ptr %5, ptr %__mptr, align 8, !dbg !1792
  %6 = load ptr, ptr %__mptr, align 8, !dbg !1792
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !1792
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !1793
  %7 = load ptr, ptr %tmp, align 8, !dbg !1792
  store ptr %7, ptr %lm, align 8, !dbg !1793
  br label %for.cond, !dbg !1793

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %lm, align 8, !dbg !1794
  %list = getelementptr inbounds %struct.lock_manager, ptr %8, i32 0, i32 0, !dbg !1794
  %9 = load ptr, ptr %grace_list, align 8, !dbg !1794
  %cmp = icmp eq ptr %list, %9, !dbg !1794
  %lnot3 = xor i1 %cmp, true, !dbg !1794
  br i1 %lnot3, label %for.body, label %for.end, !dbg !1793

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %lm, align 8, !dbg !1795
  %block_opens = getelementptr inbounds %struct.lock_manager, ptr %10, i32 0, i32 1, !dbg !1798
  %11 = load i8, ptr %block_opens, align 8, !dbg !1798, !range !1785, !noundef !133
  %tobool4 = trunc i8 %11 to i1, !dbg !1798
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1799

if.then5:                                         ; preds = %for.body
  call void @spin_unlock(ptr noundef @grace_lock) #9, !dbg !1800
  store i1 true, ptr %retval, align 1, !dbg !1802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1802

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !1803

for.inc:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #8, !dbg !1804
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !1771, metadata !DIExpression()), !dbg !1804
  %12 = load ptr, ptr %lm, align 8, !dbg !1804
  %list8 = getelementptr inbounds %struct.lock_manager, ptr %12, i32 0, i32 0, !dbg !1804
  %next9 = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !1804
  %13 = load ptr, ptr %next9, align 8, !dbg !1804
  store ptr %13, ptr %__mptr7, align 8, !dbg !1804
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !1804
  %add.ptr11 = getelementptr i8, ptr %14, i64 0, !dbg !1804
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #8, !dbg !1794
  %15 = load ptr, ptr %tmp10, align 8, !dbg !1804
  store ptr %15, ptr %lm, align 8, !dbg !1794
  br label %for.cond, !dbg !1794, !llvm.loop !1805

for.end:                                          ; preds = %for.cond
  call void @spin_unlock(ptr noundef @grace_lock) #9, !dbg !1809
  store i1 false, ptr %retval, align 1, !dbg !1810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1810

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lm) #8, !dbg !1811
  call void @llvm.lifetime.end.p0(i64 8, ptr %grace_list) #8, !dbg !1811
  %16 = load i1, ptr %retval, align 1, !dbg !1811
  ret i1 %16, !dbg !1811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @opens_in_grace(ptr noundef %net) #0 align 16 !dbg !1812 {
entry:
  %net.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1814, metadata !DIExpression()), !dbg !1815
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1816
  %call = call zeroext i1 @__state_in_grace(ptr noundef %0, i1 noundef zeroext true) #9, !dbg !1817
  ret i1 %call, !dbg !1818
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @exit_grace() #7 section ".exit.text" align 16 !dbg !1819 {
entry:
  call void @unregister_pernet_subsys(ptr noundef @grace_net_ops) #9, !dbg !1820
  ret void, !dbg !1821
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1822 dso_local void @unregister_pernet_subsys(ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_grace__354_143_init_grace6() #7 section ".init.text" align 16 !dbg !1826 {
entry:
  %call = call i32 @init_grace() #10, !dbg !1829
  ret i32 %call, !dbg !1829
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_grace() #7 section ".init.text" align 16 !dbg !1830 {
entry:
  %call = call i32 @register_pernet_subsys(ptr noundef @grace_net_ops) #9, !dbg !1831
  ret i32 %call, !dbg !1832
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !1833 {
entry:
  call void @__rcu_read_lock() #9, !dbg !1835
  br label %do.body, !dbg !1836

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1837

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1839

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1840

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1842
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !1843 {
entry:
  br label %do.body, !dbg !1844

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1845

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #9, !dbg !1847
  br label %do.body1, !dbg !1848

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1849

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1852 dso_local void @__rcu_read_lock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1853 dso_local void @__rcu_read_unlock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1854 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !1859 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1863, metadata !DIExpression()), !dbg !1866
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1864, metadata !DIExpression()), !dbg !1867
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1865, metadata !DIExpression()), !dbg !1868
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1869
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !1871
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1872
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !1873
  br i1 %call, label %if.end, label %if.then, !dbg !1874

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1875

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1876
  %4 = load ptr, ptr %next.addr, align 8, !dbg !1877
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !1878
  store ptr %3, ptr %prev1, align 8, !dbg !1879
  %5 = load ptr, ptr %next.addr, align 8, !dbg !1880
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1881
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !1882
  store ptr %5, ptr %next2, align 8, !dbg !1883
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !1884
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1885
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !1886
  store ptr %7, ptr %prev3, align 8, !dbg !1887
  br label %do.body, !dbg !1888

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1889

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1891

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1889

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1893
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !1893
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !1893
  store volatile ptr %9, ptr %next6, align 8, !dbg !1893
  br label %do.end7, !dbg !1893

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1889

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !1896 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1900, metadata !DIExpression()), !dbg !1903
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1901, metadata !DIExpression()), !dbg !1904
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1902, metadata !DIExpression()), !dbg !1905
  ret i1 true, !dbg !1906
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1907 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !1908 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1910, metadata !DIExpression()), !dbg !1911
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1912
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !1914
  br i1 %call, label %if.end, label %if.then, !dbg !1915

if.then:                                          ; preds = %entry
  br label %return, !dbg !1916

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1917
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1918
  %2 = load ptr, ptr %prev, align 8, !dbg !1918
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1919
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1920
  %4 = load ptr, ptr %next, align 8, !dbg !1920
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !1921
  br label %return, !dbg !1922

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1922
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !1923 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1925, metadata !DIExpression()), !dbg !1926
  br label %do.body, !dbg !1927

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1928

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1930

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1928

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1932
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1932
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1932
  store volatile ptr %0, ptr %next, align 8, !dbg !1932
  br label %do.end3, !dbg !1932

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1928

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1934

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1935

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1937

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1935

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1939
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1939
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1939
  store volatile ptr %2, ptr %prev, align 8, !dbg !1939
  br label %do.end9, !dbg !1939

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1935

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1941
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !1942 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1946, metadata !DIExpression()), !dbg !1947
  ret i1 true, !dbg !1948
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !1949 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1951, metadata !DIExpression()), !dbg !1953
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1952, metadata !DIExpression()), !dbg !1954
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !1955
  %1 = load ptr, ptr %next.addr, align 8, !dbg !1956
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1957
  store ptr %0, ptr %prev1, align 8, !dbg !1958
  br label %do.body, !dbg !1959

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1960

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1962

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1960

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1964
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !1964
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1964
  store volatile ptr %2, ptr %next4, align 8, !dbg !1964
  br label %do.end5, !dbg !1964

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1960

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @grace_init_net(ptr noundef %net) #0 align 16 !dbg !1967 {
entry:
  %net.addr = alloca ptr, align 8
  %grace_list = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1969, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr %grace_list) #8, !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %grace_list, metadata !1970, metadata !DIExpression()), !dbg !1973
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1974
  %1 = load i32, ptr @grace_net_id, align 4, !dbg !1975
  %call = call ptr @net_generic(ptr noundef %0, i32 noundef %1) #9, !dbg !1976
  store ptr %call, ptr %grace_list, align 8, !dbg !1973
  %2 = load ptr, ptr %grace_list, align 8, !dbg !1977
  call void @INIT_LIST_HEAD(ptr noundef %2) #9, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 8, ptr %grace_list) #8, !dbg !1979
  ret i32 0, !dbg !1980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @grace_exit_net(ptr noundef %net) #0 align 16 !dbg !1564 {
entry:
  %net.addr = alloca ptr, align 8
  %grace_list = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp60 = alloca i64, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !1566, metadata !DIExpression()), !dbg !1981
  call void @llvm.lifetime.start.p0(i64 8, ptr %grace_list) #8, !dbg !1982
  call void @llvm.dbg.declare(metadata ptr %grace_list, metadata !1567, metadata !DIExpression()), !dbg !1983
  %0 = load ptr, ptr %net.addr, align 8, !dbg !1984
  %1 = load i32, ptr @grace_net_id, align 4, !dbg !1985
  %call = call ptr @net_generic(ptr noundef %0, i32 noundef %1) #9, !dbg !1986
  store ptr %call, ptr %grace_list, align 8, !dbg !1983
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #8, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1568, metadata !DIExpression()), !dbg !1987
  %2 = load ptr, ptr %grace_list, align 8, !dbg !1987
  %call1 = call i32 @list_empty(ptr noundef %2) #9, !dbg !1987
  %tobool = icmp ne i32 %call1, 0, !dbg !1987
  %lnot = xor i1 %tobool, true, !dbg !1987
  %lnot2 = xor i1 %lnot, true, !dbg !1987
  %lnot3 = xor i1 %lnot2, true, !dbg !1987
  %frombool = zext i1 %lnot3 to i8, !dbg !1987
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !1987
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #8, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1570, metadata !DIExpression()), !dbg !1988
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !1988, !range !1785, !noundef !133
  %tobool4 = trunc i8 %3 to i1, !dbg !1988
  %lnot5 = xor i1 %tobool4, true, !dbg !1988
  %lnot6 = xor i1 %lnot5, true, !dbg !1988
  %frombool7 = zext i1 %lnot6 to i8, !dbg !1988
  store i8 %frombool7, ptr %__ret_cond, align 1, !dbg !1988
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #8, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1573, metadata !DIExpression()), !dbg !1988
  store i8 0, ptr %__ret_once, align 1, !dbg !1988
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !1989, !range !1785, !noundef !133
  %tobool8 = trunc i8 %4 to i1, !dbg !1989
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !1989

land.rhs:                                         ; preds = %entry
  %5 = load i8, ptr @grace_exit_net.__already_done, align 1, !dbg !1989, !range !1785, !noundef !133
  %tobool9 = trunc i8 %5 to i1, !dbg !1989
  %lnot10 = xor i1 %tobool9, true, !dbg !1989
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %lnot10, %land.rhs ], !dbg !1991
  %lnot11 = xor i1 %6, true, !dbg !1989
  %lnot12 = xor i1 %lnot11, true, !dbg !1989
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !1989
  %conv = sext i32 %lnot.ext to i64, !dbg !1989
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1989
  %tobool13 = icmp ne i64 %expval, 0, !dbg !1989
  br i1 %tobool13, label %if.then, label %if.end, !dbg !1988

if.then:                                          ; preds = %land.end
  store i8 1, ptr @grace_exit_net.__already_done, align 1, !dbg !1992
  store i8 1, ptr %__ret_once, align 1, !dbg !1992
  br label %if.end, !dbg !1992

if.end:                                           ; preds = %if.then, %land.end
  %7 = load i8, ptr %__ret_once, align 1, !dbg !1988, !range !1785, !noundef !133
  %tobool14 = trunc i8 %7 to i1, !dbg !1988
  %lnot15 = xor i1 %tobool14, true, !dbg !1988
  %lnot17 = xor i1 %lnot15, true, !dbg !1988
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1988
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !1988
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !1988
  store i64 %expval20, ptr %tmp, align 8, !dbg !1989
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #8, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #8, !dbg !1994
  %8 = load i64, ptr %tmp, align 8, !dbg !1988
  %tobool21 = icmp ne i64 %8, 0, !dbg !1994
  br i1 %tobool21, label %if.then22, label %if.end59, !dbg !1987

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !1995
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1574, metadata !DIExpression()), !dbg !1995
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1995
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !1996
  %tobool23 = icmp ne i32 %9, 0, !dbg !1996
  %lnot24 = xor i1 %tobool23, true, !dbg !1996
  %lnot26 = xor i1 %lnot24, true, !dbg !1996
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !1996
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !1996
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !1996
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !1996
  br i1 %tobool30, label %if.then31, label %if.end50, !dbg !1995

if.then31:                                        ; preds = %if.then22
  br label %do.body, !dbg !1996

do.body:                                          ; preds = %if.then31
  br label %do.body32, !dbg !1997

do.body32:                                        ; preds = %do.body
  br label %do.cond, !dbg !1998

do.cond:                                          ; preds = %do.body32
  br label %do.end, !dbg !1998

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %net.addr, align 8, !dbg !1997
  %ns = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 15, !dbg !1997
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 2, !dbg !1997
  %11 = load i32, ptr %inum, align 16, !dbg !1997
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.4, i32 noundef %11, ptr noundef @__func__.grace_exit_net) #9, !dbg !1997
  br label %do.body33, !dbg !1997

do.body33:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1576, metadata !DIExpression()), !dbg !2000
  store i32 2313, ptr %__flags, align 4, !dbg !2000
  br label %do.body34, !dbg !2000

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !2001

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2001

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2000

do.body37:                                        ; preds = %do.end36
  %12 = load i32, ptr %__flags, align 4, !dbg !2003
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 119, i32 %12, i64 12) #8, !dbg !2003, !srcloc !2005
  br label %do.cond38, !dbg !2003

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2003

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !2000

do.body40:                                        ; preds = %do.end39
  br label %do.cond41, !dbg !2006

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2006

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !1997
  br label %do.cond43, !dbg !2000

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !2000

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !1997

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !2008

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2008

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !1997

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !1997

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !1997

if.end50:                                         ; preds = %do.end49, %if.then22
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !1995
  %tobool52 = icmp ne i32 %13, 0, !dbg !1995
  %lnot53 = xor i1 %tobool52, true, !dbg !1995
  %lnot55 = xor i1 %lnot53, true, !dbg !1995
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !1995
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !1995
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !1995
  store i64 %expval58, ptr %tmp51, align 8, !dbg !1996
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !1994
  %14 = load i64, ptr %tmp51, align 8, !dbg !1995
  br label %if.end59, !dbg !1994

if.end59:                                         ; preds = %if.end50, %if.end
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !1987, !range !1785, !noundef !133
  %tobool61 = trunc i8 %15 to i1, !dbg !1987
  %lnot62 = xor i1 %tobool61, true, !dbg !1987
  %lnot64 = xor i1 %lnot62, true, !dbg !1987
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !1987
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !1987
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !1987
  store i64 %expval67, ptr %tmp60, align 8, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #8, !dbg !2010
  %16 = load i64, ptr %tmp60, align 8, !dbg !1987
  call void @llvm.lifetime.end.p0(i64 8, ptr %grace_list) #8, !dbg !2011
  ret void, !dbg !2011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2012 dso_local i32 @register_pernet_subsys(ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!llvm.ident = !{!1598}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "grace_net_id", scope: !2, file: !3, line: 14, type: !98, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/nfs_common/.grace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/nfs_common/grace\22 -D KBUILD_BASENAME=\22grace\22 -D KBUILD_MODNAME=\22grace\22 -D __KBUILD_MODNAME=kmod_grace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/nfs_common/grace.ll fs/nfs_common/grace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !153, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/nfs_common/grace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3632d74e423d1d37ac70687965406e")
!4 = !{!5, !102}
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
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0)
!106 = !DIEnumerator(name: "true", value: 1)
!107 = !{!14, !108, !138, !141, !144, !145}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net_generic", file: !110, line: 29, size: 192, elements: !111)
!110 = !DIFile(filename: "./include/net/netns/generic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c139fd13dc8ca465d1d568375ff46904")
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !110, line: 30, baseType: !113, size: 192)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !110, line: 30, size: 192, elements: !114)
!114 = !{!115, !128}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !113, file: !110, line: 34, baseType: !116, size: 192)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !110, line: 31, size: 192, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !116, file: !110, line: 32, baseType: !98, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !116, file: !110, line: 33, baseType: !120, size: 128, align: 64, offset: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !19, line: 233, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !120, file: !19, line: 234, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !123}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 36, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !110, line: 36, elements: !130)
!130 = !{!131, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ptr", scope: !129, file: !110, line: 36, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !110, line: 36, elements: !133)
!133 = !{}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !129, file: !110, line: 36, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: -1)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager", file: !147, line: 50, size: 192, elements: !148)
!147 = !DIFile(filename: "./include/linux/filelock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "341396167365df38f75a901b3ed01a3d")
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !146, file: !147, line: 51, baseType: !91, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "block_opens", scope: !146, file: !147, line: 56, baseType: !151, size: 8, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !152)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !{!154, !159, !164, !169, !174, !176, !178, !180, !182, !187, !192, !197, !199, !0, !206, !208, !1562, !1580, !1585}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 376, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 47)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 11)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 1)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 22)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_locks_start_grace347", scope: !2, file: !3, line: 42, type: !14, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_locks_end_grace348", scope: !2, file: !3, line: 61, type: !14, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_locks_in_grace349", scope: !2, file: !3, line: 95, type: !14, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_opens_in_grace350", scope: !2, file: !3, line: 101, type: !14, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author351", scope: !2, file: !3, line: 141, type: !184, isLocal: true, isDefinition: true, align: 8)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 408, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 51)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file352", scope: !2, file: !3, line: 142, type: !189, isLocal: true, isDefinition: true, align: 8)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 248, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 31)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license353", scope: !2, file: !3, line: 142, type: !194, isLocal: true, isDefinition: true, align: 8)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 144, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 18)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_grace__354_143_init_grace6355", scope: !2, file: !3, line: 143, type: !14, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__exitcall_exit_grace", scope: !2, file: !3, line: 144, type: !201, isLocal: true, isDefinition: true)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !202, line: 120, baseType: !203)
!202 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "grace_lock", scope: !2, file: !3, line: 15, type: !53, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "grace_net_ops", scope: !2, file: !3, line: 122, type: !210, isLocal: true, isDefinition: true)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pernet_operations", file: !211, line: 426, size: 576, elements: !212)
!211 = !DIFile(filename: "./include/net/net_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9448d530239774cde6340b292589a220")
!212 = !{!213, !214, !1546, !1550, !1551, !1555, !1559, !1561}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !210, file: !211, line: 427, baseType: !91, size: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !210, file: !211, line: 450, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!16, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !211, line: 61, size: 27648, elements: !220)
!220 = !{!221, !227, !228, !229, !230, !233, !234, !235, !236, !237, !243, !244, !252, !256, !260, !274, !293, !296, !297, !298, !302, !303, !405, !409, !410, !413, !415, !416, !417, !432, !433, !437, !438, !455, !531, !548, !560, !581, !1191, !1393, !1413, !1471, !1472, !1486, !1544, !1545}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !219, file: !211, line: 65, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !223, line: 113, baseType: !224)
!223 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !223, line: 111, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !224, file: !223, line: 112, baseType: !43, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rules_mod_lock", scope: !219, file: !211, line: 68, baseType: !53, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_unreg_count", scope: !219, file: !211, line: 70, baseType: !43, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_seq", scope: !219, file: !211, line: 72, baseType: !98, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !219, file: !211, line: 73, baseType: !231, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !98)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nsid_lock", scope: !219, file: !211, line: 75, baseType: !53, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "fnhe_genid", scope: !219, file: !211, line: 76, baseType: !43, size: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !219, file: !211, line: 78, baseType: !91, size: 128, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "exit_list", scope: !219, file: !211, line: 79, baseType: !91, size: 128, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "defer_free_list", scope: !219, file: !211, line: 85, baseType: !238, size: 64, offset: 512)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !239, line: 60, size: 64, elements: !240)
!239 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !239, line: 61, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_list", scope: !219, file: !211, line: 86, baseType: !238, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "key_domain", scope: !219, file: !211, line: 89, baseType: !245, size: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !247, line: 108, size: 192, elements: !248)
!247 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!248 = !{!249, !250, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !246, file: !247, line: 109, baseType: !120, size: 128, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !246, file: !247, line: 110, baseType: !222, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !246, file: !247, line: 111, baseType: !151, size: 8, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !219, file: !211, line: 91, baseType: !253, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !255, line: 18, flags: DIFlagFwdDecl)
!255 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !219, file: !211, line: 92, baseType: !257, size: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !259, line: 16, flags: DIFlagFwdDecl)
!259 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "netns_ids", scope: !219, file: !211, line: 93, baseType: !261, size: 192, offset: 832)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !262, line: 19, size: 192, elements: !263)
!262 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!263 = !{!264, !272, !273}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !261, file: !262, line: 20, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !266, line: 296, size: 128, elements: !267)
!266 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!267 = !{!268, !269, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !265, file: !266, line: 297, baseType: !53, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !265, file: !266, line: 299, baseType: !270, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !98)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !265, file: !266, line: 300, baseType: !14, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !261, file: !262, line: 21, baseType: !98, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !261, file: !262, line: 22, baseType: !98, size: 32, offset: 160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !219, file: !211, line: 95, baseType: !275, size: 192, offset: 1024)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !276, line: 9, size: 192, elements: !277)
!276 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!277 = !{!278, !287, !291, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !275, file: !276, line: 10, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !280, line: 13, baseType: !281)
!280 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !282, file: !19, line: 180, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !275, file: !276, line: 11, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !276, line: 7, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !275, file: !276, line: 12, baseType: !98, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !275, file: !276, line: 13, baseType: !222, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt_tracker", scope: !219, file: !211, line: 96, baseType: !294, offset: 1216)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ref_tracker_dir", file: !295, line: 11, elements: !133)
!295 = !DIFile(filename: "./include/linux/ref_tracker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2430b45a012be0c6416a948c13597f4b")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "notrefcnt_tracker", scope: !219, file: !211, line: 97, baseType: !294, offset: 1216)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_head", scope: !219, file: !211, line: 100, baseType: !91, size: 128, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net", scope: !219, file: !211, line: 101, baseType: !299, size: 64, offset: 1344)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !301, line: 41, flags: DIFlagFwdDecl)
!301 = !DIFile(filename: "./include/net/netns/mib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ba22b1e9bdeaf8d7b85d4f8f9594169")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_stat", scope: !219, file: !211, line: 102, baseType: !299, size: 64, offset: 1408)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !219, file: !211, line: 105, baseType: !304, size: 768, offset: 1472)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !305)
!305 = !{!306, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !304, file: !6, line: 200, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!16, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !304, file: !6, line: 201, baseType: !312, size: 704, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !313)
!313 = !{!314, !401}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !312, file: !6, line: 195, baseType: !315, size: 640)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !316)
!316 = !{!317, !329, !342, !343, !375, !376, !378, !391}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !6, line: 174, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !6, line: 174, size: 192, elements: !319)
!319 = !{!320, !328}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !6, line: 175, baseType: !321, size: 192)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !6, line: 175, size: 192, elements: !322)
!322 = !{!323, !324, !325, !326, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !321, file: !6, line: 176, baseType: !27, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !321, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !321, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !321, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !321, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !318, file: !6, line: 182, baseType: !120, size: 128, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !315, file: !6, line: 184, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !332, line: 26, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !331, file: !332, line: 27, baseType: !98, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !331, file: !332, line: 28, baseType: !336, size: 192, offset: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !337, line: 43, size: 192, elements: !338)
!337 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !336, file: !337, line: 44, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !336, file: !337, line: 45, baseType: !91, size: 128, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !315, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !315, file: !6, line: 186, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !346)
!346 = !{!347, !348, !352, !371}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !345, file: !6, line: 205, baseType: !304, size: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !345, file: !6, line: 206, baseType: !349, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!310, !344}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !345, file: !6, line: 207, baseType: !353, size: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !357, !364}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !255, line: 23, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 21, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !255, line: 22, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !255, line: 28, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 26, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !366, file: !255, line: 27, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !345, file: !6, line: 209, baseType: !372, size: 64, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!16, !356, !27}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !315, file: !6, line: 187, baseType: !310, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !315, file: !6, line: 188, baseType: !377, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !315, file: !6, line: 189, baseType: !379, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !381)
!381 = !{!382, !390}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !380, file: !6, line: 158, baseType: !383, size: 192, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !384, line: 5, size: 192, align: 64, elements: !385)
!384 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!385 = !{!386, !387, !389}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !383, file: !384, line: 6, baseType: !33, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !383, file: !384, line: 7, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !383, file: !384, line: 8, baseType: !388, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !380, file: !6, line: 159, baseType: !356, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !315, file: !6, line: 190, baseType: !392, size: 64, offset: 576)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !392, file: !19, line: 195, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !19, line: 199, baseType: !395, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !396, file: !19, line: 199, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !312, file: !6, line: 196, baseType: !402, size: 64, offset: 640)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !384, line: 12, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !402, file: !384, line: 13, baseType: !388, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rtnl", scope: !219, file: !211, line: 108, baseType: !406, size: 64, offset: 2240)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !408, line: 19, flags: DIFlagFwdDecl)
!408 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "genl_sock", scope: !219, file: !211, line: 109, baseType: !406, size: 64, offset: 2304)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_sock", scope: !219, file: !211, line: 111, baseType: !411, size: 64, offset: 2368)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "uevent_sock", file: !211, line: 53, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name_head", scope: !219, file: !211, line: 113, baseType: !414, size: 64, offset: 2432)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index_head", scope: !219, file: !211, line: 114, baseType: !414, size: 64, offset: 2496)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dev_by_index", scope: !219, file: !211, line: 115, baseType: !265, size: 128, offset: 2560)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "netdev_chain", scope: !219, file: !211, line: 116, baseType: !418, size: 64, offset: 2688)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !419, line: 70, size: 64, elements: !420)
!419 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !418, file: !419, line: 71, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !419, line: 54, size: 192, elements: !424)
!424 = !{!425, !430, !431}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !423, file: !419, line: 55, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !419, line: 51, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!16, !422, !33, !14}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !419, line: 56, baseType: !422, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !423, file: !419, line: 57, baseType: !16, size: 32, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mix", scope: !219, file: !211, line: 121, baseType: !231, size: 32, offset: 2752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "loopback_dev", scope: !219, file: !211, line: 123, baseType: !434, size: 64, offset: 2816)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !436, line: 10, flags: DIFlagFwdDecl)
!436 = !DIFile(filename: "./include/net/dst_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ddc782c85737bd5bc289b976340e94f")
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !219, file: !211, line: 126, baseType: !91, size: 128, offset: 2880)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !219, file: !211, line: 128, baseType: !439, size: 256, offset: 3008)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_core", file: !440, line: 11, size: 256, elements: !441)
!440 = !DIFile(filename: "./include/net/netns/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18c9bedf6eb8c587f29284e442644416")
!441 = !{!442, !443, !444, !445, !448}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !439, file: !440, line: 13, baseType: !356, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_somaxconn", scope: !439, file: !440, line: 15, baseType: !16, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_txrehash", scope: !439, file: !440, line: 16, baseType: !77, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prot_inuse", scope: !439, file: !440, line: 19, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "prot_inuse", file: !440, line: 8, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rps_default_mask", scope: !439, file: !440, line: 23, baseType: !449, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !451, line: 19, size: 64, elements: !452)
!451 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !450, file: !451, line: 19, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !167)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mib", scope: !219, file: !211, line: 129, baseType: !456, size: 832, offset: 3264)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_mib", file: !301, line: 7, size: 832, elements: !457)
!457 = !{!458, !473, !474, !482, !490, !498, !499, !500, !501, !509, !517, !525, !530}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ip_statistics", scope: !456, file: !301, line: 8, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipstats_mib", file: !461, line: 51, size: 2432, elements: !462)
!461 = !DIFile(filename: "./include/net/snmp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4e66422a0c08c32beca5964652b5d9b")
!462 = !{!463, !470}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !460, file: !461, line: 53, baseType: !464, size: 2432)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 2432, elements: !468)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !467)
!467 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!468 = !{!469}
!469 = !DISubrange(count: 38)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !460, file: !461, line: 54, baseType: !471, offset: 2432)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !472, line: 64, elements: !133)
!472 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_statistics", scope: !456, file: !301, line: 10, baseType: !459, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_statistics", scope: !456, file: !301, line: 13, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_mib", file: !461, line: 92, size: 1024, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !476, file: !461, line: 93, baseType: !479, size: 1024)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "net_statistics", scope: !456, file: !301, line: 14, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_mib", file: !461, line: 104, size: 8128, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !484, file: !461, line: 105, baseType: !487, size: 8128)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8128, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 127)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "udp_statistics", scope: !456, file: !301, line: 16, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_mib", file: !461, line: 98, size: 640, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !492, file: !461, line: 99, baseType: !495, size: 640)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 10)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "udp_stats_in6", scope: !456, file: !301, line: 18, baseType: !491, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_statistics", scope: !456, file: !301, line: 31, baseType: !491, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_stats_in6", scope: !456, file: !301, line: 33, baseType: !491, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_statistics", scope: !456, file: !301, line: 36, baseType: !502, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp_mib", file: !461, line: 59, size: 1920, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !503, file: !461, line: 60, baseType: !506, size: 1920)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1920, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 30)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "icmpmsg_statistics", scope: !456, file: !301, line: 37, baseType: !510, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpmsg_mib", file: !461, line: 64, size: 32768, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !511, file: !461, line: 65, baseType: !514, size: 32768)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 32768, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_statistics", scope: !456, file: !301, line: 39, baseType: !518, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_mib", file: !461, line: 71, size: 448, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !519, file: !461, line: 72, baseType: !522, size: 448)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 448, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 7)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6msg_statistics", scope: !456, file: !301, line: 40, baseType: !526, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6msg_mib", file: !461, line: 81, size: 32768, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !527, file: !461, line: 82, baseType: !514, size: 32768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_devsnmp6", scope: !456, file: !301, line: 41, baseType: !299, size: 64, offset: 768)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !219, file: !211, line: 130, baseType: !532, size: 320, offset: 4096)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_packet", file: !533, line: 11, size: 320, elements: !534)
!533 = !DIFile(filename: "./include/net/netns/packet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9993c7d0edda08e4a61acc9b7e9bef6b")
!534 = !{!535, !547}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sklist_lock", scope: !532, file: !533, line: 12, baseType: !536, size: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !537, line: 66, size: 256, elements: !538)
!537 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!538 = !{!539, !540, !541, !546}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !536, file: !537, line: 67, baseType: !279, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !536, file: !537, line: 68, baseType: !340, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !536, file: !537, line: 70, baseType: !542, size: 32, offset: 96)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !543, line: 15, size: 32, elements: !544)
!543 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !542, file: !543, line: 20, baseType: !43, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !536, file: !537, line: 72, baseType: !91, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sklist", scope: !532, file: !533, line: 13, baseType: !392, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !219, file: !211, line: 132, baseType: !549, size: 256, offset: 4416)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_unix", file: !550, line: 16, size: 256, elements: !551)
!550 = !DIFile(filename: "./include/net/netns/unix.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9b0a0c994514b5bcede3924402949afb")
!551 = !{!552, !558, !559}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !549, file: !550, line: 17, baseType: !553, size: 128)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unix_table", file: !550, line: 10, size: 128, elements: !554)
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !553, file: !550, line: 11, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !553, file: !550, line: 12, baseType: !414, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_dgram_qlen", scope: !549, file: !550, line: 18, baseType: !16, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !549, file: !550, line: 19, baseType: !356, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nexthop", scope: !219, file: !211, line: 134, baseType: !561, size: 576, offset: 4672)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nexthop", file: !562, line: 12, size: 576, elements: !563)
!562 = !DIFile(filename: "./include/net/netns/nexthop.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9226e726e069a329f5fede8d471a5b93")
!563 = !{!564, !565, !566, !567, !568}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !562, line: 13, baseType: !402, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "devhash", scope: !561, file: !562, line: 14, baseType: !414, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !561, file: !562, line: 16, baseType: !98, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_allocated", scope: !561, file: !562, line: 17, baseType: !231, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_chain", scope: !561, file: !562, line: 18, baseType: !569, size: 384, offset: 192)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !419, line: 65, size: 384, elements: !570)
!570 = !{!571, !580}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !569, file: !419, line: 66, baseType: !572, size: 320)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !573, line: 48, size: 320, elements: !574)
!573 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!574 = !{!575, !576, !577, !578, !579}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !573, line: 49, baseType: !279, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !572, file: !573, line: 55, baseType: !279, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !572, file: !573, line: 57, baseType: !542, size: 32, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !572, file: !573, line: 59, baseType: !340, size: 32, offset: 160)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !572, file: !573, line: 60, baseType: !91, size: 128, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !569, file: !419, line: 67, baseType: !422, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !219, file: !211, line: 135, baseType: !582, size: 5632, offset: 5632)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv4", file: !583, line: 44, size: 5632, elements: !584)
!583 = !DIFile(filename: "./include/net/netns/ipv4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "984d85e204c6d0b56270eed465b5c766")
!584 = !{!585, !593, !596, !597, !598, !599, !600, !601, !604, !605, !608, !609, !612, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !627, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1139, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1166, !1167, !1168, !1170, !1171, !1174, !1175, !1176, !1177, !1180, !1181, !1182, !1183, !1184}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_death_row", scope: !582, file: !583, line: 45, baseType: !586, size: 1024)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_timewait_death_row", file: !583, line: 34, size: 1024, elements: !587)
!587 = !{!588, !589, !592}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tw_refcount", scope: !586, file: !583, line: 35, baseType: !222, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "hashinfo", scope: !586, file: !583, line: 38, baseType: !590, size: 64, align: 512, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_hashinfo", file: !583, line: 32, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_tw_buckets", scope: !586, file: !583, line: 39, baseType: !16, size: 32, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "udp_table", scope: !582, file: !583, line: 46, baseType: !594, size: 64, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "udp_table", file: !583, line: 46, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "forw_hdr", scope: !582, file: !583, line: 49, baseType: !356, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !582, file: !583, line: 50, baseType: !356, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_hdr", scope: !582, file: !583, line: 51, baseType: !356, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !582, file: !583, line: 52, baseType: !356, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_hdr", scope: !582, file: !583, line: 53, baseType: !356, size: 64, offset: 1344)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !582, file: !583, line: 55, baseType: !602, size: 64, offset: 1408)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_devconf", file: !583, line: 16, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !582, file: !583, line: 56, baseType: !602, size: 64, offset: 1472)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ra_chain", scope: !582, file: !583, line: 57, baseType: !606, size: 64, offset: 1536)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "ip_ra_chain", file: !583, line: 57, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ra_mutex", scope: !582, file: !583, line: 58, baseType: !536, size: 256, offset: 1600)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !582, file: !583, line: 60, baseType: !610, size: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_rules_ops", file: !583, line: 17, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "fib_main", scope: !582, file: !583, line: 61, baseType: !613, size: 64, offset: 1920)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_table", file: !583, line: 19, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fib_default", scope: !582, file: !583, line: 62, baseType: !613, size: 64, offset: 1984)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fib_rules_require_fldissect", scope: !582, file: !583, line: 63, baseType: !98, size: 32, offset: 2048)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_rules", scope: !582, file: !583, line: 64, baseType: !151, size: 8, offset: 2080)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_local_routes", scope: !582, file: !583, line: 66, baseType: !151, size: 8, offset: 2088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fib_offload_disabled", scope: !582, file: !583, line: 67, baseType: !151, size: 8, offset: 2096)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_shrink_window", scope: !582, file: !583, line: 68, baseType: !77, size: 8, offset: 2104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !582, file: !583, line: 72, baseType: !414, size: 64, offset: 2112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fibnl", scope: !582, file: !583, line: 73, baseType: !406, size: 64, offset: 2176)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !582, file: !583, line: 75, baseType: !406, size: 64, offset: 2240)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !582, file: !583, line: 77, baseType: !625, size: 64, offset: 2304)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_peer_base", file: !583, line: 77, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !582, file: !583, line: 78, baseType: !628, size: 64, offset: 2368)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fqdir", file: !630, line: 13, size: 2560, elements: !631)
!630 = !DIFile(filename: "./include/net/inet_frag.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0fbce9165be02acf2490f91012eb3f9")
!631 = !{!632, !634, !635, !636, !637, !1018, !1019, !1020, !1021, !1022, !1023}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "high_thresh", scope: !629, file: !630, line: 15, baseType: !633, size: 64)
!633 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "low_thresh", scope: !629, file: !630, line: 16, baseType: !633, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !629, file: !630, line: 17, baseType: !16, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "max_dist", scope: !629, file: !630, line: 18, baseType: !16, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !629, file: !630, line: 19, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frags", file: !630, line: 107, size: 1024, elements: !640)
!640 = !{!641, !642, !955, !959, !960, !963, !964, !1016, !1017}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !639, file: !630, line: 108, baseType: !98, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !639, file: !630, line: 110, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !646, !953}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frag_queue", file: !630, line: 85, size: 1408, elements: !648)
!648 = !{!649, !655, !694, !706, !707, !708, !709, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !630, line: 86, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !651, line: 17, size: 64, elements: !652)
!651 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !651, line: 18, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !647, file: !630, line: 90, baseType: !656, size: 352, offset: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !630, line: 87, size: 352, elements: !657)
!657 = !{!658, !670}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !656, file: !630, line: 88, baseType: !659, size: 160)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v4_compare_key", file: !630, line: 48, size: 160, elements: !660)
!660 = !{!661, !664, !665, !666, !667, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !659, file: !630, line: 49, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !663, line: 39, baseType: !232)
!663 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !659, file: !630, line: 50, baseType: !662, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !659, file: !630, line: 51, baseType: !231, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !659, file: !630, line: 52, baseType: !231, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !659, file: !630, line: 53, baseType: !668, size: 16, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !663, line: 37, baseType: !88)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !659, file: !630, line: 54, baseType: !87, size: 16, offset: 144)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !656, file: !630, line: 89, baseType: !671, size: 352)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v6_compare_key", file: !630, line: 57, size: 352, elements: !672)
!672 = !{!673, !690, !691, !692, !693}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !671, file: !630, line: 58, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !675, line: 33, size: 128, elements: !676)
!675 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !674, file: !675, line: 40, baseType: !678, size: 128)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 34, size: 128, elements: !679)
!679 = !{!680, !682, !686}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !678, file: !675, line: 35, baseType: !681, size: 128)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !480)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !678, file: !675, line: 37, baseType: !683, size: 128)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 128, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 8)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !678, file: !675, line: 38, baseType: !687, size: 128)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 128, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 4)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !671, file: !630, line: 59, baseType: !674, size: 128, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !671, file: !630, line: 60, baseType: !231, size: 32, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !671, file: !630, line: 61, baseType: !662, size: 32, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "iif", scope: !671, file: !630, line: 62, baseType: !231, size: 32, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !647, file: !630, line: 91, baseType: !695, size: 320, offset: 448)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !696, line: 11, size: 320, elements: !697)
!696 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!697 = !{!698, !699, !700, !705}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !695, file: !696, line: 16, baseType: !396, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !695, file: !696, line: 17, baseType: !33, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !695, file: !696, line: 18, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !696, line: 19, baseType: !231, size: 32, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !647, file: !630, line: 92, baseType: !53, size: 32, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !647, file: !630, line: 93, baseType: !222, size: 32, offset: 800)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_fragments", scope: !647, file: !630, line: 94, baseType: !402, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fragments_tail", scope: !647, file: !630, line: 95, baseType: !710, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !712, line: 840, size: 1792, elements: !713)
!712 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!713 = !{!714, !730, !731, !738, !742, !754, !755, !756, !757, !758, !759, !760, !764, !765, !766, !767, !768, !769, !770, !771, !772, !926, !928, !929, !931, !932, !933, !934}
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 841, baseType: !715, size: 192)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 841, size: 192, elements: !716)
!716 = !{!717, !727, !728, !729}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !712, line: 842, baseType: !718, size: 192)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !712, line: 842, size: 192, elements: !719)
!719 = !{!720, !721, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !712, line: 844, baseType: !710, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !718, file: !712, line: 845, baseType: !710, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !712, line: 847, baseType: !723, size: 64, offset: 128)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !712, line: 847, size: 64, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !723, file: !712, line: 848, baseType: !434, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !723, file: !712, line: 853, baseType: !33, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !715, file: !712, line: 856, baseType: !383, size: 192, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !715, file: !712, line: 857, baseType: !91, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !715, file: !712, line: 858, baseType: !238, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !711, file: !712, line: 861, baseType: !406, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 863, baseType: !732, size: 64, offset: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 863, size: 64, elements: !733)
!733 = !{!734, !737}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !732, file: !712, line: 864, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !736, line: 29, baseType: !285)
!736 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !732, file: !712, line: 865, baseType: !465, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !711, file: !712, line: 873, baseType: !739, size: 384, align: 64, offset: 320)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 384, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 48)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 875, baseType: !743, size: 128, offset: 704)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 875, size: 128, elements: !744)
!744 = !{!745, !753}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !712, line: 876, baseType: !746, size: 128)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !712, line: 876, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !746, file: !712, line: 877, baseType: !33, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !746, file: !712, line: 878, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !710}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !743, file: !712, line: 880, baseType: !91, size: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !711, file: !712, line: 887, baseType: !33, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !711, file: !712, line: 889, baseType: !98, size: 32, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !711, file: !712, line: 890, baseType: !98, size: 32, offset: 928)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !711, file: !712, line: 891, baseType: !88, size: 16, offset: 960)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !711, file: !712, line: 892, baseType: !88, size: 16, offset: 976)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !711, file: !712, line: 897, baseType: !88, size: 16, offset: 992)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !711, file: !712, line: 908, baseType: !761, offset: 1008)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !711, file: !712, line: 910, baseType: !79, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !711, file: !712, line: 911, baseType: !79, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !711, file: !712, line: 912, baseType: !79, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !711, file: !712, line: 913, baseType: !79, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !711, file: !712, line: 914, baseType: !79, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !711, file: !712, line: 915, baseType: !79, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !711, file: !712, line: 916, baseType: !79, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !711, file: !712, line: 918, baseType: !79, size: 8, offset: 1016)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 924, baseType: !773, size: 448, offset: 1024)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 924, size: 448, elements: !774)
!774 = !{!775, !851}
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !712, line: 924, baseType: !776, size: 448)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !712, line: 924, size: 448, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !816, !817, !818, !819, !828, !833, !834, !839, !844, !845, !846, !847, !848, !849, !850}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !776, file: !712, line: 924, baseType: !761)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !776, file: !712, line: 924, baseType: !79, size: 3, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !776, file: !712, line: 924, baseType: !79, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !776, file: !712, line: 924, baseType: !761, offset: 8)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !776, file: !712, line: 924, baseType: !79, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !776, file: !712, line: 924, baseType: !79, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !776, file: !712, line: 924, baseType: !79, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !776, file: !712, line: 924, baseType: !87, size: 16, offset: 48)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !712, line: 924, baseType: !807, size: 32, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !712, line: 924, size: 32, elements: !808)
!808 = !{!809, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !807, file: !712, line: 924, baseType: !810, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !663, line: 44, baseType: !232)
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !712, line: 924, baseType: !812, size: 32)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !712, line: 924, size: 32, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !812, file: !712, line: 924, baseType: !88, size: 16)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !812, file: !712, line: 924, baseType: !88, size: 16, offset: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !776, file: !712, line: 924, baseType: !232, size: 32, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !776, file: !712, line: 924, baseType: !16, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !776, file: !712, line: 924, baseType: !232, size: 32, offset: 160)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !712, line: 924, baseType: !820, size: 32, offset: 192)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !712, line: 924, size: 32, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !820, file: !712, line: 924, baseType: !231, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !712, line: 924, baseType: !824, size: 32)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !820, file: !712, line: 924, size: 32, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !824, file: !712, line: 924, baseType: !668, size: 16)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !824, file: !712, line: 924, baseType: !88, size: 16, offset: 16)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !712, line: 924, baseType: !829, size: 32, offset: 224)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !712, line: 924, size: 32, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !829, file: !712, line: 924, baseType: !98, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !829, file: !712, line: 924, baseType: !98, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !776, file: !712, line: 924, baseType: !232, size: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !712, line: 924, baseType: !835, size: 32, offset: 288)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !712, line: 924, size: 32, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !835, file: !712, line: 924, baseType: !232, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !835, file: !712, line: 924, baseType: !232, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !712, line: 924, baseType: !840, size: 16, offset: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !712, line: 924, size: 16, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !840, file: !712, line: 924, baseType: !668, size: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !840, file: !712, line: 924, baseType: !79, size: 8)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 336)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 352)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 368)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !776, file: !712, line: 924, baseType: !668, size: 16, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 400)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 416)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !776, file: !712, line: 924, baseType: !88, size: 16, offset: 432)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !773, file: !712, line: 924, baseType: !852, size: 448)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !712, line: 924, size: 448, elements: !853)
!853 = !{!854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !891, !892, !893, !894, !903, !908, !909, !914, !919, !920, !921, !922, !923, !924, !925}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !852, file: !712, line: 924, baseType: !761)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !852, file: !712, line: 924, baseType: !79, size: 3, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !852, file: !712, line: 924, baseType: !79, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !852, file: !712, line: 924, baseType: !761, offset: 8)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !852, file: !712, line: 924, baseType: !79, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !852, file: !712, line: 924, baseType: !79, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !852, file: !712, line: 924, baseType: !79, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !852, file: !712, line: 924, baseType: !87, size: 16, offset: 48)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !712, line: 924, baseType: !883, size: 32, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !712, line: 924, size: 32, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !883, file: !712, line: 924, baseType: !810, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !712, line: 924, baseType: !887, size: 32)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !712, line: 924, size: 32, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !887, file: !712, line: 924, baseType: !88, size: 16)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !887, file: !712, line: 924, baseType: !88, size: 16, offset: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !852, file: !712, line: 924, baseType: !232, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !852, file: !712, line: 924, baseType: !16, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !852, file: !712, line: 924, baseType: !232, size: 32, offset: 160)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !712, line: 924, baseType: !895, size: 32, offset: 192)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !712, line: 924, size: 32, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !895, file: !712, line: 924, baseType: !231, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !712, line: 924, baseType: !899, size: 32)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !712, line: 924, size: 32, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !899, file: !712, line: 924, baseType: !668, size: 16)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !899, file: !712, line: 924, baseType: !88, size: 16, offset: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !712, line: 924, baseType: !904, size: 32, offset: 224)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !712, line: 924, size: 32, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !904, file: !712, line: 924, baseType: !98, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !904, file: !712, line: 924, baseType: !98, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !852, file: !712, line: 924, baseType: !232, size: 32, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !712, line: 924, baseType: !910, size: 32, offset: 288)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !712, line: 924, size: 32, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !910, file: !712, line: 924, baseType: !232, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !910, file: !712, line: 924, baseType: !232, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !712, line: 924, baseType: !915, size: 16, offset: 320)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !712, line: 924, size: 16, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !915, file: !712, line: 924, baseType: !668, size: 16)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !915, file: !712, line: 924, baseType: !79, size: 8)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 336)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 352)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 368)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !852, file: !712, line: 924, baseType: !668, size: 16, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 400)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 416)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !852, file: !712, line: 924, baseType: !88, size: 16, offset: 432)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !711, file: !712, line: 1047, baseType: !927, size: 32, offset: 1472)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !712, line: 683, baseType: !98)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !711, file: !712, line: 1048, baseType: !927, size: 32, offset: 1504)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !711, file: !712, line: 1049, baseType: !930, size: 64, offset: 1536)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !711, file: !712, line: 1050, baseType: !930, size: 64, offset: 1600)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !711, file: !712, line: 1051, baseType: !98, size: 32, offset: 1664)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !711, file: !712, line: 1052, baseType: !222, size: 32, offset: 1696)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !711, file: !712, line: 1056, baseType: !935, size: 64, offset: 1728)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !712, line: 4679, size: 64, elements: !937)
!937 = !{!938, !939, !941, !942}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !936, file: !712, line: 4680, baseType: !222, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !936, file: !712, line: 4681, baseType: !940, size: 8, offset: 32)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8, elements: !167)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !936, file: !712, line: 4682, baseType: !77, size: 8, offset: 40)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !936, file: !712, line: 4683, baseType: !943, align: 64, offset: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !136)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "last_run_head", scope: !647, file: !630, line: 96, baseType: !710, size: 64, offset: 960)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !647, file: !630, line: 97, baseType: !735, size: 64, offset: 1024)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !647, file: !630, line: 98, baseType: !16, size: 32, offset: 1088)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "meat", scope: !647, file: !630, line: 99, baseType: !16, size: 32, offset: 1120)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !647, file: !630, line: 100, baseType: !77, size: 8, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !630, line: 101, baseType: !79, size: 8, offset: 1160)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !647, file: !630, line: 102, baseType: !87, size: 16, offset: 1168)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !647, file: !630, line: 103, baseType: !628, size: 64, offset: 1216)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !647, file: !630, line: 104, baseType: !120, size: 128, align: 64, offset: 1280)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !639, file: !630, line: 112, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !646}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "frag_expire", scope: !639, file: !630, line: 113, baseType: !701, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cachep", scope: !639, file: !630, line: 114, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !630, line: 114, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cache_name", scope: !639, file: !630, line: 115, baseType: !10, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rhash_params", scope: !639, file: !630, line: 116, baseType: !965, size: 320, offset: 384)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !651, line: 56, size: 320, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !979, !981}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !965, file: !651, line: 57, baseType: !87, size: 16)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !965, file: !651, line: 58, baseType: !87, size: 16, offset: 16)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !965, file: !651, line: 59, baseType: !87, size: 16, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !965, file: !651, line: 60, baseType: !87, size: 16, offset: 48)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !965, file: !651, line: 61, baseType: !98, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !965, file: !651, line: 62, baseType: !87, size: 16, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !965, file: !651, line: 63, baseType: !151, size: 8, offset: 112)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !965, file: !651, line: 64, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !651, line: 38, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!231, !953, !231, !231}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !965, file: !651, line: 65, baseType: !980, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !651, line: 39, baseType: !976)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !965, file: !651, line: 66, baseType: !982, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !651, line: 40, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!16, !986, !953}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !651, line: 33, size: 128, elements: !988)
!988 = !{!989, !1015}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !987, file: !651, line: 34, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !651, line: 81, size: 1088, elements: !992)
!992 = !{!993, !996, !997, !998, !999, !1000, !1012, !1013, !1014}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !991, file: !651, line: 82, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !651, line: 26, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !991, file: !651, line: 83, baseType: !98, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !991, file: !651, line: 84, baseType: !98, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !991, file: !651, line: 85, baseType: !965, size: 320, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !991, file: !651, line: 86, baseType: !151, size: 8, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !991, file: !651, line: 87, baseType: !1001, size: 256, offset: 512)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1002, line: 98, size: 256, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1001, file: !1002, line: 99, baseType: !279, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1001, file: !1002, line: 100, baseType: !91, size: 128, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1001, file: !1002, line: 101, baseType: !1007, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1002, line: 21, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !991, file: !651, line: 88, baseType: !536, size: 256, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !991, file: !651, line: 89, baseType: !53, size: 32, offset: 1024)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !991, file: !651, line: 90, baseType: !43, size: 32, offset: 1056)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !987, file: !651, line: 35, baseType: !953, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !639, file: !630, line: 117, baseType: !222, size: 32, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !639, file: !630, line: 118, baseType: !331, size: 256, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !629, file: !630, line: 20, baseType: !218, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !629, file: !630, line: 21, baseType: !151, size: 8, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rhashtable", scope: !629, file: !630, line: 23, baseType: !991, size: 1088, align: 512, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !629, file: !630, line: 26, baseType: !279, size: 64, align: 512, offset: 2048)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !629, file: !630, line: 27, baseType: !1001, size: 256, offset: 2112)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !629, file: !630, line: 28, baseType: !238, size: 64, offset: 2368)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_all", scope: !582, file: !583, line: 80, baseType: !77, size: 8, offset: 2432)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_enable_probe", scope: !582, file: !583, line: 81, baseType: !77, size: 8, offset: 2440)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_broadcasts", scope: !582, file: !583, line: 82, baseType: !77, size: 8, offset: 2448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ignore_bogus_error_responses", scope: !582, file: !583, line: 83, baseType: !77, size: 8, offset: 2456)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_errors_use_inbound_ifaddr", scope: !582, file: !583, line: 84, baseType: !77, size: 8, offset: 2464)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratelimit", scope: !582, file: !583, line: 85, baseType: !16, size: 32, offset: 2496)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratemask", scope: !582, file: !583, line: 86, baseType: !16, size: 32, offset: 2528)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_pmtu", scope: !582, file: !583, line: 88, baseType: !231, size: 32, offset: 2560)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_mtu_expires", scope: !582, file: !583, line: 89, baseType: !16, size: 32, offset: 2592)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_advmss", scope: !582, file: !583, line: 90, baseType: !16, size: 32, offset: 2624)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ip_local_ports", scope: !582, file: !583, line: 92, baseType: !1035, size: 160, offset: 2656)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "local_ports", file: !583, line: 21, size: 160, elements: !1036)
!1036 = !{!1037, !1052, !1056}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1035, file: !583, line: 22, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1039, line: 860, baseType: !1040)
!1039 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 853, size: 64, elements: !1041)
!1041 = !{!1042, !1051}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1040, file: !1039, line: 858, baseType: !1043, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1039, line: 275, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1039, line: 275, size: 32, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1044, file: !1039, line: 275, baseType: !1047, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1039, line: 69, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1039, line: 64, size: 32, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1048, file: !1039, line: 65, baseType: !98, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1039, line: 859, baseType: !53, size: 32, offset: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1035, file: !583, line: 23, baseType: !1053, size: 64, offset: 64)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 2)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "warned", scope: !1035, file: !583, line: 24, baseType: !151, size: 8, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn", scope: !582, file: !583, line: 94, baseType: !77, size: 8, offset: 2816)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn_fallback", scope: !582, file: !583, line: 95, baseType: !77, size: 8, offset: 2824)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_default_ttl", scope: !582, file: !583, line: 97, baseType: !77, size: 8, offset: 2832)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_no_pmtu_disc", scope: !582, file: !583, line: 98, baseType: !77, size: 8, offset: 2840)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_use_pmtu", scope: !582, file: !583, line: 99, baseType: !77, size: 8, offset: 2848)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_update_priority", scope: !582, file: !583, line: 100, baseType: !77, size: 8, offset: 2856)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_nonlocal_bind", scope: !582, file: !583, line: 101, baseType: !77, size: 8, offset: 2864)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_autobind_reuse", scope: !582, file: !583, line: 102, baseType: !77, size: 8, offset: 2872)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_dynaddr", scope: !582, file: !583, line: 104, baseType: !77, size: 8, offset: 2880)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_early_demux", scope: !582, file: !583, line: 105, baseType: !77, size: 8, offset: 2888)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_demux", scope: !582, file: !583, line: 109, baseType: !77, size: 8, offset: 2896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_early_demux", scope: !582, file: !583, line: 110, baseType: !77, size: 8, offset: 2904)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_nexthop_compat_mode", scope: !582, file: !583, line: 112, baseType: !77, size: 8, offset: 2912)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fwmark_reflect", scope: !582, file: !583, line: 114, baseType: !77, size: 8, offset: 2920)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fwmark_accept", scope: !582, file: !583, line: 115, baseType: !77, size: 8, offset: 2928)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probing", scope: !582, file: !583, line: 119, baseType: !77, size: 8, offset: 2936)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probe_floor", scope: !582, file: !583, line: 120, baseType: !16, size: 32, offset: 2944)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_base_mss", scope: !582, file: !583, line: 121, baseType: !16, size: 32, offset: 2976)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_snd_mss", scope: !582, file: !583, line: 122, baseType: !16, size: 32, offset: 3008)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_threshold", scope: !582, file: !583, line: 123, baseType: !16, size: 32, offset: 3040)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_interval", scope: !582, file: !583, line: 124, baseType: !231, size: 32, offset: 3072)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_time", scope: !582, file: !583, line: 126, baseType: !16, size: 32, offset: 3104)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_intvl", scope: !582, file: !583, line: 127, baseType: !16, size: 32, offset: 3136)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_probes", scope: !582, file: !583, line: 128, baseType: !77, size: 8, offset: 3168)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_retries", scope: !582, file: !583, line: 130, baseType: !77, size: 8, offset: 3176)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_synack_retries", scope: !582, file: !583, line: 131, baseType: !77, size: 8, offset: 3184)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syncookies", scope: !582, file: !583, line: 132, baseType: !77, size: 8, offset: 3192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_migrate_req", scope: !582, file: !583, line: 133, baseType: !77, size: 8, offset: 3200)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_nr", scope: !582, file: !583, line: 134, baseType: !77, size: 8, offset: 3208)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reordering", scope: !582, file: !583, line: 135, baseType: !16, size: 32, offset: 3232)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries1", scope: !582, file: !583, line: 136, baseType: !77, size: 8, offset: 3264)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries2", scope: !582, file: !583, line: 137, baseType: !77, size: 8, offset: 3272)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_orphan_retries", scope: !582, file: !583, line: 138, baseType: !77, size: 8, offset: 3280)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tw_reuse", scope: !582, file: !583, line: 139, baseType: !77, size: 8, offset: 3288)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fin_timeout", scope: !582, file: !583, line: 140, baseType: !16, size: 32, offset: 3296)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_notsent_lowat", scope: !582, file: !583, line: 141, baseType: !98, size: 32, offset: 3328)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_sack", scope: !582, file: !583, line: 142, baseType: !77, size: 8, offset: 3360)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_window_scaling", scope: !582, file: !583, line: 143, baseType: !77, size: 8, offset: 3368)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_timestamps", scope: !582, file: !583, line: 144, baseType: !77, size: 8, offset: 3376)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_retrans", scope: !582, file: !583, line: 145, baseType: !77, size: 8, offset: 3384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_recovery", scope: !582, file: !583, line: 146, baseType: !77, size: 8, offset: 3392)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_thin_linear_timeouts", scope: !582, file: !583, line: 147, baseType: !77, size: 8, offset: 3400)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_slow_start_after_idle", scope: !582, file: !583, line: 148, baseType: !77, size: 8, offset: 3408)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retrans_collapse", scope: !582, file: !583, line: 149, baseType: !77, size: 8, offset: 3416)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_stdurg", scope: !582, file: !583, line: 150, baseType: !77, size: 8, offset: 3424)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rfc1337", scope: !582, file: !583, line: 151, baseType: !77, size: 8, offset: 3432)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_abort_on_overflow", scope: !582, file: !583, line: 152, baseType: !77, size: 8, offset: 3440)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fack", scope: !582, file: !583, line: 153, baseType: !77, size: 8, offset: 3448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_max_reordering", scope: !582, file: !583, line: 154, baseType: !16, size: 32, offset: 3456)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_adv_win_scale", scope: !582, file: !583, line: 155, baseType: !16, size: 32, offset: 3488)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_dsack", scope: !582, file: !583, line: 156, baseType: !77, size: 8, offset: 3520)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_app_win", scope: !582, file: !583, line: 157, baseType: !77, size: 8, offset: 3528)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_frto", scope: !582, file: !583, line: 158, baseType: !77, size: 8, offset: 3536)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_nometrics_save", scope: !582, file: !583, line: 159, baseType: !77, size: 8, offset: 3544)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_no_ssthresh_metrics_save", scope: !582, file: !583, line: 160, baseType: !77, size: 8, offset: 3552)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_moderate_rcvbuf", scope: !582, file: !583, line: 161, baseType: !77, size: 8, offset: 3560)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_win_divisor", scope: !582, file: !583, line: 162, baseType: !77, size: 8, offset: 3568)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_workaround_signed_windows", scope: !582, file: !583, line: 163, baseType: !77, size: 8, offset: 3576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_limit_output_bytes", scope: !582, file: !583, line: 164, baseType: !16, size: 32, offset: 3584)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_challenge_ack_limit", scope: !582, file: !583, line: 165, baseType: !16, size: 32, offset: 3616)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_rtt_wlen", scope: !582, file: !583, line: 166, baseType: !16, size: 32, offset: 3648)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_tso_segs", scope: !582, file: !583, line: 167, baseType: !77, size: 8, offset: 3680)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_rtt_log", scope: !582, file: !583, line: 168, baseType: !77, size: 8, offset: 3688)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_autocorking", scope: !582, file: !583, line: 169, baseType: !77, size: 8, offset: 3696)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reflect_tos", scope: !582, file: !583, line: 170, baseType: !77, size: 8, offset: 3704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_invalid_ratelimit", scope: !582, file: !583, line: 171, baseType: !16, size: 32, offset: 3712)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ss_ratio", scope: !582, file: !583, line: 172, baseType: !16, size: 32, offset: 3744)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ca_ratio", scope: !582, file: !583, line: 173, baseType: !16, size: 32, offset: 3776)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_wmem", scope: !582, file: !583, line: 174, baseType: !1126, size: 96, offset: 3808)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 96, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 3)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rmem", scope: !582, file: !583, line: 175, baseType: !1126, size: 96, offset: 3904)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_child_ehash_entries", scope: !582, file: !583, line: 176, baseType: !98, size: 32, offset: 4000)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_delay_ns", scope: !582, file: !583, line: 177, baseType: !33, size: 64, offset: 4032)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_slack_ns", scope: !582, file: !583, line: 178, baseType: !33, size: 64, offset: 4096)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_syn_backlog", scope: !582, file: !583, line: 179, baseType: !16, size: 32, offset: 4160)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen", scope: !582, file: !583, line: 180, baseType: !16, size: 32, offset: 4192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_congestion_control", scope: !582, file: !583, line: 181, baseType: !1136, size: 64, offset: 4224)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_congestion_ops", file: !583, line: 181, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fastopen_ctx", scope: !582, file: !583, line: 182, baseType: !1140, size: 64, offset: 4288)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_fastopen_context", file: !583, line: 42, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen_blackhole_timeout", scope: !582, file: !583, line: 183, baseType: !98, size: 32, offset: 4352)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_times", scope: !582, file: !583, line: 184, baseType: !43, size: 32, offset: 4384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_stamp", scope: !582, file: !583, line: 185, baseType: !33, size: 64, offset: 4416)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_timestamp", scope: !582, file: !583, line: 186, baseType: !231, size: 32, offset: 4480)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_count", scope: !582, file: !583, line: 187, baseType: !231, size: 32, offset: 4512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_enabled", scope: !582, file: !583, line: 188, baseType: !77, size: 8, offset: 4544)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_idle_rehash_rounds", scope: !582, file: !583, line: 189, baseType: !77, size: 8, offset: 4552)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_rehash_rounds", scope: !582, file: !583, line: 190, baseType: !77, size: 8, offset: 4560)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_suspend_rto_sec", scope: !582, file: !583, line: 191, baseType: !77, size: 8, offset: 4568)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_cong_thresh", scope: !582, file: !583, line: 192, baseType: !16, size: 32, offset: 4576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_wmem_min", scope: !582, file: !583, line: 194, baseType: !16, size: 32, offset: 4608)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_rmem_min", scope: !582, file: !583, line: 195, baseType: !16, size: 32, offset: 4640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_notify_on_flag_change", scope: !582, file: !583, line: 197, baseType: !77, size: 8, offset: 4672)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_linear_timeouts", scope: !582, file: !583, line: 198, baseType: !77, size: 8, offset: 4680)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_llm_reports", scope: !582, file: !583, line: 204, baseType: !77, size: 8, offset: 4688)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_memberships", scope: !582, file: !583, line: 205, baseType: !16, size: 32, offset: 4704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_msf", scope: !582, file: !583, line: 206, baseType: !16, size: 32, offset: 4736)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_qrv", scope: !582, file: !583, line: 207, baseType: !16, size: 32, offset: 4768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ping_group_range", scope: !582, file: !583, line: 209, baseType: !1161, size: 128, offset: 4800)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ping_group_range", file: !583, line: 27, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !583, line: 28, baseType: !1038, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1161, file: !583, line: 29, baseType: !1165, size: 64, offset: 64)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 64, elements: !1054)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !582, file: !583, line: 211, baseType: !43, size: 32, offset: 4928)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_child_hash_entries", scope: !582, file: !583, line: 213, baseType: !98, size: 32, offset: 4960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_local_reserved_ports", scope: !582, file: !583, line: 216, baseType: !1169, size: 64, offset: 4992)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_prot_sock", scope: !582, file: !583, line: 217, baseType: !16, size: 32, offset: 5056)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mrt", scope: !582, file: !583, line: 222, baseType: !1172, size: 64, offset: 5120)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "mr_table", file: !583, line: 222, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_fields", scope: !582, file: !583, line: 229, baseType: !231, size: 32, offset: 5184)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_use_neigh", scope: !582, file: !583, line: 230, baseType: !77, size: 8, offset: 5216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_policy", scope: !582, file: !583, line: 231, baseType: !77, size: 8, offset: 5224)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !582, file: !583, line: 234, baseType: !1178, size: 64, offset: 5248)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_notifier_ops", file: !583, line: 234, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fib_seq", scope: !582, file: !583, line: 235, baseType: !98, size: 32, offset: 5312)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_notifier_ops", scope: !582, file: !583, line: 237, baseType: !1178, size: 64, offset: 5376)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !582, file: !583, line: 238, baseType: !98, size: 32, offset: 5440)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rt_genid", scope: !582, file: !583, line: 240, baseType: !43, size: 32, offset: 5472)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id_key", scope: !582, file: !583, line: 241, baseType: !1185, size: 128, offset: 5504)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "siphash_key_t", file: !1186, line: 21, baseType: !1187)
!1186 = !DIFile(filename: "./include/linux/siphash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d57c3335a3ba0d593037d2e9c3d8f6e3")
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 19, size: 128, elements: !1188)
!1188 = !{!1189}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1187, file: !1186, line: 20, baseType: !1190, size: 128)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 128, elements: !1054)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !219, file: !211, line: 137, baseType: !1192, size: 6144, offset: 11264)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv6", file: !1193, line: 61, size: 6144, elements: !1194)
!1193 = !DIFile(filename: "./include/net/netns/ipv6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd307fc6de84f37ce4af8cda3288a428")
!1194 = !{!1195, !1270, !1315, !1318, !1319, !1320, !1321, !1324, !1327, !1330, !1331, !1332, !1335, !1336, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1376, !1377, !1378, !1381, !1382, !1383, !1384, !1390}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_dst_ops", scope: !1192, file: !1193, line: 63, baseType: !1196, size: 1536)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_ops", file: !436, line: 15, size: 1536, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1205, !1211, !1217, !1218, !1223, !1227, !1231, !1235, !1236, !1240, !1244, !1248, !1254, !1258, !1259}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1196, file: !436, line: 16, baseType: !20, size: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gc_thresh", scope: !1196, file: !436, line: 17, baseType: !98, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1196, file: !436, line: 19, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1196, file: !436, line: 20, baseType: !1206, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!1209, !1209, !232}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_entry", file: !436, line: 8, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "default_advmss", scope: !1196, file: !436, line: 21, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!98, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1196, file: !436, line: 22, baseType: !1212, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cow_metrics", scope: !1196, file: !436, line: 23, baseType: !1219, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222, !1209, !33}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1196, file: !436, line: 24, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1209}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ifdown", scope: !1196, file: !436, line: 25, baseType: !1228, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1209, !434}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "negative_advice", scope: !1196, file: !436, line: 27, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !406, !1209}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "link_failure", scope: !1196, file: !436, line: 28, baseType: !750, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "update_pmtu", scope: !1196, file: !436, line: 29, baseType: !1237, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1209, !406, !710, !231, !151}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "redirect", scope: !1196, file: !436, line: 32, baseType: !1241, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1209, !406, !710}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "local_out", scope: !1196, file: !436, line: 34, baseType: !1245, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!16, !218, !406, !710}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "neigh_lookup", scope: !1196, file: !436, line: 35, baseType: !1249, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1252, !1215, !710, !953}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "neighbour", file: !436, line: 35, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_neigh", scope: !1196, file: !436, line: 38, baseType: !1255, size: 64, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1215, !953}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "kmem_cachep", scope: !1196, file: !436, line: 41, baseType: !961, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pcpuc_entries", scope: !1196, file: !436, line: 43, baseType: !1260, size: 320, align: 512, offset: 1024)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1261, line: 22, size: 320, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1260, file: !1261, line: 23, baseType: !340, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1260, file: !1261, line: 24, baseType: !285, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1260, file: !1261, line: 26, baseType: !91, size: 128, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1260, file: !1261, line: 28, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !16)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !1192, file: !1193, line: 65, baseType: !1271, size: 1472, offset: 1536)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_sysctl_ipv6", file: !1193, line: 15, size: 1472, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !1271, file: !1193, line: 17, baseType: !356, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !1271, file: !1193, line: 18, baseType: !356, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_hdr", scope: !1271, file: !1193, line: 19, baseType: !356, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !1271, file: !1193, line: 20, baseType: !356, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_hdr", scope: !1271, file: !1193, line: 21, baseType: !356, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flush_delay", scope: !1271, file: !1193, line: 23, baseType: !16, size: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_max_size", scope: !1271, file: !1193, line: 24, baseType: !16, size: 32, offset: 352)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_min_interval", scope: !1271, file: !1193, line: 25, baseType: !16, size: 32, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_timeout", scope: !1271, file: !1193, line: 26, baseType: !16, size: 32, offset: 416)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_interval", scope: !1271, file: !1193, line: 27, baseType: !16, size: 32, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_elasticity", scope: !1271, file: !1193, line: 28, baseType: !16, size: 32, offset: 480)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_mtu_expires", scope: !1271, file: !1193, line: 29, baseType: !16, size: 32, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_min_advmss", scope: !1271, file: !1193, line: 30, baseType: !16, size: 32, offset: 544)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_fields", scope: !1271, file: !1193, line: 31, baseType: !231, size: 32, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_policy", scope: !1271, file: !1193, line: 32, baseType: !77, size: 8, offset: 608)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bindv6only", scope: !1271, file: !1193, line: 33, baseType: !77, size: 8, offset: 616)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_consistency", scope: !1271, file: !1193, line: 34, baseType: !77, size: 8, offset: 624)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "auto_flowlabels", scope: !1271, file: !1193, line: 35, baseType: !77, size: 8, offset: 632)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_time", scope: !1271, file: !1193, line: 36, baseType: !16, size: 32, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_all", scope: !1271, file: !1193, line: 37, baseType: !77, size: 8, offset: 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_multicast", scope: !1271, file: !1193, line: 38, baseType: !77, size: 8, offset: 680)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_anycast", scope: !1271, file: !1193, line: 39, baseType: !77, size: 8, offset: 688)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask", scope: !1271, file: !1193, line: 40, baseType: !1296, size: 256, offset: 704)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !688)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask_ptr", scope: !1271, file: !1193, line: 41, baseType: !1169, size: 64, offset: 960)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "anycast_src_echo_reply", scope: !1271, file: !1193, line: 42, baseType: !77, size: 8, offset: 1024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ip_nonlocal_bind", scope: !1271, file: !1193, line: 43, baseType: !77, size: 8, offset: 1032)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark_reflect", scope: !1271, file: !1193, line: 44, baseType: !77, size: 8, offset: 1040)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_state_ranges", scope: !1271, file: !1193, line: 45, baseType: !77, size: 8, offset: 1048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_retries", scope: !1271, file: !1193, line: 46, baseType: !16, size: 32, offset: 1056)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_delay", scope: !1271, file: !1193, line: 47, baseType: !16, size: 32, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_reflect", scope: !1271, file: !1193, line: 48, baseType: !16, size: 32, offset: 1120)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_cnt", scope: !1271, file: !1193, line: 49, baseType: !16, size: 32, offset: 1152)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_cnt", scope: !1271, file: !1193, line: 50, baseType: !16, size: 32, offset: 1184)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_len", scope: !1271, file: !1193, line: 51, baseType: !16, size: 32, offset: 1216)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_len", scope: !1271, file: !1193, line: 52, baseType: !16, size: 32, offset: 1248)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_flowlabel", scope: !1271, file: !1193, line: 53, baseType: !16, size: 32, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id", scope: !1271, file: !1193, line: 54, baseType: !231, size: 32, offset: 1312)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id_wide", scope: !1271, file: !1193, line: 55, baseType: !465, size: 64, offset: 1344)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "skip_notify_on_dev_down", scope: !1271, file: !1193, line: 56, baseType: !77, size: 8, offset: 1408)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fib_notify_on_flag_change", scope: !1271, file: !1193, line: 57, baseType: !77, size: 8, offset: 1416)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_error_anycast_as_unicast", scope: !1271, file: !1193, line: 58, baseType: !77, size: 8, offset: 1424)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !1192, file: !1193, line: 66, baseType: !1316, size: 64, offset: 3008)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_devconf", file: !1193, line: 66, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !1192, file: !1193, line: 67, baseType: !1316, size: 64, offset: 3072)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !1192, file: !1193, line: 68, baseType: !625, size: 64, offset: 3136)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !1192, file: !1193, line: 69, baseType: !628, size: 64, offset: 3200)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_null_entry", scope: !1192, file: !1193, line: 70, baseType: !1322, size: 64, offset: 3264)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_info", file: !1193, line: 70, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_null_entry", scope: !1192, file: !1193, line: 71, baseType: !1325, size: 64, offset: 3328)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_info", file: !1193, line: 71, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rt6_stats", scope: !1192, file: !1193, line: 72, baseType: !1328, size: 64, offset: 3392)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_statistics", file: !1193, line: 72, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_fib_timer", scope: !1192, file: !1193, line: 73, baseType: !695, size: 320, offset: 3456)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !1192, file: !1193, line: 74, baseType: !414, size: 64, offset: 3776)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_main_tbl", scope: !1192, file: !1193, line: 75, baseType: !1333, size: 64, offset: 3840)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_table", file: !1193, line: 75, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walkers", scope: !1192, file: !1193, line: 76, baseType: !91, size: 128, offset: 3904)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walker_lock", scope: !1192, file: !1193, line: 77, baseType: !1337, size: 64, offset: 4032)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1338, line: 34, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1338, line: 25, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1339, file: !1338, line: 26, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1343, line: 27, baseType: !1344)
!1343 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1343, line: 13, size: 64, elements: !1345)
!1345 = !{!1346, !1356}
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1343, line: 14, baseType: !1347, size: 32)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !1343, line: 14, size: 32, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1347, file: !1343, line: 15, baseType: !43, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !1343, line: 16, baseType: !1351, size: 32)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !1343, line: 16, size: 32, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1351, file: !1343, line: 18, baseType: !77, size: 8)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1351, file: !1343, line: 19, baseType: !1355, size: 24, offset: 8)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, elements: !1127)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1344, file: !1343, line: 26, baseType: !65, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_gc_lock", scope: !1192, file: !1193, line: 78, baseType: !53, size: 32, offset: 4096)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_expire", scope: !1192, file: !1193, line: 79, baseType: !43, size: 32, offset: 4128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_last_gc", scope: !1192, file: !1193, line: 80, baseType: !33, size: 64, offset: 4160)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_has_excl", scope: !1192, file: !1193, line: 81, baseType: !81, size: 8, offset: 4224)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_sk", scope: !1192, file: !1193, line: 93, baseType: !406, size: 64, offset: 4288)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_sk", scope: !1192, file: !1193, line: 94, baseType: !406, size: 64, offset: 4352)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_sk", scope: !1192, file: !1193, line: 95, baseType: !406, size: 64, offset: 4416)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !1192, file: !1193, line: 96, baseType: !406, size: 64, offset: 4480)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inet6_addr_lst", scope: !1192, file: !1193, line: 98, baseType: !414, size: 64, offset: 4544)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "addrconf_hash_lock", scope: !1192, file: !1193, line: 99, baseType: !53, size: 32, offset: 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "addr_chk_work", scope: !1192, file: !1193, line: 100, baseType: !1368, size: 704, offset: 4672)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1002, line: 111, size: 704, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1375}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1368, file: !1002, line: 112, baseType: !1001, size: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1368, file: !1002, line: 113, baseType: !695, size: 320, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1368, file: !1002, line: 116, baseType: !1373, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1002, line: 18, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1368, file: !1002, line: 117, baseType: !16, size: 32, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !1192, file: !1193, line: 110, baseType: !43, size: 32, offset: 5376)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_sernum", scope: !1192, file: !1193, line: 111, baseType: !43, size: 32, offset: 5408)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_data", scope: !1192, file: !1193, line: 112, baseType: !1379, size: 64, offset: 5440)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "seg6_pernet_data", file: !1193, line: 112, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !1192, file: !1193, line: 113, baseType: !1178, size: 64, offset: 5504)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ip6mr_notifier_ops", scope: !1192, file: !1193, line: 114, baseType: !1178, size: 64, offset: 5568)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !1192, file: !1193, line: 115, baseType: !98, size: 32, offset: 5632)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ip6addrlbl_table", scope: !1192, file: !1193, line: 120, baseType: !1385, size: 128, offset: 5696)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1192, file: !1193, line: 116, size: 128, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1385, file: !1193, line: 117, baseType: !392, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1193, line: 118, baseType: !53, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1385, file: !1193, line: 119, baseType: !231, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_data", scope: !1192, file: !1193, line: 121, baseType: !1391, size: 64, offset: 5824)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "ioam6_pernet_data", file: !1193, line: 121, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nf", scope: !219, file: !211, line: 146, baseType: !1394, size: 1536, offset: 17408)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nf", file: !1395, line: 11, size: 1536, elements: !1396)
!1395 = !DIFile(filename: "./include/net/netns/netfilter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a540a45d672d0c2786c47c3c5b579081")
!1396 = !{!1397, !1398, !1403, !1404, !1410, !1411, !1412}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "proc_netfilter", scope: !1394, file: !1395, line: 13, baseType: !299, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nf_loggers", scope: !1394, file: !1395, line: 15, baseType: !1399, size: 704, offset: 64)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 704, elements: !162)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_logger", file: !1395, line: 8, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nf_log_dir_header", scope: !1394, file: !1395, line: 17, baseType: !356, size: 64, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv4", scope: !1394, file: !1395, line: 22, baseType: !1405, size: 320, offset: 832)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1406, size: 320, elements: !1408)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_hook_entries", file: !1395, line: 22, flags: DIFlagFwdDecl)
!1408 = !{!1409}
!1409 = !DISubrange(count: 5)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv6", scope: !1394, file: !1395, line: 23, baseType: !1405, size: 320, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv4_users", scope: !1394, file: !1395, line: 31, baseType: !98, size: 32, offset: 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv6_users", scope: !1394, file: !1395, line: 34, baseType: !98, size: 32, offset: 1504)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !219, file: !211, line: 148, baseType: !1414, size: 832, offset: 18944)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ct", file: !1415, line: 96, size: 832, elements: !1416)
!1415 = !DIFile(filename: "./include/net/netns/conntrack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21e64ccd6dbd9c20f643db61f6885b6e")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1440, !1443}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_log_invalid", scope: !1414, file: !1415, line: 100, baseType: !77, size: 8)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_events", scope: !1414, file: !1415, line: 101, baseType: !77, size: 8, offset: 8)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acct", scope: !1414, file: !1415, line: 102, baseType: !77, size: 8, offset: 16)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tstamp", scope: !1414, file: !1415, line: 103, baseType: !77, size: 8, offset: 24)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_checksum", scope: !1414, file: !1415, line: 104, baseType: !77, size: 8, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1414, file: !1415, line: 106, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_conntrack_stat", file: !1425, line: 8, size: 416, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/netfilter/nf_conntrack_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72d1f1db376003bedde4743ba2b455f9")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "found", scope: !1424, file: !1425, line: 9, baseType: !98, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !1424, file: !1425, line: 10, baseType: !98, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !1424, file: !1425, line: 11, baseType: !98, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "insert_failed", scope: !1424, file: !1425, line: 12, baseType: !98, size: 32, offset: 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clash_resolve", scope: !1424, file: !1425, line: 13, baseType: !98, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !1424, file: !1425, line: 14, baseType: !98, size: 32, offset: 160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "early_drop", scope: !1424, file: !1425, line: 15, baseType: !98, size: 32, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1424, file: !1425, line: 16, baseType: !98, size: 32, offset: 224)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "expect_new", scope: !1424, file: !1425, line: 17, baseType: !98, size: 32, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expect_create", scope: !1424, file: !1425, line: 18, baseType: !98, size: 32, offset: 288)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "expect_delete", scope: !1424, file: !1425, line: 19, baseType: !98, size: 32, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "search_restart", scope: !1424, file: !1425, line: 20, baseType: !98, size: 32, offset: 352)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "chaintoolong", scope: !1424, file: !1425, line: 21, baseType: !98, size: 32, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nf_conntrack_event_cb", scope: !1414, file: !1415, line: 107, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ct_event_notifier", file: !1415, line: 107, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nf_ct_proto", scope: !1414, file: !1415, line: 108, baseType: !1444, size: 640, offset: 192)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ip_net", file: !1415, line: 79, size: 640, elements: !1445)
!1445 = !{!1446, !1450, !1461, !1466, !1470}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !1444, file: !1415, line: 80, baseType: !1447, size: 32)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_generic_net", file: !1415, line: 21, size: 32, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1447, file: !1415, line: 22, baseType: !98, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1444, file: !1415, line: 81, baseType: !1451, size: 480, offset: 32)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_tcp_net", file: !1415, line: 25, size: 480, elements: !1452)
!1452 = !{!1453, !1457, !1458, !1459, !1460}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !1451, file: !1415, line: 26, baseType: !1454, size: 448)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 448, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 14)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_loose", scope: !1451, file: !1415, line: 27, baseType: !77, size: 8, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_be_liberal", scope: !1451, file: !1415, line: 28, baseType: !77, size: 8, offset: 456)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_max_retrans", scope: !1451, file: !1415, line: 29, baseType: !77, size: 8, offset: 464)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_ignore_invalid_rst", scope: !1451, file: !1415, line: 30, baseType: !77, size: 8, offset: 472)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !1444, file: !1415, line: 82, baseType: !1462, size: 64, offset: 512)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_udp_net", file: !1415, line: 42, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !1462, file: !1415, line: 43, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !1054)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "icmp", scope: !1444, file: !1415, line: 83, baseType: !1467, size: 32, offset: 576)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_icmp_net", file: !1415, line: 49, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1467, file: !1415, line: 50, baseType: !98, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6", scope: !1444, file: !1415, line: 84, baseType: !1467, size: 32, offset: 608)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !219, file: !211, line: 160, baseType: !108, size: 64, offset: 19776)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !219, file: !211, line: 163, baseType: !1473, size: 512, offset: 19840)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_bpf", file: !1474, line: 21, size: 512, elements: !1475)
!1474 = !DIFile(filename: "./include/net/netns/bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05106686771ead514c5766084ac70d8b")
!1475 = !{!1476, !1480, !1484}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "run_array", scope: !1473, file: !1474, line: 23, baseType: !1477, size: 128)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, size: 128, elements: !1054)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !1474, line: 12, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "progs", scope: !1473, file: !1474, line: 24, baseType: !1481, size: 128, offset: 128)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 128, elements: !1054)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog", file: !1474, line: 11, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1473, file: !1474, line: 25, baseType: !1485, size: 256, offset: 256)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !1054)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm", scope: !219, file: !211, line: 167, baseType: !1487, size: 6656, offset: 20480)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_xfrm", file: !1488, line: 32, size: 6656, elements: !1489)
!1488 = !DIFile(filename: "./include/net/netns/xfrm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "692aed6e9598ebb84e84dba1a8ae5b74")
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1504, !1514, !1518, !1519, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "state_all", scope: !1487, file: !1488, line: 33, baseType: !91, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "state_bydst", scope: !1487, file: !1488, line: 42, baseType: !414, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "state_bysrc", scope: !1487, file: !1488, line: 43, baseType: !414, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "state_byspi", scope: !1487, file: !1488, line: 44, baseType: !414, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "state_byseq", scope: !1487, file: !1488, line: 45, baseType: !414, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "state_hmask", scope: !1487, file: !1488, line: 46, baseType: !98, size: 32, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "state_num", scope: !1487, file: !1488, line: 47, baseType: !98, size: 32, offset: 416)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "state_hash_work", scope: !1487, file: !1488, line: 48, baseType: !1001, size: 256, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "policy_all", scope: !1487, file: !1488, line: 50, baseType: !91, size: 128, offset: 704)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "policy_byidx", scope: !1487, file: !1488, line: 51, baseType: !414, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "policy_idx_hmask", scope: !1487, file: !1488, line: 52, baseType: !98, size: 32, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "idx_generator", scope: !1487, file: !1488, line: 53, baseType: !98, size: 32, offset: 928)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "policy_inexact", scope: !1487, file: !1488, line: 54, baseType: !1503, size: 192, offset: 960)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 192, elements: !1127)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "policy_bydst", scope: !1487, file: !1488, line: 55, baseType: !1505, size: 384, offset: 1152)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 384, elements: !1127)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hash", file: !1488, line: 14, size: 128, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1506, file: !1488, line: 15, baseType: !414, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hmask", scope: !1506, file: !1488, line: 16, baseType: !98, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dbits4", scope: !1506, file: !1488, line: 17, baseType: !77, size: 8, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "sbits4", scope: !1506, file: !1488, line: 18, baseType: !77, size: 8, offset: 104)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dbits6", scope: !1506, file: !1488, line: 19, baseType: !77, size: 8, offset: 112)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sbits6", scope: !1506, file: !1488, line: 20, baseType: !77, size: 8, offset: 120)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "policy_count", scope: !1487, file: !1488, line: 56, baseType: !1515, size: 192, offset: 1536)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 192, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 6)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hash_work", scope: !1487, file: !1488, line: 57, baseType: !1001, size: 256, offset: 1728)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hthresh", scope: !1487, file: !1488, line: 58, baseType: !1520, size: 384, offset: 1984)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hthresh", file: !1488, line: 23, size: 384, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1520, file: !1488, line: 24, baseType: !1001, size: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1520, file: !1488, line: 25, baseType: !1038, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lbits4", scope: !1520, file: !1488, line: 26, baseType: !77, size: 8, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rbits4", scope: !1520, file: !1488, line: 27, baseType: !77, size: 8, offset: 328)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lbits6", scope: !1520, file: !1488, line: 28, baseType: !77, size: 8, offset: 336)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rbits6", scope: !1520, file: !1488, line: 29, baseType: !77, size: 8, offset: 344)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "inexact_bins", scope: !1487, file: !1488, line: 59, baseType: !91, size: 128, offset: 2368)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk", scope: !1487, file: !1488, line: 62, baseType: !406, size: 64, offset: 2496)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk_stash", scope: !1487, file: !1488, line: 63, baseType: !406, size: 64, offset: 2560)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_etime", scope: !1487, file: !1488, line: 65, baseType: !231, size: 32, offset: 2624)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_rseqth", scope: !1487, file: !1488, line: 66, baseType: !231, size: 32, offset: 2656)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_larval_drop", scope: !1487, file: !1488, line: 67, baseType: !16, size: 32, offset: 2688)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acq_expires", scope: !1487, file: !1488, line: 68, baseType: !231, size: 32, offset: 2720)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "policy_default", scope: !1487, file: !1488, line: 70, baseType: !1355, size: 24, offset: 2752)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !1487, file: !1488, line: 73, baseType: !356, size: 64, offset: 2816)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_dst_ops", scope: !1487, file: !1488, line: 76, baseType: !1196, size: 1536, offset: 3072)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_dst_ops", scope: !1487, file: !1488, line: 78, baseType: !1196, size: 1536, offset: 4608)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_lock", scope: !1487, file: !1488, line: 80, baseType: !53, size: 32, offset: 6144)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_hash_generation", scope: !1487, file: !1488, line: 81, baseType: !1043, size: 32, offset: 6176)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_hash_generation", scope: !1487, file: !1488, line: 82, baseType: !1043, size: 32, offset: 6208)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_lock", scope: !1487, file: !1488, line: 84, baseType: !53, size: 32, offset: 6240)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_cfg_mutex", scope: !1487, file: !1488, line: 85, baseType: !536, size: 256, offset: 6272)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "net_cookie", scope: !219, file: !211, line: 170, baseType: !465, size: 64, offset: 27136)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "diag_nlsk", scope: !219, file: !211, line: 190, baseType: !406, size: 64, offset: 27200)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pre_exit", scope: !210, file: !211, line: 451, baseType: !1547, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !218}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !210, file: !211, line: 452, baseType: !1547, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "exit_batch", scope: !210, file: !211, line: 453, baseType: !1552, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !94}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_batch_rtnl", scope: !210, file: !211, line: 455, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !94, !94}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !210, file: !211, line: 457, baseType: !1560, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !210, file: !211, line: 458, baseType: !29, size: 64, offset: 512)
!1562 = !DIGlobalVariableExpression(var: !1563, expr: !DIExpression())
!1563 = distinct !DIGlobalVariable(name: "__already_done", scope: !1564, file: !3, line: 117, type: !151, isLocal: true, isDefinition: true)
!1564 = distinct !DISubprogram(name: "grace_exit_net", scope: !3, file: !3, line: 113, type: !1548, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1565)
!1565 = !{!1566, !1567, !1568, !1570, !1573, !1574, !1576}
!1566 = !DILocalVariable(name: "net", arg: 1, scope: !1564, file: !3, line: 113, type: !218)
!1567 = !DILocalVariable(name: "grace_list", scope: !1564, file: !3, line: 115, type: !94)
!1568 = !DILocalVariable(name: "__ret_do_once", scope: !1569, file: !3, line: 117, type: !151)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 117, column: 2)
!1570 = !DILocalVariable(name: "__ret_cond", scope: !1571, file: !3, line: 117, type: !151)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 117, column: 2)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 117, column: 2)
!1573 = !DILocalVariable(name: "__ret_once", scope: !1571, file: !3, line: 117, type: !151)
!1574 = !DILocalVariable(name: "__ret_warn_on", scope: !1575, file: !3, line: 117, type: !16)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 117, column: 2)
!1576 = !DILocalVariable(name: "__flags", scope: !1577, file: !3, line: 117, type: !16)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 117, column: 2)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 117, column: 2)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 117, column: 2)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !1582, isLocal: true, isDefinition: true)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 288, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 36)
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !1587, isLocal: true, isDefinition: true)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 120, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 15)
!1590 = !{i32 7, !"Dwarf Version", i32 5}
!1591 = !{i32 2, !"Debug Info Version", i32 3}
!1592 = !{i32 1, !"wchar_size", i32 2}
!1593 = !{i32 8, !"cf-protection-branch", i32 1}
!1594 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1595 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1596 = !{i32 1, !"Code Model", i32 2}
!1597 = !{i32 1, !"override-stack-alignment", i32 8}
!1598 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1599 = distinct !DISubprogram(name: "locks_start_grace", scope: !3, file: !3, line: 30, type: !1600, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !218, !145}
!1602 = !{!1603, !1604, !1605, !1606, !1609}
!1603 = !DILocalVariable(name: "net", arg: 1, scope: !1599, file: !3, line: 30, type: !218)
!1604 = !DILocalVariable(name: "lm", arg: 2, scope: !1599, file: !3, line: 30, type: !145)
!1605 = !DILocalVariable(name: "grace_list", scope: !1599, file: !3, line: 32, type: !94)
!1606 = !DILocalVariable(name: "__ret_warn_on", scope: !1607, file: !3, line: 38, type: !16)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 38, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 35, column: 6)
!1609 = !DILocalVariable(name: "__flags", scope: !1610, file: !3, line: 38, type: !16)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 38, column: 3)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 38, column: 3)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 38, column: 3)
!1613 = !DILocation(line: 30, column: 31, scope: !1599)
!1614 = !DILocation(line: 30, column: 57, scope: !1599)
!1615 = !DILocation(line: 32, column: 2, scope: !1599)
!1616 = !DILocation(line: 32, column: 20, scope: !1599)
!1617 = !DILocation(line: 32, column: 45, scope: !1599)
!1618 = !DILocation(line: 32, column: 50, scope: !1599)
!1619 = !DILocation(line: 32, column: 33, scope: !1599)
!1620 = !DILocation(line: 34, column: 2, scope: !1599)
!1621 = !DILocation(line: 35, column: 18, scope: !1608)
!1622 = !DILocation(line: 35, column: 22, scope: !1608)
!1623 = !DILocation(line: 35, column: 6, scope: !1608)
!1624 = !DILocation(line: 35, column: 6, scope: !1599)
!1625 = !DILocation(line: 36, column: 13, scope: !1608)
!1626 = !DILocation(line: 36, column: 17, scope: !1608)
!1627 = !DILocation(line: 36, column: 23, scope: !1608)
!1628 = !DILocation(line: 36, column: 3, scope: !1608)
!1629 = !DILocation(line: 38, column: 3, scope: !1607)
!1630 = !DILocation(line: 38, column: 3, scope: !1612)
!1631 = !DILocation(line: 38, column: 3, scope: !1611)
!1632 = !DILocation(line: 38, column: 3, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 38, column: 3)
!1634 = !DILocation(line: 38, column: 3, scope: !1610)
!1635 = !DILocation(line: 38, column: 3, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 38, column: 3)
!1637 = !DILocation(line: 38, column: 3, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 38, column: 3)
!1639 = !{i64 2155429188, i64 2155429217, i64 2155429263, i64 2155429321, i64 2155429375, i64 2155429429, i64 2155429484, i64 2155429515, i64 2155429823, i64 2155429829, i64 2155429876, i64 2155429899, i64 2155429925}
!1640 = !DILocation(line: 38, column: 3, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 38, column: 3)
!1642 = !DILocation(line: 38, column: 3, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 38, column: 3)
!1644 = !DILocation(line: 38, column: 3, scope: !1608)
!1645 = !DILocation(line: 40, column: 2, scope: !1599)
!1646 = !DILocation(line: 41, column: 1, scope: !1599)
!1647 = distinct !DISubprogram(name: "net_generic", scope: !110, file: !110, line: 40, type: !1648, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!14, !1650, !98}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!1652 = !{!1653, !1654, !1655, !1656, !1657}
!1653 = !DILocalVariable(name: "net", arg: 1, scope: !1647, file: !110, line: 40, type: !1650)
!1654 = !DILocalVariable(name: "id", arg: 2, scope: !1647, file: !110, line: 40, type: !98)
!1655 = !DILocalVariable(name: "ng", scope: !1647, file: !110, line: 42, type: !108)
!1656 = !DILocalVariable(name: "ptr", scope: !1647, file: !110, line: 43, type: !14)
!1657 = !DILocalVariable(name: "__UNIQUE_ID_rcu343", scope: !1658, file: !110, line: 46, type: !108)
!1658 = distinct !DILexicalBlock(scope: !1647, file: !110, line: 46, column: 7)
!1659 = !DILocation(line: 40, column: 51, scope: !1647)
!1660 = !DILocation(line: 40, column: 69, scope: !1647)
!1661 = !DILocation(line: 42, column: 2, scope: !1647)
!1662 = !DILocation(line: 42, column: 22, scope: !1647)
!1663 = !DILocation(line: 43, column: 2, scope: !1647)
!1664 = !DILocation(line: 43, column: 8, scope: !1647)
!1665 = !DILocation(line: 45, column: 2, scope: !1647)
!1666 = !DILocation(line: 46, column: 7, scope: !1658)
!1667 = !DILocation(line: 46, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1658, file: !110, line: 46, column: 7)
!1669 = !DILocation(line: 46, column: 7, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1668, file: !110, line: 46, column: 7)
!1671 = !DILocation(line: 46, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1658, file: !110, line: 46, column: 7)
!1673 = !DILocation(line: 46, column: 7, scope: !1647)
!1674 = !DILocation(line: 46, column: 5, scope: !1647)
!1675 = !DILocation(line: 47, column: 8, scope: !1647)
!1676 = !DILocation(line: 47, column: 12, scope: !1647)
!1677 = !DILocation(line: 47, column: 16, scope: !1647)
!1678 = !DILocation(line: 47, column: 6, scope: !1647)
!1679 = !DILocation(line: 48, column: 2, scope: !1647)
!1680 = !DILocation(line: 50, column: 9, scope: !1647)
!1681 = !DILocation(line: 51, column: 1, scope: !1647)
!1682 = !DILocation(line: 50, column: 2, scope: !1647)
!1683 = distinct !DISubprogram(name: "spin_lock", scope: !1684, file: !1684, line: 349, type: !1685, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1687)
!1684 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !556}
!1687 = !{!1688}
!1688 = !DILocalVariable(name: "lock", arg: 1, scope: !1683, file: !1684, line: 349, type: !556)
!1689 = !DILocation(line: 349, column: 51, scope: !1683)
!1690 = !DILocation(line: 351, column: 2, scope: !1683)
!1691 = !DILocation(line: 352, column: 1, scope: !1683)
!1692 = distinct !DISubprogram(name: "list_empty", scope: !1693, file: !1693, line: 371, type: !1694, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1698)
!1693 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!16, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!1698 = !{!1699}
!1699 = !DILocalVariable(name: "head", arg: 1, scope: !1692, file: !1693, line: 371, type: !1696)
!1700 = !DILocation(line: 371, column: 54, scope: !1692)
!1701 = !DILocation(line: 373, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1692, file: !1693, line: 373, column: 9)
!1703 = !DILocation(line: 373, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1702, file: !1693, line: 373, column: 9)
!1705 = !DILocation(line: 373, column: 34, scope: !1692)
!1706 = !DILocation(line: 373, column: 31, scope: !1692)
!1707 = !DILocation(line: 373, column: 2, scope: !1692)
!1708 = distinct !DISubprogram(name: "list_add", scope: !1693, file: !1693, line: 167, type: !1557, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1709)
!1709 = !{!1710, !1711}
!1710 = !DILocalVariable(name: "new", arg: 1, scope: !1708, file: !1693, line: 167, type: !94)
!1711 = !DILocalVariable(name: "head", arg: 2, scope: !1708, file: !1693, line: 167, type: !94)
!1712 = !DILocation(line: 167, column: 47, scope: !1708)
!1713 = !DILocation(line: 167, column: 70, scope: !1708)
!1714 = !DILocation(line: 169, column: 13, scope: !1708)
!1715 = !DILocation(line: 169, column: 18, scope: !1708)
!1716 = !DILocation(line: 169, column: 24, scope: !1708)
!1717 = !DILocation(line: 169, column: 30, scope: !1708)
!1718 = !DILocation(line: 169, column: 2, scope: !1708)
!1719 = !DILocation(line: 170, column: 1, scope: !1708)
!1720 = !DISubprogram(name: "__warn_printk", scope: !1721, file: !1721, line: 93, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1721 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !10, null}
!1724 = distinct !DISubprogram(name: "spin_unlock", scope: !1684, file: !1684, line: 389, type: !1685, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1725)
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "lock", arg: 1, scope: !1724, file: !1684, line: 389, type: !556)
!1727 = !DILocation(line: 389, column: 53, scope: !1724)
!1728 = !DILocation(line: 391, column: 2, scope: !1724)
!1729 = !DILocation(line: 392, column: 1, scope: !1724)
!1730 = distinct !DISubprogram(name: "locks_end_grace", scope: !3, file: !3, line: 55, type: !1731, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !145}
!1733 = !{!1734}
!1734 = !DILocalVariable(name: "lm", arg: 1, scope: !1730, file: !3, line: 55, type: !145)
!1735 = !DILocation(line: 55, column: 38, scope: !1730)
!1736 = !DILocation(line: 57, column: 2, scope: !1730)
!1737 = !DILocation(line: 58, column: 17, scope: !1730)
!1738 = !DILocation(line: 58, column: 21, scope: !1730)
!1739 = !DILocation(line: 58, column: 2, scope: !1730)
!1740 = !DILocation(line: 59, column: 2, scope: !1730)
!1741 = !DILocation(line: 60, column: 1, scope: !1730)
!1742 = distinct !DISubprogram(name: "list_del_init", scope: !1693, file: !1693, line: 285, type: !1553, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1743)
!1743 = !{!1744}
!1744 = !DILocalVariable(name: "entry", arg: 1, scope: !1742, file: !1693, line: 285, type: !94)
!1745 = !DILocation(line: 285, column: 52, scope: !1742)
!1746 = !DILocation(line: 287, column: 19, scope: !1742)
!1747 = !DILocation(line: 287, column: 2, scope: !1742)
!1748 = !DILocation(line: 288, column: 17, scope: !1742)
!1749 = !DILocation(line: 288, column: 2, scope: !1742)
!1750 = !DILocation(line: 289, column: 1, scope: !1742)
!1751 = distinct !DISubprogram(name: "locks_in_grace", scope: !3, file: !3, line: 91, type: !1752, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!151, !218}
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "net", arg: 1, scope: !1751, file: !3, line: 91, type: !218)
!1756 = !DILocation(line: 91, column: 33, scope: !1751)
!1757 = !DILocation(line: 93, column: 26, scope: !1751)
!1758 = !DILocation(line: 93, column: 9, scope: !1751)
!1759 = !DILocation(line: 93, column: 2, scope: !1751)
!1760 = distinct !DISubprogram(name: "__state_in_grace", scope: !3, file: !3, line: 64, type: !1761, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!151, !218, !151}
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1771}
!1764 = !DILocalVariable(name: "net", arg: 1, scope: !1760, file: !3, line: 64, type: !218)
!1765 = !DILocalVariable(name: "open", arg: 2, scope: !1760, file: !3, line: 64, type: !151)
!1766 = !DILocalVariable(name: "grace_list", scope: !1760, file: !3, line: 66, type: !94)
!1767 = !DILocalVariable(name: "lm", scope: !1760, file: !3, line: 67, type: !145)
!1768 = !DILocalVariable(name: "__mptr", scope: !1769, file: !3, line: 73, type: !14)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 73, column: 2)
!1770 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 73, column: 2)
!1771 = !DILocalVariable(name: "__mptr", scope: !1772, file: !3, line: 73, type: !14)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 73, column: 2)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 73, column: 2)
!1774 = !DILocation(line: 64, column: 30, scope: !1760)
!1775 = !DILocation(line: 64, column: 40, scope: !1760)
!1776 = !DILocation(line: 66, column: 2, scope: !1760)
!1777 = !DILocation(line: 66, column: 20, scope: !1760)
!1778 = !DILocation(line: 66, column: 45, scope: !1760)
!1779 = !DILocation(line: 66, column: 50, scope: !1760)
!1780 = !DILocation(line: 66, column: 33, scope: !1760)
!1781 = !DILocation(line: 67, column: 2, scope: !1760)
!1782 = !DILocation(line: 67, column: 23, scope: !1760)
!1783 = !DILocation(line: 69, column: 7, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 69, column: 6)
!1785 = !{i8 0, i8 2}
!1786 = !DILocation(line: 69, column: 6, scope: !1760)
!1787 = !DILocation(line: 70, column: 22, scope: !1784)
!1788 = !DILocation(line: 70, column: 11, scope: !1784)
!1789 = !DILocation(line: 70, column: 10, scope: !1784)
!1790 = !DILocation(line: 70, column: 3, scope: !1784)
!1791 = !DILocation(line: 72, column: 2, scope: !1760)
!1792 = !DILocation(line: 73, column: 2, scope: !1769)
!1793 = !DILocation(line: 73, column: 2, scope: !1770)
!1794 = !DILocation(line: 73, column: 2, scope: !1773)
!1795 = !DILocation(line: 74, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 74, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 73, column: 44)
!1798 = !DILocation(line: 74, column: 11, scope: !1796)
!1799 = !DILocation(line: 74, column: 7, scope: !1797)
!1800 = !DILocation(line: 75, column: 4, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 74, column: 24)
!1802 = !DILocation(line: 76, column: 4, scope: !1801)
!1803 = !DILocation(line: 78, column: 2, scope: !1797)
!1804 = !DILocation(line: 73, column: 2, scope: !1772)
!1805 = distinct !{!1805, !1793, !1806, !1807, !1808}
!1806 = !DILocation(line: 78, column: 2, scope: !1770)
!1807 = !{!"llvm.loop.mustprogress"}
!1808 = !{!"llvm.loop.unroll.disable"}
!1809 = !DILocation(line: 79, column: 2, scope: !1760)
!1810 = !DILocation(line: 80, column: 2, scope: !1760)
!1811 = !DILocation(line: 81, column: 1, scope: !1760)
!1812 = distinct !DISubprogram(name: "opens_in_grace", scope: !3, file: !3, line: 97, type: !1752, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "net", arg: 1, scope: !1812, file: !3, line: 97, type: !218)
!1815 = !DILocation(line: 97, column: 33, scope: !1812)
!1816 = !DILocation(line: 99, column: 26, scope: !1812)
!1817 = !DILocation(line: 99, column: 9, scope: !1812)
!1818 = !DILocation(line: 99, column: 2, scope: !1812)
!1819 = distinct !DISubprogram(name: "exit_grace", scope: !3, file: !3, line: 136, type: !204, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1820 = !DILocation(line: 138, column: 2, scope: !1819)
!1821 = !DILocation(line: 139, column: 1, scope: !1819)
!1822 = !DISubprogram(name: "unregister_pernet_subsys", scope: !211, file: !211, line: 481, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1826 = distinct !DISubprogram(name: "__initstub__kmod_grace__354_143_init_grace6", scope: !3, file: !3, line: 143, type: !1827, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!16}
!1829 = !DILocation(line: 143, column: 1, scope: !1826)
!1830 = distinct !DISubprogram(name: "init_grace", scope: !3, file: !3, line: 130, type: !1827, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1831 = !DILocation(line: 132, column: 9, scope: !1830)
!1832 = !DILocation(line: 132, column: 2, scope: !1830)
!1833 = distinct !DISubprogram(name: "rcu_read_lock", scope: !1834, file: !1834, line: 782, type: !204, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1834 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!1835 = !DILocation(line: 784, column: 2, scope: !1833)
!1836 = !DILocation(line: 786, column: 2, scope: !1833)
!1837 = !DILocation(line: 786, column: 2, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !1834, line: 786, column: 2)
!1839 = !DILocation(line: 787, column: 2, scope: !1833)
!1840 = !DILocation(line: 787, column: 2, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1833, file: !1834, line: 787, column: 2)
!1842 = !DILocation(line: 789, column: 1, scope: !1833)
!1843 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !1834, file: !1834, line: 813, type: !204, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1844 = !DILocation(line: 815, column: 2, scope: !1843)
!1845 = !DILocation(line: 815, column: 2, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !1834, line: 815, column: 2)
!1847 = !DILocation(line: 818, column: 2, scope: !1843)
!1848 = !DILocation(line: 819, column: 2, scope: !1843)
!1849 = !DILocation(line: 819, column: 2, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !1834, line: 819, column: 2)
!1851 = !DILocation(line: 820, column: 1, scope: !1843)
!1852 = !DISubprogram(name: "__rcu_read_lock", scope: !1834, file: !1834, line: 74, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1853 = !DISubprogram(name: "__rcu_read_unlock", scope: !1834, file: !1834, line: 75, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = !DISubprogram(name: "_raw_spin_lock", scope: !1855, file: !1855, line: 22, type: !1856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1855 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1859 = distinct !DISubprogram(name: "__list_add", scope: !1693, file: !1693, line: 146, type: !1860, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !94, !94, !94}
!1862 = !{!1863, !1864, !1865}
!1863 = !DILocalVariable(name: "new", arg: 1, scope: !1859, file: !1693, line: 146, type: !94)
!1864 = !DILocalVariable(name: "prev", arg: 2, scope: !1859, file: !1693, line: 147, type: !94)
!1865 = !DILocalVariable(name: "next", arg: 3, scope: !1859, file: !1693, line: 148, type: !94)
!1866 = !DILocation(line: 146, column: 49, scope: !1859)
!1867 = !DILocation(line: 147, column: 28, scope: !1859)
!1868 = !DILocation(line: 148, column: 28, scope: !1859)
!1869 = !DILocation(line: 150, column: 24, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1859, file: !1693, line: 150, column: 6)
!1871 = !DILocation(line: 150, column: 29, scope: !1870)
!1872 = !DILocation(line: 150, column: 35, scope: !1870)
!1873 = !DILocation(line: 150, column: 7, scope: !1870)
!1874 = !DILocation(line: 150, column: 6, scope: !1859)
!1875 = !DILocation(line: 151, column: 3, scope: !1870)
!1876 = !DILocation(line: 153, column: 15, scope: !1859)
!1877 = !DILocation(line: 153, column: 2, scope: !1859)
!1878 = !DILocation(line: 153, column: 8, scope: !1859)
!1879 = !DILocation(line: 153, column: 13, scope: !1859)
!1880 = !DILocation(line: 154, column: 14, scope: !1859)
!1881 = !DILocation(line: 154, column: 2, scope: !1859)
!1882 = !DILocation(line: 154, column: 7, scope: !1859)
!1883 = !DILocation(line: 154, column: 12, scope: !1859)
!1884 = !DILocation(line: 155, column: 14, scope: !1859)
!1885 = !DILocation(line: 155, column: 2, scope: !1859)
!1886 = !DILocation(line: 155, column: 7, scope: !1859)
!1887 = !DILocation(line: 155, column: 12, scope: !1859)
!1888 = !DILocation(line: 156, column: 2, scope: !1859)
!1889 = !DILocation(line: 156, column: 2, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1859, file: !1693, line: 156, column: 2)
!1891 = !DILocation(line: 156, column: 2, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !1693, line: 156, column: 2)
!1893 = !DILocation(line: 156, column: 2, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !1693, line: 156, column: 2)
!1895 = !DILocation(line: 157, column: 1, scope: !1859)
!1896 = distinct !DISubprogram(name: "__list_add_valid", scope: !1693, file: !1693, line: 128, type: !1897, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!151, !94, !94, !94}
!1899 = !{!1900, !1901, !1902}
!1900 = !DILocalVariable(name: "new", arg: 1, scope: !1896, file: !1693, line: 128, type: !94)
!1901 = !DILocalVariable(name: "prev", arg: 2, scope: !1896, file: !1693, line: 129, type: !94)
!1902 = !DILocalVariable(name: "next", arg: 3, scope: !1896, file: !1693, line: 130, type: !94)
!1903 = !DILocation(line: 128, column: 55, scope: !1896)
!1904 = !DILocation(line: 129, column: 23, scope: !1896)
!1905 = !DILocation(line: 130, column: 23, scope: !1896)
!1906 = !DILocation(line: 132, column: 2, scope: !1896)
!1907 = !DISubprogram(name: "_raw_spin_unlock", scope: !1855, file: !1855, line: 39, type: !1856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1908 = distinct !DISubprogram(name: "__list_del_entry", scope: !1693, file: !1693, line: 213, type: !1553, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "entry", arg: 1, scope: !1908, file: !1693, line: 213, type: !94)
!1911 = !DILocation(line: 213, column: 55, scope: !1908)
!1912 = !DILocation(line: 215, column: 30, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1908, file: !1693, line: 215, column: 6)
!1914 = !DILocation(line: 215, column: 7, scope: !1913)
!1915 = !DILocation(line: 215, column: 6, scope: !1908)
!1916 = !DILocation(line: 216, column: 3, scope: !1913)
!1917 = !DILocation(line: 218, column: 13, scope: !1908)
!1918 = !DILocation(line: 218, column: 20, scope: !1908)
!1919 = !DILocation(line: 218, column: 26, scope: !1908)
!1920 = !DILocation(line: 218, column: 33, scope: !1908)
!1921 = !DILocation(line: 218, column: 2, scope: !1908)
!1922 = !DILocation(line: 219, column: 1, scope: !1908)
!1923 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1693, file: !1693, line: 35, type: !1553, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1924)
!1924 = !{!1925}
!1925 = !DILocalVariable(name: "list", arg: 1, scope: !1923, file: !1693, line: 35, type: !94)
!1926 = !DILocation(line: 35, column: 53, scope: !1923)
!1927 = !DILocation(line: 37, column: 2, scope: !1923)
!1928 = !DILocation(line: 37, column: 2, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1923, file: !1693, line: 37, column: 2)
!1930 = !DILocation(line: 37, column: 2, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !1693, line: 37, column: 2)
!1932 = !DILocation(line: 37, column: 2, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !1693, line: 37, column: 2)
!1934 = !DILocation(line: 38, column: 2, scope: !1923)
!1935 = !DILocation(line: 38, column: 2, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1923, file: !1693, line: 38, column: 2)
!1937 = !DILocation(line: 38, column: 2, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1936, file: !1693, line: 38, column: 2)
!1939 = !DILocation(line: 38, column: 2, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !1693, line: 38, column: 2)
!1941 = !DILocation(line: 39, column: 1, scope: !1923)
!1942 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1693, file: !1693, line: 134, type: !1943, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!151, !94}
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "entry", arg: 1, scope: !1942, file: !1693, line: 134, type: !94)
!1947 = !DILocation(line: 134, column: 61, scope: !1942)
!1948 = !DILocation(line: 136, column: 2, scope: !1942)
!1949 = distinct !DISubprogram(name: "__list_del", scope: !1693, file: !1693, line: 193, type: !1557, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1950)
!1950 = !{!1951, !1952}
!1951 = !DILocalVariable(name: "prev", arg: 1, scope: !1949, file: !1693, line: 193, type: !94)
!1952 = !DILocalVariable(name: "next", arg: 2, scope: !1949, file: !1693, line: 193, type: !94)
!1953 = !DILocation(line: 193, column: 50, scope: !1949)
!1954 = !DILocation(line: 193, column: 75, scope: !1949)
!1955 = !DILocation(line: 195, column: 15, scope: !1949)
!1956 = !DILocation(line: 195, column: 2, scope: !1949)
!1957 = !DILocation(line: 195, column: 8, scope: !1949)
!1958 = !DILocation(line: 195, column: 13, scope: !1949)
!1959 = !DILocation(line: 196, column: 2, scope: !1949)
!1960 = !DILocation(line: 196, column: 2, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1949, file: !1693, line: 196, column: 2)
!1962 = !DILocation(line: 196, column: 2, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1961, file: !1693, line: 196, column: 2)
!1964 = !DILocation(line: 196, column: 2, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !1693, line: 196, column: 2)
!1966 = !DILocation(line: 197, column: 1, scope: !1949)
!1967 = distinct !DISubprogram(name: "grace_init_net", scope: !3, file: !3, line: 104, type: !216, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1968 = !{!1969, !1970}
!1969 = !DILocalVariable(name: "net", arg: 1, scope: !1967, file: !3, line: 104, type: !218)
!1970 = !DILocalVariable(name: "grace_list", scope: !1967, file: !3, line: 106, type: !94)
!1971 = !DILocation(line: 104, column: 28, scope: !1967)
!1972 = !DILocation(line: 106, column: 2, scope: !1967)
!1973 = !DILocation(line: 106, column: 20, scope: !1967)
!1974 = !DILocation(line: 106, column: 45, scope: !1967)
!1975 = !DILocation(line: 106, column: 50, scope: !1967)
!1976 = !DILocation(line: 106, column: 33, scope: !1967)
!1977 = !DILocation(line: 108, column: 17, scope: !1967)
!1978 = !DILocation(line: 108, column: 2, scope: !1967)
!1979 = !DILocation(line: 110, column: 1, scope: !1967)
!1980 = !DILocation(line: 109, column: 2, scope: !1967)
!1981 = !DILocation(line: 113, column: 28, scope: !1564)
!1982 = !DILocation(line: 115, column: 2, scope: !1564)
!1983 = !DILocation(line: 115, column: 20, scope: !1564)
!1984 = !DILocation(line: 115, column: 45, scope: !1564)
!1985 = !DILocation(line: 115, column: 50, scope: !1564)
!1986 = !DILocation(line: 115, column: 33, scope: !1564)
!1987 = !DILocation(line: 117, column: 2, scope: !1569)
!1988 = !DILocation(line: 117, column: 2, scope: !1571)
!1989 = !DILocation(line: 117, column: 2, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 117, column: 2)
!1991 = !DILocation(line: 0, scope: !1990)
!1992 = !DILocation(line: 117, column: 2, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 117, column: 2)
!1994 = !DILocation(line: 117, column: 2, scope: !1572)
!1995 = !DILocation(line: 117, column: 2, scope: !1575)
!1996 = !DILocation(line: 117, column: 2, scope: !1579)
!1997 = !DILocation(line: 117, column: 2, scope: !1578)
!1998 = !DILocation(line: 117, column: 2, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 117, column: 2)
!2000 = !DILocation(line: 117, column: 2, scope: !1577)
!2001 = !DILocation(line: 117, column: 2, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 117, column: 2)
!2003 = !DILocation(line: 117, column: 2, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 117, column: 2)
!2005 = !{i64 2155441883, i64 2155441912, i64 2155441958, i64 2155442016, i64 2155442070, i64 2155442124, i64 2155442179, i64 2155442210, i64 2155442518, i64 2155442524, i64 2155442571, i64 2155442594, i64 2155442620}
!2006 = !DILocation(line: 117, column: 2, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 117, column: 2)
!2008 = !DILocation(line: 117, column: 2, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 117, column: 2)
!2010 = !DILocation(line: 117, column: 2, scope: !1564)
!2011 = !DILocation(line: 120, column: 1, scope: !1564)
!2012 = !DISubprogram(name: "register_pernet_subsys", scope: !211, file: !211, line: 480, type: !2013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!16, !1825}
