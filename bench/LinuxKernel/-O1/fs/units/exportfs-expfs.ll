; ModuleID = 'fs/exportfs/expfs.c'
source_filename = "fs/exportfs/expfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_exportfs_encode_inode_fh: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad exportfs_encode_inode_fh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_exportfs_encode_fh: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad exportfs_encode_fh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_exportfs_decode_fh_raw: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad exportfs_decode_fh_raw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_exportfs_decode_fh: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad exportfs_decode_fh ; .previous"

%struct.pcpu_hot = type { %union.anon.31 }
%union.anon.31 = type { %struct.anon.32, [16 x i8] }
%struct.anon.32 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.16 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.fid = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i16, i16, i32, i32, i32 }
%struct.anon.20 = type { %struct.anon.21, [0 x i32] }
%struct.anon.21 = type {}
%struct.anon.18 = type { i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.26, %struct.list_head, %struct.list_head, %union.anon.27 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.22, ptr }
%union.anon.22 = type { i64 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.26 = type { %struct.list_head }
%union.anon.27 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.path = type { ptr, ptr }
%struct.anon.25 = type { %struct.spinlock, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i32, i32, i64 }
%struct.getdents_callback = type { %struct.dir_context, ptr, i64, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.file = type { %union.anon.28, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.28 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.29, %struct.qspinlock }
%union.anon.29 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_exportfs_encode_inode_fh261 = internal global ptr @exportfs_encode_inode_fh, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_exportfs_encode_fh262 = internal global ptr @exportfs_encode_fh, section ".discard.addressable", align 8, !dbg !3932
@__UNIQUE_ID___addressable_exportfs_decode_fh_raw263 = internal global ptr @exportfs_decode_fh_raw, section ".discard.addressable", align 8, !dbg !3934
@__UNIQUE_ID___addressable_exportfs_decode_fh264 = internal global ptr @exportfs_decode_fh, section ".discard.addressable", align 8, !dbg !3936
@__UNIQUE_ID_file265 = internal constant [35 x i8] c"exportfs.file=fs/exportfs/exportfs\00", section ".modinfo", align 1, !dbg !3938
@__UNIQUE_ID_license266 = internal constant [21 x i8] c"exportfs.license=GPL\00", section ".modinfo", align 1, !dbg !3943
@.str = private unnamed_addr constant [20 x i8] c"fs/exportfs/expfs.c\00", align 1, !dbg !3948
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_exportfs_encode_inode_fh261, ptr @__UNIQUE_ID___addressable_exportfs_encode_fh262, ptr @__UNIQUE_ID___addressable_exportfs_decode_fh_raw263, ptr @__UNIQUE_ID___addressable_exportfs_decode_fh264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @exportfs_encode_inode_fh(ptr noundef %inode, ptr noundef %fid, ptr noundef %max_len, ptr noundef %parent, i32 noundef %flags) #0 align 16 !dbg !3960 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %max_len.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %nop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3964, metadata !DIExpression()), !dbg !3970
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !3965, metadata !DIExpression()), !dbg !3971
  store ptr %max_len, ptr %max_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_len.addr, metadata !3966, metadata !DIExpression()), !dbg !3972
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3967, metadata !DIExpression()), !dbg !3973
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3968, metadata !DIExpression()), !dbg !3974
  call void @llvm.lifetime.start.p0(i64 8, ptr %nop) #8, !dbg !3975
  call void @llvm.dbg.declare(metadata ptr %nop, metadata !3969, metadata !DIExpression()), !dbg !3976
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !3977
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !3978
  %1 = load ptr, ptr %i_sb, align 8, !dbg !3978
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9, !dbg !3979
  %2 = load ptr, ptr %s_export_op, align 8, !dbg !3979
  store ptr %2, ptr %nop, align 8, !dbg !3976
  %3 = load ptr, ptr %nop, align 8, !dbg !3980
  %tobool = icmp ne ptr %3, null, !dbg !3980
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3982

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %flags.addr, align 4, !dbg !3983
  %and = and i32 %4, 2, !dbg !3984
  %tobool1 = icmp ne i32 %and, 0, !dbg !3984
  br i1 %tobool1, label %if.end, label %land.lhs.true2, !dbg !3985

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %nop, align 8, !dbg !3986
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, ptr %5, i32 0, i32 1, !dbg !3987
  %6 = load ptr, ptr %fh_to_dentry, align 8, !dbg !3987
  %tobool3 = icmp ne ptr %6, null, !dbg !3986
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3988

if.then:                                          ; preds = %land.lhs.true2
  store i32 -95, ptr %retval, align 4, !dbg !3989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3989

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %7 = load ptr, ptr %nop, align 8, !dbg !3990
  %tobool4 = icmp ne ptr %7, null, !dbg !3990
  br i1 %tobool4, label %land.lhs.true5, label %if.end9, !dbg !3992

land.lhs.true5:                                   ; preds = %if.end
  %8 = load ptr, ptr %nop, align 8, !dbg !3993
  %encode_fh = getelementptr inbounds %struct.export_operations, ptr %8, i32 0, i32 0, !dbg !3994
  %9 = load ptr, ptr %encode_fh, align 8, !dbg !3994
  %tobool6 = icmp ne ptr %9, null, !dbg !3993
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3995

if.then7:                                         ; preds = %land.lhs.true5
  %10 = load ptr, ptr %nop, align 8, !dbg !3996
  %encode_fh8 = getelementptr inbounds %struct.export_operations, ptr %10, i32 0, i32 0, !dbg !3997
  %11 = load ptr, ptr %encode_fh8, align 8, !dbg !3997
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !3998
  %13 = load ptr, ptr %fid.addr, align 8, !dbg !3999
  %14 = getelementptr inbounds %struct.fid, ptr %13, i32 0, i32 0, !dbg !4000
  %raw = getelementptr inbounds %struct.anon.20, ptr %14, i32 0, i32 1, !dbg !4000
  %arraydecay = getelementptr inbounds [0 x i32], ptr %raw, i64 0, i64 0, !dbg !3999
  %15 = load ptr, ptr %max_len.addr, align 8, !dbg !4001
  %16 = load ptr, ptr %parent.addr, align 8, !dbg !4002
  %call = call i32 %11(ptr noundef %12, ptr noundef %arraydecay, ptr noundef %15, ptr noundef %16) #9, !dbg !3996
  store i32 %call, ptr %retval, align 4, !dbg !4003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4003

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  %17 = load ptr, ptr %inode.addr, align 8, !dbg !4004
  %18 = load ptr, ptr %fid.addr, align 8, !dbg !4005
  %19 = load ptr, ptr %max_len.addr, align 8, !dbg !4006
  %20 = load ptr, ptr %parent.addr, align 8, !dbg !4007
  %call10 = call i32 @export_encode_fh(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #9, !dbg !4008
  store i32 %call10, ptr %retval, align 4, !dbg !4009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4009

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nop) #8, !dbg !4010
  %21 = load i32, ptr %retval, align 4, !dbg !4010
  ret i32 %21, !dbg !4010
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @export_encode_fh(ptr noundef %inode, ptr noundef %fid, ptr noundef %max_len, ptr noundef %parent) #0 align 16 !dbg !4011 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %max_len.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4015, metadata !DIExpression()), !dbg !4021
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4016, metadata !DIExpression()), !dbg !4022
  store ptr %max_len, ptr %max_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_len.addr, metadata !4017, metadata !DIExpression()), !dbg !4023
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4018, metadata !DIExpression()), !dbg !4024
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8, !dbg !4025
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4019, metadata !DIExpression()), !dbg !4026
  %0 = load ptr, ptr %max_len.addr, align 8, !dbg !4027
  %1 = load i32, ptr %0, align 4, !dbg !4028
  store i32 %1, ptr %len, align 4, !dbg !4026
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #8, !dbg !4029
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4020, metadata !DIExpression()), !dbg !4030
  store i32 1, ptr %type, align 4, !dbg !4030
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4031
  %tobool = icmp ne ptr %2, null, !dbg !4031
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4033

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %len, align 4, !dbg !4034
  %cmp = icmp slt i32 %3, 4, !dbg !4035
  br i1 %cmp, label %if.then, label %if.else, !dbg !4036

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %max_len.addr, align 8, !dbg !4037
  store i32 4, ptr %4, align 4, !dbg !4039
  store i32 255, ptr %retval, align 4, !dbg !4040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4040

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %len, align 4, !dbg !4041
  %cmp1 = icmp slt i32 %5, 2, !dbg !4043
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4044

if.then2:                                         ; preds = %if.else
  %6 = load ptr, ptr %max_len.addr, align 8, !dbg !4045
  store i32 2, ptr %6, align 4, !dbg !4047
  store i32 255, ptr %retval, align 4, !dbg !4048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4048

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  store i32 2, ptr %len, align 4, !dbg !4049
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !4050
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12, !dbg !4051
  %8 = load i64, ptr %i_ino, align 8, !dbg !4051
  %conv = trunc i64 %8 to i32, !dbg !4050
  %9 = load ptr, ptr %fid.addr, align 8, !dbg !4052
  %10 = getelementptr inbounds %struct.fid, ptr %9, i32 0, i32 0, !dbg !4053
  %ino = getelementptr inbounds %struct.anon.18, ptr %10, i32 0, i32 0, !dbg !4054
  store i32 %conv, ptr %ino, align 4, !dbg !4055
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !4056
  %i_generation = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 44, !dbg !4057
  %12 = load i32, ptr %i_generation, align 8, !dbg !4057
  %13 = load ptr, ptr %fid.addr, align 8, !dbg !4058
  %14 = getelementptr inbounds %struct.fid, ptr %13, i32 0, i32 0, !dbg !4059
  %gen = getelementptr inbounds %struct.anon.18, ptr %14, i32 0, i32 1, !dbg !4060
  store i32 %12, ptr %gen, align 4, !dbg !4061
  %15 = load ptr, ptr %parent.addr, align 8, !dbg !4062
  %tobool4 = icmp ne ptr %15, null, !dbg !4062
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !4064

if.then5:                                         ; preds = %if.end3
  %16 = load ptr, ptr %parent.addr, align 8, !dbg !4065
  %i_ino6 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 12, !dbg !4067
  %17 = load i64, ptr %i_ino6, align 8, !dbg !4067
  %conv7 = trunc i64 %17 to i32, !dbg !4065
  %18 = load ptr, ptr %fid.addr, align 8, !dbg !4068
  %19 = getelementptr inbounds %struct.fid, ptr %18, i32 0, i32 0, !dbg !4069
  %parent_ino = getelementptr inbounds %struct.anon.18, ptr %19, i32 0, i32 2, !dbg !4070
  store i32 %conv7, ptr %parent_ino, align 4, !dbg !4071
  %20 = load ptr, ptr %parent.addr, align 8, !dbg !4072
  %i_generation8 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 44, !dbg !4073
  %21 = load i32, ptr %i_generation8, align 8, !dbg !4073
  %22 = load ptr, ptr %fid.addr, align 8, !dbg !4074
  %23 = getelementptr inbounds %struct.fid, ptr %22, i32 0, i32 0, !dbg !4075
  %parent_gen = getelementptr inbounds %struct.anon.18, ptr %23, i32 0, i32 3, !dbg !4076
  store i32 %21, ptr %parent_gen, align 4, !dbg !4077
  store i32 4, ptr %len, align 4, !dbg !4078
  store i32 2, ptr %type, align 4, !dbg !4079
  br label %if.end9, !dbg !4080

if.end9:                                          ; preds = %if.then5, %if.end3
  %24 = load i32, ptr %len, align 4, !dbg !4081
  %25 = load ptr, ptr %max_len.addr, align 8, !dbg !4082
  store i32 %24, ptr %25, align 4, !dbg !4083
  %26 = load i32, ptr %type, align 4, !dbg !4084
  store i32 %26, ptr %retval, align 4, !dbg !4085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4085

cleanup:                                          ; preds = %if.end9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #8, !dbg !4086
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8, !dbg !4086
  %27 = load i32, ptr %retval, align 4, !dbg !4086
  ret i32 %27, !dbg !4086
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @exportfs_encode_fh(ptr noundef %dentry, ptr noundef %fid, ptr noundef %max_len, i32 noundef %flags) #0 align 16 !dbg !4087 {
entry:
  %dentry.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %max_len.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %p = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4091, metadata !DIExpression()), !dbg !4099
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4092, metadata !DIExpression()), !dbg !4100
  store ptr %max_len, ptr %max_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_len.addr, metadata !4093, metadata !DIExpression()), !dbg !4101
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4094, metadata !DIExpression()), !dbg !4102
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !4103
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4095, metadata !DIExpression()), !dbg !4104
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4105
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4096, metadata !DIExpression()), !dbg !4106
  store ptr null, ptr %p, align 8, !dbg !4106
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4097, metadata !DIExpression()), !dbg !4108
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4109
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4110
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4110
  store ptr %1, ptr %inode, align 8, !dbg !4108
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4098, metadata !DIExpression()), !dbg !4111
  store ptr null, ptr %parent, align 8, !dbg !4111
  %2 = load i32, ptr %flags.addr, align 4, !dbg !4112
  %and = and i32 %2, 1, !dbg !4114
  %tobool = icmp ne i32 %and, 0, !dbg !4114
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4115

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %inode, align 8, !dbg !4116
  %i_mode = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 0, !dbg !4116
  %4 = load i16, ptr %i_mode, align 8, !dbg !4116
  %conv = zext i16 %4 to i32, !dbg !4116
  %and1 = and i32 %conv, 61440, !dbg !4116
  %cmp = icmp eq i32 %and1, 16384, !dbg !4116
  br i1 %cmp, label %if.end, label %if.then, !dbg !4117

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !4118
  %call = call ptr @dget_parent(ptr noundef %5) #9, !dbg !4120
  store ptr %call, ptr %p, align 8, !dbg !4121
  %6 = load ptr, ptr %p, align 8, !dbg !4122
  %d_inode3 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5, !dbg !4123
  %7 = load ptr, ptr %d_inode3, align 8, !dbg !4123
  store ptr %7, ptr %parent, align 8, !dbg !4124
  br label %if.end, !dbg !4125

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %inode, align 8, !dbg !4126
  %9 = load ptr, ptr %fid.addr, align 8, !dbg !4127
  %10 = load ptr, ptr %max_len.addr, align 8, !dbg !4128
  %11 = load ptr, ptr %parent, align 8, !dbg !4129
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4130
  %call4 = call i32 @exportfs_encode_inode_fh(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12) #9, !dbg !4131
  store i32 %call4, ptr %error, align 4, !dbg !4132
  %13 = load ptr, ptr %p, align 8, !dbg !4133
  call void @dput(ptr noundef %13) #9, !dbg !4134
  %14 = load i32, ptr %error, align 4, !dbg !4135
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !4136
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !4136
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4136
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !4136
  ret i32 %14, !dbg !4137
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4138 dso_local ptr @dget_parent(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4139 dso_local void @dput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @exportfs_decode_fh_raw(ptr noundef %mnt, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, ptr noundef %acceptable, ptr noundef %context) #0 align 16 !dbg !4140 {
entry:
  %retval = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fileid_type.addr = alloca i32, align 4
  %acceptable.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %nop = alloca ptr, align 8
  %result = alloca ptr, align 8
  %alias = alloca ptr, align 8
  %nbuf = alloca [256 x i8], align 16
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %target_dir = alloca ptr, align 8
  %nresult = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4147, metadata !DIExpression()), !dbg !4166
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4148, metadata !DIExpression()), !dbg !4167
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !4149, metadata !DIExpression()), !dbg !4168
  store i32 %fileid_type, ptr %fileid_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fileid_type.addr, metadata !4150, metadata !DIExpression()), !dbg !4169
  store ptr %acceptable, ptr %acceptable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acceptable.addr, metadata !4151, metadata !DIExpression()), !dbg !4170
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4152, metadata !DIExpression()), !dbg !4171
  call void @llvm.lifetime.start.p0(i64 8, ptr %nop) #8, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %nop, metadata !4153, metadata !DIExpression()), !dbg !4173
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4174
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1, !dbg !4175
  %1 = load ptr, ptr %mnt_sb, align 8, !dbg !4175
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9, !dbg !4176
  %2 = load ptr, ptr %s_export_op, align 8, !dbg !4176
  store ptr %2, ptr %nop, align 8, !dbg !4173
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #8, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4154, metadata !DIExpression()), !dbg !4178
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias) #8, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %alias, metadata !4155, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 256, ptr %nbuf) #8, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %nbuf, metadata !4156, metadata !DIExpression()), !dbg !4181
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4182
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4160, metadata !DIExpression()), !dbg !4183
  %3 = load ptr, ptr %nop, align 8, !dbg !4184
  %tobool = icmp ne ptr %3, null, !dbg !4184
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4186

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %nop, align 8, !dbg !4187
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, ptr %4, i32 0, i32 1, !dbg !4188
  %5 = load ptr, ptr %fh_to_dentry, align 8, !dbg !4188
  %tobool1 = icmp ne ptr %5, null, !dbg !4187
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4189

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @ERR_PTR(i64 noundef -116) #9, !dbg !4190
  store ptr %call, ptr %retval, align 8, !dbg !4191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !4191

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %nop, align 8, !dbg !4192
  %fh_to_dentry2 = getelementptr inbounds %struct.export_operations, ptr %6, i32 0, i32 1, !dbg !4193
  %7 = load ptr, ptr %fh_to_dentry2, align 8, !dbg !4193
  %8 = load ptr, ptr %mnt.addr, align 8, !dbg !4194
  %mnt_sb3 = getelementptr inbounds %struct.vfsmount, ptr %8, i32 0, i32 1, !dbg !4195
  %9 = load ptr, ptr %mnt_sb3, align 8, !dbg !4195
  %10 = load ptr, ptr %fid.addr, align 8, !dbg !4196
  %11 = load i32, ptr %fh_len.addr, align 4, !dbg !4197
  %12 = load i32, ptr %fileid_type.addr, align 4, !dbg !4198
  %call4 = call ptr %7(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) #9, !dbg !4192
  store ptr %call4, ptr %result, align 8, !dbg !4199
  %13 = load ptr, ptr %result, align 8, !dbg !4200
  %call5 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %13) #9, !dbg !4202
  br i1 %call5, label %if.then6, label %if.end7, !dbg !4203

if.then6:                                         ; preds = %if.end
  %14 = load ptr, ptr %result, align 8, !dbg !4204
  store ptr %14, ptr %retval, align 8, !dbg !4205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !4205

if.end7:                                          ; preds = %if.end
  %15 = load ptr, ptr %acceptable.addr, align 8, !dbg !4206
  %tobool8 = icmp ne ptr %15, null, !dbg !4206
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4208

if.then9:                                         ; preds = %if.end7
  %16 = load ptr, ptr %result, align 8, !dbg !4209
  store ptr %16, ptr %retval, align 8, !dbg !4210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !4210

if.end10:                                         ; preds = %if.end7
  %17 = load ptr, ptr %result, align 8, !dbg !4211
  %call11 = call zeroext i1 @d_is_dir(ptr noundef %17) #9, !dbg !4212
  br i1 %call11, label %if.then12, label %if.else, !dbg !4213

if.then12:                                        ; preds = %if.end10
  %18 = load ptr, ptr %result, align 8, !dbg !4214
  %d_flags = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 0, !dbg !4217
  %19 = load i32, ptr %d_flags, align 8, !dbg !4217
  %and = and i32 %19, 32, !dbg !4218
  %tobool13 = icmp ne i32 %and, 0, !dbg !4218
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !4219

if.then14:                                        ; preds = %if.then12
  %20 = load ptr, ptr %mnt.addr, align 8, !dbg !4220
  %21 = load ptr, ptr %result, align 8, !dbg !4222
  %arraydecay = getelementptr inbounds [256 x i8], ptr %nbuf, i64 0, i64 0, !dbg !4223
  %call15 = call i32 @reconnect_path(ptr noundef %20, ptr noundef %21, ptr noundef %arraydecay) #9, !dbg !4224
  store i32 %call15, ptr %err, align 4, !dbg !4225
  %22 = load i32, ptr %err, align 4, !dbg !4226
  %tobool16 = icmp ne i32 %22, 0, !dbg !4226
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4228

if.then17:                                        ; preds = %if.then14
  br label %err_result, !dbg !4229

if.end18:                                         ; preds = %if.then14
  br label %if.end19, !dbg !4230

if.end19:                                         ; preds = %if.end18, %if.then12
  %23 = load ptr, ptr %acceptable.addr, align 8, !dbg !4231
  %24 = load ptr, ptr %context.addr, align 8, !dbg !4233
  %25 = load ptr, ptr %result, align 8, !dbg !4234
  %call20 = call i32 %23(ptr noundef %24, ptr noundef %25) #9, !dbg !4231
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4231
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4235

if.then22:                                        ; preds = %if.end19
  store i32 -13, ptr %err, align 4, !dbg !4236
  br label %err_result, !dbg !4238

if.end23:                                         ; preds = %if.end19
  %26 = load ptr, ptr %result, align 8, !dbg !4239
  store ptr %26, ptr %retval, align 8, !dbg !4240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !4240

if.else:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_dir) #8, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %target_dir, metadata !4161, metadata !DIExpression()), !dbg !4242
  call void @llvm.lifetime.start.p0(i64 8, ptr %nresult) #8, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %nresult, metadata !4164, metadata !DIExpression()), !dbg !4243
  %27 = load ptr, ptr %result, align 8, !dbg !4244
  %28 = load ptr, ptr %acceptable.addr, align 8, !dbg !4245
  %29 = load ptr, ptr %context.addr, align 8, !dbg !4246
  %call24 = call ptr @find_acceptable_alias(ptr noundef %27, ptr noundef %28, ptr noundef %29) #9, !dbg !4247
  store ptr %call24, ptr %alias, align 8, !dbg !4248
  %30 = load ptr, ptr %alias, align 8, !dbg !4249
  %tobool25 = icmp ne ptr %30, null, !dbg !4249
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4251

if.then26:                                        ; preds = %if.else
  %31 = load ptr, ptr %alias, align 8, !dbg !4252
  store ptr %31, ptr %retval, align 8, !dbg !4253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4253

if.end27:                                         ; preds = %if.else
  store i32 -116, ptr %err, align 4, !dbg !4254
  %32 = load ptr, ptr %nop, align 8, !dbg !4255
  %fh_to_parent = getelementptr inbounds %struct.export_operations, ptr %32, i32 0, i32 2, !dbg !4257
  %33 = load ptr, ptr %fh_to_parent, align 8, !dbg !4257
  %tobool28 = icmp ne ptr %33, null, !dbg !4255
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4258

if.then29:                                        ; preds = %if.end27
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4259

if.end30:                                         ; preds = %if.end27
  %34 = load ptr, ptr %nop, align 8, !dbg !4260
  %fh_to_parent31 = getelementptr inbounds %struct.export_operations, ptr %34, i32 0, i32 2, !dbg !4261
  %35 = load ptr, ptr %fh_to_parent31, align 8, !dbg !4261
  %36 = load ptr, ptr %mnt.addr, align 8, !dbg !4262
  %mnt_sb32 = getelementptr inbounds %struct.vfsmount, ptr %36, i32 0, i32 1, !dbg !4263
  %37 = load ptr, ptr %mnt_sb32, align 8, !dbg !4263
  %38 = load ptr, ptr %fid.addr, align 8, !dbg !4264
  %39 = load i32, ptr %fh_len.addr, align 4, !dbg !4265
  %40 = load i32, ptr %fileid_type.addr, align 4, !dbg !4266
  %call33 = call ptr %35(ptr noundef %37, ptr noundef %38, i32 noundef %39, i32 noundef %40) #9, !dbg !4260
  store ptr %call33, ptr %target_dir, align 8, !dbg !4267
  %41 = load ptr, ptr %target_dir, align 8, !dbg !4268
  %tobool34 = icmp ne ptr %41, null, !dbg !4268
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4270

if.then35:                                        ; preds = %if.end30
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4271

if.end36:                                         ; preds = %if.end30
  %42 = load ptr, ptr %target_dir, align 8, !dbg !4272
  %call37 = call i64 @PTR_ERR(ptr noundef %42) #9, !dbg !4273
  %conv = trunc i64 %call37 to i32, !dbg !4273
  store i32 %conv, ptr %err, align 4, !dbg !4274
  %43 = load ptr, ptr %target_dir, align 8, !dbg !4275
  %call38 = call zeroext i1 @IS_ERR(ptr noundef %43) #9, !dbg !4277
  br i1 %call38, label %if.then39, label %if.end40, !dbg !4278

if.then39:                                        ; preds = %if.end36
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4279

if.end40:                                         ; preds = %if.end36
  %44 = load ptr, ptr %mnt.addr, align 8, !dbg !4280
  %45 = load ptr, ptr %target_dir, align 8, !dbg !4281
  %arraydecay41 = getelementptr inbounds [256 x i8], ptr %nbuf, i64 0, i64 0, !dbg !4282
  %call42 = call i32 @reconnect_path(ptr noundef %44, ptr noundef %45, ptr noundef %arraydecay41) #9, !dbg !4283
  store i32 %call42, ptr %err, align 4, !dbg !4284
  %46 = load i32, ptr %err, align 4, !dbg !4285
  %tobool43 = icmp ne i32 %46, 0, !dbg !4285
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !4287

if.then44:                                        ; preds = %if.end40
  %47 = load ptr, ptr %target_dir, align 8, !dbg !4288
  call void @dput(ptr noundef %47) #9, !dbg !4290
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4291

if.end45:                                         ; preds = %if.end40
  %48 = load ptr, ptr %mnt.addr, align 8, !dbg !4292
  %49 = load ptr, ptr %target_dir, align 8, !dbg !4293
  %arraydecay46 = getelementptr inbounds [256 x i8], ptr %nbuf, i64 0, i64 0, !dbg !4294
  %50 = load ptr, ptr %result, align 8, !dbg !4295
  %call47 = call i32 @exportfs_get_name(ptr noundef %48, ptr noundef %49, ptr noundef %arraydecay46, ptr noundef %50) #9, !dbg !4296
  store i32 %call47, ptr %err, align 4, !dbg !4297
  %51 = load i32, ptr %err, align 4, !dbg !4298
  %tobool48 = icmp ne i32 %51, 0, !dbg !4298
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4300

if.then49:                                        ; preds = %if.end45
  %52 = load ptr, ptr %target_dir, align 8, !dbg !4301
  call void @dput(ptr noundef %52) #9, !dbg !4303
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4304

if.end50:                                         ; preds = %if.end45
  %53 = load ptr, ptr %target_dir, align 8, !dbg !4305
  %d_inode = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 5, !dbg !4306
  %54 = load ptr, ptr %d_inode, align 8, !dbg !4306
  call void @inode_lock(ptr noundef %54) #9, !dbg !4307
  %55 = load ptr, ptr %mnt.addr, align 8, !dbg !4308
  %call51 = call ptr @mnt_idmap(ptr noundef %55) #9, !dbg !4309
  %arraydecay52 = getelementptr inbounds [256 x i8], ptr %nbuf, i64 0, i64 0, !dbg !4310
  %56 = load ptr, ptr %target_dir, align 8, !dbg !4311
  %arraydecay53 = getelementptr inbounds [256 x i8], ptr %nbuf, i64 0, i64 0, !dbg !4312
  %call54 = call i64 @strlen(ptr noundef %arraydecay53) #9, !dbg !4313
  %conv55 = trunc i64 %call54 to i32, !dbg !4313
  %call56 = call ptr @lookup_one(ptr noundef %call51, ptr noundef %arraydecay52, ptr noundef %56, i32 noundef %conv55) #9, !dbg !4314
  store ptr %call56, ptr %nresult, align 8, !dbg !4315
  %57 = load ptr, ptr %nresult, align 8, !dbg !4316
  %call57 = call zeroext i1 @IS_ERR(ptr noundef %57) #9, !dbg !4318
  br i1 %call57, label %if.end68, label %if.then58, !dbg !4319

if.then58:                                        ; preds = %if.end50
  %58 = load ptr, ptr %nresult, align 8, !dbg !4320
  %d_inode59 = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 5, !dbg !4320
  %59 = load ptr, ptr %d_inode59, align 8, !dbg !4320
  %60 = load ptr, ptr %result, align 8, !dbg !4320
  %d_inode60 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 5, !dbg !4320
  %61 = load ptr, ptr %d_inode60, align 8, !dbg !4320
  %cmp = icmp ne ptr %59, %61, !dbg !4320
  %lnot = xor i1 %cmp, true, !dbg !4320
  %lnot62 = xor i1 %lnot, true, !dbg !4320
  %lnot.ext = zext i1 %lnot62 to i32, !dbg !4320
  %conv63 = sext i32 %lnot.ext to i64, !dbg !4320
  %expval = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !4320
  %tobool64 = icmp ne i64 %expval, 0, !dbg !4320
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !4323

if.then65:                                        ; preds = %if.then58
  %62 = load ptr, ptr %nresult, align 8, !dbg !4324
  call void @dput(ptr noundef %62) #9, !dbg !4326
  %call66 = call ptr @ERR_PTR(i64 noundef -116) #9, !dbg !4327
  store ptr %call66, ptr %nresult, align 8, !dbg !4328
  br label %if.end67, !dbg !4329

if.end67:                                         ; preds = %if.then65, %if.then58
  br label %if.end68, !dbg !4330

if.end68:                                         ; preds = %if.end67, %if.end50
  %63 = load ptr, ptr %target_dir, align 8, !dbg !4331
  %d_inode69 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 5, !dbg !4332
  %64 = load ptr, ptr %d_inode69, align 8, !dbg !4332
  call void @inode_unlock(ptr noundef %64) #9, !dbg !4333
  %65 = load ptr, ptr %target_dir, align 8, !dbg !4334
  call void @dput(ptr noundef %65) #9, !dbg !4335
  %66 = load ptr, ptr %nresult, align 8, !dbg !4336
  %call70 = call zeroext i1 @IS_ERR(ptr noundef %66) #9, !dbg !4338
  br i1 %call70, label %if.then71, label %if.end74, !dbg !4339

if.then71:                                        ; preds = %if.end68
  %67 = load ptr, ptr %nresult, align 8, !dbg !4340
  %call72 = call i64 @PTR_ERR(ptr noundef %67) #9, !dbg !4342
  %conv73 = trunc i64 %call72 to i32, !dbg !4342
  store i32 %conv73, ptr %err, align 4, !dbg !4343
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4344

if.end74:                                         ; preds = %if.end68
  %68 = load ptr, ptr %result, align 8, !dbg !4345
  call void @dput(ptr noundef %68) #9, !dbg !4346
  %69 = load ptr, ptr %nresult, align 8, !dbg !4347
  store ptr %69, ptr %result, align 8, !dbg !4348
  %70 = load ptr, ptr %result, align 8, !dbg !4349
  %71 = load ptr, ptr %acceptable.addr, align 8, !dbg !4350
  %72 = load ptr, ptr %context.addr, align 8, !dbg !4351
  %call75 = call ptr @find_acceptable_alias(ptr noundef %70, ptr noundef %71, ptr noundef %72) #9, !dbg !4352
  store ptr %call75, ptr %alias, align 8, !dbg !4353
  %73 = load ptr, ptr %alias, align 8, !dbg !4354
  %tobool76 = icmp ne ptr %73, null, !dbg !4354
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !4356

if.then77:                                        ; preds = %if.end74
  store i32 -13, ptr %err, align 4, !dbg !4357
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4359

if.end78:                                         ; preds = %if.end74
  %74 = load ptr, ptr %alias, align 8, !dbg !4360
  store ptr %74, ptr %retval, align 8, !dbg !4361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4361

cleanup:                                          ; preds = %if.then77, %if.then71, %if.then49, %if.then44, %if.then39, %if.then35, %if.then29, %if.end78, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %nresult) #8, !dbg !4362
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_dir) #8, !dbg !4362
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup82 [
    i32 2, label %err_result
  ]

err_result:                                       ; preds = %cleanup, %if.then22, %if.then17
  call void @llvm.dbg.label(metadata !4165), !dbg !4363
  %75 = load ptr, ptr %result, align 8, !dbg !4364
  call void @dput(ptr noundef %75) #9, !dbg !4365
  %76 = load i32, ptr %err, align 4, !dbg !4366
  %conv80 = sext i32 %76 to i64, !dbg !4366
  %call81 = call ptr @ERR_PTR(i64 noundef %conv80) #9, !dbg !4367
  store ptr %call81, ptr %retval, align 8, !dbg !4368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !4368

cleanup82:                                        ; preds = %err_result, %cleanup, %if.end23, %if.then9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !4369
  call void @llvm.lifetime.end.p0(i64 256, ptr %nbuf) #8, !dbg !4369
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias) #8, !dbg !4369
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #8, !dbg !4369
  call void @llvm.lifetime.end.p0(i64 8, ptr %nop) #8, !dbg !4369
  %77 = load ptr, ptr %retval, align 8, !dbg !4369
  ret ptr %77, !dbg !4369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !4370 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  %0 = load i64, ptr %error.addr, align 8, !dbg !4377
  %1 = inttoptr i64 %0 to ptr, !dbg !4378
  ret ptr %1, !dbg !4379
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !4380 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4386
  %tobool = icmp ne ptr %0, null, !dbg !4386
  %lnot = xor i1 %tobool, true, !dbg !4386
  %lnot1 = xor i1 %lnot, true, !dbg !4386
  %lnot2 = xor i1 %lnot1, true, !dbg !4386
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4386
  %conv = sext i32 %lnot.ext to i64, !dbg !4386
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4386
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4386
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4387

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4388
  %2 = ptrtoint ptr %1 to i64, !dbg !4388
  %3 = inttoptr i64 %2 to ptr, !dbg !4388
  %4 = ptrtoint ptr %3 to i64, !dbg !4388
  %cmp = icmp uge i64 %4, -4095, !dbg !4388
  %lnot5 = xor i1 %cmp, true, !dbg !4388
  %lnot7 = xor i1 %lnot5, true, !dbg !4388
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4388
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4388
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !4388
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !4387
  br label %lor.end, !dbg !4387

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !4389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_dir(ptr noundef %dentry) #4 align 16 !dbg !4390 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4396
  %call = call zeroext i1 @d_can_lookup(ptr noundef %0) #9, !dbg !4397
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !4398

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4399
  %call1 = call zeroext i1 @d_is_autodir(ptr noundef %1) #9, !dbg !4400
  br label %lor.end, !dbg !4398

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !4401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reconnect_path(ptr noundef %mnt, ptr noundef %target_dir, ptr noundef %nbuf) #0 align 16 !dbg !4402 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %target_dir.addr = alloca ptr, align 8
  %nbuf.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4406, metadata !DIExpression()), !dbg !4411
  store ptr %target_dir, ptr %target_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_dir.addr, metadata !4407, metadata !DIExpression()), !dbg !4412
  store ptr %nbuf, ptr %nbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbuf.addr, metadata !4408, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #8, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4409, metadata !DIExpression()), !dbg !4415
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4410, metadata !DIExpression()), !dbg !4416
  %0 = load ptr, ptr %target_dir.addr, align 8, !dbg !4417
  %call = call ptr @dget(ptr noundef %0) #9, !dbg !4418
  store ptr %call, ptr %dentry, align 8, !dbg !4419
  br label %while.cond, !dbg !4420

while.cond:                                       ; preds = %if.end25, %entry
  %1 = load ptr, ptr %dentry, align 8, !dbg !4421
  %d_flags = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 0, !dbg !4422
  %2 = load i32, ptr %d_flags, align 8, !dbg !4422
  %and = and i32 %2, 32, !dbg !4423
  %tobool = icmp ne i32 %and, 0, !dbg !4420
  br i1 %tobool, label %while.body, label %while.end, !dbg !4420

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !4424

do.body:                                          ; preds = %while.body
  %3 = load ptr, ptr %dentry, align 8, !dbg !4426
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !4426
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 1, !dbg !4426
  %5 = load ptr, ptr %mnt_sb, align 8, !dbg !4426
  %s_root = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13, !dbg !4426
  %6 = load ptr, ptr %s_root, align 8, !dbg !4426
  %cmp = icmp eq ptr %3, %6, !dbg !4426
  %lnot = xor i1 %cmp, true, !dbg !4426
  %lnot1 = xor i1 %lnot, true, !dbg !4426
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4426
  %conv = sext i32 %lnot.ext to i64, !dbg !4426
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4426
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4426
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4429

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4426

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4430

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !4432

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4432

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4430

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 219, i32 0, i64 12) #8, !dbg !4434, !srcloc !4436
  br label %do.cond6, !dbg !4434

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4434

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !4430

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !4430

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !4430

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !4429

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !4429

do.end11:                                         ; preds = %do.cond10
  %7 = load ptr, ptr %dentry, align 8, !dbg !4437
  %8 = load ptr, ptr %dentry, align 8, !dbg !4437
  %d_parent = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 3, !dbg !4437
  %9 = load ptr, ptr %d_parent, align 8, !dbg !4437
  %cmp12 = icmp eq ptr %7, %9, !dbg !4437
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4439

if.then14:                                        ; preds = %do.end11
  %10 = load ptr, ptr %mnt.addr, align 8, !dbg !4440
  %11 = load ptr, ptr %dentry, align 8, !dbg !4441
  %12 = load ptr, ptr %nbuf.addr, align 8, !dbg !4442
  %call15 = call ptr @reconnect_one(ptr noundef %10, ptr noundef %11, ptr noundef %12) #9, !dbg !4443
  store ptr %call15, ptr %parent, align 8, !dbg !4444
  br label %if.end17, !dbg !4445

if.else:                                          ; preds = %do.end11
  %13 = load ptr, ptr %dentry, align 8, !dbg !4446
  %call16 = call ptr @dget_parent(ptr noundef %13) #9, !dbg !4447
  store ptr %call16, ptr %parent, align 8, !dbg !4448
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %14 = load ptr, ptr %parent, align 8, !dbg !4449
  %tobool18 = icmp ne ptr %14, null, !dbg !4449
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4451

if.then19:                                        ; preds = %if.end17
  br label %while.end, !dbg !4452

if.end20:                                         ; preds = %if.end17
  %15 = load ptr, ptr %dentry, align 8, !dbg !4453
  call void @dput(ptr noundef %15) #9, !dbg !4454
  %16 = load ptr, ptr %parent, align 8, !dbg !4455
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %16) #9, !dbg !4457
  br i1 %call21, label %if.then22, label %if.end25, !dbg !4458

if.then22:                                        ; preds = %if.end20
  %17 = load ptr, ptr %parent, align 8, !dbg !4459
  %call23 = call i64 @PTR_ERR(ptr noundef %17) #9, !dbg !4460
  %conv24 = trunc i64 %call23 to i32, !dbg !4460
  store i32 %conv24, ptr %retval, align 4, !dbg !4461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4461

if.end25:                                         ; preds = %if.end20
  %18 = load ptr, ptr %parent, align 8, !dbg !4462
  store ptr %18, ptr %dentry, align 8, !dbg !4463
  br label %while.cond, !dbg !4420, !llvm.loop !4464

while.end:                                        ; preds = %if.then19, %while.cond
  %19 = load ptr, ptr %dentry, align 8, !dbg !4468
  call void @dput(ptr noundef %19) #9, !dbg !4469
  %20 = load ptr, ptr %target_dir.addr, align 8, !dbg !4470
  call void @clear_disconnected(ptr noundef %20) #9, !dbg !4471
  store i32 0, ptr %retval, align 4, !dbg !4472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4472

cleanup:                                          ; preds = %while.end, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !4473
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #8, !dbg !4473
  %21 = load i32, ptr %retval, align 4, !dbg !4473
  ret i32 %21, !dbg !4473
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_acceptable_alias(ptr noundef %result, ptr noundef %acceptable, ptr noundef %context) #0 align 16 !dbg !4474 {
entry:
  %retval = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %acceptable.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %toput = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %____ptr14 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !4478, metadata !DIExpression()), !dbg !4494
  store ptr %acceptable, ptr %acceptable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acceptable.addr, metadata !4479, metadata !DIExpression()), !dbg !4495
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4480, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #8, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.lifetime.start.p0(i64 8, ptr %toput) #8, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %toput, metadata !4482, metadata !DIExpression()), !dbg !4499
  store ptr null, ptr %toput, align 8, !dbg !4499
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !4500
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4483, metadata !DIExpression()), !dbg !4501
  %0 = load ptr, ptr %acceptable.addr, align 8, !dbg !4502
  %1 = load ptr, ptr %context.addr, align 8, !dbg !4504
  %2 = load ptr, ptr %result.addr, align 8, !dbg !4505
  %call = call i32 %0(ptr noundef %1, ptr noundef %2) #9, !dbg !4502
  %tobool = icmp ne i32 %call, 0, !dbg !4502
  br i1 %tobool, label %if.then, label %if.end, !dbg !4506

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %result.addr, align 8, !dbg !4507
  store ptr %3, ptr %retval, align 8, !dbg !4508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4508

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %result.addr, align 8, !dbg !4509
  %d_inode = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5, !dbg !4510
  %5 = load ptr, ptr %d_inode, align 8, !dbg !4510
  store ptr %5, ptr %inode, align 8, !dbg !4511
  %6 = load ptr, ptr %inode, align 8, !dbg !4512
  %i_lock = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 19, !dbg !4513
  call void @spin_lock(ptr noundef %i_lock) #9, !dbg !4514
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #8, !dbg !4515
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4484, metadata !DIExpression()), !dbg !4515
  %7 = load ptr, ptr %inode, align 8, !dbg !4515
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 32, !dbg !4515
  %first = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !4515
  %9 = load ptr, ptr %first, align 8, !dbg !4515
  store ptr %9, ptr %____ptr, align 8, !dbg !4515
  %10 = load ptr, ptr %____ptr, align 8, !dbg !4515
  %tobool1 = icmp ne ptr %10, null, !dbg !4515
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !4515

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !4516
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4487, metadata !DIExpression()), !dbg !4516
  %11 = load ptr, ptr %____ptr, align 8, !dbg !4516
  store ptr %11, ptr %__mptr, align 8, !dbg !4516
  %12 = load ptr, ptr %__mptr, align 8, !dbg !4516
  %add.ptr = getelementptr i8, ptr %12, i64 -176, !dbg !4516
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !4516
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !4515
  %13 = load ptr, ptr %tmp2, align 8, !dbg !4516
  br label %cond.end, !dbg !4515

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4515

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ null, %cond.false ], !dbg !4515
  store ptr %cond, ptr %tmp, align 8, !dbg !4515
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #8, !dbg !4517
  %14 = load ptr, ptr %tmp, align 8, !dbg !4515
  store ptr %14, ptr %dentry, align 8, !dbg !4517
  br label %for.cond, !dbg !4517

for.cond:                                         ; preds = %cond.end22, %cond.end
  %15 = load ptr, ptr %dentry, align 8, !dbg !4518
  %tobool3 = icmp ne ptr %15, null, !dbg !4517
  br i1 %tobool3, label %for.body, label %for.end, !dbg !4517

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %dentry, align 8, !dbg !4519
  %call4 = call ptr @dget(ptr noundef %16) #9, !dbg !4521
  %17 = load ptr, ptr %inode, align 8, !dbg !4522
  %i_lock5 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 19, !dbg !4523
  call void @spin_unlock(ptr noundef %i_lock5) #9, !dbg !4524
  %18 = load ptr, ptr %toput, align 8, !dbg !4525
  %tobool6 = icmp ne ptr %18, null, !dbg !4525
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4527

if.then7:                                         ; preds = %for.body
  %19 = load ptr, ptr %toput, align 8, !dbg !4528
  call void @dput(ptr noundef %19) #9, !dbg !4529
  br label %if.end8, !dbg !4529

if.end8:                                          ; preds = %if.then7, %for.body
  %20 = load ptr, ptr %dentry, align 8, !dbg !4530
  %21 = load ptr, ptr %result.addr, align 8, !dbg !4532
  %cmp = icmp ne ptr %20, %21, !dbg !4533
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !4534

land.lhs.true:                                    ; preds = %if.end8
  %22 = load ptr, ptr %acceptable.addr, align 8, !dbg !4535
  %23 = load ptr, ptr %context.addr, align 8, !dbg !4536
  %24 = load ptr, ptr %dentry, align 8, !dbg !4537
  %call9 = call i32 %22(ptr noundef %23, ptr noundef %24) #9, !dbg !4535
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4535
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4538

if.then11:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %result.addr, align 8, !dbg !4539
  call void @dput(ptr noundef %25) #9, !dbg !4541
  %26 = load ptr, ptr %dentry, align 8, !dbg !4542
  store ptr %26, ptr %retval, align 8, !dbg !4543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4543

if.end12:                                         ; preds = %land.lhs.true, %if.end8
  %27 = load ptr, ptr %inode, align 8, !dbg !4544
  %i_lock13 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 19, !dbg !4545
  call void @spin_lock(ptr noundef %i_lock13) #9, !dbg !4546
  %28 = load ptr, ptr %dentry, align 8, !dbg !4547
  store ptr %28, ptr %toput, align 8, !dbg !4548
  br label %for.inc, !dbg !4549

for.inc:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr14) #8, !dbg !4550
  call void @llvm.dbg.declare(metadata ptr %____ptr14, metadata !4489, metadata !DIExpression()), !dbg !4550
  %29 = load ptr, ptr %dentry, align 8, !dbg !4550
  %d_u = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 15, !dbg !4550
  %next = getelementptr inbounds %struct.hlist_node, ptr %d_u, i32 0, i32 0, !dbg !4550
  %30 = load ptr, ptr %next, align 8, !dbg !4550
  store ptr %30, ptr %____ptr14, align 8, !dbg !4550
  %31 = load ptr, ptr %____ptr14, align 8, !dbg !4550
  %tobool16 = icmp ne ptr %31, null, !dbg !4550
  br i1 %tobool16, label %cond.true17, label %cond.false21, !dbg !4550

cond.true17:                                      ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #8, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !4492, metadata !DIExpression()), !dbg !4551
  %32 = load ptr, ptr %____ptr14, align 8, !dbg !4551
  store ptr %32, ptr %__mptr18, align 8, !dbg !4551
  %33 = load ptr, ptr %__mptr18, align 8, !dbg !4551
  %add.ptr20 = getelementptr i8, ptr %33, i64 -176, !dbg !4551
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #8, !dbg !4550
  %34 = load ptr, ptr %tmp19, align 8, !dbg !4551
  br label %cond.end22, !dbg !4550

cond.false21:                                     ; preds = %for.inc
  br label %cond.end22, !dbg !4550

cond.end22:                                       ; preds = %cond.false21, %cond.true17
  %cond23 = phi ptr [ %34, %cond.true17 ], [ null, %cond.false21 ], !dbg !4550
  store ptr %cond23, ptr %tmp15, align 8, !dbg !4550
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr14) #8, !dbg !4518
  %35 = load ptr, ptr %tmp15, align 8, !dbg !4550
  store ptr %35, ptr %dentry, align 8, !dbg !4518
  br label %for.cond, !dbg !4518, !llvm.loop !4552

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %inode, align 8, !dbg !4554
  %i_lock24 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 19, !dbg !4555
  call void @spin_unlock(ptr noundef %i_lock24) #9, !dbg !4556
  %37 = load ptr, ptr %toput, align 8, !dbg !4557
  %tobool25 = icmp ne ptr %37, null, !dbg !4557
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4559

if.then26:                                        ; preds = %for.end
  %38 = load ptr, ptr %toput, align 8, !dbg !4560
  call void @dput(ptr noundef %38) #9, !dbg !4561
  br label %if.end27, !dbg !4561

if.end27:                                         ; preds = %if.then26, %for.end
  store ptr null, ptr %retval, align 8, !dbg !4562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4562

cleanup:                                          ; preds = %if.end27, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 8, ptr %toput) #8, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #8, !dbg !4563
  %39 = load ptr, ptr %retval, align 8, !dbg !4563
  ret ptr %39, !dbg !4563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !4564 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4570
  %1 = ptrtoint ptr %0 to i64, !dbg !4571
  ret i64 %1, !dbg !4572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !4573 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4577
  %1 = ptrtoint ptr %0 to i64, !dbg !4577
  %2 = inttoptr i64 %1 to ptr, !dbg !4577
  %3 = ptrtoint ptr %2 to i64, !dbg !4577
  %cmp = icmp uge i64 %3, -4095, !dbg !4577
  %lnot = xor i1 %cmp, true, !dbg !4577
  %lnot1 = xor i1 %lnot, true, !dbg !4577
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4577
  %conv = sext i32 %lnot.ext to i64, !dbg !4577
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4577
  %tobool = icmp ne i64 %expval, 0, !dbg !4577
  ret i1 %tobool, !dbg !4578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @exportfs_get_name(ptr noundef %mnt, ptr noundef %dir, ptr noundef %name, ptr noundef %child) #0 align 16 !dbg !4579 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %nop = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4583, metadata !DIExpression()), !dbg !4589
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4584, metadata !DIExpression()), !dbg !4590
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4585, metadata !DIExpression()), !dbg !4591
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4586, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 8, ptr %nop) #8, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %nop, metadata !4587, metadata !DIExpression()), !dbg !4594
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4595
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4596
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4596
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9, !dbg !4597
  %2 = load ptr, ptr %s_export_op, align 8, !dbg !4597
  store ptr %2, ptr %nop, align 8, !dbg !4594
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #8, !dbg !4598
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4588, metadata !DIExpression()), !dbg !4599
  %mnt1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !4600
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !4601
  store ptr %3, ptr %mnt1, align 8, !dbg !4600
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4600
  %4 = load ptr, ptr %dir.addr, align 8, !dbg !4602
  store ptr %4, ptr %dentry, align 8, !dbg !4600
  %5 = load ptr, ptr %nop, align 8, !dbg !4603
  %get_name = getelementptr inbounds %struct.export_operations, ptr %5, i32 0, i32 3, !dbg !4605
  %6 = load ptr, ptr %get_name, align 8, !dbg !4605
  %tobool = icmp ne ptr %6, null, !dbg !4603
  br i1 %tobool, label %if.then, label %if.else, !dbg !4606

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %nop, align 8, !dbg !4607
  %get_name2 = getelementptr inbounds %struct.export_operations, ptr %7, i32 0, i32 3, !dbg !4608
  %8 = load ptr, ptr %get_name2, align 8, !dbg !4608
  %9 = load ptr, ptr %dir.addr, align 8, !dbg !4609
  %10 = load ptr, ptr %name.addr, align 8, !dbg !4610
  %11 = load ptr, ptr %child.addr, align 8, !dbg !4611
  %call = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11) #9, !dbg !4607
  store i32 %call, ptr %retval, align 4, !dbg !4612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4612

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %name.addr, align 8, !dbg !4613
  %13 = load ptr, ptr %child.addr, align 8, !dbg !4614
  %call3 = call i32 @get_name(ptr noundef %path, ptr noundef %12, ptr noundef %13) #9, !dbg !4615
  store i32 %call3, ptr %retval, align 4, !dbg !4616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4616

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #8, !dbg !4617
  call void @llvm.lifetime.end.p0(i64 8, ptr %nop) #8, !dbg !4617
  %14 = load i32, ptr %retval, align 4, !dbg !4617
  ret i32 %14, !dbg !4617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #4 align 16 !dbg !4618 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4622
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !4623
  call void @down_write(ptr noundef %i_rwsem) #9, !dbg !4624
  ret void, !dbg !4625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4626 dso_local ptr @lookup_one(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mnt_idmap(ptr noundef %mnt) #4 align 16 !dbg !4630 {
entry:
  %mnt.addr = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4636, metadata !DIExpression()), !dbg !4640
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #8, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4637, metadata !DIExpression()), !dbg !4641
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4644

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4642
  %mnt_idmap = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 3, !dbg !4642
  %1 = load volatile ptr, ptr %mnt_idmap, align 8, !dbg !4642
  store ptr %1, ptr %tmp, align 8, !dbg !4644
  %2 = load ptr, ptr %tmp, align 8, !dbg !4642
  store ptr %2, ptr %___p1, align 8, !dbg !4641
  br label %do.body1, !dbg !4641

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4646

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4646

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4641, !srcloc !4648
  %3 = load ptr, ptr %___p1, align 8, !dbg !4641
  store ptr %3, ptr %tmp4, align 8, !dbg !4641
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #8, !dbg !4649
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4641
  ret ptr %4, !dbg !4650
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4651 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #4 align 16 !dbg !4655 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4659
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !4660
  call void @up_write(ptr noundef %i_rwsem) #9, !dbg !4661
  ret void, !dbg !4662
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @exportfs_decode_fh(ptr noundef %mnt, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, ptr noundef %acceptable, ptr noundef %context) #0 align 16 !dbg !4663 {
entry:
  %retval = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fileid_type.addr = alloca i32, align 4
  %acceptable.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4665, metadata !DIExpression()), !dbg !4672
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4666, metadata !DIExpression()), !dbg !4673
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !4667, metadata !DIExpression()), !dbg !4674
  store i32 %fileid_type, ptr %fileid_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fileid_type.addr, metadata !4668, metadata !DIExpression()), !dbg !4675
  store ptr %acceptable, ptr %acceptable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acceptable.addr, metadata !4669, metadata !DIExpression()), !dbg !4676
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4670, metadata !DIExpression()), !dbg !4677
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4671, metadata !DIExpression()), !dbg !4679
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4680
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !4681
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !4682
  %3 = load i32, ptr %fileid_type.addr, align 4, !dbg !4683
  %4 = load ptr, ptr %acceptable.addr, align 8, !dbg !4684
  %5 = load ptr, ptr %context.addr, align 8, !dbg !4685
  %call = call ptr @exportfs_decode_fh_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #9, !dbg !4686
  store ptr %call, ptr %ret, align 8, !dbg !4687
  %6 = load ptr, ptr %ret, align 8, !dbg !4688
  %call1 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %6) #9, !dbg !4690
  br i1 %call1, label %if.then, label %if.end5, !dbg !4691

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %ret, align 8, !dbg !4692
  %call2 = call ptr @ERR_PTR(i64 noundef -12) #9, !dbg !4695
  %cmp = icmp eq ptr %7, %call2, !dbg !4696
  br i1 %cmp, label %if.then3, label %if.end, !dbg !4697

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %ret, align 8, !dbg !4698
  store ptr %8, ptr %retval, align 8, !dbg !4699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4699

if.end:                                           ; preds = %if.then
  %call4 = call ptr @ERR_PTR(i64 noundef -116) #9, !dbg !4700
  store ptr %call4, ptr %retval, align 8, !dbg !4701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4701

if.end5:                                          ; preds = %entry
  %9 = load ptr, ptr %ret, align 8, !dbg !4702
  store ptr %9, ptr %retval, align 8, !dbg !4703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4703

cleanup:                                          ; preds = %if.end5, %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !4704
  %10 = load ptr, ptr %retval, align 8, !dbg !4704
  ret ptr %10, !dbg !4704
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_can_lookup(ptr noundef %dentry) #4 align 16 !dbg !4705 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4709
  %call = call i32 @__d_entry_type(ptr noundef %0) #9, !dbg !4710
  %cmp = icmp eq i32 %call, 2097152, !dbg !4711
  ret i1 %cmp, !dbg !4712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_autodir(ptr noundef %dentry) #4 align 16 !dbg !4713 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4717
  %call = call i32 @__d_entry_type(ptr noundef %0) #9, !dbg !4718
  %cmp = icmp eq i32 %call, 3145728, !dbg !4719
  ret i1 %cmp, !dbg !4720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__d_entry_type(ptr noundef %dentry) #4 align 16 !dbg !4721 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4727
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !4728
  %1 = load i32, ptr %d_flags, align 8, !dbg !4728
  %and = and i32 %1, 7340032, !dbg !4729
  ret i32 %and, !dbg !4730
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #4 align 16 !dbg !4731 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4735
  %tobool = icmp ne ptr %0, null, !dbg !4735
  br i1 %tobool, label %if.then, label %if.end, !dbg !4737

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4738
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !4739
  call void @lockref_get(ptr noundef %d_lockref) #9, !dbg !4740
  br label %if.end, !dbg !4740

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4741
  ret ptr %2, !dbg !4742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @reconnect_one(ptr noundef %mnt, ptr noundef %dentry, ptr noundef %nbuf) #0 align 16 !dbg !4743 {
entry:
  %retval = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %nbuf.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4747, metadata !DIExpression()), !dbg !4755
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4748, metadata !DIExpression()), !dbg !4756
  store ptr %nbuf, ptr %nbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbuf.addr, metadata !4749, metadata !DIExpression()), !dbg !4757
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4750, metadata !DIExpression()), !dbg !4759
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !4760
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4751, metadata !DIExpression()), !dbg !4761
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4762
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4752, metadata !DIExpression()), !dbg !4763
  %call = call ptr @ERR_PTR(i64 noundef -13) #9, !dbg !4764
  store ptr %call, ptr %parent, align 8, !dbg !4765
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4766
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4767
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4767
  call void @inode_lock(ptr noundef %1) #9, !dbg !4768
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4769
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 1, !dbg !4771
  %3 = load ptr, ptr %mnt_sb, align 8, !dbg !4771
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 9, !dbg !4772
  %4 = load ptr, ptr %s_export_op, align 8, !dbg !4772
  %get_parent = getelementptr inbounds %struct.export_operations, ptr %4, i32 0, i32 4, !dbg !4773
  %5 = load ptr, ptr %get_parent, align 8, !dbg !4773
  %tobool = icmp ne ptr %5, null, !dbg !4769
  br i1 %tobool, label %if.then, label %if.end, !dbg !4774

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %mnt.addr, align 8, !dbg !4775
  %mnt_sb1 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1, !dbg !4776
  %7 = load ptr, ptr %mnt_sb1, align 8, !dbg !4776
  %s_export_op2 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 9, !dbg !4777
  %8 = load ptr, ptr %s_export_op2, align 8, !dbg !4777
  %get_parent3 = getelementptr inbounds %struct.export_operations, ptr %8, i32 0, i32 4, !dbg !4778
  %9 = load ptr, ptr %get_parent3, align 8, !dbg !4778
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !4779
  %call4 = call ptr %9(ptr noundef %10) #9, !dbg !4775
  store ptr %call4, ptr %parent, align 8, !dbg !4780
  br label %if.end, !dbg !4781

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !4782
  %d_inode5 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5, !dbg !4783
  %12 = load ptr, ptr %d_inode5, align 8, !dbg !4783
  call void @inode_unlock(ptr noundef %12) #9, !dbg !4784
  %13 = load ptr, ptr %parent, align 8, !dbg !4785
  %call6 = call zeroext i1 @IS_ERR(ptr noundef %13) #9, !dbg !4787
  br i1 %call6, label %if.then7, label %if.end9, !dbg !4788

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %tmp8, align 4, !dbg !4789
  %14 = load i32, ptr %tmp8, align 4, !dbg !4793
  %15 = load ptr, ptr %parent, align 8, !dbg !4794
  store ptr %15, ptr %retval, align 8, !dbg !4795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4795

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %tmp10, align 4, !dbg !4796
  %16 = load i32, ptr %tmp10, align 4, !dbg !4799
  %17 = load ptr, ptr %mnt.addr, align 8, !dbg !4800
  %18 = load ptr, ptr %parent, align 8, !dbg !4801
  %19 = load ptr, ptr %nbuf.addr, align 8, !dbg !4802
  %20 = load ptr, ptr %dentry.addr, align 8, !dbg !4803
  %call11 = call i32 @exportfs_get_name(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #9, !dbg !4804
  store i32 %call11, ptr %err, align 4, !dbg !4805
  %21 = load i32, ptr %err, align 4, !dbg !4806
  %cmp = icmp eq i32 %21, -2, !dbg !4808
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !4809

if.then12:                                        ; preds = %if.end9
  br label %out_reconnected, !dbg !4810

if.end13:                                         ; preds = %if.end9
  %22 = load i32, ptr %err, align 4, !dbg !4811
  %tobool14 = icmp ne i32 %22, 0, !dbg !4811
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4813

if.then15:                                        ; preds = %if.end13
  br label %out_err, !dbg !4814

if.end16:                                         ; preds = %if.end13
  store i32 0, ptr %tmp17, align 4, !dbg !4815
  %23 = load i32, ptr %tmp17, align 4, !dbg !4818
  %24 = load ptr, ptr %mnt.addr, align 8, !dbg !4819
  %call18 = call ptr @mnt_idmap(ptr noundef %24) #9, !dbg !4820
  %25 = load ptr, ptr %nbuf.addr, align 8, !dbg !4821
  %26 = load ptr, ptr %parent, align 8, !dbg !4822
  %27 = load ptr, ptr %nbuf.addr, align 8, !dbg !4823
  %call19 = call i64 @strlen(ptr noundef %27) #9, !dbg !4824
  %conv = trunc i64 %call19 to i32, !dbg !4824
  %call20 = call ptr @lookup_one_unlocked(ptr noundef %call18, ptr noundef %25, ptr noundef %26, i32 noundef %conv) #9, !dbg !4825
  store ptr %call20, ptr %tmp, align 8, !dbg !4826
  %28 = load ptr, ptr %tmp, align 8, !dbg !4827
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %28) #9, !dbg !4829
  br i1 %call21, label %if.then22, label %if.end26, !dbg !4830

if.then22:                                        ; preds = %if.end16
  store i32 0, ptr %tmp23, align 4, !dbg !4831
  %29 = load i32, ptr %tmp23, align 4, !dbg !4835
  %30 = load ptr, ptr %tmp, align 8, !dbg !4836
  %call24 = call i64 @PTR_ERR(ptr noundef %30) #9, !dbg !4837
  %conv25 = trunc i64 %call24 to i32, !dbg !4837
  store i32 %conv25, ptr %err, align 4, !dbg !4838
  br label %out_err, !dbg !4839

if.end26:                                         ; preds = %if.end16
  %31 = load ptr, ptr %tmp, align 8, !dbg !4840
  %32 = load ptr, ptr %dentry.addr, align 8, !dbg !4842
  %cmp27 = icmp ne ptr %31, %32, !dbg !4843
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4844

if.then29:                                        ; preds = %if.end26
  %33 = load ptr, ptr %tmp, align 8, !dbg !4845
  call void @dput(ptr noundef %33) #9, !dbg !4847
  br label %out_reconnected, !dbg !4848

if.end30:                                         ; preds = %if.end26
  %34 = load ptr, ptr %tmp, align 8, !dbg !4849
  call void @dput(ptr noundef %34) #9, !dbg !4850
  %35 = load ptr, ptr %dentry.addr, align 8, !dbg !4851
  %36 = load ptr, ptr %dentry.addr, align 8, !dbg !4851
  %d_parent = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 3, !dbg !4851
  %37 = load ptr, ptr %d_parent, align 8, !dbg !4851
  %cmp31 = icmp eq ptr %35, %37, !dbg !4851
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4853

if.then33:                                        ; preds = %if.end30
  store i32 -116, ptr %err, align 4, !dbg !4854
  br label %out_err, !dbg !4856

if.end34:                                         ; preds = %if.end30
  %38 = load ptr, ptr %parent, align 8, !dbg !4857
  store ptr %38, ptr %retval, align 8, !dbg !4858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4858

out_err:                                          ; preds = %if.then33, %if.then22, %if.then15
  call void @llvm.dbg.label(metadata !4753), !dbg !4859
  %39 = load ptr, ptr %parent, align 8, !dbg !4860
  call void @dput(ptr noundef %39) #9, !dbg !4861
  %40 = load i32, ptr %err, align 4, !dbg !4862
  %conv35 = sext i32 %40 to i64, !dbg !4862
  %call36 = call ptr @ERR_PTR(i64 noundef %conv35) #9, !dbg !4863
  store ptr %call36, ptr %retval, align 8, !dbg !4864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4864

out_reconnected:                                  ; preds = %if.then29, %if.then12
  call void @llvm.dbg.label(metadata !4754), !dbg !4865
  %41 = load ptr, ptr %parent, align 8, !dbg !4866
  call void @dput(ptr noundef %41) #9, !dbg !4867
  %42 = load ptr, ptr %dentry.addr, align 8, !dbg !4868
  %call37 = call zeroext i1 @dentry_connected(ptr noundef %42) #9, !dbg !4870
  br i1 %call37, label %if.end40, label %if.then38, !dbg !4871

if.then38:                                        ; preds = %out_reconnected
  %call39 = call ptr @ERR_PTR(i64 noundef -116) #9, !dbg !4872
  store ptr %call39, ptr %retval, align 8, !dbg !4873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4873

if.end40:                                         ; preds = %out_reconnected
  store ptr null, ptr %retval, align 8, !dbg !4874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4874

cleanup:                                          ; preds = %if.end40, %if.then38, %out_err, %if.end34, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !4875
  %43 = load ptr, ptr %retval, align 8, !dbg !4875
  ret ptr %43, !dbg !4875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_disconnected(ptr noundef %dentry) #0 align 16 !dbg !4876 {
entry:
  %dentry.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4878, metadata !DIExpression()), !dbg !4886
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4887
  %call = call ptr @dget(ptr noundef %0) #9, !dbg !4888
  br label %while.cond, !dbg !4889

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4890
  %d_flags = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 0, !dbg !4891
  %2 = load i32, ptr %d_flags, align 8, !dbg !4891
  %and = and i32 %2, 32, !dbg !4892
  %tobool = icmp ne i32 %and, 0, !dbg !4889
  br i1 %tobool, label %while.body, label %while.end, !dbg !4889

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4879, metadata !DIExpression()), !dbg !4894
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4895
  %call1 = call ptr @dget_parent(ptr noundef %3) #9, !dbg !4896
  store ptr %call1, ptr %parent, align 8, !dbg !4894
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4881, metadata !DIExpression()), !dbg !4897
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4897
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !4897
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3, !dbg !4897
  %6 = load ptr, ptr %d_parent, align 8, !dbg !4897
  %cmp = icmp eq ptr %4, %6, !dbg !4897
  %lnot = xor i1 %cmp, true, !dbg !4897
  %lnot2 = xor i1 %lnot, true, !dbg !4897
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4897
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4897
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4898
  %tobool3 = icmp ne i32 %7, 0, !dbg !4898
  %lnot4 = xor i1 %tobool3, true, !dbg !4898
  %lnot6 = xor i1 %lnot4, true, !dbg !4898
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4898
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4898
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4898
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4898
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4897

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !4898

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4883, metadata !DIExpression()), !dbg !4899
  store i32 2307, ptr %__flags, align 4, !dbg !4899
  br label %do.body9, !dbg !4899

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4900

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4900

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4899

do.body10:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !4902
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 97, i32 %8, i64 12) #8, !dbg !4902, !srcloc !4904
  br label %do.cond11, !dbg !4902

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4902

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4899

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4905

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4905

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !4898
  br label %do.cond16, !dbg !4899

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4899

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4899

if.end:                                           ; preds = %do.end17, %while.body
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4897
  %tobool18 = icmp ne i32 %9, 0, !dbg !4897
  %lnot19 = xor i1 %tobool18, true, !dbg !4897
  %lnot21 = xor i1 %lnot19, true, !dbg !4897
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4897
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4897
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4897
  store i64 %expval24, ptr %tmp, align 8, !dbg !4898
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !4907
  %10 = load i64, ptr %tmp, align 8, !dbg !4897
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !4908
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7, !dbg !4909
  %12 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4909
  %lock = getelementptr inbounds %struct.anon.25, ptr %12, i32 0, i32 0, !dbg !4909
  call void @spin_lock(ptr noundef %lock) #9, !dbg !4910
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !4911
  %d_flags25 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 0, !dbg !4912
  %14 = load i32, ptr %d_flags25, align 8, !dbg !4913
  %and26 = and i32 %14, -33, !dbg !4913
  store i32 %and26, ptr %d_flags25, align 8, !dbg !4913
  %15 = load ptr, ptr %dentry.addr, align 8, !dbg !4914
  %d_lockref27 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7, !dbg !4915
  %16 = getelementptr inbounds %struct.lockref, ptr %d_lockref27, i32 0, i32 0, !dbg !4915
  %lock28 = getelementptr inbounds %struct.anon.25, ptr %16, i32 0, i32 0, !dbg !4915
  call void @spin_unlock(ptr noundef %lock28) #9, !dbg !4916
  %17 = load ptr, ptr %dentry.addr, align 8, !dbg !4917
  call void @dput(ptr noundef %17) #9, !dbg !4918
  %18 = load ptr, ptr %parent, align 8, !dbg !4919
  store ptr %18, ptr %dentry.addr, align 8, !dbg !4920
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !4921
  br label %while.cond, !dbg !4889, !llvm.loop !4922

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %dentry.addr, align 8, !dbg !4923
  call void @dput(ptr noundef %19) #9, !dbg !4924
  ret void, !dbg !4925
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4926 dso_local void @lockref_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4930 dso_local ptr @lookup_one_unlocked(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dentry_connected(ptr noundef %dentry) #0 align 16 !dbg !4931 {
entry:
  %retval = alloca i1, align 1
  %dentry.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4935, metadata !DIExpression()), !dbg !4938
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4939
  %call = call ptr @dget(ptr noundef %0) #9, !dbg !4940
  br label %while.cond, !dbg !4941

while.cond:                                       ; preds = %cleanup.cont, %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4942
  %d_flags = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 0, !dbg !4943
  %2 = load i32, ptr %d_flags, align 8, !dbg !4943
  %and = and i32 %2, 32, !dbg !4944
  %tobool = icmp ne i32 %and, 0, !dbg !4941
  br i1 %tobool, label %while.body, label %while.end, !dbg !4941

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4936, metadata !DIExpression()), !dbg !4946
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4947
  %call1 = call ptr @dget_parent(ptr noundef %3) #9, !dbg !4948
  store ptr %call1, ptr %parent, align 8, !dbg !4946
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4949
  call void @dput(ptr noundef %4) #9, !dbg !4950
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !4951
  %6 = load ptr, ptr %parent, align 8, !dbg !4953
  %cmp = icmp eq ptr %5, %6, !dbg !4954
  br i1 %cmp, label %if.then, label %if.end, !dbg !4955

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %parent, align 8, !dbg !4956
  call void @dput(ptr noundef %7) #9, !dbg !4958
  store i1 false, ptr %retval, align 1, !dbg !4959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4959

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %parent, align 8, !dbg !4960
  store ptr %8, ptr %dentry.addr, align 8, !dbg !4961
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4962
  br label %cleanup, !dbg !4962

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !4962
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4941, !llvm.loop !4963

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !4964
  call void @dput(ptr noundef %9) #9, !dbg !4965
  store i1 true, ptr %retval, align 1, !dbg !4966
  br label %return, !dbg !4966

return:                                           ; preds = %while.end, %cleanup
  %10 = load i1, ptr %retval, align 1, !dbg !4967
  ret i1 %10, !dbg !4967

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !4968 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4976
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4976
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !4976
  ret void, !dbg !4977
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !4978 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4982
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4982
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !4982
  ret void, !dbg !4983
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4984 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4989 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_name(ptr noundef %path, ptr noundef %name, ptr noundef %child) #0 align 16 !dbg !4990 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %error = alloca i32, align 4
  %file = alloca ptr, align 8
  %stat = alloca %struct.kstat, align 8
  %child_path = alloca %struct.path, align 8
  %buffer = alloca %struct.getdents_callback, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %old_seq = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4994, metadata !DIExpression()), !dbg !5008
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4995, metadata !DIExpression()), !dbg !5009
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4996, metadata !DIExpression()), !dbg !5010
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #8, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !4997, metadata !DIExpression()), !dbg !5012
  br label %do.body, !dbg !5013

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5015

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5015

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #9, !dbg !5013
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !5013
  %0 = load ptr, ptr %cred1, align 32, !dbg !5013
  store ptr %0, ptr %tmp, align 8, !dbg !5015
  %1 = load ptr, ptr %tmp, align 8, !dbg !5013
  store ptr %1, ptr %cred, align 8, !dbg !5012
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #8, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !4998, metadata !DIExpression()), !dbg !5018
  %2 = load ptr, ptr %path.addr, align 8, !dbg !5019
  %dentry = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1, !dbg !5020
  %3 = load ptr, ptr %dentry, align 8, !dbg !5020
  %d_inode = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5, !dbg !5021
  %4 = load ptr, ptr %d_inode, align 8, !dbg !5021
  store ptr %4, ptr %dir, align 8, !dbg !5018
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !5022
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4999, metadata !DIExpression()), !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8, !dbg !5024
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5000, metadata !DIExpression()), !dbg !5025
  call void @llvm.lifetime.start.p0(i64 160, ptr %stat) #8, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %stat, metadata !5001, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 16, ptr %child_path) #8, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %child_path, metadata !5002, metadata !DIExpression()), !dbg !5029
  %mnt = getelementptr inbounds %struct.path, ptr %child_path, i32 0, i32 0, !dbg !5030
  %5 = load ptr, ptr %path.addr, align 8, !dbg !5031
  %mnt2 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 0, !dbg !5032
  %6 = load ptr, ptr %mnt2, align 8, !dbg !5032
  store ptr %6, ptr %mnt, align 8, !dbg !5030
  %dentry3 = getelementptr inbounds %struct.path, ptr %child_path, i32 0, i32 1, !dbg !5030
  %7 = load ptr, ptr %child.addr, align 8, !dbg !5033
  store ptr %7, ptr %dentry3, align 8, !dbg !5030
  call void @llvm.lifetime.start.p0(i64 40, ptr %buffer) #8, !dbg !5034
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5003, metadata !DIExpression()), !dbg !5035
  %ctx = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 0, !dbg !5036
  %actor = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 0, !dbg !5037
  store ptr @filldir_one, ptr %actor, align 8, !dbg !5037
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1, !dbg !5037
  store i64 0, ptr %pos, align 8, !dbg !5037
  %name4 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 1, !dbg !5036
  %8 = load ptr, ptr %name.addr, align 8, !dbg !5038
  store ptr %8, ptr %name4, align 8, !dbg !5036
  %ino = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 2, !dbg !5036
  store i64 0, ptr %ino, align 8, !dbg !5036
  %found = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 3, !dbg !5036
  store i32 0, ptr %found, align 8, !dbg !5036
  %sequence = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 4, !dbg !5036
  store i32 0, ptr %sequence, align 4, !dbg !5036
  store i32 -20, ptr %error, align 4, !dbg !5039
  %9 = load ptr, ptr %dir, align 8, !dbg !5040
  %tobool = icmp ne ptr %9, null, !dbg !5040
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5042

lor.lhs.false:                                    ; preds = %do.end
  %10 = load ptr, ptr %dir, align 8, !dbg !5043
  %i_mode = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 0, !dbg !5043
  %11 = load i16, ptr %i_mode, align 8, !dbg !5043
  %conv = zext i16 %11 to i32, !dbg !5043
  %and = and i32 %conv, 61440, !dbg !5043
  %cmp = icmp eq i32 %and, 16384, !dbg !5043
  br i1 %cmp, label %if.end, label %if.then, !dbg !5044

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %out, !dbg !5045

if.end:                                           ; preds = %lor.lhs.false
  store i32 -22, ptr %error, align 4, !dbg !5046
  %12 = load ptr, ptr %dir, align 8, !dbg !5047
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 39, !dbg !5049
  %14 = load ptr, ptr %13, align 8, !dbg !5049
  %tobool6 = icmp ne ptr %14, null, !dbg !5047
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5050

if.then7:                                         ; preds = %if.end
  br label %out, !dbg !5051

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @vfs_getattr_nosec(ptr noundef %child_path, ptr noundef %stat, i32 noundef 256, i32 noundef 0) #9, !dbg !5052
  store i32 %call9, ptr %error, align 4, !dbg !5053
  %15 = load i32, ptr %error, align 4, !dbg !5054
  %tobool10 = icmp ne i32 %15, 0, !dbg !5054
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5056

if.then11:                                        ; preds = %if.end8
  %16 = load i32, ptr %error, align 4, !dbg !5057
  store i32 %16, ptr %retval, align 4, !dbg !5058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5058

if.end12:                                         ; preds = %if.end8
  %ino13 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6, !dbg !5059
  %17 = load i64, ptr %ino13, align 8, !dbg !5059
  %ino14 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 2, !dbg !5060
  store i64 %17, ptr %ino14, align 8, !dbg !5061
  %18 = load ptr, ptr %path.addr, align 8, !dbg !5062
  %19 = load ptr, ptr %cred, align 8, !dbg !5063
  %call15 = call ptr @dentry_open(ptr noundef %18, i32 noundef 0, ptr noundef %19) #9, !dbg !5064
  store ptr %call15, ptr %file, align 8, !dbg !5065
  %20 = load ptr, ptr %file, align 8, !dbg !5066
  %call16 = call i64 @PTR_ERR(ptr noundef %20) #9, !dbg !5067
  %conv17 = trunc i64 %call16 to i32, !dbg !5067
  store i32 %conv17, ptr %error, align 4, !dbg !5068
  %21 = load ptr, ptr %file, align 8, !dbg !5069
  %call18 = call zeroext i1 @IS_ERR(ptr noundef %21) #9, !dbg !5071
  br i1 %call18, label %if.then19, label %if.end20, !dbg !5072

if.then19:                                        ; preds = %if.end12
  br label %out, !dbg !5073

if.end20:                                         ; preds = %if.end12
  store i32 -22, ptr %error, align 4, !dbg !5074
  %22 = load ptr, ptr %file, align 8, !dbg !5075
  %f_op = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 12, !dbg !5077
  %23 = load ptr, ptr %f_op, align 8, !dbg !5077
  %iterate_shared = getelementptr inbounds %struct.file_operations, ptr %23, i32 0, i32 7, !dbg !5078
  %24 = load ptr, ptr %iterate_shared, align 8, !dbg !5078
  %tobool21 = icmp ne ptr %24, null, !dbg !5075
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !5079

if.then22:                                        ; preds = %if.end20
  br label %out_close, !dbg !5080

if.end23:                                         ; preds = %if.end20
  %sequence24 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 4, !dbg !5081
  store i32 0, ptr %sequence24, align 4, !dbg !5082
  br label %while.cond, !dbg !5083

while.cond:                                       ; preds = %cleanup.cont, %if.end23
  br label %while.body, !dbg !5083

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_seq) #8, !dbg !5084
  call void @llvm.dbg.declare(metadata ptr %old_seq, metadata !5004, metadata !DIExpression()), !dbg !5085
  %sequence25 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 4, !dbg !5086
  %25 = load i32, ptr %sequence25, align 4, !dbg !5086
  store i32 %25, ptr %old_seq, align 4, !dbg !5085
  %26 = load ptr, ptr %file, align 8, !dbg !5087
  %ctx26 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 0, !dbg !5088
  %call27 = call i32 @iterate_dir(ptr noundef %26, ptr noundef %ctx26) #9, !dbg !5089
  store i32 %call27, ptr %error, align 4, !dbg !5090
  %found28 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 3, !dbg !5091
  %27 = load i32, ptr %found28, align 8, !dbg !5091
  %tobool29 = icmp ne i32 %27, 0, !dbg !5093
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5094

if.then30:                                        ; preds = %while.body
  store i32 0, ptr %error, align 4, !dbg !5095
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

if.end31:                                         ; preds = %while.body
  %28 = load i32, ptr %error, align 4, !dbg !5098
  %cmp32 = icmp slt i32 %28, 0, !dbg !5100
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5101

if.then34:                                        ; preds = %if.end31
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5102

if.end35:                                         ; preds = %if.end31
  store i32 -2, ptr %error, align 4, !dbg !5103
  %29 = load i32, ptr %old_seq, align 4, !dbg !5104
  %sequence36 = getelementptr inbounds %struct.getdents_callback, ptr %buffer, i32 0, i32 4, !dbg !5106
  %30 = load i32, ptr %sequence36, align 4, !dbg !5106
  %cmp37 = icmp eq i32 %29, %30, !dbg !5107
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !5108

if.then39:                                        ; preds = %if.end35
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5109

if.end40:                                         ; preds = %if.end35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5110
  br label %cleanup, !dbg !5110

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then34, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_seq) #8, !dbg !5110
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5083, !llvm.loop !5111

while.end:                                        ; preds = %cleanup
  br label %out_close, !dbg !5083

out_close:                                        ; preds = %while.end, %if.then22
  call void @llvm.dbg.label(metadata !5006), !dbg !5112
  %31 = load ptr, ptr %file, align 8, !dbg !5113
  call void @fput(ptr noundef %31) #9, !dbg !5114
  br label %out, !dbg !5114

out:                                              ; preds = %out_close, %if.then19, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !5007), !dbg !5115
  %32 = load i32, ptr %error, align 4, !dbg !5116
  store i32 %32, ptr %retval, align 4, !dbg !5117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5117

cleanup41:                                        ; preds = %out, %if.then11
  call void @llvm.lifetime.end.p0(i64 40, ptr %buffer) #8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 16, ptr %child_path) #8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 160, ptr %stat) #8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #8, !dbg !5118
  %33 = load i32, ptr %retval, align 4, !dbg !5118
  ret i32 %33, !dbg !5118

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !5119 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5124, metadata !DIExpression()), !dbg !5130
  br label %do.body, !dbg !5130

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !5131
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5126, metadata !DIExpression()), !dbg !5131
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5131
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5131
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !5130
  br label %do.cond, !dbg !5131

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5131

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5128, metadata !DIExpression()), !dbg !5132
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #10, !dbg !5132, !srcloc !5133
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5132
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5132
  %3 = inttoptr i64 %2 to ptr, !dbg !5132
  store ptr %3, ptr %tmp, align 8, !dbg !5132
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !5130
  %4 = load ptr, ptr %tmp, align 8, !dbg !5132
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5130
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5130
  store ptr %5, ptr %tmp1, align 8, !dbg !5130
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !5134
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5130
  ret ptr %6, !dbg !5135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @filldir_one(ptr noundef %ctx, ptr noundef %name, i32 noundef %len, i64 noundef %pos, i64 noundef %ino, i32 noundef %d_type) #0 align 16 !dbg !5136 {
entry:
  %retval = alloca i1, align 1
  %ctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %ino.addr = alloca i64, align 8
  %d_type.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5138, metadata !DIExpression()), !dbg !5147
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5139, metadata !DIExpression()), !dbg !5148
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5140, metadata !DIExpression()), !dbg !5149
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5141, metadata !DIExpression()), !dbg !5150
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !5142, metadata !DIExpression()), !dbg !5151
  store i32 %d_type, ptr %d_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %d_type.addr, metadata !5143, metadata !DIExpression()), !dbg !5152
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #8, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5144, metadata !DIExpression()), !dbg !5154
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5145, metadata !DIExpression()), !dbg !5155
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !5155
  store ptr %0, ptr %__mptr, align 8, !dbg !5155
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5155
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5155
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5156
  %2 = load ptr, ptr %tmp, align 8, !dbg !5155
  store ptr %2, ptr %buf, align 8, !dbg !5154
  %3 = load ptr, ptr %buf, align 8, !dbg !5157
  %sequence = getelementptr inbounds %struct.getdents_callback, ptr %3, i32 0, i32 4, !dbg !5158
  %4 = load i32, ptr %sequence, align 4, !dbg !5159
  %inc = add i32 %4, 1, !dbg !5159
  store i32 %inc, ptr %sequence, align 4, !dbg !5159
  %5 = load ptr, ptr %buf, align 8, !dbg !5160
  %ino1 = getelementptr inbounds %struct.getdents_callback, ptr %5, i32 0, i32 2, !dbg !5162
  %6 = load i64, ptr %ino1, align 8, !dbg !5162
  %7 = load i64, ptr %ino.addr, align 8, !dbg !5163
  %cmp = icmp eq i64 %6, %7, !dbg !5164
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5165

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, ptr %len.addr, align 4, !dbg !5166
  %cmp2 = icmp sle i32 %8, 255, !dbg !5167
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5168

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %buf, align 8, !dbg !5169
  %name3 = getelementptr inbounds %struct.getdents_callback, ptr %9, i32 0, i32 1, !dbg !5171
  %10 = load ptr, ptr %name3, align 8, !dbg !5171
  %11 = load ptr, ptr %name.addr, align 8, !dbg !5172
  %12 = load i32, ptr %len.addr, align 4, !dbg !5173
  %conv = sext i32 %12 to i64, !dbg !5173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %11, i64 %conv, i1 false), !dbg !5174
  %13 = load ptr, ptr %buf, align 8, !dbg !5175
  %name4 = getelementptr inbounds %struct.getdents_callback, ptr %13, i32 0, i32 1, !dbg !5176
  %14 = load ptr, ptr %name4, align 8, !dbg !5176
  %15 = load i32, ptr %len.addr, align 4, !dbg !5177
  %idxprom = sext i32 %15 to i64, !dbg !5175
  %arrayidx = getelementptr i8, ptr %14, i64 %idxprom, !dbg !5175
  store i8 0, ptr %arrayidx, align 1, !dbg !5178
  %16 = load ptr, ptr %buf, align 8, !dbg !5179
  %found = getelementptr inbounds %struct.getdents_callback, ptr %16, i32 0, i32 3, !dbg !5180
  store i32 1, ptr %found, align 8, !dbg !5181
  store i1 false, ptr %retval, align 1, !dbg !5182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5182

if.end:                                           ; preds = %land.lhs.true, %entry
  store i1 true, ptr %retval, align 1, !dbg !5183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5183

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #8, !dbg !5184
  %17 = load i1, ptr %retval, align 1, !dbg !5184
  ret i1 %17, !dbg !5184
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5185 dso_local i32 @vfs_getattr_nosec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5188 dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5191 dso_local i32 @iterate_dir(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5192 dso_local void @fput(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5194 dso_local void @down_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5198 dso_local void @up_write(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958}
!llvm.ident = !{!3959}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_exportfs_encode_inode_fh261", scope: !2, file: !3, line: 411, type: !87, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/exportfs/.expfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/exportfs/exportfs\22 -D KBUILD_BASENAME=\22expfs\22 -D KBUILD_MODNAME=\22exportfs\22 -D __KBUILD_MODNAME=kmod_exportfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/exportfs/expfs.ll fs/exportfs/expfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !86, globals: !3931, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/exportfs/expfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "274f02f3f4dbf3b0b296fd647342493f")
!4 = !{!5, !13, !21, !28, !34, !39, !45, !50, !56, !63, !81}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fid_type", file: !64, line: 25, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/exportfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b88049a7651ed625da9f6bb7042c568")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!66 = !DIEnumerator(name: "FILEID_ROOT", value: 0)
!67 = !DIEnumerator(name: "FILEID_INO32_GEN", value: 1)
!68 = !DIEnumerator(name: "FILEID_INO32_GEN_PARENT", value: 2)
!69 = !DIEnumerator(name: "FILEID_BTRFS_WITHOUT_PARENT", value: 77)
!70 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT", value: 78)
!71 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT_ROOT", value: 79)
!72 = !DIEnumerator(name: "FILEID_UDF_WITHOUT_PARENT", value: 81)
!73 = !DIEnumerator(name: "FILEID_UDF_WITH_PARENT", value: 82)
!74 = !DIEnumerator(name: "FILEID_NILFS_WITHOUT_PARENT", value: 97)
!75 = !DIEnumerator(name: "FILEID_NILFS_WITH_PARENT", value: 98)
!76 = !DIEnumerator(name: "FILEID_FAT_WITHOUT_PARENT", value: 113)
!77 = !DIEnumerator(name: "FILEID_FAT_WITH_PARENT", value: 114)
!78 = !DIEnumerator(name: "FILEID_LUSTRE", value: 151)
!79 = !DIEnumerator(name: "FILEID_KERNFS", value: 254)
!80 = !DIEnumerator(name: "FILEID_INVALID", value: 255)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 10, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "false", value: 0)
!85 = !DIEnumerator(name: "true", value: 1)
!86 = !{!87, !88, !89, !287, !452, !3919, !2308, !3920, !3928}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !91, line: 82, size: 1536, elements: !92)
!91 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!92 = !{!93, !94, !104, !112, !113, !136, !3886, !3888, !3901, !3902, !3903, !3904, !3905, !3911, !3912, !3913}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !90, file: !91, line: 84, baseType: !7, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !90, file: !91, line: 85, baseType: !95, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !96, line: 275, baseType: !97)
!96 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !96, line: 275, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !97, file: !96, line: 275, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !96, line: 69, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !96, line: 64, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !101, file: !96, line: 65, baseType: !7, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !90, file: !91, line: 86, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !106, line: 38, size: 128, elements: !107)
!106 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !106, line: 39, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !105, file: !106, line: 39, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !90, file: !91, line: 87, baseType: !89, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !90, file: !91, line: 88, baseType: !114, size: 128, offset: 256)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !91, line: 49, size: 128, elements: !115)
!115 = !{!116, !132}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !91, line: 50, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !91, line: 50, size: 64, elements: !118)
!118 = !{!119, !128}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !91, line: 51, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !117, file: !91, line: 51, size: 64, elements: !121)
!121 = !{!122, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !120, file: !91, line: 52, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !124, line: 21, baseType: !125)
!124 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !126, line: 27, baseType: !7)
!126 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !91, line: 52, baseType: !123, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !117, file: !91, line: 54, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !124, line: 23, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !126, line: 31, baseType: !131)
!131 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !91, line: 56, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !90, file: !91, line: 89, baseType: !137, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !139)
!139 = !{!140, !144, !145, !154, !160, !167, !168, !171, !172, !3824, !3825, !3826, !3827, !3828, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3868, !3871, !3872, !3873, !3882, !3883, !3884, !3885}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !138, file: !35, line: 642, baseType: !141, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !142, line: 24, baseType: !143)
!142 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !138, file: !35, line: 643, baseType: !143, size: 16, offset: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !138, file: !35, line: 644, baseType: !146, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !147, line: 23, baseType: !148)
!147 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 21, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !148, file: !147, line: 22, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !142, line: 37, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !153, line: 49, baseType: !7)
!153 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !138, file: !35, line: 645, baseType: !155, size: 128, offset: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !142, line: 190, size: 128, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !142, line: 191, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !142, line: 191, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !138, file: !35, line: 646, baseType: !161, size: 32, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !147, line: 28, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 26, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !162, file: !147, line: 27, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !142, line: 38, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !153, line: 50, baseType: !7)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !138, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !138, file: !35, line: 650, baseType: !169, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !138, file: !35, line: 651, baseType: !169, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !138, file: !35, line: 654, baseType: !173, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !176)
!176 = !{!177, !181, !197, !205, !211, !216, !220, !224, !228, !232, !236, !237, !243, !247, !3746, !3775, !3779, !3785, !3789, !3793, !3797, !3801, !3805, !3811, !3815}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !175, file: !35, line: 1967, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!89, !137, !89, !7}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !175, file: !35, line: 1968, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !89, !137, !188}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !190, line: 10, size: 128, elements: !191)
!190 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !189, file: !190, line: 11, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !87}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !189, file: !190, line: 12, baseType: !87, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !175, file: !35, line: 1969, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !202, !137, !201}
!201 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !204, line: 42, flags: DIFlagFwdDecl)
!204 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !175, file: !35, line: 1970, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!169, !137, !201, !209}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !142, line: 35, baseType: !210)
!210 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !175, file: !35, line: 1972, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!201, !89, !215, !201}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !175, file: !35, line: 1974, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!201, !202, !137, !89, !141, !209}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !175, file: !35, line: 1976, baseType: !221, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!201, !89, !137, !89}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !175, file: !35, line: 1977, baseType: !225, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!201, !137, !89}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !175, file: !35, line: 1978, baseType: !229, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!201, !202, !137, !89, !185}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !175, file: !35, line: 1980, baseType: !233, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!201, !202, !137, !89, !141}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !175, file: !35, line: 1982, baseType: !225, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !175, file: !35, line: 1983, baseType: !238, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!201, !202, !137, !89, !141, !241}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !142, line: 21, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !142, line: 18, baseType: !123)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !175, file: !35, line: 1985, baseType: !244, size: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!201, !202, !137, !89, !137, !89, !7}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !175, file: !35, line: 1987, baseType: !248, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!201, !202, !89, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !253)
!253 = !{!254, !255, !256, !266, !275, !279, !288, !289, !290}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !252, file: !35, line: 227, baseType: !7, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !252, file: !35, line: 228, baseType: !141, size: 16, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !35, line: 241, baseType: !257, size: 32, offset: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !35, line: 241, size: 32, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !257, file: !35, line: 242, baseType: !146, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !257, file: !35, line: 243, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !262, line: 16, baseType: !263)
!262 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 14, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !263, file: !262, line: 15, baseType: !151, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !35, line: 245, baseType: !267, size: 32, offset: 96)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !35, line: 245, size: 32, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !267, file: !35, line: 246, baseType: !161, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !267, file: !35, line: 247, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !262, line: 20, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 18, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !272, file: !262, line: 19, baseType: !165, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !252, file: !35, line: 249, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !142, line: 52, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !153, line: 88, baseType: !278)
!278 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !252, file: !35, line: 250, baseType: !280, size: 128, offset: 192)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !281, line: 13, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!282 = !{!283, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !280, file: !281, line: 14, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !281, line: 8, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !126, line: 30, baseType: !278)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !280, file: !281, line: 15, baseType: !287, size: 64, offset: 64)
!287 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !252, file: !35, line: 251, baseType: !280, size: 128, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !252, file: !35, line: 252, baseType: !280, size: 128, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !252, file: !35, line: 259, baseType: !291, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !293)
!293 = !{!294, !313, !352, !354, !362, !375, !376, !377, !451, !658, !667, !3613, !3614, !3738, !3739, !3740, !3741, !3743, !3744, !3745}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !35, line: 995, baseType: !295, size: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !35, line: 995, size: 128, elements: !296)
!296 = !{!297, !303, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !295, file: !35, line: 996, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !299, line: 60, size: 64, elements: !300)
!299 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !299, line: 61, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !295, file: !35, line: 997, baseType: !304, size: 128, align: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !142, line: 232, size: 128, align: 64, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !142, line: 233, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !304, file: !142, line: 234, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !307}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !295, file: !35, line: 998, baseType: !7, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !292, file: !35, line: 1005, baseType: !314, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !315, line: 29, baseType: !316)
!315 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !315, line: 17, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !315, line: 18, baseType: !319, size: 32)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !315, line: 18, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !319, file: !315, line: 19, baseType: !322, size: 32)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !323, line: 14, size: 32, elements: !324)
!323 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !322, file: !323, line: 15, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !327, line: 44, baseType: !328)
!327 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !327, line: 14, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !327, line: 15, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !327, line: 15, size: 32, elements: !332)
!332 = !{!333, !338, !345}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !331, file: !327, line: 16, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !142, line: 174, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 172, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !335, file: !142, line: 173, baseType: !201, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !327, line: 24, baseType: !339, size: 16)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !327, line: 24, size: 16, elements: !340)
!340 = !{!341, !344}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !339, file: !327, line: 25, baseType: !342, size: 8)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !124, line: 17, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !126, line: 21, baseType: !135)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !339, file: !327, line: 26, baseType: !342, size: 8, offset: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !327, line: 28, baseType: !346, size: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !327, line: 28, size: 32, elements: !347)
!347 = !{!348, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !346, file: !327, line: 29, baseType: !349, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !124, line: 19, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !126, line: 24, baseType: !143)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !346, file: !327, line: 30, baseType: !349, size: 16, offset: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !292, file: !35, line: 1006, baseType: !353, size: 32, offset: 160)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !142, line: 156, baseType: !7)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !292, file: !35, line: 1007, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !356, line: 13, baseType: !357)
!356 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !142, line: 181, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 179, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !358, file: !142, line: 180, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !124, line: 22, baseType: !285)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !292, file: !35, line: 1008, baseType: !363, size: 256, offset: 256)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !364, line: 66, size: 256, elements: !365)
!364 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!365 = !{!366, !367, !369, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !363, file: !364, line: 67, baseType: !355, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !363, file: !364, line: 68, baseType: !368, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !323, line: 23, baseType: !322)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !363, file: !364, line: 70, baseType: !370, size: 32, offset: 96)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !371, line: 15, size: 32, elements: !372)
!371 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !370, file: !371, line: 20, baseType: !334, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !363, file: !364, line: 72, baseType: !155, size: 128, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !292, file: !35, line: 1009, baseType: !276, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !292, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !292, file: !35, line: 1011, baseType: !378, size: 256, offset: 640)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !379)
!379 = !{!380, !403, !447, !448, !449, !450}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !35, line: 949, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !382, line: 34, baseType: !383)
!382 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 25, size: 64, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !383, file: !382, line: 26, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !387, line: 27, baseType: !388)
!387 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !387, line: 13, size: 64, elements: !389)
!389 = !{!390, !402}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !387, line: 14, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !387, line: 14, size: 32, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !391, file: !387, line: 15, baseType: !334, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !387, line: 16, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !387, line: 16, size: 32, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !395, file: !387, line: 18, baseType: !342, size: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !395, file: !387, line: 19, baseType: !399, size: 24, offset: 8)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 24, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 3)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !388, file: !387, line: 26, baseType: !326, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !378, file: !35, line: 950, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !406)
!406 = !{!407, !413, !414, !415, !428, !429, !436, !437}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !405, file: !14, line: 61, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !409, line: 113, baseType: !410)
!409 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !409, line: 111, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !410, file: !409, line: 112, baseType: !334, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !405, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !405, file: !14, line: 63, baseType: !314, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !405, file: !14, line: 65, baseType: !416, size: 256, offset: 128)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 256, elements: !426)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !142, line: 194, size: 64, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !417, file: !142, line: 195, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !142, line: 198, size: 128, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !142, line: 199, baseType: !420, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !421, file: !142, line: 199, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!426 = !{!427}
!427 = !DISubrange(count: 4)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !405, file: !14, line: 66, baseType: !417, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !405, file: !14, line: 68, baseType: !430, size: 192, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !431, line: 41, baseType: !432)
!431 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !431, line: 37, size: 192, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !432, file: !431, line: 38, baseType: !314, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !432, file: !431, line: 39, baseType: !155, size: 128, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !405, file: !14, line: 69, baseType: !304, size: 128, align: 64, offset: 640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !405, file: !14, line: 70, baseType: !438, offset: 768)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !445)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !439, file: !14, line: 55, baseType: !201, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !439, file: !14, line: 56, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!445 = !{!446}
!446 = !DISubrange(count: -1)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !378, file: !35, line: 951, baseType: !13, size: 32, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !378, file: !35, line: 952, baseType: !146, size: 32, offset: 160)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !378, file: !35, line: 952, baseType: !146, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !378, file: !35, line: 953, baseType: !201, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !292, file: !35, line: 1012, baseType: !452, size: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !455, line: 110, size: 1472, elements: !456)
!455 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !472, !473, !474, !475, !476, !477, !603, !604, !605, !606, !607, !638, !641, !645, !653}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !454, file: !455, line: 111, baseType: !355, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !454, file: !455, line: 112, baseType: !146, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !454, file: !455, line: 113, baseType: !161, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !454, file: !455, line: 114, baseType: !146, size: 32, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !454, file: !455, line: 115, baseType: !161, size: 32, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !454, file: !455, line: 116, baseType: !146, size: 32, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !454, file: !455, line: 117, baseType: !161, size: 32, offset: 224)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !454, file: !455, line: 118, baseType: !146, size: 32, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !454, file: !455, line: 119, baseType: !161, size: 32, offset: 288)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !454, file: !455, line: 120, baseType: !7, size: 32, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !454, file: !455, line: 121, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !204, line: 24, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 24, size: 64, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !469, file: !204, line: 24, baseType: !129, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !454, file: !455, line: 122, baseType: !468, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !454, file: !455, line: 123, baseType: !468, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !454, file: !455, line: 124, baseType: !468, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !454, file: !455, line: 125, baseType: !468, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !454, file: !455, line: 127, baseType: !135, size: 8, offset: 704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !454, file: !455, line: 129, baseType: !478, size: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !480, line: 195, size: 1728, elements: !481)
!480 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!481 = !{!482, !483, !488, !500, !509, !512, !513, !518, !519, !520, !521, !524, !525, !526, !528, !529, !567, !588}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !479, file: !480, line: 196, baseType: !408, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !479, file: !480, line: 197, baseType: !484, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !480, line: 28, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !142, line: 104, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !124, line: 20, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !126, line: 26, baseType: !201)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 198, baseType: !489, size: 192, offset: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 198, size: 192, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !489, file: !480, line: 199, baseType: !155, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !489, file: !480, line: 200, baseType: !493, size: 192, align: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !494, line: 5, size: 192, align: 64, elements: !495)
!494 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!495 = !{!496, !497, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !493, file: !494, line: 6, baseType: !88, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !493, file: !494, line: 7, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !493, file: !494, line: 8, baseType: !498, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !479, file: !480, line: 205, baseType: !501, size: 320, offset: 256)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !502, line: 48, size: 320, elements: !503)
!502 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!503 = !{!504, !505, !506, !507, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !501, file: !502, line: 49, baseType: !355, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !501, file: !502, line: 55, baseType: !355, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !501, file: !502, line: 57, baseType: !370, size: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !501, file: !502, line: 59, baseType: !368, size: 32, offset: 160)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !501, file: !502, line: 60, baseType: !155, size: 128, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !479, file: !480, line: 206, baseType: !510, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !480, line: 206, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !479, file: !480, line: 207, baseType: !87, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 208, baseType: !514, size: 64, offset: 704)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 208, size: 64, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !514, file: !480, line: 209, baseType: !284, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !514, file: !480, line: 210, baseType: !284, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !479, file: !480, line: 212, baseType: !284, size: 64, offset: 768)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !479, file: !480, line: 213, baseType: !146, size: 32, offset: 832)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !479, file: !480, line: 214, baseType: !161, size: 32, offset: 864)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !479, file: !480, line: 215, baseType: !522, size: 32, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !480, line: 31, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !142, line: 110, baseType: !123)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !479, file: !480, line: 216, baseType: !143, size: 16, offset: 928)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !479, file: !480, line: 217, baseType: !143, size: 16, offset: 944)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !479, file: !480, line: 221, baseType: !527, size: 16, offset: 960)
!527 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !480, line: 228, baseType: !88, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 245, baseType: !530, size: 320, offset: 1088)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 245, size: 320, elements: !531)
!531 = !{!532, !559}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !530, file: !480, line: 246, baseType: !533, size: 320)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !480, line: 114, size: 320, elements: !534)
!534 = !{!535, !536, !548, !551, !558}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !533, file: !480, line: 116, baseType: !88, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !533, file: !480, line: 117, baseType: !537, size: 64, offset: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !480, line: 117, size: 64, elements: !538)
!538 = !{!539, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !480, line: 118, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !537, file: !480, line: 118, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !540, file: !480, line: 120, baseType: !349, size: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !540, file: !480, line: 121, baseType: !544, size: 48, offset: 16)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 48, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 6)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !537, file: !480, line: 127, baseType: !88, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !533, file: !480, line: 129, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !480, line: 102, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !533, file: !480, line: 130, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !480, line: 108, size: 192, elements: !554)
!554 = !{!555, !556, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !553, file: !480, line: 109, baseType: !304, size: 128, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !553, file: !480, line: 110, baseType: !408, size: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !553, file: !480, line: 111, baseType: !209, size: 8, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !533, file: !480, line: 131, baseType: !185, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !480, line: 247, baseType: !560, size: 320)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !530, file: !480, line: 247, size: 320, elements: !561)
!561 = !{!562, !563, !564, !565, !566}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !560, file: !480, line: 248, baseType: !88, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !560, file: !480, line: 249, baseType: !88, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !480, line: 250, baseType: !549, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !560, file: !480, line: 251, baseType: !552, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !560, file: !480, line: 252, baseType: !215, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 260, baseType: !568, size: 256, offset: 1408)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 260, size: 256, elements: !569)
!569 = !{!570, !576}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !568, file: !480, line: 261, baseType: !571, size: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !480, line: 134, size: 256, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !571, file: !480, line: 135, baseType: !87, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !571, file: !480, line: 136, baseType: !575, size: 256)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !426)
!576 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !480, line: 262, baseType: !577, size: 256)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !480, line: 262, size: 256, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !577, file: !480, line: 264, baseType: !155, size: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !577, file: !480, line: 265, baseType: !581, size: 128, offset: 128)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !582, line: 22, size: 128, elements: !583)
!582 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!583 = !{!584, !587}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !581, file: !582, line: 23, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !582, line: 23, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !581, file: !582, line: 24, baseType: !88, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !479, file: !480, line: 280, baseType: !589, size: 64, offset: 1664)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !480, line: 176, size: 192, elements: !591)
!591 = !{!592, !601, !602}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !590, file: !480, line: 177, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !480, line: 171, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!201, !478, !597, !599, !478}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !590, file: !480, line: 178, baseType: !478, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !590, file: !480, line: 179, baseType: !549, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !454, file: !455, line: 130, baseType: !478, size: 64, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !454, file: !455, line: 131, baseType: !478, size: 64, offset: 896)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !454, file: !455, line: 132, baseType: !478, size: 64, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !454, file: !455, line: 135, baseType: !87, size: 64, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !454, file: !455, line: 137, baseType: !608, size: 64, offset: 1088)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !610, line: 14, size: 1088, elements: !611)
!610 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!611 = !{!612, !613, !622, !623, !624, !625, !626, !627}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !609, file: !610, line: 15, baseType: !408, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !609, file: !610, line: 17, baseType: !614, size: 320, offset: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !615, line: 22, size: 320, elements: !616)
!615 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!616 = !{!617, !618, !619, !620}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !614, file: !615, line: 23, baseType: !368, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !614, file: !615, line: 24, baseType: !361, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !614, file: !615, line: 26, baseType: !155, size: 128, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !614, file: !615, line: 28, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !609, file: !610, line: 19, baseType: !88, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !609, file: !610, line: 20, baseType: !355, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !609, file: !610, line: 23, baseType: !421, size: 128, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !609, file: !610, line: 24, baseType: !146, size: 32, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !609, file: !610, line: 29, baseType: !355, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !609, file: !610, line: 36, baseType: !628, size: 320, offset: 768)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !629, line: 15, size: 320, elements: !630)
!629 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!630 = !{!631, !632, !633, !634, !635, !636, !637}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !628, file: !629, line: 16, baseType: !368, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !628, file: !629, line: 18, baseType: !201, size: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !628, file: !629, line: 19, baseType: !201, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !628, file: !629, line: 20, baseType: !201, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !628, file: !629, line: 21, baseType: !201, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !628, file: !629, line: 22, baseType: !88, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !629, line: 23, baseType: !88, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !454, file: !455, line: 138, baseType: !639, size: 64, offset: 1152)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !147, line: 18, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !454, file: !455, line: 139, baseType: !642, size: 64, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !644, line: 16, flags: DIFlagFwdDecl)
!644 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !454, file: !455, line: 140, baseType: !646, size: 64, offset: 1280)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !455, line: 25, size: 64, elements: !648)
!648 = !{!649, !650, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !647, file: !455, line: 26, baseType: !334, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !647, file: !455, line: 27, baseType: !201, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !647, file: !455, line: 28, baseType: !652, offset: 64)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !445)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !455, line: 142, baseType: !654, size: 128, offset: 1344)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !455, line: 142, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !654, file: !455, line: 143, baseType: !201, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !654, file: !455, line: 144, baseType: !304, size: 128, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !292, file: !35, line: 1013, baseType: !659, size: 256, offset: 960)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !659, file: !35, line: 971, baseType: !88, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !659, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !659, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !659, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !659, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !659, file: !35, line: 976, baseType: !276, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !292, file: !35, line: 1014, baseType: !668, size: 128, offset: 1216)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !669, line: 8, size: 128, elements: !670)
!669 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!670 = !{!671, !3612}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !668, file: !669, line: 9, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !674, line: 70, size: 256, elements: !675)
!674 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!675 = !{!676, !677, !3610, !3611}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !673, file: !674, line: 71, baseType: !89, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !673, file: !674, line: 72, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !1883, !2015, !2055, !2140, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2224, !2228, !2229, !2232, !2235, !2238, !2241, !2242, !2243, !2284, !3485, !3486, !3487, !3488, !3489, !3490, !3493, !3495, !3502, !3503, !3504, !3505, !3564, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !679, file: !35, line: 1191, baseType: !155, size: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !679, file: !35, line: 1192, baseType: !241, size: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !679, file: !35, line: 1193, baseType: !135, size: 8, offset: 160)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !679, file: !35, line: 1194, baseType: !88, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !679, file: !35, line: 1195, baseType: !276, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !679, file: !35, line: 1196, baseType: !687, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !689)
!689 = !{!690, !691, !692, !698, !702, !706, !710, !1871, !1872, !1873, !1875, !1876, !1877, !1879, !1880, !1881, !1882}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !35, line: 2367, baseType: !185, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !688, file: !35, line: 2368, baseType: !201, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !688, file: !35, line: 2376, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!201, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !674, line: 21, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !688, file: !35, line: 2377, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !688, file: !35, line: 2378, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!89, !687, !201, !185, !87}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !688, file: !35, line: 2380, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !678}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !688, file: !35, line: 2381, baseType: !711, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !713)
!713 = !{!714, !715, !716, !720, !1527, !1553, !1554, !1555, !1556, !1560, !1563, !1564, !1565, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1633, !1637, !1657, !1675, !1676, !1677, !1678, !1687, !1710, !1711, !1714, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1728, !1729, !1829, !1837, !1838, !1839, !1841, !1845, !1846, !1850, !1851, !1852, !1853, !1855, !1856, !1857, !1864, !1865, !1866, !1870}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !712, file: !6, line: 403, baseType: !5, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !712, file: !6, line: 406, baseType: !155, size: 128, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !6, line: 409, baseType: !717, size: 448, offset: 192)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 448, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 56)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !712, file: !6, line: 417, baseType: !721, size: 768, offset: 640)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !722)
!722 = !{!723, !1510, !1511, !1512, !1515}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !721, file: !6, line: 46, baseType: !724, size: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !725, line: 64, size: 512, elements: !726)
!725 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!726 = !{!727, !728, !729, !731, !775, !1388, !1500, !1505, !1506, !1507, !1508, !1509}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !725, line: 65, baseType: !185, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !724, file: !725, line: 66, baseType: !155, size: 128, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !724, file: !725, line: 67, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !724, file: !725, line: 68, baseType: !732, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !725, line: 168, size: 768, elements: !734)
!734 = !{!735, !736, !737, !738}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !733, file: !725, line: 169, baseType: !155, size: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !733, file: !725, line: 170, baseType: !314, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !733, file: !725, line: 171, baseType: !724, size: 512, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !733, file: !725, line: 172, baseType: !739, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !725, line: 133, size: 192, elements: !742)
!742 = !{!743, !750, !755}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !741, file: !725, line: 134, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!201, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !741, file: !725, line: 135, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!185, !748}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !741, file: !725, line: 136, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!201, !748, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !725, line: 125, size: 20736, elements: !762)
!762 = !{!763, !765, !769, !770, !774}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !761, file: !725, line: 126, baseType: !764, size: 192)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !400)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !761, file: !725, line: 127, baseType: !766, size: 4096, offset: 192)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 4096, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !761, file: !725, line: 128, baseType: !201, size: 32, offset: 4288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !761, file: !725, line: 129, baseType: !771, size: 16384, offset: 4320)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 16384, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 2048)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !761, file: !725, line: 130, baseType: !201, size: 32, offset: 20704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !724, file: !725, line: 69, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !725, line: 116, size: 384, elements: !779)
!779 = !{!780, !784, !809, !1350, !1378, !1382}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !778, file: !725, line: 117, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !730}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !778, file: !725, line: 118, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !788, line: 254, size: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!789 = !{!790, !802}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !787, file: !788, line: 255, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !730, !797, !215}
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !142, line: 66, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !153, line: 73, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !153, line: 15, baseType: !287)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !788, line: 30, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !798, file: !788, line: 31, baseType: !185, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !798, file: !788, line: 32, baseType: !141, size: 16, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !787, file: !788, line: 256, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!794, !730, !797, !185, !806}
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 61, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !153, line: 72, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !153, line: 16, baseType: !88)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !778, file: !725, line: 119, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !788, line: 84, size: 320, elements: !814)
!814 = !{!815, !816, !820, !1346, !1348}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !813, file: !788, line: 85, baseType: !185, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !813, file: !788, line: 86, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!141, !730, !797, !201}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !813, file: !788, line: 88, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!141, !730, !824, !201}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !788, line: 175, size: 512, elements: !826)
!826 = !{!827, !828, !829, !830, !1114, !1118, !1119}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !825, file: !788, line: 176, baseType: !798, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !825, file: !788, line: 177, baseType: !806, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !825, file: !788, line: 178, baseType: !87, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !825, file: !788, line: 179, baseType: !831, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !836)
!836 = !{!837, !838, !846, !847, !848, !849, !857, !858, !859, !1106, !1107, !1108, !1111, !1112, !1113}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !835, file: !35, line: 473, baseType: !137, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !835, file: !35, line: 474, baseType: !839, size: 128, offset: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !840, line: 296, size: 128, elements: !841)
!840 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!841 = !{!842, !843, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !839, file: !840, line: 297, baseType: !314, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !839, file: !840, line: 299, baseType: !844, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !142, line: 154, baseType: !7)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !839, file: !840, line: 300, baseType: !87, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !835, file: !35, line: 475, baseType: !501, size: 320, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !835, file: !35, line: 476, baseType: !844, size: 32, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !835, file: !35, line: 477, baseType: !334, size: 32, offset: 544)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !835, file: !35, line: 482, baseType: !850, size: 128, offset: 576)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !494, line: 26, size: 128, elements: !851)
!851 = !{!852, !856}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !850, file: !494, line: 27, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !494, line: 12, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !853, file: !494, line: 13, baseType: !498, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !850, file: !494, line: 28, baseType: !498, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !835, file: !35, line: 483, baseType: !88, size: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !835, file: !35, line: 484, baseType: !88, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !835, file: !35, line: 485, baseType: !860, size: 64, offset: 832)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !863)
!863 = !{!864, !931, !1001, !1005, !1009, !1015, !1021, !1025, !1030, !1034, !1038, !1042, !1070, !1074, !1078, !1082, !1087, !1091, !1098, !1102}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !862, file: !35, line: 405, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!201, !868, !929}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !870, line: 74, size: 512, align: 128, elements: !871)
!870 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!871 = !{!872, !873, !923, !928}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !870, line: 75, baseType: !88, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !870, line: 83, baseType: !874, size: 320, offset: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !870, line: 83, size: 320, elements: !875)
!875 = !{!876, !897, !911, !915, !922}
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !870, line: 84, baseType: !877, size: 320)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !870, line: 84, size: 320, elements: !878)
!878 = !{!879, !890, !891, !896}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !870, line: 90, baseType: !880, size: 128)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !870, line: 90, size: 128, elements: !881)
!881 = !{!882, !883, !888, !889}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !880, file: !870, line: 91, baseType: !155, size: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !870, line: 94, baseType: !884, size: 128)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !880, file: !870, line: 94, size: 128, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !884, file: !870, line: 96, baseType: !87, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !884, file: !870, line: 98, baseType: !7, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !880, file: !870, line: 102, baseType: !155, size: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !880, file: !870, line: 103, baseType: !155, size: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !877, file: !870, line: 106, baseType: !834, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !870, line: 107, baseType: !892, size: 64, offset: 192)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !870, line: 107, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !892, file: !870, line: 108, baseType: !88, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !892, file: !870, line: 109, baseType: !88, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !877, file: !870, line: 117, baseType: !88, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !870, line: 119, baseType: !898, size: 320)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !870, line: 119, size: 320, elements: !899)
!899 = !{!900, !901, !904, !905, !906}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !898, file: !870, line: 124, baseType: !88, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !898, file: !870, line: 125, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !870, line: 125, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !898, file: !870, line: 126, baseType: !88, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !898, file: !870, line: 127, baseType: !88, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !870, line: 128, baseType: !907, size: 64, offset: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !870, line: 128, size: 64, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !907, file: !870, line: 133, baseType: !88, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !907, file: !870, line: 138, baseType: !355, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !870, line: 141, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !870, line: 141, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !912, file: !870, line: 142, baseType: !88, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !870, line: 144, baseType: !916, size: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !870, line: 144, size: 128, elements: !917)
!917 = !{!918, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !916, file: !870, line: 146, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !870, line: 146, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !916, file: !870, line: 147, baseType: !87, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !874, file: !870, line: 161, baseType: !304, size: 128, align: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !870, line: 164, baseType: !924, size: 32, offset: 384)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !870, line: 164, size: 32, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !924, file: !870, line: 169, baseType: !334, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !924, file: !870, line: 177, baseType: !7, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !869, file: !870, line: 181, baseType: !334, size: 32, offset: 416)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !862, file: !35, line: 406, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!201, !291, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !870, line: 293, size: 1536, elements: !937)
!937 = !{!938, !968, !982}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !870, line: 295, baseType: !939, size: 512)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !870, line: 295, size: 512, elements: !940)
!940 = !{!941, !967}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !870, line: 296, baseType: !942, size: 448)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !870, line: 296, size: 448, elements: !943)
!943 = !{!944, !945, !954, !955, !956, !965, !966}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !870, line: 298, baseType: !88, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !870, line: 299, baseType: !946, size: 128, offset: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !870, line: 299, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !946, file: !870, line: 300, baseType: !155, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !870, line: 302, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !870, line: 302, size: 128, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !950, file: !870, line: 303, baseType: !87, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !950, file: !870, line: 305, baseType: !7, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !942, file: !870, line: 310, baseType: !834, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !942, file: !870, line: 311, baseType: !88, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !870, line: 312, baseType: !957, size: 64, offset: 320)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !870, line: 312, size: 64, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !957, file: !870, line: 313, baseType: !87, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !957, file: !870, line: 314, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !870, line: 257, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !870, line: 255, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !962, file: !870, line: 256, baseType: !88, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !942, file: !870, line: 316, baseType: !334, size: 32, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !942, file: !870, line: 317, baseType: !334, size: 32, offset: 416)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !939, file: !870, line: 323, baseType: !869, size: 512, align: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !870, line: 325, baseType: !969, size: 512, offset: 512)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !870, line: 325, size: 512, elements: !970)
!970 = !{!971, !981}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !870, line: 326, baseType: !972, size: 320)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !870, line: 326, size: 320, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !972, file: !870, line: 327, baseType: !88, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !972, file: !870, line: 328, baseType: !88, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !972, file: !870, line: 329, baseType: !88, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !972, file: !870, line: 331, baseType: !334, size: 32, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !972, file: !870, line: 332, baseType: !334, size: 32, offset: 224)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !972, file: !870, line: 333, baseType: !334, size: 32, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !972, file: !870, line: 335, baseType: !7, size: 32, offset: 288)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !969, file: !870, line: 339, baseType: !869, size: 512, align: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !870, line: 341, baseType: !983, size: 512, offset: 1024)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !870, line: 341, size: 512, elements: !984)
!984 = !{!985, !994, !1000}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !870, line: 342, baseType: !986, size: 384)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !870, line: 342, size: 384, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !986, file: !870, line: 343, baseType: !88, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !986, file: !870, line: 344, baseType: !88, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !986, file: !870, line: 346, baseType: !87, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !986, file: !870, line: 347, baseType: !87, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !986, file: !870, line: 348, baseType: !87, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !986, file: !870, line: 349, baseType: !87, size: 64, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !870, line: 352, baseType: !995, size: 256)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !870, line: 352, size: 256, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !995, file: !870, line: 353, baseType: !88, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !995, file: !870, line: 354, baseType: !88, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !995, file: !870, line: 356, baseType: !155, size: 128, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !983, file: !870, line: 359, baseType: !869, size: 512, align: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !862, file: !35, line: 409, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!201, !834, !929}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !862, file: !35, line: 412, baseType: !1006, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!209, !834, !935}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !862, file: !35, line: 414, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !862, file: !35, line: 416, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!201, !291, !834, !276, !7, !1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !862, file: !35, line: 419, baseType: !1022, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!201, !291, !834, !276, !7, !7, !868, !87}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !862, file: !35, line: 424, baseType: !1026, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!1029, !834, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !142, line: 131, baseType: !129)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !862, file: !35, line: 425, baseType: !1031, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !935, !806, !806}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !862, file: !35, line: 426, baseType: !1035, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!209, !935, !844}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !862, file: !35, line: 427, baseType: !1039, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !935}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !862, file: !35, line: 428, baseType: !1043, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!794, !1046, !1068}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1055, !1056, !1057, !1058}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1047, file: !35, line: 374, baseType: !291, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1047, file: !35, line: 375, baseType: !276, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1047, file: !35, line: 376, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1046, !287}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1047, file: !35, line: 377, baseType: !87, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1047, file: !35, line: 378, baseType: !201, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1047, file: !35, line: 379, baseType: !349, size: 16, offset: 288)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !35, line: 380, baseType: !1059, size: 64, offset: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !35, line: 380, size: 64, elements: !1060)
!1060 = !{!1061, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1059, file: !35, line: 386, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1059, file: !35, line: 395, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!794, !87}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !862, file: !35, line: 433, baseType: !1071, size: 64, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!201, !834, !935, !935, !21}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !862, file: !35, line: 435, baseType: !1075, size: 64, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!201, !935}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !862, file: !35, line: 436, baseType: !1079, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!209, !935, !806, !806}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !862, file: !35, line: 438, baseType: !1083, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !935, !1086, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !862, file: !35, line: 439, baseType: !1088, size: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!201, !834, !868}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !862, file: !35, line: 442, baseType: !1092, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!201, !1095, !291, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !862, file: !35, line: 444, baseType: !1099, size: 64, offset: 1152)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !291}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !862, file: !35, line: 445, baseType: !1103, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!201, !1046, !1068}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !35, line: 486, baseType: !88, size: 64, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !835, file: !35, line: 487, baseType: !501, size: 320, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !835, file: !35, line: 488, baseType: !1109, size: 32, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1110, line: 8, baseType: !123)
!1110 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !835, file: !35, line: 489, baseType: !314, size: 32, offset: 1312)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !835, file: !35, line: 490, baseType: !155, size: 128, offset: 1344)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !835, file: !35, line: 491, baseType: !87, size: 64, offset: 1472)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !825, file: !788, line: 180, baseType: !1115, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!794, !291, !730, !824, !215, !276, !806}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !825, file: !788, line: 182, baseType: !1115, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !825, file: !788, line: 184, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!201, !291, !730, !824, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !870, line: 625, size: 1344, elements: !1125)
!1125 = !{!1126, !1135, !1304, !1310, !1317, !1318, !1323, !1324, !1329, !1330, !1333, !1337, !1338, !1339, !1340, !1341, !1344}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !870, line: 628, baseType: !1127, size: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !870, line: 628, size: 128, elements: !1128)
!1128 = !{!1129, !1134}
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !870, line: 629, baseType: !1130, size: 128)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !870, line: 629, size: 128, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1130, file: !870, line: 631, baseType: !88, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1130, file: !870, line: 632, baseType: !88, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1127, file: !870, line: 635, baseType: !304, size: 128, align: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1124, file: !870, line: 639, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !870, line: 733, size: 10240, elements: !1138)
!1138 = !{!1139, !1302}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !870, line: 734, baseType: !1140, size: 10240)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !870, line: 734, size: 10240, elements: !1141)
!1141 = !{!1142, !1146, !1160, !1164, !1165, !1166, !1167, !1168, !1169, !1178, !1179, !1180, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1219, !1221, !1224, !1271, !1272, !1273, !1276, !1277, !1278, !1281, !1282, !1283, !1289, !1290}
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !870, line: 739, baseType: !1143, size: 512, align: 512)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !870, line: 739, size: 512, align: 512, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1143, file: !870, line: 747, baseType: !334, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1140, file: !870, line: 750, baseType: !1147, size: 128, offset: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1148, line: 218, size: 128, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1149 = !{!1150, !1158, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1148, line: 219, baseType: !1151, size: 32)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !1148, line: 219, size: 32, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1151, file: !1148, line: 220, baseType: !314, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1151, file: !1148, line: 221, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1148, line: 197, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1148, line: 197, elements: !1157)
!1157 = !{}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1147, file: !1148, line: 223, baseType: !7, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1147, file: !1148, line: 224, baseType: !87, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1140, file: !870, line: 752, baseType: !1161, size: 64, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!88, !291, !88, !88, !88, !88}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1140, file: !870, line: 756, baseType: !88, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1140, file: !870, line: 757, baseType: !88, size: 64, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1140, file: !870, line: 760, baseType: !88, size: 64, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1140, file: !870, line: 761, baseType: !88, size: 64, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1140, file: !870, line: 763, baseType: !88, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1140, file: !870, line: 764, baseType: !1170, size: 64, offset: 1024)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1172, line: 299, baseType: !1173)
!1172 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1172, line: 299, size: 64, elements: !1174)
!1174 = !{!1175}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1173, file: !1172, line: 299, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1177, line: 18, baseType: !88)
!1177 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1140, file: !870, line: 773, baseType: !334, size: 32, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1140, file: !870, line: 785, baseType: !334, size: 32, offset: 1120)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1140, file: !870, line: 795, baseType: !1181, size: 64, offset: 1152)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !870, line: 726, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1182, file: !870, line: 727, baseType: !129, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1182, file: !870, line: 728, baseType: !201, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1140, file: !870, line: 801, baseType: !88, size: 64, offset: 1216)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1140, file: !870, line: 804, baseType: !355, size: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1140, file: !870, line: 806, baseType: !201, size: 32, offset: 1344)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1140, file: !870, line: 808, baseType: !314, size: 32, offset: 1376)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1140, file: !870, line: 823, baseType: !501, size: 320, offset: 1408)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1140, file: !870, line: 825, baseType: !155, size: 128, offset: 1728)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1140, file: !870, line: 845, baseType: !201, size: 32, offset: 1856)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1140, file: !870, line: 849, baseType: !88, size: 64, offset: 1920)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1140, file: !870, line: 850, baseType: !88, size: 64, offset: 1984)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1140, file: !870, line: 852, baseType: !88, size: 64, offset: 2048)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1140, file: !870, line: 853, baseType: !88, size: 64, offset: 2112)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1140, file: !870, line: 854, baseType: !357, size: 64, offset: 2176)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1140, file: !870, line: 855, baseType: !88, size: 64, offset: 2240)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1140, file: !870, line: 856, baseType: !88, size: 64, offset: 2304)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1140, file: !870, line: 857, baseType: !88, size: 64, offset: 2368)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1140, file: !870, line: 858, baseType: !88, size: 64, offset: 2432)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1140, file: !870, line: 865, baseType: !100, size: 32, offset: 2496)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1140, file: !870, line: 867, baseType: !314, size: 32, offset: 2528)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1140, file: !870, line: 869, baseType: !88, size: 64, offset: 2560)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1140, file: !870, line: 869, baseType: !88, size: 64, offset: 2624)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1140, file: !870, line: 869, baseType: !88, size: 64, offset: 2688)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1140, file: !870, line: 869, baseType: !88, size: 64, offset: 2752)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1140, file: !870, line: 870, baseType: !88, size: 64, offset: 2816)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1140, file: !870, line: 870, baseType: !88, size: 64, offset: 2880)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1140, file: !870, line: 870, baseType: !88, size: 64, offset: 2944)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1140, file: !870, line: 871, baseType: !88, size: 64, offset: 3008)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1140, file: !870, line: 871, baseType: !88, size: 64, offset: 3072)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1140, file: !870, line: 871, baseType: !88, size: 64, offset: 3136)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1140, file: !870, line: 871, baseType: !88, size: 64, offset: 3200)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1140, file: !870, line: 873, baseType: !1216, size: 3328, offset: 3264)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 3328, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 52)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1140, file: !870, line: 875, baseType: !1220, size: 1280, offset: 6592)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 1280, elements: !426)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1140, file: !870, line: 877, baseType: !1222, size: 64, offset: 7872)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !870, line: 877, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1140, file: !870, line: 880, baseType: !1225, size: 1088, offset: 7936)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1226, line: 72, baseType: !1227)
!1226 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 23, size: 1088, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1236, !1237, !1238, !1239, !1266, !1267, !1268}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1227, file: !1226, line: 28, baseType: !129, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1227, file: !1226, line: 38, baseType: !357, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1227, file: !1226, line: 40, baseType: !88, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1227, file: !1226, line: 43, baseType: !501, size: 320, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1227, file: !1226, line: 44, baseType: !1234, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1226, line: 44, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1227, file: !1226, line: 48, baseType: !88, size: 64, offset: 576)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1227, file: !1226, line: 59, baseType: !363, size: 256, offset: 640)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1227, file: !1226, line: 60, baseType: !87, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1227, file: !1226, line: 61, baseType: !1240, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1243, line: 13, size: 1216, elements: !1244)
!1243 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1242, file: !1243, line: 14, baseType: !87, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1242, file: !1243, line: 15, baseType: !88, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1242, file: !1243, line: 17, baseType: !88, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1242, file: !1243, line: 17, baseType: !88, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1242, file: !1243, line: 18, baseType: !88, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1242, file: !1243, line: 18, baseType: !88, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1242, file: !1243, line: 19, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1242, file: !1243, line: 21, baseType: !287, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1242, file: !1243, line: 23, baseType: !287, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1242, file: !1243, line: 24, baseType: !287, size: 64, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1242, file: !1243, line: 25, baseType: !287, size: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1242, file: !1243, line: 26, baseType: !287, size: 64, offset: 704)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1242, file: !1243, line: 27, baseType: !287, size: 64, offset: 768)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1242, file: !1243, line: 28, baseType: !287, size: 64, offset: 832)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1242, file: !1243, line: 29, baseType: !287, size: 64, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1242, file: !1243, line: 30, baseType: !287, size: 64, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1242, file: !1243, line: 31, baseType: !287, size: 64, offset: 1024)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1242, file: !1243, line: 32, baseType: !287, size: 64, offset: 1088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1242, file: !1243, line: 33, baseType: !287, size: 64, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1227, file: !1226, line: 63, baseType: !334, size: 32, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1227, file: !1226, line: 69, baseType: !349, size: 16, offset: 1056)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1227, file: !1226, line: 70, baseType: !1269, size: 16, offset: 1072)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !124, line: 18, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !126, line: 23, baseType: !527)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !870, line: 882, baseType: !88, size: 64, offset: 9024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1140, file: !870, line: 885, baseType: !314, size: 32, offset: 9088)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1140, file: !870, line: 886, baseType: !1274, size: 64, offset: 9152)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !870, line: 732, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1140, file: !870, line: 901, baseType: !639, size: 64, offset: 9216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1140, file: !870, line: 904, baseType: !291, size: 64, offset: 9280)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1140, file: !870, line: 906, baseType: !1279, size: 64, offset: 9344)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !870, line: 906, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1140, file: !870, line: 930, baseType: !334, size: 32, offset: 9408)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1140, file: !870, line: 933, baseType: !334, size: 32, offset: 9440)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1140, file: !870, line: 935, baseType: !1284, size: 64, offset: 9472)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1284, file: !57, line: 104, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1140, file: !870, line: 940, baseType: !355, size: 64, offset: 9536)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1140, file: !870, line: 942, baseType: !1291, size: 256, offset: 9600)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1292, line: 98, size: 256, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1293 = !{!1294, !1295, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1291, file: !1292, line: 99, baseType: !355, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1291, file: !1292, line: 100, baseType: !155, size: 128, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1291, file: !1292, line: 101, baseType: !1297, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1292, line: 21, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1137, file: !870, line: 986, baseType: !1303, offset: 10240)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !445)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1124, file: !870, line: 640, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1172, line: 297, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1172, line: 297, size: 64, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1306, file: !1172, line: 297, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1177, line: 19, baseType: !88)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !870, line: 646, baseType: !1311, size: 64, offset: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !870, line: 646, size: 64, elements: !1312)
!1312 = !{!1313, !1316}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1311, file: !870, line: 647, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !870, line: 542, baseType: !88)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1311, file: !870, line: 648, baseType: !1315, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1124, file: !870, line: 666, baseType: !201, size: 32, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1124, file: !870, line: 667, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !870, line: 579, size: 320, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !870, line: 580, baseType: !501, size: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1124, file: !870, line: 670, baseType: !209, size: 8, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1124, file: !870, line: 681, baseType: !1325, size: 256, offset: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !870, line: 678, size: 256, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1325, file: !870, line: 679, baseType: !493, size: 192, align: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1325, file: !870, line: 680, baseType: !88, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1124, file: !870, line: 689, baseType: !155, size: 128, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1124, file: !870, line: 691, baseType: !1331, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !870, line: 691, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1124, file: !870, line: 694, baseType: !1334, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !870, line: 694, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1124, file: !870, line: 697, baseType: !88, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1124, file: !870, line: 699, baseType: !291, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1124, file: !870, line: 700, baseType: !87, size: 64, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1124, file: !870, line: 711, baseType: !355, size: 64, offset: 1216)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1124, file: !870, line: 717, baseType: !1342, size: 64, offset: 1280)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !870, line: 717, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1124, file: !870, line: 722, baseType: !1345, offset: 1344)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !870, line: 570, elements: !1157)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !813, file: !788, line: 90, baseType: !1347, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !813, file: !788, line: 91, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !778, file: !725, line: 120, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !748}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1357)
!1357 = !{!1358, !1359, !1363, !1367, !1373, !1377}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1356, file: !29, line: 40, baseType: !28, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1356, file: !29, line: 41, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!209}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1356, file: !29, line: 42, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!87}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1356, file: !29, line: 43, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1252, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1356, file: !29, line: 44, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1252}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1356, file: !29, line: 45, baseType: !193, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !778, file: !725, line: 121, baseType: !1379, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1252, !748}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !778, file: !725, line: 122, baseType: !1383, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !748, !1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !724, file: !725, line: 70, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1391, line: 190, size: 1152, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1492, !1493, !1494, !1495, !1496, !1499}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1390, file: !1391, line: 191, baseType: !334, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1390, file: !1391, line: 192, baseType: !334, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1390, file: !1391, line: 202, baseType: !1389, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1390, file: !1391, line: 203, baseType: !185, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1390, file: !1391, line: 205, baseType: !493, size: 192, align: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1390, file: !1391, line: 207, baseType: !1252, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1390, file: !1391, line: 208, baseType: !7, size: 32, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !1391, line: 209, baseType: !1401, size: 256, offset: 512)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1390, file: !1391, line: 209, size: 256, elements: !1402)
!1402 = !{!1403, !1412, !1416}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1401, file: !1391, line: 210, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1391, line: 153, size: 256, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1411}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1404, file: !1391, line: 154, baseType: !88, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1404, file: !1391, line: 156, baseType: !853, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1404, file: !1391, line: 162, baseType: !1409, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1391, line: 162, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1404, file: !1391, line: 167, baseType: !88, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1401, file: !1391, line: 211, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1391, line: 170, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1413, file: !1391, line: 171, baseType: !1389, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1401, file: !1391, line: 212, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1391, line: 174, size: 256, elements: !1418)
!1418 = !{!1419, !1487, !1490, !1491}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1417, file: !1391, line: 175, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1391, line: 271, size: 768, elements: !1423)
!1423 = !{!1424, !1447, !1451, !1455, !1460, !1464, !1468, !1472, !1473, !1474, !1475, !1483}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1422, file: !1391, line: 276, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!201, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1391, line: 251, size: 1216, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1429, file: !1391, line: 253, baseType: !1389, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1429, file: !1391, line: 254, baseType: !291, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1429, file: !1391, line: 255, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1436, line: 66, flags: DIFlagFwdDecl)
!1436 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1429, file: !1391, line: 256, baseType: !87, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1429, file: !1391, line: 259, baseType: !363, size: 256, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1429, file: !1391, line: 260, baseType: !363, size: 256, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1429, file: !1391, line: 261, baseType: !201, size: 32, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1429, file: !1391, line: 262, baseType: !155, size: 128, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1429, file: !1391, line: 263, baseType: !215, size: 64, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1429, file: !1391, line: 265, baseType: !806, size: 64, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1429, file: !1391, line: 266, baseType: !209, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1429, file: !1391, line: 267, baseType: !209, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1429, file: !1391, line: 268, baseType: !1334, size: 64, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1422, file: !1391, line: 277, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !1428}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1422, file: !1391, line: 290, baseType: !1452, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!201, !1434, !87}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1422, file: !1391, line: 292, baseType: !1456, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!87, !1434, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1422, file: !1391, line: 293, baseType: !1461, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!87, !1434, !87, !1459}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1422, file: !1391, line: 294, baseType: !1465, size: 64, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1434, !87}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1422, file: !1391, line: 296, baseType: !1469, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!794, !1428, !215, !806, !276}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1422, file: !1391, line: 306, baseType: !806, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1422, file: !1391, line: 313, baseType: !209, size: 8, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1422, file: !1391, line: 314, baseType: !1469, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1422, file: !1391, line: 317, baseType: !1476, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!1479, !1428, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1480, line: 59, baseType: !7)
!1480 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !35, line: 61, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1422, file: !1391, line: 320, baseType: !1484, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!201, !1428, !1123}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1417, file: !1391, line: 176, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1391, line: 35, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1417, file: !1391, line: 177, baseType: !276, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1417, file: !1391, line: 178, baseType: !1389, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1390, file: !1391, line: 215, baseType: !87, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1390, file: !1391, line: 221, baseType: !129, size: 64, offset: 832)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !1391, line: 223, baseType: !143, size: 16, offset: 896)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1390, file: !1391, line: 224, baseType: !141, size: 16, offset: 912)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1390, file: !1391, line: 225, baseType: !1497, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1391, line: 36, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !1391, line: 227, baseType: !304, size: 128, align: 64, offset: 1024)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !724, file: !725, line: 71, baseType: !1501, size: 32, offset: 448)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1502, line: 19, size: 32, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1503 = !{!1504}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1501, file: !1502, line: 20, baseType: !408, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !724, file: !725, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !724, file: !725, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !724, file: !725, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !724, file: !725, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !724, file: !725, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !721, file: !6, line: 47, baseType: !711, size: 64, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !721, file: !6, line: 48, baseType: !730, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !721, file: !6, line: 49, baseType: !1513, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !721, file: !6, line: 50, baseType: !1516, size: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1518, line: 26, size: 256, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1517, file: !1518, line: 27, baseType: !7, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1517, file: !1518, line: 28, baseType: !1522, size: 192, offset: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1523, line: 43, size: 192, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !1523, line: 44, baseType: !368, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1522, file: !1523, line: 45, baseType: !155, size: 128, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !712, file: !6, line: 418, baseType: !1528, size: 64, offset: 1408)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1530)
!1530 = !{!1531, !1532, !1537, !1541, !1545, !1549}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1529, file: !6, line: 54, baseType: !798, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1529, file: !6, line: 55, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!794, !1528, !1536, !215}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1529, file: !6, line: 57, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!794, !1528, !1536, !185, !806}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1529, file: !6, line: 59, baseType: !1542, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !711, !185}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1529, file: !6, line: 60, baseType: !1546, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!201, !711}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1529, file: !6, line: 61, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !711}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !712, file: !6, line: 419, baseType: !185, size: 64, offset: 1472)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !712, file: !6, line: 420, baseType: !185, size: 64, offset: 1536)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !712, file: !6, line: 421, baseType: !730, size: 64, offset: 1600)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !712, file: !6, line: 424, baseType: !1557, size: 64, offset: 1664)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !712, file: !6, line: 425, baseType: !1561, size: 64, offset: 1728)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !712, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !712, file: !6, line: 435, baseType: !363, size: 256, offset: 1856)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !712, file: !6, line: 437, baseType: !1566, size: 64, offset: 2112)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1568, line: 69, size: 320, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1569 = !{!1570, !1571, !1572, !1589, !1591, !1595, !1596}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1567, file: !1568, line: 70, baseType: !185, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1567, file: !1568, line: 71, baseType: !711, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1567, file: !1568, line: 72, baseType: !1573, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1568, line: 47, size: 256, elements: !1576)
!1576 = !{!1577, !1578, !1584, !1588}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !1568, line: 49, baseType: !7, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1575, file: !1568, line: 51, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!201, !185, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1575, file: !1568, line: 53, baseType: !1585, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!201, !215, !1582}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1575, file: !1568, line: 55, baseType: !193, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1567, file: !1568, line: 73, baseType: !1590, size: 16, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1567, file: !1568, line: 74, baseType: !1592, size: 8, offset: 208)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !124, line: 16, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !126, line: 20, baseType: !1594)
!1594 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !1568, line: 75, baseType: !342, size: 8, offset: 216)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 76, baseType: !1597, size: 64, offset: 256)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 76, size: 64, elements: !1598)
!1598 = !{!1599, !1600, !1607}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1597, file: !1568, line: 77, baseType: !87, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1597, file: !1568, line: 78, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1568, line: 86, size: 128, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1603, file: !1568, line: 87, baseType: !7, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1603, file: !1568, line: 88, baseType: !215, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1597, file: !1568, line: 79, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1568, line: 92, size: 256, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1616, !1617}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1610, file: !1568, line: 94, baseType: !7, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1610, file: !1568, line: 95, baseType: !7, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1610, file: !1568, line: 96, baseType: !1615, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1610, file: !1568, line: 97, baseType: !1573, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1610, file: !1568, line: 98, baseType: !87, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !712, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !712, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !712, file: !6, line: 442, baseType: !1557, size: 64, offset: 2240)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !712, file: !6, line: 443, baseType: !1561, size: 64, offset: 2304)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !712, file: !6, line: 444, baseType: !209, size: 8, offset: 2368)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !712, file: !6, line: 451, baseType: !209, size: 8, offset: 2376)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !712, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !712, file: !6, line: 455, baseType: !1626, size: 64, offset: 2432)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1628, line: 23, size: 96, elements: !1629)
!1628 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1627, file: !1628, line: 24, baseType: !201, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1627, file: !1628, line: 24, baseType: !201, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1627, file: !1628, line: 24, baseType: !201, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !712, file: !6, line: 458, baseType: !1634, size: 64, offset: 2496)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!201}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !712, file: !6, line: 460, baseType: !1638, size: 4032, align: 512, offset: 2560)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1639, size: 4032, elements: !1655)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1639, file: !6, line: 363, baseType: !87, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1639, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1639, file: !6, line: 367, baseType: !1644, size: 448, offset: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1644, file: !6, line: 320, baseType: !711, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1644, file: !6, line: 321, baseType: !1648, size: 384, offset: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1649, line: 40, size: 384, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1648, file: !1649, line: 41, baseType: !1652, size: 384, align: 64)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 384, align: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 2)
!1655 = !{!1656}
!1656 = !DISubrange(count: 7)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !712, file: !6, line: 463, baseType: !1658, size: 192, offset: 6592)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1659, line: 8, size: 192, elements: !1660)
!1659 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1660 = !{!1661, !1662, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1658, file: !1659, line: 10, baseType: !7, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1658, file: !1659, line: 11, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1658, file: !1659, line: 12, baseType: !1665, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1667, line: 59, size: 48, elements: !1668)
!1667 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1666, file: !1667, line: 60, baseType: !1269, size: 16)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1666, file: !1667, line: 61, baseType: !1269, size: 16, offset: 16)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1666, file: !1667, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1666, file: !1667, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !1667, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1666, file: !1667, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !712, file: !6, line: 465, baseType: !88, size: 64, offset: 6784)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !712, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !712, file: !6, line: 470, baseType: !155, size: 128, offset: 6912)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !712, file: !6, line: 471, baseType: !1679, size: 64, offset: 7040)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1681, line: 33, size: 96, elements: !1682)
!1681 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1682 = !{!1683, !1684, !1685, !1686}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1680, file: !1681, line: 37, baseType: !201, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1680, file: !1681, line: 43, baseType: !201, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1680, file: !1681, line: 45, baseType: !143, size: 16, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1680, file: !1681, line: 47, baseType: !143, size: 16, offset: 80)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !712, file: !6, line: 476, baseType: !1688, size: 64, offset: 7104)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1690)
!1690 = !{!1691, !1707, !1708, !1709}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1689, file: !6, line: 379, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1694, line: 204, baseType: !1695)
!1694 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1694, line: 197, size: 192, elements: !1696)
!1696 = !{!1697, !1699, !1700, !1701, !1703, !1705}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1695, file: !1694, line: 198, baseType: !1698, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1694, line: 21, baseType: !125)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1695, file: !1694, line: 199, baseType: !135, size: 8, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1695, file: !1694, line: 200, baseType: !135, size: 8, offset: 40)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1695, file: !1694, line: 201, baseType: !1702, size: 16, offset: 48)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1694, line: 17, baseType: !350)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1695, file: !1694, line: 202, baseType: !1704, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1694, line: 16, baseType: !130)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1695, file: !1694, line: 203, baseType: !1706, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1694, line: 22, baseType: !130)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1689, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1689, file: !6, line: 381, baseType: !215, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1689, file: !6, line: 382, baseType: !215, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !712, file: !6, line: 477, baseType: !1689, size: 256, offset: 7168)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !712, file: !6, line: 480, baseType: !1712, size: 64, offset: 7424)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !712, file: !6, line: 483, baseType: !1715, size: 64, offset: 7488)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !712, file: !6, line: 488, baseType: !215, size: 64, offset: 7552)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !712, file: !6, line: 492, baseType: !87, size: 64, offset: 7616)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !712, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !712, file: !6, line: 495, baseType: !87, size: 64, offset: 7744)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !712, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !712, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !712, file: !6, line: 500, baseType: !1724, size: 64, offset: 7872)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1726, line: 45, baseType: !1727)
!1726 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !712, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !712, file: !6, line: 504, baseType: !1730, size: 64, offset: 8000)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1733, line: 96, size: 192, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1734 = !{!1735, !1736, !1790, !1793}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1732, file: !1733, line: 97, baseType: !7, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1732, file: !1733, line: 98, baseType: !1737, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1733, line: 24, size: 3072, elements: !1739)
!1739 = !{!1740, !1742, !1743, !1744, !1745, !1759, !1760, !1761, !1762, !1774, !1775, !1776, !1787, !1788, !1789}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1738, file: !1733, line: 26, baseType: !1741, size: 128)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 128, elements: !1653)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1738, file: !1733, line: 27, baseType: !1741, size: 128, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1738, file: !1733, line: 28, baseType: !201, size: 32, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1738, file: !1733, line: 31, baseType: !314, size: 32, align: 512, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1738, file: !1733, line: 32, baseType: !1746, size: 960, offset: 576)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1747, line: 206, size: 960, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1748 = !{!1749, !1750, !1753, !1755, !1756, !1758}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1746, file: !1747, line: 207, baseType: !307, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1746, file: !1747, line: 208, baseType: !1751, size: 256, offset: 64)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1752, size: 256, elements: !426)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1746, file: !1747, line: 209, baseType: !1754, size: 256, offset: 320)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !426)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1746, file: !1747, line: 213, baseType: !287, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1746, file: !1747, line: 215, baseType: !1757, size: 256, offset: 640)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !426)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1746, file: !1747, line: 216, baseType: !342, size: 8, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1738, file: !1733, line: 33, baseType: !88, size: 64, offset: 1536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1738, file: !1733, line: 34, baseType: !88, size: 64, offset: 1600)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1738, file: !1733, line: 35, baseType: !209, size: 8, offset: 1664)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1738, file: !1733, line: 36, baseType: !1763, size: 320, offset: 1728)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1764, line: 11, size: 320, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1765 = !{!1766, !1767, !1768, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1763, file: !1764, line: 16, baseType: !421, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1763, file: !1764, line: 17, baseType: !88, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1763, file: !1764, line: 18, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1764, line: 19, baseType: !123, size: 32, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1738, file: !1733, line: 37, baseType: !1291, size: 256, offset: 2048)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1738, file: !1733, line: 38, baseType: !304, size: 128, align: 64, offset: 2304)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1738, file: !1733, line: 39, baseType: !1777, size: 64, offset: 2432)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1733, line: 49, size: 768, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1778, file: !1733, line: 50, baseType: !314, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1778, file: !1733, line: 51, baseType: !1754, size: 256, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1778, file: !1733, line: 53, baseType: !1754, size: 256, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1778, file: !1733, line: 54, baseType: !88, size: 64, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1778, file: !1733, line: 55, baseType: !1777, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1778, file: !1733, line: 56, baseType: !201, size: 32, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1778, file: !1733, line: 57, baseType: !201, size: 32, offset: 736)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1738, file: !1733, line: 40, baseType: !88, size: 64, offset: 2496)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1738, file: !1733, line: 42, baseType: !201, size: 32, offset: 2560)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1738, file: !1733, line: 43, baseType: !1731, size: 64, offset: 2624)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1732, file: !1733, line: 99, baseType: !1791, offset: 128)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1792, line: 211, elements: !1157)
!1792 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1732, file: !1733, line: 100, baseType: !1794, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1733, line: 63, size: 3008, elements: !1796)
!1796 = !{!1797, !1798, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1828}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1795, file: !1733, line: 64, baseType: !1777, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1795, file: !1733, line: 65, baseType: !1799, size: 192, offset: 64)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1777, size: 192, elements: !400)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1795, file: !1733, line: 67, baseType: !201, size: 32, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1795, file: !1733, line: 68, baseType: !363, size: 256, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !1733, line: 69, baseType: !314, size: 32, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1795, file: !1733, line: 70, baseType: !363, size: 256, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1795, file: !1733, line: 71, baseType: !88, size: 64, offset: 896)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1795, file: !1733, line: 72, baseType: !88, size: 64, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1795, file: !1733, line: 73, baseType: !88, size: 64, offset: 1024)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1795, file: !1733, line: 74, baseType: !88, size: 64, offset: 1088)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1795, file: !1733, line: 75, baseType: !88, size: 64, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1795, file: !1733, line: 76, baseType: !88, size: 64, offset: 1216)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1795, file: !1733, line: 77, baseType: !88, size: 64, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1795, file: !1733, line: 78, baseType: !88, size: 64, offset: 1344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1795, file: !1733, line: 79, baseType: !209, size: 8, offset: 1408)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1795, file: !1733, line: 80, baseType: !88, size: 64, offset: 1472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1795, file: !1733, line: 81, baseType: !363, size: 256, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1795, file: !1733, line: 82, baseType: !1517, size: 256, offset: 1792)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1795, file: !1733, line: 84, baseType: !334, size: 32, offset: 2048)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1795, file: !1733, line: 87, baseType: !88, size: 64, offset: 2112)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1795, file: !1733, line: 88, baseType: !88, size: 64, offset: 2176)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1795, file: !1733, line: 89, baseType: !1820, size: 704, offset: 2240)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1292, line: 111, size: 704, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1827}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1820, file: !1292, line: 112, baseType: !1291, size: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1820, file: !1292, line: 113, baseType: !1763, size: 320, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1820, file: !1292, line: 116, baseType: !1825, size: 64, offset: 576)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1292, line: 18, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1820, file: !1292, line: 117, baseType: !201, size: 32, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1795, file: !1733, line: 90, baseType: !1731, size: 64, offset: 2944)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !712, file: !6, line: 515, baseType: !1830, size: 64, offset: 8064)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1832, line: 117, size: 128, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1833 = !{!1834, !1835, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1831, file: !1832, line: 118, baseType: !486, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1831, file: !1832, line: 119, baseType: !486, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1831, file: !1832, line: 120, baseType: !287, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !712, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !712, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !712, file: !6, line: 520, baseType: !1840, size: 64, offset: 8192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !712, file: !6, line: 523, baseType: !1842, size: 64, offset: 8256)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !712, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !712, file: !6, line: 525, baseType: !1847, size: 64, offset: 8384)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !712, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !712, file: !6, line: 533, baseType: !87, size: 64, offset: 8512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !712, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !712, file: !6, line: 535, baseType: !1854, size: 64, offset: 8640)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !712, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !712, file: !6, line: 539, baseType: !201, size: 32, offset: 8736)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !712, file: !6, line: 540, baseType: !1858, size: 64, offset: 8768)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1860, line: 32, size: 64, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1859, file: !1860, line: 33, baseType: !486, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1859, file: !1860, line: 34, baseType: !486, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !712, file: !6, line: 563, baseType: !155, size: 128, offset: 8832)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !712, file: !6, line: 565, baseType: !155, size: 128, offset: 8960)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !712, file: !6, line: 568, baseType: !1867, size: 64, offset: 9088)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !712, file: !6, line: 570, baseType: !334, size: 32, offset: 9152)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !688, file: !35, line: 2382, baseType: !687, size: 64, offset: 448)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !688, file: !35, line: 2383, baseType: !417, size: 64, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !688, file: !35, line: 2385, baseType: !1874, offset: 576)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1792, line: 206, elements: !1157)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !688, file: !35, line: 2386, baseType: !1874, offset: 576)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !688, file: !35, line: 2387, baseType: !1874, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !688, file: !35, line: 2388, baseType: !1878, offset: 576)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, elements: !400)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !688, file: !35, line: 2390, baseType: !1874, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !688, file: !35, line: 2391, baseType: !1874, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !688, file: !35, line: 2392, baseType: !1874, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !688, file: !35, line: 2393, baseType: !1874, offset: 576)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !679, file: !35, line: 1197, baseType: !1884, size: 64, offset: 384)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !1887)
!1887 = !{!1888, !1892, !1896, !1897, !1901, !1905, !1909, !1910, !1911, !1915, !1919, !1923, !1924, !1925, !1931, !1935, !1936, !1940, !1941, !1942, !1943, !1947, !1951, !1998, !2013, !2014}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1886, file: !35, line: 2058, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!137, !678}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1886, file: !35, line: 2059, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !137}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1886, file: !35, line: 2060, baseType: !1893, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1886, file: !35, line: 2062, baseType: !1898, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !137, !201}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1886, file: !35, line: 2063, baseType: !1902, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!201, !137, !929}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1886, file: !35, line: 2064, baseType: !1906, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!201, !137}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1886, file: !35, line: 2065, baseType: !1893, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1886, file: !35, line: 2066, baseType: !707, size: 64, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1886, file: !35, line: 2067, baseType: !1912, size: 64, offset: 512)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!201, !678, !201}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1886, file: !35, line: 2068, baseType: !1916, size: 64, offset: 576)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!201, !678, !34}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1886, file: !35, line: 2069, baseType: !1920, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!201, !678}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1886, file: !35, line: 2070, baseType: !1916, size: 64, offset: 704)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1886, file: !35, line: 2071, baseType: !1920, size: 64, offset: 768)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1886, file: !35, line: 2072, baseType: !1926, size: 64, offset: 832)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!201, !89, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1886, file: !35, line: 2073, baseType: !1932, size: 64, offset: 896)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!201, !678, !1663, !215}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1886, file: !35, line: 2074, baseType: !707, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1886, file: !35, line: 2076, baseType: !1937, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!201, !1434, !89}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1886, file: !35, line: 2077, baseType: !1937, size: 64, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1886, file: !35, line: 2078, baseType: !1937, size: 64, offset: 1152)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1886, file: !35, line: 2079, baseType: !1937, size: 64, offset: 1216)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1886, file: !35, line: 2081, baseType: !1944, size: 64, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!794, !678, !201, !215, !806, !276}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1886, file: !35, line: 2082, baseType: !1948, size: 64, offset: 1344)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!794, !678, !201, !185, !806, !276}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1886, file: !35, line: 2083, baseType: !1952, size: 64, offset: 1408)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1955, !137}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1983, !1984, !1985}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1957, file: !40, line: 297, baseType: !421, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1957, file: !40, line: 298, baseType: !155, size: 128, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1957, file: !40, line: 299, baseType: !155, size: 128, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1957, file: !40, line: 300, baseType: !155, size: 128, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1957, file: !40, line: 301, baseType: !363, size: 256, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1957, file: !40, line: 302, baseType: !314, size: 32, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1957, file: !40, line: 303, baseType: !334, size: 32, offset: 800)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1957, file: !40, line: 304, baseType: !678, size: 64, offset: 832)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1957, file: !40, line: 305, baseType: !1968, size: 64, offset: 896)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !1969)
!1969 = !{!1970, !1982}
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1968, file: !40, line: 69, baseType: !1971, size: 32)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1968, file: !40, line: 69, size: 32, elements: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1971, file: !40, line: 70, baseType: !146, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1971, file: !40, line: 71, baseType: !161, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1971, file: !40, line: 72, baseType: !1976, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1977, line: 24, baseType: !1978)
!1977 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1977, line: 22, size: 32, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1978, file: !1977, line: 23, baseType: !1981, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1977, line: 20, baseType: !152)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1968, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1957, file: !40, line: 306, baseType: !276, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1957, file: !40, line: 307, baseType: !88, size: 64, offset: 1024)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1957, file: !40, line: 308, baseType: !1986, size: 576, offset: 1088)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !1987)
!1987 = !{!1988, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1986, file: !40, line: 206, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !278)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1986, file: !40, line: 207, baseType: !1989, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1986, file: !40, line: 208, baseType: !1989, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1986, file: !40, line: 209, baseType: !1989, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1986, file: !40, line: 210, baseType: !1989, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1986, file: !40, line: 211, baseType: !1989, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1986, file: !40, line: 212, baseType: !1989, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1986, file: !40, line: 213, baseType: !284, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1986, file: !40, line: 214, baseType: !284, size: 64, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1886, file: !35, line: 2085, baseType: !1999, size: 64, offset: 1472)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!287, !678, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2004, line: 15, size: 256, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2005 = !{!2006, !2007, !2008, !2009, !2010}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2003, file: !2004, line: 16, baseType: !844, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2003, file: !2004, line: 19, baseType: !201, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2003, file: !2004, line: 26, baseType: !88, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2003, file: !2004, line: 33, baseType: !88, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2003, file: !2004, line: 36, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2004, line: 36, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1886, file: !35, line: 2087, baseType: !1999, size: 64, offset: 1536)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1886, file: !35, line: 2089, baseType: !707, size: 64, offset: 1600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !679, file: !35, line: 1198, baseType: !2016, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2019)
!2019 = !{!2020, !2024, !2028, !2032, !2033, !2034, !2035, !2036, !2041, !2046, !2050}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2018, file: !40, line: 325, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!201, !1956}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2018, file: !40, line: 326, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1956, !678, !201}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2018, file: !40, line: 327, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !1956}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2018, file: !40, line: 328, baseType: !2021, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2018, file: !40, line: 329, baseType: !2021, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2018, file: !40, line: 330, baseType: !2021, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2018, file: !40, line: 331, baseType: !1912, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2018, file: !40, line: 334, baseType: !2037, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!2040, !137}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2018, file: !40, line: 335, baseType: !2042, size: 64, offset: 512)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!201, !137, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2018, file: !40, line: 337, baseType: !2047, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!201, !137, !2040}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2018, file: !40, line: 339, baseType: !2051, size: 64, offset: 640)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!201, !678, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !679, file: !35, line: 1199, baseType: !2056, size: 64, offset: 512)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2059)
!2059 = !{!2060, !2066, !2067, !2071, !2072, !2073, !2088, !2111, !2115, !2116, !2139}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2058, file: !40, line: 431, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!201, !678, !201, !201, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2058, file: !40, line: 432, baseType: !1912, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2058, file: !40, line: 433, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!201, !678, !7}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2058, file: !40, line: 434, baseType: !2068, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2058, file: !40, line: 435, baseType: !1912, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2058, file: !40, line: 436, baseType: !2074, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!201, !678, !201, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2078, file: !40, line: 418, baseType: !201, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2078, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2078, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2078, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2078, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2078, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2078, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2078, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2058, file: !40, line: 437, baseType: !2089, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!201, !678, !1968, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2093, file: !40, line: 346, baseType: !201, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2093, file: !40, line: 347, baseType: !129, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2093, file: !40, line: 348, baseType: !129, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2093, file: !40, line: 349, baseType: !129, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2093, file: !40, line: 350, baseType: !129, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2093, file: !40, line: 351, baseType: !129, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2093, file: !40, line: 352, baseType: !129, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2093, file: !40, line: 353, baseType: !361, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2093, file: !40, line: 355, baseType: !361, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2093, file: !40, line: 356, baseType: !201, size: 32, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2093, file: !40, line: 357, baseType: !201, size: 32, offset: 608)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2093, file: !40, line: 358, baseType: !129, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2093, file: !40, line: 359, baseType: !129, size: 64, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2093, file: !40, line: 360, baseType: !129, size: 64, offset: 768)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2093, file: !40, line: 361, baseType: !361, size: 64, offset: 832)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2093, file: !40, line: 362, baseType: !201, size: 32, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2058, file: !40, line: 438, baseType: !2112, size: 64, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!201, !678, !2054, !2092}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2058, file: !40, line: 440, baseType: !2089, size: 64, offset: 512)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2058, file: !40, line: 441, baseType: !2117, size: 64, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!201, !678, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2121, file: !40, line: 412, baseType: !7, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2121, file: !40, line: 413, baseType: !2125, size: 1344, offset: 64)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, size: 1344, elements: !400)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2138}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !40, line: 398, baseType: !7, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2126, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2126, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2126, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2126, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2126, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2126, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2126, file: !40, line: 406, baseType: !131, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2126, file: !40, line: 407, baseType: !2137, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !142, line: 132, baseType: !129)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2126, file: !40, line: 408, baseType: !2137, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2058, file: !40, line: 442, baseType: !2068, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !679, file: !35, line: 1200, baseType: !2141, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 201, size: 640, elements: !2144)
!2144 = !{!2145, !2150, !2183, !2184, !2188, !2192, !2193, !2200, !2206, !2210}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "encode_fh", scope: !2143, file: !64, line: 202, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!201, !137, !2149, !1663, !137}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_dentry", scope: !2143, file: !64, line: 204, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!89, !678, !2154, !201, !201}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fid", file: !64, line: 118, size: 160, elements: !2156)
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !64, line: 119, baseType: !2158, size: 160)
!2158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !64, line: 119, size: 160, elements: !2159)
!2159 = !{!2160, !2167, !2176}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !2158, file: !64, line: 125, baseType: !2161, size: 128)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2158, file: !64, line: 120, size: 128, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2166}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2161, file: !64, line: 121, baseType: !123, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !2161, file: !64, line: 122, baseType: !123, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ino", scope: !2161, file: !64, line: 123, baseType: !123, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2161, file: !64, line: 124, baseType: !123, size: 32, offset: 96)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "udf", scope: !2158, file: !64, line: 133, baseType: !2168, size: 160)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2158, file: !64, line: 126, size: 160, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2168, file: !64, line: 127, baseType: !123, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "partref", scope: !2168, file: !64, line: 128, baseType: !349, size: 16, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "parent_partref", scope: !2168, file: !64, line: 129, baseType: !349, size: 16, offset: 48)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2168, file: !64, line: 130, baseType: !123, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "parent_block", scope: !2168, file: !64, line: 131, baseType: !123, size: 32, offset: 96)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "parent_generation", scope: !2168, file: !64, line: 132, baseType: !123, size: 32, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !64, line: 134, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2158, file: !64, line: 134, elements: !2178)
!2178 = !{!2179, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_raw", scope: !2177, file: !64, line: 134, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2177, file: !64, line: 134, elements: !1157)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2177, file: !64, line: 134, baseType: !2182)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, elements: !445)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_parent", scope: !2143, file: !64, line: 206, baseType: !2151, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2143, file: !64, line: 208, baseType: !2185, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!201, !89, !215, !89}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2143, file: !64, line: 210, baseType: !2189, size: 64, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!89, !89}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "commit_metadata", scope: !2143, file: !64, line: 211, baseType: !1906, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "get_uuid", scope: !2143, file: !64, line: 213, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!201, !678, !2197, !2198, !2199}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "map_blocks", scope: !2143, file: !64, line: 214, baseType: !2201, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!201, !137, !276, !129, !2204, !209, !2198}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !64, line: 10, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "commit_blocks", scope: !2143, file: !64, line: 217, baseType: !2207, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!201, !137, !2204, !201, !251}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !64, line: 227, baseType: !88, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !679, file: !35, line: 1201, baseType: !88, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !679, file: !35, line: 1202, baseType: !88, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !679, file: !35, line: 1203, baseType: !88, size: 64, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !679, file: !35, line: 1204, baseType: !89, size: 64, offset: 832)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !679, file: !35, line: 1205, baseType: !501, size: 320, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !679, file: !35, line: 1206, baseType: !201, size: 32, offset: 1216)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !679, file: !35, line: 1207, baseType: !334, size: 32, offset: 1248)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !679, file: !35, line: 1209, baseType: !87, size: 64, offset: 1280)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !679, file: !35, line: 1211, baseType: !2220, size: 64, offset: 1344)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !679, file: !35, line: 1223, baseType: !2225, size: 64, offset: 1408)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !106, line: 34, size: 64, elements: !2226)
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2225, file: !106, line: 35, baseType: !109, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !679, file: !35, line: 1224, baseType: !155, size: 128, offset: 1472)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !679, file: !35, line: 1225, baseType: !2230, size: 64, offset: 1600)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !679, file: !35, line: 1226, baseType: !2233, size: 64, offset: 1664)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !679, file: !35, line: 1227, baseType: !2236, size: 64, offset: 1728)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !679, file: !35, line: 1228, baseType: !2239, size: 64, offset: 1792)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !679, file: !35, line: 1229, baseType: !421, size: 128, offset: 1856)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !679, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !679, file: !35, line: 1231, baseType: !2244, size: 2496, offset: 2048)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2250, !2282}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2244, file: !40, line: 522, baseType: !7, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2244, file: !40, line: 523, baseType: !501, size: 320, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2244, file: !40, line: 524, baseType: !2249, size: 192, offset: 384)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !400)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2244, file: !40, line: 525, baseType: !2251, size: 1728, offset: 576)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2252, size: 1728, elements: !400)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2253)
!2253 = !{!2254, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2252, file: !40, line: 223, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2257)
!2257 = !{!2258, !2259, !2272, !2273}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2256, file: !40, line: 446, baseType: !201, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2256, file: !40, line: 447, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2262, file: !40, line: 313, baseType: !1912, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2262, file: !40, line: 314, baseType: !1912, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2262, file: !40, line: 315, baseType: !1912, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2262, file: !40, line: 316, baseType: !1912, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2262, file: !40, line: 317, baseType: !2021, size: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2262, file: !40, line: 318, baseType: !2021, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2262, file: !40, line: 319, baseType: !2021, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2262, file: !40, line: 320, baseType: !2051, size: 64, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2256, file: !40, line: 448, baseType: !711, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2256, file: !40, line: 449, baseType: !2255, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2252, file: !40, line: 224, baseType: !201, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2252, file: !40, line: 226, baseType: !155, size: 128, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2252, file: !40, line: 227, baseType: !88, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2252, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2252, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2252, file: !40, line: 230, baseType: !1989, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2252, file: !40, line: 231, baseType: !1989, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2252, file: !40, line: 232, baseType: !87, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2244, file: !40, line: 526, baseType: !2283, size: 192, offset: 2304)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2260, size: 192, elements: !400)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !679, file: !35, line: 1233, baseType: !2285, size: 2368, offset: 4544)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2286)
!2286 = !{!2287, !2288, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2285, file: !35, line: 1185, baseType: !143, size: 16)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2285, file: !35, line: 1186, baseType: !143, size: 16, offset: 16)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2285, file: !35, line: 1187, baseType: !2290, size: 2304, offset: 64)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2291, size: 2304, elements: !400)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2292, line: 12, size: 768, elements: !2293)
!2292 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2293 = !{!2294, !2302, !2303, !3483, !3484}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2291, file: !2292, line: 13, baseType: !2295, size: 384)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2296, line: 17, size: 384, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2297 = !{!2298, !2299, !2300, !2301}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2295, file: !2296, line: 18, baseType: !201, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2295, file: !2296, line: 19, baseType: !201, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2295, file: !2296, line: 20, baseType: !430, size: 192, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2295, file: !2296, line: 22, baseType: !304, size: 128, align: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2291, file: !2292, line: 14, baseType: !1615, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2291, file: !2292, line: 15, baseType: !2304, size: 64, offset: 448)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2305, line: 16, size: 64, elements: !2306)
!2305 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2304, file: !2305, line: 17, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1436, line: 746, size: 58368, elements: !2310)
!2310 = !{!2311, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2391, !2402, !2490, !2494, !2497, !2528, !2529, !2530, !2531, !2542, !2544, !2545, !2546, !2547, !2548, !2549, !2560, !2561, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2578, !2579, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2666, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2714, !2720, !2721, !2722, !2723, !2724, !2728, !2731, !2738, !2743, !2746, !2749, !2752, !2755, !2893, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2931, !2932, !2933, !2942, !2950, !2951, !2952, !2953, !2954, !2959, !2960, !2961, !2964, !2965, !2968, !2971, !2974, !2982, !2985, !2986, !3072, !3073, !3074, !3075, !3076, !3082, !3083, !3084, !3085, !3088, !3089, !3092, !3095, !3096, !3099, !3100, !3101, !3104, !3105, !3106, !3107, !3108, !3109, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3141, !3144, !3150, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3162, !3234, !3236, !3237, !3238, !3239, !3240, !3241, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3258, !3259, !3260}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2309, file: !1436, line: 752, baseType: !2312, size: 192)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2313, line: 56, size: 192, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2314 = !{!2315, !2316, !2317, !2318}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 57, baseType: !88, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2312, file: !2313, line: 58, baseType: !88, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2312, file: !2313, line: 59, baseType: !123, size: 32, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2312, file: !2313, line: 61, baseType: !123, size: 32, offset: 160)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2309, file: !1436, line: 754, baseType: !7, size: 32, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2309, file: !1436, line: 767, baseType: !87, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2309, file: !1436, line: 768, baseType: !408, size: 32, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !1436, line: 770, baseType: !7, size: 32, offset: 352)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2309, file: !1436, line: 771, baseType: !7, size: 32, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2309, file: !1436, line: 774, baseType: !201, size: 32, offset: 416)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2309, file: !1436, line: 775, baseType: !2326, size: 128, offset: 448)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2327, line: 58, size: 128, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2328 = !{!2329, !2330, !2335, !2336}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2326, file: !2327, line: 59, baseType: !298, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !2327, line: 60, baseType: !2331, size: 32, offset: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2326, file: !2327, line: 60, size: 32, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2331, file: !2327, line: 61, baseType: !7, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2331, file: !2327, line: 62, baseType: !334, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2326, file: !2327, line: 65, baseType: !349, size: 16, offset: 96)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2326, file: !2327, line: 65, baseType: !349, size: 16, offset: 112)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2309, file: !1436, line: 776, baseType: !7, size: 32, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2309, file: !1436, line: 777, baseType: !88, size: 64, offset: 640)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2309, file: !1436, line: 778, baseType: !2308, size: 64, offset: 704)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2309, file: !1436, line: 787, baseType: !201, size: 32, offset: 768)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2309, file: !1436, line: 788, baseType: !201, size: 32, offset: 800)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2309, file: !1436, line: 790, baseType: !201, size: 32, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2309, file: !1436, line: 792, baseType: !201, size: 32, offset: 864)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2309, file: !1436, line: 793, baseType: !201, size: 32, offset: 896)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2309, file: !1436, line: 794, baseType: !201, size: 32, offset: 928)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2309, file: !1436, line: 795, baseType: !7, size: 32, offset: 960)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2309, file: !1436, line: 797, baseType: !2348, size: 2048, offset: 1024)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1436, line: 551, size: 2048, elements: !2349)
!2349 = !{!2350, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2370, !2373, !2374, !2375}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2348, file: !1436, line: 553, baseType: !2351, size: 128)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1436, line: 411, size: 128, elements: !2352)
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2351, file: !1436, line: 412, baseType: !88, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2351, file: !1436, line: 413, baseType: !123, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2348, file: !1436, line: 554, baseType: !493, size: 192, align: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2348, file: !1436, line: 555, baseType: !129, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2348, file: !1436, line: 556, baseType: !129, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2348, file: !1436, line: 558, baseType: !155, size: 128, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2348, file: !1436, line: 559, baseType: !7, size: 32, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2348, file: !1436, line: 561, baseType: !129, size: 64, offset: 640)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2348, file: !1436, line: 562, baseType: !129, size: 64, offset: 704)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2348, file: !1436, line: 563, baseType: !129, size: 64, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2348, file: !1436, line: 564, baseType: !129, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2348, file: !1436, line: 565, baseType: !361, size: 64, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2348, file: !1436, line: 566, baseType: !129, size: 64, offset: 960)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2348, file: !1436, line: 568, baseType: !129, size: 64, offset: 1024)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2348, file: !1436, line: 571, baseType: !201, size: 32, offset: 1088)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2348, file: !1436, line: 572, baseType: !2369, size: 64, offset: 1152)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2348, file: !1436, line: 574, baseType: !2371, size: 64, offset: 1216)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1436, line: 49, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2348, file: !1436, line: 576, baseType: !2371, size: 64, offset: 1280)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2348, file: !1436, line: 578, baseType: !88, size: 64, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2348, file: !1436, line: 588, baseType: !2376, size: 512, align: 512, offset: 1536)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1436, line: 497, size: 512, align: 512, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2376, file: !1436, line: 498, baseType: !129, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2376, file: !1436, line: 499, baseType: !129, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2376, file: !1436, line: 500, baseType: !129, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2376, file: !1436, line: 501, baseType: !123, size: 32, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2376, file: !1436, line: 502, baseType: !123, size: 32, offset: 224)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2376, file: !1436, line: 503, baseType: !88, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2376, file: !1436, line: 504, baseType: !88, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2376, file: !1436, line: 505, baseType: !88, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2376, file: !1436, line: 506, baseType: !2387, size: 64, align: 64, offset: 448)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1436, line: 445, size: 64, align: 64, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2387, file: !1436, line: 446, baseType: !7, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2387, file: !1436, line: 447, baseType: !7, size: 32, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2309, file: !1436, line: 798, baseType: !2392, size: 384, offset: 3072)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1436, line: 592, size: 384, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2392, file: !1436, line: 593, baseType: !155, size: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2392, file: !1436, line: 594, baseType: !88, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2392, file: !1436, line: 595, baseType: !88, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2392, file: !1436, line: 596, baseType: !7, size: 32, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2392, file: !1436, line: 597, baseType: !143, size: 16, offset: 288)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2392, file: !1436, line: 598, baseType: !143, size: 16, offset: 304)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2392, file: !1436, line: 600, baseType: !2401, size: 64, offset: 320)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2309, file: !1436, line: 799, baseType: !2403, size: 1792, offset: 3456)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1436, line: 610, size: 1792, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2487, !2488}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2403, file: !1436, line: 611, baseType: !493, size: 192, align: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2403, file: !1436, line: 618, baseType: !129, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2403, file: !1436, line: 619, baseType: !129, size: 64, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2403, file: !1436, line: 620, baseType: !129, size: 64, offset: 320)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2403, file: !1436, line: 621, baseType: !129, size: 64, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2403, file: !1436, line: 622, baseType: !129, size: 64, offset: 448)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2403, file: !1436, line: 629, baseType: !361, size: 64, offset: 512)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2403, file: !1436, line: 630, baseType: !129, size: 64, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2403, file: !1436, line: 631, baseType: !7, size: 32, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2403, file: !1436, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2403, file: !1436, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2403, file: !1436, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2403, file: !1436, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2403, file: !1436, line: 662, baseType: !2419, size: 512, offset: 704)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2420)
!2420 = !{!2421, !2429, !2430, !2435, !2483, !2484, !2485, !2486}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2419, file: !46, line: 119, baseType: !2422, size: 256)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2423, line: 9, size: 256, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2422, file: !2423, line: 10, baseType: !493, size: 192, align: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2422, file: !2423, line: 11, baseType: !2427, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2428, line: 29, baseType: !361)
!2428 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2419, file: !46, line: 120, baseType: !2427, size: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2419, file: !46, line: 121, baseType: !2431, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!45, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2419, file: !46, line: 122, baseType: !2436, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2438)
!2438 = !{!2439, !2464, !2465, !2468, !2473, !2474, !2478, !2482}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2437, file: !46, line: 160, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2441, file: !46, line: 216, baseType: !368, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2441, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2441, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2441, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2441, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2441, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2441, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2441, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2441, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2441, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2441, file: !46, line: 227, baseType: !143, size: 16, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2441, file: !46, line: 228, baseType: !143, size: 16, offset: 208)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2441, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2441, file: !46, line: 235, baseType: !2427, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2441, file: !46, line: 236, baseType: !2434, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2441, file: !46, line: 237, baseType: !2427, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2441, file: !46, line: 238, baseType: !2434, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2441, file: !46, line: 239, baseType: !2461, size: 4096, align: 512, offset: 512)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 4096, align: 512, elements: !2462)
!2462 = !{!2463}
!2463 = !DISubrange(count: 8)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2437, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2437, file: !46, line: 162, baseType: !2466, size: 32, offset: 96)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !142, line: 32, baseType: !2467)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !153, line: 96, baseType: !201)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2437, file: !46, line: 163, baseType: !2469, size: 32, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !96, line: 274, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !96, line: 274, size: 32, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2470, file: !96, line: 274, baseType: !100, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2437, file: !46, line: 164, baseType: !2434, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2437, file: !46, line: 165, baseType: !2475, size: 128, offset: 256)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2423, line: 14, size: 128, elements: !2476)
!2476 = !{!2477}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2475, file: !2423, line: 15, baseType: !850, size: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2437, file: !46, line: 166, baseType: !2479, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!2427}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2437, file: !46, line: 167, baseType: !2427, size: 64, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2419, file: !46, line: 123, baseType: !342, size: 8, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2419, file: !46, line: 124, baseType: !342, size: 8, offset: 456)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2419, file: !46, line: 125, baseType: !342, size: 8, offset: 464)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2419, file: !46, line: 126, baseType: !342, size: 8, offset: 472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2403, file: !1436, line: 671, baseType: !2419, size: 512, offset: 1216)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2403, file: !1436, line: 679, baseType: !2489, size: 64, offset: 1728)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2309, file: !1436, line: 800, baseType: !2491, size: 64, offset: 5248)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1436, line: 800, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2309, file: !1436, line: 809, baseType: !2495, size: 64, offset: 5312)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1436, line: 70, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2309, file: !1436, line: 825, baseType: !2498, size: 2048, align: 512, offset: 5632)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1436, line: 509, size: 2048, align: 512, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2498, file: !1436, line: 511, baseType: !129, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2498, file: !1436, line: 512, baseType: !129, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2498, file: !1436, line: 513, baseType: !129, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2498, file: !1436, line: 514, baseType: !129, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2498, file: !1436, line: 515, baseType: !129, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2498, file: !1436, line: 516, baseType: !129, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2498, file: !1436, line: 518, baseType: !129, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2498, file: !1436, line: 519, baseType: !129, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2498, file: !1436, line: 520, baseType: !361, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2498, file: !1436, line: 522, baseType: !129, size: 64, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2498, file: !1436, line: 523, baseType: !129, size: 64, offset: 640)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2498, file: !1436, line: 524, baseType: !361, size: 64, offset: 704)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2498, file: !1436, line: 526, baseType: !361, size: 64, offset: 768)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2498, file: !1436, line: 527, baseType: !129, size: 64, offset: 832)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2498, file: !1436, line: 529, baseType: !129, size: 64, offset: 896)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2498, file: !1436, line: 530, baseType: !129, size: 64, offset: 960)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2498, file: !1436, line: 531, baseType: !129, size: 64, offset: 1024)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2498, file: !1436, line: 532, baseType: !129, size: 64, offset: 1088)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2498, file: !1436, line: 533, baseType: !129, size: 64, offset: 1152)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2498, file: !1436, line: 535, baseType: !129, size: 64, offset: 1216)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2498, file: !1436, line: 536, baseType: !129, size: 64, offset: 1280)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2498, file: !1436, line: 537, baseType: !129, size: 64, offset: 1344)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2498, file: !1436, line: 538, baseType: !129, size: 64, offset: 1408)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2498, file: !1436, line: 539, baseType: !129, size: 64, offset: 1472)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2498, file: !1436, line: 540, baseType: !129, size: 64, offset: 1536)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2498, file: !1436, line: 541, baseType: !129, size: 64, offset: 1600)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2498, file: !1436, line: 542, baseType: !129, size: 64, offset: 1664)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2498, file: !1436, line: 543, baseType: !129, size: 64, offset: 1728)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2309, file: !1436, line: 833, baseType: !7, size: 32, offset: 7680)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2309, file: !1436, line: 836, baseType: !7, size: 32, offset: 7712)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2309, file: !1436, line: 837, baseType: !201, size: 32, offset: 7744)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2309, file: !1436, line: 838, baseType: !2532, size: 64, offset: 7808)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2535, line: 19, baseType: !2536)
!2535 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2535, line: 19, size: 64, elements: !2537)
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2536, file: !2535, line: 19, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !2540)
!2540 = !{!2541}
!2541 = !DISubrange(count: 1)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2309, file: !1436, line: 839, baseType: !2543, size: 64, offset: 7872)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2309, file: !1436, line: 840, baseType: !2534, size: 64, offset: 7936)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2309, file: !1436, line: 841, baseType: !87, size: 64, offset: 8000)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2309, file: !1436, line: 843, baseType: !143, size: 16, offset: 8064)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2309, file: !1436, line: 845, baseType: !143, size: 16, offset: 8080)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2309, file: !1436, line: 848, baseType: !201, size: 32, offset: 8096)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2309, file: !1436, line: 849, baseType: !2550, size: 32, offset: 8128)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1436, line: 718, size: 32, elements: !2551)
!2551 = !{!2552, !2559}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2550, file: !1436, line: 724, baseType: !2553, size: 32)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !1436, line: 719, size: 32, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2553, file: !1436, line: 720, baseType: !342, size: 8)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2553, file: !1436, line: 721, baseType: !342, size: 8, offset: 8)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2553, file: !1436, line: 722, baseType: !342, size: 8, offset: 16)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2553, file: !1436, line: 723, baseType: !342, size: 8, offset: 24)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2550, file: !1436, line: 725, baseType: !123, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2309, file: !1436, line: 850, baseType: !155, size: 128, offset: 8192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2309, file: !1436, line: 851, baseType: !2562, size: 64, offset: 8320)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1436, line: 60, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2309, file: !1436, line: 855, baseType: !88, size: 64, offset: 8384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2309, file: !1436, line: 856, baseType: !342, size: 8, offset: 8448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2309, file: !1436, line: 857, baseType: !342, size: 8, offset: 8456)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2309, file: !1436, line: 858, baseType: !201, size: 32, offset: 8480)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2309, file: !1436, line: 859, baseType: !155, size: 128, offset: 8512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2309, file: !1436, line: 860, baseType: !201, size: 32, offset: 8640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2309, file: !1436, line: 861, baseType: !155, size: 128, offset: 8704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2309, file: !1436, line: 873, baseType: !2572, size: 256, offset: 8832)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1436, line: 376, size: 256, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2572, file: !1436, line: 381, baseType: !88, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2572, file: !1436, line: 384, baseType: !131, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2572, file: !1436, line: 389, baseType: !131, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2572, file: !1436, line: 392, baseType: !131, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2309, file: !1436, line: 875, baseType: !155, size: 128, offset: 9088)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2309, file: !1436, line: 877, baseType: !2580, size: 320, offset: 9216)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2581, line: 86, size: 320, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2582 = !{!2583, !2584, !2585}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2580, file: !2581, line: 87, baseType: !201, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2580, file: !2581, line: 88, baseType: !155, size: 128, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2580, file: !2581, line: 89, baseType: !155, size: 128, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2309, file: !1436, line: 878, baseType: !493, size: 192, align: 64, offset: 9536)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2309, file: !1436, line: 881, baseType: !1136, size: 64, offset: 9728)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2309, file: !1436, line: 882, baseType: !1136, size: 64, offset: 9792)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2309, file: !1436, line: 884, baseType: !201, size: 32, offset: 9856)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2309, file: !1436, line: 885, baseType: !201, size: 32, offset: 9888)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2309, file: !1436, line: 886, baseType: !201, size: 32, offset: 9920)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2309, file: !1436, line: 888, baseType: !201, size: 32, offset: 9952)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2309, file: !1436, line: 890, baseType: !88, size: 64, offset: 9984)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2309, file: !1436, line: 893, baseType: !7, size: 32, offset: 10048)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2309, file: !1436, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2309, file: !1436, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2309, file: !1436, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2309, file: !1436, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2309, file: !1436, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2309, file: !1436, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2309, file: !1436, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2309, file: !1436, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2309, file: !1436, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2309, file: !1436, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2309, file: !1436, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2309, file: !1436, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2309, file: !1436, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2309, file: !1436, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2309, file: !1436, line: 969, baseType: !88, size: 64, offset: 10176)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2309, file: !1436, line: 971, baseType: !2611, size: 448, offset: 10240)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2612)
!2612 = !{!2613, !2614, !2619}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2611, file: !51, line: 26, baseType: !88, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2611, file: !51, line: 27, baseType: !2615, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!287, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !51, line: 28, baseType: !2620, size: 320, offset: 128)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2611, file: !51, line: 28, size: 320, elements: !2621)
!2621 = !{!2622, !2631, !2656}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2620, file: !51, line: 37, baseType: !2623, size: 320)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !51, line: 30, size: 320, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2623, file: !51, line: 31, baseType: !2198, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2623, file: !51, line: 32, baseType: !123, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !51, line: 33, baseType: !123, size: 32, offset: 96)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2623, file: !51, line: 34, baseType: !123, size: 32, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2623, file: !51, line: 35, baseType: !129, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2623, file: !51, line: 36, baseType: !2198, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2620, file: !51, line: 47, baseType: !2632, size: 192)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !51, line: 39, size: 192, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2655}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2632, file: !51, line: 40, baseType: !2466, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2632, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !51, line: 42, baseType: !2637, size: 64, offset: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !51, line: 42, size: 64, elements: !2638)
!2638 = !{!2639, !2647}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2637, file: !51, line: 43, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2642, line: 7, size: 128, elements: !2643)
!2642 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2643 = !{!2644, !2646}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2641, file: !2642, line: 8, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !153, line: 93, baseType: !278)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2641, file: !2642, line: 9, baseType: !278, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2637, file: !51, line: 44, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2650, line: 7, size: 64, elements: !2651)
!2650 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2651 = !{!2652, !2654}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2649, file: !2650, line: 8, baseType: !2653, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2650, line: 5, baseType: !486)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2649, file: !2650, line: 9, baseType: !486, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2632, file: !51, line: 46, baseType: !129, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2620, file: !51, line: 55, baseType: !2657, size: 256)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !51, line: 49, size: 256, elements: !2658)
!2658 = !{!2659, !2662, !2663, !2664, !2665}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2657, file: !51, line: 50, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2657, file: !51, line: 51, baseType: !201, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2657, file: !51, line: 52, baseType: !201, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2657, file: !51, line: 53, baseType: !88, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2657, file: !51, line: 54, baseType: !88, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2309, file: !1436, line: 973, baseType: !2667, size: 32, offset: 10688)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !142, line: 27, baseType: !2668)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !153, line: 28, baseType: !201)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2309, file: !1436, line: 974, baseType: !2667, size: 32, offset: 10720)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2309, file: !1436, line: 978, baseType: !88, size: 64, offset: 10752)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2309, file: !1436, line: 987, baseType: !2308, size: 64, offset: 10816)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2309, file: !1436, line: 990, baseType: !2308, size: 64, offset: 10880)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2309, file: !1436, line: 995, baseType: !155, size: 128, offset: 10944)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2309, file: !1436, line: 996, baseType: !155, size: 128, offset: 11072)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2309, file: !1436, line: 997, baseType: !2308, size: 64, offset: 11200)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2309, file: !1436, line: 1005, baseType: !155, size: 128, offset: 11264)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2309, file: !1436, line: 1006, baseType: !155, size: 128, offset: 11392)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2309, file: !1436, line: 1009, baseType: !404, size: 64, offset: 11520)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2309, file: !1436, line: 1010, baseType: !2680, size: 512, offset: 11584)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 512, elements: !426)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2309, file: !1436, line: 1011, baseType: !155, size: 128, offset: 12096)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2309, file: !1436, line: 1012, baseType: !155, size: 128, offset: 12224)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2309, file: !1436, line: 1014, baseType: !1516, size: 64, offset: 12352)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2309, file: !1436, line: 1017, baseType: !1663, size: 64, offset: 12416)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2309, file: !1436, line: 1020, baseType: !1663, size: 64, offset: 12480)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2309, file: !1436, line: 1023, baseType: !87, size: 64, offset: 12544)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2309, file: !1436, line: 1025, baseType: !129, size: 64, offset: 12608)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2309, file: !1436, line: 1026, baseType: !129, size: 64, offset: 12672)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2309, file: !1436, line: 1031, baseType: !129, size: 64, offset: 12736)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2309, file: !1436, line: 1032, baseType: !2691, size: 192, offset: 12800)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1436, line: 324, size: 192, elements: !2692)
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2691, file: !1436, line: 326, baseType: !129, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2691, file: !1436, line: 327, baseType: !129, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2691, file: !1436, line: 328, baseType: !368, size: 32, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2309, file: !1436, line: 1041, baseType: !88, size: 64, offset: 12992)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2309, file: !1436, line: 1042, baseType: !88, size: 64, offset: 13056)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2309, file: !1436, line: 1045, baseType: !129, size: 64, offset: 13120)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2309, file: !1436, line: 1048, baseType: !129, size: 64, offset: 13184)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2309, file: !1436, line: 1051, baseType: !88, size: 64, offset: 13248)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2309, file: !1436, line: 1052, baseType: !88, size: 64, offset: 13312)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2309, file: !1436, line: 1055, baseType: !2703, size: 640, offset: 13376)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2704, line: 132, size: 640, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2705 = !{!2706, !2712, !2713}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2703, file: !2704, line: 133, baseType: !2707, size: 576)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2708, size: 576, elements: !400)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2704, line: 117, size: 192, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2708, file: !2704, line: 118, baseType: !129, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2708, file: !2704, line: 119, baseType: !2475, size: 128, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2703, file: !2704, line: 134, baseType: !7, size: 32, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2703, file: !2704, line: 135, baseType: !7, size: 32, offset: 608)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2309, file: !1436, line: 1058, baseType: !2715, size: 448, offset: 14016)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2704, line: 144, size: 448, elements: !2716)
!2716 = !{!2717, !2718, !2719}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2715, file: !2704, line: 145, baseType: !304, size: 128, align: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2715, file: !2704, line: 146, baseType: !363, size: 256, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2715, file: !2704, line: 147, baseType: !7, size: 32, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2309, file: !1436, line: 1064, baseType: !452, size: 64, offset: 14464)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2309, file: !1436, line: 1067, baseType: !452, size: 64, offset: 14528)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2309, file: !1436, line: 1070, baseType: !452, size: 64, offset: 14592)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2309, file: !1436, line: 1074, baseType: !478, size: 64, offset: 14656)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2309, file: !1436, line: 1084, baseType: !2725, size: 128, offset: 14720)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !2726)
!2726 = !{!2727}
!2727 = !DISubrange(count: 16)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2309, file: !1436, line: 1086, baseType: !2729, size: 64, offset: 14848)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1436, line: 55, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2309, file: !1436, line: 1089, baseType: !2732, size: 64, offset: 14912)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2733, line: 12, size: 64, elements: !2734)
!2733 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2732, file: !2733, line: 13, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2733, line: 8, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2309, file: !1436, line: 1090, baseType: !2739, size: 128, offset: 14976)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2740, line: 13, size: 128, elements: !2741)
!2740 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2741 = !{!2742}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2739, file: !2740, line: 14, baseType: !155, size: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2309, file: !1436, line: 1097, baseType: !2744, size: 64, offset: 15104)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1436, line: 50, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2309, file: !1436, line: 1100, baseType: !2747, size: 64, offset: 15168)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1436, line: 1100, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2309, file: !1436, line: 1103, baseType: !2750, size: 64, offset: 15232)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1436, line: 53, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2309, file: !1436, line: 1107, baseType: !2753, size: 64, offset: 15296)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1436, line: 56, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2309, file: !1436, line: 1110, baseType: !2756, size: 64, offset: 15360)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2758, line: 93, size: 8768, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2807, !2816, !2817, !2819, !2820, !2821, !2824, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2862, !2863, !2870, !2880, !2883, !2884, !2887, !2888, !2889, !2890, !2891, !2892}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2757, file: !2758, line: 94, baseType: !408, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2757, file: !2758, line: 95, baseType: !334, size: 32, offset: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2757, file: !2758, line: 96, baseType: !201, size: 32, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2757, file: !2758, line: 97, baseType: !201, size: 32, offset: 96)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2757, file: !2758, line: 98, baseType: !155, size: 128, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2757, file: !2758, line: 100, baseType: !430, size: 192, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2757, file: !2758, line: 103, baseType: !2308, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2757, file: !2758, line: 106, baseType: !2768, size: 192, offset: 512)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !644, line: 32, size: 192, elements: !2769)
!2769 = !{!2770, !2771}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2768, file: !644, line: 33, baseType: !155, size: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2768, file: !644, line: 34, baseType: !2772, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2773, line: 25, baseType: !2774)
!2773 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2773, line: 23, size: 64, elements: !2775)
!2775 = !{!2776}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2774, file: !2773, line: 24, baseType: !2539, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2757, file: !2758, line: 109, baseType: !417, size: 64, offset: 704)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2757, file: !2758, line: 112, baseType: !201, size: 32, offset: 768)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2757, file: !2758, line: 114, baseType: !201, size: 32, offset: 800)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2757, file: !2758, line: 115, baseType: !2308, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2757, file: !2758, line: 118, baseType: !201, size: 32, offset: 896)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2757, file: !2758, line: 119, baseType: !7, size: 32, offset: 928)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2757, file: !2758, line: 121, baseType: !2784, size: 64, offset: 960)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2758, line: 80, size: 448, elements: !2786)
!2786 = !{!2787, !2788, !2794}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2785, file: !2758, line: 81, baseType: !334, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2785, file: !2758, line: 82, baseType: !2789, size: 128, offset: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2758, line: 75, size: 128, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2789, file: !2758, line: 76, baseType: !2308, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2789, file: !2758, line: 77, baseType: !2793, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2785, file: !2758, line: 83, baseType: !1517, size: 256, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2757, file: !2758, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2757, file: !2758, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2757, file: !2758, line: 138, baseType: !7, size: 32, offset: 1056)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2757, file: !2758, line: 139, baseType: !155, size: 128, offset: 1088)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2757, file: !2758, line: 142, baseType: !2419, size: 512, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2757, file: !2758, line: 143, baseType: !2427, size: 64, offset: 1728)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2757, file: !2758, line: 150, baseType: !2802, size: 256, offset: 1792)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2803, size: 256, elements: !1653)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2758, line: 38, size: 128, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2803, file: !2758, line: 39, baseType: !129, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2803, file: !2758, line: 40, baseType: !129, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2757, file: !2758, line: 156, baseType: !2808, size: 192, offset: 2048)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2758, line: 66, size: 192, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2808, file: !2758, line: 67, baseType: !2811, size: 192)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2758, line: 47, size: 192, elements: !2812)
!2812 = !{!2813, !2814, !2815}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2811, file: !2758, line: 48, baseType: !357, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2811, file: !2758, line: 49, baseType: !357, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2811, file: !2758, line: 50, baseType: !357, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2757, file: !2758, line: 160, baseType: !2703, size: 640, offset: 2240)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2757, file: !2758, line: 163, baseType: !2818, size: 256, offset: 2880)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !426)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2757, file: !2758, line: 169, baseType: !404, size: 64, offset: 3136)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2757, file: !2758, line: 172, baseType: !201, size: 32, offset: 3200)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2757, file: !2758, line: 174, baseType: !2822, size: 64, offset: 3264)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2758, line: 174, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2757, file: !2758, line: 185, baseType: !2825, size: 64, offset: 3328)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !96, line: 860, baseType: !2826)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 853, size: 64, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2826, file: !96, line: 858, baseType: !95, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2826, file: !96, line: 859, baseType: !314, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2757, file: !2758, line: 186, baseType: !129, size: 64, offset: 3392)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2757, file: !2758, line: 186, baseType: !129, size: 64, offset: 3456)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2757, file: !2758, line: 186, baseType: !129, size: 64, offset: 3520)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2757, file: !2758, line: 186, baseType: !129, size: 64, offset: 3584)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2757, file: !2758, line: 187, baseType: !129, size: 64, offset: 3648)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2757, file: !2758, line: 188, baseType: !129, size: 64, offset: 3712)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2757, file: !2758, line: 189, baseType: !2691, size: 192, offset: 3776)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2757, file: !2758, line: 190, baseType: !88, size: 64, offset: 3968)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2757, file: !2758, line: 190, baseType: !88, size: 64, offset: 4032)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2757, file: !2758, line: 190, baseType: !88, size: 64, offset: 4096)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2757, file: !2758, line: 190, baseType: !88, size: 64, offset: 4160)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2757, file: !2758, line: 191, baseType: !88, size: 64, offset: 4224)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2757, file: !2758, line: 191, baseType: !88, size: 64, offset: 4288)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2757, file: !2758, line: 191, baseType: !88, size: 64, offset: 4352)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2757, file: !2758, line: 191, baseType: !88, size: 64, offset: 4416)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2757, file: !2758, line: 192, baseType: !88, size: 64, offset: 4480)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2757, file: !2758, line: 192, baseType: !88, size: 64, offset: 4544)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2757, file: !2758, line: 192, baseType: !88, size: 64, offset: 4608)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2757, file: !2758, line: 192, baseType: !88, size: 64, offset: 4672)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2757, file: !2758, line: 193, baseType: !88, size: 64, offset: 4736)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2757, file: !2758, line: 193, baseType: !88, size: 64, offset: 4800)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2757, file: !2758, line: 194, baseType: !2852, size: 448, offset: 4864)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2853, line: 12, size: 448, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2852, file: !2853, line: 15, baseType: !129, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2852, file: !2853, line: 17, baseType: !129, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2852, file: !2853, line: 19, baseType: !129, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2852, file: !2853, line: 21, baseType: !129, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2852, file: !2853, line: 29, baseType: !129, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2852, file: !2853, line: 35, baseType: !129, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2852, file: !2853, line: 44, baseType: !129, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2757, file: !2758, line: 202, baseType: !131, size: 64, offset: 5312)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2757, file: !2758, line: 213, baseType: !2864, size: 2048, offset: 5376)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2865, size: 2048, elements: !2726)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2866, line: 43, size: 128, elements: !2867)
!2866 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2865, file: !2866, line: 44, baseType: !808, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2865, file: !2866, line: 45, baseType: !808, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2757, file: !2758, line: 216, baseType: !2871, size: 448, offset: 7424)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2758, line: 30, size: 448, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2871, file: !2758, line: 31, baseType: !201, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2871, file: !2758, line: 32, baseType: !287, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2871, file: !2758, line: 33, baseType: !88, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2871, file: !2758, line: 34, baseType: !129, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2871, file: !2758, line: 34, baseType: !129, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2871, file: !2758, line: 35, baseType: !88, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2871, file: !2758, line: 35, baseType: !88, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2757, file: !2758, line: 219, baseType: !2881, size: 64, offset: 7872)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2758, line: 219, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2757, file: !2758, line: 222, baseType: !7, size: 32, offset: 7936)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2757, file: !2758, line: 223, baseType: !2885, size: 64, offset: 8000)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2758, line: 223, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2757, file: !2758, line: 230, baseType: !209, size: 8, offset: 8064)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2757, file: !2758, line: 231, baseType: !527, size: 16, offset: 8080)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2757, file: !2758, line: 232, baseType: !527, size: 16, offset: 8096)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2757, file: !2758, line: 234, baseType: !1136, size: 64, offset: 8128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2757, file: !2758, line: 237, baseType: !363, size: 256, offset: 8192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2757, file: !2758, line: 243, baseType: !501, size: 320, offset: 8448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2309, file: !1436, line: 1111, baseType: !2894, size: 64, offset: 15424)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2758, line: 20, size: 16640, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2895, file: !2758, line: 21, baseType: !314, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2895, file: !2758, line: 22, baseType: !408, size: 32, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2895, file: !2758, line: 23, baseType: !430, size: 192, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2895, file: !2758, line: 24, baseType: !2901, size: 16384, offset: 256)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2902, size: 16384, elements: !767)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !644, line: 51, size: 256, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2902, file: !644, line: 52, baseType: !2905, size: 256)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !644, line: 37, size: 256, elements: !2906)
!2906 = !{!2907, !2914, !2915, !2919}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2905, file: !644, line: 39, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2909, line: 83, baseType: !2910)
!2909 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2909, line: 82, baseType: !2912)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !201}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2905, file: !644, line: 40, baseType: !88, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2905, file: !644, line: 46, baseType: !2916, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2909, line: 86, baseType: !2917)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2909, line: 85, baseType: !1868)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2905, file: !644, line: 48, baseType: !2772, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2309, file: !1436, line: 1112, baseType: !2772, size: 64, offset: 15488)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2309, file: !1436, line: 1113, baseType: !2772, size: 64, offset: 15552)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2309, file: !1436, line: 1115, baseType: !2772, size: 64, offset: 15616)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2309, file: !1436, line: 1116, baseType: !2768, size: 192, offset: 15680)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2309, file: !1436, line: 1117, baseType: !88, size: 64, offset: 15872)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2309, file: !1436, line: 1118, baseType: !806, size: 64, offset: 15936)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2309, file: !1436, line: 1119, baseType: !7, size: 32, offset: 16000)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2309, file: !1436, line: 1121, baseType: !307, size: 64, offset: 16064)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2309, file: !1436, line: 1125, baseType: !2929, size: 64, offset: 16128)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1436, line: 43, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2309, file: !1436, line: 1127, baseType: !146, size: 32, offset: 16192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2309, file: !1436, line: 1128, baseType: !7, size: 32, offset: 16224)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2309, file: !1436, line: 1130, baseType: !2934, size: 128, offset: 16256)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2935, line: 37, size: 128, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2934, file: !2935, line: 38, baseType: !201, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2934, file: !2935, line: 39, baseType: !334, size: 32, offset: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2934, file: !2935, line: 40, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2935, line: 24, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2309, file: !1436, line: 1131, baseType: !2943, size: 256, offset: 16384)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2944, line: 12, size: 256, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2945 = !{!2946, !2947, !2948, !2949}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2943, file: !2944, line: 13, baseType: !215, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2943, file: !2944, line: 14, baseType: !88, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2943, file: !2944, line: 15, baseType: !88, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2943, file: !2944, line: 16, baseType: !209, size: 8, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2309, file: !1436, line: 1134, baseType: !129, size: 64, offset: 16640)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2309, file: !1436, line: 1135, baseType: !129, size: 64, offset: 16704)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2309, file: !1436, line: 1138, baseType: !314, size: 32, offset: 16768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2309, file: !1436, line: 1141, baseType: !368, size: 32, offset: 16800)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2309, file: !1436, line: 1143, baseType: !2955, size: 64, offset: 16832)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1436, line: 735, size: 64, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2955, file: !1436, line: 736, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2309, file: !1436, line: 1147, baseType: !850, size: 128, offset: 16896)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2309, file: !1436, line: 1149, baseType: !2308, size: 64, offset: 17024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2309, file: !1436, line: 1151, baseType: !2962, size: 64, offset: 17088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1436, line: 1151, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2309, file: !1436, line: 1188, baseType: !87, size: 64, offset: 17152)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2309, file: !1436, line: 1191, baseType: !2966, size: 64, offset: 17216)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1436, line: 44, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2309, file: !1436, line: 1194, baseType: !2969, size: 64, offset: 17280)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1436, line: 45, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2309, file: !1436, line: 1197, baseType: !2972, size: 64, offset: 17344)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1436, line: 61, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2309, file: !1436, line: 1199, baseType: !2975, size: 64, offset: 17408)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2977, line: 99, size: 128, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2978 = !{!2979, !2980, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2976, file: !2977, line: 100, baseType: !355, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2976, file: !2977, line: 101, baseType: !334, size: 32, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2976, file: !2977, line: 103, baseType: !143, size: 16, offset: 96)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2309, file: !1436, line: 1202, baseType: !2983, size: 64, offset: 17472)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1436, line: 48, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2309, file: !1436, line: 1205, baseType: !88, size: 64, offset: 17536)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2309, file: !1436, line: 1206, baseType: !2987, size: 64, offset: 17600)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !644, line: 14, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !644, line: 12, size: 384, elements: !2990)
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !644, line: 13, baseType: !2992, size: 384)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2989, file: !644, line: 13, size: 384, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2992, file: !644, line: 13, baseType: !201, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2992, file: !644, line: 13, baseType: !201, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2992, file: !644, line: 13, baseType: !201, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2992, file: !644, line: 13, baseType: !2998, size: 256, offset: 128)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2999, line: 37, size: 256, elements: !3000)
!2999 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3000 = !{!3001, !3006, !3019, !3025, !3034, !3061, !3066}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2998, file: !2999, line: 42, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 39, size: 64, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3002, file: !2999, line: 40, baseType: !2668, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3002, file: !2999, line: 41, baseType: !152, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2998, file: !2999, line: 50, baseType: !3007, size: 192)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 45, size: 192, elements: !3008)
!3008 = !{!3009, !3011, !3012, !3018}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3007, file: !2999, line: 46, baseType: !3010, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !153, line: 95, baseType: !201)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3007, file: !2999, line: 47, baseType: !201, size: 32, offset: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3007, file: !2999, line: 48, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2999, line: 11, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2999, line: 8, size: 64, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3014, file: !2999, line: 9, baseType: !201, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3014, file: !2999, line: 10, baseType: !87, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3007, file: !2999, line: 49, baseType: !201, size: 32, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2998, file: !2999, line: 57, baseType: !3020, size: 128)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 53, size: 128, elements: !3021)
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3020, file: !2999, line: 54, baseType: !2668, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3020, file: !2999, line: 55, baseType: !152, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3020, file: !2999, line: 56, baseType: !3013, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2998, file: !2999, line: 66, baseType: !3026, size: 256)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 60, size: 256, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3033}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3026, file: !2999, line: 61, baseType: !2668, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3026, file: !2999, line: 62, baseType: !152, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3026, file: !2999, line: 63, baseType: !201, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3026, file: !2999, line: 64, baseType: !3032, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !153, line: 94, baseType: !796)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3026, file: !2999, line: 65, baseType: !3032, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2998, file: !2999, line: 105, baseType: !3035, size: 256)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 69, size: 256, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3035, file: !2999, line: 70, baseType: !87, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !3035, file: !2999, line: 79, baseType: !3039, size: 192, offset: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3035, file: !2999, line: 79, size: 192, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3050, !3055}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3039, file: !2999, line: 81, baseType: !201, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3039, file: !2999, line: 86, baseType: !527, size: 16)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3039, file: !2999, line: 92, baseType: !3044, size: 192)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2999, line: 88, size: 192, elements: !3045)
!3045 = !{!3046, !3048, !3049}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3044, file: !2999, line: 89, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !2462)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3044, file: !2999, line: 90, baseType: !87, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3044, file: !2999, line: 91, baseType: !87, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3039, file: !2999, line: 97, baseType: !3051, size: 96)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2999, line: 94, size: 96, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3051, file: !2999, line: 95, baseType: !3047, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3051, file: !2999, line: 96, baseType: !125, size: 32, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3039, file: !2999, line: 103, baseType: !3056, size: 128)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2999, line: 99, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3056, file: !2999, line: 100, baseType: !88, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3056, file: !2999, line: 101, baseType: !125, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3056, file: !2999, line: 102, baseType: !125, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2998, file: !2999, line: 111, baseType: !3062, size: 128)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 108, size: 128, elements: !3063)
!3063 = !{!3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3062, file: !2999, line: 109, baseType: !287, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3062, file: !2999, line: 110, baseType: !201, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2998, file: !2999, line: 118, baseType: !3067, size: 128)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 114, size: 128, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3067, file: !2999, line: 115, baseType: !87, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3067, file: !2999, line: 116, baseType: !201, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3067, file: !2999, line: 117, baseType: !7, size: 32, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2309, file: !1436, line: 1208, baseType: !2852, size: 448, offset: 17664)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2309, file: !1436, line: 1215, baseType: !129, size: 64, offset: 18112)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2309, file: !1436, line: 1217, baseType: !129, size: 64, offset: 18176)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2309, file: !1436, line: 1219, baseType: !129, size: 64, offset: 18240)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2309, file: !1436, line: 1223, baseType: !3077, size: 64, offset: 18304)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3078, line: 99, baseType: !3079)
!3078 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3078, line: 99, size: 64, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3079, file: !3078, line: 99, baseType: !2539, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2309, file: !1436, line: 1225, baseType: !95, size: 32, offset: 18368)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2309, file: !1436, line: 1226, baseType: !201, size: 32, offset: 18400)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2309, file: !1436, line: 1227, baseType: !201, size: 32, offset: 18432)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2309, file: !1436, line: 1231, baseType: !3086, size: 64, offset: 18496)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1436, line: 1231, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2309, file: !1436, line: 1233, baseType: !155, size: 128, offset: 18560)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2309, file: !1436, line: 1240, baseType: !3090, size: 64, offset: 18688)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1436, line: 62, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2309, file: !1436, line: 1242, baseType: !3093, size: 64, offset: 18752)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1436, line: 1242, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2309, file: !1436, line: 1244, baseType: !155, size: 128, offset: 18816)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2309, file: !1436, line: 1245, baseType: !3097, size: 64, offset: 18944)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1436, line: 51, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2309, file: !1436, line: 1246, baseType: !363, size: 256, offset: 19008)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2309, file: !1436, line: 1247, baseType: !7, size: 32, offset: 19264)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2309, file: !1436, line: 1250, baseType: !3102, size: 64, offset: 19328)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1436, line: 57, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2309, file: !1436, line: 1251, baseType: !363, size: 256, offset: 19392)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2309, file: !1436, line: 1252, baseType: !155, size: 128, offset: 19648)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2309, file: !1436, line: 1259, baseType: !1342, size: 64, offset: 19776)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2309, file: !1436, line: 1260, baseType: !527, size: 16, offset: 19840)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2309, file: !1436, line: 1261, baseType: !527, size: 16, offset: 19856)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2309, file: !1436, line: 1314, baseType: !3110, size: 64, offset: 19904)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3112, line: 62, size: 256, align: 256, elements: !3113)
!3112 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3113 = !{!3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3111, file: !3112, line: 75, baseType: !125, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3111, file: !3112, line: 90, baseType: !125, size: 32, offset: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3111, file: !3112, line: 112, baseType: !130, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3111, file: !3112, line: 132, baseType: !125, size: 32, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3111, file: !3112, line: 140, baseType: !125, size: 32, offset: 160)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3111, file: !3112, line: 149, baseType: !125, size: 32, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3111, file: !3112, line: 154, baseType: !3121, offset: 224)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !445)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2309, file: !1436, line: 1315, baseType: !123, size: 32, offset: 19968)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2309, file: !1436, line: 1316, baseType: !123, size: 32, offset: 20000)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2309, file: !1436, line: 1321, baseType: !88, size: 64, offset: 20032)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2309, file: !1436, line: 1325, baseType: !201, size: 32, offset: 20096)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2309, file: !1436, line: 1326, baseType: !201, size: 32, offset: 20128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2309, file: !1436, line: 1327, baseType: !201, size: 32, offset: 20160)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2309, file: !1436, line: 1328, baseType: !201, size: 32, offset: 20192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2309, file: !1436, line: 1329, baseType: !304, size: 128, align: 64, offset: 20224)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2309, file: !1436, line: 1332, baseType: !3131, size: 128, offset: 20352)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3132, line: 51, size: 128, elements: !3133)
!3132 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3133 = !{!3134, !3139, !3140}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3131, file: !3132, line: 60, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3136, line: 7, size: 64, elements: !3137)
!3136 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3135, file: !3136, line: 12, baseType: !2536, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3131, file: !3132, line: 63, baseType: !209, size: 8, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3131, file: !3132, line: 70, baseType: !209, size: 8, offset: 72)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2309, file: !1436, line: 1335, baseType: !3142, size: 64, offset: 20480)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1436, line: 59, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2309, file: !1436, line: 1337, baseType: !3145, size: 128, offset: 20544)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3132, line: 39, size: 128, elements: !3146)
!3146 = !{!3147, !3148, !3149}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3145, file: !3132, line: 40, baseType: !868, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3145, file: !3132, line: 42, baseType: !125, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3145, file: !3132, line: 43, baseType: !125, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2309, file: !1436, line: 1340, baseType: !3151, size: 64, offset: 20672)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1436, line: 69, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2309, file: !1436, line: 1351, baseType: !201, size: 32, offset: 20736)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2309, file: !1436, line: 1352, baseType: !201, size: 32, offset: 20768)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2309, file: !1436, line: 1354, baseType: !88, size: 64, offset: 20800)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2309, file: !1436, line: 1364, baseType: !129, size: 64, offset: 20864)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2309, file: !1436, line: 1365, baseType: !129, size: 64, offset: 20928)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2309, file: !1436, line: 1412, baseType: !88, size: 64, offset: 20992)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2309, file: !1436, line: 1453, baseType: !3160, size: 64, offset: 21056)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1436, line: 1453, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2309, file: !1436, line: 1457, baseType: !3163, size: 64, offset: 21120)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3165)
!3165 = !{!3166, !3167, !3186, !3189, !3190, !3223, !3233}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3164, file: !57, line: 62, baseType: !56, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !57, line: 64, baseType: !3168, size: 192, offset: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3164, file: !57, line: 64, size: 192, elements: !3169)
!3169 = !{!3170, !3181}
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !57, line: 65, baseType: !3171, size: 192)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !57, line: 65, size: 192, elements: !3172)
!3172 = !{!3173, !3180}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3171, file: !57, line: 66, baseType: !3174, size: 128)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3175, line: 50, size: 128, elements: !3176)
!3175 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3174, file: !3175, line: 52, baseType: !88, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3174, file: !3175, line: 54, baseType: !7, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3174, file: !3175, line: 55, baseType: !7, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3171, file: !57, line: 67, baseType: !88, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !57, line: 70, baseType: !3182, size: 192)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3168, file: !57, line: 70, size: 192, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3182, file: !57, line: 71, baseType: !304, size: 128, align: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3182, file: !57, line: 72, baseType: !88, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3164, file: !57, line: 76, baseType: !3187, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3164, file: !57, line: 77, baseType: !88, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3164, file: !57, line: 79, baseType: !3191, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3175, line: 25, size: 256, elements: !3193)
!3193 = !{!3194, !3200, !3204}
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !3175, line: 26, baseType: !3195, size: 128)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3192, file: !3175, line: 26, size: 128, elements: !3196)
!3196 = !{!3197, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3195, file: !3175, line: 27, baseType: !3198, size: 128)
!3198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 128, elements: !2726)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3195, file: !3175, line: 28, baseType: !3198, size: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3192, file: !3175, line: 31, baseType: !3201, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3175, line: 23, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !3175, line: 33, baseType: !3205, size: 64, offset: 192)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3192, file: !3175, line: 33, size: 64, elements: !3206)
!3206 = !{!3207, !3213, !3218}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3205, file: !3175, line: 38, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3205, file: !3175, line: 34, size: 64, elements: !3209)
!3209 = !{!3210, !3211, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3208, file: !3175, line: 35, baseType: !486, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3208, file: !3175, line: 36, baseType: !342, size: 8, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3208, file: !3175, line: 37, baseType: !342, size: 8, offset: 40)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3205, file: !3175, line: 42, baseType: !3214, size: 16)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3205, file: !3175, line: 39, size: 16, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3214, file: !3175, line: 40, baseType: !342, size: 8)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3214, file: !3175, line: 41, baseType: !342, size: 8, offset: 8)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3205, file: !3175, line: 46, baseType: !3219, size: 16)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3205, file: !3175, line: 43, size: 16, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3219, file: !3175, line: 44, baseType: !342, size: 8)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3219, file: !3175, line: 45, baseType: !342, size: 8, offset: 8)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3164, file: !57, line: 81, baseType: !3224, size: 64, offset: 448)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3225, file: !57, line: 86, baseType: !3187, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3225, file: !57, line: 87, baseType: !88, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3225, file: !57, line: 88, baseType: !88, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3225, file: !57, line: 89, baseType: !88, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3225, file: !57, line: 90, baseType: !209, size: 8, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3225, file: !57, line: 92, baseType: !3224, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3164, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2309, file: !1436, line: 1463, baseType: !3235, offset: 21184)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1436, line: 739, elements: !1157)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2309, file: !1436, line: 1470, baseType: !304, size: 128, align: 64, offset: 21184)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2309, file: !1436, line: 1471, baseType: !408, size: 32, offset: 21312)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2309, file: !1436, line: 1472, baseType: !201, size: 32, offset: 21344)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2309, file: !1436, line: 1474, baseType: !2308, size: 64, offset: 21376)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2309, file: !1436, line: 1475, baseType: !1763, size: 320, offset: 21440)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2309, file: !1436, line: 1478, baseType: !3242, size: 64, offset: 21760)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1436, line: 1478, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2309, file: !1436, line: 1482, baseType: !408, size: 32, offset: 21824)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2309, file: !1436, line: 1489, baseType: !87, size: 64, offset: 21888)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2309, file: !1436, line: 1504, baseType: !87, size: 64, offset: 21952)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2309, file: !1436, line: 1505, baseType: !130, size: 64, offset: 22016)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2309, file: !1436, line: 1506, baseType: !129, size: 64, offset: 22080)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2309, file: !1436, line: 1507, baseType: !130, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2309, file: !1436, line: 1508, baseType: !130, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2309, file: !1436, line: 1509, baseType: !130, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2309, file: !1436, line: 1510, baseType: !304, size: 128, align: 64, offset: 22208)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2309, file: !1436, line: 1511, baseType: !201, size: 32, offset: 22336)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2309, file: !1436, line: 1515, baseType: !3255, size: 64, offset: 22400)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !299, line: 56, size: 64, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3255, file: !299, line: 57, baseType: !302, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2309, file: !1436, line: 1518, baseType: !3255, size: 64, offset: 22464)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2309, file: !1436, line: 1528, baseType: !304, size: 128, align: 64, offset: 22528)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2309, file: !1436, line: 1552, baseType: !3261, size: 35328, offset: 23040)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3262, line: 430, size: 35328, elements: !3263)
!3262 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3263 = !{!3264, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3293, !3294, !3295, !3296, !3297, !3298, !3301, !3302, !3303, !3304}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3261, file: !3262, line: 432, baseType: !3265, size: 192)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3266, size: 192, elements: !400)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3267, line: 16, size: 64, elements: !3268)
!3267 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3266, file: !3267, line: 17, baseType: !349, size: 16)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3266, file: !3267, line: 18, baseType: !349, size: 16, offset: 16)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3266, file: !3267, line: 19, baseType: !349, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3266, file: !3267, line: 19, baseType: !349, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3266, file: !3267, line: 19, baseType: !349, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3266, file: !3267, line: 19, baseType: !349, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3266, file: !3267, line: 19, baseType: !349, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3266, file: !3267, line: 20, baseType: !349, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3266, file: !3267, line: 20, baseType: !349, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3266, file: !3267, line: 20, baseType: !349, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3266, file: !3267, line: 20, baseType: !349, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3266, file: !3267, line: 20, baseType: !349, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3266, file: !3267, line: 20, baseType: !349, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3261, file: !3262, line: 436, baseType: !88, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3261, file: !3262, line: 440, baseType: !143, size: 16, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3261, file: !3262, line: 441, baseType: !143, size: 16, offset: 272)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3261, file: !3262, line: 442, baseType: !143, size: 16, offset: 288)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3261, file: !3262, line: 443, baseType: !143, size: 16, offset: 304)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3261, file: !3262, line: 447, baseType: !88, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3261, file: !3262, line: 448, baseType: !88, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3261, file: !3262, line: 459, baseType: !3290, size: 256, offset: 448)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3291, size: 256, elements: !426)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3262, line: 428, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3261, file: !3262, line: 461, baseType: !88, size: 64, offset: 704)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3261, file: !3262, line: 463, baseType: !88, size: 64, offset: 768)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3261, file: !3262, line: 465, baseType: !88, size: 64, offset: 832)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3261, file: !3262, line: 466, baseType: !88, size: 64, offset: 896)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3261, file: !3262, line: 467, baseType: !88, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3261, file: !3262, line: 473, baseType: !3299, size: 64, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3262, line: 10, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3261, file: !3262, line: 480, baseType: !88, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3261, file: !3262, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3261, file: !3262, line: 491, baseType: !123, size: 32, offset: 1184)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3261, file: !3262, line: 501, baseType: !3305, size: 33792, offset: 1536)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3306, line: 448, size: 33792, elements: !3307)
!3306 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3307 = !{!3308, !3309, !3310, !3474, !3475, !3481, !3482}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3305, file: !3306, line: 461, baseType: !7, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3305, file: !3306, line: 468, baseType: !88, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3305, file: !3306, line: 476, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3306, line: 356, size: 33280, align: 512, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3312, file: !3306, line: 358, baseType: !7, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3312, file: !3306, line: 361, baseType: !7, size: 32, offset: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3312, file: !3306, line: 364, baseType: !129, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3312, file: !3306, line: 367, baseType: !129, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3312, file: !3306, line: 370, baseType: !129, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3312, file: !3306, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3312, file: !3306, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3312, file: !3306, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3312, file: !3306, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3312, file: !3306, line: 397, baseType: !3324, size: 32768, offset: 512)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3306, line: 348, size: 32768, elements: !3325)
!3325 = !{!3326, !3341, !3380, !3457, !3470}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3324, file: !3306, line: 349, baseType: !3327, size: 896)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3306, line: 12, size: 896, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3340}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3327, file: !3306, line: 13, baseType: !123, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3327, file: !3306, line: 14, baseType: !123, size: 32, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3327, file: !3306, line: 15, baseType: !123, size: 32, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3327, file: !3306, line: 16, baseType: !123, size: 32, offset: 96)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3327, file: !3306, line: 17, baseType: !123, size: 32, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3327, file: !3306, line: 18, baseType: !123, size: 32, offset: 160)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3327, file: !3306, line: 19, baseType: !123, size: 32, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3327, file: !3306, line: 22, baseType: !3337, size: 640, offset: 224)
!3337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 640, elements: !3338)
!3338 = !{!3339}
!3339 = !DISubrange(count: 20)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3327, file: !3306, line: 25, baseType: !123, size: 32, offset: 864)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3324, file: !3306, line: 350, baseType: !3342, size: 4096, align: 128)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3306, line: 34, size: 4096, align: 128, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3363, !3364, !3365, !3369, !3371, !3375}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3342, file: !3306, line: 35, baseType: !349, size: 16)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3342, file: !3306, line: 36, baseType: !349, size: 16, offset: 16)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3342, file: !3306, line: 37, baseType: !349, size: 16, offset: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3342, file: !3306, line: 38, baseType: !349, size: 16, offset: 48)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !3306, line: 39, baseType: !3349, size: 128, offset: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !3306, line: 39, size: 128, elements: !3350)
!3350 = !{!3351, !3356}
!3351 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !3306, line: 40, baseType: !3352, size: 128)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3349, file: !3306, line: 40, size: 128, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3352, file: !3306, line: 41, baseType: !129, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3352, file: !3306, line: 42, baseType: !129, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !3306, line: 44, baseType: !3357, size: 128)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3349, file: !3306, line: 44, size: 128, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3357, file: !3306, line: 45, baseType: !123, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3357, file: !3306, line: 46, baseType: !123, size: 32, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3357, file: !3306, line: 47, baseType: !123, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3357, file: !3306, line: 48, baseType: !123, size: 32, offset: 96)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3342, file: !3306, line: 51, baseType: !123, size: 32, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3342, file: !3306, line: 52, baseType: !123, size: 32, offset: 224)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3342, file: !3306, line: 55, baseType: !3366, size: 1024, offset: 256)
!3366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !3367)
!3367 = !{!3368}
!3368 = !DISubrange(count: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3342, file: !3306, line: 58, baseType: !3370, size: 2048, offset: 1280)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2048, elements: !767)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3342, file: !3306, line: 60, baseType: !3372, size: 384, offset: 3328)
!3372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 384, elements: !3373)
!3373 = !{!3374}
!3374 = !DISubrange(count: 12)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !3306, line: 62, baseType: !3376, size: 384, offset: 3712)
!3376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !3306, line: 62, size: 384, elements: !3377)
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3376, file: !3306, line: 63, baseType: !3372, size: 384)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3376, file: !3306, line: 64, baseType: !3372, size: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3324, file: !3306, line: 351, baseType: !3381, size: 1088)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3306, line: 79, size: 1088, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3456}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3381, file: !3306, line: 80, baseType: !123, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3381, file: !3306, line: 81, baseType: !123, size: 32, offset: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3381, file: !3306, line: 82, baseType: !123, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3381, file: !3306, line: 83, baseType: !123, size: 32, offset: 96)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3381, file: !3306, line: 84, baseType: !123, size: 32, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3381, file: !3306, line: 85, baseType: !123, size: 32, offset: 160)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3381, file: !3306, line: 86, baseType: !123, size: 32, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3381, file: !3306, line: 88, baseType: !3337, size: 640, offset: 224)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3381, file: !3306, line: 89, baseType: !342, size: 8, offset: 864)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3381, file: !3306, line: 90, baseType: !342, size: 8, offset: 872)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3381, file: !3306, line: 91, baseType: !342, size: 8, offset: 880)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3381, file: !3306, line: 92, baseType: !342, size: 8, offset: 888)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3381, file: !3306, line: 93, baseType: !342, size: 8, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3381, file: !3306, line: 94, baseType: !342, size: 8, offset: 904)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3381, file: !3306, line: 95, baseType: !3398, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3400, line: 11, size: 128, elements: !3401)
!3400 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3399, file: !3400, line: 12, baseType: !287, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3399, file: !3400, line: 13, baseType: !3404, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3406, line: 103, size: 1344, elements: !3407)
!3406 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3436, !3437, !3438}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3405, file: !3406, line: 109, baseType: !88, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3405, file: !3406, line: 110, baseType: !88, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3405, file: !3406, line: 111, baseType: !88, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3405, file: !3406, line: 112, baseType: !88, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3405, file: !3406, line: 113, baseType: !88, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3405, file: !3406, line: 114, baseType: !88, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3405, file: !3406, line: 117, baseType: !88, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3405, file: !3406, line: 118, baseType: !88, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3405, file: !3406, line: 119, baseType: !88, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3405, file: !3406, line: 120, baseType: !88, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3405, file: !3406, line: 121, baseType: !88, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3405, file: !3406, line: 122, baseType: !88, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3405, file: !3406, line: 123, baseType: !88, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3405, file: !3406, line: 124, baseType: !88, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3405, file: !3406, line: 125, baseType: !88, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3405, file: !3406, line: 139, baseType: !88, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3405, file: !3406, line: 142, baseType: !88, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3406, line: 144, baseType: !3426, size: 64, offset: 1088)
!3426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3406, line: 144, size: 64, elements: !3427)
!3427 = !{!3428, !3429, !3430}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3426, file: !3406, line: 146, baseType: !349, size: 16)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3426, file: !3406, line: 148, baseType: !129, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3426, file: !3406, line: 150, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3406, line: 59, size: 64, elements: !3432)
!3432 = !{!3433, !3434, !3435}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3431, file: !3406, line: 61, baseType: !129, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3431, file: !3406, line: 63, baseType: !129, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3431, file: !3406, line: 65, baseType: !129, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3405, file: !3406, line: 153, baseType: !88, size: 64, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3405, file: !3406, line: 154, baseType: !88, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3406, line: 156, baseType: !3439, size: 64, offset: 1280)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3406, line: 156, size: 64, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3439, file: !3406, line: 158, baseType: !349, size: 16)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3439, file: !3406, line: 160, baseType: !129, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3439, file: !3406, line: 162, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3406, line: 69, size: 64, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3444, file: !3406, line: 71, baseType: !129, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3444, file: !3406, line: 73, baseType: !129, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3444, file: !3406, line: 75, baseType: !129, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3444, file: !3406, line: 77, baseType: !129, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3444, file: !3406, line: 80, baseType: !129, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3444, file: !3406, line: 83, baseType: !129, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3444, file: !3406, line: 86, baseType: !129, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3444, file: !3406, line: 88, baseType: !129, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3444, file: !3406, line: 93, baseType: !129, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3444, file: !3406, line: 100, baseType: !129, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3381, file: !3306, line: 96, baseType: !123, size: 32, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3324, file: !3306, line: 352, baseType: !3458, size: 4608, align: 512)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3306, line: 333, size: 4608, align: 512, elements: !3459)
!3459 = !{!3460, !3461, !3468}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3458, file: !3306, line: 334, baseType: !3342, size: 4096, align: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3458, file: !3306, line: 335, baseType: !3462, size: 512, offset: 4096)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3306, line: 312, size: 512, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3462, file: !3306, line: 313, baseType: !129, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3462, file: !3306, line: 314, baseType: !129, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3462, file: !3306, line: 315, baseType: !3467, size: 384, offset: 128)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !545)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3458, file: !3306, line: 336, baseType: !3469, offset: 4608)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !445)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3324, file: !3306, line: 353, baseType: !3471, size: 32768)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 32768, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 4096)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3305, file: !3306, line: 484, baseType: !3311, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3305, file: !3306, line: 491, baseType: !3476, size: 128, offset: 256)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3306, line: 404, size: 128, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3476, file: !3306, line: 424, baseType: !129, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3476, file: !3306, line: 432, baseType: !7, size: 32, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3476, file: !3306, line: 440, baseType: !7, size: 32, offset: 96)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3305, file: !3306, line: 498, baseType: !3476, size: 128, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3305, file: !3306, line: 508, baseType: !3312, size: 33280, align: 512, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2291, file: !2292, line: 16, baseType: !430, size: 192, offset: 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2291, file: !2292, line: 17, baseType: !334, size: 32, offset: 704)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !679, file: !35, line: 1240, baseType: !87, size: 64, offset: 6912)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !679, file: !35, line: 1243, baseType: !123, size: 32, offset: 6976)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !679, file: !35, line: 1245, baseType: !284, size: 64, offset: 7040)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !679, file: !35, line: 1246, baseType: !284, size: 64, offset: 7104)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !679, file: !35, line: 1248, baseType: !125, size: 32, offset: 7168)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !679, file: !35, line: 1249, baseType: !3491, size: 64, offset: 7232)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !679, file: !35, line: 1252, baseType: !3494, size: 256, offset: 7296)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !3367)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !679, file: !35, line: 1253, baseType: !3496, size: 128, offset: 7552)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3497, line: 21, baseType: !3498)
!3497 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3497, line: 19, size: 128, elements: !3499)
!3499 = !{!3500}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3498, file: !3497, line: 20, baseType: !3501, size: 128)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !2726)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !679, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !679, file: !35, line: 1261, baseType: !363, size: 256, offset: 7744)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !679, file: !35, line: 1267, baseType: !185, size: 64, offset: 8000)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !679, file: !35, line: 1269, baseType: !3506, size: 64, offset: 8064)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !91, line: 128, size: 1024, align: 512, elements: !3509)
!3509 = !{!3510, !3514, !3515, !3522, !3528, !3532, !3536, !3540, !3541, !3545, !3549, !3554, !3558}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3508, file: !91, line: 129, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!201, !89, !7}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3508, file: !91, line: 130, baseType: !3511, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3508, file: !91, line: 131, baseType: !3516, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!201, !3519, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3508, file: !91, line: 132, baseType: !3523, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!201, !3519, !7, !185, !3526}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3508, file: !91, line: 134, baseType: !3529, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!201, !3519}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3508, file: !91, line: 135, baseType: !3533, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!201, !89}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3508, file: !91, line: 136, baseType: !3537, size: 64, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !89}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3508, file: !91, line: 137, baseType: !3537, size: 64, offset: 448)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3508, file: !91, line: 138, baseType: !3542, size: 64, offset: 512)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !89, !137}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3508, file: !91, line: 139, baseType: !3546, size: 64, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!215, !89, !215, !201}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3508, file: !91, line: 140, baseType: !3550, size: 64, offset: 640)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!672, !3553}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3508, file: !91, line: 141, baseType: !3555, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!201, !2064, !209}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3508, file: !91, line: 142, baseType: !3559, size: 64, offset: 768)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!89, !89, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !679, file: !35, line: 1271, baseType: !3565, size: 448, offset: 8128)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2004, line: 63, size: 448, elements: !3566)
!3566 = !{!3567, !3572, !3573, !3574, !3575, !3576, !3577}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3565, file: !2004, line: 64, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!88, !3571, !2002}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3565, file: !2004, line: 66, baseType: !3568, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3565, file: !2004, line: 69, baseType: !287, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3565, file: !2004, line: 70, baseType: !201, size: 32, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3565, file: !2004, line: 71, baseType: !7, size: 32, offset: 224)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3565, file: !2004, line: 74, baseType: !155, size: 128, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3565, file: !2004, line: 85, baseType: !3578, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !679, file: !35, line: 1274, baseType: !355, size: 64, offset: 8576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !679, file: !35, line: 1280, baseType: !355, size: 64, offset: 8640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !679, file: !35, line: 1283, baseType: !201, size: 32, offset: 8704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !679, file: !35, line: 1286, baseType: !1109, size: 32, offset: 8736)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !679, file: !35, line: 1289, baseType: !1825, size: 64, offset: 8768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !679, file: !35, line: 1290, baseType: !417, size: 64, offset: 8832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !679, file: !35, line: 1297, baseType: !639, size: 64, offset: 8896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !679, file: !35, line: 1304, baseType: !3587, size: 64, offset: 8960)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3588, line: 49, size: 64, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3589 = !{!3590}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3587, file: !3588, line: 50, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3588, line: 41, size: 512, align: 512, elements: !3593)
!3593 = !{!3594, !3595, !3600}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3592, file: !3588, line: 43, baseType: !314, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3592, file: !3588, line: 45, baseType: !3596, size: 192, offset: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3588, line: 29, size: 192, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3596, file: !3588, line: 30, baseType: !155, size: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3596, file: !3588, line: 32, baseType: !287, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3592, file: !3588, line: 46, baseType: !287, size: 64, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !679, file: !35, line: 1305, baseType: !3587, size: 64, offset: 9024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !679, file: !35, line: 1306, baseType: !304, size: 128, align: 64, offset: 9088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !679, file: !35, line: 1307, baseType: !1291, size: 256, offset: 9216)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !679, file: !35, line: 1309, baseType: !363, size: 256, offset: 9472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !679, file: !35, line: 1314, baseType: !201, size: 32, offset: 9728)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !679, file: !35, line: 1317, baseType: !314, size: 32, align: 512, offset: 10240)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !679, file: !35, line: 1318, baseType: !155, size: 128, offset: 10304)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !679, file: !35, line: 1320, baseType: !314, size: 32, offset: 10432)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !679, file: !35, line: 1321, baseType: !155, size: 128, offset: 10496)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !673, file: !674, line: 73, baseType: !201, size: 32, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !673, file: !674, line: 74, baseType: !202, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !668, file: !669, line: 10, baseType: !89, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !292, file: !35, line: 1015, baseType: !137, size: 64, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !292, file: !35, line: 1016, baseType: !3615, size: 64, offset: 1408)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3618)
!3618 = !{!3619, !3620, !3624, !3628, !3632, !3633, !3634, !3640, !3653, !3657, !3661, !3662, !3666, !3667, !3671, !3676, !3677, !3681, !3685, !3691, !3692, !3696, !3697, !3701, !3705, !3706, !3711, !3715, !3719, !3723, !3727, !3728, !3734}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3617, file: !35, line: 1915, baseType: !711, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3617, file: !35, line: 1916, baseType: !3621, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!276, !291, !276, !201}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3617, file: !35, line: 1917, baseType: !3625, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!794, !291, !215, !806, !1459}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3617, file: !35, line: 1918, baseType: !3629, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!794, !291, !185, !806, !1459}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3617, file: !35, line: 1919, baseType: !1043, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3617, file: !35, line: 1920, baseType: !1043, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3617, file: !35, line: 1921, baseType: !3635, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!201, !1046, !3638, !7}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3617, file: !35, line: 1923, baseType: !3641, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!201, !291, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3646)
!3646 = !{!3647, !3652}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3645, file: !35, line: 1859, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3649)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!209, !3644, !185, !201, !276, !129, !7}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3645, file: !35, line: 1860, baseType: !276, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3617, file: !35, line: 1924, baseType: !3654, size: 64, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!1479, !291, !1481}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3617, file: !35, line: 1925, baseType: !3658, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!287, !291, !7, !88}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3617, file: !35, line: 1926, baseType: !3658, size: 64, offset: 640)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3617, file: !35, line: 1927, baseType: !3663, size: 64, offset: 704)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!201, !291, !1123}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3617, file: !35, line: 1928, baseType: !88, size: 64, offset: 768)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3617, file: !35, line: 1929, baseType: !3668, size: 64, offset: 832)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!201, !137, !291}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3617, file: !35, line: 1930, baseType: !3672, size: 64, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!201, !291, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !87)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3617, file: !35, line: 1931, baseType: !3668, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3617, file: !35, line: 1932, baseType: !3678, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!201, !291, !276, !276, !201}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3617, file: !35, line: 1933, baseType: !3682, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!201, !201, !291, !201}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3617, file: !35, line: 1934, baseType: !3686, size: 64, offset: 1152)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!201, !291, !201, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3617, file: !35, line: 1935, baseType: !1161, size: 64, offset: 1216)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3617, file: !35, line: 1936, baseType: !3693, size: 64, offset: 1280)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!201, !201}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3617, file: !35, line: 1937, baseType: !3686, size: 64, offset: 1344)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3617, file: !35, line: 1938, baseType: !3698, size: 64, offset: 1408)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!794, !3142, !291, !1459, !806, !7}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3617, file: !35, line: 1939, baseType: !3702, size: 64, offset: 1472)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!794, !291, !1459, !3142, !806, !7}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3617, file: !35, line: 1940, baseType: !1099, size: 64, offset: 1536)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3617, file: !35, line: 1941, baseType: !3707, size: 64, offset: 1600)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!201, !291, !201, !3710, !1020}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3617, file: !35, line: 1942, baseType: !3712, size: 64, offset: 1664)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!287, !291, !201, !276, !276}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3617, file: !35, line: 1944, baseType: !3716, size: 64, offset: 1728)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !1434, !291}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3617, file: !35, line: 1948, baseType: !3720, size: 64, offset: 1792)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!794, !291, !276, !291, !276, !806, !7}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3617, file: !35, line: 1950, baseType: !3724, size: 64, offset: 1856)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!276, !291, !276, !291, !276, !276, !7}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3617, file: !35, line: 1953, baseType: !3678, size: 64, offset: 1920)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3617, file: !35, line: 1954, baseType: !3729, size: 64, offset: 1984)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!201, !3732, !7}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3617, file: !35, line: 1955, baseType: !3735, size: 64, offset: 2048)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!201, !3732, !3638, !7}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !292, file: !35, line: 1018, baseType: !129, size: 64, offset: 1472)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !292, file: !35, line: 1020, baseType: !87, size: 64, offset: 1536)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !292, file: !35, line: 1023, baseType: !87, size: 64, offset: 1600)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !292, file: !35, line: 1027, baseType: !3742, size: 64, offset: 1664)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !292, file: !35, line: 1029, baseType: !834, size: 64, offset: 1728)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !292, file: !35, line: 1030, baseType: !1109, size: 32, offset: 1792)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !292, file: !35, line: 1031, baseType: !1109, size: 32, offset: 1824)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !175, file: !35, line: 1988, baseType: !3747, size: 64, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!201, !202, !2064, !3750, !123, !7}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3752, line: 22, size: 1280, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3753 = !{!3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3751, file: !3752, line: 23, baseType: !123, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3751, file: !3752, line: 24, baseType: !141, size: 16, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3751, file: !3752, line: 25, baseType: !7, size: 32, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3751, file: !3752, line: 26, baseType: !523, size: 32, offset: 96)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3751, file: !3752, line: 27, baseType: !129, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3751, file: !3752, line: 28, baseType: !129, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3751, file: !3752, line: 41, baseType: !129, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3751, file: !3752, line: 42, baseType: !241, size: 32, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3751, file: !3752, line: 43, baseType: !241, size: 32, offset: 352)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3751, file: !3752, line: 44, baseType: !146, size: 32, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3751, file: !3752, line: 45, baseType: !161, size: 32, offset: 416)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3751, file: !3752, line: 46, baseType: !276, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3751, file: !3752, line: 47, baseType: !280, size: 128, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3751, file: !3752, line: 48, baseType: !280, size: 128, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3751, file: !3752, line: 49, baseType: !280, size: 128, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3751, file: !3752, line: 50, baseType: !280, size: 128, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3751, file: !3752, line: 51, baseType: !129, size: 64, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3751, file: !3752, line: 52, baseType: !129, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3751, file: !3752, line: 53, baseType: !123, size: 32, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3751, file: !3752, line: 54, baseType: !123, size: 32, offset: 1184)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3751, file: !3752, line: 55, baseType: !129, size: 64, offset: 1216)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !175, file: !35, line: 1990, baseType: !3776, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!794, !89, !215, !806}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !175, file: !35, line: 1991, baseType: !3780, size: 64, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!201, !137, !3783, !129, !129}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !175, file: !35, line: 1993, baseType: !3786, size: 64, offset: 1088)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!201, !137, !201}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !175, file: !35, line: 1994, baseType: !3790, size: 64, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!201, !137, !89, !291, !7, !141}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !175, file: !35, line: 1997, baseType: !3794, size: 64, offset: 1216)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!201, !202, !137, !291, !141}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !175, file: !35, line: 1999, baseType: !3798, size: 64, offset: 1280)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!169, !202, !89, !201}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !175, file: !35, line: 2001, baseType: !3802, size: 64, offset: 1344)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!201, !202, !89, !169, !201}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !175, file: !35, line: 2003, baseType: !3806, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!201, !202, !89, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !175, file: !35, line: 2005, baseType: !3812, size: 64, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!201, !89, !3809}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !175, file: !35, line: 2006, baseType: !3816, size: 64, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!3819, !137}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !3821)
!3821 = !{!3822, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3820, file: !35, line: 3193, baseType: !839, size: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3820, file: !35, line: 3194, baseType: !123, size: 32, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !138, file: !35, line: 655, baseType: !678, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !138, file: !35, line: 656, baseType: !834, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !138, file: !35, line: 659, baseType: !87, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !138, file: !35, line: 663, baseType: !88, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !35, line: 671, baseType: !3829, size: 32, offset: 704)
!3829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !35, line: 671, size: 32, elements: !3830)
!3830 = !{!3831, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3829, file: !35, line: 672, baseType: !3832, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3829, file: !35, line: 673, baseType: !7, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !138, file: !35, line: 675, baseType: !241, size: 32, offset: 736)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !138, file: !35, line: 676, baseType: !276, size: 64, offset: 768)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !138, file: !35, line: 677, baseType: !280, size: 128, offset: 832)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !138, file: !35, line: 678, baseType: !280, size: 128, offset: 960)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !138, file: !35, line: 679, baseType: !280, size: 128, offset: 1088)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !138, file: !35, line: 680, baseType: !314, size: 32, offset: 1216)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !138, file: !35, line: 681, baseType: !143, size: 16, offset: 1248)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !138, file: !35, line: 682, baseType: !342, size: 8, offset: 1264)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !138, file: !35, line: 683, baseType: !342, size: 8, offset: 1272)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !138, file: !35, line: 684, baseType: !2137, size: 64, offset: 1280)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !138, file: !35, line: 691, baseType: !88, size: 64, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !138, file: !35, line: 692, baseType: !501, size: 320, offset: 1408)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !138, file: !35, line: 694, baseType: !88, size: 64, offset: 1728)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !138, file: !35, line: 695, baseType: !88, size: 64, offset: 1792)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !138, file: !35, line: 697, baseType: !421, size: 128, offset: 1856)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !138, file: !35, line: 698, baseType: !155, size: 128, offset: 1984)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !138, file: !35, line: 707, baseType: !155, size: 128, offset: 2112)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !138, file: !35, line: 708, baseType: !155, size: 128, offset: 2240)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !35, line: 709, baseType: !3853, size: 128, offset: 2368)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !35, line: 709, size: 128, elements: !3854)
!3854 = !{!3855, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3853, file: !35, line: 710, baseType: !417, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3853, file: !35, line: 711, baseType: !304, size: 128, align: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !138, file: !35, line: 713, baseType: !357, size: 64, offset: 2496)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !138, file: !35, line: 714, baseType: !357, size: 64, offset: 2560)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !138, file: !35, line: 715, baseType: !334, size: 32, offset: 2624)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !138, file: !35, line: 716, baseType: !334, size: 32, offset: 2656)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !138, file: !35, line: 717, baseType: !334, size: 32, offset: 2688)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !138, file: !35, line: 719, baseType: !334, size: 32, offset: 2720)
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !35, line: 721, baseType: !3864, size: 64, offset: 2752)
!3864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !35, line: 721, size: 64, elements: !3865)
!3865 = !{!3866, !3867}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3864, file: !35, line: 722, baseType: !3615, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3864, file: !35, line: 723, baseType: !1893, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !138, file: !35, line: 725, baseType: !3869, size: 64, offset: 2816)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !138, file: !35, line: 726, baseType: !835, size: 1536, align: 64, offset: 2880)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !138, file: !35, line: 727, baseType: !155, size: 128, offset: 4416)
!3873 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !35, line: 728, baseType: !3874, size: 64, offset: 4544)
!3874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !35, line: 728, size: 64, elements: !3875)
!3875 = !{!3876, !3877, !3880, !3881}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3874, file: !35, line: 729, baseType: !3142, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3874, file: !35, line: 730, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3874, file: !35, line: 731, baseType: !215, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3874, file: !35, line: 732, baseType: !7, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !138, file: !35, line: 735, baseType: !125, size: 32, offset: 4608)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !138, file: !35, line: 738, baseType: !125, size: 32, offset: 4640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !138, file: !35, line: 739, baseType: !3491, size: 64, offset: 4672)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !138, file: !35, line: 750, baseType: !87, size: 64, offset: 4736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !90, file: !91, line: 91, baseType: !3887, size: 256, offset: 448)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !3367)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !90, file: !91, line: 94, baseType: !3889, size: 64, offset: 704)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3890, line: 25, size: 64, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3891 = !{!3892}
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !3890, line: 26, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !3890, line: 26, size: 64, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3893, file: !3890, line: 28, baseType: !130, size: 64, align: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !3890, line: 30, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3893, file: !3890, line: 30, size: 64, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3897, file: !3890, line: 31, baseType: !314, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3897, file: !3890, line: 32, baseType: !201, size: 32, offset: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !90, file: !91, line: 95, baseType: !3506, size: 64, offset: 768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !90, file: !91, line: 96, baseType: !678, size: 64, offset: 832)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !90, file: !91, line: 97, baseType: !88, size: 64, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !90, file: !91, line: 98, baseType: !87, size: 64, offset: 960)
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !91, line: 100, baseType: !3906, size: 128, offset: 1024)
!3906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !91, line: 100, size: 128, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3906, file: !91, line: 101, baseType: !155, size: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3906, file: !91, line: 102, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !90, file: !91, line: 104, baseType: !155, size: 128, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !90, file: !91, line: 105, baseType: !155, size: 128, offset: 1280)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !90, file: !91, line: 113, baseType: !3914, size: 128, offset: 1408)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !91, line: 109, size: 128, elements: !3915)
!3915 = !{!3916, !3917, !3918}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3914, file: !91, line: 110, baseType: !421, size: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3914, file: !91, line: 111, baseType: !105, size: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3914, file: !91, line: 112, baseType: !304, size: 128, align: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "getdents_callback", file: !3, line: 238, size: 320, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3926, !3927}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3921, file: !3, line: 239, baseType: !3645, size: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3921, file: !3, line: 240, baseType: !215, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3921, file: !3, line: 242, baseType: !129, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "found", scope: !3921, file: !3, line: 243, baseType: !201, size: 32, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !3921, file: !3, line: 244, baseType: !201, size: 32, offset: 288)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3930)
!3930 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !202)
!3931 = !{!0, !3932, !3934, !3936, !3938, !3943, !3948}
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_exportfs_encode_fh262", scope: !2, file: !3, line: 443, type: !87, isLocal: true, isDefinition: true)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_exportfs_decode_fh_raw263", scope: !2, file: !3, line: 592, type: !87, isLocal: true, isDefinition: true)
!3936 = !DIGlobalVariableExpression(var: !3937, expr: !DIExpression())
!3937 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_exportfs_decode_fh264", scope: !2, file: !3, line: 610, type: !87, isLocal: true, isDefinition: true)
!3938 = !DIGlobalVariableExpression(var: !3939, expr: !DIExpression())
!3939 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file265", scope: !2, file: !3, line: 612, type: !3940, isLocal: true, isDefinition: true, align: 8)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 280, elements: !3941)
!3941 = !{!3942}
!3942 = !DISubrange(count: 35)
!3943 = !DIGlobalVariableExpression(var: !3944, expr: !DIExpression())
!3944 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license266", scope: !2, file: !3, line: 612, type: !3945, isLocal: true, isDefinition: true, align: 8)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 168, elements: !3946)
!3946 = !{!3947}
!3947 = !DISubrange(count: 21)
!3948 = !DIGlobalVariableExpression(var: !3949, expr: !DIExpression())
!3949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !3950, isLocal: true, isDefinition: true)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 160, elements: !3338)
!3951 = !{i32 7, !"Dwarf Version", i32 5}
!3952 = !{i32 2, !"Debug Info Version", i32 3}
!3953 = !{i32 1, !"wchar_size", i32 2}
!3954 = !{i32 8, !"cf-protection-branch", i32 1}
!3955 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3956 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3957 = !{i32 1, !"Code Model", i32 2}
!3958 = !{i32 1, !"override-stack-alignment", i32 8}
!3959 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3960 = distinct !DISubprogram(name: "exportfs_encode_inode_fh", scope: !3, file: !3, line: 394, type: !3961, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!201, !137, !2154, !1663, !137, !201}
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969}
!3964 = !DILocalVariable(name: "inode", arg: 1, scope: !3960, file: !3, line: 394, type: !137)
!3965 = !DILocalVariable(name: "fid", arg: 2, scope: !3960, file: !3, line: 394, type: !2154)
!3966 = !DILocalVariable(name: "max_len", arg: 3, scope: !3960, file: !3, line: 395, type: !1663)
!3967 = !DILocalVariable(name: "parent", arg: 4, scope: !3960, file: !3, line: 395, type: !137)
!3968 = !DILocalVariable(name: "flags", arg: 5, scope: !3960, file: !3, line: 395, type: !201)
!3969 = !DILocalVariable(name: "nop", scope: !3960, file: !3, line: 397, type: !2141)
!3970 = !DILocation(line: 394, column: 44, scope: !3960)
!3971 = !DILocation(line: 394, column: 63, scope: !3960)
!3972 = !DILocation(line: 395, column: 14, scope: !3960)
!3973 = !DILocation(line: 395, column: 37, scope: !3960)
!3974 = !DILocation(line: 395, column: 49, scope: !3960)
!3975 = !DILocation(line: 397, column: 2, scope: !3960)
!3976 = !DILocation(line: 397, column: 34, scope: !3960)
!3977 = !DILocation(line: 397, column: 40, scope: !3960)
!3978 = !DILocation(line: 397, column: 47, scope: !3960)
!3979 = !DILocation(line: 397, column: 53, scope: !3960)
!3980 = !DILocation(line: 403, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3960, file: !3, line: 403, column: 6)
!3982 = !DILocation(line: 403, column: 10, scope: !3981)
!3983 = !DILocation(line: 403, column: 15, scope: !3981)
!3984 = !DILocation(line: 403, column: 21, scope: !3981)
!3985 = !DILocation(line: 403, column: 38, scope: !3981)
!3986 = !DILocation(line: 403, column: 42, scope: !3981)
!3987 = !DILocation(line: 403, column: 47, scope: !3981)
!3988 = !DILocation(line: 403, column: 6, scope: !3960)
!3989 = !DILocation(line: 404, column: 3, scope: !3981)
!3990 = !DILocation(line: 406, column: 6, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3960, file: !3, line: 406, column: 6)
!3992 = !DILocation(line: 406, column: 10, scope: !3991)
!3993 = !DILocation(line: 406, column: 13, scope: !3991)
!3994 = !DILocation(line: 406, column: 18, scope: !3991)
!3995 = !DILocation(line: 406, column: 6, scope: !3960)
!3996 = !DILocation(line: 407, column: 10, scope: !3991)
!3997 = !DILocation(line: 407, column: 15, scope: !3991)
!3998 = !DILocation(line: 407, column: 25, scope: !3991)
!3999 = !DILocation(line: 407, column: 32, scope: !3991)
!4000 = !DILocation(line: 407, column: 37, scope: !3991)
!4001 = !DILocation(line: 407, column: 42, scope: !3991)
!4002 = !DILocation(line: 407, column: 51, scope: !3991)
!4003 = !DILocation(line: 407, column: 3, scope: !3991)
!4004 = !DILocation(line: 409, column: 26, scope: !3960)
!4005 = !DILocation(line: 409, column: 33, scope: !3960)
!4006 = !DILocation(line: 409, column: 38, scope: !3960)
!4007 = !DILocation(line: 409, column: 47, scope: !3960)
!4008 = !DILocation(line: 409, column: 9, scope: !3960)
!4009 = !DILocation(line: 409, column: 2, scope: !3960)
!4010 = !DILocation(line: 410, column: 1, scope: !3960)
!4011 = distinct !DISubprogram(name: "export_encode_fh", scope: !3, file: !3, line: 357, type: !4012, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!201, !137, !2154, !1663, !137}
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020}
!4015 = !DILocalVariable(name: "inode", arg: 1, scope: !4011, file: !3, line: 357, type: !137)
!4016 = !DILocalVariable(name: "fid", arg: 2, scope: !4011, file: !3, line: 357, type: !2154)
!4017 = !DILocalVariable(name: "max_len", arg: 3, scope: !4011, file: !3, line: 358, type: !1663)
!4018 = !DILocalVariable(name: "parent", arg: 4, scope: !4011, file: !3, line: 358, type: !137)
!4019 = !DILocalVariable(name: "len", scope: !4011, file: !3, line: 360, type: !201)
!4020 = !DILocalVariable(name: "type", scope: !4011, file: !3, line: 361, type: !201)
!4021 = !DILocation(line: 357, column: 43, scope: !4011)
!4022 = !DILocation(line: 357, column: 62, scope: !4011)
!4023 = !DILocation(line: 358, column: 8, scope: !4011)
!4024 = !DILocation(line: 358, column: 31, scope: !4011)
!4025 = !DILocation(line: 360, column: 2, scope: !4011)
!4026 = !DILocation(line: 360, column: 6, scope: !4011)
!4027 = !DILocation(line: 360, column: 13, scope: !4011)
!4028 = !DILocation(line: 360, column: 12, scope: !4011)
!4029 = !DILocation(line: 361, column: 2, scope: !4011)
!4030 = !DILocation(line: 361, column: 6, scope: !4011)
!4031 = !DILocation(line: 363, column: 6, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 363, column: 6)
!4033 = !DILocation(line: 363, column: 13, scope: !4032)
!4034 = !DILocation(line: 363, column: 17, scope: !4032)
!4035 = !DILocation(line: 363, column: 21, scope: !4032)
!4036 = !DILocation(line: 363, column: 6, scope: !4011)
!4037 = !DILocation(line: 364, column: 4, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 363, column: 27)
!4039 = !DILocation(line: 364, column: 12, scope: !4038)
!4040 = !DILocation(line: 365, column: 3, scope: !4038)
!4041 = !DILocation(line: 366, column: 13, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 366, column: 13)
!4043 = !DILocation(line: 366, column: 17, scope: !4042)
!4044 = !DILocation(line: 366, column: 13, scope: !4032)
!4045 = !DILocation(line: 367, column: 4, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 366, column: 22)
!4047 = !DILocation(line: 367, column: 12, scope: !4046)
!4048 = !DILocation(line: 368, column: 3, scope: !4046)
!4049 = !DILocation(line: 371, column: 6, scope: !4011)
!4050 = !DILocation(line: 372, column: 17, scope: !4011)
!4051 = !DILocation(line: 372, column: 24, scope: !4011)
!4052 = !DILocation(line: 372, column: 2, scope: !4011)
!4053 = !DILocation(line: 372, column: 7, scope: !4011)
!4054 = !DILocation(line: 372, column: 11, scope: !4011)
!4055 = !DILocation(line: 372, column: 15, scope: !4011)
!4056 = !DILocation(line: 373, column: 17, scope: !4011)
!4057 = !DILocation(line: 373, column: 24, scope: !4011)
!4058 = !DILocation(line: 373, column: 2, scope: !4011)
!4059 = !DILocation(line: 373, column: 7, scope: !4011)
!4060 = !DILocation(line: 373, column: 11, scope: !4011)
!4061 = !DILocation(line: 373, column: 15, scope: !4011)
!4062 = !DILocation(line: 374, column: 6, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 374, column: 6)
!4064 = !DILocation(line: 374, column: 6, scope: !4011)
!4065 = !DILocation(line: 375, column: 25, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 374, column: 14)
!4067 = !DILocation(line: 375, column: 33, scope: !4066)
!4068 = !DILocation(line: 375, column: 3, scope: !4066)
!4069 = !DILocation(line: 375, column: 8, scope: !4066)
!4070 = !DILocation(line: 375, column: 12, scope: !4066)
!4071 = !DILocation(line: 375, column: 23, scope: !4066)
!4072 = !DILocation(line: 376, column: 25, scope: !4066)
!4073 = !DILocation(line: 376, column: 33, scope: !4066)
!4074 = !DILocation(line: 376, column: 3, scope: !4066)
!4075 = !DILocation(line: 376, column: 8, scope: !4066)
!4076 = !DILocation(line: 376, column: 12, scope: !4066)
!4077 = !DILocation(line: 376, column: 23, scope: !4066)
!4078 = !DILocation(line: 377, column: 7, scope: !4066)
!4079 = !DILocation(line: 378, column: 8, scope: !4066)
!4080 = !DILocation(line: 379, column: 2, scope: !4066)
!4081 = !DILocation(line: 380, column: 13, scope: !4011)
!4082 = !DILocation(line: 380, column: 3, scope: !4011)
!4083 = !DILocation(line: 380, column: 11, scope: !4011)
!4084 = !DILocation(line: 381, column: 9, scope: !4011)
!4085 = !DILocation(line: 381, column: 2, scope: !4011)
!4086 = !DILocation(line: 382, column: 1, scope: !4011)
!4087 = distinct !DISubprogram(name: "exportfs_encode_fh", scope: !3, file: !3, line: 422, type: !4088, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!201, !89, !2154, !1663, !201}
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4091 = !DILocalVariable(name: "dentry", arg: 1, scope: !4087, file: !3, line: 422, type: !89)
!4092 = !DILocalVariable(name: "fid", arg: 2, scope: !4087, file: !3, line: 422, type: !2154)
!4093 = !DILocalVariable(name: "max_len", arg: 3, scope: !4087, file: !3, line: 422, type: !1663)
!4094 = !DILocalVariable(name: "flags", arg: 4, scope: !4087, file: !3, line: 423, type: !201)
!4095 = !DILocalVariable(name: "error", scope: !4087, file: !3, line: 425, type: !201)
!4096 = !DILocalVariable(name: "p", scope: !4087, file: !3, line: 426, type: !89)
!4097 = !DILocalVariable(name: "inode", scope: !4087, file: !3, line: 427, type: !137)
!4098 = !DILocalVariable(name: "parent", scope: !4087, file: !3, line: 427, type: !137)
!4099 = !DILocation(line: 422, column: 39, scope: !4087)
!4100 = !DILocation(line: 422, column: 59, scope: !4087)
!4101 = !DILocation(line: 422, column: 69, scope: !4087)
!4102 = !DILocation(line: 423, column: 14, scope: !4087)
!4103 = !DILocation(line: 425, column: 2, scope: !4087)
!4104 = !DILocation(line: 425, column: 6, scope: !4087)
!4105 = !DILocation(line: 426, column: 2, scope: !4087)
!4106 = !DILocation(line: 426, column: 17, scope: !4087)
!4107 = !DILocation(line: 427, column: 2, scope: !4087)
!4108 = !DILocation(line: 427, column: 16, scope: !4087)
!4109 = !DILocation(line: 427, column: 24, scope: !4087)
!4110 = !DILocation(line: 427, column: 32, scope: !4087)
!4111 = !DILocation(line: 427, column: 42, scope: !4087)
!4112 = !DILocation(line: 429, column: 7, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 429, column: 6)
!4114 = !DILocation(line: 429, column: 13, scope: !4113)
!4115 = !DILocation(line: 429, column: 38, scope: !4113)
!4116 = !DILocation(line: 429, column: 42, scope: !4113)
!4117 = !DILocation(line: 429, column: 6, scope: !4087)
!4118 = !DILocation(line: 430, column: 19, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 429, column: 66)
!4120 = !DILocation(line: 430, column: 7, scope: !4119)
!4121 = !DILocation(line: 430, column: 5, scope: !4119)
!4122 = !DILocation(line: 435, column: 12, scope: !4119)
!4123 = !DILocation(line: 435, column: 15, scope: !4119)
!4124 = !DILocation(line: 435, column: 10, scope: !4119)
!4125 = !DILocation(line: 436, column: 2, scope: !4119)
!4126 = !DILocation(line: 438, column: 35, scope: !4087)
!4127 = !DILocation(line: 438, column: 42, scope: !4087)
!4128 = !DILocation(line: 438, column: 47, scope: !4087)
!4129 = !DILocation(line: 438, column: 56, scope: !4087)
!4130 = !DILocation(line: 438, column: 64, scope: !4087)
!4131 = !DILocation(line: 438, column: 10, scope: !4087)
!4132 = !DILocation(line: 438, column: 8, scope: !4087)
!4133 = !DILocation(line: 439, column: 7, scope: !4087)
!4134 = !DILocation(line: 439, column: 2, scope: !4087)
!4135 = !DILocation(line: 441, column: 9, scope: !4087)
!4136 = !DILocation(line: 442, column: 1, scope: !4087)
!4137 = !DILocation(line: 441, column: 2, scope: !4087)
!4138 = !DISubprogram(name: "dget_parent", scope: !91, file: !91, line: 324, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4139 = !DISubprogram(name: "dput", scope: !91, file: !91, line: 368, type: !3538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4140 = distinct !DISubprogram(name: "exportfs_decode_fh_raw", scope: !3, file: !3, line: 446, type: !4141, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4146)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!89, !672, !2154, !201, !201, !4143, !87}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!201, !87, !89}
!4146 = !{!4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4160, !4161, !4164, !4165}
!4147 = !DILocalVariable(name: "mnt", arg: 1, scope: !4140, file: !3, line: 446, type: !672)
!4148 = !DILocalVariable(name: "fid", arg: 2, scope: !4140, file: !3, line: 446, type: !2154)
!4149 = !DILocalVariable(name: "fh_len", arg: 3, scope: !4140, file: !3, line: 446, type: !201)
!4150 = !DILocalVariable(name: "fileid_type", arg: 4, scope: !4140, file: !3, line: 447, type: !201)
!4151 = !DILocalVariable(name: "acceptable", arg: 5, scope: !4140, file: !3, line: 448, type: !4143)
!4152 = !DILocalVariable(name: "context", arg: 6, scope: !4140, file: !3, line: 449, type: !87)
!4153 = !DILocalVariable(name: "nop", scope: !4140, file: !3, line: 451, type: !2141)
!4154 = !DILocalVariable(name: "result", scope: !4140, file: !3, line: 452, type: !89)
!4155 = !DILocalVariable(name: "alias", scope: !4140, file: !3, line: 452, type: !89)
!4156 = !DILocalVariable(name: "nbuf", scope: !4140, file: !3, line: 453, type: !4157)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 2048, elements: !4158)
!4158 = !{!4159}
!4159 = !DISubrange(count: 256)
!4160 = !DILocalVariable(name: "err", scope: !4140, file: !3, line: 454, type: !201)
!4161 = !DILocalVariable(name: "target_dir", scope: !4162, file: !3, line: 499, type: !89)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 495, column: 9)
!4163 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 474, column: 6)
!4164 = !DILocalVariable(name: "nresult", scope: !4162, file: !3, line: 499, type: !89)
!4165 = !DILabel(scope: !4140, name: "err_result", file: !3, line: 588)
!4166 = !DILocation(line: 446, column: 41, scope: !4140)
!4167 = !DILocation(line: 446, column: 58, scope: !4140)
!4168 = !DILocation(line: 446, column: 67, scope: !4140)
!4169 = !DILocation(line: 447, column: 14, scope: !4140)
!4170 = !DILocation(line: 448, column: 16, scope: !4140)
!4171 = !DILocation(line: 449, column: 16, scope: !4140)
!4172 = !DILocation(line: 451, column: 2, scope: !4140)
!4173 = !DILocation(line: 451, column: 34, scope: !4140)
!4174 = !DILocation(line: 451, column: 40, scope: !4140)
!4175 = !DILocation(line: 451, column: 45, scope: !4140)
!4176 = !DILocation(line: 451, column: 53, scope: !4140)
!4177 = !DILocation(line: 452, column: 2, scope: !4140)
!4178 = !DILocation(line: 452, column: 17, scope: !4140)
!4179 = !DILocation(line: 452, column: 26, scope: !4140)
!4180 = !DILocation(line: 453, column: 2, scope: !4140)
!4181 = !DILocation(line: 453, column: 7, scope: !4140)
!4182 = !DILocation(line: 454, column: 2, scope: !4140)
!4183 = !DILocation(line: 454, column: 6, scope: !4140)
!4184 = !DILocation(line: 459, column: 7, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 459, column: 6)
!4186 = !DILocation(line: 459, column: 11, scope: !4185)
!4187 = !DILocation(line: 459, column: 15, scope: !4185)
!4188 = !DILocation(line: 459, column: 20, scope: !4185)
!4189 = !DILocation(line: 459, column: 6, scope: !4140)
!4190 = !DILocation(line: 460, column: 10, scope: !4185)
!4191 = !DILocation(line: 460, column: 3, scope: !4185)
!4192 = !DILocation(line: 461, column: 11, scope: !4140)
!4193 = !DILocation(line: 461, column: 16, scope: !4140)
!4194 = !DILocation(line: 461, column: 29, scope: !4140)
!4195 = !DILocation(line: 461, column: 34, scope: !4140)
!4196 = !DILocation(line: 461, column: 42, scope: !4140)
!4197 = !DILocation(line: 461, column: 47, scope: !4140)
!4198 = !DILocation(line: 461, column: 55, scope: !4140)
!4199 = !DILocation(line: 461, column: 9, scope: !4140)
!4200 = !DILocation(line: 462, column: 21, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 462, column: 6)
!4202 = !DILocation(line: 462, column: 6, scope: !4201)
!4203 = !DILocation(line: 462, column: 6, scope: !4140)
!4204 = !DILocation(line: 463, column: 10, scope: !4201)
!4205 = !DILocation(line: 463, column: 3, scope: !4201)
!4206 = !DILocation(line: 471, column: 7, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 471, column: 6)
!4208 = !DILocation(line: 471, column: 6, scope: !4140)
!4209 = !DILocation(line: 472, column: 10, scope: !4207)
!4210 = !DILocation(line: 472, column: 3, scope: !4207)
!4211 = !DILocation(line: 474, column: 15, scope: !4163)
!4212 = !DILocation(line: 474, column: 6, scope: !4163)
!4213 = !DILocation(line: 474, column: 6, scope: !4140)
!4214 = !DILocation(line: 483, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 483, column: 7)
!4216 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 474, column: 24)
!4217 = !DILocation(line: 483, column: 15, scope: !4215)
!4218 = !DILocation(line: 483, column: 23, scope: !4215)
!4219 = !DILocation(line: 483, column: 7, scope: !4216)
!4220 = !DILocation(line: 484, column: 25, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 483, column: 46)
!4222 = !DILocation(line: 484, column: 30, scope: !4221)
!4223 = !DILocation(line: 484, column: 38, scope: !4221)
!4224 = !DILocation(line: 484, column: 10, scope: !4221)
!4225 = !DILocation(line: 484, column: 8, scope: !4221)
!4226 = !DILocation(line: 485, column: 8, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 485, column: 8)
!4228 = !DILocation(line: 485, column: 8, scope: !4221)
!4229 = !DILocation(line: 486, column: 5, scope: !4227)
!4230 = !DILocation(line: 487, column: 3, scope: !4221)
!4231 = !DILocation(line: 489, column: 8, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 489, column: 7)
!4233 = !DILocation(line: 489, column: 19, scope: !4232)
!4234 = !DILocation(line: 489, column: 28, scope: !4232)
!4235 = !DILocation(line: 489, column: 7, scope: !4216)
!4236 = !DILocation(line: 490, column: 8, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 489, column: 37)
!4238 = !DILocation(line: 491, column: 4, scope: !4237)
!4239 = !DILocation(line: 494, column: 10, scope: !4216)
!4240 = !DILocation(line: 494, column: 3, scope: !4216)
!4241 = !DILocation(line: 499, column: 3, scope: !4162)
!4242 = !DILocation(line: 499, column: 18, scope: !4162)
!4243 = !DILocation(line: 499, column: 31, scope: !4162)
!4244 = !DILocation(line: 510, column: 33, scope: !4162)
!4245 = !DILocation(line: 510, column: 41, scope: !4162)
!4246 = !DILocation(line: 510, column: 53, scope: !4162)
!4247 = !DILocation(line: 510, column: 11, scope: !4162)
!4248 = !DILocation(line: 510, column: 9, scope: !4162)
!4249 = !DILocation(line: 511, column: 7, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 511, column: 7)
!4251 = !DILocation(line: 511, column: 7, scope: !4162)
!4252 = !DILocation(line: 512, column: 11, scope: !4250)
!4253 = !DILocation(line: 512, column: 4, scope: !4250)
!4254 = !DILocation(line: 518, column: 7, scope: !4162)
!4255 = !DILocation(line: 519, column: 8, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 519, column: 7)
!4257 = !DILocation(line: 519, column: 13, scope: !4256)
!4258 = !DILocation(line: 519, column: 7, scope: !4162)
!4259 = !DILocation(line: 520, column: 4, scope: !4256)
!4260 = !DILocation(line: 522, column: 16, scope: !4162)
!4261 = !DILocation(line: 522, column: 21, scope: !4162)
!4262 = !DILocation(line: 522, column: 34, scope: !4162)
!4263 = !DILocation(line: 522, column: 39, scope: !4162)
!4264 = !DILocation(line: 522, column: 47, scope: !4162)
!4265 = !DILocation(line: 523, column: 5, scope: !4162)
!4266 = !DILocation(line: 523, column: 13, scope: !4162)
!4267 = !DILocation(line: 522, column: 14, scope: !4162)
!4268 = !DILocation(line: 524, column: 8, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 524, column: 7)
!4270 = !DILocation(line: 524, column: 7, scope: !4162)
!4271 = !DILocation(line: 525, column: 4, scope: !4269)
!4272 = !DILocation(line: 526, column: 17, scope: !4162)
!4273 = !DILocation(line: 526, column: 9, scope: !4162)
!4274 = !DILocation(line: 526, column: 7, scope: !4162)
!4275 = !DILocation(line: 527, column: 14, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 527, column: 7)
!4277 = !DILocation(line: 527, column: 7, scope: !4276)
!4278 = !DILocation(line: 527, column: 7, scope: !4162)
!4279 = !DILocation(line: 528, column: 4, scope: !4276)
!4280 = !DILocation(line: 535, column: 24, scope: !4162)
!4281 = !DILocation(line: 535, column: 29, scope: !4162)
!4282 = !DILocation(line: 535, column: 41, scope: !4162)
!4283 = !DILocation(line: 535, column: 9, scope: !4162)
!4284 = !DILocation(line: 535, column: 7, scope: !4162)
!4285 = !DILocation(line: 536, column: 7, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 536, column: 7)
!4287 = !DILocation(line: 536, column: 7, scope: !4162)
!4288 = !DILocation(line: 537, column: 9, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 536, column: 12)
!4290 = !DILocation(line: 537, column: 4, scope: !4289)
!4291 = !DILocation(line: 538, column: 4, scope: !4289)
!4292 = !DILocation(line: 546, column: 27, scope: !4162)
!4293 = !DILocation(line: 546, column: 32, scope: !4162)
!4294 = !DILocation(line: 546, column: 44, scope: !4162)
!4295 = !DILocation(line: 546, column: 50, scope: !4162)
!4296 = !DILocation(line: 546, column: 9, scope: !4162)
!4297 = !DILocation(line: 546, column: 7, scope: !4162)
!4298 = !DILocation(line: 547, column: 7, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 547, column: 7)
!4300 = !DILocation(line: 547, column: 7, scope: !4162)
!4301 = !DILocation(line: 548, column: 9, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 547, column: 12)
!4303 = !DILocation(line: 548, column: 4, scope: !4302)
!4304 = !DILocation(line: 549, column: 4, scope: !4302)
!4305 = !DILocation(line: 552, column: 14, scope: !4162)
!4306 = !DILocation(line: 552, column: 26, scope: !4162)
!4307 = !DILocation(line: 552, column: 3, scope: !4162)
!4308 = !DILocation(line: 553, column: 34, scope: !4162)
!4309 = !DILocation(line: 553, column: 24, scope: !4162)
!4310 = !DILocation(line: 553, column: 40, scope: !4162)
!4311 = !DILocation(line: 554, column: 10, scope: !4162)
!4312 = !DILocation(line: 554, column: 29, scope: !4162)
!4313 = !DILocation(line: 554, column: 22, scope: !4162)
!4314 = !DILocation(line: 553, column: 13, scope: !4162)
!4315 = !DILocation(line: 553, column: 11, scope: !4162)
!4316 = !DILocation(line: 555, column: 15, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 555, column: 7)
!4318 = !DILocation(line: 555, column: 8, scope: !4317)
!4319 = !DILocation(line: 555, column: 7, scope: !4162)
!4320 = !DILocation(line: 556, column: 8, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 556, column: 8)
!4322 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 555, column: 25)
!4323 = !DILocation(line: 556, column: 8, scope: !4322)
!4324 = !DILocation(line: 557, column: 10, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 556, column: 55)
!4326 = !DILocation(line: 557, column: 5, scope: !4325)
!4327 = !DILocation(line: 558, column: 15, scope: !4325)
!4328 = !DILocation(line: 558, column: 13, scope: !4325)
!4329 = !DILocation(line: 559, column: 4, scope: !4325)
!4330 = !DILocation(line: 560, column: 3, scope: !4322)
!4331 = !DILocation(line: 561, column: 16, scope: !4162)
!4332 = !DILocation(line: 561, column: 28, scope: !4162)
!4333 = !DILocation(line: 561, column: 3, scope: !4162)
!4334 = !DILocation(line: 566, column: 8, scope: !4162)
!4335 = !DILocation(line: 566, column: 3, scope: !4162)
!4336 = !DILocation(line: 568, column: 14, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 568, column: 7)
!4338 = !DILocation(line: 568, column: 7, scope: !4337)
!4339 = !DILocation(line: 568, column: 7, scope: !4162)
!4340 = !DILocation(line: 569, column: 18, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 568, column: 24)
!4342 = !DILocation(line: 569, column: 10, scope: !4341)
!4343 = !DILocation(line: 569, column: 8, scope: !4341)
!4344 = !DILocation(line: 570, column: 4, scope: !4341)
!4345 = !DILocation(line: 572, column: 8, scope: !4162)
!4346 = !DILocation(line: 572, column: 3, scope: !4162)
!4347 = !DILocation(line: 573, column: 12, scope: !4162)
!4348 = !DILocation(line: 573, column: 10, scope: !4162)
!4349 = !DILocation(line: 579, column: 33, scope: !4162)
!4350 = !DILocation(line: 579, column: 41, scope: !4162)
!4351 = !DILocation(line: 579, column: 53, scope: !4162)
!4352 = !DILocation(line: 579, column: 11, scope: !4162)
!4353 = !DILocation(line: 579, column: 9, scope: !4162)
!4354 = !DILocation(line: 580, column: 8, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 580, column: 7)
!4356 = !DILocation(line: 580, column: 7, scope: !4162)
!4357 = !DILocation(line: 581, column: 8, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 580, column: 15)
!4359 = !DILocation(line: 582, column: 4, scope: !4358)
!4360 = !DILocation(line: 585, column: 10, scope: !4162)
!4361 = !DILocation(line: 585, column: 3, scope: !4162)
!4362 = !DILocation(line: 586, column: 2, scope: !4163)
!4363 = !DILocation(line: 588, column: 2, scope: !4140)
!4364 = !DILocation(line: 589, column: 7, scope: !4140)
!4365 = !DILocation(line: 589, column: 2, scope: !4140)
!4366 = !DILocation(line: 590, column: 17, scope: !4140)
!4367 = !DILocation(line: 590, column: 9, scope: !4140)
!4368 = !DILocation(line: 590, column: 2, scope: !4140)
!4369 = !DILocation(line: 591, column: 1, scope: !4140)
!4370 = distinct !DISubprogram(name: "ERR_PTR", scope: !4371, file: !4371, line: 39, type: !4372, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4374)
!4371 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!87, !287}
!4374 = !{!4375}
!4375 = !DILocalVariable(name: "error", arg: 1, scope: !4370, file: !4371, line: 39, type: !287)
!4376 = !DILocation(line: 39, column: 48, scope: !4370)
!4377 = !DILocation(line: 41, column: 18, scope: !4370)
!4378 = !DILocation(line: 41, column: 9, scope: !4370)
!4379 = !DILocation(line: 41, column: 2, scope: !4370)
!4380 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4371, file: !4371, line: 70, type: !4381, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4383)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!209, !1252}
!4383 = !{!4384}
!4384 = !DILocalVariable(name: "ptr", arg: 1, scope: !4380, file: !4371, line: 70, type: !1252)
!4385 = !DILocation(line: 70, column: 68, scope: !4380)
!4386 = !DILocation(line: 72, column: 9, scope: !4380)
!4387 = !DILocation(line: 72, column: 24, scope: !4380)
!4388 = !DILocation(line: 72, column: 27, scope: !4380)
!4389 = !DILocation(line: 72, column: 2, scope: !4380)
!4390 = distinct !DISubprogram(name: "d_is_dir", scope: !91, file: !91, line: 408, type: !4391, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!209, !3519}
!4393 = !{!4394}
!4394 = !DILocalVariable(name: "dentry", arg: 1, scope: !4390, file: !91, line: 408, type: !3519)
!4395 = !DILocation(line: 408, column: 50, scope: !4390)
!4396 = !DILocation(line: 410, column: 22, scope: !4390)
!4397 = !DILocation(line: 410, column: 9, scope: !4390)
!4398 = !DILocation(line: 410, column: 30, scope: !4390)
!4399 = !DILocation(line: 410, column: 46, scope: !4390)
!4400 = !DILocation(line: 410, column: 33, scope: !4390)
!4401 = !DILocation(line: 410, column: 2, scope: !4390)
!4402 = distinct !DISubprogram(name: "reconnect_path", scope: !3, file: !3, line: 212, type: !4403, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4405)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!201, !672, !89, !215}
!4405 = !{!4406, !4407, !4408, !4409, !4410}
!4406 = !DILocalVariable(name: "mnt", arg: 1, scope: !4402, file: !3, line: 212, type: !672)
!4407 = !DILocalVariable(name: "target_dir", arg: 2, scope: !4402, file: !3, line: 212, type: !89)
!4408 = !DILocalVariable(name: "nbuf", arg: 3, scope: !4402, file: !3, line: 212, type: !215)
!4409 = !DILocalVariable(name: "dentry", scope: !4402, file: !3, line: 214, type: !89)
!4410 = !DILocalVariable(name: "parent", scope: !4402, file: !3, line: 214, type: !89)
!4411 = !DILocation(line: 212, column: 33, scope: !4402)
!4412 = !DILocation(line: 212, column: 53, scope: !4402)
!4413 = !DILocation(line: 212, column: 71, scope: !4402)
!4414 = !DILocation(line: 214, column: 2, scope: !4402)
!4415 = !DILocation(line: 214, column: 17, scope: !4402)
!4416 = !DILocation(line: 214, column: 26, scope: !4402)
!4417 = !DILocation(line: 216, column: 16, scope: !4402)
!4418 = !DILocation(line: 216, column: 11, scope: !4402)
!4419 = !DILocation(line: 216, column: 9, scope: !4402)
!4420 = !DILocation(line: 218, column: 2, scope: !4402)
!4421 = !DILocation(line: 218, column: 9, scope: !4402)
!4422 = !DILocation(line: 218, column: 17, scope: !4402)
!4423 = !DILocation(line: 218, column: 25, scope: !4402)
!4424 = !DILocation(line: 219, column: 3, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 218, column: 48)
!4426 = !DILocation(line: 219, column: 3, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 219, column: 3)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 219, column: 3)
!4429 = !DILocation(line: 219, column: 3, scope: !4428)
!4430 = !DILocation(line: 219, column: 3, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 219, column: 3)
!4432 = !DILocation(line: 219, column: 3, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 219, column: 3)
!4434 = !DILocation(line: 219, column: 3, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 219, column: 3)
!4436 = !{i64 2153646390, i64 2153646419, i64 2153646465, i64 2153646523, i64 2153646577, i64 2153646631, i64 2153646686, i64 2153646717}
!4437 = !DILocation(line: 221, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 221, column: 7)
!4439 = !DILocation(line: 221, column: 7, scope: !4425)
!4440 = !DILocation(line: 222, column: 27, scope: !4438)
!4441 = !DILocation(line: 222, column: 32, scope: !4438)
!4442 = !DILocation(line: 222, column: 40, scope: !4438)
!4443 = !DILocation(line: 222, column: 13, scope: !4438)
!4444 = !DILocation(line: 222, column: 11, scope: !4438)
!4445 = !DILocation(line: 222, column: 4, scope: !4438)
!4446 = !DILocation(line: 224, column: 25, scope: !4438)
!4447 = !DILocation(line: 224, column: 13, scope: !4438)
!4448 = !DILocation(line: 224, column: 11, scope: !4438)
!4449 = !DILocation(line: 226, column: 8, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 226, column: 7)
!4451 = !DILocation(line: 226, column: 7, scope: !4425)
!4452 = !DILocation(line: 227, column: 4, scope: !4450)
!4453 = !DILocation(line: 228, column: 8, scope: !4425)
!4454 = !DILocation(line: 228, column: 3, scope: !4425)
!4455 = !DILocation(line: 229, column: 14, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 229, column: 7)
!4457 = !DILocation(line: 229, column: 7, scope: !4456)
!4458 = !DILocation(line: 229, column: 7, scope: !4425)
!4459 = !DILocation(line: 230, column: 19, scope: !4456)
!4460 = !DILocation(line: 230, column: 11, scope: !4456)
!4461 = !DILocation(line: 230, column: 4, scope: !4456)
!4462 = !DILocation(line: 231, column: 12, scope: !4425)
!4463 = !DILocation(line: 231, column: 10, scope: !4425)
!4464 = distinct !{!4464, !4420, !4465, !4466, !4467}
!4465 = !DILocation(line: 232, column: 2, scope: !4402)
!4466 = !{!"llvm.loop.mustprogress"}
!4467 = !{!"llvm.loop.unroll.disable"}
!4468 = !DILocation(line: 233, column: 7, scope: !4402)
!4469 = !DILocation(line: 233, column: 2, scope: !4402)
!4470 = !DILocation(line: 234, column: 21, scope: !4402)
!4471 = !DILocation(line: 234, column: 2, scope: !4402)
!4472 = !DILocation(line: 235, column: 2, scope: !4402)
!4473 = !DILocation(line: 236, column: 1, scope: !4402)
!4474 = distinct !DISubprogram(name: "find_acceptable_alias", scope: !3, file: !3, line: 43, type: !4475, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!89, !89, !4143, !87}
!4477 = !{!4478, !4479, !4480, !4481, !4482, !4483, !4484, !4487, !4489, !4492}
!4478 = !DILocalVariable(name: "result", arg: 1, scope: !4474, file: !3, line: 43, type: !89)
!4479 = !DILocalVariable(name: "acceptable", arg: 2, scope: !4474, file: !3, line: 44, type: !4143)
!4480 = !DILocalVariable(name: "context", arg: 3, scope: !4474, file: !3, line: 45, type: !87)
!4481 = !DILocalVariable(name: "dentry", scope: !4474, file: !3, line: 47, type: !89)
!4482 = !DILocalVariable(name: "toput", scope: !4474, file: !3, line: 47, type: !89)
!4483 = !DILocalVariable(name: "inode", scope: !4474, file: !3, line: 48, type: !137)
!4484 = !DILocalVariable(name: "____ptr", scope: !4485, file: !3, line: 55, type: !420)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 55, column: 2)
!4486 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 55, column: 2)
!4487 = !DILocalVariable(name: "__mptr", scope: !4488, file: !3, line: 55, type: !87)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 55, column: 2)
!4489 = !DILocalVariable(name: "____ptr", scope: !4490, file: !3, line: 55, type: !420)
!4490 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 55, column: 2)
!4491 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 55, column: 2)
!4492 = !DILocalVariable(name: "__mptr", scope: !4493, file: !3, line: 55, type: !87)
!4493 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 55, column: 2)
!4494 = !DILocation(line: 43, column: 38, scope: !4474)
!4495 = !DILocation(line: 44, column: 9, scope: !4474)
!4496 = !DILocation(line: 45, column: 9, scope: !4474)
!4497 = !DILocation(line: 47, column: 2, scope: !4474)
!4498 = !DILocation(line: 47, column: 17, scope: !4474)
!4499 = !DILocation(line: 47, column: 26, scope: !4474)
!4500 = !DILocation(line: 48, column: 2, scope: !4474)
!4501 = !DILocation(line: 48, column: 16, scope: !4474)
!4502 = !DILocation(line: 50, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 50, column: 6)
!4504 = !DILocation(line: 50, column: 17, scope: !4503)
!4505 = !DILocation(line: 50, column: 26, scope: !4503)
!4506 = !DILocation(line: 50, column: 6, scope: !4474)
!4507 = !DILocation(line: 51, column: 10, scope: !4503)
!4508 = !DILocation(line: 51, column: 3, scope: !4503)
!4509 = !DILocation(line: 53, column: 10, scope: !4474)
!4510 = !DILocation(line: 53, column: 18, scope: !4474)
!4511 = !DILocation(line: 53, column: 8, scope: !4474)
!4512 = !DILocation(line: 54, column: 13, scope: !4474)
!4513 = !DILocation(line: 54, column: 20, scope: !4474)
!4514 = !DILocation(line: 54, column: 2, scope: !4474)
!4515 = !DILocation(line: 55, column: 2, scope: !4485)
!4516 = !DILocation(line: 55, column: 2, scope: !4488)
!4517 = !DILocation(line: 55, column: 2, scope: !4486)
!4518 = !DILocation(line: 55, column: 2, scope: !4491)
!4519 = !DILocation(line: 56, column: 8, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 55, column: 62)
!4521 = !DILocation(line: 56, column: 3, scope: !4520)
!4522 = !DILocation(line: 57, column: 16, scope: !4520)
!4523 = !DILocation(line: 57, column: 23, scope: !4520)
!4524 = !DILocation(line: 57, column: 3, scope: !4520)
!4525 = !DILocation(line: 58, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 58, column: 7)
!4527 = !DILocation(line: 58, column: 7, scope: !4520)
!4528 = !DILocation(line: 59, column: 9, scope: !4526)
!4529 = !DILocation(line: 59, column: 4, scope: !4526)
!4530 = !DILocation(line: 60, column: 7, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 60, column: 7)
!4532 = !DILocation(line: 60, column: 17, scope: !4531)
!4533 = !DILocation(line: 60, column: 14, scope: !4531)
!4534 = !DILocation(line: 60, column: 24, scope: !4531)
!4535 = !DILocation(line: 60, column: 27, scope: !4531)
!4536 = !DILocation(line: 60, column: 38, scope: !4531)
!4537 = !DILocation(line: 60, column: 47, scope: !4531)
!4538 = !DILocation(line: 60, column: 7, scope: !4520)
!4539 = !DILocation(line: 61, column: 9, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 60, column: 56)
!4541 = !DILocation(line: 61, column: 4, scope: !4540)
!4542 = !DILocation(line: 62, column: 11, scope: !4540)
!4543 = !DILocation(line: 62, column: 4, scope: !4540)
!4544 = !DILocation(line: 64, column: 14, scope: !4520)
!4545 = !DILocation(line: 64, column: 21, scope: !4520)
!4546 = !DILocation(line: 64, column: 3, scope: !4520)
!4547 = !DILocation(line: 65, column: 11, scope: !4520)
!4548 = !DILocation(line: 65, column: 9, scope: !4520)
!4549 = !DILocation(line: 66, column: 2, scope: !4520)
!4550 = !DILocation(line: 55, column: 2, scope: !4490)
!4551 = !DILocation(line: 55, column: 2, scope: !4493)
!4552 = distinct !{!4552, !4517, !4553, !4466, !4467}
!4553 = !DILocation(line: 66, column: 2, scope: !4486)
!4554 = !DILocation(line: 67, column: 15, scope: !4474)
!4555 = !DILocation(line: 67, column: 22, scope: !4474)
!4556 = !DILocation(line: 67, column: 2, scope: !4474)
!4557 = !DILocation(line: 69, column: 6, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 69, column: 6)
!4559 = !DILocation(line: 69, column: 6, scope: !4474)
!4560 = !DILocation(line: 70, column: 8, scope: !4558)
!4561 = !DILocation(line: 70, column: 3, scope: !4558)
!4562 = !DILocation(line: 71, column: 2, scope: !4474)
!4563 = !DILocation(line: 72, column: 1, scope: !4474)
!4564 = distinct !DISubprogram(name: "PTR_ERR", scope: !4371, file: !4371, line: 49, type: !4565, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!287, !1252}
!4567 = !{!4568}
!4568 = !DILocalVariable(name: "ptr", arg: 1, scope: !4564, file: !4371, line: 49, type: !1252)
!4569 = !DILocation(line: 49, column: 61, scope: !4564)
!4570 = !DILocation(line: 51, column: 16, scope: !4564)
!4571 = !DILocation(line: 51, column: 9, scope: !4564)
!4572 = !DILocation(line: 51, column: 2, scope: !4564)
!4573 = distinct !DISubprogram(name: "IS_ERR", scope: !4371, file: !4371, line: 59, type: !4381, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4574 = !{!4575}
!4575 = !DILocalVariable(name: "ptr", arg: 1, scope: !4573, file: !4371, line: 59, type: !1252)
!4576 = !DILocation(line: 59, column: 60, scope: !4573)
!4577 = !DILocation(line: 61, column: 9, scope: !4573)
!4578 = !DILocation(line: 61, column: 2, scope: !4573)
!4579 = distinct !DISubprogram(name: "exportfs_get_name", scope: !3, file: !3, line: 27, type: !4580, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!201, !672, !89, !215, !89}
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588}
!4583 = !DILocalVariable(name: "mnt", arg: 1, scope: !4579, file: !3, line: 27, type: !672)
!4584 = !DILocalVariable(name: "dir", arg: 2, scope: !4579, file: !3, line: 27, type: !89)
!4585 = !DILocalVariable(name: "name", arg: 3, scope: !4579, file: !3, line: 28, type: !215)
!4586 = !DILocalVariable(name: "child", arg: 4, scope: !4579, file: !3, line: 28, type: !89)
!4587 = !DILocalVariable(name: "nop", scope: !4579, file: !3, line: 30, type: !2141)
!4588 = !DILocalVariable(name: "path", scope: !4579, file: !3, line: 31, type: !668)
!4589 = !DILocation(line: 27, column: 47, scope: !4579)
!4590 = !DILocation(line: 27, column: 67, scope: !4579)
!4591 = !DILocation(line: 28, column: 9, scope: !4579)
!4592 = !DILocation(line: 28, column: 30, scope: !4579)
!4593 = !DILocation(line: 30, column: 2, scope: !4579)
!4594 = !DILocation(line: 30, column: 34, scope: !4579)
!4595 = !DILocation(line: 30, column: 40, scope: !4579)
!4596 = !DILocation(line: 30, column: 45, scope: !4579)
!4597 = !DILocation(line: 30, column: 51, scope: !4579)
!4598 = !DILocation(line: 31, column: 2, scope: !4579)
!4599 = !DILocation(line: 31, column: 14, scope: !4579)
!4600 = !DILocation(line: 31, column: 21, scope: !4579)
!4601 = !DILocation(line: 31, column: 29, scope: !4579)
!4602 = !DILocation(line: 31, column: 44, scope: !4579)
!4603 = !DILocation(line: 33, column: 6, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 33, column: 6)
!4605 = !DILocation(line: 33, column: 11, scope: !4604)
!4606 = !DILocation(line: 33, column: 6, scope: !4579)
!4607 = !DILocation(line: 34, column: 10, scope: !4604)
!4608 = !DILocation(line: 34, column: 15, scope: !4604)
!4609 = !DILocation(line: 34, column: 24, scope: !4604)
!4610 = !DILocation(line: 34, column: 29, scope: !4604)
!4611 = !DILocation(line: 34, column: 35, scope: !4604)
!4612 = !DILocation(line: 34, column: 3, scope: !4604)
!4613 = !DILocation(line: 36, column: 26, scope: !4604)
!4614 = !DILocation(line: 36, column: 32, scope: !4604)
!4615 = !DILocation(line: 36, column: 10, scope: !4604)
!4616 = !DILocation(line: 36, column: 3, scope: !4604)
!4617 = !DILocation(line: 37, column: 1, scope: !4579)
!4618 = distinct !DISubprogram(name: "inode_lock", scope: !35, file: !35, line: 802, type: !1894, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4619 = !{!4620}
!4620 = !DILocalVariable(name: "inode", arg: 1, scope: !4618, file: !35, line: 802, type: !137)
!4621 = !DILocation(line: 802, column: 45, scope: !4618)
!4622 = !DILocation(line: 804, column: 14, scope: !4618)
!4623 = !DILocation(line: 804, column: 21, scope: !4618)
!4624 = !DILocation(line: 804, column: 2, scope: !4618)
!4625 = !DILocation(line: 805, column: 1, scope: !4618)
!4626 = !DISubprogram(name: "lookup_one", scope: !4627, file: !4627, line: 79, type: !4628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4627 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!89, !202, !185, !89, !201}
!4630 = distinct !DISubprogram(name: "mnt_idmap", scope: !674, file: !674, line: 77, type: !4631, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4635)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!202, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "mnt", arg: 1, scope: !4630, file: !674, line: 77, type: !4633)
!4637 = !DILocalVariable(name: "___p1", scope: !4638, file: !674, line: 80, type: !4639)
!4638 = distinct !DILexicalBlock(scope: !4630, file: !674, line: 80, column: 9)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!4640 = !DILocation(line: 77, column: 66, scope: !4630)
!4641 = !DILocation(line: 80, column: 9, scope: !4638)
!4642 = !DILocation(line: 80, column: 9, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4638, file: !674, line: 80, column: 9)
!4644 = !DILocation(line: 80, column: 9, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4643, file: !674, line: 80, column: 9)
!4646 = !DILocation(line: 80, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4638, file: !674, line: 80, column: 9)
!4648 = !{i64 2153141762}
!4649 = !DILocation(line: 80, column: 9, scope: !4630)
!4650 = !DILocation(line: 80, column: 2, scope: !4630)
!4651 = !DISubprogram(name: "strlen", scope: !4652, file: !4652, line: 128, type: !4653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4652 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!88, !185}
!4655 = distinct !DISubprogram(name: "inode_unlock", scope: !35, file: !35, line: 807, type: !1894, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4656 = !{!4657}
!4657 = !DILocalVariable(name: "inode", arg: 1, scope: !4655, file: !35, line: 807, type: !137)
!4658 = !DILocation(line: 807, column: 47, scope: !4655)
!4659 = !DILocation(line: 809, column: 12, scope: !4655)
!4660 = !DILocation(line: 809, column: 19, scope: !4655)
!4661 = !DILocation(line: 809, column: 2, scope: !4655)
!4662 = !DILocation(line: 810, column: 1, scope: !4655)
!4663 = distinct !DISubprogram(name: "exportfs_decode_fh", scope: !3, file: !3, line: 594, type: !4141, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4664)
!4664 = !{!4665, !4666, !4667, !4668, !4669, !4670, !4671}
!4665 = !DILocalVariable(name: "mnt", arg: 1, scope: !4663, file: !3, line: 594, type: !672)
!4666 = !DILocalVariable(name: "fid", arg: 2, scope: !4663, file: !3, line: 594, type: !2154)
!4667 = !DILocalVariable(name: "fh_len", arg: 3, scope: !4663, file: !3, line: 595, type: !201)
!4668 = !DILocalVariable(name: "fileid_type", arg: 4, scope: !4663, file: !3, line: 595, type: !201)
!4669 = !DILocalVariable(name: "acceptable", arg: 5, scope: !4663, file: !3, line: 596, type: !4143)
!4670 = !DILocalVariable(name: "context", arg: 6, scope: !4663, file: !3, line: 597, type: !87)
!4671 = !DILocalVariable(name: "ret", scope: !4663, file: !3, line: 599, type: !89)
!4672 = !DILocation(line: 594, column: 52, scope: !4663)
!4673 = !DILocation(line: 594, column: 69, scope: !4663)
!4674 = !DILocation(line: 595, column: 11, scope: !4663)
!4675 = !DILocation(line: 595, column: 23, scope: !4663)
!4676 = !DILocation(line: 596, column: 13, scope: !4663)
!4677 = !DILocation(line: 597, column: 13, scope: !4663)
!4678 = !DILocation(line: 599, column: 2, scope: !4663)
!4679 = !DILocation(line: 599, column: 17, scope: !4663)
!4680 = !DILocation(line: 601, column: 31, scope: !4663)
!4681 = !DILocation(line: 601, column: 36, scope: !4663)
!4682 = !DILocation(line: 601, column: 41, scope: !4663)
!4683 = !DILocation(line: 601, column: 49, scope: !4663)
!4684 = !DILocation(line: 602, column: 10, scope: !4663)
!4685 = !DILocation(line: 602, column: 22, scope: !4663)
!4686 = !DILocation(line: 601, column: 8, scope: !4663)
!4687 = !DILocation(line: 601, column: 6, scope: !4663)
!4688 = !DILocation(line: 603, column: 21, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 603, column: 6)
!4690 = !DILocation(line: 603, column: 6, scope: !4689)
!4691 = !DILocation(line: 603, column: 6, scope: !4663)
!4692 = !DILocation(line: 604, column: 7, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 604, column: 7)
!4694 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 603, column: 27)
!4695 = !DILocation(line: 604, column: 14, scope: !4693)
!4696 = !DILocation(line: 604, column: 11, scope: !4693)
!4697 = !DILocation(line: 604, column: 7, scope: !4694)
!4698 = !DILocation(line: 605, column: 11, scope: !4693)
!4699 = !DILocation(line: 605, column: 4, scope: !4693)
!4700 = !DILocation(line: 606, column: 10, scope: !4694)
!4701 = !DILocation(line: 606, column: 3, scope: !4694)
!4702 = !DILocation(line: 608, column: 9, scope: !4663)
!4703 = !DILocation(line: 608, column: 2, scope: !4663)
!4704 = !DILocation(line: 609, column: 1, scope: !4663)
!4705 = distinct !DISubprogram(name: "d_can_lookup", scope: !91, file: !91, line: 398, type: !4391, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4706)
!4706 = !{!4707}
!4707 = !DILocalVariable(name: "dentry", arg: 1, scope: !4705, file: !91, line: 398, type: !3519)
!4708 = !DILocation(line: 398, column: 54, scope: !4705)
!4709 = !DILocation(line: 400, column: 24, scope: !4705)
!4710 = !DILocation(line: 400, column: 9, scope: !4705)
!4711 = !DILocation(line: 400, column: 32, scope: !4705)
!4712 = !DILocation(line: 400, column: 2, scope: !4705)
!4713 = distinct !DISubprogram(name: "d_is_autodir", scope: !91, file: !91, line: 403, type: !4391, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4714)
!4714 = !{!4715}
!4715 = !DILocalVariable(name: "dentry", arg: 1, scope: !4713, file: !91, line: 403, type: !3519)
!4716 = !DILocation(line: 403, column: 54, scope: !4713)
!4717 = !DILocation(line: 405, column: 24, scope: !4713)
!4718 = !DILocation(line: 405, column: 9, scope: !4713)
!4719 = !DILocation(line: 405, column: 32, scope: !4713)
!4720 = !DILocation(line: 405, column: 2, scope: !4713)
!4721 = distinct !DISubprogram(name: "__d_entry_type", scope: !91, file: !91, line: 383, type: !4722, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4724)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!7, !3519}
!4724 = !{!4725}
!4725 = !DILocalVariable(name: "dentry", arg: 1, scope: !4721, file: !91, line: 383, type: !3519)
!4726 = !DILocation(line: 383, column: 60, scope: !4721)
!4727 = !DILocation(line: 385, column: 9, scope: !4721)
!4728 = !DILocation(line: 385, column: 17, scope: !4721)
!4729 = !DILocation(line: 385, column: 25, scope: !4721)
!4730 = !DILocation(line: 385, column: 2, scope: !4721)
!4731 = distinct !DISubprogram(name: "dget", scope: !91, file: !91, line: 317, type: !2190, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4732)
!4732 = !{!4733}
!4733 = !DILocalVariable(name: "dentry", arg: 1, scope: !4731, file: !91, line: 317, type: !89)
!4734 = !DILocation(line: 317, column: 50, scope: !4731)
!4735 = !DILocation(line: 319, column: 6, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4731, file: !91, line: 319, column: 6)
!4737 = !DILocation(line: 319, column: 6, scope: !4731)
!4738 = !DILocation(line: 320, column: 16, scope: !4736)
!4739 = !DILocation(line: 320, column: 24, scope: !4736)
!4740 = !DILocation(line: 320, column: 3, scope: !4736)
!4741 = !DILocation(line: 321, column: 9, scope: !4731)
!4742 = !DILocation(line: 321, column: 2, scope: !4731)
!4743 = distinct !DISubprogram(name: "reconnect_one", scope: !3, file: !3, line: 121, type: !4744, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4746)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!89, !672, !89, !215}
!4746 = !{!4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754}
!4747 = !DILocalVariable(name: "mnt", arg: 1, scope: !4743, file: !3, line: 121, type: !672)
!4748 = !DILocalVariable(name: "dentry", arg: 2, scope: !4743, file: !3, line: 122, type: !89)
!4749 = !DILocalVariable(name: "nbuf", arg: 3, scope: !4743, file: !3, line: 122, type: !215)
!4750 = !DILocalVariable(name: "parent", scope: !4743, file: !3, line: 124, type: !89)
!4751 = !DILocalVariable(name: "tmp", scope: !4743, file: !3, line: 125, type: !89)
!4752 = !DILocalVariable(name: "err", scope: !4743, file: !3, line: 126, type: !201)
!4753 = !DILabel(scope: !4743, name: "out_err", file: !3, line: 171)
!4754 = !DILabel(scope: !4743, name: "out_reconnected", file: !3, line: 174)
!4755 = !DILocation(line: 121, column: 54, scope: !4743)
!4756 = !DILocation(line: 122, column: 18, scope: !4743)
!4757 = !DILocation(line: 122, column: 32, scope: !4743)
!4758 = !DILocation(line: 124, column: 2, scope: !4743)
!4759 = !DILocation(line: 124, column: 17, scope: !4743)
!4760 = !DILocation(line: 125, column: 2, scope: !4743)
!4761 = !DILocation(line: 125, column: 17, scope: !4743)
!4762 = !DILocation(line: 126, column: 2, scope: !4743)
!4763 = !DILocation(line: 126, column: 6, scope: !4743)
!4764 = !DILocation(line: 128, column: 11, scope: !4743)
!4765 = !DILocation(line: 128, column: 9, scope: !4743)
!4766 = !DILocation(line: 129, column: 13, scope: !4743)
!4767 = !DILocation(line: 129, column: 21, scope: !4743)
!4768 = !DILocation(line: 129, column: 2, scope: !4743)
!4769 = !DILocation(line: 130, column: 6, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 130, column: 6)
!4771 = !DILocation(line: 130, column: 11, scope: !4770)
!4772 = !DILocation(line: 130, column: 19, scope: !4770)
!4773 = !DILocation(line: 130, column: 32, scope: !4770)
!4774 = !DILocation(line: 130, column: 6, scope: !4743)
!4775 = !DILocation(line: 131, column: 12, scope: !4770)
!4776 = !DILocation(line: 131, column: 17, scope: !4770)
!4777 = !DILocation(line: 131, column: 25, scope: !4770)
!4778 = !DILocation(line: 131, column: 38, scope: !4770)
!4779 = !DILocation(line: 131, column: 49, scope: !4770)
!4780 = !DILocation(line: 131, column: 10, scope: !4770)
!4781 = !DILocation(line: 131, column: 3, scope: !4770)
!4782 = !DILocation(line: 132, column: 15, scope: !4743)
!4783 = !DILocation(line: 132, column: 23, scope: !4743)
!4784 = !DILocation(line: 132, column: 2, scope: !4743)
!4785 = !DILocation(line: 134, column: 13, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 134, column: 6)
!4787 = !DILocation(line: 134, column: 6, scope: !4786)
!4788 = !DILocation(line: 134, column: 6, scope: !4743)
!4789 = !DILocation(line: 135, column: 3, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 135, column: 3)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 135, column: 3)
!4792 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 134, column: 22)
!4793 = !DILocation(line: 135, column: 3, scope: !4791)
!4794 = !DILocation(line: 137, column: 10, scope: !4792)
!4795 = !DILocation(line: 137, column: 3, scope: !4792)
!4796 = !DILocation(line: 140, column: 2, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 140, column: 2)
!4798 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 140, column: 2)
!4799 = !DILocation(line: 140, column: 2, scope: !4798)
!4800 = !DILocation(line: 142, column: 26, scope: !4743)
!4801 = !DILocation(line: 142, column: 31, scope: !4743)
!4802 = !DILocation(line: 142, column: 39, scope: !4743)
!4803 = !DILocation(line: 142, column: 45, scope: !4743)
!4804 = !DILocation(line: 142, column: 8, scope: !4743)
!4805 = !DILocation(line: 142, column: 6, scope: !4743)
!4806 = !DILocation(line: 143, column: 6, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 143, column: 6)
!4808 = !DILocation(line: 143, column: 10, scope: !4807)
!4809 = !DILocation(line: 143, column: 6, scope: !4743)
!4810 = !DILocation(line: 144, column: 3, scope: !4807)
!4811 = !DILocation(line: 145, column: 6, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 145, column: 6)
!4813 = !DILocation(line: 145, column: 6, scope: !4743)
!4814 = !DILocation(line: 146, column: 3, scope: !4812)
!4815 = !DILocation(line: 147, column: 2, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 147, column: 2)
!4817 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 147, column: 2)
!4818 = !DILocation(line: 147, column: 2, scope: !4817)
!4819 = !DILocation(line: 148, column: 38, scope: !4743)
!4820 = !DILocation(line: 148, column: 28, scope: !4743)
!4821 = !DILocation(line: 148, column: 44, scope: !4743)
!4822 = !DILocation(line: 148, column: 50, scope: !4743)
!4823 = !DILocation(line: 148, column: 65, scope: !4743)
!4824 = !DILocation(line: 148, column: 58, scope: !4743)
!4825 = !DILocation(line: 148, column: 8, scope: !4743)
!4826 = !DILocation(line: 148, column: 6, scope: !4743)
!4827 = !DILocation(line: 149, column: 13, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 149, column: 6)
!4829 = !DILocation(line: 149, column: 6, scope: !4828)
!4830 = !DILocation(line: 149, column: 6, scope: !4743)
!4831 = !DILocation(line: 150, column: 3, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 150, column: 3)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 150, column: 3)
!4834 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 149, column: 19)
!4835 = !DILocation(line: 150, column: 3, scope: !4833)
!4836 = !DILocation(line: 151, column: 17, scope: !4834)
!4837 = !DILocation(line: 151, column: 9, scope: !4834)
!4838 = !DILocation(line: 151, column: 7, scope: !4834)
!4839 = !DILocation(line: 152, column: 3, scope: !4834)
!4840 = !DILocation(line: 154, column: 6, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 154, column: 6)
!4842 = !DILocation(line: 154, column: 13, scope: !4841)
!4843 = !DILocation(line: 154, column: 10, scope: !4841)
!4844 = !DILocation(line: 154, column: 6, scope: !4743)
!4845 = !DILocation(line: 161, column: 8, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 154, column: 21)
!4847 = !DILocation(line: 161, column: 3, scope: !4846)
!4848 = !DILocation(line: 162, column: 3, scope: !4846)
!4849 = !DILocation(line: 164, column: 7, scope: !4743)
!4850 = !DILocation(line: 164, column: 2, scope: !4743)
!4851 = !DILocation(line: 165, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 165, column: 6)
!4853 = !DILocation(line: 165, column: 6, scope: !4743)
!4854 = !DILocation(line: 166, column: 7, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 165, column: 23)
!4856 = !DILocation(line: 167, column: 3, scope: !4855)
!4857 = !DILocation(line: 169, column: 9, scope: !4743)
!4858 = !DILocation(line: 169, column: 2, scope: !4743)
!4859 = !DILocation(line: 171, column: 1, scope: !4743)
!4860 = !DILocation(line: 172, column: 7, scope: !4743)
!4861 = !DILocation(line: 172, column: 2, scope: !4743)
!4862 = !DILocation(line: 173, column: 17, scope: !4743)
!4863 = !DILocation(line: 173, column: 9, scope: !4743)
!4864 = !DILocation(line: 173, column: 2, scope: !4743)
!4865 = !DILocation(line: 174, column: 1, scope: !4743)
!4866 = !DILocation(line: 175, column: 7, scope: !4743)
!4867 = !DILocation(line: 175, column: 2, scope: !4743)
!4868 = !DILocation(line: 189, column: 24, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 189, column: 6)
!4870 = !DILocation(line: 189, column: 7, scope: !4869)
!4871 = !DILocation(line: 189, column: 6, scope: !4743)
!4872 = !DILocation(line: 190, column: 10, scope: !4869)
!4873 = !DILocation(line: 190, column: 3, scope: !4869)
!4874 = !DILocation(line: 191, column: 2, scope: !4743)
!4875 = !DILocation(line: 192, column: 1, scope: !4743)
!4876 = distinct !DISubprogram(name: "clear_disconnected", scope: !3, file: !3, line: 91, type: !3538, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4877)
!4877 = !{!4878, !4879, !4881, !4883}
!4878 = !DILocalVariable(name: "dentry", arg: 1, scope: !4876, file: !3, line: 91, type: !89)
!4879 = !DILocalVariable(name: "parent", scope: !4880, file: !3, line: 95, type: !89)
!4880 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 94, column: 48)
!4881 = !DILocalVariable(name: "__ret_warn_on", scope: !4882, file: !3, line: 97, type: !201)
!4882 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 97, column: 3)
!4883 = !DILocalVariable(name: "__flags", scope: !4884, file: !3, line: 97, type: !201)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 97, column: 3)
!4885 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 97, column: 3)
!4886 = !DILocation(line: 91, column: 47, scope: !4876)
!4887 = !DILocation(line: 93, column: 7, scope: !4876)
!4888 = !DILocation(line: 93, column: 2, scope: !4876)
!4889 = !DILocation(line: 94, column: 2, scope: !4876)
!4890 = !DILocation(line: 94, column: 9, scope: !4876)
!4891 = !DILocation(line: 94, column: 17, scope: !4876)
!4892 = !DILocation(line: 94, column: 25, scope: !4876)
!4893 = !DILocation(line: 95, column: 3, scope: !4880)
!4894 = !DILocation(line: 95, column: 18, scope: !4880)
!4895 = !DILocation(line: 95, column: 39, scope: !4880)
!4896 = !DILocation(line: 95, column: 27, scope: !4880)
!4897 = !DILocation(line: 97, column: 3, scope: !4882)
!4898 = !DILocation(line: 97, column: 3, scope: !4885)
!4899 = !DILocation(line: 97, column: 3, scope: !4884)
!4900 = !DILocation(line: 97, column: 3, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 97, column: 3)
!4902 = !DILocation(line: 97, column: 3, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 97, column: 3)
!4904 = !{i64 2153643414, i64 2153643443, i64 2153643489, i64 2153643547, i64 2153643601, i64 2153643655, i64 2153643710, i64 2153643741, i64 2153644049, i64 2153644055, i64 2153644102, i64 2153644125, i64 2153644151}
!4905 = !DILocation(line: 97, column: 3, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 97, column: 3)
!4907 = !DILocation(line: 97, column: 3, scope: !4880)
!4908 = !DILocation(line: 99, column: 14, scope: !4880)
!4909 = !DILocation(line: 99, column: 22, scope: !4880)
!4910 = !DILocation(line: 99, column: 3, scope: !4880)
!4911 = !DILocation(line: 100, column: 3, scope: !4880)
!4912 = !DILocation(line: 100, column: 11, scope: !4880)
!4913 = !DILocation(line: 100, column: 19, scope: !4880)
!4914 = !DILocation(line: 101, column: 16, scope: !4880)
!4915 = !DILocation(line: 101, column: 24, scope: !4880)
!4916 = !DILocation(line: 101, column: 3, scope: !4880)
!4917 = !DILocation(line: 103, column: 8, scope: !4880)
!4918 = !DILocation(line: 103, column: 3, scope: !4880)
!4919 = !DILocation(line: 104, column: 12, scope: !4880)
!4920 = !DILocation(line: 104, column: 10, scope: !4880)
!4921 = !DILocation(line: 105, column: 2, scope: !4876)
!4922 = distinct !{!4922, !4889, !4921, !4466, !4467}
!4923 = !DILocation(line: 106, column: 7, scope: !4876)
!4924 = !DILocation(line: 106, column: 2, scope: !4876)
!4925 = !DILocation(line: 107, column: 1, scope: !4876)
!4926 = !DISubprogram(name: "lockref_get", scope: !3890, file: !3890, line: 37, type: !4927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{null, !4929}
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!4930 = !DISubprogram(name: "lookup_one_unlocked", scope: !4627, file: !4627, line: 80, type: !4628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4931 = distinct !DISubprogram(name: "dentry_connected", scope: !3, file: !3, line: 74, type: !4932, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4934)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!209, !89}
!4934 = !{!4935, !4936}
!4935 = !DILocalVariable(name: "dentry", arg: 1, scope: !4931, file: !3, line: 74, type: !89)
!4936 = !DILocalVariable(name: "parent", scope: !4937, file: !3, line: 78, type: !89)
!4937 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 77, column: 48)
!4938 = !DILocation(line: 74, column: 45, scope: !4931)
!4939 = !DILocation(line: 76, column: 7, scope: !4931)
!4940 = !DILocation(line: 76, column: 2, scope: !4931)
!4941 = !DILocation(line: 77, column: 2, scope: !4931)
!4942 = !DILocation(line: 77, column: 9, scope: !4931)
!4943 = !DILocation(line: 77, column: 17, scope: !4931)
!4944 = !DILocation(line: 77, column: 25, scope: !4931)
!4945 = !DILocation(line: 78, column: 3, scope: !4937)
!4946 = !DILocation(line: 78, column: 18, scope: !4937)
!4947 = !DILocation(line: 78, column: 39, scope: !4937)
!4948 = !DILocation(line: 78, column: 27, scope: !4937)
!4949 = !DILocation(line: 80, column: 8, scope: !4937)
!4950 = !DILocation(line: 80, column: 3, scope: !4937)
!4951 = !DILocation(line: 81, column: 7, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 81, column: 7)
!4953 = !DILocation(line: 81, column: 17, scope: !4952)
!4954 = !DILocation(line: 81, column: 14, scope: !4952)
!4955 = !DILocation(line: 81, column: 7, scope: !4937)
!4956 = !DILocation(line: 82, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 81, column: 25)
!4958 = !DILocation(line: 82, column: 4, scope: !4957)
!4959 = !DILocation(line: 83, column: 4, scope: !4957)
!4960 = !DILocation(line: 85, column: 12, scope: !4937)
!4961 = !DILocation(line: 85, column: 10, scope: !4937)
!4962 = !DILocation(line: 86, column: 2, scope: !4931)
!4963 = distinct !{!4963, !4941, !4962, !4466, !4467}
!4964 = !DILocation(line: 87, column: 7, scope: !4931)
!4965 = !DILocation(line: 87, column: 2, scope: !4931)
!4966 = !DILocation(line: 88, column: 2, scope: !4931)
!4967 = !DILocation(line: 89, column: 1, scope: !4931)
!4968 = distinct !DISubprogram(name: "spin_lock", scope: !4969, file: !4969, line: 349, type: !4970, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4973)
!4969 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !4972}
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!4973 = !{!4974}
!4974 = !DILocalVariable(name: "lock", arg: 1, scope: !4968, file: !4969, line: 349, type: !4972)
!4975 = !DILocation(line: 349, column: 51, scope: !4968)
!4976 = !DILocation(line: 351, column: 2, scope: !4968)
!4977 = !DILocation(line: 352, column: 1, scope: !4968)
!4978 = distinct !DISubprogram(name: "spin_unlock", scope: !4969, file: !4969, line: 389, type: !4970, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4979)
!4979 = !{!4980}
!4980 = !DILocalVariable(name: "lock", arg: 1, scope: !4978, file: !4969, line: 389, type: !4972)
!4981 = !DILocation(line: 389, column: 53, scope: !4978)
!4982 = !DILocation(line: 391, column: 2, scope: !4978)
!4983 = !DILocation(line: 392, column: 1, scope: !4978)
!4984 = !DISubprogram(name: "_raw_spin_lock", scope: !4985, file: !4985, line: 22, type: !4986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4985 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4986 = !DISubroutineType(types: !4987)
!4987 = !{null, !4988}
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!4989 = !DISubprogram(name: "_raw_spin_unlock", scope: !4985, file: !4985, line: 39, type: !4986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4990 = distinct !DISubprogram(name: "get_name", scope: !3, file: !3, line: 276, type: !4991, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!201, !2064, !215, !89}
!4993 = !{!4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5006, !5007}
!4994 = !DILocalVariable(name: "path", arg: 1, scope: !4990, file: !3, line: 276, type: !2064)
!4995 = !DILocalVariable(name: "name", arg: 2, scope: !4990, file: !3, line: 276, type: !215)
!4996 = !DILocalVariable(name: "child", arg: 3, scope: !4990, file: !3, line: 276, type: !89)
!4997 = !DILocalVariable(name: "cred", scope: !4990, file: !3, line: 278, type: !452)
!4998 = !DILocalVariable(name: "dir", scope: !4990, file: !3, line: 279, type: !137)
!4999 = !DILocalVariable(name: "error", scope: !4990, file: !3, line: 280, type: !201)
!5000 = !DILocalVariable(name: "file", scope: !4990, file: !3, line: 281, type: !291)
!5001 = !DILocalVariable(name: "stat", scope: !4990, file: !3, line: 282, type: !3751)
!5002 = !DILocalVariable(name: "child_path", scope: !4990, file: !3, line: 283, type: !668)
!5003 = !DILocalVariable(name: "buffer", scope: !4990, file: !3, line: 287, type: !3921)
!5004 = !DILocalVariable(name: "old_seq", scope: !5005, file: !3, line: 323, type: !201)
!5005 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 322, column: 12)
!5006 = !DILabel(scope: !4990, name: "out_close", file: !3, line: 339)
!5007 = !DILabel(scope: !4990, name: "out", file: !3, line: 341)
!5008 = !DILocation(line: 276, column: 40, scope: !4990)
!5009 = !DILocation(line: 276, column: 52, scope: !4990)
!5010 = !DILocation(line: 276, column: 73, scope: !4990)
!5011 = !DILocation(line: 278, column: 2, scope: !4990)
!5012 = !DILocation(line: 278, column: 21, scope: !4990)
!5013 = !DILocation(line: 278, column: 28, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 278, column: 28)
!5015 = !DILocation(line: 278, column: 28, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 278, column: 28)
!5017 = !DILocation(line: 279, column: 2, scope: !4990)
!5018 = !DILocation(line: 279, column: 16, scope: !4990)
!5019 = !DILocation(line: 279, column: 22, scope: !4990)
!5020 = !DILocation(line: 279, column: 28, scope: !4990)
!5021 = !DILocation(line: 279, column: 36, scope: !4990)
!5022 = !DILocation(line: 280, column: 2, scope: !4990)
!5023 = !DILocation(line: 280, column: 6, scope: !4990)
!5024 = !DILocation(line: 281, column: 2, scope: !4990)
!5025 = !DILocation(line: 281, column: 15, scope: !4990)
!5026 = !DILocation(line: 282, column: 2, scope: !4990)
!5027 = !DILocation(line: 282, column: 15, scope: !4990)
!5028 = !DILocation(line: 283, column: 2, scope: !4990)
!5029 = !DILocation(line: 283, column: 14, scope: !4990)
!5030 = !DILocation(line: 283, column: 27, scope: !4990)
!5031 = !DILocation(line: 284, column: 10, scope: !4990)
!5032 = !DILocation(line: 284, column: 16, scope: !4990)
!5033 = !DILocation(line: 285, column: 13, scope: !4990)
!5034 = !DILocation(line: 287, column: 2, scope: !4990)
!5035 = !DILocation(line: 287, column: 27, scope: !4990)
!5036 = !DILocation(line: 287, column: 36, scope: !4990)
!5037 = !DILocation(line: 288, column: 7, scope: !4990)
!5038 = !DILocation(line: 289, column: 11, scope: !4990)
!5039 = !DILocation(line: 292, column: 8, scope: !4990)
!5040 = !DILocation(line: 293, column: 7, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 293, column: 6)
!5042 = !DILocation(line: 293, column: 11, scope: !5041)
!5043 = !DILocation(line: 293, column: 15, scope: !5041)
!5044 = !DILocation(line: 293, column: 6, scope: !4990)
!5045 = !DILocation(line: 294, column: 3, scope: !5041)
!5046 = !DILocation(line: 295, column: 8, scope: !4990)
!5047 = !DILocation(line: 296, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 296, column: 6)
!5049 = !DILocation(line: 296, column: 12, scope: !5048)
!5050 = !DILocation(line: 296, column: 6, scope: !4990)
!5051 = !DILocation(line: 297, column: 3, scope: !5048)
!5052 = !DILocation(line: 304, column: 10, scope: !4990)
!5053 = !DILocation(line: 304, column: 8, scope: !4990)
!5054 = !DILocation(line: 306, column: 6, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 306, column: 6)
!5056 = !DILocation(line: 306, column: 6, scope: !4990)
!5057 = !DILocation(line: 307, column: 10, scope: !5055)
!5058 = !DILocation(line: 307, column: 3, scope: !5055)
!5059 = !DILocation(line: 308, column: 20, scope: !4990)
!5060 = !DILocation(line: 308, column: 9, scope: !4990)
!5061 = !DILocation(line: 308, column: 13, scope: !4990)
!5062 = !DILocation(line: 312, column: 21, scope: !4990)
!5063 = !DILocation(line: 312, column: 37, scope: !4990)
!5064 = !DILocation(line: 312, column: 9, scope: !4990)
!5065 = !DILocation(line: 312, column: 7, scope: !4990)
!5066 = !DILocation(line: 313, column: 18, scope: !4990)
!5067 = !DILocation(line: 313, column: 10, scope: !4990)
!5068 = !DILocation(line: 313, column: 8, scope: !4990)
!5069 = !DILocation(line: 314, column: 13, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 314, column: 6)
!5071 = !DILocation(line: 314, column: 6, scope: !5070)
!5072 = !DILocation(line: 314, column: 6, scope: !4990)
!5073 = !DILocation(line: 315, column: 3, scope: !5070)
!5074 = !DILocation(line: 317, column: 8, scope: !4990)
!5075 = !DILocation(line: 318, column: 7, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 318, column: 6)
!5077 = !DILocation(line: 318, column: 13, scope: !5076)
!5078 = !DILocation(line: 318, column: 19, scope: !5076)
!5079 = !DILocation(line: 318, column: 6, scope: !4990)
!5080 = !DILocation(line: 319, column: 3, scope: !5076)
!5081 = !DILocation(line: 321, column: 9, scope: !4990)
!5082 = !DILocation(line: 321, column: 18, scope: !4990)
!5083 = !DILocation(line: 322, column: 2, scope: !4990)
!5084 = !DILocation(line: 323, column: 3, scope: !5005)
!5085 = !DILocation(line: 323, column: 7, scope: !5005)
!5086 = !DILocation(line: 323, column: 24, scope: !5005)
!5087 = !DILocation(line: 325, column: 23, scope: !5005)
!5088 = !DILocation(line: 325, column: 37, scope: !5005)
!5089 = !DILocation(line: 325, column: 11, scope: !5005)
!5090 = !DILocation(line: 325, column: 9, scope: !5005)
!5091 = !DILocation(line: 326, column: 14, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 326, column: 7)
!5093 = !DILocation(line: 326, column: 7, scope: !5092)
!5094 = !DILocation(line: 326, column: 7, scope: !5005)
!5095 = !DILocation(line: 327, column: 10, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 326, column: 21)
!5097 = !DILocation(line: 328, column: 4, scope: !5096)
!5098 = !DILocation(line: 331, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 331, column: 7)
!5100 = !DILocation(line: 331, column: 13, scope: !5099)
!5101 = !DILocation(line: 331, column: 7, scope: !5005)
!5102 = !DILocation(line: 332, column: 4, scope: !5099)
!5103 = !DILocation(line: 334, column: 9, scope: !5005)
!5104 = !DILocation(line: 335, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 335, column: 7)
!5106 = !DILocation(line: 335, column: 25, scope: !5105)
!5107 = !DILocation(line: 335, column: 15, scope: !5105)
!5108 = !DILocation(line: 335, column: 7, scope: !5005)
!5109 = !DILocation(line: 336, column: 4, scope: !5105)
!5110 = !DILocation(line: 337, column: 2, scope: !4990)
!5111 = distinct !{!5111, !5083, !5110, !4467}
!5112 = !DILocation(line: 339, column: 1, scope: !4990)
!5113 = !DILocation(line: 340, column: 7, scope: !4990)
!5114 = !DILocation(line: 340, column: 2, scope: !4990)
!5115 = !DILocation(line: 341, column: 1, scope: !4990)
!5116 = !DILocation(line: 342, column: 9, scope: !4990)
!5117 = !DILocation(line: 342, column: 2, scope: !4990)
!5118 = !DILocation(line: 343, column: 1, scope: !4990)
!5119 = distinct !DISubprogram(name: "get_current", scope: !5120, file: !5120, line: 39, type: !5121, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5123)
!5120 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!2308}
!5123 = !{!5124, !5126, !5128}
!5124 = !DILocalVariable(name: "pscr_ret__", scope: !5125, file: !5120, line: 41, type: !2308)
!5125 = distinct !DILexicalBlock(scope: !5119, file: !5120, line: 41, column: 9)
!5126 = !DILocalVariable(name: "__vpp_verify", scope: !5127, file: !5120, line: 41, type: !1252)
!5127 = distinct !DILexicalBlock(scope: !5125, file: !5120, line: 41, column: 9)
!5128 = !DILocalVariable(name: "pfo_val__", scope: !5129, file: !5120, line: 41, type: !129)
!5129 = distinct !DILexicalBlock(scope: !5125, file: !5120, line: 41, column: 9)
!5130 = !DILocation(line: 41, column: 9, scope: !5125)
!5131 = !DILocation(line: 41, column: 9, scope: !5127)
!5132 = !DILocation(line: 41, column: 9, scope: !5129)
!5133 = !{i64 2148458284}
!5134 = !DILocation(line: 41, column: 9, scope: !5119)
!5135 = !DILocation(line: 41, column: 2, scope: !5119)
!5136 = distinct !DISubprogram(name: "filldir_one", scope: !3, file: !3, line: 251, type: !3650, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5137 = !{!5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145}
!5138 = !DILocalVariable(name: "ctx", arg: 1, scope: !5136, file: !3, line: 251, type: !3644)
!5139 = !DILocalVariable(name: "name", arg: 2, scope: !5136, file: !3, line: 251, type: !185)
!5140 = !DILocalVariable(name: "len", arg: 3, scope: !5136, file: !3, line: 251, type: !201)
!5141 = !DILocalVariable(name: "pos", arg: 4, scope: !5136, file: !3, line: 252, type: !276)
!5142 = !DILocalVariable(name: "ino", arg: 5, scope: !5136, file: !3, line: 252, type: !129)
!5143 = !DILocalVariable(name: "d_type", arg: 6, scope: !5136, file: !3, line: 252, type: !7)
!5144 = !DILocalVariable(name: "buf", scope: !5136, file: !3, line: 254, type: !3920)
!5145 = !DILocalVariable(name: "__mptr", scope: !5146, file: !3, line: 255, type: !87)
!5146 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 255, column: 3)
!5147 = !DILocation(line: 251, column: 45, scope: !5136)
!5148 = !DILocation(line: 251, column: 62, scope: !5136)
!5149 = !DILocation(line: 251, column: 72, scope: !5136)
!5150 = !DILocation(line: 252, column: 11, scope: !5136)
!5151 = !DILocation(line: 252, column: 20, scope: !5136)
!5152 = !DILocation(line: 252, column: 38, scope: !5136)
!5153 = !DILocation(line: 254, column: 2, scope: !5136)
!5154 = !DILocation(line: 254, column: 28, scope: !5136)
!5155 = !DILocation(line: 255, column: 3, scope: !5146)
!5156 = !DILocation(line: 255, column: 3, scope: !5136)
!5157 = !DILocation(line: 257, column: 2, scope: !5136)
!5158 = !DILocation(line: 257, column: 7, scope: !5136)
!5159 = !DILocation(line: 257, column: 15, scope: !5136)
!5160 = !DILocation(line: 258, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 258, column: 6)
!5162 = !DILocation(line: 258, column: 11, scope: !5161)
!5163 = !DILocation(line: 258, column: 18, scope: !5161)
!5164 = !DILocation(line: 258, column: 15, scope: !5161)
!5165 = !DILocation(line: 258, column: 22, scope: !5161)
!5166 = !DILocation(line: 258, column: 25, scope: !5161)
!5167 = !DILocation(line: 258, column: 29, scope: !5161)
!5168 = !DILocation(line: 258, column: 6, scope: !5136)
!5169 = !DILocation(line: 259, column: 10, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 258, column: 42)
!5171 = !DILocation(line: 259, column: 15, scope: !5170)
!5172 = !DILocation(line: 259, column: 21, scope: !5170)
!5173 = !DILocation(line: 259, column: 27, scope: !5170)
!5174 = !DILocation(line: 259, column: 3, scope: !5170)
!5175 = !DILocation(line: 260, column: 3, scope: !5170)
!5176 = !DILocation(line: 260, column: 8, scope: !5170)
!5177 = !DILocation(line: 260, column: 13, scope: !5170)
!5178 = !DILocation(line: 260, column: 18, scope: !5170)
!5179 = !DILocation(line: 261, column: 3, scope: !5170)
!5180 = !DILocation(line: 261, column: 8, scope: !5170)
!5181 = !DILocation(line: 261, column: 14, scope: !5170)
!5182 = !DILocation(line: 262, column: 3, scope: !5170)
!5183 = !DILocation(line: 264, column: 2, scope: !5136)
!5184 = !DILocation(line: 265, column: 1, scope: !5136)
!5185 = !DISubprogram(name: "vfs_getattr_nosec", scope: !35, file: !35, line: 3096, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!201, !2064, !3750, !123, !7}
!5188 = !DISubprogram(name: "dentry_open", scope: !35, file: !35, line: 2514, type: !5189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!291, !2064, !201, !452}
!5191 = !DISubprogram(name: "iterate_dir", scope: !35, file: !35, line: 3112, type: !3642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = !DISubprogram(name: "fput", scope: !5193, file: !5193, line: 17, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5193 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!5194 = !DISubprogram(name: "down_write", scope: !502, file: !502, line: 187, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !5197}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!5198 = !DISubprogram(name: "up_write", scope: !502, file: !502, line: 203, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
